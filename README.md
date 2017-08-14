# PUBLICLIST

PUBLICLIST is the source code of [mnmlist.io](https://www.mnmlist.io).
It allows you to connect your [Wunderlist](https://www.wunderlist.com) and share some of your list.
It will generate a public link you can send to anyone (even if they are not Wunderlist users).
As I'm using Wunderlist as a note taking app, it's a convenient way to share your thoughts and lists to others.

Wunderlist already has a share feature, but only between Wunderlist users. No public sharing feature (there used to be one, but it got deprecated and eventually they got rid of it).

## Ruby Version
Ruby 2.4.1

## Database
PostgreSQL 9

When you clone the repo, you'll need to run the following commands in your terminal:
```
bundle install
rails db:create db:migrate
```

## Tests
No tests for the moment... (yes, I know, I should take time to add some tests...)

## Wunderlist API Credentials
In order to run this app on your environment, you'll need to create your own app in the Wunderlist API dashboard.
[here](https://developer.wunderlist.com/)
Once you've created the app, get the credentials, and add them to your `application.yml`, such as:
```
WUNDERLIST_ID: <your_wunderlist_app_id>
WUNDERLIST_SECRET: <your_wunderlist_app_secret>
```

Make sure the `application.yml` is listed in `.gitignore` file.
You might need to run the following command to set up the figero install: `bundle exec figaro install`
If you're not sure, please follow the `figaro` gem instructions: [figaro gem](https://github.com/laserlemon/figaro)
