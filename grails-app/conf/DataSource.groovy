dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
    username = "DevSublime"
    password = "pass1234"

}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            // "create" is ok for now, but you may find
            // "update" better for general development
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''

            // Change 'localhostOrDatabaseIpAddress' and 'myDatabaseName'
            // to whatever suits your environment
            url = "jdbc:mysql://195.154.74.28:3306/Sublime_development?useUnicode=yes&characterEncoding=UTF-8"

            // Print Hibernate SQL to the console
            logSql = true

            // Credentials
        }
    }
    test {

        dataSource {
            // "create" is ok for now, but you may find
            // "update" better for general development
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''

            // Change 'localhostOrDatabaseIpAddress' and 'myDatabaseName'
            // to whatever suits your environment
            url = "jdbc:mysql://195.154.74.28:3306/Sublime_test?useUnicode=yes&characterEncoding=UTF-8"

            // Print Hibernate SQL to the console
            logSql = true
        }
    }
    production {
        dataSource {
            // "create" is ok for now, but you may find
            // "update" better for general development
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''

            // Change 'localhostOrDatabaseIpAddress' and 'myDatabaseName'
            // to whatever suits your environment
            url = "jdbc:mysql://195.154.74.28:3306/Sublime_test?useUnicode=yes&characterEncoding=UTF-8"

            // Print Hibernate SQL to the console
            logSql = true
        }
    }
}