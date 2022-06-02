class User
    @name = ""
    @email = ""
    @password = ""

    def set_name(name)
        @name = name
    end

    def get_name
        @name
    end

    def set_email(email)
        @email = email
    end

    def get_email
        @email
    end

    def set_password(password)
        @password = password
    end

end

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

class TestUser
    
    def add_to_user
        @user = User.new
        @user_controller = UserControler.new

        @user.set_name("Bruno")
        @user.set_email("Bruno@gmail.com")
        @user.set_password("Bruno1234")

        @user_controller.register_new_user(@user)
    end

    def add_to_more_one_users
        @user = User.new
        @user_controller = UserControler.new

        @user.set_name("maria")
        @user.set_email("maria@gmail.com")
        @user.set_password("maria1234")

        @user_controller.register_new_user(@user)

        @user = User.new
        @user_controller = UserControler.new

        @user.set_name("jose")
        @user.set_email("jose@gmail.com")
        @user.set_password("jose1234")

        @user_controller.register_new_user(@user)
    end

    def get_to_users
        @user_controller = UserControler.new

        puts @user_controller.get_users
    
    end

end

tester = TestUser.new

tester.add_to_user
tester.add_to_more_one_users
tester.get_to_users

