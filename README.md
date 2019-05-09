# GFW Assets

[![Build Status](https://travis-ci.org/Vizzuality/gfw-assets.svg?branch=master)](https://travis-ci.org/Vizzuality/gfw-assets)

This repo provides the navigation bar shared by all Global Forest Watch
websites, such as GFW, GFW Fires, Commodities, etc.

![Navbar in action](src/images/preview.png?raw=true)

## Installation

Requirements:

* NodeJs 5.2+ [How to install](https://nodejs.org/download/)
* Ruby 2+ [How to install](https://gorails.com/setup/osx/10.10-yosemite)

Install project dependencies:

	npm install
	bundle install // This install SASS in your computer, check Gemfile

## Usage (development)

The up-to-date branch for this repository is `develop`.

To see in development mode run and follow terminal instructions:

	npm start

We are using webpack to build the assets, to run it:

	npm build

To sync CDN with compiled version please run:

	npm publish

## How to use (in sites)

Add this piece of HTML in your site to add GFW's header:

	<div id="headerGfw"></div>

And this to add GFW's footer:

	<div id="footerGfw"></div>

To finish, add this script in your site:

	<script id="loader-gfw" data-current=".shape-fires" src="https://[cdn-url]/gfw-assets.latest.js"></script>
	<script type="text/javascript">
	window.liveSettings = {
		picker: '#transifexTranslateElement',
		api_key: "9eda410a7db74687ba40771c56abd357",
		detectlang: false,
		page: 'map' //or empty if you are not on map page
		site: 'gfw-watcher', // site
		ribbon: 'How to', // show bottom right ribbon text
		menuOptions: //options for the menu
		{
			options: [
				{
					title: 'logo', // important
					url: ''
				},
				{
					title: 'map',
					url: '#',
				},
				{
					title: 'countries',
					url: '/countries',
				},
				{
					title: 'blog',
					url: 'http://blog.globalforestwatch.org/',
				},
				{
					title: 'about',
					url: '/about',
				},
			],
		},
	};
	</script>

Remember to add the `id="loader-gfw"` to the script tag and, if you want to highlight any of the links of the header you will have to add a `data-current` param.
These are the `data-current` params that work:

- .shape-home
- .shape-apps
- .shape-map
- .shape-countries
- .shape-fires
- .shape-commodities
- .shape-climate
- .shape-odp
- .shape-develop
- .shape-all-apps
- .shape-blog
- .shape-howto
- .shape-mygfw

If you use the latest.js, any change we make on the script will be inmediately populated on your page. Don't worry, we have tests and we will check it in your page before deploy. We would recommend to use the latest script always, but just in case the script is breaking your page you can specify a version:

	<script id="loader-gfw" data-current=".shape-fires" src="https://[cdn-url]/gfw-assets.v0.1.0.js"></script>

Here you can find the allowed versions: [Releases](https://github.com/Vizzuality/gfw-assets/releases)


The `cdn-url` in development will be the webpack dev server, which is
mounted on http://localhost:9090

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b feature/my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin feature/my-new-feature`
5. Submit a pull request :D
