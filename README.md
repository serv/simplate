# Simplate

![](http://i.imgur.com/vJZuDoI.jpg)

Simplate generates a perfect directory structure
for a well organized Ruby app.

```
├── Gemfile
├── lib
│   ├── models
│   └── modules
└── spec
    ├── models
    ├── modules
    └── spec_helper.rb
```

Simplate uses [RSpec](http://rspec.info/) as the default test suite.

## Installation

Add this line to your application's Gemfile:

    gem 'simplate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simplate

## Usage

1. Install `simplate` gem.
2. Open Terminal
3. Go to the directory where you want to generate the *simplate*
boilerplate
4. Run `$ simplate some_app_name`

## Contributing

1. Fork it ( http://github.com/<my-github-username>/simplate/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
