// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

/**
 * Solidity compiler reads and execute function names by their selector.
 *
 * Function selector = First 4 bytes of keccak256(function signature)
 *
 * To see function selectors run `forge inspect MyContract methods`
 *
 * The Solidity compiler will sort all the functions in a contract by their selector (in hexadecimal order)
 * and will go through each of them when executing any function call to check which is the function selector called.
 *
 * !!! Going through each of the function on a contract will cost 22 gas.
 *
 * For this reason, there is some value in renaming functions to be ordered based on the frequency you expect them to be used.
 *
 * !!! Useful tool: https://emn178.github.io/solidity-optimize-name/
 */

contract FunctionNames {
	uint256 public publicVarsHaveGeneratedGetterFunctions; // 5d478918

	function mint() external {} // 1249c58b, 1st, uses 122 gas

	function mint(address receiver) external {} // 6a627842

	function mint(uint256 value) external {} // 40c10f19

	function mint(address receiver, uint256 value) external {} // a0712d68

	function pay() external {} // 1b9265b8, 2nd, uses 144 gas

	function withdraw() external {} // 3ccfd60b, 3rd, uses 166 gas
}
