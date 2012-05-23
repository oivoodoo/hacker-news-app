# Hacker News Service

You can use this service for getting news from the website
"http://news.ycombinator.com" into your third party applications like widgets
for android desktop or widgets mac dashboard.

## Usage

```javascript

  $.get("http://hacker-news-app.heroku.com/news", function(list) {
    for(var i = 0 ; i < list.length; i++) {
      var item = list[i];
      console.log(item.title);
      console.log(item.link);
    }
  });
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
