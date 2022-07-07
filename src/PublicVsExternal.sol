// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

// External is cheaper than public, if the contract itself doesn't call particular function use external always
// Proof: forge test --match-contract PublicVsExternal --gas-report

contract PublicVsExternal {
	uint256 a = 10;

	function publicFunction() public {
		a = a**2;
	}

	function externalFunction() external {
		a = a**2;
	}
}

contract Yul {
	uint256 public a = 10;

	function yulFunction() external {
		assembly {
			sstore(a.slot, exp(sload(a.slot), 2))
		}
	}
}
