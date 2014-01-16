% if mode == 'definition':
Balanced::CardHold.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card_hold = Balanced::CardHold.find('/card_holds/HL736xeYybSdGDib5WhKC4da')

% elif mode == 'response':
#<Balanced::CardHold:0x101f9c868
 @attributes=
  {"meta"=>{},
   "currency"=>"USD",
   "links"=>{"debit"=>nil, "card"=>"CC728b2nP8zS2QDI8lIIXcFk"},
   "failure_reason_code"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-16T20:00:53.510680Z",
   "id"=>"HL736xeYybSdGDib5WhKC4da",
   "expires_at"=>"2014-01-23T20:00:53.690787Z",
   "amount"=>5000,
   "failure_reason"=>nil,
   "transaction_number"=>"HL593-657-2348",
   "updated_at"=>"2014-01-16T20:00:55.167421Z",
   "href"=>"/card_holds/HL736xeYybSdGDib5WhKC4da"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>

% endif
