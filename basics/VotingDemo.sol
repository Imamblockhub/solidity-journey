// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract VotingDemo {
    mapping(string => uint) public votes;

    function vote(string memory candidate) public {
        votes[candidate] += 1;
    }

    function getVotes(string memory candidate) public view returns(uint){
        return votes[candidate];
    }
}
