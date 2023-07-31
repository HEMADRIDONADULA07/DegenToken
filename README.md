

# DegenToken (DGN) - ERC20 Smart Contract

The DegenToken (DGN) is an ERC20-compliant token implemented on the Ethereum blockchain. It follows the ERC20 standard, making it compatible with various decentralized applications (dApps), exchanges, and other platforms that support ERC20 tokens.

## Token Details

- Token Name: DegenToken
- Token Symbol: DGN
- Total Supply: [Total Supply Value]

## Features

The DegenToken contract comes with the following features:

1. Standard ERC20 Token: The contract is implemented using the OpenZeppelin ERC20 library, adhering to the widely-adopted ERC20 token standard.

2. Mint Function: The contract owner can mint new DegenToken and assign them to any Ethereum address using the `mint` function.

3. Transfer Function: Token holders can transfer DegenToken to other addresses using the `transfer` function.

4. Redeem Function: Token holders can redeem DegenToken by burning a specific amount of tokens, but the remaining balance after the redemption must be more than 100 points.

5. Burn Function: Token holders can burn a portion of their DegenToken by calling the `burn` function.

6. Ownership Control: The contract owner has special privileges, such as minting tokens and managing the contract.

## Deployment on Snowtrace Testnet

To deploy the DegenToken contract on the Snowtrace testnet, follow these steps:

1. Use a compatible Ethereum development tool, such as Remix, Truffle, or Hardhat, to compile the `DegenToken.sol` file using a Solidity compiler (version 0.8.18).

2. After compiling the contract, obtain the bytecode and ABI.

3. Connect to the Snowtrace testnet using your preferred Ethereum wallet or development tool, such as MetaMask.

4. Deploy the contract by sending a transaction to the Snowtrace testnet with the bytecode and constructor parameters:

   - `name`: The name of the token (e.g., "DegenToken").
   - `symbol`: The symbol (ticker) of the token (e.g., "DGN").
   - `initialSupply`: The initial total supply of DegenToken.

5. Confirm the transaction and wait for the contract deployment to be mined on the Snowtrace testnet.

6. After the contract is deployed, the owner will receive the initial supply of tokens, and the contract is ready to be used.

## Interacting with the Contract

### Token Information

- `name()`: Get the name of the token (e.g., "DegenToken").
- `symbol()`: Get the symbol (ticker) of the token (e.g., "DGN").
- `totalSupply()`: Get the total supply of DegenToken.

### Token Transfers

- `transfer(address to, uint amount)`: Transfer a specified amount of DegenToken to the given address. Ensure you have sufficient balance before calling this function.

### Token Minting

- `mint(address to, uint amount)`: Only the contract owner can mint new DegenToken and assign them to the specified address.

### Token Redemption

- `redeem(uint amount)`: Token holders can redeem DegenToken by burning a specific amount of tokens, but the remaining balance after the redemption must be more than 100 points.

### Token Burning

- `burn(uint amount)`: Token holders can burn a portion of their DegenToken, reducing their own balance.

### Contract Ownership

- `onlyOwner()`: A modifier to restrict access to functions only to the contract owner.

## Security Considerations

1. Ensure that you are using a compatible version of the Solidity compiler to avoid potential compilation issues.

2. Always verify the contract source code and perform a security audit before deploying it to the Snowtrace testnet or any production environment.

3. Be cautious when granting ownership rights to a contract, as the owner has significant control over the token and its functions.

4. Consider implementing additional security features, such as multi-signature control, to enhance the security of the contract.

## License

The DegenToken (DGN) contract is released under the MIT License. Please see the [LICENSE](LICENSE) file for more details.

## Disclaimer

This contract is provided as-is with no warranties or guarantees. The developers are not responsible for any issues, loss of funds, or damages that may result from using this contract. Please use it at your own risk and exercise caution when interacting with smart contracts.

For any questions or support, you can contact the contract owner or development team.

Thank you for using the DegenToken (DGN) contract! Happy tokenizing on Snowtrace testnet! 🚀

---
*Note: The README file above assumes that the contract is being deployed on the Snowtrace testnet. If you intend to deploy it on a different testnet or the Ethereum mainnet, you need to modify the deployment section accordingly.*
