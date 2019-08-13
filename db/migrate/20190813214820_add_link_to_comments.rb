class AddLinkToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :link, foreign_key: true
  end
end
