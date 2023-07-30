// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.18;

contract HemadriToken {
    string public tokenName;
    string public tokenAbr;
    uint public TSupply;

    mapping(address => uint) public balance;

    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    modifier onlyBalanceHolder() {
        require(balance[msg.sender] > 0, "You don't have any tokens to burn");
        _;
    }

    constructor(string memory TokenName, string memory TokenAbr, uint tSupply) {
        tokenName = TokenName;
        tokenAbr = TokenAbr;
        TSupply = tSupply;
        balance[msg.sender] = TSupply;
        owner = msg.sender;
    }

    function mintTokens(uint value) public onlyOwner {
        TSupply += value;
        balance[msg.sender] += value;
    }

    function burnTokens(uint value) public onlyBalanceHolder {
        require(balance[msg.sender] >= value, "Insufficient balance");

        TSupply -= value;
        balance[msg.sender] -= value;
    }
}