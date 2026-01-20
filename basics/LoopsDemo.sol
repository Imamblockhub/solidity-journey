// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LoopsDemo {
    uint[] public numbers;

    function fillNumbers(uint n) public {
        for(uint i = 1; i <= n; i++){
            numbers.push(i);
        }
    }
}
