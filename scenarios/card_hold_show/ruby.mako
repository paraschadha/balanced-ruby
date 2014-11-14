% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card_hold = Balanced::CardHold.fetch('/card_holds/HL2F8jlnySjVKidwfXgBYZMY')

% elif mode == 'response':
#<Balanced::CardHold:0x007fa0e1b1d170
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-11-14T19:28:32.378595Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-11-21T19:28:32.843418Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL2F8jlnySjVKidwfXgBYZMY",
   "id"=>"HL2F8jlnySjVKidwfXgBYZMY",
   "links"=>{"card"=>"CC2E1bHjwNbYtzUcTAmH4kEM", "debit"=>nil, "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL0SV-779-FT23",
   "updated_at"=>"2014-11-14T19:28:32.934510Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa0e1b21ef0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa0e1b20fc8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa0e1b25c30@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e1ada6b8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e1ad9948@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
