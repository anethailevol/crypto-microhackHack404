//SPDX-License-Identifier:MIT

pragma solidity^0.8.30;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract testtoken is ERC20{
    constructor() ERC20 ('Hack404Coin', '404'){
        name();
        symbol();
        _mint (0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 1000000);
        _burn(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 200);
    }
}

