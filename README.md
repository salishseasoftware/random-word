# RandomWord

Yet another random word generator

## RandomWordTool

A command line tool for Mac OS.

By default it uses the words in `/usr/share/dict/words`.  You can provide your own list of words as a text file with each word on a spearate line.

You can compose a string made of mutiple words by specifying a count, and optionally a custom separator to use.

The words can be transformed to UPPERCASE, lowercase, or Capitalized.

### Usage

```
USAGE: random-word [--file <file>] [--count <count>] [--separator <separator>] [--transformer <transformer>]

OPTIONS:
  -f, --file <file>       Path to words file. (default: /usr/share/dict/words)
  -c, --count <count>     Path to words file. (default: 1)
  -s, --separator <separator>
                          Separator to use when combining words. (default:  )
  -t, --transformer <transformer>
                          Output format [capitalize|uppercase|lowercase]
                          (default: none)
  -h, --help              Show help information.
```

### Installation

In Xcode:

1. Product > Archive
1. Distribute Content
1. Built Products
1. copy `random-word` executable to `/usr/local/bin/' or wherever you prefer.

## RandomWordKit

Swift package
