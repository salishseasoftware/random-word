# random-word

Yet another random word generator

## Command Line Tool

A command line tool for Mac OS.

By default it uses the words in `/usr/share/dict/words`.  You can provide your own list of words as a text file with each word on a separate line.

You can compose a string made of multiple words by specifying a count, and optionally a custom separator to use.

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

#### Example

Default options

```
$ random-word
macrodont
```
Three words, uppercased, joined with a hyphen.

```
$ random-word -c 3 -t uppercase -s -
UNDERCOMMENT-DUNGHILLY-TRAMAL
```

### Installation


#### With [`Mint`](https://github.com/yonaskolb/Mint)

```sh
$ mint install salishseasoftware/random-word
```


#### Manually

Clone the repo then:

```
$ make install
```

Or using swift itself:

```
$ swift build -c release
$ cp .build/release/random-word /usr/local/bin/random-word
```

#### With Xcode

Generate the Xcode project:

```
$ swift package generate-xcodeproj
$ open ./random-word.xcodeproj
```

In Xcode:

1. Product > Archive
1. Distribute Content
1. Built Products
1. copy `random-word` executable to `/usr/local/bin/` or wherever you prefer.


## RandomWordKit

Swift package
