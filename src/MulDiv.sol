// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract MulDiv {
	uint256 a = 8;

	function divideByTwo() external view returns (uint256) {
		return a / 2;
	}

	function divideByFour() external view returns (uint256) {
		return a / 4;
	}

	function multiplyByEight() external view returns (uint256) {
		return a * 8;
	}

	function bitwiseDivideByTwo() external view returns (uint256) {
		return a >> 1;
	}

	function bitwiseDivideByFour() external view returns (uint256) {
		return a >> 2;
	}

	function bitwiseMultiplyByEight() external view returns (uint256) {
		return a << 3;
	}
}
