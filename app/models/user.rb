class User < ActiveRecord::Base

  has_many :twizzles, dependent: :destroy
  has_many :active_relationships,  class_name:  "Relationship",
    foreign_key: "follower_id",
    dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
    foreign_key: "followed_id",
    dependent:   :destroy
  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :user_groups
  has_many :groups, :through => :user_groups

  def feed
    following_ids = "SELECT followed_id FROM relationships
      WHERE  follower_id = :user_id"
    Twizzle.where("user_id IN (#{following_ids})
      OR user_id = :user_id", user_id: id)
  end

  def full_name
    if !fname.nil? && !lname.nil?
        fname + " " + lname
    elsif !fname.nil?
        fname
    elsif !lname.nil?
        lname
    end
  end

  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  def following?(other_user)
    following.include?(other_user)
  end

end
