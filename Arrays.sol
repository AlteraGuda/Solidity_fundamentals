//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//fixed size
//dynamic

contract Arrays {
    uint256[4] public numberArray = [1, 2, 3, 4];
    string[1] public stringArray = ["Mehdi"];
    uint256[] public dynamicNumberArray = [10];

    //2D Arrays
    uint256[][2] public Nesting = [[1, 2, 3], [5, 6, 7]];

    //Index based
    function addNumber(uint256 _number) public {
        dynamicNumberArray.push(_number);
    }

    function countElements() public view returns (uint256) {
        return dynamicNumberArray.length;
    }
}
