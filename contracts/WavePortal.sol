// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    mapping(address => uint) public waveMap;
    uint totalWaves;

    constructor() {
        console.log("Ride the Wave!");
    }

    function wave() public {
        totalWaves += 1;
        if(waveMap[msg.sender] == 0) {
            waveMap[msg.sender] = 1;
        } else {
            waveMap[msg.sender] += 1;
        }
        
        console.log("%s has waved!", msg.sender);
    }

    function getWavesByWavers(address _user) public view returns (uint256) {
        console.log("We have %d total waves!", waveMap[_user]);
        return waveMap[_user];
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}