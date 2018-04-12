pragma solidity ^0.4.0;


contract InputParams {

    function taker(uint _a, uint _b) {
        _a;
    }

    // _bをつかっていないのであれば_bをかかなくても良い
    function taker(uint _a, uint) {
        _a;
    }
}
