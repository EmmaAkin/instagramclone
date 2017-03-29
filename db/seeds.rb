# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"

User.destroy_all
Post.destroy_all
Like.destroy_all
Comment.destroy_all

## Default value of the country
@country_ary  = ["Ghana", "Nigeria", "Togo", "Benin", "Cote-D\'Ivroire", "Kenya", "South-Africa"]

@filename ="#{Rails.root}/test/dummy.json"

    # read_file read file and return the hash of dummy data
    def read_file(filename)
        data_hash= {}
        file = File.read(filename)
        data_hash = JSON.parse(file)

    end



@image_ary = ["https://d3iw72m71ie81c.cloudfront.net/female-94.jpg","https://d3iw72m71ie81c.cloudfront.net/female-8.jpg","https://d3iw72m71ie81c.cloudfront.net/female-98.jpg","https://d3iw72m71ie81c.cloudfront.net/female-61.jpg","https://d3iw72m71ie81c.cloudfront.net/female-52.jpg","https://d3iw72m71ie81c.cloudfront.net/female-3.jpg","https://d3iw72m71ie81c.cloudfront.net/female-70.jpg","https://d3iw72m71ie81c.cloudfront.net/female-53.jpg","https://d3iw72m71ie81c.cloudfront.net/female-44.jpg","https://d3iw72m71ie81c.cloudfront.net/female-58.jpg","https://d3iw72m71ie81c.cloudfront.net/female-102.jpg","https://d3iw72m71ie81c.cloudfront.net/female-96.jpg","https://d3iw72m71ie81c.cloudfront.net/female-34.jpg","https://d3iw72m71ie81c.cloudfront.net/jeselle.jpg","https://d3iw72m71ie81c.cloudfront.net/female-25.JPG","https://d3iw72m71ie81c.cloudfront.net/female-17.jpg","https://d3iw72m71ie81c.cloudfront.net/female-7.jpg","https://d3iw72m71ie81c.cloudfront.net/female-37.jpg","https://d3iw72m71ie81c.cloudfront.net/female-41.jpg","https://d3iw72m71ie81c.cloudfront.net/female-59.jpg","https://d3iw72m71ie81c.cloudfront.net/female-85.jpg","https://d3iw72m71ie81c.cloudfront.net/female-30.jpg","https://d3iw72m71ie81c.cloudfront.net/female-47.jpg","https://d3iw72m71ie81c.cloudfront.net/180ef954-bbe4-4bef-bb2d-b23142433915-avatar.jpeg","https://d3iw72m71ie81c.cloudfront.net/female-40.jpg","https://d3iw72m71ie81c.cloudfront.net/female-68.jpg","https://d3iw72m71ie81c.cloudfront.net/female-51.jpg","https://d3iw72m71ie81c.cloudfront.net/female-65.jpg","https://d3iw72m71ie81c.cloudfront.net/female-93.jpg","https://d3iw72m71ie81c.cloudfront.net/female-99.jpg","https://d3iw72m71ie81c.cloudfront.net/female-42.jpg","https://d3iw72m71ie81c.cloudfront.net/female-20.jpeg","https://d3iw72m71ie81c.cloudfront.net/female-62.jpg","https://d3iw72m71ie81c.cloudfront.net/female-103.jpg","https://d3iw72m71ie81c.cloudfront.net/female-104.JPG","https://d3iw72m71ie81c.cloudfront.net/female-2.jpg","https://d3iw72m71ie81c.cloudfront.net/female-69.jpg","https://d3iw72m71ie81c.cloudfront.net/female-5.jpg","https://d3iw72m71ie81c.cloudfront.net/female-10.jpg","https://d3iw72m71ie81c.cloudfront.net/female-66.jpg","https://d3iw72m71ie81c.cloudfront.net/female-13.jpg","https://d3iw72m71ie81c.cloudfront.net/female-31.jpg","https://d3iw72m71ie81c.cloudfront.net/stephanie.jpg","https://d3iw72m71ie81c.cloudfront.net/female-84.jpg","https://d3iw72m71ie81c.cloudfront.net/female-16.jpeg","https://d3iw72m71ie81c.cloudfront.net/israel.jpeg","https://d3iw72m71ie81c.cloudfront.net/female-1.jpg","https://d3iw72m71ie81c.cloudfront.net/female-14.jpeg","https://d3iw72m71ie81c.cloudfront.net/male-33.jpg","https://d3iw72m71ie81c.cloudfront.net/male-61.jpg","https://d3iw72m71ie81c.cloudfront.net/3fa3b0c2-df93-4962-a3d9-7cad201135b3-jpg","https://d3iw72m71ie81c.cloudfront.net/male-51.jpg","https://d3iw72m71ie81c.cloudfront.net/male-83.jpg","https://d3iw72m71ie81c.cloudfront.net/male-93.jpg","https://d3iw72m71ie81c.cloudfront.net/marvell.png","https://d3iw72m71ie81c.cloudfront.net/male-63.jpg","https://d3iw72m71ie81c.cloudfront.net/male-101.jpg","https://d3iw72m71ie81c.cloudfront.net/male-42.jpg","https://d3iw72m71ie81c.cloudfront.net/male-6.jpg","https://d3iw72m71ie81c.cloudfront.net/male-15.jpg","https://d3iw72m71ie81c.cloudfront.net/male-16.jpg","https://d3iw72m71ie81c.cloudfront.net/male-38.jpg","https://d3iw72m71ie81c.cloudfront.net/88b95197-fd1e-4e11-8793-2903a5cfd06e-10584053_10153749310922416_3125632463004974493_n.jpg","https://d3iw72m71ie81c.cloudfront.net/male-82.jpg","https://d3iw72m71ie81c.cloudfront.net/male-60.jpg","https://d3iw72m71ie81c.cloudfront.net/male-25.jpg","https://d3iw72m71ie81c.cloudfront.net/male-66.jpg","https://d3iw72m71ie81c.cloudfront.net/male-17.jpg","https://d3iw72m71ie81c.cloudfront.net/male-79.jpg","https://d3iw72m71ie81c.cloudfront.net/male-18.jpg","https://d3iw72m71ie81c.cloudfront.net/male-11.jpg","https://d3iw72m71ie81c.cloudfront.net/male-58.jpg","https://d3iw72m71ie81c.cloudfront.net/male-23.jpg","https://d3iw72m71ie81c.cloudfront.net/male-55.jpg","https://d3iw72m71ie81c.cloudfront.net/male-102.jpg","https://d3iw72m71ie81c.cloudfront.net/7b96a496-e490-4765-93aa-4a93ab9e1742-AkEsx79M.jpeg","https://d3iw72m71ie81c.cloudfront.net/male-86.jpg","https://d3iw72m71ie81c.cloudfront.net/male-21.jpg","https://d3iw72m71ie81c.cloudfront.net/male-77.jpg","https://d3iw72m71ie81c.cloudfront.net/caesar.jpg","https://d3iw72m71ie81c.cloudfront.net/male-78.jpg","https://d3iw72m71ie81c.cloudfront.net/gaurav.JPG","https://d3iw72m71ie81c.cloudfront.net/male-67.jpg","https://d3iw72m71ie81c.cloudfront.net/male-92.jpg","https://d3iw72m71ie81c.cloudfront.net/male-68.jpg","https://d3iw72m71ie81c.cloudfront.net/male-8.jpg","https://d3iw72m71ie81c.cloudfront.net/male-65.jpg","https://d3iw72m71ie81c.cloudfront.net/male-96.jpg","https://d3iw72m71ie81c.cloudfront.net/male-53.jpg","https://d3iw72m71ie81c.cloudfront.net/male-70.JPG","https://d3iw72m71ie81c.cloudfront.net/male-1.jpg","https://d3iw72m71ie81c.cloudfront.net/male-89.jpg","https://d3iw72m71ie81c.cloudfront.net/male-74.jpg","https://d3iw72m71ie81c.cloudfront.net/male-75.jpg","https://d3iw72m71ie81c.cloudfront.net/male-22.jpg","https://d3iw72m71ie81c.cloudfront.net/male-19.jpg","https://d3iw72m71ie81c.cloudfront.net/male-13.jpg","https://d3iw72m71ie81c.cloudfront.net/male-85.jpg"]

#takes the has and returns
# dummy data of the file
#create the bio data dummy for every user
def create_user_profile
   dummy = read_file(@filename)

  dummy.each do|user|

      dummy_user = User.create!(
        full_name: (user["firstname"]).to_s + " " + (user["lastname"]).to_s,
        username: (user["firstname"]).to_s,
        email: (user["email"]).to_s,
        password: (user["password"]).to_s,
        phonenumber: "+"+ (user["phonenumber"]).to_s,
        image:@image_ary.sample
        )

  end


end

#Takes a user and create saving for records for the user
def create_savings

end


create_user_profile()


