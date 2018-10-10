class CreateAugmentationElements < ActiveRecord::Migration[5.1]
  def change
    create_table :augmentation_elements do |t|
      t.string :url
      t.string :urlCompareType
      t.string :template
      t.string :h0xpath
      t.string :h0pattern
      t.string :h1xpath
      t.string :h1pattern
      t.string :h2xpath
      t.string :h2pattern
      t.string :n0xpath
      t.string :n0pattern
      t.string :m0xpath
      t.string :m0pattern
      t.string :m1xpath
      t.string :m1pattern
      t.string :m2xpath
      t.string :m2pattern
      t.string :f0xpath
      t.string :f0pattern
      t.string :f1xpath
      t.string :f1pattern
      t.string :f2xpath
      t.string :f2pattern

      t.timestamps
    end
  end
end
