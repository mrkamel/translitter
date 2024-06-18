# Translitter

Simple transliteration of special characters.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add translitter

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install translitter

## Usage

Using translitter is super easy. For german you'd e.g. do:

```ruby
translitter = Translitter.new(
  default_rules: true,
  custom_rules: { 'Ä' => 'Ae', 'Ö' => 'Oe', 'Ü' => 'Ue', 'ä' => 'ae', 'ö' => 'oe', 'ü' => 'ue', 'ß' => 'ss' },
  replacement: "?"
)

translitter.transliterate("Äpfél 🍎") #=> "Aepfel ?"
```

The default rules are taken from `i18n-ruby`. If you pass `nil` as
`replacement`, special characters will be kept in the result.

```ruby
translitter.transliterate("Äpfél 🍎", replacement: nil) #=> "Aepfel 🍎"
```

## Development

After checking out the repo, run `bundle` to install dependencies. Then, run
`bundle exec rspec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and the created tag, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/[USERNAME]/translitter. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to
adhere to the [code of
conduct](https://github.com/mrkamel/translitter/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Translitter project's codebases, issue trackers,
chat rooms and mailing lists is expected to follow the
[code of conduct](https://github.com/mrkamel/translitter/blob/main/CODE_OF_CONDUCT.md).
