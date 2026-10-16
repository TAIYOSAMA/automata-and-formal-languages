# コンパイルエンジンに LuaLaTeX を使用
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# デフォルトのビルドモードを LuaLaTeX に設定
$pdf_mode = 4; # 4 = lualatex

# 出力先ディレクトリの設定
$out_dir = 'out';
