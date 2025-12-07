@interface CPLEngineScopedTask
- (BOOL)checkScopeIsValidInTransaction:(id)transaction;
- (BOOL)isScopeValidInTransaction:(id)transaction;
- (CPLEngineScopedTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope;
- (id)scopesForTask;
@end

@implementation CPLEngineScopedTask

- (id)scopesForTask
{
  v5[1] = *MEMORY[0x1E69E9840];
  scope = [(CPLEngineScopedTask *)self scope];
  v5[0] = scope;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)checkScopeIsValidInTransaction:(id)transaction
{
  v16 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  error = [transactionCopy error];

  if (error)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  session = [(CPLEngineSyncTask *)self session];
  shouldDefer = [session shouldDefer];

  if (shouldDefer)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 138412290;
        *&v15[4] = objc_opt_class();
        v9 = *&v15[4];
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Session for %@ has been deferred", v15, 0xCu);
      }
    }

    v10 = [CPLErrors sessionHasBeenDeferredError:*v15];
    [transactionCopy setError:v10];

    goto LABEL_15;
  }

  if (![(CPLEngineScopedTask *)self isScopeValidInTransaction:transactionCopy])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        scope = [(CPLEngineScopedTask *)self scope];
        *v15 = 138412290;
        *&v15[4] = scope;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "%@ is not valid anymore - stopping here", v15, 0xCu);
      }
    }

    [(CPLEngineSyncTask *)self cancel];
    goto LABEL_15;
  }

  v11 = 1;
LABEL_16:

  return v11;
}

- (BOOL)isScopeValidInTransaction:(id)transaction
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = self->_clientCacheIdentifier;
  clientCacheIdentifier = [(CPLEngineStore *)self->_store clientCacheIdentifier];
  v6 = clientCacheIdentifier;
  if (v4)
  {
    v7 = clientCacheIdentifier == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {

    if (!(v4 | v6))
    {
LABEL_12:
      scopes = [(CPLEngineStore *)self->_store scopes];
      validLocalScopeIndexes = [scopes validLocalScopeIndexes];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      scopesForTask = [(CPLEngineScopedTask *)self scopesForTask];
      v14 = [scopesForTask countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
LABEL_14:
        v17 = 0;
        while (1)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(scopesForTask);
          }

          v18 = *(*(&v29 + 1) + 8 * v17);
          if (([validLocalScopeIndexes containsIndex:[(CPLEngineScope *)v18 localIndex]]& 1) == 0)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [scopesForTask countByEnumeratingWithState:&v29 objects:v39 count:16];
            if (v15)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        if (v18 == self->_scope)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v19 = __CPLTaskOSLogDomain_15620();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              scope = self->_scope;
              v27 = objc_opt_class();
              *buf = 138412546;
              v34 = scope;
              v35 = 2112;
              v36 = v27;
              v22 = v27;
              v23 = "Scope %@ is invalid, stopping %@ now";
              v24 = v19;
              v25 = 22;
              goto LABEL_28;
            }

LABEL_29:
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = __CPLTaskOSLogDomain_15620();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = self->_scope;
            v21 = objc_opt_class();
            *buf = 138412802;
            v34 = v18;
            v35 = 2112;
            v36 = v20;
            v37 = 2112;
            v38 = v21;
            v22 = v21;
            v23 = "Scope %@ (associated with %@) is invalid, stopping %@ now";
            v24 = v19;
            v25 = 32;
LABEL_28:
            _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

            goto LABEL_29;
          }

          goto LABEL_29;
        }

        v10 = 0;
        goto LABEL_31;
      }

LABEL_20:
      v10 = 1;
LABEL_31:

      goto LABEL_32;
    }
  }

  else
  {
    v11 = [v4 isEqual:clientCacheIdentifier];

    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (_CPLSilentLogging)
  {
    return 0;
  }

  validLocalScopeIndexes = __CPLTaskOSLogDomain_15620();
  if (os_log_type_enabled(validLocalScopeIndexes, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = objc_opt_class();
    v9 = v34;
    _os_log_impl(&dword_1DC05A000, validLocalScopeIndexes, OS_LOG_TYPE_DEFAULT, "Client cache has been reset. Stopping %@ for now", buf, 0xCu);
  }

  v10 = 0;
LABEL_32:

  return v10;
}

- (CPLEngineScopedTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope
{
  libraryCopy = library;
  identifierCopy = identifier;
  scopeCopy = scope;
  transportScopeCopy = transportScope;
  v23.receiver = self;
  v23.super_class = CPLEngineScopedTask;
  v16 = [(CPLEngineSyncTask *)&v23 initWithEngineLibrary:libraryCopy session:session];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_scope, scope);
    objc_storeStrong(&v17->_transportScope, transportScope);
    store = [libraryCopy store];
    store = v17->_store;
    v17->_store = store;

    v20 = [identifierCopy copy];
    clientCacheIdentifier = v17->_clientCacheIdentifier;
    v17->_clientCacheIdentifier = v20;
  }

  return v17;
}

@end