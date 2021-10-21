KotoishiHeart Gentoo Overlay
===============================

### Japanese
こちらのOverlayはGentoo公式ではありません。

このOverlayはGentoo公式に投入されていないバージョンのソフトウェア、ライブラリをインストール可能なebuildファイルを提供しています。

そのためこのOverlayを使用して問題が発生した場合でも、Gentooへ批判を送付しないでください。

このOverlayに投入されているバージョンのパッケージはGentooコミュニティでのテストを受けていません。

さらに、予期せぬバグが残っている場合があります。ご了承のほどお願いいたします。

### English
This Overlay is not an official Gentoo release.

This Overlay provides ebuild files that allow you to install versions of software and libraries that have not been officially released by Gentoo.

Therefore, please do not send any criticism to Gentoo if you encounter problems using this Overlay.

The version of the package submitted to this Overlay has not been tested by the Gentoo community.

In addition, there may be unforeseen bugs remaining. We thank you for your understanding.

Installation
=====

### Japanese
下記のコマンドを実行することでリポジトリを追加し、同期を行うことができます

~~~
sudo su -
wget -P /etc/portage/repos.conf/ https://raw.githubusercontent.com/KotoishiHeart/GentooRepository/main/KotoishiHeart-overlay.conf
emaint sync --repo KotoishiHeart-overlay
~~~

## English
Look at the commands I'm about to describe and run them in order from the beginning.

~~~
sudo su -
wget -P /etc/portage/repos.conf/ https://raw.githubusercontent.com/KotoishiHeart/GentooRepository/main/KotoishiHeart-overlay.conf
emaint sync --repo KotoishiHeart-overlay
~~~

Licence
=====

## Japanese
このOverlayの内容は GNU General Public License v2 によって利用が制限されています。

## English
Distributed under the terms of the GNU General Public License v2

Copyright 2021 KotoishiHeart
