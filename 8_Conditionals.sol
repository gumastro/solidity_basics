// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    function evenOrOdd(uint x) public pure returns (string memory) {
        if (x % 2 == 0) {
            return "even";
        } else { // executes if no condition has been satisfied
            return "odd";
        }
    }

    function evenOrOdd2(uint x) public pure returns (string memory) {
        if (x % 2 == 0) {
            return "even";
        }
        // else condition is optional
        return "odd";
    }

    function evenOrOdd3(uint x) public pure returns (string memory) {
        // Ternary expression: (is this true) ? execute this : if not, execute this
        return x % 2 == 0 ? "even" : "odd";
    }
}