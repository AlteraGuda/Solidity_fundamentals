//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//fixed size
contract Conditionals {
    address public owner; 
    constructor()
    {
        owner = msg.sender; 
    }
    function isOwner() public view returns(bool)
    {
        if (msg.sender == owner){
            return true; 
        }
        else {
            return false; 
        }
    }
    function bigNumber(uint256 _number) public pure returns (bool) {
        if (_number > 5) {
            return true;
        } else {
            return false;
        }
    }

    uint256[] public values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function countElements() public view returns (uint256) {
        uint256 count;
        for (uint256 i = 0; i < values.length; i++) {
            count++;
        }
        return count;
    }

    function howMany() public view returns (uint256) {
        uint256 count;
        for (uint256 i = 0; i < values.length; i++) {
            if (bigNumber(values[i])) {
                count++;
            }
        }
        return count;
    }

    function gotoZero() public pure returns (uint256) {
        uint256 times = 10;
        uint256 howManySteps;
        while (times > 0) {
            howManySteps++;
            times = times - 1;
        }
        return howManySteps;
    }
}
