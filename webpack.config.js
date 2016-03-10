'use strict';

var webpack = require('webpack');
var autoprefixer = require('autoprefixer');
var path = require('path');

var prodPlugins = [
  new webpack.HotModuleReplacementPlugin(),
  new webpack.optimize.UglifyJsPlugin()
];

module.exports = {

  context: path.join(__dirname, 'src'),

  entry: [
    'webpack/hot/only-dev-server',
    './index.html',
    './main.js'
  ],

  output: {
    path: path.join(__dirname, 'dist'),
    filename: 'bundle.js'
  },

  module: {
    loaders: [
      {test: /\.html$/, loader: 'file?name=[name].[ext]'},
      {test: /\.scss$/, loader: 'style-loader!css-loader!postcss-loader!sass-loader'}
    ]
  },

  plugins: process.env.NODE_ENV === 'production' ? prodPlugins : [],

  sassLoader: {
    includePaths: [path.join(__dirname, 'src', 'styles')]
  },

  postcss: function() {
    return [autoprefixer];
  }

};