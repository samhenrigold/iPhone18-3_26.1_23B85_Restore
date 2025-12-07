@interface PFSandboxExtendedURL
+ (id)sandboxExtendedURLForURL:(id)l options:(unsigned __int8)options auditToken:(id)token error:(id *)error;
+ (id)temporaryReadonlySandboxExtendedURLForAuditToken:(id)token error:(id *)error;
+ (id)temporaryReadwriteSandboxExtendedURLForAuditToken:(id)token error:(id *)error;
- (BOOL)_consumeSandboxExtensionHandleForXPCObject:(id)object context:(id)context;
- (BOOL)isValid;
- (BOOL)isValidWithError:(id *)error;
- (PFSandboxExtendedURL)initWithBSXPCCoder:(id)coder;
- (PFSandboxExtendedURL)initWithCoder:(id)coder;
- (PFSandboxExtendedURL)initWithURL:(id)l options:(unsigned __int8)options auditToken:(id)token error:(id *)error;
- (id)_issueSandboxExtensionTokenWithContext:(id)context;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation PFSandboxExtendedURL

+ (id)sandboxExtendedURLForURL:(id)l options:(unsigned __int8)options auditToken:(id)token error:(id *)error
{
  optionsCopy = options;
  tokenCopy = token;
  lCopy = l;
  v11 = [[PFSandboxExtendedURL alloc] initWithURL:lCopy options:optionsCopy auditToken:tokenCopy error:error];

  return v11;
}

+ (id)temporaryReadwriteSandboxExtendedURLForAuditToken:(id)token error:(id *)error
{
  v5 = MEMORY[0x1E695DFF8];
  tokenCopy = token;
  v7 = [v5 pf_temporaryDirectoryURLWithBasenamePrefix:@"SandboxExtendedURLRW"];
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PFSandboxExtendedURL_temporaryReadwriteSandboxExtendedURLForAuditToken_error___block_invoke;
  block[3] = &unk_1E8189BF8;
  v13 = v7;
  v9 = v7;
  dispatch_async(v8, block);

  v10 = [[PFSandboxExtendedURL alloc] initWithURL:v9 options:7 auditToken:tokenCopy error:error];

  return v10;
}

void __80__PFSandboxExtendedURL_temporaryReadwriteSandboxExtendedURLForAuditToken_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v8 = 0;
  v3 = [v1 pf_markPurgableInOneHourWithError:&v8];
  v4 = v8;
  v5 = PFLogPosterContents(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *v2;
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1C269D000, v6, OS_LOG_TYPE_INFO, "Set purgability on URL %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __80__PFSandboxExtendedURL_temporaryReadwriteSandboxExtendedURLForAuditToken_error___block_invoke_cold_1(v2, v4, v6);
  }
}

+ (id)temporaryReadonlySandboxExtendedURLForAuditToken:(id)token error:(id *)error
{
  v5 = MEMORY[0x1E695DFF8];
  tokenCopy = token;
  v7 = [v5 pf_temporaryDirectoryURLWithBasenamePrefix:@"SandboxExtendedURLRO"];
  [v7 pf_markPurgableInOneHourWithError:0];
  v8 = [[PFSandboxExtendedURL alloc] initWithURL:v7 options:3 auditToken:tokenCopy error:error];

  return v8;
}

- (PFSandboxExtendedURL)initWithURL:(id)l options:(unsigned __int8)options auditToken:(id)token error:(id *)error
{
  lCopy = l;
  tokenCopy = token;
  if (![lCopy checkResourceIsReachableAndReturnError:error])
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_12;
  }

  if ([tokenCopy isInvalid])
  {
    if (error)
    {
      v13 = PFFunctionNameForAddress(v6);
      v16 = v13;
      if (v13)
      {
        v17 = v13;
      }

      else
      {
        v17 = @"(Unknown Location)";
      }

      *error = PFGeneralErrorFromObjectWithLocalizedFailureReason(tokenCopy, v17, 0, 0, 0, @"Audit token is invalid.", v14, v15, 0);
    }

    goto LABEL_8;
  }

  v26.receiver = self;
  v26.super_class = PFSandboxExtendedURL;
  v19 = [(PFSandboxExtendedURL *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sandboxExtensionAuditToken, token);
    v21 = [lCopy copy];
    sandboxExtensionURL = v20->_sandboxExtensionURL;
    v20->_sandboxExtensionURL = v21;

    v20->_options = options;
    v23 = objc_opt_new();
    invalidationSignal = v20->_invalidationSignal;
    v20->_invalidationSignal = v23;
  }

  self = v20;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (void)dealloc
{
  if ((self->_options & 2) != 0)
  {
    [(PFSandboxExtendedURL *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = PFSandboxExtendedURL;
  [(PFSandboxExtendedURL *)&v3 dealloc];
}

- (BOOL)isValid
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) != 0)
  {
    return 0;
  }

  if (!self->_sandboxExtensionAuditToken)
  {
    return self->_sandboxExtensionHandle != -1;
  }

  sandboxExtensionURL = self->_sandboxExtensionURL;

  return [(NSURL *)sandboxExtensionURL checkResourceIsReachableAndReturnError:0];
}

- (void)invalidate
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1C269D000, a2, OS_LOG_TYPE_DEBUG, "purged contents : %{public}@", &v3, 0xCu);
}

- (PFSandboxExtendedURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PFSandboxExtendedURL;
  v5 = [(PFSandboxExtendedURL *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_sandboxExtensionHandle = -1;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sandboxExtensionURL"];
    sandboxExtensionURL = v6->_sandboxExtensionURL;
    v6->_sandboxExtensionURL = v7;

    v9 = objc_opt_new();
    invalidationSignal = v6->_invalidationSignal;
    v6->_invalidationSignal = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9F10] forKey:@"sandboxToken"];
      v12 = [(PFSandboxExtendedURL *)v6 _consumeSandboxExtensionHandleForXPCObject:v11 context:@"initWithCoder"];

      if (!v12)
      {
        v13 = 0;
        goto LABEL_6;
      }
    }

    v6->_options = 2;
  }

  v13 = v6;
LABEL_6:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [coderCopy encodeObject:self->_sandboxExtensionURL forKey:@"_sandboxExtensionURL"];
    v5 = [(PFSandboxExtendedURL *)self _issueSandboxExtensionTokenWithContext:@"encodeWithCoder"];
    if (v5)
    {
      [coderCopy encodeXPCObject:v5 forKey:@"sandboxToken"];
    }
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v6 stringWithFormat:@"<%@:%p> can only be encoded by %@ rather than %@ : %@", v8, self, v10, v12, self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(PFSandboxExtendedURL *)a2 encodeWithCoder:v13];
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
  }
}

- (BOOL)isValidWithError:(id *)error
{
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] pf_errorWithCode:2];
    }

    return 0;
  }

  else
  {
    sandboxExtensionURL = self->_sandboxExtensionURL;

    return [(NSURL *)sandboxExtensionURL checkResourceIsReachableAndReturnError:error];
  }
}

- (PFSandboxExtendedURL)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PFSandboxExtendedURL;
  v5 = [(PFSandboxExtendedURL *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_sandboxExtensionHandle = -1;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sandboxExtensionURL"];
    sandboxExtensionURL = v6->_sandboxExtensionURL;
    v6->_sandboxExtensionURL = v7;

    v9 = objc_opt_new();
    invalidationSignal = v6->_invalidationSignal;
    v6->_invalidationSignal = v9;

    v11 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9F10] forKey:@"sandboxToken"];
    if (![(PFSandboxExtendedURL *)v6 _consumeSandboxExtensionHandleForXPCObject:v11 context:@"BSXPC"])
    {

      v12 = 0;
      goto LABEL_6;
    }

    v6->_options = 2;
  }

  v12 = v6;
LABEL_6:

  return v12;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_sandboxExtensionURL forKey:@"_sandboxExtensionURL"];
  v4 = [(PFSandboxExtendedURL *)self _issueSandboxExtensionTokenWithContext:@"BSXPC"];
  if (v4)
  {
    [coderCopy encodeXPCObject:v4 forKey:@"sandboxToken"];
  }
}

- (id)_issueSandboxExtensionTokenWithContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  p_sandboxExtensionURL = &self->_sandboxExtensionURL;
  sandboxExtensionAuditToken = self->_sandboxExtensionAuditToken;
  [(NSURL *)self->_sandboxExtensionURL fileSystemRepresentation];
  if (sandboxExtensionAuditToken)
  {
    v7 = self->_sandboxExtensionAuditToken;
    if (v7)
    {
      objc_msgSend_realToken(v7);
    }

    else
    {
      memset(v17, 0, 32);
    }

    v8 = sandbox_extension_issue_file_to_process();
    if (v8)
    {
      goto LABEL_10;
    }

    v12 = PFLogPosterContents(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [(BSAuditToken *)self->_sandboxExtensionAuditToken pid];
      sandboxExtensionURL = self->_sandboxExtensionURL;
      v16 = *__error();
      *v17 = 138544130;
      *&v17[4] = contextCopy;
      *&v17[12] = 1024;
      *&v17[14] = v14;
      *&v17[18] = 2114;
      *&v17[20] = sandboxExtensionURL;
      *&v17[28] = 1024;
      *&v17[30] = v16;
      _os_log_error_impl(&dword_1C269D000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] failed to issue sandbox extension to PID %d for path %{public}@: %{darwin.errno}d", v17, 0x22u);
    }
  }

  else
  {
    v8 = sandbox_extension_issue_file();
    if (v8)
    {
LABEL_10:
      v10 = v8;
      v11 = xpc_string_create(v8);
      free(v10);
      goto LABEL_15;
    }

    v9 = PFLogPosterContents(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PFSandboxExtendedURL *)contextCopy _issueSandboxExtensionTokenWithContext:?];
    }
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (BOOL)_consumeSandboxExtensionHandleForXPCObject:(id)object context:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v8 = contextCopy;
  if (!objectCopy)
  {
    v11 = PFLogPosterContents(contextCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PFSandboxExtendedURL _consumeSandboxExtensionHandleForXPCObject:context:];
    }

    goto LABEL_11;
  }

  if (!xpc_string_get_string_ptr(objectCopy))
  {
    Class = object_getClass(objectCopy);
    name = xpc_type_get_name(Class);
    v11 = PFLogPosterContents(name);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      sandboxExtensionURL = self->_sandboxExtensionURL;
      v22 = 138544386;
      v23 = v8;
      v24 = 2080;
      v25 = name;
      v26 = 2112;
      *v27 = objectCopy;
      *&v27[8] = 2114;
      *&v27[10] = v15;
      *&v27[18] = 2114;
      *&v27[20] = sandboxExtensionURL;
      _os_log_error_impl(&dword_1C269D000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] failed to decode sandbox token: Bad XPC object: %s %@ : <%{public}@ path=%{public}@>", &v22, 0x34u);
    }

    goto LABEL_11;
  }

  v9 = sandbox_extension_consume();
  self->_sandboxExtensionHandle = v9;
  if (v9 == -1)
  {
    v11 = PFLogPosterContents(-1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = *__error();
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = self->_sandboxExtensionURL;
      v22 = 138544386;
      v23 = v8;
      v24 = 2112;
      v25 = objectCopy;
      v26 = 1024;
      *v27 = v18;
      *&v27[4] = 2114;
      *&v27[6] = v20;
      *&v27[14] = 2114;
      *&v27[16] = v21;
      _os_log_error_impl(&dword_1C269D000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] failed to consume sandboxToken %@ with %{darwin.errno}d : <%{public}@ path=%{public}@>", &v22, 0x30u);
    }

LABEL_11:

    v10 = 0;
    goto LABEL_12;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

void __80__PFSandboxExtendedURL_temporaryReadwriteSandboxExtendedURLForAuditToken_error___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, a2, a3, "Unable to set purgability on URL %@: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PFSandboxExtendedURL.m";
  v16 = 1024;
  v17 = 157;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)_issueSandboxExtensionTokenWithContext:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  *v8 = 138543874;
  *&v8[4] = a1;
  *&v8[12] = 2114;
  *&v8[14] = *a2;
  *&v8[22] = 1024;
  v9 = *__error();
  OUTLINED_FUNCTION_2_7(&dword_1C269D000, v2, v3, "[%{public}@] failed to issue sandbox extension for path %{public}@: %{darwin.errno}d", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], v9);
}

@end