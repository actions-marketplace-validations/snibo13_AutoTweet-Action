const core = require('@actions/core');
const github = require('@actions/github');
const twitter = require('twitter');


const client = new Twitter({
  consumer_key: process.env.TWITTER_CONSUMER_KEY,
  consumer_secret: process.env.TWITTER_CONSUMER_SECRET,
  access_token_key: process.env.TWITTER_ACCESS_TOEN_KEY,
  access_token_secret: process.env.TWITTER_ACESSS_TOKEN_SECRET
});

var message = "Pushed for the day #100DaysOfCode";

client.post('statuses/update',{status: message}, function(error, tweet, response) {
  if(error) throw error;
}
