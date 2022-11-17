// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    // 1 wei is like 1 cent, the smallest unit possible of ether
    uint public value1 = 1 wei;
    uint public value2 = 1;
    uint public value3 = 1 gwei;
    uint public value4 = 1000000000; // wei
    uint public value5 = 1 ether;
    uint public value6 = 1000000000000000000; // wei

    // Receive ether to smart contract
    receive() external payable {
        // any business logic
    }

    uint public count = 0;

    // You can use fallback if no receive function is implemented
    // and if msg or msg.data is not present
    fallback() external payable {
        count++;
    }

    // Check balance of any address
    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Send ether to a different address (there are other ways as well)
    // Any function can receive ether whenever the transaction is sent as long as you use the payable modifier
    function transfer(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed");
    }
}