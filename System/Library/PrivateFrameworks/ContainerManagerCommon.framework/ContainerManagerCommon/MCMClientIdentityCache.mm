@interface MCMClientIdentityCache
- (MCMClientIdentityCache)init;
- (id)clientIdentityWithAuditToken:(id *)token proximateAuditToken:(id *)auditToken personaUniqueString:(id)string error:(id *)error generator:(id)generator;
- (void)flush;
@end

@implementation MCMClientIdentityCache

- (id)clientIdentityWithAuditToken:(id *)token proximateAuditToken:(id *)auditToken personaUniqueString:(id)string error:(id *)error generator:(id)generator
{
  v33 = *MEMORY[0x1E69E9840];
  generatorCopy = generator;
  stringCopy = string;
  v14 = [MCMClientIdentityIndex alloc];
  v15 = *&token->var0[4];
  *buf = *token->var0;
  v32 = v15;
  v16 = *&auditToken->var0[4];
  v30[0] = *auditToken->var0;
  v30[1] = v16;
  v17 = [(MCMClientIdentityIndex *)v14 initWithAuditToken:buf proximateAuditToken:v30 personaUniqueString:stringCopy];

  if (v17)
  {
    cache = [(MCMClientIdentityCache *)self cache];
    v19 = [cache objectForKey:v17];

    if (v19)
    {
      v20 = 0;
LABEL_13:
      v23 = 0;
      goto LABEL_14;
    }

    v29 = 0;
    v19 = generatorCopy[2](generatorCopy, &v29);
    v20 = v29;
    if (v19)
    {
      v23 = [v19 clientIdentityByChangingCached:1];
      if (v23)
      {
        cache2 = [(MCMClientIdentityCache *)self cache];
        [cache2 setObject:v23 forKey:v17];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v20 = [[MCMError alloc] initWithErrorType:73 category:3];
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = *&token->var0[4];
      *buf = *token->var0;
      v32 = v27;
      pid = container_audit_token_get_pid();
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Could not generate client identity index for pid %d", buf, 8u);
    }
  }

  if (!error)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v22 = v20;
  v19 = 0;
  v23 = 0;
  *error = v20;
LABEL_14:
  v25 = v19;

  return v19;
}

- (void)flush
{
  cache = [(MCMClientIdentityCache *)self cache];
  [cache removeAllObjects];
}

- (MCMClientIdentityCache)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMClientIdentityCache;
  v2 = [(MCMClientIdentityCache *)&v6 init];
  if (v2)
  {
    v3 = [[MCMLRUCache alloc] initWithName:@"perPersonaClients" maxCount:30];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

@end