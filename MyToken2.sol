// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";

interface IERC20 {
    function totalSupply() external view returns (uint);

    function balanceOf(address tokenOwner) external view returns (uint);

    function transfer(address recipient, uint amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint amount) external returns (bool);

    function transferFrom(address sender, address recipient, uint amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}

contract MyToken is IERC20{
    string public name = "XENON"; //name of our token
    string public symbol = "XNN";

    string public decimal = '0';
    uint public override totalSupply;
    address public founder;
    mapping(address => uint) public balance;
    mapping(address => mapping(address => uint)) public allowed;

    constructor(){
        totalSupply = 100000;
        founder = msg.sender;
        balance[founder] = totalSupply;
    }

    function balanceOf(address tokenOwner) public view override returns(uint){
        return balance[tokenOwner];
    }

    function transfer(address to, uint value) public override returns(bool success){
        balance[to] += value;
        balance[msg.sender] -= value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

//approve function like writing a cheque book
    function approve(address spender, uint amount) public override returns(bool success){
        allowed[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function allowance(address owner, address spender) public view override returns (uint){
        return allowed[owner][spender];
    }

    function transferFrom(address sender, address recipient, uint amount) public override returns (bool){
        allowed[sender][msg.sender] -= amount;
        balance[sender] -= amount;
        balance[recipient] += amount;
        emit Transfer(sender, recipient, amount);
        return true;
    }
}
