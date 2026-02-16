// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC20Transfer {
    string public name = "MineCoin";
    string public symbol = "MNC";
    uint8 public decimals = 18;
    uint public totalSupply;

    mapping(address => uint) public balanceOf;

    function mint(address to, uint amount) public {
        balanceOf[to] += amount;
        totalSupply += amount;
    }

    function transfer(address to, uint amount) public {
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
    }
}
