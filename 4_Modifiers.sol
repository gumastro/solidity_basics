// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    string public name = "Example";
    uint public balance;

    // Modifiers
    // view: does not modify the state of the blockchain, but can read it
    function getName() public view returns(string memory) {
        return name;
    }

    // pure: does not modify nor can read the state of the blockchain
    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    // payable: allowed to receive ether cryptocurrency whenever the transaction is submitted
    function pay() public payable {
        balance = msg.value;
    }

    address private owner = 0xB95351f490bE06ba8C64bE18BcF1B2b7d0e09D54;
    string public name2 = "";

    // Custom modifiers
    // This restricts who can call a specific function
    modifier onlyOwner {
        require(msg.sender == owner, "caller must be owner");
        _;  // placeholder to specify when the function should be executed
    }

    // Apply it to your function like any other modifier
    function setName(string memory _name) public onlyOwner {
        name2 = _name;
    }
}