# FEVM Foundry Kit

This is a template for foundry that provides the basic scaffolding for quickly getting started with new projects. 

## Download Foundry

You can find the instructions to download Foundry in the [official Foundry repo](https://github.com/foundry-rs/foundry#installation). 

## Cloning the Repo

Open up your terminal (or command prompt) and navigate to a directory you would like to store this code on. Once there type in the following command:


```
git clone https://github.com/xBalbinus/fevm-foundry-kit
cd fevm-foundry-kit
yarn install
```

This will clone the hardhat kit onto your computer, switch directories into the newly installed kit, and install the dependencies the kit needs to work.

## Get a Private Key

You can get a private key from a wallet provider [such as Metamask](https://metamask.zendesk.com/hc/en-us/articles/360015289632-How-to-export-an-account-s-private-key).
Essentially, in order to be able to execute any computation / smart contract, it is necessary to have tokens supported by the network, where execution is going to be performed.
Let's target Filecoin's test network - Hyperspace. As soon as network is built specifically for testing, it is possible to generate tokens (money, paid for contract deployment and interaction)
via [faucet](https://hyperspace.yoga/#faucet) tool. For more detailed instructions, check [ERC20](https://docs.filecoin.io/smart-contracts/fundamentals/erc-20-quickstart/) tutorial.

## Add your Private Key as an Environment Variable

Add your private key and web entry point of Hyperspace network as an environment variables by running following commands:

```
export PRIVATE_KEY='abcdef'
export HYPERSPACE_RPC_URL=https://api.hyperspace.node.glif.io/rpc/v1
```

## Compilation and unit-testing

```
forge clean && forge build && forge test -vv
```

This performs cleanup; builds contract `src/example-1/example-1.sol` and runs unit tests from `src/test/example-1-test.t.sol`.

## Deploy the Contract

```
forge create --rpc-url https://api.hyperspace.node.glif.io/rpc/v1 --private-key $PRIVATE_KEY --contracts src/example-1/example-1.sol Example_1
```

This will deploy our `Example_1` contract from `src/example-1/example-1.sol`. The output should be like following:

```
Deployer: 0xC079fB5Fdb7919f22675a7BD49CEcA6715e7E5BF
Deployed to: 0x0eAfEa20c99eD6B78A785cc70D00E57D5ea561c5
Transaction hash: 0x81ac46bbbf08e3b5cfa8c6215e6b1735e0324ead5d136619ff1b1faadd7cb439
```

It is possible to validate that transaction that deploys the contract has been executed in the network by checking [explorer](https://hyperspace.filfox.info/en/message/0x81ac46bbbf08e3b5cfa8c6215e6b1735e0324ead5d136619ff1b1faadd7cb439).

## Interact with the Contracts

You can interact with contracts via forge scripts, found in the 'scripts' folder. Check `script/example-1-script.s.sol` For example, to interact with the deployed contract:

```
forge script script/example-1-script.s.sol:Example_1_Script --rpc-url https://api.hyperspace.node.glif.io/rpc/v1 --broadcast -g 1000000
```
