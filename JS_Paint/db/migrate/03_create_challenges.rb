class CreateChallenges <cActiveRecord::Migration[6.0]
    def change
        create_table :challenges do |t|
          t.string :name
          t.string :description
          t.string :img_src
    
          
        end
      end
    end