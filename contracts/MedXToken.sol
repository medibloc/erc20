pragma solidity ^0.4.24;

import 'zeppelin-solidity/contracts/token/PausableToken.sol';
import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract MedXToken is PausableToken, MintableToken {
  string public name = "MEDX TOKEN";
  string public symbol = "MEDX";
  uint256 public decimals = 8;
}
