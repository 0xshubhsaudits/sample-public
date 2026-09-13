// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AccessControlTest {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    // INTENTIONALLY VULNERABLE:
    // Missing owner authorization.
    function setValue(uint256 newValue) external {
        value = newValue;
    }

    // INTENTIONALLY VULNERABLE:
    // Anyone can change the owner.
    function privilegedAction() external {
        owner = msg.sender;
    }
}