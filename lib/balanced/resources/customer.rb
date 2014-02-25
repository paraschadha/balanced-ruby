module Balanced
  # A customer represents a business or person within your Marketplace. A
  # customer can have many funding instruments such as cards and bank accounts
  # associated to them.
  #
  class Customer

    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:customers]

    # Attempts to find an existing customer by email
    #
    # *NOTE:* There is no unique constraint on email_address.
    #         Multiple customers with the same email may exist.
    #         Only one Customer is returned.
    #
    # @param [String] email An email of a customer
    # @return [Customer] if customer is found
    # @return [nil] if customer is not found
    def self.find_by_email email
      self.find(:first, :email => email)
    end

    def self.owner
      owner_customer = Balanced::Marketplace.mine.owner_customer
      owner_customer
    end

    def create_order(options = {})
      options[:href] = self.orders.href
      order = Balanced::Order.new(options)
      order.save
    end

    def deposit_account
      @_deposit_account ||= self.accounts.where(
          :account_type => Balanced::Account::DEPOSIT
      ).first
    end
    alias deposit_acct deposit_account

    def line_of_credit_account
      @_line_of_credit_account ||= self.accounts.where(
          :account_type => Balanced::Account::LINE_OF_CREDIT
      ).first
    end
    alias line_of_credit_acct line_of_credit_account

  end
end
