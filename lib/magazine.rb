
class Magazine
  
    attr_accessor :name, :category
  
       @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def articles
      Article.all.select { |article| article.magazine == self }
    end
  
    def self.find_by_name(name)
      self.all.find do |article|
        article.name.include?(name)
      end
    end
  
    def article_titles
      # articles.map{|article| article.title}
      Article.all.map do |article|
        article.magazine == self.name
        article.title
      end
    end

    def contributors
      Articles.all.map do |author|
        author.magazine.name == self.name
        author.author
   end.uniq
  end

    def contributing_authors
      contributing_auth = Article.all.map do |author|
        author.magazine.name == self.name
            author.author
    end

    contributing_auth.tally.select do |key, value|
       value > 2
    end
end
    
  end
