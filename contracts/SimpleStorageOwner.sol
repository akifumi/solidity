// バージョンプラグマの指定
pragma solidity ^0.4.0;


// コントラクトの宣言
contract SimpleStorageOwner {

    // 変数の宣言
    uint storeData;
    // コントラクトを作成したアカウントのアドレスを入れる
    address owner;

    //
    function SimpleStorageOwner() {
        // コンストラクタ
        owner = msg.sender;
    }

    modifier onlyOwner {
        // コントラクトへの呼び出しがコントラクトの作成者かを確認する
        // 違ったらrevertが発生します
        require(msg.sender == owner);
        // _ は修飾子が付けられた関数を実行するという意味
        _;
    }

    // storeDataを変更する
    function set(uint x) onlyOwner {
        storeData = x;
    }

    // storeDataを取得する
    function get() constant returns (uint) {
        return storeData;
    }
}
