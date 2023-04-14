pragma solidity ^0.8.11;

contract Example_1 {
    constructor() public {}

    function getResult() public view returns(uint) {
        uint a = 1;
        uint b = 2;
        uint result = 0;
        for (uint i = 0; i < 1000; i++ ) {
            a = a + i;
            b = b + a + i;
            result = a + b;
        }
        return result;
    }
}