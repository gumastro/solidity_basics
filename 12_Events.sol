// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    // Solidity lets you subscribe to events from an external consumer to find out anytime a function or something inside a function has been called
    string public message = "Hello World";

    // Event can have up to 17 attributes of any datatype you want
    // You can index up to 3 attributes
    // Indexed _user means that you can filter through events or subscribe to events that only pertain to this particular user
    event MessageUpdated (
        address indexed _user, 
        string _message
    );

    // Anytime this function is called there will be a record on blockchain that you can go back and look at
    function updateMessage(string memory _message) public {
        message = _message;
        emit MessageUpdated(msg.sender, _message); // Trigger event
    }
}