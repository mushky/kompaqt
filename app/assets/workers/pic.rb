class NewPic
  @queue = :pic_queue
  def self.perform(pic)
  	pic = Pic.find(pic.id)
  end
end