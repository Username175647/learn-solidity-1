//SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Strings {
    string public greetings = "Hello, World!";
    string public name = "John";
    string public surname = "Doe";

    function getFullName() public view returns(string memory) {
        return string(abi.encodePacked(name, " ", surname));
    }

    function setGreetings(string calldata message) external {
        greetings = message;
    }

    function getGreetings() public view returns(string memory) {
        return greetings;
    }
}

contract Numbers {
    uint256 public currentYear = 2026;
    int public myFavNumber = -256;

    function setCounter(uint256 _count) public {
        currentYear = _count;
    }
}