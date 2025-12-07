@interface MFAttachmentSecurityScope
+ (id)securityScopedURL:(id)l;
+ (id)securityScopedURL:(id)l withToken:(id)token;
- (BOOL)isBundle;
- (BOOL)isReadable;
- (MFAttachmentSecurityScope)initWithSecurityScopedURL:(id)l withToken:(id)token;
- (id)_temporaryReadURL:(id)l error:(id *)error;
- (id)data;
- (id)securityScopeToken;
- (id)startReadAccess;
- (id)startWriteAccess;
- (void)_attachSecurityScope;
- (void)_removeTemporaryReadURL;
- (void)dealloc;
- (void)startReadAccess;
- (void)startWriteAccess;
- (void)stopAccess;
@end

@implementation MFAttachmentSecurityScope

+ (id)securityScopedURL:(id)l
{
  lCopy = l;
  v4 = [[MFAttachmentSecurityScope alloc] initWithSecurityScopedURL:lCopy withToken:0];

  return v4;
}

+ (id)securityScopedURL:(id)l withToken:(id)token
{
  lCopy = l;
  tokenCopy = token;
  v7 = [[MFAttachmentSecurityScope alloc] initWithSecurityScopedURL:lCopy withToken:tokenCopy];

  return v7;
}

- (MFAttachmentSecurityScope)initWithSecurityScopedURL:(id)l withToken:(id)token
{
  lCopy = l;
  tokenCopy = token;
  v13.receiver = self;
  v13.super_class = MFAttachmentSecurityScope;
  v9 = [(MFAttachmentSecurityScope *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696ABF8]);
    fileCoordinator = v9->_fileCoordinator;
    v9->_fileCoordinator = v10;

    objc_storeStrong(&v9->_securityScopedURL, l);
    objc_storeStrong(&v9->_securityScopeToken, token);
  }

  return v9;
}

- (void)dealloc
{
  [(MFAttachmentSecurityScope *)self stopAccess];
  v3.receiver = self;
  v3.super_class = MFAttachmentSecurityScope;
  [(MFAttachmentSecurityScope *)&v3 dealloc];
}

- (id)startWriteAccess
{
  v25[4] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachmentSecurityScope *)v3 startWriteAccess];
    }
  }

  if (!self->_secureWriteURL)
  {
    [(MFAttachmentSecurityScope *)self _attachSecurityScope];
    if (self->_securedWrite || (v4 = [(NSURL *)self->_securityScopedURL startAccessingSecurityScopedResource], self->_securedWrite = v4, v4))
    {
      fileCoordinator = self->_fileCoordinator;
      securityScopedURL = self->_securityScopedURL;
      v24[4] = self;
      v25[0] = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __45__MFAttachmentSecurityScope_startWriteAccess__block_invoke;
      v24[3] = &unk_1E7AA5050;
      [(NSFileCoordinator *)fileCoordinator coordinateWritingItemAtURL:securityScopedURL options:8 error:v25 byAccessor:v24];
      stringByDeletingLastPathComponent = v25[0];
      if (!self->_secureWriteURL)
      {
        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [stringByDeletingLastPathComponent ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [MFAttachmentSecurityScope startWriteAccess];
        }

        [(MFAttachmentSecurityScope *)self stopAccess];
      }

      goto LABEL_17;
    }

    path = [(NSURL *)self->_securityScopedURL path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path2 = [(NSURL *)self->_securityScopedURL path];
    if ([defaultManager isWritableFileAtPath:path2])
    {
    }

    else
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [defaultManager2 isWritableFileAtPath:stringByDeletingLastPathComponent];

      if (!v13)
      {
        p_super = MFLogGeneral();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)&self->_securityScopedURL startWriteAccess:v18];
        }

        goto LABEL_16;
      }
    }

    v14 = self->_securityScopedURL;
    p_super = &self->_secureWriteURL->super;
    self->_secureWriteURL = v14;
LABEL_16:

LABEL_17:
  }

  secureWriteURL = self->_secureWriteURL;

  return secureWriteURL;
}

- (id)startReadAccess
{
  v36[4] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachmentSecurityScope *)v3 startWriteAccess];
    }
  }

  if (!self->_secureReadURL)
  {
    [(MFAttachmentSecurityScope *)self _attachSecurityScope];
    if (self->_securedRead || (v4 = [(NSURL *)self->_securityScopedURL startAccessingSecurityScopedResource], self->_securedRead = v4, v4))
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__9;
      v35 = __Block_byref_object_dispose__9;
      v36[0] = 0;
      securityScopedURL = self->_securityScopedURL;
      obj = 0;
      v6 = [(NSURL *)securityScopedURL checkPromisedItemIsReachableAndReturnError:&obj];
      objc_storeStrong(v36, obj);
      if (v6)
      {
        fileCoordinator = self->_fileCoordinator;
        v8 = self->_securityScopedURL;
        v10 = (v32 + 5);
        v9 = v32[5];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __44__MFAttachmentSecurityScope_startReadAccess__block_invoke;
        v28[3] = &unk_1E7AA5078;
        v28[4] = self;
        v28[5] = &v31;
        v29 = v9;
        [(NSFileCoordinator *)fileCoordinator coordinateReadingItemAtURL:v8 options:8 error:&v29 byAccessor:v28];
        objc_storeStrong(v10, v29);
      }

      if (!self->_secureReadURL)
      {
        v11 = MFLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [v32[5] ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [MFAttachmentSecurityScope startReadAccess];
        }

        [(MFAttachmentSecurityScope *)self stopAccess];
      }

      _Block_object_dispose(&v31, 8);
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [(NSURL *)self->_securityScopedURL path];
      v16 = [defaultManager isReadableFileAtPath:path];

      if (v16)
      {
        v31 = 0;
        v32 = &v31;
        v33 = 0x3032000000;
        v34 = __Block_byref_object_copy__9;
        v35 = __Block_byref_object_dispose__9;
        v36[0] = 0;
        v17 = self->_fileCoordinator;
        v18 = self->_securityScopedURL;
        v26[5] = &v31;
        v27 = 0;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __44__MFAttachmentSecurityScope_startReadAccess__block_invoke_129;
        v26[3] = &unk_1E7AA5078;
        v26[4] = self;
        [(NSFileCoordinator *)v17 coordinateReadingItemAtURL:v18 options:8 error:&v27 byAccessor:v26];
        objc_storeStrong(v36, v27);
        _Block_object_dispose(&v31, 8);
      }

      else
      {
        v19 = MFLogGeneral();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)&self->_securityScopedURL startReadAccess:v19];
        }
      }
    }
  }

  secureReadURL = self->_secureReadURL;

  return secureReadURL;
}

void __44__MFAttachmentSecurityScope_startReadAccess__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v4 _temporaryReadURL:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
}

void __44__MFAttachmentSecurityScope_startReadAccess__block_invoke_129(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v4 _temporaryReadURL:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
}

- (id)_temporaryReadURL:(id)l error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 stringByAppendingPathComponent:uUIDString];

  lastPathComponent = [lCopy lastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(uUIDString) = [defaultManager createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:error];

  if (uUIDString)
  {
    v12 = [v9 stringByAppendingPathComponent:lastPathComponent];
    v13 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v12 isDirectory:0];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [defaultManager2 linkItemAtURL:lCopy toURL:v13 error:error];

    if (v15)
    {
      goto LABEL_8;
    }

    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        ef_publicDescription = [*error ef_publicDescription];
      }

      else
      {
        ef_publicDescription = @"unknown";
      }

      v20 = 138412546;
      v21 = v13;
      v22 = 2114;
      v23 = ef_publicDescription;
      _os_log_error_impl(&dword_1B0389000, v16, OS_LOG_TYPE_ERROR, "#Attachments Failed to create temporary read URL [%@] error [%{public}@]", &v20, 0x16u);
      if (error)
      {
      }
    }

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager3 removeItemAtPath:v9 error:0];
  }

  else
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MFAttachmentSecurityScope _temporaryReadURL:error:];
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)_removeTemporaryReadURL
{
  *v3 = 138412546;
  *&v3[4] = *self;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_8(&dword_1B0389000, a2, a3, "Failed to remove temporary read URL [%@] error [%@]", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)stopAccess
{
  if (self->_securedRead)
  {
    [(NSURL *)self->_securityScopedURL stopAccessingSecurityScopedResource];
  }

  if (self->_secureReadURL)
  {
    [(MFAttachmentSecurityScope *)self _removeTemporaryReadURL];
    secureReadURL = self->_secureReadURL;
    self->_secureReadURL = 0;

    self->_securedRead = 0;
  }

  if (self->_securedWrite)
  {
    [(NSURL *)self->_securityScopedURL stopAccessingSecurityScopedResource];
  }

  secureWriteURL = self->_secureWriteURL;
  if (secureWriteURL)
  {
    self->_secureWriteURL = 0;

    self->_securedWrite = 0;
  }
}

- (id)securityScopeToken
{
  if (!self->_securityScopeToken)
  {
    path = [(NSURL *)self->_securityScopedURL path];
    [path fileSystemRepresentation];
    v4 = sandbox_extension_issue_file();

    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v4 length:strlen(v4) + 1];
      securityScopeToken = self->_securityScopeToken;
      self->_securityScopeToken = v5;
    }
  }

  v7 = self->_securityScopeToken;

  return v7;
}

- (void)_attachSecurityScope
{
  securityScopeToken = [(MFAttachmentSecurityScope *)self securityScopeToken];

  if (securityScopeToken)
  {
    securityScopedURL = self->_securityScopedURL;
    securityScopeToken2 = [(MFAttachmentSecurityScope *)self securityScopeToken];
    MEMORY[0x1B272A5A0](securityScopedURL);
  }
}

- (id)data
{
  secureReadURL = self->_secureReadURL;
  if (!secureReadURL)
  {
    startReadAccess = [(MFAttachmentSecurityScope *)self startReadAccess];
    secureReadURL = self->_secureReadURL;
  }

  v7 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:secureReadURL options:3 error:&v7];

  return v5;
}

- (BOOL)isReadable
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_securityScopedURL path];
  v5 = [defaultManager isReadableFileAtPath:path];

  if (v5)
  {
    return 1;
  }

  securityScopedURL = self->_securityScopedURL;
  v9 = 0;
  v6 = [(NSURL *)securityScopedURL checkPromisedItemIsReachableAndReturnError:&v9];

  return v6;
}

- (BOOL)isBundle
{
  v8 = 0;
  isReadable = [(MFAttachmentSecurityScope *)self isReadable];
  v4 = 0;
  if (isReadable)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [(NSURL *)self->_secureReadURL path];
    [defaultManager fileExistsAtPath:path isDirectory:&v8];

    v4 = v8;
  }

  return v4 & 1;
}

- (void)startWriteAccess
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)startReadAccess
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end