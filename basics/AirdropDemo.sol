// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AirdropDemo {
    mapping(address => bool) public hasClaimed;

    function claimAirdrop() public {
        require(!hasClaimed[msg.sender], "Already claimed");
        hasClaimed[msg.sender] = true;
        // Token distribution logic here
    }
}
