// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Login {
    bytes32 private hashPass;
    mapping(address => bytes32) public savedPasswords; //return to private

    constructor() {}

    function setPassword(string memory password) public returns (bytes32) {
        hashPass = keccak256(abi.encodePacked(password));
        savedPasswords[msg.sender] = hashPass;
        return hashPass;
    }

    function login(string memory password) public view returns (bool) {
        keccak256(abi.encodePacked(password));
        require(savedPasswords[msg.sender] == hashPass, "Wrong Password");
        return true;
    }
}
