// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Token {
    address public tokenOwner;
    string public tokenName;
    string public tokenAbbrv;
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _abbrv, uint256 _initialSupply) {
        tokenOwner = msg.sender;
        tokenName = _name;
        tokenAbbrv = _abbrv;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    modifier onlyTokenOwner() {
        require(msg.sender == tokenOwner, "Only the owner of the contract can call this function.");
        _;
    }

    // Mint function
    function mint(address _address, uint256 _value) public onlyTokenOwner {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function
    function burn(address _address, uint256 _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
    
    // Transfer function
    function transfer(address _to, uint256 _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }
}
