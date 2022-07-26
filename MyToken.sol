//SPDX-License-Identifier:MIT
pragma solidity >=0.5.0 <=0.9.0;
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract MyToken is ERC20{
//when we deploy the contract the 'constructor' and 'ERC20'
//Constructor is called 

    address public admin;
    constructor() ERC20('MyToken', 'MTN'){
        _mint(msg.sender, 1000*10**18);
        admin= msg.sender;
    }

    function mint(address to, uint amount) external{
        require(msg.sender==admin,"Only admin");
        _mint(to,amount);
    }

    function burn(uint amount) external{
        _burn(msg.sender, amount);
    }

}
