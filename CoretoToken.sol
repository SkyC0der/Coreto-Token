// SPDX-License-Identifier: MIT;

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract CoretoToken is ERC20 {
    address public owner;
    
    
	modifier onlyOwner {
		require(msg.sender == owner, "");
		_;
	}
	
    constructor() ERC20("Coreto Token", "CRT") {
        _mint(msg.sender, 10000000 * 10 ** 18);
        owner = msg.sender;
    }
    
 
    // Returns Contract Address  
    function contractAddress() public view returns (address){
      return address(this);
  }

}