[![Gem Version](https://badge.fury.io/rb/action_prefixer.svg)](http://badge.fury.io/rb/action_prefixer)
[![Build Status](https://travis-ci.org/sinsoku/action_prefixer.svg?branch=master)](https://travis-ci.org/sinsoku/action_prefixer)

# ActionPrefixer

It appends a path to searching partial views.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'action_prefixer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install action_prefixer

## Usage

I’ve seen this:

```
app/views/users/_header.html.erb
app/views/users/_footer.html.erb
app/views/users/_blog.html.erb
app/views/users/_tag.html.erb
...(too long)
```

ActionPrefixer provides a path for partial views.

```
app/views/users/_header.html.erb
app/views/users/_footer.html.erb
app/views/users/index/_blog.html.erb
app/views/users/show/_tag.html.erb
```

Also, invoking the partials is simpler than this approach. Instead of:

```erb
<%= render 'users/index/blog' %>
```

This is possible:

```erb
<%= render 'blog' %>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/action_prefixer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
