// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IfElseDemo {
    uint public score;

    function setScore(uint newScore) public {
        if(newScore > 50){
            score = newScore;
        } else {
            score = 0;
        }
    }
}
