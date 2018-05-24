const TokenAirDrop = artifacts.require('./TokenAirDrop.sol')

module.exports = function(deployer, network, accounts) {
	return deployer
        .then(() => {
          return deployer.deploy(TokenAirDrop)
        })
}