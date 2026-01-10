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
    uint256 public supply = 1_000_000_000_000; 

    function setCounter(uint256 _count) public {
        currentYear = _count;
    }
    function increment() public {
        currentYear = currentYear + 1;
    }
    function getSupply() public view returns(uint) {
        return supply;
    }
    function burnSupply(uint burnTokenCount) public {
        supply = supply - burnTokenCount;
    }
}

contract Address {
    address public myAddress;

    function setAddress(address _address) public {
        myAddress = _address;
    }
    function getMyAddress() public view returns(address) {
        return msg.sender;
    }
    function getBalance(address _address) public view returns(uint) {
        return _address.balance / 1 gwei;
    }
    function getAddress() public view returns(address) {
        return myAddress;
    }
    function sendMoney(address payable _to, uint256 _amount) public {
        _to.transfer(_amount);
    }
    function dep() public payable {

    }
    function sendMoneyBetter(address payable _to) public payable {
        _to.transfer(msg.value);
    }
}

contract Bool {
    bool public myBool = true;
    bool public isUserPoor;

    function amIPoor() public returns (bool) {
        if (msg.sender.balance >= 90 ether) {
            isUserPoor = false;
        } else {
            isUserPoor = true;
        }
        return isUserPoor;
    }
}