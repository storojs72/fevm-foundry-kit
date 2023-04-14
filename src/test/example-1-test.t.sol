pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../example-1/example-1.sol";

contract Example_1_Contract_Test is Test {

    Example_1 example_1_contract;

    function setUp() public {
        example_1_contract = new Example_1();
    }

    function testWhatever() public {
        uint256 actual = example_1_contract.getResult();
        uint256 expected = 167666503;
        assertEq(actual, expected);
    }
}