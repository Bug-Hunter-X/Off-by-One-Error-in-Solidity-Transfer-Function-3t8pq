# Solidity Bug: Off-by-One Error in Token Transfer

This repository demonstrates a common off-by-one error that can occur in Solidity smart contracts.  The `transfer` function in the `bug.sol` file attempts to transfer tokens without properly handling cases where the recipient address does not exist or has a balance of zero.  The `bugSolution.sol` file provides a corrected version.

**The bug:** The original contract's `transfer` function doesn't check if the `to` address is valid before updating the balances. This could lead to unexpected behavior, potentially allowing attackers to exploit vulnerabilities if the recipient address is uninitialized.

**The solution:**  The corrected `transfer` function includes a check to ensure the recipient address exists before proceeding with the transfer.  This prevents unintended issues and enhances the contract's security.

Feel free to use and modify this example to understand and avoid similar pitfalls in your own Solidity development.