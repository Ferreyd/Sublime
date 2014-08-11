package fr.mbds.cwitter
import grails.plugins.springsecurity.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class HomeController {
    def springSecurityService
    def index() {
        def currentUserInstance = User.get(springSecurityService.principal.id) // On récupère le user log
        def currentUserRoleList = UserRole.findAllByUser(currentUserInstance) // vous récupérez la liste des roles pour ce user
        def currentUserRole
        println("nb role : "+currentUserRoleList.size())
        if (currentUserRoleList.size() > 0){
            Iterator i = currentUserRoleList.iterator()
            while (i.hasNext()){
                def ur = i.next()
                if (ur.getRoleId().equals(new Long(1))){
                    currentUserRole = ur.role
                    break
                }else if (ur.getRoleId().equals(new Long(2))){
                    currentUserRole = ur.role
                    break
                }

            }

        }

        switch(currentUserRole)
        {
            case Role.findByAuthority('ROLE_ADMIN'):
                redirect(controller:'home', action:'admin')
                break
            case Role.findByAuthority('ROLE_USER'):
                redirect(controller:'home', action:'user')
                break
        }


    }


    def user(){
       session['userRole'] = 'ROLE_USER'
       def currentUserInstance = (User) User.get(springSecurityService.principal.id)
       session['idCurrentUser'] = currentUserInstance.id
       session['usernameCurrentUser'] = currentUserInstance.username
       redirect(controller: "user", action: "home")
    }

    def admin(){
        session['userRole'] = 'ROLE_ADMIN'
        def currentUserInstance = (User) User.get(springSecurityService.principal.id)
        session['idCurrentUser'] = currentUserInstance.id
    }

}
