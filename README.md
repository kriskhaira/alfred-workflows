# alfred-workflows

Repository for my Alfred workflows. Currently only one:

## Pivotal Tracker ID Scrubber

This workflow finds the Pivotal Tracker story ID in any text and copies it to clipboard. The code for this is very simple.

``` ruby
require 'uri'

text = ARGV[0]
uri = URI.parse URI.extract(text)[0]
id = uri.path.split('/')[3]

puts "##{id}"
```

Check out the workflow itself to see how everything's used together.

### Installing

Double-click on the Workflow.

### Requirements

* Ruby

### Using

1. Select any text in any app at least one URL
2. Press Ctrl-Opt-Cmd-P

### Why I made this

I got annoyed at having to manually select the story ID in a Pivotal Tracker email notification because I didn't want to deal with so many open Pivotal Tracker tabs.

The alternative was to use Pivotal Tracker's in-app notifications in the menu bar but I hated that they don't have an Archive feature. I prefer email because I can snooze, etc.