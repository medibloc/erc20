var credentials = require("./credentials");
var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = credentials.mnemonic;
var infuraKey = credentials.infuraKey;


module.exports = {
  solc: {
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
  networks: {
    kovan: {
      provider: new HDWalletProvider(mnemonic, `https://kovan.infura.io/${infuraKey}`, 3),
      network_id: 3,
      gas: 3000000,
      gasPrice: 1000000000, // 1.2 gwei
    },
  },
}
