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
  tokenCopy = token;
  lCopy = l;
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
    v10 = objc_alloc_init(MEMORY[0x277CCA9E8]);
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
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  if (isMainThread)
  {
    v4 = vm_imap_log(isMainThread);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachmentSecurityScope *)v4 startWriteAccess];
    }
  }

  if (!self->_secureWriteURL)
  {
    [(MFAttachmentSecurityScope *)self _attachSecurityScope];
    if (self->_securedWrite || (v5 = [(NSURL *)self->_securityScopedURL startAccessingSecurityScopedResource], self->_securedWrite = v5, v5))
    {
      fileCoordinator = self->_fileCoordinator;
      securityScopedURL = self->_securityScopedURL;
      v27[4] = self;
      v28 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __45__MFAttachmentSecurityScope_startWriteAccess__block_invoke;
      v27[3] = &unk_279E35820;
      [(NSFileCoordinator *)fileCoordinator coordinateWritingItemAtURL:securityScopedURL options:8 error:&v28 byAccessor:v27];
      v8 = v28;
      stringByDeletingLastPathComponent = v8;
      if (!self->_secureWriteURL)
      {
        v10 = vm_imap_log(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)stringByDeletingLastPathComponent startWriteAccess];
        }

        [(MFAttachmentSecurityScope *)self stopAccess];
      }

      goto LABEL_19;
    }

    path = [(NSURL *)self->_securityScopedURL path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [(NSURL *)self->_securityScopedURL path];
    if ([defaultManager isWritableFileAtPath:path2])
    {
    }

    else
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = [defaultManager2 isWritableFileAtPath:stringByDeletingLastPathComponent];

      if (!v15)
      {
        p_super = vm_imap_log(v16);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)&self->_securityScopedURL startWriteAccess:v19];
        }

        goto LABEL_18;
      }
    }

    v17 = self->_securityScopedURL;
    p_super = &self->_secureWriteURL->super;
    self->_secureWriteURL = v17;
LABEL_18:

LABEL_19:
  }

  secureWriteURL = self->_secureWriteURL;

  return secureWriteURL;
}

- (id)startReadAccess
{
  v42 = *MEMORY[0x277D85DE8];
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  if (isMainThread)
  {
    v4 = vm_imap_log(isMainThread);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachmentSecurityScope *)v4 startWriteAccess];
    }
  }

  if (!self->_secureReadURL)
  {
    [(MFAttachmentSecurityScope *)self _attachSecurityScope];
    if (self->_securedRead || (v5 = [(NSURL *)self->_securityScopedURL startAccessingSecurityScopedResource], self->_securedRead = v5, v5))
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__4;
      v39 = __Block_byref_object_dispose__4;
      v40 = 0;
      securityScopedURL = self->_securityScopedURL;
      obj = 0;
      v7 = [(NSURL *)securityScopedURL checkPromisedItemIsReachableAndReturnError:&obj];
      objc_storeStrong(&v40, obj);
      if (v7)
      {
        fileCoordinator = self->_fileCoordinator;
        v10 = self->_securityScopedURL;
        v12 = (v36 + 5);
        v11 = v36[5];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __44__MFAttachmentSecurityScope_startReadAccess__block_invoke;
        v32[3] = &unk_279E35848;
        v32[4] = self;
        v32[5] = &v35;
        v33 = v11;
        [(NSFileCoordinator *)fileCoordinator coordinateReadingItemAtURL:v10 options:8 error:&v33 byAccessor:v32];
        objc_storeStrong(v12, v33);
      }

      if (!self->_secureReadURL)
      {
        v13 = vm_imap_log(v8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          vf_publicDescription = [v36[5] vf_publicDescription];
          [(MFAttachmentSecurityScope *)vf_publicDescription startReadAccess];
        }

        [(MFAttachmentSecurityScope *)self stopAccess];
      }

      _Block_object_dispose(&v35, 8);
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [(NSURL *)self->_securityScopedURL path];
      v19 = [defaultManager isReadableFileAtPath:path];

      if (v19)
      {
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__4;
        v39 = __Block_byref_object_dispose__4;
        v40 = 0;
        v21 = self->_fileCoordinator;
        v22 = self->_securityScopedURL;
        v30[5] = &v35;
        v31 = 0;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __44__MFAttachmentSecurityScope_startReadAccess__block_invoke_69;
        v30[3] = &unk_279E35848;
        v30[4] = self;
        [(NSFileCoordinator *)v21 coordinateReadingItemAtURL:v22 options:8 error:&v31 byAccessor:v30];
        objc_storeStrong(&v40, v31);
        _Block_object_dispose(&v35, 8);
      }

      else
      {
        v23 = vm_imap_log(v20);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)&self->_securityScopedURL startReadAccess:v23];
        }
      }
    }
  }

  secureReadURL = self->_secureReadURL;

  return secureReadURL;
}

void __44__MFAttachmentSecurityScope_startReadAccess__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v3 _temporaryReadURL:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
}

void __44__MFAttachmentSecurityScope_startReadAccess__block_invoke_69(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v3 _temporaryReadURL:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
}

- (id)_temporaryReadURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = NSTemporaryDirectory();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 stringByAppendingPathComponent:uUIDString];

  lastPathComponent = [lCopy lastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(uUIDString) = [defaultManager createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:error];

  if (uUIDString)
  {
    v13 = [v9 stringByAppendingPathComponent:lastPathComponent];
    v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v13 isDirectory:0];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [defaultManager2 linkItemAtURL:lCopy toURL:v14 error:error];

    if (v16)
    {
      goto LABEL_9;
    }

    v18 = vm_imap_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentSecurityScope *)v14 _temporaryReadURL:error error:v18];
    }

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager3 removeItemAtPath:v9 error:0];
  }

  else
  {
    v13 = vm_imap_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentSecurityScope *)v9 _temporaryReadURL:v13 error:v20, v21, v22, v23, v24, v25];
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)_removeTemporaryReadURL
{
  *v3 = 138412546;
  *&v3[4] = self;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_2720B1000, a2, a3, "Failed to remove temporary read directory [%@] error [%@]", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
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
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v4 length:strlen(v4) + 1];
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
    MEMORY[0x2743C28B0](securityScopedURL, securityScopeToken2);
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
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:secureReadURL options:3 error:&v7];

  return v5;
}

- (BOOL)isReadable
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
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
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [(NSURL *)self->_secureReadURL path];
    [defaultManager fileExistsAtPath:path isDirectory:&v8];

    v4 = v8;
  }

  return v4 & 1;
}

- (void)startWriteAccess
{
  v6 = *MEMORY[0x277D85DE8];
  vf_publicDescription = [self vf_publicDescription];
  v4 = 138543362;
  v5 = vf_publicDescription;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "#Attachments Error accessing secure write URL [%{public}@]", &v4, 0xCu);
}

- (void)startReadAccess
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_2720B1000, log, OS_LOG_TYPE_ERROR, "#Attachments Error accessing secure read URL [%{public}@]", buf, 0xCu);
}

- (void)_temporaryReadURL:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_2720B1000, a2, a3, "#Attachments Failed to create temporary read directory [%@]", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_temporaryReadURL:(os_log_t)log error:.cold.2(uint64_t a1, id *a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = [*a2 vf_publicDescription];
  }

  else
  {
    v6 = @"unknown";
  }

  v7 = 138412546;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_2720B1000, log, OS_LOG_TYPE_ERROR, "#Attachments Failed to create temporary read URL [%@] error [%{public}@]", &v7, 0x16u);
  if (a2)
  {
  }
}

@end