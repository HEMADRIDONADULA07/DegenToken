
# DegenToken (DGN)

DegenToken (DGN) is a Solidity smart contract that implements an ERC20 token with additional functionality. This token is inspired by the concept of "degenerative" tokens, where users can redeem prizes using their token balances.

## Features

- Mintable ERC20 token with the symbol DGN.
- Token owner can mint new tokens.
- Users can transfer tokens to other addresses.
- Users can redeem prizes using their token balances.
- Redemption requires a surplus of 100 points in the user's balance.
- Token burning functionality.

## Prerequisites

- Solidity ^0.8.18
- OpenZeppelin library (ERC20)

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/DegenToken.git
   ```

2. Install the required dependencies:

   ```bash
   npm install
   ```

3. Deploy the smart contract using your preferred Ethereum development environment.

## Smart Contract Details

The smart contract `DegenToken.sol` implements the following functionality:

- **Minting:** The contract owner can mint new DGN tokens using the `mint` function.

- **Transfers:** Users can transfer DGN tokens to other addresses using the standard ERC20 `transfer` function.

- **Prize Redemption:** Users can redeem prizes using their DGN token balances. Prizes are represented as a list of `HemsPrize` structures, each having a cost and a name. Users must have a surplus of at least 100 points in their balance to redeem a prize.

- **Burning:** Users can burn their DGN tokens using the `burn` function.

## Usage

1. Deploy the `DegenToken` contract to an Ethereum development environment.

2. Mint initial DGN tokens to your account using the `mint` function.

3. Transfer DGN tokens to other addresses using the `transfer` function.

4. Redeem prizes using the `redeem` function. Make sure to meet the redemption criteria.

5. Burn unwanted DGN tokens using the `burn` function.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- This project is inspired by the concept of degenerative tokens and the TV show "Ben 10."
