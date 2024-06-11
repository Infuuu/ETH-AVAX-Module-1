# AgeChecker Contract Readme

 **AgeChecker.sol** - A Simple Solidity Contract for Error Handling

This Solidity contract serves as a learning tool for beginners. It demonstrates how to handle errors using assert, revert, and require statements, which are essential mechanisms in Solidity programming.

Certainly! Here's a section for your README.md file that provides an overview of your `AgeChecker` contract:

---

## Contract Overview

The `AgeChecker` contract includes the following functionality:

- A `checkAgeRequire` function that verifies if the provided age is greater than 18 using the `require` statement.
- A `checkAgeRevert` function that verifies if the provided age is greater than 18 using the `revert` statement.
- A `checkAgeAssert` function that verifies if the provided age is greater than 18 using the `assert` statement.

Each function returns `true` if the age check passes.

Sure! Here's an explanation of error handling in Solidity, tailored to your `AgeChecker` contract:

---

## Error Handling in Solidity

Error handling is a critical aspect of smart contract development in Solidity, ensuring that contracts behave as expected and securely handle unexpected conditions. Solidity provides three primary mechanisms for error handling: `require`, `revert`, and `assert`. Each serves a unique purpose and is used in different scenarios.

### `require()`

The `require` statement is used to validate conditions that must be true before executing further code. If the condition fails, the transaction is reverted, and any changes made to the state are undone. It can also return an optional error message.

- **Use Case**: Input validation, checking preconditions.
- **Example**: Ensuring an age is greater than 18 before proceeding.
- **Gas Refund**: Unused gas is refunded.

### `revert()`

The `revert` statement is used to handle more complex error conditions. It explicitly triggers an error and reverts the transaction, undoing all state changes. It can also include an error message for better debugging.

- **Use Case**: More complex condition checks, custom error messages.
- **Example**: Reverting the transaction if the age is not greater than 18.
- **Gas Refund**: Unused gas is refunded.

### `assert()`

The `assert` statement is used to test for internal errors and verify invariants. If an `assert` condition fails, it indicates a bug in the contract. The transaction is reverted, but unlike `require` and `revert`, `assert` consumes all remaining gas.

- **Use Case**: Detecting internal errors and invariants, critical conditions.
- **Example**: Ensuring an age invariant within the contract logic.
- **Gas Refund**: No refund; all remaining gas is consumed.

## Using the Contract in Remix IDE

To use this contract in the Remix IDE, follow these steps:

1. Open the Remix IDE (https://remix.ethereum.org/).
2. Create a new Solidity file and name it "AgeChecker.sol".
3. Copy and paste the contract code into the "AgeChecker.sol" file.
4. Select the appropriate Solidity compiler version (0.8.0 or higher) in the Remix IDE.
5. Compile the contract by clicking the "Compile" button.
6. Once compiled successfully, you can interact with the contract using the Remix IDE's built-in console or by deploying it to a test network.

**Note:** Before interacting with the contract, make sure you have a compatible Ethereum wallet connected to the Remix IDE (e.g., MetaMask).

Certainly! Here's a section for your README.md file that describes the functionality of each function in your `AgeChecker` contract:

---

## Contract Functionality

The `AgeChecker` contract includes three functions that each perform an age verification check using different error handling methods: `require`, `revert`, and `assert`.

### Functions

1. **checkAgeRequire**

    ```solidity
    function checkAgeRequire(uint _age) public pure returns (bool) {
        require(_age > 18, "Age must be greater than 18");
        return true;
    }
    ```

    - **Purpose**: Checks if the provided age is greater than 18 using the `require` statement.
    - **Behavior**: If the age is not greater than 18, the transaction is reverted with an error message "Age must be greater than 18".
    - **Return**: Returns `true` if the age check passes.

2. **checkAgeRevert**

    ```solidity
    function checkAgeRevert(uint _age) public pure returns (bool) {
        if (_age <= 18) {
            revert("Age is not greater than 18");
        }
        return true;
    }
    ```

    - **Purpose**: Checks if the provided age is greater than 18 using the `revert` statement.
    - **Behavior**: If the age is not greater than 18, the transaction is explicitly reverted with an error message "Age is not greater than 18".
    - **Return**: Returns `true` if the age check passes.

3. **checkAgeAssert**

    ```solidity
    function checkAgeAssert(uint _age) public pure returns (bool) {
        assert(_age > 18);
        return true;
    }
    ```

    - **Purpose**: Checks if the provided age is greater than 18 using the `assert` statement.
    - **Behavior**: If the age is not greater than 18, the transaction is reverted, and all remaining gas is consumed.
    - **Return**: Returns `true` if the age check passes.
  

## 🌟 **Acknowledgement** 🌟

This project was built under the guidance of the [Metacrafters](https://www.metacrafters.io) team as part of their comprehensive . I express my gratitude to the MetaCrafters team for their support and guidance throughout this learning journey.

## Authors
[Metacrafters](https://www.metacrafters.io) Student   
[Sharad Singh]
