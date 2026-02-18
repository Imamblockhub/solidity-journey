// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC20Approve {
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;

    function mint(address to, uint amount) public {
        balanceOf[to] += amount;
    }

    function approve(address spender, uint amount) public {
        allowance[msg.sender][spender] = amount;
    }

    function transferFrom(address from, address to, uint amount) public {
        require(balanceOf[from] >= amount, "Insufficient balance");
        require(allowance[from][msg.sender] >= amount, "Allowance exceeded");
        balanceOf[from] -= amount;
        balanceOf[to] += amount;
        allowance[from][msg.sender] -= amount;
    }
}
