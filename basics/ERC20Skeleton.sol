// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC20Token {
    string public name = "MineCoin";
    string public symbol = "MNC";
    uint8 public decimals = 18;
    uint public totalSupply;

    mapping(address => uint) public balanceOf;
}
