// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

// custom errors < srtings under 32 bytes < string over 32 bytes

// helpful tool: https://mothereff.in/byte-counter

contract Errors {
	error Errors__CustomErrorExample();

	function stringOver32(uint256 a, uint256 b) external pure {
		require(a < b, 'Errors::stringOver32: a must be less than b');
	}

	function stringUnder32(uint256 a, uint256 b) external pure {
		require(a < b, 'a must be less than b');
	}

	function customError(uint256 a, uint256 b) external pure {
		if (b < a) {
			revert Errors__CustomErrorExample();
		}
	}
}
