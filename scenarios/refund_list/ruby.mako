% if mode == 'definition':
Balanced::Refund.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

refunds = Balanced::Refund.all
% elif mode == 'response':
[#<Balanced::Refund:0x007fb60b34af58
  @attributes=
   {"amount"=>3000,
    "created_at"=>"2014-04-25T22:01:00.249873Z",
    "currency"=>"USD",
    "description"=>"Refund for Order #1111",
    "href"=>"/refunds/RFFFulVVpBiNWpJ2VLMto1L",
    "id"=>"RFFFulVVpBiNWpJ2VLMto1L",
    "links"=>
     {"debit"=>"WDEg9ofx83CeAhiwI1QmA17", "dispute"=>nil, "order"=>nil},
    "meta"=>
     {"fulfillment.item.condition"=>"OK",
      "merchant.feedback"=>"positive",
      "user.refund_reason"=>"not happy with product"},
    "status"=>"succeeded",
    "transaction_number"=>"RF718-148-9846",
    "updated_at"=>"2014-04-25T22:01:00.697054Z"},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x007fb60b347e98/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fb60b347448/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fb60b344978/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fb60b343f28/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
