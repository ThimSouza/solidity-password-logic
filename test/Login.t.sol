// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Login.sol";

contract LoginTest is Test {
    Login public login;
    bytes32 genareted;

    function setUp() public {
        login = new Login();
    }

    function testSetPass() public {
        genareted = login.setPassword("thiagoecia88");
        assertEq(login.savedPasswords(msg.sender), genareted);
    }
}
