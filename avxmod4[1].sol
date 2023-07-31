// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    address public owner;

    constructor(string memory name, string memory symbol, uint initialSupply) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    modifier validAddress(address account) {
        require(account != address(0), "Invalid address");
        _;
    }

    modifier hasEnoughBalance(uint amount) {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _;
    }

    function mint(address to, uint amount) public onlyOwner validAddress(to) {
        _mint(to, amount);
    }

    function transfer(address to, uint amount) public hasEnoughBalance(amount) override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function redeem(uint amount) public hasEnoughBalance(amount) returns (bool) {
        require(balanceOf(msg.sender) - amount >= 100, "Redemption requires more than 100 points");

        _burn(msg.sender, amount);
        return true;
    }

    function burn(uint amount) public hasEnoughBalance(amount) {
        _burn(msg.sender, amount);
    }
}