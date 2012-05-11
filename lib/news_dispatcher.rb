class NewsDispatcher

  class << self
    def get
      response = Curl::Easy.perform('http://news.ycombinator.com/')
      parse(response)
    end

    private

    def parse response
      document = Hpricot(response.body_str)
      elements = document.search("//td[@class='title']/a")
      elements.map do |element|
        hash = {
          title: element.inner_html,
          link: element.attributes["href"]
        }
      end
    end
  end
end
