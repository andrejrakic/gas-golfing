// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import 'forge-std/Test.sol';
import { PublicVsExternal, Yul } from 'src/PublicVsExternal.sol';

contract PublicVsExternalTest is Test {
	PublicVsExternal _contract;
	Yul yulContract;

	function setUp() public {
		_contract = new PublicVsExternal();
		yulContract = new Yul();
	}

	function testPublic() public {
		_contract.publicFunction();
	}

	function testExternal() public {
		_contract.externalFunction();
	}

	function testYul() public {
		uint256 previousA = yulContract.a();
		yulContract.yulFunction();
		uint256 currentA = yulContract.a();
		assertEq(currentA, previousA**2);
	}
}
