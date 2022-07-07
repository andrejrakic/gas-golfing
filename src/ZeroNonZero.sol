// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

// TLDR: Changing a value from 0 to non-zero is more expensive than changing from non-zero to 0

contract ZeroNonZero {
	uint256 zero = 0;
	uint256 nonZero = 1;

	function changeZero() external {
		zero = 1;
	}

	function changeNonZero() external {
		nonZero = 0;
	}

	function changeZeroYul() external {
		assembly {
			sstore(0, 1)
			// sstore(zero.slot, 1)
		}
	}

	function changeNonZeroYul() external {
		assembly {
			sstore(1, 0)
			// sstore(nonZero.slot, 0)
		}
	}
}
