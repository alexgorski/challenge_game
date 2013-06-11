task :populate_rivals2 => :environment do
  guys = ["CT", "Wes", "Jordan", "Marlon", "Ty", "Leroy", "Knight", "Preston", "Zach", "Trey", "Dunbar", "Tyrie", "Frank", "Johnny", "Derek", "Robb"]
  ladies = ["Paula", "Emily", "Sarah", "Trishelle", "Nany", "Jonna", "Cooke", "Naomi", "Camila", "Jemmye", "Anastasia", "Jessica", "Diem", "Aneesa", "Jasmine", "Theresa"]

  @season = Season.new(:title => "Rivals2")
    guys.each do |g|
      player = Player.new(:name => g, :season_id => 1)
      player.save
    end
    ladies.each do |l|
      player = Player.new(:name => l, :season_id => 1)
      player.save
    end
end