class User
    
    attr_accessor :name, :email, :password

    def initialize(name, email, password)
        @name = name
        @email = email
        @password = password
    end

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

