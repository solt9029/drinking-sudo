# 飲酒sudoを防止するシステム
- tweet: https://twitter.com/solt9029/status/1368060841115840513
- 飲酒時にsudoコマンドの実行を防止する。

## 背景
- tweets: https://twitter.com/search?q=%E9%A3%B2%E9%85%92sudo&src=typed_query&f=live
- sudoコマンドとは、エンジニアではない人向けに超ざっくり説明すると、コンピュータを破壊するレベルで危険な操作ができるコマンドです。
- 飲酒時にsudoコマンドを使うことは危険とよくネタにされることから、それを防止するシステムを作ってみました。

## 使い方
- てきとうにaliasをはってsudoと置き換えてください。

## 使用した技術
- arduino, mq-3センサ
- ruby, thor

---

# drinking-sudo
- tweet: https://twitter.com/solt9029/status/1368060841115840513
- Prevent sudo under the influence of alcohol.

## background
- tweets: https://twitter.com/search?q=%E9%A3%B2%E9%85%92sudo&src=typed_query&f=live
- sudo is the command that is potentially dangerous and even breaks the computer if you take a mistake.
- I created a system to prevent sudo under the influence of alcohol.

## how to use
- Use alias and replace sudo.

## tech stack
- arduino, mq-3 sensor
- ruby, thor
