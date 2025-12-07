@interface ARQLSandboxingURLWrapper
+ (id)wrapperWithURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error;
+ (id)wrapperWithURL:(id)l readonly:(BOOL)readonly error:(id *)error;
+ (void)assembleURL:(id)l sandbox:(id)sandbox physicalURL:(id)rL physicalSandbox:(id)physicalSandbox;
- (ARQLSandboxingURLWrapper)initWithCoder:(id)coder;
- (ARQLSandboxingURLWrapper)initWithURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error;
- (id)issueSandboxExtensionForURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARQLSandboxingURLWrapper

+ (id)wrapperWithURL:(id)l readonly:(BOOL)readonly error:(id *)error
{
  v5 = MEMORY[0x277D861B8];
  if (!readonly)
  {
    v5 = MEMORY[0x277D861C0];
  }

  return [self wrapperWithURL:l extensionClass:*v5 error:error];
}

+ (id)wrapperWithURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error
{
  reportCopy = report;
  lCopy = l;
  v11 = [[self alloc] initWithURL:lCopy extensionClass:class report:reportCopy error:error];

  return v11;
}

- (ARQLSandboxingURLWrapper)initWithURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error
{
  reportCopy = report;
  lCopy = l;
  v28.receiver = self;
  v28.super_class = ARQLSandboxingURLWrapper;
  v12 = [(ARQLSandboxingURLWrapper *)&v28 init];
  v13 = v12;
  if (!v12)
  {
    v18 = 0;
LABEL_14:
    v23 = v13;
    goto LABEL_19;
  }

  objc_storeStrong(&v12->_url, l);
  v14 = _CFURLPromiseCopyPhysicalURL();
  if (([lCopy isEqual:v14] & 1) == 0)
  {
    objc_storeStrong(&v13->_promiseURL, v14);
  }

  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  startAccessingSecurityScopedResource2 = [v14 startAccessingSecurityScopedResource];
  v27 = 0;
  v17 = [(ARQLSandboxingURLWrapper *)v13 issueSandboxExtensionForURL:lCopy extensionClass:class report:reportCopy error:&v27];
  v18 = v27;
  scope = v13->_scope;
  v13->_scope = v17;

  if (v13->_scope)
  {
    if (!v14)
    {
LABEL_8:
      if (startAccessingSecurityScopedResource)
      {
        [lCopy stopAccessingSecurityScopedResource];
      }

      if (startAccessingSecurityScopedResource2)
      {
        [v14 stopAccessingSecurityScopedResource];
      }

      goto LABEL_14;
    }

    v26 = v18;
    v20 = [(ARQLSandboxingURLWrapper *)v13 issueSandboxExtensionForURL:v14 extensionClass:class report:reportCopy error:&v26];
    v21 = v26;

    promiseScope = v13->_promiseScope;
    v13->_promiseScope = v20;

    if (v13->_promiseScope)
    {
      v18 = v21;
      goto LABEL_8;
    }

    v18 = v21;
  }

  if (error)
  {
    v24 = v18;
    *error = v18;
  }

  v23 = 0;
LABEL_19:

  return v23;
}

- (id)issueSandboxExtensionForURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error
{
  lCopy = l;
  path = [lCopy path];
  hasDirectoryPath = [lCopy hasDirectoryPath];

  if (hasDirectoryPath)
  {
    v10 = [path stringByAppendingString:@"/"];

    path = v10;
  }

  [path fileSystemRepresentation];
  v11 = sandbox_extension_issue_file();
  if (v11)
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:strlen(v11) + 1 freeWhenDone:1];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AssetViewer.ARQLSandboxingURLWrapper" code:1 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_url forKey:@"NSURL"];
  [coderCopy encodeObject:self->_scope forKey:@"NSURLScope"];
  promiseURL = self->_promiseURL;
  if (promiseURL)
  {
    [coderCopy encodeObject:promiseURL forKey:@"NSPromise"];
    [coderCopy encodeObject:self->_promiseScope forKey:@"NSPromiseScope"];
  }
}

+ (void)assembleURL:(id)l sandbox:(id)sandbox physicalURL:(id)rL physicalSandbox:(id)physicalSandbox
{
  lCopy = l;
  sandboxCopy = sandbox;
  rLCopy = rL;
  physicalSandboxCopy = physicalSandbox;
  if (lCopy)
  {
    if (sandboxCopy)
    {
      MEMORY[0x23EE8CB30](lCopy, sandboxCopy);
    }

    if (rLCopy && physicalSandboxCopy)
    {
      MEMORY[0x23EE8CB30](rLCopy, physicalSandboxCopy);
    }

    _CFURLPromiseSetPhysicalURL();
  }
}

- (ARQLSandboxingURLWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ARQLSandboxingURLWrapper;
  v5 = [(ARQLSandboxingURLWrapper *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSURL"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSPromise"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSURLScope"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSPromiseScope"];
    [objc_opt_class() assembleURL:v6 sandbox:v8 physicalURL:v7 physicalSandbox:v9];
    url = v5->_url;
    v5->_url = v6;
    v11 = v6;

    scope = v5->_scope;
    v5->_scope = v8;
    v13 = v8;

    promiseURL = v5->_promiseURL;
    v5->_promiseURL = v7;
    v15 = v7;

    promiseScope = v5->_promiseScope;
    v5->_promiseScope = v9;
  }

  return v5;
}

@end