# terminal-table-unicode

[tj/terminal-table](https://github.com/tj/terminal-table) is a great rubygems. But it has a probrem that can deal with [full-width unicode characters](https://en.wikipedia.org/wiki/Halfwidth_and_fullwidth_forms#Fullwidth_form). terminal-table-unicode solved that.
I referred to [miaout17/hirb-unicode](https://github.com/miaout17/hirb-unicode).  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'terminal-table-unicode'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install terminal-table-unicode

## Usage

```ruby
require 'terminal-table-unicode'
rows = []
rows << ['One', 1]
rows << ['Two', 2]
rows << ['Three', 3]
rows << ['よん', 4]
table = Terminal::Table.new :rows => rows
puts table
```

```ruby
+-------+---+
| One   | 1 |
| Two   | 2 |
| Three | 3 |
| よん  | 4 |
+-------+---+
```

You can use with other options.   
see more: [tj/terminal-table](https://github.com/tj/terminal-table)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/terminal-table-unicode.
