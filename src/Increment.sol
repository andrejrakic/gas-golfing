// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract Increment {
	uint256 a = 1;

	function inc1() external {
		a = a + 1;
	}

	function inc2() external {
		a += 1;
	}

	function inc3() external {
		a++;
	}

	function inc4() external {
		++a;
	}

	function inc5() external {
		unchecked {
			++a;
		}
	}

	function inc6() external {
		assembly {
			sstore(0, add(sload(0), 1))
		}
	}
}
