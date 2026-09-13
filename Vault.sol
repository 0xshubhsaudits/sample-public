// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Vault {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    // INTENTIONALLY VULNERABLE:
    // Anyone can withdraw another user's balance.
    function withdraw(address user, uint256 amount) external {
        require(balances[user] >= amount, "insufficient");

        balances[user] -= amount;
        payable(msg.sender).transfer(amount);
    }
}