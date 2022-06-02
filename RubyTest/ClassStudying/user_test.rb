require "./user.rb"
require "./user_controller.rb"

class TestUser
    
    def add_to_user
        @user = User.new("Bruno", "Bruno@gmail.com", "Bruno123")
        @user_controller = UserControler.new

        @user_controller.register_new_user(@user)
    end

    def add_to_more_one_users
        @user = User.new("maria", "maria@gmail.com", "maria123")
        @user_controller = UserControler.new

        @user_controller.register_new_user(@user)

        @user = User.new("jose", "jose@gmail.com", "jose123")
        @user_controller = UserControler.new

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