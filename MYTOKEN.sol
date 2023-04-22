// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract LoveToken {
    // public variables here
        string public name = "IMMANUEL";
        string public abbrv = "IMMAN";
        uint public supply = 0;

    // mapping variable here
        mapping(address => uint) public bal;

    // mint function
        function mint(address add, uint val) public{
            supply += val;
            bal[add] += val;
        }
    // burn function
        function burn(address add, uint val) public{
            if(bal[add] >= val){
                supply -= val;
                bal[add] -= val;
            }
        }
}
