// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StructsDemo {
    struct Student {
        string name;
        uint age;
    }

    Student[] public students;

    function addStudent(string memory _name, uint _age) public {
        students.push(Student(_name, _age));
    }

    function getStudent(uint index) public view returns(string memory, uint){
        Student memory s = students[index];
        return (s.name, s.age);
    }
}
