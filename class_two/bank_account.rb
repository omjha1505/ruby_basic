class BankAccount
  def initialize
    @amount = 5000
  end

  def status
      "your bank account has a total of #{amount} dollars"
  end

private
def amount
  @amount / 100
end

end

ba = BankAccount.new
p ba.status          #here actually method amount is getting called
#Its better to call instance methods insite of instance variables