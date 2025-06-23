# D班のRailsプロジェクトです。
## リポジトリのクローンの手順
### 1.ホーム画面で[Code]をクリック -> [SSH]クリック -> 「git@github.com:slime810/D-han.git」をコピー
### 2.githubを開き、リポジトリを置きたい場所にパスに移動
### 3.githubで「git clone コピーした内容貼り付け」で実行

## データベースの設計構造
```txt
テーブル名:GenreMaster

フィールド名:genre_id(主キー)
            genre_name
```
```txt
テーブル名:UserMaster

フィールド名:user_id(主キー)
            user_name
            email
```
```txt
テーブル名:QuestionMaster

フィールド名:question_id(主キー)
            question_text
            explanation_text
            create_date
            genre_id(外部キー)
            correct_answer
            user_id(外部キー)
```

