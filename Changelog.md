### 0.0.4 / 2014-04-24

[full changelog](http://github.com/rspec/rspec-collection_matchers/compare/v0.0.3...v0.0.4)

Enhancements:

* Add Rails extension `have(n).errors_on(:whatever)` (Bradley Schaefer)

### 0.0.3 / 2014-02-16

[full changelog](http://github.com/rspec/rspec-collection_matchers/compare/v0.0.2...v0.0.3)

Enhancements:

* Update to latest RSpec 3 matcher API. (Myron Marston)

Bug Fixes:

* Raise an error when you attempt to use matcher against an `Integer`
  which previously would have incorrectly used a `#size` of 8. (Kassio Borges)
