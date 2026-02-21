// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC20Modifiers {
    address public owner;
    mapping(address => uint) public balanceOf;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function mint(address to, uint amount) public onlyOwner {
        balanceOf[to] += amount;
    }
}
