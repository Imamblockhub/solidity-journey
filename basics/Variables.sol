// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract VariablesDemo {
    string public name = "Imam BlockHub";
    uint public age = 2026;

    function updateName(string memory newName) public {
        name = newName;
    }

    function incrementAge() public {
        age += 1;
    }
}
