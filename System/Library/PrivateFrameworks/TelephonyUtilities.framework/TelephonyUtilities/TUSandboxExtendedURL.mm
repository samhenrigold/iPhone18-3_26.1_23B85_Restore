@interface TUSandboxExtendedURL
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSandboxExtendedURL:(id)l;
- (NSURL)URL;
- (TUSandboxExtendedURL)init;
- (TUSandboxExtendedURL)initWithCoder:(id)coder;
- (TUSandboxExtendedURL)initWithURL:(id)l;
- (TUSandboxExtendedURL)initWithURL:(id)l withExtensionType:(int64_t)type;
- (id)description;
- (unint64_t)hash;
- (void)URL;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSandboxExtendedURL

- (TUSandboxExtendedURL)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = TUSandboxExtendedURL;
  v6 = [(TUSandboxExtendedURL *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
  }

  return v7;
}

- (TUSandboxExtendedURL)initWithURL:(id)l withExtensionType:(int64_t)type
{
  v5 = [(TUSandboxExtendedURL *)self initWithURL:l];
  if (v5)
  {
    if (!type)
    {
      v6 = MEMORY[0x1E69E9BA8];
      goto LABEL_6;
    }

    if (type == 1)
    {
      v6 = MEMORY[0x1E69E9BB0];
LABEL_6:
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v6];
      sandboxExtensionClass = v5->_sandboxExtensionClass;
      v5->_sandboxExtensionClass = v7;
    }
  }

  return v5;
}

- (TUSandboxExtendedURL)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUSandboxExtendedURL.m" lineNumber:52 description:{@"%s is not available. Use a designated initializer instead.", "-[TUSandboxExtendedURL init]"}];

  return 0;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(self + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "Releasing sandbox handle for URL: %@", &v3, 0xCu);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  URL = self->_URL;
  sandboxExtensionClass = [(TUSandboxExtendedURL *)self sandboxExtensionClass];
  sandboxExtensionToken = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
  v8 = [v3 stringWithFormat:@"<%@ %p URL=%@ sandboxExtensionClass=%@ sandboxExtensionToken=%@ sandboxExtensionHandle=%lld>", v4, self, URL, sandboxExtensionClass, sandboxExtensionToken, -[TUSandboxExtendedURL sandboxExtensionHandle](self, "sandboxExtensionHandle")];

  return v8;
}

- (NSURL)URL
{
  v15 = *MEMORY[0x1E69E9840];
  sandboxExtensionToken = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
  if (sandboxExtensionToken)
  {
    v4 = sandboxExtensionToken;
    sandboxExtensionHandle = [(TUSandboxExtendedURL *)self sandboxExtensionHandle];

    if (!sandboxExtensionHandle)
    {
      sandboxExtensionToken2 = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
      [sandboxExtensionToken2 UTF8String];
      [(TUSandboxExtendedURL *)self setSandboxExtensionHandle:sandbox_extension_consume()];

      sandboxExtensionHandle2 = [(TUSandboxExtendedURL *)self sandboxExtensionHandle];
      v8 = TUDefaultLog(sandboxExtensionHandle2);
      v9 = v8;
      if (sandboxExtensionHandle2 < 0)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(TUSandboxExtendedURL *)self URL];
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        URL = self->_URL;
        v13 = 138412290;
        v14 = URL;
        _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Successfully consumed sandbox extension for URL %@", &v13, 0xCu);
      }

      [(TUSandboxExtendedURL *)self setSandboxExtensionToken:0];
    }
  }

  v11 = self->_URL;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUSandboxExtendedURL *)self isEqualToSandboxExtendedURL:equalCopy];

  return v5;
}

- (BOOL)isEqualToSandboxExtendedURL:(id)l
{
  lCopy = l;
  v5 = [(TUSandboxExtendedURL *)self URL];
  v6 = [lCopy URL];
  if (TUObjectsAreEqualOrNil(v5, v6))
  {
    sandboxExtensionToken = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
    sandboxExtensionToken2 = [lCopy sandboxExtensionToken];
    if (TUStringsAreEqualOrNil(sandboxExtensionToken, sandboxExtensionToken2))
    {
      sandboxExtensionHandle = [(TUSandboxExtendedURL *)self sandboxExtensionHandle];
      v10 = sandboxExtensionHandle == [lCopy sandboxExtensionHandle];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(TUSandboxExtendedURL *)self URL];
  v4 = [v3 hash];
  sandboxExtensionToken = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
  v6 = [sandboxExtensionToken hash] ^ v4;
  sandboxExtensionHandle = [(TUSandboxExtendedURL *)self sandboxExtensionHandle];

  return v6 ^ sandboxExtensionHandle;
}

- (TUSandboxExtendedURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector("URL");
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = [(TUSandboxExtendedURL *)self initWithURL:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sandboxExtensionToken);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    sandboxExtensionToken = v8->_sandboxExtensionToken;
    v8->_sandboxExtensionToken = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUSandboxExtendedURL *)self URL];
  v6 = NSStringFromSelector("URL");
  [coderCopy encodeObject:v5 forKey:v6];

  sandboxExtensionClass = [(TUSandboxExtendedURL *)self sandboxExtensionClass];

  if (sandboxExtensionClass)
  {
    v8 = [(TUSandboxExtendedURL *)self pid];
    sandboxExtensionClass2 = [(TUSandboxExtendedURL *)self sandboxExtensionClass];
    [sandboxExtensionClass2 UTF8String];
    v10 = [(TUSandboxExtendedURL *)self URL];
    path = [v10 path];
    [path fileSystemRepresentation];
    if (v8)
    {
      [(TUSandboxExtendedURL *)self pid];
      v12 = sandbox_extension_issue_file_to_process_by_pid();
    }

    else
    {
      v12 = sandbox_extension_issue_file();
    }

    v13 = v12;

    if (v13)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
      v16 = NSStringFromSelector(sel_sandboxExtensionToken);
      [coderCopy encodeObject:v15 forKey:v16];

      free(v13);
    }

    else
    {
      v17 = TUDefaultLog(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [TUSandboxExtendedURL encodeWithCoder:?];
      }
    }
  }
}

- (void)URL
{
  sandboxExtensionToken = [self sandboxExtensionToken];
  *v9 = 138412546;
  *&v9[4] = sandboxExtensionToken;
  *&v9[12] = 2048;
  *&v9[14] = [self sandboxExtensionHandle];
  OUTLINED_FUNCTION_1_2(&dword_1956FD000, v3, v4, "Unable to consume sandbox extension with token %@, received handle %lld", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

- (void)encodeWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 sandboxExtensionClass];
  v3 = [a1 URL];
  *v10 = 138412546;
  *&v10[4] = v2;
  *&v10[12] = 2112;
  *&v10[14] = v3;
  OUTLINED_FUNCTION_1_2(&dword_1956FD000, v4, v5, "Unable to issue sandbox extension of class %@ for URL %@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

@end