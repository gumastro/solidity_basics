// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Ownable {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "caller must be owner");
        _;
    }
}

// You can create smart contracts that inherit behavior from other smart contracts
// here, myContract inherits from Ownable
contract myContract is Ownable {
    string public name = "Example 1";

    // For example, we can use onlyOwner custom modifier that is defined only on Ownable smart contract
    function setName(string memory _name) public onlyOwner {
        name = _name;
    }
}