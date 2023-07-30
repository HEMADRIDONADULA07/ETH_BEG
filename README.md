**HemadriToken Contract - Readme**

This is the readme file for the HemadriToken contract. The contract implements a simple ERC20 token named "HemadriToken" with the symbol "HT". It allows the owner of the contract to mint new tokens and token holders to burn their own tokens.

**License**
The contract is licensed under the Apache License 2.0. Make sure to read and understand the terms of the license before using or modifying the code.

**Prerequisites**
- Solidity Compiler version 0.8.18 or compatible.
- Ethereum development environment or a compatible blockchain network.

**Contract Details**
1. `HemadriToken`: This is the main contract that represents the HemadriToken ERC20 token.

2. `tokenName`: A public variable representing the name of the token (e.g., "HemadriToken").

3. `tokenAbr`: A public variable representing the symbol or abbreviation of the token (e.g., "HT").

4. `TSupply`: A public variable representing the total supply of the HemadriToken.

5. `balance`: A mapping that stores the token balance of each address. The key is the address of the token holder, and the value is the number of tokens they hold.

6. `owner`: An address variable that stores the address of the owner of the contract.

**Modifiers**
1. `onlyOwner`: A custom modifier that restricts certain functions to be called only by the contract owner.

2. `onlyBalanceHolder`: A custom modifier that restricts certain functions to be called only by token holders with a positive balance.

**Constructor**
The constructor is executed only once when the contract is deployed. It takes three arguments:
- `TokenName`: The name of the token.
- `TokenAbr`: The abbreviation or symbol of the token.
- `tSupply`: The initial total supply of tokens to be minted.

The constructor sets the `tokenName`, `tokenAbr`, `TSupply`, and allocates the entire initial supply to the contract deployer (msg.sender), setting them as the `owner` of the contract.

**Functions**
1. `mintTokens(uint value)`: This function allows the contract owner to mint new tokens. It takes a `value` parameter, which represents the number of tokens to be minted. Only the contract owner can call this function. The total supply and the balance of the owner's address are increased by the `value`.

2. `burnTokens(uint value)`: This function allows token holders to burn (destroy) their tokens. It takes a `value` parameter, which represents the number of tokens to be burned. The function checks if the caller has a sufficient balance to burn and reduces the total supply and the caller's balance by the `value`.

**Important Note**
- As of the contract creation, the `HemadriToken` contract is using Solidity version 0.8.18. Ensure that you use a compatible compiler to avoid compilation errors.

