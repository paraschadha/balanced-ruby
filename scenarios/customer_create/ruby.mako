% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

customer = Balanced::Customer.new(
  :dob_month => 7,
  :name => 'Henry Ford',
  :address => {
    :postal_code => '48120'
  },
  :dob_year => 1963
)
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x101f20010
 @attributes=
  {"merchant_status"=>"underwritten",
   "phone"=>nil,
   "meta"=>{},
   "dob_month"=>7,
   "business_name"=>nil,
   "links"=>{"source"=>nil, "destination"=>nil},
   "created_at"=>"2014-01-16T20:01:39.317071Z",
   "id"=>"CU5yzA5nhWv5Ljlr1ZEaYia",
   "email"=>nil,
   "name"=>"Henry Ford",
   "address"=>
    {"city"=>nil,
     "state"=>nil,
     "postal_code"=>"48120",
     "line2"=>nil,
     "line1"=>nil,
     "country_code"=>nil},
   "updated_at"=>"2014-01-16T20:01:40.130625Z",
   "ein"=>nil,
   "ssn_last4"=>nil,
   "href"=>"/customers/CU5yzA5nhWv5Ljlr1ZEaYia",
   "dob_year"=>1963},
 @hyperlinks=
  {"source"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "orders"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "transactions"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "cards"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "bank_accounts"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
