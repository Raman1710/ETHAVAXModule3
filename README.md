# ETHAVAXModule3

## Token Contract

Smart Contract for Token Creation on Local HardHat Network

##  Description

This project demonstrates the creation of a custom token on a local HardHat network using a smart contract. The smart contract allows the contract owner to mint tokens to a specified address and enables any user to burn and transfer tokens.

## Contract Details

The smart contract is written in Solidity. It includes the following functionalities:

- **Constructor**: Initializes the contract with the token owner's address, token name, token abbreviation, and initial token supply. The contract owner is set to the deployer of the contract, and the initial token supply is assigned to the contract owner's address.

- **Mint**: Allows the contract owner to mint additional tokens and assign them to a specified address. Only the contract owner can call this function.

- **Burn**: Enables any user to burn a specific amount of tokens from their own balance. The burned tokens are subtracted from the total supply and the user's balance.

- **Transfer**: Allows any user to transfer a specified amount of tokens from their balance to another address.

## Getting Started

To interact with the smart contract, you can use the Remix IDE. Follow the steps below:

1. Open the Remix IDE (https://remix.ethereum.org/).

2. Create a new file and name it `Token.sol`.

3. Copy and paste the contract code from the provided snippet into the `Token.sol` file.

4. Compile the smart contract by selecting the appropriate Solidity version and clicking the "Compile" button.

5. Deploy the smart contract to the local HardHat network.

6. Once deployed, you can interact with the contract through its functions using the Remix IDE's user interface.

## Usage

- **Constructor**: When deploying the contract, provide the desired token name, abbreviation, and initial supply as constructor arguments.

- **Mint**: Call the `mint` function, specifying the recipient's address and the amount of tokens to mint. Only the contract owner can call this function.

- **Burn**: Call the `burn` function, specifying the amount of tokens to burn. The tokens will be subtracted from the caller's balance and the total supply.

- **Transfer**: Call the `transfer` function, specifying the recipient's address and the amount of tokens to transfer. The tokens will be subtracted from the caller's balance and added to the recipient's balance.

## License

This project is licensed under the MIT License.
