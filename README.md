# Rubocop - Enforce PostgreSQL Cursor usage

Enforces the use of `each_instance` over `find_each`, so that all batching is done with [the postgresql_cursor gem](https://github.com/afair/postgresql_cursor).

Supports auto-correct!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-postgresql_cursor'
```

And then execute:

    $ bundle

Add the following line to `rubocop.yml`:

```
require:
 - rubocop-postgresql_cursor
```

## Contributing

1. Fork it ( https://github.com/tijmenb/rubocop-postgres_cursor/fork )
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create a new Pull Request
