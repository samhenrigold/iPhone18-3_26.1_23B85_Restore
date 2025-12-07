@interface _EXItemProviderSandboxedResource
- (_EXItemProviderSandboxedResource)initWithCoder:(id)coder;
- (_EXItemProviderSandboxedResource)initWithContentsOfURL:(id)l auditToken:(id *)token error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolveURLAndReturnError:(id *)error;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EXItemProviderSandboxedResource

- (_EXItemProviderSandboxedResource)initWithContentsOfURL:(id)l auditToken:(id *)token error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v34.receiver = self;
  v34.super_class = _EXItemProviderSandboxedResource;
  v9 = [(_EXItemProviderSandboxedResource *)&v34 init];
  v10 = v9;
  if (v9)
  {
    [(_EXItemProviderSandboxedResource *)v9 setResourceURL:lCopy];
    resourceURL = [(_EXItemProviderSandboxedResource *)v10 resourceURL];
    v12 = *&token->var0[4];
    *v35.val = *token->var0;
    *&v35.val[4] = v12;
    v13 = resourceURL;
    v14 = _EXLegacyLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      pidp[0] = 0;
      atoken = v35;
      audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, pidp, 0, 0);
      atoken.val[0] = 138412546;
      *&atoken.val[1] = v13;
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = pidp[0];
    }

    startAccessingSecurityScopedResource = [v13 startAccessingSecurityScopedResource];
    [v13 fileSystemRepresentation];
    atoken = v35;
    v16 = sandbox_extension_issue_file_to_process();
    if (startAccessingSecurityScopedResource)
    {
      [v13 stopAccessingSecurityScopedResource];
    }

    if (v16)
    {
      v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v16 length:strlen(v16) + 1 freeWhenDone:1];
      v18 = 0;
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      path = [v13 path];
      v22 = __error();
      v23 = [v20 stringWithFormat:@"Cannot issue a sandbox extension for file %@: %s", path, strerror(*v22)];

      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A798];
      v26 = *__error();
      *pidp = *MEMORY[0x1E696A578];
      *atoken.val = v23;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&atoken forKeys:pidp count:1];
      v18 = [v24 errorWithDomain:v25 code:v26 userInfo:v27];
      v28 = v18;

      v17 = 0;
    }

    v29 = v18;
    if (v17)
    {
      [(_EXItemProviderSandboxedResource *)v10 setSandboxExtensionToken:v17];
      v19 = v10;
    }

    else
    {
      v31 = _EXLegacyLog(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [_EXItemProviderSandboxedResource initWithContentsOfURL:v10 auditToken:v29 error:v31];
      }

      if (error)
      {
        v32 = v29;
        v19 = 0;
        *error = v29;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)dealloc
{
  if ([(_EXItemProviderSandboxedResource *)self isAccessingSecurityScopedResource])
  {
    [(NSURL *)self->_resourceURL stopAccessingSecurityScopedResource];
  }

  [(_EXItemProviderSandboxedResource *)self setResourceURL:0];
  [(_EXItemProviderSandboxedResource *)self setSandboxExtensionToken:0];
  v3.receiver = self;
  v3.super_class = _EXItemProviderSandboxedResource;
  [(_EXItemProviderSandboxedResource *)&v3 dealloc];
}

- (_EXItemProviderSandboxedResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_EXItemProviderSandboxedResource *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceURL"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtensionToken"];
    v8 = _EXLegacyLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_EXItemProviderSandboxedResource initWithCoder:];
    }

    MEMORY[0x1865F45E0](v6, v7);
    -[_EXItemProviderSandboxedResource setAccessingSecurityScopedResource:](v5, "setAccessingSecurityScopedResource:", [v6 startAccessingSecurityScopedResource]);
    isAccessingSecurityScopedResource = [(_EXItemProviderSandboxedResource *)v5 isAccessingSecurityScopedResource];
    v10 = v6;
    if ((isAccessingSecurityScopedResource & 1) == 0)
    {
      v11 = _EXLegacyLog(isAccessingSecurityScopedResource);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_EXItemProviderSandboxedResource *)v6 initWithCoder:v11];
      }

      v10 = 0;
    }

    [(_EXItemProviderSandboxedResource *)v5 setResourceURL:v10];
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resourceURL = [(_EXItemProviderSandboxedResource *)self resourceURL];
  sandboxExtensionToken = [(_EXItemProviderSandboxedResource *)self sandboxExtensionToken];
  v7 = _EXLegacyLog(sandboxExtensionToken);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_EXItemProviderSandboxedResource encodeWithCoder:];
  }

  [coderCopy encodeObject:resourceURL forKey:@"resourceURL"];
  [coderCopy encodeObject:sandboxExtensionToken forKey:@"sandboxExtensionToken"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  resourceURL = [(_EXItemProviderSandboxedResource *)self resourceURL];
  v4 = [objc_alloc(objc_opt_class()) initWithContentsOfURL:resourceURL];

  return v4;
}

- (id)resolveURLAndReturnError:(id *)error
{
  resourceURL = [(_EXItemProviderSandboxedResource *)self resourceURL];
  if ([resourceURL startAccessingSecurityScopedResource])
  {
    v4 = resourceURL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithContentsOfURL:(void *)a1 auditToken:(uint64_t)a2 error:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [a1 resourceURL];
  OUTLINED_FUNCTION_0_4();
  v7 = a2;
  _os_log_error_impl(&dword_1847D1000, a3, OS_LOG_TYPE_ERROR, "Failed to issue sandbox token for URL: '%@' with error: '%@'", v6, 0x16u);
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1847D1000, a2, OS_LOG_TYPE_ERROR, "Failed to attach sandbox extension to URL: '%@'", &v2, 0xCu);
}

@end