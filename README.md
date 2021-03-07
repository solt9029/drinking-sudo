# 飲酒sudoを防止するシステム ( drinking-sudo )
- tweet: https://twitter.com/solt9029/status/1368060841115840513
- 飲酒時にsudoコマンドの実行を防止する 
  - Prevent sudo under the influence of alcohol

## 背景 ( background )
- tweets: https://twitter.com/search?q=%E9%A3%B2%E9%85%92sudo&src=typed_query&f=live
- sudoコマンドとは、エンジニアではない人向けに超ざっくり説明すると、コンピュータを破壊するレベルで危険な操作ができるコマンドです。
  - sudo is the command that is potentially dangerous and even breaks the computer if you take a mistake
- 飲酒時にsudoコマンドを使うことは危険とよくネタにされることから、それを防止するシステムを作ってみました。
  - I created a system to prevent sudo under the influence of alcohol

## 使い方 ( how to use )
- てきとうにaliasをはってsudoと置き換えてください。
  - Use alias and replace sudo

## 使用した技術 （ tech stack ）
- arduino, mq-3 sensor
- ruby, thor
