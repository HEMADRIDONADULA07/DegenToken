// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    address public owner;

    // Structure to represent a Prize
    struct HemsPrize {
        uint cost;
        string name;
    }

    // Array to store the available prizes
    HemsPrize[] public prizes;

    constructor(string memory name, string memory symbol, uint initialSupply) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
        owner = msg.sender;
        prizes.push(HemsPrize(1000, "XLR8")); // Alien name from Ben 10
        prizes.push(HemsPrize(2000, "Heatblast")); // Alien name from Ben 10
        prizes.push(HemsPrize(3000, "Four Arms")); // Alien name from Ben 10
        prizes.push(HemsPrize(5000, "Upgrade")); // Alien name from Ben 10
        //if u want to add another prize 
        //  prizes.push(HemsPrize([cost to redeem], [name]));
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

    function redeem(uint pid) public hasEnoughBalance(prizes[pid].cost) returns (string memory) {
        require(pid > 0 && pid < prizes.length, "Invalid prize selection");
        uint cost = prizes[pid].cost;
        require(cost > 0, "Invalid prize selection");

        require(balanceOf(msg.sender) - cost >= 100, "Redemption requires more than 100 points");

        _burn(msg.sender, cost);
        return prizes[pid].name;
    }

    function burn(uint amount) public hasEnoughBalance(amount) {
        _burn(msg.sender, amount);
    }
}
