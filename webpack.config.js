const path = require('path');

const config = {
  entry: './src/index.js',

  output: {
    path: path.join(__dirname, '/build'),
    filename: 'app.js',
    publicPath: '/',
  },

  devServer: {
    inline: true,
    hot: true,
    contentBase: 'public',
    stats: 'errors-only',
    historyApiFallback: true,
  },

  module: {
    loaders: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loaders: {
          loader: 'elm-webpack-loader',
          query: {
            verbose: true,
            warn: true,
            pathToMake: 'node_modules/.bin/elm-make',
          },
        },
      },
    ],
  },

  plugins: [],
};

module.exports = config;
