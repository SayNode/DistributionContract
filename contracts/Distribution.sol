pragma solidity >=0.6.0 <0.8.0;

import './Ownable.sol';
import './ERC20.sol';

contract Distribution is Ownable {
  constructor() public {}

  function distribute(address _tokenAddr, address _tokenSupplier, address[] memory _to, uint256[] memory _value) onlyOwner public returns (bool _success) {
    require(_to.length == _value.length);
    require(_to.length <= 150);
    for (uint8 i = 0; i < _to.length; i++) {
        assert((ERC20(_tokenAddr).transferFrom(_tokenSupplier, _to[i], _value[i])) == true);
    }
    return true;
  }
}