module MyModule::AwardVoting {
    use aptos_framework::signer;
    use std::vector;
    use std::string::String;
    
    /// Struct representing an award with its nominees and vote counts
    struct Award has store, key {
        nominees: vector<String>,     // List of nominee names
        vote_counts: vector<u64>,     // Vote count for each nominee (same index)
        voters: vector<address>,      // Addresses that have already voted
        is_active: bool,              // Whether voting is still active
    }
    
    /// Error codes
    const E_AWARD_NOT_FOUND: u64 = 1;
    const E_ALREADY_VOTED: u64 = 2;
    const E_VOTING_INACTIVE: u64 = 3;
    const E_INVALID_NOMINEE: u64 = 4;
    
    /// Function to create a new award with nominees
    public fun create_award(
        creator: &signer, 
        nominees: vector<String>
    ) {
        let nominees_count = vector::length(&nominees);
        let vote_counts = vector::empty<u64>();
        
        // Initialize vote counts to 0 for each nominee
        let i = 0;
        while (i < nominees_count) {
            vector::push_back(&mut vote_counts, 0);
            i = i + 1;
        };
        
        let award = Award {
            nominees,
            vote_counts,
            voters: vector::empty<address>(),
            is_active: true,
        };
        
        move_to(creator, award);
    }
    
    /// Function to cast a vote for a nominee
    public fun cast_vote(
        voter: &signer, 
        award_creator: address, 
        nominee_index: u64
    ) acquires Award {
        let voter_addr = signer::address_of(voter);
        let award = borrow_global_mut<Award>(award_creator);
        
        // Check if voting is active
        assert!(award.is_active, E_VOTING_INACTIVE);
        
        // Check if voter has already voted
        assert!(!vector::contains(&award.voters, &voter_addr), E_ALREADY_VOTED);
        
        // Check if nominee index is valid
        assert!(nominee_index < vector::length(&award.nominees), E_INVALID_NOMINEE);
        
        // Record the vote
        let current_votes = vector::borrow_mut(&mut award.vote_counts, nominee_index);
        *current_votes = *current_votes + 1;
        
        // Add voter to the list of voters
        vector::push_back(&mut award.voters, voter_addr);
    }
}