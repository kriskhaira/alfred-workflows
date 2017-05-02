# alfred-workflows

Repository for my Alfred workflows. Currently only one:

### Why I made this

Pivotal Tracker's in-app notifications bar doesn't have an Archive button. This makes email better because I can archive and even snooze.

Since I use email instead of the notifcations bar, I use the in-app search a lot to look for a specific issue by searching for its ID e.g. `#12345678`. Each Pivotal Tracker notification email contains a permalink URL to the issue but it's very frustrating that in order to get just the ID itself, I have to manually paste the URL somewhere and trim away everything except the ID. I have better things to do with my time.

I could just click on the URL in the notification emails but I'd end up with multiple browser tabs for Pivotal Tracker. Also, sometimes I want to expand two issues in the same tab at the same time.

This is why I wrote this solution. As a bonus, it works in any app including Slack.

## Pivotal Tracker ID Scrubber

This workflow finds the Pivotal Tracker story ID in any selected text and copies it to clipboard. The code for this is very simple.

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

1. Select any blob of text in any app with at least one URL
2. Press Ctrl-Opt-Cmd-P

The story ID will be copied to your clipboard, prepended with a `#`.
