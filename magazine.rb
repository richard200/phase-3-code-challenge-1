class Magazine
    attr_accessor :name, :category

    @@all_magazines = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all_magazines << self
    end

    def magazine_name
        @name
    end

    def magazine_category
        @category
    end

    def magazine_all
        @@all_magazines
    end
end