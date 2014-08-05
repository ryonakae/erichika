# KKE

## A Cute and Clever HTML5 Template.

KKEは[かしこくてかわいい](http://d.pr/i/QMut)HTML5テンプレートです。


## Download

[こちら](https://github.com/ryonakae/kke/archive/master.zip)からダウンロードしてください。

### git clone

    $ git clone https://github.com/ryonakae/kke.git


## Feature

* かしこくてかわいい、HTML5テンプレート
* Sass(SASS) + Compass + CoffeeScriptで開発ができる
* Gulpでのブラウザ自動リロードやファイルのコンパイル、画像の圧縮に対応


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
Homebrew経由でのインストールでも[オケオケオッケー](http://d.pr/i/58pd)

### 2. Gulpのインストール

    $ npm install --global gulp

時と場合によっては`$ sudo npm install --global gulp`だったりします

### 3. ディレクトリに移動

    $ cd kke
    
ダウンロードして解凍したり`git clone`したディレクトリのことです

### 4. Gulpプラグインをインストール

    $ npm install

どうでもいいですけど`npm i`でも同じです

### 5. Gulpの実行

    $ gulp

`http://localhost:3000/`というURLでブラウザの新規タブが開くので、あとはファイルを変更するたびにブラウザが自動で更新されます。


## Sass(SASS) + Compass

KKEではCSSの拡張メタ言語にSass(SASS) + Compassを採用しています。

* SASS(.sass)だとmixin書くのが簡単すぎてついついmixin多用したくなるので(Compassはあらかじめ便利なmixinが沢山用意されています)
* CompassのURLヘルパーが便利すぎるので(`image-width`みたいなやつ)
* Compassはベンダープレフィックスが余計に付くのでアレという意見もあるけど、[Autoprefixer](https://github.com/ai/autoprefixer)使えばどうとでもなる

デメリットとしては、`gulp-compass`のせいか分かりませんけど、コンパイルにちょっと時間がかかることです

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

##### extend

    %animation
      +transition-duration(250ms)
      +transition-timing-function($ease)
      +transition-property(all)

##### 呼び出すとき

    .btn-example
      @extend %animation

      &:hover
        opacity: 0.7
        
みたいに書くと、`.btn-example`にマウスオーバーした時に、アニメーションしながら透過します。

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

| クラス名 | なにできるか |
|-----|-----|
| .align-center | テキストを中央寄せにする |
| .align-right | テキストを右寄せにする |
| .float-left | 要素を左にフロートさせる |
| .float-right | 要素を右にフロートさせる |
| .mt00em 〜 .mt100em | `margin-top: 0em` 〜 `margin-top: 10em`まで、0.5em刻みの20段階で適用 |
| .mb00em 〜 .mb100em | `margin-bottom: 0em` 〜 `margin-bottom: 10em`まで、0.5em刻みの20段階で適用 |
| .pt00em 〜 .pt100em | `padding-top: 0em` 〜 `padding-top: 10em`まで、0.5em刻みの20段階で適用 |
| .pb00em 〜 .pb100em | `padding-bottom: 0em` 〜 `padding-bottom: 10em`まで、0.5em刻みの20段階で適用 |

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

* [Portfolio](http://brdr.jp)
* [Twitter](https://twitter.com/ryo_dg)
* [JAYPEG](https://jypg.net/ryo_dg)
* [Dribbble](https://dribbble.com/ryo_dg)
* [GitHub](https://github.com/ryonakae)


## Changelog

### 1.0.2 (2014-08-05)
* `gulpfile.coffee`の修正
* `_module.sass`を追加
* Media Queriesのmixinの記述場所おかしいせいでコンパイルエラー出てたのを修正
* `README.md`を加筆修正

### 1.0.1 (2014-08-02)
* head内の要素を整理
* `_media-queries.sass`にブレークポイント設定のmixinを移動

### 1.0.0 (2014-08-02)
* Initial Release