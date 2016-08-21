class Job < ApplicationRecord

  belongs_to :employer_representative, dependent: :destroy

  def self.search(query)
  end

end
