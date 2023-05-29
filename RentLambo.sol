//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RentLambo {
    address payable public contractOwner;
    enum LamboConditions {
        Available,
        Rented
    }
    LamboConditions Lambo;
    event Rented(address _customer, uint256 _amount);

    modifier paymentError(uint256 _value) {
        require(msg.value >= _value, "Not enough Ether");
        _;
    }
    modifier statusError() {
        require(
            Lambo == LamboConditions.Available,
            "The Lambo is already rented"
        );
        _;
    }

    constructor() {
        contractOwner = payable(msg.sender);
        Lambo = LamboConditions.Available;
    }

    function getCondition() public view returns (LamboConditions) {
        return Lambo;
    }

    function rentLambo() public payable statusError paymentError(2 ether) {
        contractOwner.transfer((msg.value));
        Lambo = LamboConditions.Rented;
        emit Rented(msg.sender, msg.value);
    }

    function returnLambo() public {
        Lambo = LamboConditions.Available;
    }

    receive() external payable statusError paymentError(2 ether) {
    contractOwner.transfer((msg.value));
        Lambo = LamboConditions.Rented;
        emit Rented(msg.sender, msg.value);
}

}