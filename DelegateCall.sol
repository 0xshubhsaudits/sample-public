// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DelegateCallTest {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    // INTENTIONALLY VULNERABLE:
    // Caller controls the delegatecall target.
    function execute(address target, bytes calldata data) external {
        target.delegatecall(data);
    }
}