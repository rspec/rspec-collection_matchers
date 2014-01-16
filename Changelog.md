### Development
[full changelog](http://github.com/rspec/rspec-collection_matchers/compare/v0.0.2...master)

Bug Fixes:

* Raise an error when you attempt to use matcher against an `Integer`
  which previously would have incorrectly used a `#size` of 8. (Kassio Borges)
