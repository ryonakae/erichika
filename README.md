# KKE

## A Clever and Cute HTML5 Template.

KKEはかしこくてかわいいHTML5テンプレートです。


## Download

[こちら](https://github.com/ryonakae/kke/archive/master.zip)からダウンロードしてください。

### git clone

    $ git clone https://github.com/ryonakae/kke.git


## Feature

* HTML5
* CSS3 - Sass (SASS) + Compass
* CoffeeScript
* Gulp


## Gulp

KKEは[Gulp](http://gulpjs.com/)を使用して開発が可能です。

### Gulpで何やってるか
* ブラウザの自動リロード
* Sass + Compassのコンパイル
* CoffeeScriptのコンパイル
* 画像ファイルの圧縮


## How to use KKE
### 1. Nodeのインストール
[node.js](http://nodejs.org/)を参照してnode.jsをインストールしてください。

### 2. Gulpのインストール

    $ npm install --global gulp

時と場合によっては`$ sudo npm install --global gulp`だったりします

### 3. ディレクトリに移動

    $ cd kke
    
ダウンロードして解凍したり`git clone`したディレクトリのことです

### 4. Gulpプラグインをインストール

    $ npm install

### 5. Gulpの実行

    $ gulp

`http://localhost:3000/`というURLでブラウザの新規タブが開くので、あとはファイルを変更するたびにブラウザが自動で更新されます。


## Sass(SASS) + Compass

KKEではCSSの拡張メタ言語にSass(SASS) + Compassを採用しています。

* SASS(.sass)だとmixin書くのが簡単すぎるのでついついmixin多用したくなるので(Compassはあらかじめ便利なmixinが用意されています)
* CompassのURLヘルパーが便利すぎるので(`image-url`みたいなアレです)
* Compassはベンダープレフィックスが余計に付くのでアレという意見もあるけど、[Autoprefixer](https://github.com/ai/autoprefixer)使えばどうとでもなる

### ファイル構成

* _normalize.scss
* _mixin.sass
* _variable.sass
* _grid.sass
* _media-queries.sass

### _normalize.scss

もう眠いので続きはまた今度書く


## License
[MIT License](https://github.com/ryonakae/kke/blob/master/README.md)

### Components

* Normalize.css: MIT license
* jQuery: MIT license
* jQuery Easing: BSD license
* jQuery Transit: MIT license
* Retina.js: MIT license
* Modernizr: MIT license
* CssUserAgent: MIT license
* html5shiv: MIT/GPL license
* Gulp.js: MIT license
* Sass: MIT license
* Compass: CC3.0
* CoffeeScript: MIT license


## Author

### RYO NAKAE

Web Designer in Kyoto, Japan.

* [Web](http://brdr.jp)
* [Twitter](https://twitter.com/ryo_dg)
* [JAYPEG](https://jypg.net/ryo_dg)
* [Dribbble](https://dribbble.com/ryo_dg)
* [GitHub](https://github.com/ryonakae)