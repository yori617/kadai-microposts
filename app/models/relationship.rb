class Relationship < ApplicationRecord
  belongs_to :user
  belongs_to :follow, class_name: 'User'
  #存在しないFollowクラス参照を防止。Userクラスを参照。
end
