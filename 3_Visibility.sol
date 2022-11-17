// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    string name1 = "Name 1"; // default (variables): internal
    string private name2 = "Name 2"; // private: only from current contract, cannot be inherited
    string internal name3 = "Name 3"; // internal: only from current contract and derived contracts
    string public name4 = "Name 4"; // public: all parties within and outside the contract

    // external (functions): cannot be accessed internaly, only externaly
    function foo () external pure returns (int) {
        return 1+1;
    } 

    // default (functions): public
    function foo2 () public {} 


    // Examples
    uint public count;

    // public can be called outside the smart contract or by another function in the same contract
    function increment1() public {
        count = count + 1;
    }
    function increment2() public {
        increment1();
    }

    // private can not be called outside the smart contract, but can be called by another function in the same contract
    function increment3() private {
        count = count + 1;
    }
    function increment4() public {
        increment3();
    }

    // external can only be called outside the smart contract
    function increment5() external {
        count = count + 1;
    }

    // internal can only be called inside the same smart contract and derived contracts
    function increment6() internal {
        count = count + 1;
    }
    function increment7() public {
        increment6();
    }
}