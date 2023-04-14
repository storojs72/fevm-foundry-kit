pragma solidity ^0.8.11;

import "@forge-std/Script.sol";
import "../src/example-1/example-1.sol";

contract Example_1_Script is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        Example_1 obj = new Example_1();

        console.log("result is : ", obj.getResult());

        vm.stopBroadcast();
    }
}
