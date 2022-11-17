// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    // Arrays are sorted lists of information
    // Declare an array by giving the datatype followed by []
    uint[] public array1 = [1, 2, 3]; // Define values
    uint[] public array2; // Initialize it with no specific size
    uint[10] public array3; // Or with a specific size (starts with 10 zeros in this case)
    string[] public array4 = ["apple", "banana", "carrot"]; // And it accepts other data types, like strings
    string[] public array5;
    string[10] public array6;

    // Read from arrays and manipulate them
    uint[] public array;

    // Get the value of a given index
    function get(uint i) public view returns (uint) {
        return array[i];
    }

    // Get the length of an array
    function length() public view returns (uint) {
        return array.length;
    }

    // Add new item to the end with .push()
    function push(uint i) public {
        array.push(i);
    }

    // Remove the last element with .pop()
    function pop() public {
        array.pop();
    }

    // Remove element from specific index
    function remove(uint index) public {
        delete array[index];
    }
}