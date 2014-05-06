% if mode == 'definition':
Balanced::Order.credit_to

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

order = Balanced::Order.fetch('/orders/OR5QcYnwysJXQswImokq6ZSx')
bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA5KLH6jhFgtVENHXOcF3Cfj/credits')
order.credit_to(
    :source => bank_account,
    :amount => 5000
)
% elif mode == 'response':
#<Balanced::Credit:0x007fd2043dbc78
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-05-05T16:53:39.219476Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR6hFW7Z5Rx79OVfB22BJLjr",
   "id"=>"CR6hFW7Z5Rx79OVfB22BJLjr",
   "links"=>
    {"customer"=>"CU5KEQ3tk6RIfIgRg3x5ZQ1L",
     "destination"=>"BA5KLH6jhFgtVENHXOcF3Cfj",
     "order"=>"OR5QcYnwysJXQswImokq6ZSx"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR401-971-8594",
   "updated_at"=>"2014-05-05T16:53:39.441985Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fd2043d9860/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fd2043d7ad8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fd2043d4928/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fd2043d1ea8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "reversals"=>
    #<Proc:0x007fd2043cf5b8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
