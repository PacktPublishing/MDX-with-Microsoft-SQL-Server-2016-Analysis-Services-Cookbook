Select * from OpenQuery(local_SSAS,
         'select * from $system.DISCOVER_CONNECTIONS') c

inner join OpenQuery(local_SSAS,
         'select * from $system.DISCOVER_SESSIONS') s

         on s.SESSION_CONNECTION_ID = c.CONNECTION_ID
            
inner join OpenQuery(local_SSAS,
         'select * from $system.DISCOVER_COMMANDS') co

         on co.SESSION_SPID = s.SESSION_SPID
