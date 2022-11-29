// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Sachin Vishwakarma
// 2019140066 BEIT
contract Registration {
    address public manager;
    struct StudentData {
        uint256 id;
        string name;
        string userName;
        string email;
        uint256 age;
    }

    constructor() {
        manager = msg.sender;
    }

    // modifier onlyAuthority() {
    //     require(msg.sender == manager, "Only Authority can access");
    //     _;
    // }
    StudentData[] students;

    function addStudent(
        uint256 id,
        string calldata name,
        string calldata uname,
        string calldata email,
        uint256 age
    ) public returns (string memory) {
        StudentData memory std = StudentData(id, name, uname, email, age);
        students.push(std);
        return "Student Data is Successfully added";
    }
}
