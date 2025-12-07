@interface LSApplicationIdentityMigrator
- (id)migrateIdentities:(id)identities error:(id *)error;
- (id)migrateIdentity:(id)identity error:(id *)error;
@end

@implementation LSApplicationIdentityMigrator

- (id)migrateIdentities:(id)identities error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  v5 = objc_alloc_init(LSApplicationIdentityMigrationResult);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identitiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v9 = *v17;
    *&v8 = 138412290;
    v15 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        needsMigration = [v11 needsMigration];
        if (needsMigration)
        {
          v13 = _LSDefaultLog(needsMigration);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = v15;
            v21 = v11;
            _os_log_fault_impl(&dword_18162D000, v13, OS_LOG_TYPE_FAULT, "identity %@ needs migration!? How!?", buf, 0xCu);
          }
        }

        [(LSApplicationIdentityMigrationResult *)v5 noteIdentityDoesNotNeedMigration:v11];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)migrateIdentity:(id)identity error:(id *)error
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:identity];
  v7 = [(LSApplicationIdentityMigrator *)self migrateIdentities:v6 error:error];

  return v7;
}

@end