//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables {
    int256 number = 10;
    int16 numberTwo = 1;
    uint256 unsignedNumber = 50;
    bool boolean = true;
    address myAddress = 0xe63ABFA017aCF0d2f458AF8620b8d7DF1eB6811d;
    bytes32 someBytes = "name";

    //state vars
    //local vars

    //visibility states
    int256 public secondNumber = 20; //another contract & anyone can see & change
    uint256 internal internalInt = 10; // only modified by this contract
    string private name = "Dave"; //can't be inherited, exclusive to this contract

    function addNumber(uint256 _number) public pure returns (uint256) {
        uint256 value = 10;
        value = value + _number;
        return value;
    }

    struct PeopleStruct {
        string name;
        string color;
        uint256 age;
    }

    PeopleStruct public dave = PeopleStruct("Dave", "Red", 40);
    PeopleStruct public Mehdi = PeopleStruct("Mehdi", "Blue", 23);
}
