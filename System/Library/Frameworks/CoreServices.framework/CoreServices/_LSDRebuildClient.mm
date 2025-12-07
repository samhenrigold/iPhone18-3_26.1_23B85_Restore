@interface _LSDRebuildClient
- (_LSDRebuildClient)initWithXPCConnection:(id)connection;
- (void)noteMigratorRunningWithReply:(id)reply;
- (void)performRebuildRegistration:(id)registration personaUniqueStrings:(id)strings reply:(id)reply;
@end

@implementation _LSDRebuildClient

- (_LSDRebuildClient)initWithXPCConnection:(id)connection
{
  v15 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"application-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 isEqualToString:@"com.apple.DataMigrator"];

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  _xpcConnection = [connectionCopy _xpcConnection];
  v8 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.can-perform-rebuild-registration");

  if (v8)
  {
LABEL_6:
    v13.receiver = self;
    v13.super_class = _LSDRebuildClient;
    v10 = [(_LSDClient *)&v13 initWithXPCConnection:connectionCopy];
    goto LABEL_10;
  }

  v11 = _LSDefaultLog(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    -[_LSDRebuildClient initWithXPCConnection:].cold.1(buf, [connectionCopy processIdentifier], v11);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)performRebuildRegistration:(id)registration personaUniqueStrings:(id)strings reply:(id)reply
{
  v36 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  stringsCopy = strings;
  v27 = stringsCopy;
  replyCopy = reply;
  if (!stringsCopy)
  {
    goto LABEL_14;
  }

  v30 = 0;
  v9 = registrationCopy;
  v26 = stringsCopy;
  v10 = +[_LSPersonaDatabase sharedInstance];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:v26];
  v12 = [(_LSPersonaDatabase *)v10 personasWithAttributesForPersonaUniqueStrings:v11 error:&v30];

  if (v12)
  {
    registrationCopy = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = *v32;
      do
      {
        v16 = 0;
        do
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [*(*(&v31 + 1) + 8 * v16) mutableCopy];
          [v17 setObject:v12 forKeyedSubscript:@"LSPersonaUniqueStrings"];
          v18 = [v17 copy];
          [registrationCopy addObject:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }
  }

  else
  {
    registrationCopy = 0;
  }

  v19 = v30;
  if (registrationCopy)
  {

LABEL_14:
    v29 = 0;
    v21 = _LSServer_PerformExternalRebuildRegistration(registrationCopy, &v29);
    v22 = v29;
    v23 = v22;
    if (!v21)
    {
      v24 = _LSInstallLog(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_LSDRebuildClient performRebuildRegistration:v23 personaUniqueStrings:v24 reply:?];
      }
    }

    replyCopy[2](replyCopy, v23);

    goto LABEL_22;
  }

  v25 = _LSDefaultLog(v20);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [_LSDRebuildClient performRebuildRegistration:v26 personaUniqueStrings:v19 reply:v25];
  }

  replyCopy[2](replyCopy, v19);
  registrationCopy = v19;
LABEL_22:
}

- (void)noteMigratorRunningWithReply:(id)reply
{
  replyCopy = reply;
  v4 = _LSDefaultLog(replyCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Noting migrator running.", v5, 2u);
  }

  _LSServer_NoteMigratorRunningInMigration();
  replyCopy[2](replyCopy, 0);
}

- (void)initWithXPCConnection:(os_log_t)log .cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Connecting pid %d is not entitled to perform rebuild registrations.", buf, 8u);
}

- (void)performRebuildRegistration:(uint64_t)a1 personaUniqueStrings:(uint64_t)a2 reply:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Could not look up personas given unique strings %@: %@", &v3, 0x16u);
}

- (void)performRebuildRegistration:(uint64_t)a1 personaUniqueStrings:(NSObject *)a2 reply:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "could not perform rebuild registration: %@", &v2, 0xCu);
}

@end