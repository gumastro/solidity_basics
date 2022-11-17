// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    event Log (
        string _message
    );

    // Require checks if value is true or false
    // If its true, will continue execution
    // If its false, function will stop execution with error message and revert
    function example1(uint _value) public {
        require (_value > 10, "must be greater than 10");
        emit Log("success");
    }

    // Another option is to use revert directly
    function example2(uint _value) public {
        if (_value <= 10) {
            revert("must be greater than 10");
        }
        emit Log("success");
    }

    // You can also define your own custom errors and use things like assert
}