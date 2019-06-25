require 'mini_magick'
require 'catpix'

module NetPix
  class Print_Pix

    def self.pic_from_link(linky)
      image = MiniMagick::Image.open(linky)
      Catpix::print_image image.path
    end
    
  end
end    

NetPix::Print_Pix.pic_from_link('https://i.imgur.com/VsxYwz0.jpg')