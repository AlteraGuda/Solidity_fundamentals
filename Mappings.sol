//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//fixed size

contract Mapping {
    mapping(uint256 => string) public colors;

    constructor() {
        colors[1] = "Red";
        colors[2] = "Blue";
        colors[3] = "Green";
    }

    function addColor(uint256 _index, string memory _color) public {
        colors[_index] = _color;
    }

    struct Car {
        string maker;
        string model;
    }
    mapping(uint256 => Car) public cars;

    function addCar(
        uint256 _index,
        string memory _maker,
        string memory _model
    ) public {
        cars[_index] = Car(_maker, _model);
    }
mapping(address => mapping(uint => Car)) public playerCars ; 
function addPlayerCar(
        uint256 _index,
        string memory _maker,
        string memory _model
    ) public {
        playerCars[msg.sender][_index] = Car(_maker, _model);
        
    } 
}
