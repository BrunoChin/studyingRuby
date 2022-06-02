require "./user.rb"

class UserControler

    @@users = Array.new

    def register_new_user(user)
        @@users[@@users.length] = user
    end

    def get_users
        users_names = Array.new
        for i in 0..(@@users.length - 1) do
            users_names[i] = @@users[i].get_name
        end
        users_names
    end
end