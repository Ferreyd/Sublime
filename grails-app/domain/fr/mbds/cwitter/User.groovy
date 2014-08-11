package fr.mbds.cwitter

class User {

	transient springSecurityService

    String firstname
    String lastname
    String email
	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static constraints = {
		username blank: false, unique: true
		password blank: false
        email email: true, blank: false, unique: true
        firstname blank: false
        lastname blank:false
	}

	static mapping = {
        table 'users'
		password column: '`password`'
	}

   // static hasMany = []


	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
