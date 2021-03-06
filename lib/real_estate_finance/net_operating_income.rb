module RealEstateFinance
  class NetOperatingIncome

    attr_reader :monthly_income, :vacancies, :non_payments, :taxes, :mortgage_interest, :marketing, :advertising, :management, :legal, :accounting, :utilities, :repairs, :maintenance, :acquisition, :sale_costs

    def initialize(monthly_income, vacancies, non_payments, taxes, mortgage_interest, marketing, advertising, management, legal, accounting, utilities, repairs, maintenance, acquisition, sale_costs)
      @monthly_income = monthly_income
      @vacancies = vacancies
      @non_payments = non_payments
      @taxes = taxes
      @mortgage_interest = mortgage_interest
      @marketing = marketing
      @advertising = advertising
      @management = management
      @legal = legal
      @accounting = accounting
      @utilities = utilities
      @repairs = repairs
      @maintenance = maintenance
      @acquisition = acquisition
      @sale_costs = sale_costs
    end

    def net_operating_income
      gpi = sprintf("%0.02f", (@monthly_income * 12)).to_f
      credit_losses = [@vacancies, @non_payments, @taxes, @mortgage_interest, @marketing, @advertising, @management, @legal, @accounting, @utilities, @repairs, @maintenance, @acquisition, @sale_costs]
      total_expenses = credit_losses.reduce(:+)
      expenses = sprintf("%0.02f", total_expenses).to_f
      noi = gpi - expenses
    end

  end
end
