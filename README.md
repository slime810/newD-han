# D班のRailsプロジェクトです。
## リポジトリのクローンの手順
### 1.ホーム画面で[Code]をクリック -> [SSH]クリック -> 「git@github.com:slime810/D-han.git」をコピー
### 2.githubを開き、リポジトリを置きたい場所にパスに移動
### 3.githubで「git clone コピーした内容貼り付け」で実行

## リポジトリの更新
### Gitでリポジトリのあるパスに行き「git pull origin ブランチ名」で実行する。
#### ※注意点：自分が作ったファイルなどが上書きされる可能性があります。

## リポジトリをリモートのほうに上げる
### Gitでリポジトリのあるパスに行き「git push origin ブランチ名」で実行する。
#### ※注意点：「git add .」と「git commit -m "メッセージ"」をするのを忘れないでください

## データベースの設計構造
```txt
テーブル名:Genre

フィールド名:genre_id(主キー)
            genre_name
```
```txt
テーブル名:User

フィールド名:user_id(主キー)
            user_name
            mail
            password
```
```txt
テーブル名:Question

フィールド名:question_id(主キー)
            question_stantement
            explanation
            user_id(外部キー)
            genre_id(外部キー)
            choices1
            choices2
            choices3
            choices4
```

