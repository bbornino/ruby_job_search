class AddLastVisited2ToJobSites < ActiveRecord::Migration[7.0]
  def change
    add_column :job_sites, :last_visited_at, :datetime
  end
end
