

class Guest
@@all = []

attr_accessor :listing, :guest

def initialize(guest="Todd")
    @guest = guest

    @@all << guest
end


def guest
    @@all
end



end