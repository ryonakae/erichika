# Eri

## A Cute and Clever HTML5 Template.

Eriは[かしこくてかわいい](http://d.pr/i/QMut)HTML5テンプレートです。


## Download

[こちら](https://github.com/ryonakae/eri/archive/master.zip)からダウンロードしてください。もしくは`git clone`でリポジトリをクローンしてください。

### git clone

    $ git clone https://github.com/ryonakae/eri.git


## Feature

* かしこくてかわいい、HTML5+CSS3テンプレート
* Sass(SASS) + CoffeeScriptで開発ができる
* Gulpでのブラウザ自動リロードや画像の圧縮に対応


## Gulp

Eriは[Gulp](http://gulpjs.com/)を使用して開発が可能です。

### Gulpで何やってるか
* ブラウザの自動リロード
* Sassのコンパイル + [Autoprefixer](https://github.com/ai/autoprefixer)でベンダープレフィックスを自動付与
* CoffeeScriptのコンパイル
* 画像ファイルの圧縮


## How to use KKE
### 1. Nodeのインストール
[node.js](http://nodejs.org/)を参照してnode.jsをインストールしてください。  
Homebrew経由でのインストールでも[オケオケオッケー](http://d.pr/i/58pd)

### 2. Gulpのインストール

    $ npm install --global gulp

時と場合によっては`$ sudo npm install --global gulp`だったりします

### 3. ディレクトリに移動

    $ cd eri
    
ダウンロードして解凍したり`git clone`したディレクトリのことです

### 4. Gulpプラグインをインストール

    $ npm install

### 5. Gulpの実行

    $ gulp

`http://localhost:3000/`というURLでブラウザの新規タブが開くので、あとはファイルを変更するたびにブラウザが自動で更新されます。


## Sass(SASS)

EriではCSSの拡張メタ言語にSass(SASS)を採用しています。

### ファイル構成

* _normalize.scss
* _mixin.sass
* _variable.sass
* _grid.sass
* _module.sass
* _media-queries.sass

### _normalize.scss

[normalize.css](http://necolas.github.io/normalize.css/)の拡張子を`.scss`に変更したものです。

### _mixin.sass

便利なmixinをまとめたものです。

| mixin名 | なにできるか |
|-----|-----|
| clearFix | clearfixする |
| textReplace | テキストを画像置換する<br>`text-indent: -9999px;`のやつじゃないのでSEO的にちょっとマシと思われます |
| inlineBlock | `display: inline-block;`を昔のIEにも対応させたもの |
| mediaquery-* | Media Queriesの設定 |
| animation | CSS3 Animationのextend |

#### CSS3 Animation

mixinじゃなくてextendですが、CSSアニメーションを簡単に実装できるextendも利用できます。

##### 呼び出すとき

    .btn
      @extend %animation

      &:hover
        opacity: 0.7
        
みたいに書くと、`.btn`にマウスオーバーした時に、アニメーションしながら透過します。

### _variable.sass

サイト全体の背景色や文字色など、共通して使える変数をまとめたものです。

### _grid.sass

簡単なグリッドシステムです。

#### Example

    <div class="l-container">
      <div class="l-row">
        <div class="l-grid-4">
          Grid 4
        </div>
        <div class="l-grid-4">
          Grid 4
        </div>
        <div class="l-grid-4">
          Grid 4
        </div>
      </div>
    </div>

### _module.sass

汎用性のあるクラスをまとめたものです。  
ボタンなど、共通で使いまわすパーツ(モジュール)はこのファイルに書くと良さそうです。

`.align-center`や`.mt10`のような汎用クラスを最初から用意しています。使用しない場合は無駄なので、削除やコメントアウトしつつお使いください。

### _media-queries.sass

Media Queriesをまとめて書けるファイルです。

* Retinaディスプレイ
* PC(大きい画面の場合)
* PC
* タブレット
* タブレット(小さい画面の場合)
* スマートフォン

以上の場合のスタイルを書くことができます。  
ブレークポイントなどを変更したい場合は、`_mixin.sass`にある`// Media Queries Settings`のmixinを修正してください。


## Image

Eriでは、Gulpの実行時に`img`ディレクトリを監視して、画像が追加されると`dist/img`ディレクトリに圧縮した画像を保存します。納品時には`img`ディレクトリではなく`dist/img`ディレクトリを代わりに用意したりすると良いと思います。  

### 対応拡張子

* jpg
* png
* gif


## License

[MIT License](https://github.com/ryonakae/eri/blob/master/LICENSE)

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
* CoffeeScript: MIT license


## Author

### RYO NAKAE

Web Designer in Kyoto, Japan.

* [Portfolio](http://brdr.jp)
* [Twitter](https://twitter.com/ryo_dg)
* [JAYPEG](https://jypg.net/ryo_dg)
* [Dribbble](https://dribbble.com/ryo_dg)
* [GitHub](https://github.com/ryonakae)


## Special Thanks

[Rin](https://github.com/sanographix/rin-html-template)

## Changelog

### 1.1.1 (2014-08-10)
* [名前変更](http://d.pr/i/Eq7v)
* `.sass`と`.scss`の両方を監視対象に

### 1.1.0 (2014-08-07)
* Compass使うのやめた
* SassのSourceMapに対応
* `config.rb`を削除
* `gulpfile.coffee`の修正
* `_module.sass`を修正
  * float系のクラスを削除
  * PCとSPで簡単に表示/非表示を切り替えられる`.pc`と`.sp`を追加
  * `.mt10`みたいな汎用クラスの、emだけではなくpx版を追加

### 1.0.2 (2014-08-05)
* `gulpfile.coffee`の修正
* `_module.sass`を追加
* Media Queriesのmixinの記述場所おかしいせいでコンパイルエラー出てたのを修正

### 1.0.1 (2014-08-02)
* head内の要素を整理
* `_media-queries.sass`にブレークポイント設定のmixinを移動

### 1.0.0 (2014-08-02)
* Initial Release