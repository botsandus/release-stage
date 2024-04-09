# Release Stage

A `Rails.env`-like utility for identifying the current stage of a release.

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

    $ bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG

## Usage

Set the environment variable `RELEASE_STAGE` to the name of the current stage. The default stage is `development`.

The gem expects one of `development`, `review`, `staging`, or `production`.

### Getting the current release stage

Returns an `ActiveSupport::StringInquirer` with the current release stage.

```ruby
ReleaseStage.current
=> "development"
```

### Checking the current release stage

```ruby
ReleaseStage.development?
=> true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/botsandus/release-stage. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/botsandus/release-stage/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [Apache 2.0 licence](https://www.apache.org/licenses/LICENSE-2.0).

## Code of Conduct

Everyone interacting in the ReleaseStage project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/botsandus/release-stage/blob/main/CODE_OF_CONDUCT.md).
