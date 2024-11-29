// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Functions {
    string public tokenName = "GIGACHAD";
    string public tokenSymbol = "GIGA";
    uint public tokenSupply = 1000000;

    mapping(address => uint) public tokenBalances;

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function mintTokens(address to, uint amount) public onlyOwner {
        tokenSupply += amount;
        tokenBalances[to] += amount;
    }

    function burnTokens(address caller, uint amount) public{
        require(tokenBalances[caller] >= amount, "Insufficient balance");
        tokenSupply -= amount;
        tokenBalances[caller] -= amount;
    }

    function transferTokens(address caller, address receiver, uint amount) public{
        require(tokenBalances[caller] >= amount, "Insufficient balance");
        tokenBalances[caller] -= amount;
        tokenBalances[receiver] += amount;
    }
}
