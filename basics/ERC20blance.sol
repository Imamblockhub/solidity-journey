// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC20Balance {
    mapping(address => uint) public balanceOf;

    function mint(address to, uint amount) public {
        balanceOf[to] += amount;
    }

    function checkBalance(address user) public view returns(uint){
        return balanceOf[user];
    }
}
