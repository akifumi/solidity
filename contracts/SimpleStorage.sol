// バージョンプラグマの指定
pragma solidity ^0.4.0;


// コントラクトの宣言
contract SimpleStorage {
    // 変数の宣言
    uint storeData;

    // storeDataを変更する
    function set(uint x) {
        storeData = x;
    }

    // storeDataを取得する
    function get() constant returns (uint) {
        return storeData;
    }
}
