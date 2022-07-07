// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

// TLDR: uint256 is cheaper than uint8 and etc. because it fits into one storage slot exactly

/**
 * The EVM works with 256bit/32byte words (debatable design decision).
 * Every operation is based on these base units. If your data is smaller,
 * further operations are needed to downscale from 256 bits to 8 bits,
 * hence why you see increased costs.
 */

contract DataTypes {
	uint256 a;
	uint8 b;

	function powerA() public {
		a = a**2;
	}

	function powerB() public {
		b = b**2;
	}
}
