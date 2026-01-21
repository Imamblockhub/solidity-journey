// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ArraysDemo {
 uint[] public numbers;
 function addNumber(unt num) public {
  numbers.push(num);
}

 function getNum(uint index) public view returns(uint){
 return numbers[index];
 }
}
