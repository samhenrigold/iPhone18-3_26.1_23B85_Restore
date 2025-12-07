@interface MCMCommandContainerFromPath
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandContainerFromPath)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (container_object_s)_containerFromRelayToDaemonWithURL:(id)l relativePath:(char *)path error:(container_error_extended_s *)error;
- (void)execute;
@end

@implementation MCMCommandContainerFromPath

- (container_object_s)_containerFromRelayToDaemonWithURL:(id)l relativePath:(char *)path error:(container_error_extended_s *)error
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7847;
  v21 = __Block_byref_object_dispose__7848;
  v22 = 0;
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  [clientIdentity createLibsystemClient];

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "Command", 0x2CuLL);
  v12 = lCopy;
  xpc_dictionary_set_string(v11, "Path", [lCopy fileSystemRepresentation]);
  v13 = v11;
  container_perform_with_client_context();
  if (v18[5])
  {
    v14 = container_xpc_decode_container_object();
    if (v14)
    {
      string = xpc_dictionary_get_string(v18[5], "ReplyRelativePath");
      if (path)
      {
        if (string)
        {
          *path = strndup(string, 0x400uLL);
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  container_free_client();
  if (!error || v14)
  {
    if (!error)
    {
      container_error_free();
    }
  }

  else
  {
    *error = v24[3];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v14;
}

uint64_t __85__MCMCommandContainerFromPath__containerFromRelayToDaemonWithURL_relativePath_error___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = container_xpc_send_sync_message();

  return MEMORY[0x1EEE66BB8]();
}

- (void)execute
{
  v72 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v65 = 0;
  v3 = containermanager_copy_global_configuration();
  classPathCache = [v3 classPathCache];

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  posixUser = [clientIdentity posixUser];

  if ([posixUser isRoleUser])
  {
    v8 = containermanager_copy_global_configuration();
    defaultUser = [v8 defaultUser];

    posixUser = defaultUser;
  }

  v10 = [classPathCache referenceForPOSIXUser:posixUser];
  v11 = [(MCMCommandContainerFromPath *)self url];
  v59 = v10;
  v12 = [classPathCache containerClassPathWithURL:v11 reference:v10];

  v64 = 0;
  v58 = v12;
  v60 = classPathCache;
  if (v12)
  {
    v13 = [(MCMCommandContainerFromPath *)self url];
    [v13 fileSystemRepresentation];
    v14 = container_paths_copy_container_from_path();
  }

  else
  {
    v15 = containermanager_copy_global_configuration();
    v16 = [v15 dispositionForContainerClass:12];

    if (v16 != 2)
    {
      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v48 = [(MCMCommandContainerFromPath *)self url];
        path = [v48 path];
        *buf = 138412290;
        v67 = path;
        _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "[%@] is not a path that container manager recognizes among its prefixes.", buf, 0xCu);
      }

      v26 = [[MCMError alloc] initWithErrorType:21];
      goto LABEL_23;
    }

    v13 = [(MCMCommandContainerFromPath *)self url];
    v14 = [(MCMCommandContainerFromPath *)self _containerFromRelayToDaemonWithURL:v13 relativePath:&v64 error:&v65];
  }

  v17 = v14;

  if (!v17)
  {
    v26 = [[MCMError alloc] initWithErrorType:21];
    v27 = container_error_copy_unlocalized_description();
    __s = v27;
    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v44 = [(MCMCommandContainerFromPath *)self url];
      path2 = [v44 path];
      *buf = 138412546;
      v67 = path2;
      v68 = 2080;
      v69 = v27;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Error obtaining container during reverse lookup of [%@]: %s", buf, 0x16u);
    }

    if (v27)
    {
      free(v27);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

LABEL_23:
    v17 = 0;
LABEL_24:
    v31 = 0;
    v25 = 0;
    v23 = 0;
    v56 = 0;
    v57 = 0;
    v21 = 0;
    v62 = 0;
LABEL_25:
    v32 = 0;
    goto LABEL_26;
  }

  identifier = container_get_identifier();
  if (!identifier)
  {
    v29 = container_log_handle_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v46 = [(MCMCommandContainerFromPath *)self url];
      path3 = [v46 path];
      *buf = 138412290;
      v67 = path3;
      _os_log_fault_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_FAULT, "[%@] produced a container object with a NULL identifier.", buf, 0xCu);
    }

    v26 = [[MCMError alloc] initWithErrorType:11];
    goto LABEL_24;
  }

  v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:identifier];
  v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:container_object_get_uuid()];
  path = container_object_get_path();
  v57 = v19;
  if (!path)
  {
    v42 = container_log_handle_for_category();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      v50 = [(MCMCommandContainerFromPath *)self url];
      path4 = [v50 path];
      *buf = 138412290;
      v67 = path4;
      _os_log_fault_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_FAULT, "[%@] produced a container object with a NULL path.", buf, 0xCu);
    }

    v26 = [[MCMError alloc] initWithErrorType:11];
    v31 = 0;
    v25 = 0;
    v23 = 0;
    v56 = 0;
    v21 = 0;
    goto LABEL_25;
  }

  v21 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:path isDirectory:1 relativeToURL:0];
  v56 = container_get_class();
  v22 = MEMORY[0x1E12D3240](v17);
  if (!v22)
  {
    v43 = container_log_handle_for_category();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      v52 = [(MCMCommandContainerFromPath *)self url];
      path5 = [v52 path];
      *buf = 138412290;
      v67 = path5;
      _os_log_fault_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_FAULT, "[%@] produced a container object with a NULL path identifier.", buf, 0xCu);
    }

    v26 = [[MCMError alloc] initWithErrorType:11];
    v31 = 0;
    v25 = 0;
    v23 = 0;
    goto LABEL_25;
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22];
  persona_unique_string = container_get_persona_unique_string();
  if (persona_unique_string)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
  }

  else
  {
    v25 = 0;
  }

  buf[0] = 0;
  container_is_transient();
  v26 = 0;
  v31 = buf[0];
  v32 = 1;
LABEL_26:
  MEMORY[0x1E12D3190](v17);
  if (v65)
  {
    v33 = [MCMError alloc];
    v34 = [(MCMError *)v33 initWithLibsystemError:v65];

    container_error_free();
    v26 = v34;
  }

  if (v64)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    if (v64)
    {
      free(v64);
      memset_s(&v64, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = container_log_handle_for_category();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v67 = v62;
    v68 = 2048;
    v69 = v56;
    v70 = 2112;
    v71 = v26;
    _os_log_debug_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_DEBUG, "Container from path result: %@(%llu), error = %@", buf, 0x20u);
  }

  v37 = [MCMResultContainerFromPath alloc];
  if (v32)
  {
    LOBYTE(v55) = v31 & 1;
    LOBYTE(v54) = 1;
    v38 = v57;
    v39 = v62;
    v40 = [(MCMResultContainerFromPath *)v37 initWithUUID:v57 containerPathIdentifier:v23 identifier:v62 containerClass:v56 POSIXUser:posixUser personaUniqueString:v25 sandboxToken:0 existed:v54 url:v21 info:0 transient:v55 userManagedAssetsRelPath:0 creator:0 relativePath:v35];
  }

  else
  {
    v40 = [(MCMResultBase *)v37 initWithError:v26];
    v39 = v62;
    v38 = v57;
  }

  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v40];

  objc_autoreleasePoolPop(context);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];

  if ([entitlements allowed])
  {
    otherIDLookup = 1;
  }

  else
  {
    otherIDLookup = [entitlements otherIDLookup];
  }

  return otherIDLookup;
}

- (MCMCommandContainerFromPath)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MCMCommandContainerFromPath;
  v9 = [(MCMCommand *)&v13 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    v10 = [messageCopy url];
    url = v9->_url;
    v9->_url = v10;
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end