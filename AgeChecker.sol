// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgeChecker {
    
    function checkAgeRequire(uint _age) public pure returns (bool) {
        require(_age > 18);
        return true;
    }
    
    function checkAgeRevert(uint _age) public pure returns (bool) {
        if (_age <= 18) {
            revert("Age is not greater than 18");
        }
        return true;
    }
    
    function checkAgeAssert(uint _age) public pure returns (bool) {
        assert(_age > 18);
        return true;
    }
}