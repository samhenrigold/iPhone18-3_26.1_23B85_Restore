@interface EFSandboxedURLWrapper
+ (OS_os_log)log;
- (EFSandboxedURLWrapper)initWithCoder:(id)coder;
- (EFSandboxedURLWrapper)initWithFileURL:(id)l readOnly:(BOOL)only;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EFSandboxedURLWrapper

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EFSandboxedURLWrapper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

void __28__EFSandboxedURLWrapper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_4;
  log_log_4 = v1;
}

- (EFSandboxedURLWrapper)initWithFileURL:(id)l readOnly:(BOOL)only
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v14.receiver = self;
    v14.super_class = EFSandboxedURLWrapper;
    v7 = [(EFSandboxedURLWrapper *)&v14 init];
    if (v7)
    {
      v8 = objc_alloc_init(EFDeallocInvocationToken);
      invocable = v7->_invocable;
      v7->_invocable = v8;

      v10 = [lCopy copy];
      url = v7->_url;
      v7->_url = v10;

      v7->_readOnly = only;
      objc_setAssociatedObject(v7->_url, v7, v7->_invocable, 0x301);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EFSandboxedURLWrapper *)self url];
  isReadOnly = [(EFSandboxedURLWrapper *)self isReadOnly];
  sandboxToken = [(EFSandboxedURLWrapper *)self sandboxToken];
  v8 = [v3 stringWithFormat:@"<%@: %p> url=%@, readOnly=%d, token=%@, invocable=%@", v4, self, v5, isReadOnly, sandboxToken, self->_invocable];

  return v8;
}

- (NSString)ef_publicDescription
{
  v3 = +[EFDevice currentDevice];
  isInternal = [v3 isInternal];

  if (isInternal)
  {
    v5 = [(EFSandboxedURLWrapper *)self debugDescription];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = EFSandboxedURLWrapper;
    v6 = [(EFSandboxedURLWrapper *)&v10 description];
    sandboxToken = [(EFSandboxedURLWrapper *)self sandboxToken];
    v8 = @"YES";
    if (!sandboxToken)
    {
      v8 = @"NO";
    }

    v5 = [v6 stringByAppendingFormat:@" has-token=%@", v8];
  }

  return v5;
}

- (EFSandboxedURLWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_url"];
  v6 = -[EFSandboxedURLWrapper initWithFileURL:readOnly:](self, "initWithFileURL:readOnly:", v5, [coderCopy decodeBoolForKey:@"EFPropertyKey_readOnly"]);
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kEFSandboxExtensionToken"];
    sandboxToken = v6->_sandboxToken;
    v6->_sandboxToken = v7;

    v9 = v6->_sandboxToken;
    if (v9)
    {
      MEMORY[0x1C6956F90](v6->_url, [(NSString *)v9 dataUsingEncoding:4]);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v32 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(EFSandboxedURLWrapper *)self url];
  [coderCopy encodeObject:v5 forKey:@"EFPropertyKey_url"];

  [coderCopy encodeBool:-[EFSandboxedURLWrapper isReadOnly](self forKey:{"isReadOnly"), @"EFPropertyKey_readOnly"}];
  v29 = 0u;
  v30 = 0u;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    connection = [coderCopy connection];
    v7 = connection;
    if (connection)
    {
      objc_msgSend_auditToken(connection);
    }

    else
    {
      memset(buf, 0, 32);
    }

    v29 = *buf;
    v30 = *&buf[16];
  }

  v8 = [(EFSandboxedURLWrapper *)self url];
  startAccessingSecurityScopedResource = [v8 startAccessingSecurityScopedResource];
  isReadOnly = [(EFSandboxedURLWrapper *)self isReadOnly];
  v11 = v8;
  if (v11 && (getpid(), v12 = v11, v25 = [v11 fileSystemRepresentation], !sandbox_check()))
  {
    v14 = MEMORY[0x1E69E9BA8];
    if (!isReadOnly)
    {
      v14 = MEMORY[0x1E69E9BB0];
    }

    v13 = *v14;
  }

  else
  {
    v13 = 0;
  }

  v26 = v29;
  v27 = v30;
  v15 = v11;
  if (!v13)
  {
LABEL_24:

    v20 = 0;
    if (!startAccessingSecurityScopedResource)
    {
      goto LABEL_26;
    }

LABEL_25:
    [v15 stopAccessingSecurityScopedResource];
    goto LABEL_26;
  }

  memset(v28, 0, sizeof(v28));
  v16 = bcmp(&v26, v28, 0x20uLL) == 0;
  v17 = v15;
  [v15 fileSystemRepresentation];
  if (v16)
  {
    v18 = sandbox_extension_issue_file();
  }

  else
  {
    *buf = v26;
    *&buf[16] = v27;
    v18 = sandbox_extension_issue_file_to_process();
  }

  v19 = v18;
  if (!v18)
  {
    v21 = *__error();
    v22 = __error();
    v23 = strerror(*v22);
    v24 = +[EFSandboxedURLWrapper log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 1024;
      *&buf[24] = v21;
      *&buf[28] = 2082;
      *&buf[30] = v23;
      _os_log_error_impl(&dword_1C6152000, v24, OS_LOG_TYPE_ERROR, "unable to issue sandbox extension %{public}s for URL %@: (%d) %{public}s", buf, 0x26u);
    }

    goto LABEL_24;
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
  free(v19);

  if (v20)
  {
    [coderCopy encodeObject:v20 forKey:@"kEFSandboxExtensionToken"];
  }

  if (startAccessingSecurityScopedResource)
  {
    goto LABEL_25;
  }

LABEL_26:
}

@end