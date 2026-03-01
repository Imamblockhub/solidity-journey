// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ErrorHandling {
    uint public balance = 100;

    function withdraw(uint amount) public {
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
        // revert example
        if(balance == 0){
            revert("Balance is now zero");
        }
        // assert example
        assert(balance >= 0);
    }
}
