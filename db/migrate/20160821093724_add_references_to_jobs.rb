class AddReferencesToJobs < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobs, :employer_representative, index: true
  end
end
