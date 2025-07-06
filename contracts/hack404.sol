//SPDX-License-Identifier:MIT

pragma solidity^0.8.30;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract hack404 is ERC20{
    constructor() ERC20 ('Hack404Coin', '404'){
        _mint (0x4771dbb59dd4119CE7568276711176d0CD44C13E, 1000); //add 1000 to account 1
        _burn (0x4771dbb59dd4119CE7568276711176d0CD44C13E, 500);//remove 500 from account 1
        approve(0x4771dbb59dd4119CE7568276711176d0CD44C13E, 100);//approve transfer of 100
        transferFrom(0x4771dbb59dd4119CE7568276711176d0CD44C13E, 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, 100); //transfer 100 from account 1 to account 2 - fails because no permissions
        _mint(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, 400);//add 400 to account 2
        totalSupply(); //call total amount of tokens in system
        balanceOf(0x4771dbb59dd4119CE7568276711176d0CD44C13E);//call balance of account 1
        balanceOf(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);//call balance of account 2        
    }
}