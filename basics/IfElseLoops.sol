// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IfElseLoops {
    uint[] public numbers;

    function fillNumbers(uint n) public {
        for(uint i = 1; i <= n; i++){
            if(i % 2 == 0){
                numbers.push(i);
            }
        }
    }
}
