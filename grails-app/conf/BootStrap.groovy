import fr.mbds.cwitter.*
class BootStrap {

    def init = { servletContext ->
        def userInstance1 = User.findByUsername('user')?:
            new User(username: 'user',enabled: true, email: 'user@gmail.com',password: 'user',firstname: 'Sandrine',lastname: 'Pantaleo')
            userInstance1.save(failOnError: true)

        def userInstance2 = User.findByUsername('mitia')?:
            new User(username: 'mitia',enabled: true, email: 'mitia@gmail.com',password: 'user',firstname: 'Fitia',lastname: 'Pitia')
        userInstance2.save(failOnError: true)

        def userInstance3 = User.findByUsername('mica')?:
            new User(username: 'mica',enabled: true, email: 'mica@gmail.com',password: 'user',firstname: 'Mica',lastname: 'Chuchu')
        userInstance3.save(failOnError: true)

        def userInstance4 = User.findByUsername('Mary')?:
            new User(username: 'mary',enabled: true, email: 'mary@gmail.com',password: 'user',firstname: 'Tia',lastname: 'Mary')
        userInstance4.save(failOnError: true)

        def adminInstance = User.findByUsername('admin')?:
            new User(username: 'admin',enabled: true, email: 'admin@gmail.com',password: 'admin',firstname: 'Paolo',lastname: 'Pantaleo').save(failOnError: true)

        def adminRoleInstance = Role.findByAuthority('ROLE_ADMIN')?:
            new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        def userRoleInstance = Role.findByAuthority('ROLE_USER')?:
            new Role(authority: 'ROLE_USER').save(failOnError: true)


        if (!userInstance1.authorities.contains(userRoleInstance)){
            UserRole.create userInstance1, userRoleInstance, true
        }

        if (!userInstance2.authorities.contains(userRoleInstance)){
            UserRole.create userInstance2, userRoleInstance, true
        }

        if (!userInstance3.authorities.contains(userRoleInstance)){
            UserRole.create userInstance3, userRoleInstance, true
        }

        if (!userInstance4.authorities.contains(userRoleInstance)){
            UserRole.create userInstance4, userRoleInstance, true
        }

        if (!adminInstance.authorities.contains(adminRoleInstance)){
            UserRole.create adminInstance, adminRoleInstance, true
        }



        assert User.count() == 5
        assert Role.count() == 2
        assert UserRole.count() == 5
    }
    def destroy = {
    }
}
