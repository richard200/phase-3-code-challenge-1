

class Author 
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @articles = []
        @@all << self
    end

    def self.all
      @@all

    end

   def articles
    # Article.all.filter{|article| article.author == @name}
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    # articles.map{|article| article.magazine}.uniq
    self.articles.filter do |article|
      article.magazine.uniq
    end

  end

  def add_article(magazine, title)
   Article.new(self, magazine, title)
    # @articles << article
    #  article
  end

  def topic_areas
    # magazines.map{|magazine| magazine.category}.uniq
    self.magazines.map do |magazine|
      magazine.category.uniq
    end
  end

end


  

