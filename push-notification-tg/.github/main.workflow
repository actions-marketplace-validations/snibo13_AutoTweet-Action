workflow "Tweet on commit" {
  on = "commit"
  resolves = ["Tweet"]
}

action = "Tweet" {
  uses = "./"
  secrets = ["TWITTER_CONSUMER_KEY", "TWITTER_CONSUMER_SECRET", "TWITTER_ACCESS_TOKEN", "TWITTER_ACCESS_SECRET"]
}
