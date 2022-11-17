// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {

    // Math Operators
    // Addition
    function add(uint a, uint b) external pure returns(uint) {
        return a + b;
    }

    // Subtraction
    function sub(uint a, uint b) external pure returns(uint) {
        return a - b;
    }

    // Multiplication
    function mul(uint a, uint b) external pure returns(uint) {
        return a * b;
    }

    // Division
    function div(uint a, uint b) external pure returns(uint) {
        return a / b;
    }

    // Exponentiation
    function exp(uint a, uint b) external pure returns(uint) {
        return a ** b;
    }

    // Remainder
    function mod(uint a, uint b) external pure returns(uint) {
        return a % b;
    }

    function increment(uint a) external pure returns(uint) {
        a++;
        return a;
    }

    function decrement(uint a) external pure returns(uint) {
        a--;
        return a;
    }

    function mathExample() external pure returns(uint) {
        uint a;
        a = a + 1; // 1
        a++; // 2
        a = a * 2; // 4
        a = a ** 2; // 16
        a = a / 2; // 8
        a = a - 1; // 7
        a--; // 6
        a = a % 2; // 0
        return a;
    }

    // Comparison operators
    // Equality
    function eq(uint a, uint b) external pure returns(bool) {
        return a == b;
    }
    
    // Inequality
    function neq(uint a, uint b) external pure returns(bool) {
        return a != b;
    }

    // Greater than
    function gt(uint a, uint b) external pure returns(bool) {
        return a > b;
    }

    // Less than
    function lt(uint a, uint b) external pure returns(bool) {
        return a < b;
    }

    // Greater than or equal
    function geq(uint a, uint b) external pure returns(bool) {
        return a >= b;
    }

    // Less than or equal
    function leq(uint a, uint b) external pure returns(bool) {
        return a <= b;
    }

    function comparisonExample() external pure returns(bool) {
        uint a = 1;
        uint b = 2;
        bool c;
        address address1 = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;
        address address2 = 0xB95351f490bE06ba8C64bE18BcF1B2b7d0e09D54;
        c = a == b; // false 
        c = a != b; // true
        c = a > b; // false
        c = a < b; // true
        c = a >= b; // false
        c = a <= b; // true
        c = address1 == address2; // false
        return c;
    }

    // Logical operators
    // return true if both are true
    function and(bool a, bool b) external pure returns(bool) {
        return a && b;
    }

    // return true if at least one is true
    function or(bool a, bool b) external pure returns(bool) {
        return a || b;
    }

    // return true if not true
    function not(bool a) external pure returns(bool) {
        return !a;
    }

    function logicalExample() external pure returns(bool) {
        return (1 + 1 == 2) && (2 + 2 == 4);
    }
}