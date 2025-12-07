@interface PBSecurityScopedURLWrapper
- (PBSecurityScopedURLWrapper)initWithCoder:(id)coder;
- (PBSecurityScopedURLWrapper)initWithFPItem:(id)item;
- (PBSecurityScopedURLWrapper)initWithNSURLWrapper:(id)wrapper;
- (PBSecurityScopedURLWrapper)initWithURL:(id)l issueExtension:(BOOL)extension readonly:(BOOL)readonly extensionClass:(id)class;
- (id)description;
- (id)nsURLWrapper;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBSecurityScopedURLWrapper

- (PBSecurityScopedURLWrapper)initWithFPItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PBSecurityScopedURLWrapper;
  v6 = [(PBSecurityScopedURLWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fpItem, item);
    *&v7->_readonly = 257;
  }

  return v7;
}

- (PBSecurityScopedURLWrapper)initWithURL:(id)l issueExtension:(BOOL)extension readonly:(BOOL)readonly extensionClass:(id)class
{
  readonlyCopy = readonly;
  extensionCopy = extension;
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  classCopy = class;
  v26.receiver = self;
  v26.super_class = PBSecurityScopedURLWrapper;
  v13 = [(PBSecurityScopedURLWrapper *)&v26 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v13->_url, l);
  v14->_readonly = readonlyCopy;
  if (FPIsFileProviderBookmark())
  {
    v14->_backedByFileProvider = 1;
    goto LABEL_15;
  }

  if (!extensionCopy)
  {
    goto LABEL_15;
  }

  if (classCopy)
  {
    uTF8String = [classCopy UTF8String];
  }

  else
  {
    if (!readonlyCopy)
    {
      v22 = lCopy;
      if (v22)
      {
        getpid();
        path = [v22 path];
        [path fileSystemRepresentation];
        v24 = sandbox_check();

        if (v24)
        {
          OnlySandboxExtensionTypeForURL = _bestReadOnlySandboxExtensionTypeForURL(v22);
        }

        else
        {
          OnlySandboxExtensionTypeForURL = *MEMORY[0x277D861C0];
        }
      }

      else
      {
        OnlySandboxExtensionTypeForURL = 0;
      }

      goto LABEL_10;
    }

    uTF8String = _bestReadOnlySandboxExtensionTypeForURL(lCopy);
  }

  OnlySandboxExtensionTypeForURL = uTF8String;
LABEL_10:
  v25 = 0;
  v17 = _issueSandboxExtension(lCopy, OnlySandboxExtensionTypeForURL, &v25);
  v18 = v25;
  scope = v14->_scope;
  v14->_scope = v17;

  if (v18)
  {
    v20 = _PBLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v28 = v18;
      _os_log_fault_impl(&dword_25E138000, v20, OS_LOG_TYPE_FAULT, "Could not create sandbox extension. Error: %@", buf, 0xCu);
    }
  }

LABEL_15:
  return v14;
}

- (PBSecurityScopedURLWrapper)initWithNSURLWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  if (wrapperCopy)
  {
    v17.receiver = self;
    v17.super_class = PBSecurityScopedURLWrapper;
    v5 = [(PBSecurityScopedURLWrapper *)&v17 init];
    if (v5)
    {
      v6 = [wrapperCopy url];
      v7 = [v6 copy];
      url = v5->_url;
      v5->_url = v7;

      v5->_readonly = [wrapperCopy isReadonly];
      _scope = [wrapperCopy _scope];
      v10 = [_scope copy];
      scope = v5->_scope;
      v5->_scope = v10;

      v12 = objc_getAssociatedObject(wrapperCopy, &kFPItemObjectKey);
      fpItem = v5->_fpItem;
      v5->_fpItem = v12;

      if (v5->_fpItem)
      {
        v14 = 1;
      }

      else
      {
        v14 = FPIsFileProviderBookmark() != 0;
      }

      v5->_backedByFileProvider = v14;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)nsURLWrapper
{
  if (self->_fpItem)
  {
    v3 = objc_alloc(MEMORY[0x277CCAC90]);
    v4 = [MEMORY[0x277CBEBC0] URLWithString:@"fpitem://"];
    v5 = [v3 initWithURL:v4 readonly:1];

    objc_setAssociatedObject(v5, &kFPItemObjectKey, self->_fpItem, 0x301);
  }

  else
  {
    if (self->_scope || self->_backedByFileProvider)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:self->_url readonly:self->_readonly scope:self->_scope];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:self->_url readonly:self->_readonly];
    }

    v5 = v6;
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PBSecurityScopedURLWrapper;
  v3 = [(PBSecurityScopedURLWrapper *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"URL: %@\n", self->_url];
  [v4 appendFormat:@"Readonly: %d\n", self->_readonly];
  [v4 appendFormat:@"Has security scope: %d\n", self->_scope != 0];
  [v4 appendFormat:@"Is backed by FP: %d\n", self->_backedByFileProvider];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeBool:self->_readonly forKey:@"readonly"];
  if (!self->_backedByFileProvider)
  {
    url = self->_url;
    if (url)
    {
      [coderCopy encodeObject:url forKey:@"url"];
    }

    scope = self->_scope;
    if (scope)
    {
      [coderCopy encodeObject:scope forKey:@"scope"];
    }

    v8 = [(PBSecurityScopedURLWrapper *)self url];
    v9 = _CFURLPromiseCopyPhysicalURL();

    if (v9)
    {
      [coderCopy encodeObject:v9 forKey:@"promiseURL"];
      v10 = MEMORY[0x25F8ABFC0](v9);
      if (v10 || (_issueSandboxExtension(v9, *MEMORY[0x277D861C0], 0), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        [coderCopy encodeObject:v10 forKey:@"promiseScope"];
      }
    }

    goto LABEL_14;
  }

  [coderCopy encodeBool:1 forKey:@"isFileProviderFile"];
  fpItem = self->_fpItem;
  if (!fpItem)
  {
    v9 = FPCreateBookmarkableStringFromDocumentURL();
    if (v9)
    {
      [coderCopy encodeObject:v9 forKey:@"bookmarkableString"];
    }

LABEL_14:

    goto LABEL_15;
  }

  [coderCopy encodeObject:fpItem forKey:@"FPItem"];
LABEL_15:
}

- (PBSecurityScopedURLWrapper)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PBSecurityScopedURLWrapper;
  v5 = [(PBSecurityScopedURLWrapper *)&v18 init];
  if (v5)
  {
    v5->_readonly = [coderCopy decodeBoolForKey:@"readonly"];
    v6 = [coderCopy decodeBoolForKey:@"isFileProviderFile"];
    v5->_backedByFileProvider = v6;
    if (!v6)
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
      url = v5->_url;
      v5->_url = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scope"];
      scope = v5->_scope;
      v5->_scope = v14;

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promiseURL"];
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promiseScope"];
      if (v5->_url)
      {
        if (v5->_scope)
        {
          MEMORY[0x25F8ABFB0]();
        }

        if (v9 && v16)
        {
          MEMORY[0x25F8ABFB0](v9, v16);
        }

        _CFURLPromiseSetPhysicalURL();
      }

      goto LABEL_14;
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FPItem"];
    fpItem = v5->_fpItem;
    v5->_fpItem = v7;

    if (!v5->_fpItem)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkableString"];
      if (v9)
      {
        v10 = FPCreateDocumentURLFromBookmarkableString();
        v11 = v5->_url;
        v5->_url = v10;
      }

LABEL_14:
    }
  }

  return v5;
}

@end