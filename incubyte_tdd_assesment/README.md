# String Calculator TDD (Ruby + RSpec)

A clean, incremental implementation of the Incubyte String Calculator kata using strict TDD (Red 12 Green 12 Refactor). The repository demonstrates small, meaningful commits that reflect how the design evolves test-by-test.

## What this is

The goal is to implement a simple calculator function:

- Input: a string of numbers separated by delimiters
- Output: the sum as an integer

Supported rules:
- Empty string returns 0
- Single number returns that number
- Any number of comma-separated numbers
- Newlines can be used as delimiters in addition to commas (e.g., "1
2,3" 12 6)
- Custom single-character delimiter via header: 12<delimiter>
<numbers>" (e.g., 12;
1;2" 12 3)
- Negative numbers raise an exception listing all negatives: 12negative numbers not allowed -2,-4" (add a test when implementing this step)

This kata focuses on TDD discipline: write a failing test, make it pass with minimal code, and refactor safely.

## Tech stack

- ruby 3.1.2p20
- RSpec 3.13
- Bundler

## Project structure

```
.
├── Gemfile
├── string_calculator.rb
└── spec
    ├── spec_helper.rb
    └── string_calculator_spec.rb
```

## Getting started

1) Install dependencies
```bash
bundle install
```

2) Run the test suite
```bash
bundle exec rspec
```

## Tests (high level)

- Empty input returns 0
- Single number returns itself
- Two comma-separated numbers are summed
- Any count of comma-separated numbers is summed
- Newlines also work as delimiters
- Custom delimiter via 12//<delim>
"
- Negative numbers raise with all negatives in the message (add once implementing)

## Design notes

- Simplicity first: a single split-map-sum pipeline.
- Regex.escape ensures custom delimiter characters are treated literally.
- Early returns keep the happy path clear.
- Negative number handling (when added) performs validation before summing.

## How to run locally

```bash
# Install dependencies
bundle install

# Run tests
bundle exec rspec

# Lint (optional if rubocop is added)
# bundle exec rubocop
```
