@interface MCMClientFactory
- (MCMClientFactory)initWithUserIdentityCache:(id)cache clientCodeSignInfoCache:(id)infoCache clientIdentityCache:(id)identityCache;
- (id)_clientIdentityWithClientMessageContext:(id)context error:(id *)error;
- (id)_codeSignInfoWithClient:(container_client *)client CDHash:(id)hash identifier:(id)identifier teamIdentifier:(id)teamIdentifier error:(id *)error;
- (id)_proxiedClientIdentityFromMessage:(id)message proximateClient:(id)client error:(id *)error;
- (id)clientIdentityWithClient:(container_client *)client proximateClient:(id)proximateClient error:(id *)error;
- (id)clientIdentityWithClientMessageContext:(id)context xpcMessage:(id)message error:(id *)error;
@end

@implementation MCMClientFactory

- (id)_codeSignInfoWithClient:(container_client *)client CDHash:(id)hash identifier:(id)identifier teamIdentifier:(id)teamIdentifier error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  identifierCopy = identifier;
  teamIdentifierCopy = teamIdentifier;
  v37 = 0u;
  v38 = 0u;
  container_client_get_audit_token();
  *buf = 0u;
  v36 = 0u;
  codesign_status = container_audit_token_get_codesign_status();
  pid = container_client_get_pid();
  if ((codesign_status & 1) == 0)
  {
    v15 = [[MCMError alloc] initWithErrorType:98 category:3];
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Client pid [%d] is not signed or has died.", buf, 8u);
    }

    goto LABEL_17;
  }

  v17 = container_client_copy_entitlement();
  if (!v17 || (v18 = _CFXPCCreateCFObjectFromXPCObject()) == 0)
  {
    if ((container_client_is_alive() & 1) == 0)
    {
      v15 = [[MCMError alloc] initWithErrorType:98 category:3];
      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = pid;
        _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Client pid [%d] has died, failed to fetch entitlements.", buf, 8u);
      }

LABEL_17:
      v24 = 0;
      v18 = 0;
      v29 = 0;
      if (!error)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    v18 = MEMORY[0x1E695E0F8];
  }

  v34 = teamIdentifierCopy;
  v19 = hashCopy;

  v20 = [MCMEntitlements alloc];
  v21 = containermanager_copy_global_configuration();
  staticConfig = [v21 staticConfig];
  containerConfigMap = [staticConfig containerConfigMap];
  v24 = [(MCMEntitlements *)v20 initWithEntitlements:v18 clientIdentifier:identifierCopy containerConfigMap:containerConfigMap];

  v25 = container_log_handle_for_category();
  v26 = v25;
  if (v24)
  {
    hashCopy = v19;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = identifierCopy;
      _os_log_debug_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_DEBUG, "Generating new codesign info blob for [%@]", buf, 0xCu);
    }

    v27 = [MCMClientCodeSignInfo alloc];
    v28 = v19;
    teamIdentifierCopy = v34;
    v29 = [(MCMClientCodeSignInfo *)v27 initWithCDHash:v28 entitlements:v24 identifier:identifierCopy teamIdentifier:v34 status:codesign_status];
    v15 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (!v29)
    {
      v31 = v15;
      *error = v15;
    }

    goto LABEL_20;
  }

  hashCopy = v19;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = pid;
    _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Could not initialize entitlements for pid [%d]", buf, 8u);
  }

  v15 = [[MCMError alloc] initWithErrorType:97 category:3];
  v24 = 0;
  v29 = 0;
  teamIdentifierCopy = v34;
  if (error)
  {
    goto LABEL_18;
  }

LABEL_20:
  v32 = v29;

  return v29;
}

- (id)clientIdentityWithClient:(container_client *)client proximateClient:(id)proximateClient error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  proximateClientCopy = proximateClient;
  v68 = 0u;
  v69 = 0u;
  container_client_get_audit_token();
  is_test_client = container_client_is_test_client();
  euid = container_client_get_euid();
  pid = container_client_get_pid();
  platform = container_client_get_platform();
  v55 = proximateClientCopy;
  if (!container_client_is_signed())
  {
    v21 = [[MCMError alloc] initWithErrorType:98 category:3];
    v22 = container_log_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Client pid [%d] is not signed or has died.", buf, 8u);
    }

    goto LABEL_20;
  }

  v65 = 0;
  *buf = v68;
  *&buf[16] = v69;
  v12 = container_audit_token_copy_codesign_hash();
  __s = v12;
  if (!v12)
  {
    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *&buf[8] = *(&v68 + 1);
      *&buf[16] = v69;
      *buf = 67109120;
      *&buf[4] = container_audit_token_get_pid();
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Failed to get codesign hash for pid %d", buf, 8u);
    }

    v21 = [[MCMError alloc] initWithErrorType:97 category:3];
LABEL_20:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v17 = 0;
    v15 = 0;
    v28 = 0;
    v20 = 0;
    v29 = 0;
    goto LABEL_21;
  }

  v53 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:v65];
  free(__s);
  memset_s(&__s, 8uLL, 0, 8uLL);
  codesign_identifier = container_client_get_codesign_identifier();
  if (!codesign_identifier || ([MEMORY[0x1E696AEC0] stringWithUTF8String:codesign_identifier], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Could not get client identifier for pid [%d]", buf, 8u);
    }

    v21 = [[MCMError alloc] initWithErrorType:97 category:3];
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v17 = 0;
    v15 = 0;
    goto LABEL_41;
  }

  v15 = v14;
  v52 = platform;
  codesign_team_identifier = container_client_get_codesign_team_identifier();
  if (codesign_team_identifier)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:codesign_team_identifier];
    if (is_test_client)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    if (is_test_client)
    {
LABEL_7:
      if (proximateClientCopy)
      {
        v18 = containermanager_copy_global_configuration();
        if ([v18 isInternalImage])
        {
          isAllowedToTest = [proximateClientCopy isAllowedToTest];

          if (isAllowedToTest)
          {
            v51 = pid;
            v63 = 0;
            v20 = [(MCMClientFactory *)self _codeSignInfoWithClient:client CDHash:v53 identifier:v15 teamIdentifier:v17 error:&v63];
            v21 = v63;
            goto LABEL_25;
          }
        }

        else
        {
        }

        v37 = container_log_handle_for_category();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_ERROR, "Cannot use a test client.", buf, 2u);
        }

        v36 = +[MCMError notEntitled];
      }

      else
      {
        v35 = container_log_handle_for_category();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Cannot use a test client without a proximate client.", buf, 2u);
        }

        v36 = [[MCMError alloc] initWithErrorType:38 category:3];
      }

      v21 = v36;
LABEL_40:
      v24 = 0;
      v25 = 0;
      v26 = 0;
LABEL_41:
      v20 = 0;
      goto LABEL_42;
    }
  }

  v51 = pid;
  clientCodeSignInfoCache = [(MCMClientFactory *)self clientCodeSignInfoCache];
  clientCopy = client;
  v62 = 0;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __67__MCMClientFactory_clientIdentityWithClient_proximateClient_error___block_invoke;
  v57[3] = &unk_1E86B0010;
  v57[4] = self;
  v58 = v53;
  v59 = v15;
  v60 = v17;
  v20 = [clientCodeSignInfoCache codeSignInfoForCDHash:v58 identifier:v59 error:&v62 generator:v57];
  v21 = v62;

LABEL_25:
  if (!v20)
  {
    v34 = container_log_handle_for_category();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "Could not generate codesign info from xpc connection; error = %@", buf, 0xCu);
    }

    goto LABEL_40;
  }

  is_sandboxed = container_client_is_sandboxed();
  userIdentityCache = [(MCMClientFactory *)self userIdentityCache];
  v56 = v21;
  v26 = [userIdentityCache userIdentityForClient:client error:&v56];
  v33 = v56;

  if (v26)
  {
    v49 = v33;
    bzero(v66, 0x401uLL);
    *buf = v68;
    *&buf[16] = v69;
    if (sandbox_container_path_for_audit_token())
    {
      v25 = 0;
    }

    else
    {
      v25 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v66 isDirectory:1 relativeToURL:0];
    }

    v42 = [MCMPOSIXUser posixUserWithUID:euid];
    if (v42)
    {
      v24 = v42;
      v43 = container_log_handle_for_category();
      v28 = v53;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        shortDescription = [v26 shortDescription];
        *buf = 138412546;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = shortDescription;
        _os_log_debug_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_DEBUG, "Generating new client identity for [%@/%@]", buf, 0x16u);

        v28 = v53;
      }

      v44 = [MCMClientIdentity alloc];
      *buf = v68;
      *&buf[16] = v69;
      LOWORD(v48) = is_test_client;
      LOBYTE(v47) = is_sandboxed;
      v29 = [(MCMClientIdentity *)v44 initWithPOSIXUser:v24 POSIXPID:v51 platform:v52 userIdentity:v26 proximateClient:v55 auditToken:buf codeSignInfo:v20 sandboxed:v47 sandboxContainerURL:v25 testClient:v48 kernel:?];
      v21 = v49;
LABEL_21:
      errorCopy2 = error;
      if (!error)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v21 = [[MCMError alloc] initWithErrorType:75 category:3];

    v45 = container_log_handle_for_category();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = euid;
      *&buf[8] = 1024;
      *&buf[10] = v51;
      _os_log_error_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_ERROR, "Could not generate user details for euid %u from pid %d", buf, 0xEu);
    }

    v24 = 0;
  }

  else
  {
    v41 = container_log_handle_for_category();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *&buf[4] = v51;
      *&buf[8] = 2112;
      *&buf[10] = v33;
      _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Could not compute user identity for client %d; error = %@", buf, 0x12u);
    }

    v24 = 0;
    v21 = v33;
    v25 = 0;
    v26 = 0;
  }

LABEL_42:
  v29 = 0;
  v28 = v53;
  errorCopy2 = error;
  if (!error)
  {
    goto LABEL_45;
  }

LABEL_43:
  if (!v29)
  {
    v38 = v21;
    *errorCopy2 = v21;
  }

LABEL_45:
  v39 = v29;

  return v39;
}

uint64_t __67__MCMClientFactory_clientIdentityWithClient_proximateClient_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];

  return [v4 _codeSignInfoWithClient:v3 CDHash:v5 identifier:v6 teamIdentifier:v7 error:a2];
}

- (MCMClientFactory)initWithUserIdentityCache:(id)cache clientCodeSignInfoCache:(id)infoCache clientIdentityCache:(id)identityCache
{
  v16 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  infoCacheCopy = infoCache;
  identityCacheCopy = identityCache;
  v15.receiver = self;
  v15.super_class = MCMClientFactory;
  v12 = [(MCMClientFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userIdentityCache, cache);
    objc_storeStrong(&v13->_clientCodeSignInfoCache, infoCache);
    objc_storeStrong(&v13->_clientIdentityCache, identityCache);
  }

  return v13;
}

- (id)_clientIdentityWithClientMessageContext:(id)context error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = contextCopy;
  v21 = 1;
  v24 = 0u;
  v25 = 0u;
  if (contextCopy)
  {
    objc_msgSend_auditToken(contextCopy);
  }

  personaUniqueString = [v7 personaUniqueString];
  *buf = v24;
  v23 = v25;
  v9 = container_audit_token_copy_codesign_identifier();
  __s = v9;
  if (v9)
  {
    v10 = v9;
    if (!strncmp("com.apple.installd", v9, 0x13uLL))
    {
      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = personaUniqueString;
        _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Ignoring client persona because it is identified as installd; persona was = [%@]", buf, 0xCu);
      }

      personaUniqueString = 0;
    }

    free(v10);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  [personaUniqueString UTF8String];
  *buf = v24;
  v23 = v25;
  v12 = container_client_create_from_audit_token();
  if (v12)
  {
    v19 = 0;
    v13 = [(MCMClientFactory *)self clientIdentityWithClient:v12 proximateClient:0 error:&v19];
    v14 = v19;
  }

  else
  {
    v15 = [MCMError alloc];
    v14 = [(MCMError *)v15 initWithErrorType:v21 category:2];
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Could not generate client object from xpc connection; error = %@", buf, 0xCu);
    }

    v13 = 0;
  }

  container_free_client();
  if (error && !v13)
  {
    v17 = v14;
    *error = v14;
  }

  return v13;
}

- (id)_proxiedClientIdentityFromMessage:(id)message proximateClient:(id)client error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v9 = xpc_dictionary_get_dictionary(message, "ProxyForClient");
  if (!v9)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v31 = 1;
  v10 = container_client_copy_decoded_from_xpc_object();
  if (!v10)
  {
    v16 = [[MCMError alloc] initWithErrorType:v31 category:3];
    v17 = container_log_handle_for_category();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

LABEL_14:
      v21 = 0;
      if (!error)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    *buf = 136315138;
    *&buf[4] = container_get_error_description();
    v18 = "Invalid proxied client, error = %s";
    v19 = v17;
    v20 = 12;
LABEL_28:
    _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    goto LABEL_13;
  }

  v11 = v10;
  if (!container_client_is_test_client())
  {
    goto LABEL_6;
  }

  v12 = containermanager_copy_global_configuration();
  if (![v12 isInternalImage])
  {

    goto LABEL_12;
  }

  isAllowedToTest = [clientCopy isAllowedToTest];

  if ((isAllowedToTest & 1) == 0)
  {
LABEL_12:
    v16 = +[MCMError notEntitled];
    v17 = container_log_handle_for_category();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v18 = "Not allowed to proxy a test client";
    v19 = v17;
    v20 = 2;
    goto LABEL_28;
  }

LABEL_6:
  *buf = 0u;
  v35 = 0u;
  container_client_get_audit_token();
  persona_unique_string = container_client_get_persona_unique_string();
  if (persona_unique_string)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
  }

  else
  {
    v15 = 0;
  }

  if (container_client_is_test_client())
  {
    v30 = 0;
    v21 = [(MCMClientFactory *)self clientIdentityWithClient:v11 proximateClient:clientCopy error:&v30];
    v16 = v30;
  }

  else
  {
    clientIdentityCache = [(MCMClientFactory *)self clientIdentityCache];
    if (clientCopy)
    {
      objc_msgSend_auditToken(clientCopy);
    }

    else
    {
      memset(v33, 0, sizeof(v33));
    }

    v28 = v11;
    v29 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __81__MCMClientFactory_XPC___proxiedClientIdentityFromMessage_proximateClient_error___block_invoke;
    v26[3] = &unk_1E86B0060;
    v26[4] = self;
    v27 = clientCopy;
    v32[0] = *buf;
    v32[1] = v35;
    v21 = [clientIdentityCache clientIdentityWithAuditToken:v32 proximateAuditToken:v33 personaUniqueString:v15 error:&v29 generator:v26];
    v16 = v29;
  }

  container_free_client();

  if (error)
  {
LABEL_15:
    if (!v21)
    {
      v22 = v16;
      *error = v16;
    }
  }

LABEL_17:
  v23 = v21;

  return v21;
}

uint64_t __81__MCMClientFactory_XPC___proxiedClientIdentityFromMessage_proximateClient_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v5 = a1[5];

  return [v4 clientIdentityWithClient:v3 proximateClient:v5 error:a2];
}

- (id)clientIdentityWithClientMessageContext:(id)context xpcMessage:(id)message error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  messageCopy = message;
  clientIdentityCache = [(MCMClientFactory *)self clientIdentityCache];
  if (contextCopy)
  {
    objc_msgSend_auditToken(contextCopy);
  }

  else
  {
    *buf = 0u;
    v32 = 0u;
  }

  personaUniqueString = [contextCopy personaUniqueString];
  v29 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__MCMClientFactory_XPC__clientIdentityWithClientMessageContext_xpcMessage_error___block_invoke;
  v27[3] = &unk_1E86B0038;
  v27[4] = self;
  v12 = contextCopy;
  v28 = v12;
  memset(v30, 0, sizeof(v30));
  v13 = [clientIdentityCache clientIdentityWithAuditToken:buf proximateAuditToken:v30 personaUniqueString:personaUniqueString error:&v29 generator:v27];
  v14 = v29;

  if (!v13)
  {
    v15 = 0;
    entitlements = 0;
    if (!error)
    {
LABEL_17:
      v19 = 0;
      goto LABEL_18;
    }

LABEL_10:
    v18 = v14;
    v19 = 0;
    *error = v14;
LABEL_18:
    v16 = v14;
    goto LABEL_19;
  }

  v26 = v14;
  v15 = [(MCMClientFactory *)self _proxiedClientIdentityFromMessage:messageCopy proximateClient:v13 error:&v26];
  v16 = v26;

  if (!v15 && v16)
  {
    v15 = 0;
    entitlements = 0;
    v14 = v16;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  codeSignInfo = [v13 codeSignInfo];
  entitlements = [codeSignInfo entitlements];

  v21 = v13;
  if (v15)
  {
    proxyAllowed = [entitlements proxyAllowed];
    v21 = v15;
    if ((proxyAllowed & 1) == 0)
    {
      v14 = +[MCMError notEntitled];

      v23 = container_log_handle_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Not entitled to proxy", buf, 2u);
      }

      if (!error)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  v19 = v21;
LABEL_19:
  v24 = v19;

  return v19;
}

uint64_t __81__MCMClientFactory_XPC__clientIdentityWithClientMessageContext_xpcMessage_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _clientIdentityWithClientMessageContext:v4 error:a2];
}

@end