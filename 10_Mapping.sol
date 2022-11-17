// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    // Key - value pairs that work like associative arrays or hash tables in other programming languages
    mapping(uint => string) public names; // In this case the uint is a key and the string corresponds to the value
    mapping(uint => address) public addresses;
    mapping(address => uint) public balances; // Very common to have a uint corresponding to an address for account balance of a cryptocurrency that's held in the smart contract
    mapping(address => bool) public hasVoted;
    mapping(address => mapping(uint => bool)) public nestedMapping; // You can have an address that corresponds to another mapping within this mapping which might be a boolean value on whether a user has taken a specific action based on a uint value

    // Access and manipulate mappings
    mapping(uint => string) public myMapping;

    // Fetch value from a mapping by passing a key (_id)
    function get(uint _id) public view returns (string memory) {
        return myMapping[_id];
    }

    // Set the value by passing in the key and assigning a new value 
    function set(uint _id, string memory _value) public {
        myMapping[_id] = _value;
    }

    // Remove item from the mapping by passing in the id and calling delete
    function remove(uint _id) public {
        delete myMapping[_id]; // reset to default value
    }

}