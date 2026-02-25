// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NestedMappings {
    mapping(address => mapping(string => uint)) public balances;

    function setBalance(string memory currency, uint amount) public {
        balances[msg.sender][currency] = amount;
    }

    function getBalance(address user, string memory currency) public view returns(uint){
        return balances[user][currency];
    }
}
