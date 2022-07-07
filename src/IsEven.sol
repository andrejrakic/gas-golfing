// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract IsEven {
	function isEvenA(uint256 n) external pure returns (bool) {
		return n % 2 == 0;
	}

	function isEvenB(uint256 n) external pure returns (bool) {
		return n & 1 == 0;
	}
}
