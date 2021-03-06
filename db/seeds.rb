Product.delete_all
Product.create!(title: 'Skinny Jeans',
  description: 
    %{<p>
        Do you wear really nice clothes yet not really have a job?  Then
  our Hipster Skinny Jeans are for you!  Works for hipster men or women,
  although dudes probably wear them more.
      </p>},
  image_url:   'skinnyjeans.jpg',    
  price: 96.00)
# . . .
Product.create!(title: 'Scarf     ',
  description: 
    %{<p>
        Do you know at least four different ways to tie a scarf?  
        Our Hipster scarves are for you.  Not just a fashion
        accessory, they literally protect your neck, and add that certain 
        je ne sais quoi when worn under a sportcoat or topcoat like a 
        mob boss, like Al Capone. 
      </p>},
  image_url:   'scarf.jpg',    
  price: 58.00)
# . . .
Product.create!(title: 'Glasses    ',
  description: 
    %{<p>
        We'll bet you love ironic eye-wear such as shutter shades, 
        over-sized plastic framed glasses, Buddy Holly glasses, and 
        most commonly authentic Ray Ban Wayfarers in all the colors 
        of the rainbow.  We'll bet you wear eyeglasses even though 
        you have 20/20 vision! That's why our lenses are just 
        regular glass.   
      </p>},
  image_url:   'glasses.jpg',    
  price: 97.00)
# . . .

Product.create!(title: 'Overpriced Bicycle ',
  description: 
    %{<p>
        Can't afford rent yet need to own a ridiculously expensive
        bike?  Sure you do.  For all the flash and zoot that 
        accompanies this high-profile Italian pairing, there's 
        something about the Pinarello Dogma 2/Campagnolo EPS Super 
        Record 11 Complete Road Bike that is stealth. It's a bike 
        that hides its bona fides in plain sight. It's a looker, with 
        sumptuous curves, a lustrous finish, and electronic shifting.   
      </p>},
  image_url:   'bike.jpg',    
  price: 10724.99)
# . . .

Product.create!(title: 'The Beanie  ',
  description: 
    %{<p>
        The slouchy beanie.  It could be 5 degrees or 96, it doesn't
        matter - that head needs to be kept warm.  The slouchy beanie
        seems to permanently affixed atop your head.  Who doesn't love 
        a good beanie?  For those that want to seem like the 'cool guy' 
        who just rolled out of bed and tossed on a hat but actually spent
        at least 10 minutes in front of a mirror getting that slouch 
        just right.   
      </p>},
  image_url:   'hat.jpg',    
  price: 44.57)
# . . .

PrivPolicy.delete_all
PrivPolicy.create!(store_name: 'MSE WDB Training Room',
   policy:
     %{You keep your privates to yourself, and we'll do the same.}
     )
# . . . 

TermsOfService.delete_all
TermsOfService.create!(store_name: 'MSE WDB Training Room',
   terms:
     %{You pay us a lot of money.  We send you hipster stuff.}
     )
# . . . 

AboutU.delete_all
AboutU.create!(store_name: 'MSE WDB Training Room',
   description:
     %{Here at the MSE Training Room location of Hipster Haven, 
       we love Hipsters.  Do you think you value independent thinking, 
       counter-culture, progressive politics, and have an appreciation 
       of art and indie-rock, creativity, intelligence, and witty 
       banter, while others find you pretentious, overly trendy or effete?
       Then buy our over-priced stuff !!!}
     )
# . . . 

ContactU.delete_all
ContactU.create!(store_name: 'MSE WDB Training Room',
   phone:
   %{856.291.2000},
   email:
   %{hipsterhaven@missionse.com},
   street:
   %{121 Whittendale Drive,},
   city:
   %{          Moorestown, },
   state:
   %{NJ },
   zip:
   %{08057} )
# . . . 

def User.digest(string)
  BCrypt::Password.create(string)
end

User.delete_all
User.create!(
  name: 'scott',
  password_digest: BCrypt::Password.create('seh123') )
  # . . . 
