動作環境
	MinGW64がダウンロードされており、パスが通ってること。(powershellとかcmdでg++ -vが実行可能ならオッケー)
	launch.jsonファイルの"miDebuggerPath"は環境によって変更すること。gdb.exeが存在するパスを記入する。

vsコード用の設定ファイル: フォルダ内の.vscode内に格納する。

    launch.json : デバッグ用設定ファイル。"miDebuggerPath"でデバッガプログラム指定したり、 "program"でデバッグの対象ファイルを指定したりしてる。
    tasks.json  : デバッグ用ファイルを作るための処理を自動化するためのタスクを定義。Debug Preparationを実行すれば、デバッグモードでビルドして、/debug下にexeファイルを格納してくれる。

taskの実行
    temirnal>Run task>Debug Preparation> continue without scanning...

.vscodeの自動生成方法
    左のデバッグタブをクリック>create a launch.json fileをクリック。作成されたlaunch.json fileは削除するか、コピペで塗り替える。

不具合
    ファイルパスに日本語表記あると動かないかも。Windowsでデスクトップの適当なフォルダとかだと、日本語表記のパスが存在するから動かないかも。
    