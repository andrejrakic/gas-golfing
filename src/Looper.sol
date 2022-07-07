// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract Looper {
	function doStuff(uint256 i) private pure returns (uint256) {
		return i;
	}

	function loop1(uint256[] calldata array) external pure {
		for (uint256 i = 0; i < array.length; i++) {
			doStuff(array[i]);
		}
	}

	function loop2(uint256[] calldata array) external pure {
		uint256 length = array.length;
		for (uint256 i = 0; i < length; i++) {
			doStuff(array[i]);
		}
	}

	function loop3(uint256[] calldata array) external pure {
		uint256 length = array.length;
		for (uint256 i = 0; i < length; ++i) {
			doStuff(array[i]);
		}
	}

	function loop4(uint256[] calldata array) external pure {
		uint256 length = array.length;
		for (uint256 i = 0; i < length; ) {
			doStuff(array[i]);
			unchecked {
				i++;
			}
		}
	}

	function loop5(uint256[] calldata array) external pure {
		uint256 length = array.length;
		for (uint256 i = 0; i < length; ) {
			doStuff(array[i]);
			unchecked {
				++i;
			}
		}
	}

	function loop6(uint256[] calldata array) external pure {
		uint256 length = array.length;
		for (uint256 i; i < length; ) {
			doStuff(array[i]);
			unchecked {
				++i;
			}
		}
	}

	function loop7(uint256[] calldata array) external pure {
		uint256 length = array.length - 1;
		while (length != 0) {
			doStuff(array[length]);
			unchecked {
				length--;
			}
		}
		doStuff(array[0]);
	}
}
