// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract HelloWorld {
	string private greeting;
	uint256 public version = 0;

	constructor(string memory _greeting) {
		greeting = _greeting;
	}

	function greet() public view returns (string memory) {
		return greeting;
	}

	function updateGreeting(string memory _greeting) public {
		version += 1;
		greeting = _greeting;
	}
}
