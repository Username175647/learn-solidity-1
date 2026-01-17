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

contract Bites {
    bytes8 public myBytes = "solidity";

    function getByteByIndex(uint8 _bytesIndex) public view returns(bytes1) {
        return myBytes[_bytesIndex];
    }
}

contract Enum {
    enum Skills {NOOB, ADVANCED, PRO}
    Skills public someoneSkills;

    function setSkill(uint256 _skillLevel) public {
        someoneSkills = Skills(_skillLevel);
    }
    function getSkillLevel() public view returns(string memory) {
        if (someoneSkills == Skills.NOOB) return "noob";
        if (someoneSkills == Skills.ADVANCED) return "advanced";
        if (someoneSkills == Skills.PRO) return "pro";
        return "No level";
    }
}

contract Mapping {
    mapping (address => uint256) public userBalances;

    function addUserBalance(address _user, uint256 _balance) public {
        userBalances[_user] = _balance;
    }

    function getUserBalance(address _userAddress) public view returns(uint256) {
        return userBalances[_userAddress];
    }

    function deposit() public payable {
        userBalances[msg.sender] = userBalances[msg.sender] + msg.value;
    }
}

contract Structures { //Object
    struct UserData {
        string name;
        uint256 age;
        bool isSportsman;
    }

    UserData public me;
    function setUserData1() public {
        me = UserData("Alex",31,false);
    }
    function setUserData2() public {
        me = UserData({
            name: "Mike",
            age: 26,
            isSportsman: true
        });
    }
    function setUserData3() public {
        me.name = "Ivan";
        me.age = 50;
        me.isSportsman = true;
    }

    mapping(address => UserData) public users;

    function setUserData(string memory _name, uint256 _age, bool _isSportsman) public {
        users[msg.sender] = UserData(_name,_age,_isSportsman);
    }
    function getUsersName(address _userAddress) public view returns(string memory) {
        return users[_userAddress].name;
    }
}

contract Arrs {
    uint256[] public Arr = [999, 1, 0, 55, 5565354345];

    function addTicketToArr(uint256 _ticketNumber) public {
        Arr.push(_ticketNumber);
    }
}