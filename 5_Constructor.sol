// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    string public name;

    // constructor functions run only once when the contract is initialized or put on the blockchain and works pretty much like any other function (you can send ether, make it payable, etc) except you can only call it once
    constructor(string memory _name) {
        name = _name;
    }
}