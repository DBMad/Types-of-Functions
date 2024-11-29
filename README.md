# Types of Functions

This smart contract shows basic functionalities of an ERC-20 Token which are minting, burning, and transferring of tokens.

# REQUIREMENTS

1. For this project, write a smart contract that implements the mint() (only owner can mint), burn() and transfer() functions.

# Executing program

To run this program, you can use Remix, an online Solidity IDE. (https://remix.ethereum.org/)

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to a compatible version (in this case I used pragma solidity >=0.7.0 <0.9.0), and then click on the "Compile Filename.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar.

For the demonstration:

  1. Mint
     - This only allows the owner of the contract to mint the tokens. Anyone else is prohibited from minting tokens.
  2. Burn
     - This allows users to burn the circulating tokens.
  3. Transfer
     - This allows users to transfer tokens to each other.


# Authors

Darryl Madarang 202110370@fit.edu.ph
