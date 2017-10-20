# Photonmodoro-sinatra

A simple sinatra app that captures webhooks
sent to us from the particle cloud, and forwards
them to slack to allow slack to know if you're 
heads down in Pomodoro or not. 

## Installation

Push to Heroku

## To Use yourself

Ask Cullen or Debbie to get added to the 
Photonmodoro Slack app so you can get yourself
an OAuth token.  Then, add your OAuth token to
the environment on heroku under your UPPERCASED
username (to match with environment var names).

To set yourself to away or available, post to 
/name/:your_slack_name/away or 
/name/:your_slack_name/available to pull your 
oauth token from the environment and post your
status to slack.