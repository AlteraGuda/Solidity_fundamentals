//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Coinminter {
    address public owner;
    mapping(address => uint256) public balances;
    event Sent(address _from, address _to, uint256 _amount);
    error insufficientBalance(uint256 _requested, uint256 _available);

    constructor() {
        owner = msg.sender;
    }

    function mint(address _receiver, uint256 _amount) public {
        require(msg.sender == owner);
        balances[_receiver] += _amount;
    }

    function send(address _receiver, uint256 _amount) public {
        if (_amount > balances[msg.sender])
            revert insufficientBalance({
                _requested: _amount,
                _available: balances[msg.sender]
            });
        balances[msg.sender] -= _amount;
        balances[_receiver] += _amount;
        emit Sent(msg.sender, _receiver, _amount);
    }
    function getBalance(address _account) external  view returns (uint){
        return balances[_account];
    } 
}
