class CreateMTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :m_terms do |t|
      t.string :term
      t.string :meaning
      t.string :spelling
      t.bigint :shuffling, default: 0

      t.timestamps
    end
    add_index :m_terms, :term
    add_index :m_terms, :meaning
    add_index :m_terms, :spelling
    add_index :m_terms, :shuffling
  end
end