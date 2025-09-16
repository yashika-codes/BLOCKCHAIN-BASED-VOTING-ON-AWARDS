import React, { useState, useEffect } from 'react';
import { Plus, Vote, Wallet, Trophy, Users, CheckCircle, AlertCircle, Loader } from 'lucide-react';

const AwardVotingSystem = () => {
  const [walletConnected, setWalletConnected] = useState(false);
  const [userAddress, setUserAddress] = useState('');
  const [loading, setLoading] = useState(false);
  const [message, setMessage] = useState({ text: '', type: '' });
  
  // Create Award Form State
  const [awardTitle, setAwardTitle] = useState('');
  const [nominees, setNominees] = useState(['']);
  
  // Vote Section State
  const [awardAddress, setAwardAddress] = useState('');
  const [loadedAward, setLoadedAward] = useState(null);
  const [selectedNominee, setSelectedNominee] = useState(null);
  
  // Mock data for demonstration
  const [mockAwards, setMockAwards] = useState([]);

  const showMessage = (text, type) => {
    setMessage({ text, type });
    setTimeout(() => setMessage({ text: '', type: '' }), 5000);
  };

  const connectWallet = async () => {
    if (!walletConnected) {
      try {
        setLoading(true);
        // Simulate wallet connection
        await new Promise(resolve => setTimeout(resolve, 1500));
        
        const mockAddress = '0x' + Math.random().toString(16).substr(2, 40);
        setWalletConnected(true);
        setUserAddress(mockAddress);
        showMessage('Wallet connected successfully!', 'success');
      } catch (error) {
        showMessage('Failed to connect wallet: ' + error.message, 'error');
      } finally {
        setLoading(false);
      }
    } else {
      setWalletConnected(false);
      setUserAddress('');
      showMessage('Wallet disconnected', 'success');
    }
  };

  const addNominee = () => {
    setNominees([...nominees, '']);
  };

  const removeNominee = (index) => {
    if (nominees.length > 1) {
      setNominees(nominees.filter((_, i) => i !== index));
    } else {
      showMessage('At least one nominee is required', 'error');
    }
  };

  const updateNominee = (index, value) => {
    const updatedNominees = [...nominees];
    updatedNominees[index] = value;
    setNominees(updatedNominees);
  };

  const createAward = async () => {
    
    if (!walletConnected) {
      showMessage('Please connect your wallet first', 'error');
      return;
    }

    const validNominees = nominees.filter(name => name.trim());
    
    if (validNominees.length < 2) {
      showMessage('Please add at least 2 nominees', 'error');
      return;
    }

    if (!awardTitle.trim()) {
      showMessage('Please enter an award title', 'error');
      return;
    }

    try {
      setLoading(true);
      // Simulate smart contract call
      await new Promise(resolve => setTimeout(resolve, 2000));
      
      const newAward = {
        id: Date.now(),
        title: awardTitle,
        creator: userAddress,
        nominees: validNominees,
        votes: validNominees.map(() => Math.floor(Math.random() * 10)),
        voters: [],
        isActive: true
      };
      
      setMockAwards([...mockAwards, newAward]);
      showMessage(`Award "${awardTitle}" created successfully!`, 'success');
      
      // Reset form
      setAwardTitle('');
      setNominees(['']);
      
    } catch (error) {
      showMessage('Failed to create award: ' + error.message, 'error');
    } finally {
      setLoading(false);
    }
  };

  const loadAward = () => {
    if (!awardAddress.trim()) {
      showMessage('Please enter an award creator address', 'error');
      return;
    }

    // Find award by creator address (mock)
    const award = mockAwards.find(a => a.creator === awardAddress);
    
    if (award) {
      setLoadedAward(award);
      showMessage('Award loaded successfully!', 'success');
    } else {
      // Create a mock award for demonstration
      const mockAward = {
        id: Date.now(),
        title: 'Best Innovation Award 2024',
        creator: awardAddress,
        nominees: ['Alice Johnson', 'Bob Smith', 'Carol Davis'],
        votes: [15, 8, 12],
        voters: ['0x123...', '0x456...'],
        isActive: true
      };
      setLoadedAward(mockAward);
      showMessage('Award loaded successfully!', 'success');
    }
  };

  const castVote = async (nomineeIndex) => {
    if (!walletConnected) {
      showMessage('Please connect your wallet first', 'error');
      return;
    }

    if (!loadedAward) {
      showMessage('No award loaded', 'error');
      return;
    }

    if (loadedAward.voters.includes(userAddress)) {
      showMessage('You have already voted for this award', 'error');
      return;
    }

    try {
      setLoading(true);
      // Simulate smart contract call
      await new Promise(resolve => setTimeout(resolve, 1500));
      
      const updatedAward = { ...loadedAward };
      updatedAward.votes[nomineeIndex]++;
      updatedAward.voters.push(userAddress);
      
      setLoadedAward(updatedAward);
      showMessage(`Vote cast successfully for ${updatedAward.nominees[nomineeIndex]}!`, 'success');
      
    } catch (error) {
      showMessage('Failed to cast vote: ' + error.message, 'error');
    } finally {
      setLoading(false);
    }
  };

  const MessageComponent = ({ message }) => {
    if (!message.text) return null;
    
    return (
      <div className={`flex items-center gap-3 p-4 rounded-lg mb-6 ${
        message.type === 'success' 
          ? 'bg-green-100 text-green-800 border border-green-200' 
          : 'bg-red-100 text-red-800 border border-red-200'
      }`}>
        {message.type === 'success' ? <CheckCircle size={20} /> : <AlertCircle size={20} />}
        {message.text}
      </div>
    );
  };

  const LoadingOverlay = () => {
    if (!loading) return null;
    
    return (
      <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
        <div className="bg-white rounded-lg p-8 flex flex-col items-center">
          <Loader className="animate-spin mb-4 text-blue-600" size={40} />
          <p className="text-lg font-medium">Processing transaction...</p>
        </div>
      </div>
    );
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-500 via-purple-500 to-purple-700">
      <div className="container mx-auto px-4 py-8 max-w-6xl">
        {/* Header */}
        <div className="text-center mb-10">
          <div className="flex justify-center items-center gap-3 mb-4">
            <Trophy className="text-yellow-300" size={48} />
            <h1 className="text-4xl md:text-5xl font-bold text-white">
              Blockchain Award Voting System
            </h1>
          </div>
          <p className="text-xl text-white opacity-90">
            Transparent, Secure, and Decentralized Award Voting on Aptos Blockchain
          </p>
        </div>

        {/* Wallet Section */}
        <div className="bg-white bg-opacity-95 rounded-2xl p-6 mb-8 shadow-2xl">
          <div className="flex items-center justify-between flex-wrap gap-4">
            <div className="flex items-center gap-3">
              <div className={`w-3 h-3 rounded-full ${walletConnected ? 'bg-green-500' : 'bg-red-500'}`}></div>
              <Wallet className="text-gray-600" size={24} />
              <span className="font-medium text-gray-700">
                {walletConnected 
                  ? `Connected: ${userAddress.substr(0, 8)}...${userAddress.substr(-6)}`
                  : 'Wallet Not Connected'
                }
              </span>
            </div>
            <button
              onClick={connectWallet}
              className="bg-gradient-to-r from-blue-500 to-purple-600 text-white px-6 py-3 rounded-lg font-semibold hover:from-blue-600 hover:to-purple-700 transform hover:-translate-y-1 transition-all duration-200 shadow-lg"
            >
              {walletConnected ? 'Disconnect' : 'Connect Wallet'}
            </button>
          </div>
        </div>

        <MessageComponent message={message} />

        {/* Main Content */}
        <div className="grid lg:grid-cols-2 gap-8">
          {/* Create Award Section */}
          <div className="bg-white bg-opacity-95 rounded-2xl p-8 shadow-2xl hover:transform hover:-translate-y-2 transition-all duration-300">
            <div className="flex items-center gap-3 mb-6">
              <Plus className="text-blue-600" size={28} />
              <h2 className="text-2xl font-bold text-gray-800">Create New Award</h2>
            </div>

            <div className="space-y-6">
              <div>
                <label className="block text-sm font-semibold text-gray-700 mb-2">
                  Award Title
                </label>
                <input
                  type="text"
                  value={awardTitle}
                  onChange={(e) => setAwardTitle(e.target.value)}
                  placeholder="Best Innovation Award 2024"
                  className="w-full px-4 py-3 border-2 border-gray-200 rounded-lg focus:border-blue-500 focus:outline-none transition-colors duration-200"
                  required
                />
              </div>

              <div>
                <label className="block text-sm font-semibold text-gray-700 mb-2">
                  Nominees
                </label>
                <div className="space-y-3">
                  {nominees.map((nominee, index) => (
                    <div key={index} className="flex gap-3">
                      <input
                        type="text"
                        value={nominee}
                        onChange={(e) => updateNominee(index, e.target.value)}
                        placeholder="Enter nominee name"
                        className="flex-1 px-4 py-2 border-2 border-gray-200 rounded-lg focus:border-blue-500 focus:outline-none transition-colors duration-200"
                      />
                      <button
                        type="button"
                        onClick={() => removeNominee(index)}
                        className="px-4 py-2 bg-red-500 text-white rounded-lg hover:bg-red-600 transition-colors duration-200"
                      >
                        Remove
                      </button>
                    </div>
                  ))}
                </div>
                <button
                  type="button"
                  onClick={addNominee}
                  className="mt-3 flex items-center gap-2 px-4 py-2 bg-gray-500 text-white rounded-lg hover:bg-gray-600 transition-colors duration-200"
                >
                  <Plus size={16} />
                  Add Nominee
                </button>
              </div>

              <button
                onClick={createAward}
                disabled={loading}
                className="w-full bg-gradient-to-r from-blue-500 to-purple-600 text-white py-4 rounded-lg font-semibold hover:from-blue-600 hover:to-purple-700 transform hover:-translate-y-1 transition-all duration-200 shadow-lg disabled:opacity-50 disabled:cursor-not-allowed disabled:transform-none"
              >
                Create Award
              </button>
            </div>
          </div>

          {/* Vote Section */}
          <div className="bg-white bg-opacity-95 rounded-2xl p-8 shadow-2xl hover:transform hover:-translate-y-2 transition-all duration-300">
            <div className="flex items-center gap-3 mb-6">
              <Vote className="text-green-600" size={28} />
              <h2 className="text-2xl font-bold text-gray-800">Vote on Awards</h2>
            </div>

            <div className="space-y-6">
              <div>
                <label className="block text-sm font-semibold text-gray-700 mb-2">
                  Award Creator Address
                </label>
                <div className="flex gap-3">
                  <input
                    type="text"
                    value={awardAddress}
                    onChange={(e) => setAwardAddress(e.target.value)}
                    placeholder="0x123...abc"
                    className="flex-1 px-4 py-3 border-2 border-gray-200 rounded-lg focus:border-blue-500 focus:outline-none transition-colors duration-200"
                  />
                  <button
                    type="button"
                    onClick={loadAward}
                    className="px-6 py-3 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition-colors duration-200"
                  >
                    Load
                  </button>
                </div>
              </div>

              {loadedAward && (
                <div className="bg-gray-50 rounded-xl p-6 border-2 border-gray-200">
                  <h3 className="text-xl font-bold text-gray-800 mb-4 flex items-center gap-2">
                    <Trophy className="text-yellow-500" size={24} />
                    {loadedAward.title}
                  </h3>
                  
                  <div className="space-y-3">
                    {loadedAward.nominees.map((nominee, index) => (
                      <div
                        key={index}
                        className="flex items-center justify-between p-4 bg-white rounded-lg border border-gray-200 hover:border-blue-300 transition-colors duration-200"
                      >
                        <div className="flex items-center gap-3">
                          <Users className="text-gray-500" size={20} />
                          <span className="font-medium text-gray-800">{nominee}</span>
                        </div>
                        
                        <div className="flex items-center gap-4">
                          <span className="bg-blue-500 text-white px-3 py-1 rounded-full text-sm font-bold">
                            {loadedAward.votes[index]} votes
                          </span>
                          <button
                            onClick={() => castVote(index)}
                            disabled={loading || loadedAward.voters.includes(userAddress)}
                            className="px-4 py-2 bg-green-500 text-white rounded-lg hover:bg-green-600 transition-colors duration-200 disabled:bg-gray-400 disabled:cursor-not-allowed"
                          >
                            {loadedAward.voters.includes(userAddress) ? 'Voted' : 'Vote'}
                          </button>
                        </div>
                      </div>
                    ))}
                  </div>
                  
                  {loadedAward.voters.includes(userAddress) && (
                    <div className="mt-4 p-3 bg-green-100 text-green-800 rounded-lg flex items-center gap-2">
                      <CheckCircle size={20} />
                      <span className="font-medium">You have already voted for this award</span>
                    </div>
                  )}
                </div>
              )}
            </div>
          </div>
        </div>
      </div>

      <LoadingOverlay />
    </div>
  );
};

export default AwardVotingSystem;
