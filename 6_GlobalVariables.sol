// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    
    address public contractAddress;
    address public payer;
    address public origin;
    uint public amount;

    // Global variables are avaiable inside any smart contract
    constructor() {
        contractAddress = address(this); // this: corresponds to the address of the current smart contract
    }

    function pay() public payable {
        // Some of them have a few values attached to it
        // msg: message 
        // tx: transaction
        payer = msg.sender; // msg.sender person calling the function
        origin = tx.origin; // tx.origin: origin of that transaction
        amount = msg.value; // msg.value: amount of cryptocurrency sent with that transaction
    }

    function getBlockInfo() public view returns (uint, uint, uint) {
        // block: current block on the chain
        return (
            block.number,
            block.timestamp,
            block.chainid
        );
    }    

    // There are many more global variables with values attached to them!
}