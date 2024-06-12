# Admission Contract Readme

 **Admission.sol** - A Simple Solidity Contract for Error Handling

This Solidity contract serves as a learning tool for beginners. It demonstrates how to handle errors using assert, revert, and require statements, which are essential mechanisms in Solidity programming.

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

Sure! Here is a section for your README.md file that describes the functionality of each function in your `Admission` contract:

---

## Contract Functionality

The `Admission` contract includes three functions, each designed to check a student's eligibility for admission to different universities based on their math and science marks. Each function demonstrates a different approach to error handling in Solidity: `require`, `revert`, and `assert`.

### Functions

1. **uniA**

    ```solidity
    function uniA(uint mathMarks, uint scienceMarks) public pure returns (string memory) {
        require(mathMarks > 80 && scienceMarks > 90, "You are not eligible for admission in our University");
        return "You are eligible to take admission";
    }
    ```

    - **Purpose**: Checks if the student's math marks are greater than 80 and science marks are greater than 90 for eligibility at University A.
    - **Error Handling**: Uses the `require` statement to enforce the criteria. If the condition fails, the transaction is reverted with an error message "You are not eligible for admission in our University".
    - **Return**: Returns "You are eligible to take admission" if the eligibility criteria are met.

2. **uniB**

    ```solidity
    function uniB(uint mathMarks, uint scienceMarks) public pure returns (string memory) {
        if (mathMarks > 60 && scienceMarks > 60) {
            revert("You are not eligible for admission in our University");
        }
        return "You are eligible to take admission";
    }
    ```

    - **Purpose**: Checks if the student's math marks and science marks are both greater than 60 for eligibility at University B.
    - **Error Handling**: Uses the `revert` statement to handle the condition. If both marks are greater than 60, the transaction is reverted with an error message "You are not eligible for admission in our University".
    - **Return**: Returns "You are eligible to take admission" if the eligibility criteria (math marks and science marks not both greater than 60) are met.

3. **uniC**

    ```solidity
    function uniC(uint mathMarks, uint scienceMarks) public pure returns (string memory) {
        assert(mathMarks > 95 && scienceMarks > 95);
        return "You are eligible to take admission";
    }
    ```

    - **Purpose**: Checks if the student's math marks are greater than 95 and science marks are greater than 95 for eligibility at University C.
    - **Error Handling**: Uses the `assert` statement to enforce the criteria. If the condition fails, the transaction is reverted, and all remaining gas is consumed.
    - **Return**: Returns "You are eligible to take admission" if the eligibility criteria are met.

## Summary

Each function in the `Admission` contract demonstrates a different method of error handling:

- **`uniA`**: Uses `require` for precondition checks, reverting the transaction if the conditions are not met.
- **`uniB`**: Uses `revert` for more complex condition checks, explicitly reverting the transaction if the conditions are met.
- **`uniC`**: Uses `assert` for checking conditions that should never fail, consuming all remaining gas if the conditions are not met.

These functions illustrate practical examples of how to use `require`, `revert`, and `assert` in Solidity for enforcing conditions and handling errors.

  

## 🌟 **Acknowledgement** 🌟

This project was built under the guidance of the [Metacrafters](https://www.metacrafters.io) team as part of their comprehensive . I express my gratitude to the MetaCrafters team for their support and guidance throughout this learning journey.

## Authors
[Metacrafters](https://www.metacrafters.io) Student   
[Sharad Singh]
