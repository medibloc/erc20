pragma solidity ^0.4.24;

import 'zeppelin-solidity/contracts/token/ERC20/PausableToken.sol';
import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract MedXToken is PausableToken, MintableToken {
  string public name = "MEDX TOKEN";
  string public symbol = "MEDX";
  uint8 public decimals = 8;
}
