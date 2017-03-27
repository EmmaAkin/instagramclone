class User < ApplicationRecord
            # has_secure_password

            has_many :active_relationships, class_name: "Relationship",
                                            foreign_key: "follower_id",
                                            dependent: :destroy
            has_many :passive_relationships, class_name: "Relationship",
                                           foreign_key: "followed_id",
                                           dependent: :destroy

            has_many :following, through: :active_relationships, source: :followed
            has_many :followers, through: :passive_relationships, source: :follower

            has_many :posts
            has_many :comments, as: :commentable

            has_many :likes


            #Follows a user
            def follow(other_user)
                following << other_user
            end

            #Unfollowing a user
            def unfollow(other_user)
                following.delete(other_user)
            end

            def following?(other_user)
                following.include?(other_user)
            end

            def likes?(post)
              post.likes.where(user_id: id).any?
            end
end
