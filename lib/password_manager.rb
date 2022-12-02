
class PasswordManager
    def initialize()
        @services_passwords ={}
    end

    # Takes two strings, the service and its password, as arguments
    # Stores the new service and its password
    def add(services, password)


        if (valid_password?(password))
            @services_passwords[services] = password
        end

    end

    # Takes one string, the service, as an argument
    # Returns the password for that service
    def password_for(service)
        @services_passwords[service]
    end

    # Takes no arguments
    # Returns a list of all the services for which a password has been stored
    # Does not return all the passwords
    def services
        @services_passwords.keys
    end

    #Checks if password has more than 7 characters
    def sufficient_length?(password)
        password.length > 7
    end

    #Checks if password includes special characters
    def includes_special_characters?(password)
        @required_characters = /[!@$%&]/
        password =~ @required_characters ? true : false
    end

    # Checks if password has more than 7 characters and has special characters
    def valid_password?(password)
        sufficient_length?(password) && includes_special_characters?(password) ? true : false
    end
end
