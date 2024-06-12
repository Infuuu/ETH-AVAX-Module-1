// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Admission {
    
    function uniA(uint mathMarks, uint scienceMarks) public pure returns(string memory){
        require(mathMarks > 80 && scienceMarks > 90, "You are not eligible for admission in our University");
        return "You are eligible to take admission";
    }

    function uniB(uint mathMarks, uint scienceMarks) public pure returns(string memory){
        if(mathMarks > 60 && scienceMarks > 60){
            revert("You are not eligible for admission in our University");
        }
        return "You are eligible to take admission";
    }

    function uniC(uint mathMarks, uint scienceMarks) public pure returns(string memory){
        assert(mathMarks > 95 && scienceMarks > 95);
        return "You are eligible to take admission";
    }
}
