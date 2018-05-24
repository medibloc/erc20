pragma solidity ^0.4.24;

import './MedXToken.sol';
import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';
import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract TokenAirDrop is Ownable {
  using SafeMath for uint256;
  MintableToken public token;
  mapping (address => uint256) public airDropHistory;
  event AirDrop(address _receiver, uint256 _amount);

  function TokenAirDrop() {
    token = new MedXToken();
    token.mint(address(this), (10 ** 10) * (10 ** 8));
  }

  // change to array
  function dropToken(address[] receivers, uint256[] values) onlyOwner public {
    require(receivers.length != 0);
    require(receivers.length == values.length);

    for (uint256 i = 0; i<receivers.length; i++) {
      address receiver = receivers[i];
      uint256 amount = values[i];

      token.transfer(receiver, amount);
      airDropHistory[receiver] += amount;
      
      AirDrop(receiver, amount);
    }
  }

  function handOverTokenOwnership(address _newOwner) onlyOwner public {
    token.transferOwnership(_newOwner);
  }
}
