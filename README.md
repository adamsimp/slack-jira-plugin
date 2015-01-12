# Slack JIRA Plugin

JIRA integration with [slack](http://slack.com).  

It does the following:

1. Automatically append a link to a message whenever there is a mention of a JIRA issue in the message

## Usage

```javascript
git clone https://github.com/gsingers/slack-jira-plugin.git
cd slack-jira-plugin
npm install
```

Write your own configuration file (`config-example.js`) is a good starting point for building your own.

```javascript
var slackbot = require('./lib/bot');

var config = {

    token: 'XXXX-XXXXXXXXXX-XXXXXXXXXX-XXXXXXXXXX-XXXXXX',
    jira_urls: {
      "APACHE": "https://issues.apache.org/jira/browse/",
      "REPLACE": "https://my.path.to.jira/browse/"
    },
    pattern: /((REPLACE_ME))-\d+/g,

};

//DO NOT EDIT
var slackbot = new slackbot.Bot(config);
slackbot.run();

```

Save this to a file in the root of the project then run your bot with:

    node your-config-file, eg.: node config-gsingers

This will launch the bot in your terminal based on provided configuration.

## Configuration

- `token`: Your Slack API token, get your token at https://api.slack.com/
- `jira_urls`: A mapping of JIRA project names to the URL that can display that JIRA issue, i.e. SOLR -> https://issues.apache.org/jira/browse/
- `pattern`: A JS Regexp that can identify JIRA issues in text, e.g. /(SOLR)-\d+/g

## TODO:

Deeper integration w/ the JIRA API