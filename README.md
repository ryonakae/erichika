# Erichika

## A Cute and Clever HTML5 & CSS3 Template.

[かしこくてかわいい](http://cl.ly/image/3F1j3r0u1I00)、HTML5 & CSS3テンプレート


## Feature

* (かしこくてかわいい)HTML5+CSS3テンプレート
* Slim + Sass(SASS) + CoffeeScript
* Sassは[Bourbon](http://bourbon.io/) & [Neat](http://neat.bourbon.io/)の使用を前提とした構成
* Gulpでの自動リロードやコンパイル、画像の圧縮に対応


## Require

* Node.js
  - Gulp
* Ruby
  - Bundler

## Set Up
### 1. Download

    $ git clone https://github.com/ryonakae/erichika.git

### 2. Install Node Modules

	$ npm install

### 3. Install RubyGems with Bundler

	$ bundle install --path vendor/bundle

### 4. Run Gulp

	$ gulp


## License

[MIT License](https://github.com/ryonakae/erichika/blob/master/LICENSE)

### Components

* Gulp.js: MIT license
* Slim: MIT license
* Sass: MIT license
* Bourbon: MIT license
* Neat: MIT license
* CoffeeScript: MIT license
* Normalize.css: MIT license
* jQuery: MIT license
* Modernizr: MIT license
* CssUserAgent: MIT license
* html5shiv: MIT/GPL license


## Author

### RYO NAKAE

Web Designer in Kyoto, Japan.

* [Portfolio](http://brdr.jp)
* [Twitter](https://twitter.com/ryo_dg)
* [JAYPEG](https://jypg.net/ryo_dg)
* [Dribbble](https://dribbble.com/ryo_dg)
* [GitHub](https://github.com/ryonakae)


## Special Thanks

* [Rin](https://github.com/sanographix/rin-html-template)
* [gulp-template](https://github.com/310u8/gulp-template)


## Changelog
### 2.0 (2015-01-20)
* 大幅な構成の見直し
* Slim対応
* Bourbon & Neat使うようにした
* Bundler対応
* gulpfile書き直し

### 1.1.2 (2014-08-16)
* 名前変更
* `index.html`から不要なコードを削除
* `script.coffee`から不要なコードを削除
* `_module.sass`に`.clearfix`を追加
* サンプル画像を削除

### 1.1.1 (2014-08-10)
* 名前変更
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