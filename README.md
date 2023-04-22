# My Token

The most objective of this strength program is to execute a token contract that empowers clients to mint and burn tokens. Also, the program permits for the following of equalizations related with particular addresses, and utilizes conditional explanations to guarantee that certain forms are carried out as it were when doable.

## Description

This program might be an explicit agreement that keeps track of a specific address's token ownership through the use of a mapping information structures. The two abilities to create tokens and remove them are highlighted in the program. In summary, this application acts as a realistic simulation, explaining how stamping and burning tokens function.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., myToken.sol). Copy and paste the following code into the file:

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

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile myToken.sol" button.

To deploy the contract, click on the "Deploy and Run Transactions" button. This will open a new window that allows you to deploy the contract. Do not forget to select the MyToken contract before deploying.

In the deployment window Deployed Contracts, set the parameters for the balance, mint, and burn functions. 
* To mint new tokens, input the address of the recipient and the number of tokens you want to mint and click transact. 
* To burn tokens, input the address of the recipient and the number of tokens you want to burn and click transact. 
* To see current balances of the address, input the address of the recipient and the number of tokens you want to mint and click call. You can also see the total supply by clicking the totalSupply button.

## Authors

NTCIAN IMMANUEL GEORGE 
<br>
[Discord: @Imman](https://discordapp.com/users/Imman#2880)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
