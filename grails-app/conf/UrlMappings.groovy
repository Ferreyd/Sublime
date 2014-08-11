class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/user_home/$id"(controller:"user", action: "show")
        "/user_groups/$id"(controller:"groupe", action: "show")

        "/"(controller:"login",action:"index")
		"500"(view:'/error')
	}
}
