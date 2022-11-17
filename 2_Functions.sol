// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    // State variable, accessible from inside or outside smart contract
    string public name = "Example 1";

    // Functions can take arguments, like "string memory _name"

    // This is a write function, so we have to pay gas fee to call this function and update the state of the blockchain
    function setName(string memory _name) public {
        // _name is a local variable, accessible only inside this function
        name = _name;
    }

    // This is a read function, so it is free (no gas cost)
    function getName() public view returns (string memory) {
        return name;
    }

    function resetName() public {
        name = "Example 1";
    }
}