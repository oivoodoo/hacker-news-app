; (function($) {

  $(function() {
    $.get("http://hacker-news-app.heroku.com/news", function(list) {
      var container = $('#news');
      for(var i = 0 ; i < list.length; i++) {
        var item = list[i];
        container.append($("<li>").append(
          $("<a>").attr("href", item.link).html(item.title))
        );
      }
      $('.loading').remove();
      container.fadeIn();
    });
  });

})(jQuery);
