class Gossip

  def initialize(author_to_save, content_to_save)
    @author = author_to_save
    @content = content_to_save

  def save
    require 'csv'
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end
end
end