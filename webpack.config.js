'use strict';

const webpack = require('webpack');
const autoprefixer = require('autoprefixer');
const path = require('path');
const SpritesmithPlugin = require('webpack-spritesmith');
process.env.BROWSERSLIST_CONFIG = 'browserslist';

module.exports = {

  context: path.join(__dirname, 'src'),

  entry: [
    'webpack/hot/only-dev-server',
    'babel-polyfill',
    './index.html',
    './main.js'
  ],

  output: {
    path: path.join(__dirname, 'dist'),
    filename: 'gfw-assets.dev.js'
  },

  module: {
    loaders: [
      {test: /\.js$/, exclude: /node_modules/, loader: 'babel-loader'},
      {test: /\.json$/, loader: 'json'},
      {test: /\.html$/, loader: 'file?name=[name].[ext]'},
      {test: /\.tpl$/, loader: 'ejs-loader'},
      {test: /\.scss$/, loader: 'style-loader!css-loader!postcss-loader!sass-loader'},
      {test: /\.css$/, loader: 'style!raw'},
      {test: /\.(eot|ttf|woff2|woff)$/, loader: 'url-loader?prefix=fonts/&context=./src/fonts'},
      {test: /\.png$/, loaders: ['file?name=i/[hash].[ext]']}
    ]
  },

  plugins: [
    new SpritesmithPlugin({
      src: {
        cwd: path.resolve(__dirname, 'src/images/logos'),
        glob: '*.png'
      },
      target: {
        image: path.resolve(__dirname, 'src/images/sprites/logos-sprite.png'),
        css: path.resolve(__dirname, 'src/styles/modules/logos-sprite.scss')
      },
      apiOptions: {
        cssImageRef: "https://cdn.rawgit.com/Vizzuality/gfw-assets/8920086e74081204670fc437e81d16a67ccd7746/src/images/sprites/logos-sprite.png"
      }
    })
  ],

  sassLoader: {
    includePaths: [path.join(__dirname, 'src', 'styles')]
  },

  postcss: function() {
    return [autoprefixer];
  }

};
