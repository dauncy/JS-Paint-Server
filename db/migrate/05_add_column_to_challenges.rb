class AddColumnToChallenges < ActiveRecord::Migration[6.0]

    def change 
        add_column :challenges, :song_src, :string
    end 
end 