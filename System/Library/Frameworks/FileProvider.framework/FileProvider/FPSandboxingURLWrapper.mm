@interface FPSandboxingURLWrapper
+ (FPSandboxingURLWrapper)wrapperWithSecurityScopedURL:(id)l;
+ (FPSandboxingURLWrapper)wrapperWithURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error;
+ (FPSandboxingURLWrapper)wrapperWithURL:(id)l readonly:(BOOL)readonly;
+ (FPSandboxingURLWrapper)wrapperWithURL:(id)l readonly:(BOOL)readonly error:(id *)error;
+ (void)assembleURL:(id)l sandbox:(id)sandbox physicalURL:(id)rL physicalSandbox:(id)physicalSandbox;
- (FPSandboxingURLWrapper)init;
- (FPSandboxingURLWrapper)initWithCoder:(id)coder;
- (FPSandboxingURLWrapper)initWithURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPSandboxingURLWrapper

- (FPSandboxingURLWrapper)init
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(FPSandboxingURLWrapper *)v3 init];
  }

  v5.receiver = self;
  v5.super_class = FPSandboxingURLWrapper;
  return [(FPSandboxingURLWrapper *)&v5 init];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = FPSandboxingURLWrapper;
  return [(FPSandboxingURLWrapper *)&v3 init];
}

+ (FPSandboxingURLWrapper)wrapperWithURL:(id)l readonly:(BOOL)readonly
{
  readonlyCopy = readonly;
  lCopy = l;
  v13 = 0;
  v8 = [self wrapperWithURL:lCopy readonly:readonlyCopy error:&v13];
  v9 = v13;
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    fp_shortDescription = [lCopy fp_shortDescription];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPSandboxingURLWrapper.m" lineNumber:55 description:{@"nil wrapper returned for url %@: %@", fp_shortDescription, v9}];
  }

  return v8;
}

+ (FPSandboxingURLWrapper)wrapperWithURL:(id)l readonly:(BOOL)readonly error:(id *)error
{
  v5 = MEMORY[0x1E69E9BA8];
  if (!readonly)
  {
    v5 = MEMORY[0x1E69E9BB0];
  }

  return [self wrapperWithURL:l extensionClass:*v5 error:error];
}

+ (FPSandboxingURLWrapper)wrapperWithURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error
{
  reportCopy = report;
  lCopy = l;
  v11 = [[self alloc] initWithURL:lCopy extensionClass:class report:reportCopy error:error];

  return v11;
}

- (FPSandboxingURLWrapper)initWithURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error
{
  reportCopy = report;
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPSandboxingURLWrapper.m" lineNumber:78 description:@"tried to create wrapper with nil url"];
  }

  v42.receiver = self;
  v42.super_class = FPSandboxingURLWrapper;
  v14 = [(FPSandboxingURLWrapper *)&v42 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, l);
    v16 = _CFURLPromiseCopyPhysicalURL();
    if (([lCopy isEqual:v16] & 1) == 0)
    {
      objc_storeStrong(&v15->_promiseURL, v16);
    }

    startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
    startAccessingSecurityScopedResource2 = [v16 startAccessingSecurityScopedResource];
    v41 = 0;
    v19 = [lCopy fp_issueSandboxExtensionOfClass:class report:reportCopy error:&v41];
    v20 = v41;
    scope = v15->_scope;
    v15->_scope = v19;

    if (v15->_scope)
    {
      if (!v16)
      {
        goto LABEL_10;
      }

      v40 = v20;
      v22 = [v16 fp_issueSandboxExtensionOfClass:class report:reportCopy error:&v40];
      v23 = v40;

      promiseScope = v15->_promiseScope;
      v15->_promiseScope = v22;

      if (v15->_promiseScope)
      {
        v20 = v23;
LABEL_10:
        url = v15->_url;
        v39 = 0;
        v38 = 0;
        v26 = [(NSURL *)url getResourceValue:&v39 forKey:@"FPOriginalDocumentURL" error:&v38];
        v27 = v39;
        v28 = v38;
        if (v26 && v27)
        {
          v37 = v28;
          v29 = [FPSandboxingURLWrapper wrapperWithURL:v27 readonly:0 error:&v37];
          v30 = v37;

          originalDocumentURLWrapper = v15->_originalDocumentURLWrapper;
          v15->_originalDocumentURLWrapper = v29;

          v28 = v30;
        }

        if (startAccessingSecurityScopedResource)
        {
          [lCopy stopAccessingSecurityScopedResource];
        }

        if (startAccessingSecurityScopedResource2)
        {
          [v16 stopAccessingSecurityScopedResource];
        }

        goto LABEL_19;
      }

      v36 = fp_current_or_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [FPSandboxingURLWrapper initWithURL:extensionClass:report:error:];
      }

      v20 = v23;
      if (!error)
      {
LABEL_24:

        v32 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v33 = fp_current_or_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [FPSandboxingURLWrapper initWithURL:extensionClass:report:error:];
      }

      if (!error)
      {
        goto LABEL_24;
      }
    }

    v34 = v20;
    *error = v20;
    goto LABEL_24;
  }

  v20 = 0;
LABEL_19:
  v32 = v15;
LABEL_25:

  return v32;
}

+ (FPSandboxingURLWrapper)wrapperWithSecurityScopedURL:(id)l
{
  lCopy = l;
  _init = [[FPSandboxingURLWrapper alloc] _init];
  [_init setUrl:lCopy];
  v7 = MEMORY[0x1AC593480](lCopy);

  [_init setScope:v7];
  v8 = [_init url];
  v20 = 0;
  v19 = 0;
  v9 = [v8 getResourceValue:&v20 forKey:@"FPOriginalDocumentURL" error:&v19];
  v10 = v20;
  v11 = v19;

  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v18 = v11;
    v13 = [FPSandboxingURLWrapper wrapperWithURL:v10 readonly:0 error:&v18];
    v14 = v18;

    [_init setOriginalDocumentURLWrapper:v13];
    v11 = v14;
  }

  scope = [_init scope];

  if (!scope)
  {
    scope2 = [_init scope];

    if (!scope2)
    {
      [(FPSandboxingURLWrapper *)a2 wrapperWithSecurityScopedURL:self];
    }
  }

  return _init;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPSandboxingURLWrapper *)self url];
  fp_shortDescription = [v5 fp_shortDescription];
  promiseURL = [(FPSandboxingURLWrapper *)self promiseURL];
  fp_shortDescription2 = [promiseURL fp_shortDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p url: %@ promiseURL: %@>", v4, self, fp_shortDescription, fp_shortDescription2];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FPSandboxingURLWrapper *)self url];
  [coderCopy encodeObject:v5 forKey:@"NSURL"];

  scope = [(FPSandboxingURLWrapper *)self scope];
  [coderCopy encodeObject:scope forKey:@"NSURLScope"];

  promiseURL = [(FPSandboxingURLWrapper *)self promiseURL];

  if (promiseURL)
  {
    promiseURL2 = [(FPSandboxingURLWrapper *)self promiseURL];
    [coderCopy encodeObject:promiseURL2 forKey:@"NSPromise"];

    promiseScope = [(FPSandboxingURLWrapper *)self promiseScope];
    [coderCopy encodeObject:promiseScope forKey:@"NSPromiseScope"];
  }

  originalDocumentURLWrapper = [(FPSandboxingURLWrapper *)self originalDocumentURLWrapper];

  if (!originalDocumentURLWrapper)
  {
    v11 = [(FPSandboxingURLWrapper *)self url];
    v20 = 0;
    v21 = 0;
    v12 = [v11 getResourceValue:&v21 forKey:@"FPOriginalDocumentURL" error:&v20];
    v13 = v21;
    v14 = v20;

    if (v12 && v13)
    {
      v19 = v14;
      v15 = [FPSandboxingURLWrapper wrapperWithURL:v13 readonly:0 error:&v19];
      v16 = v19;

      [(FPSandboxingURLWrapper *)self setOriginalDocumentURLWrapper:v15];
      v14 = v16;
    }
  }

  originalDocumentURLWrapper2 = [(FPSandboxingURLWrapper *)self originalDocumentURLWrapper];

  if (originalDocumentURLWrapper2)
  {
    originalDocumentURLWrapper3 = [(FPSandboxingURLWrapper *)self originalDocumentURLWrapper];
    [coderCopy encodeObject:originalDocumentURLWrapper3 forKey:@"FPOriginalDocumentURL"];
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
      MEMORY[0x1AC593440](lCopy, sandboxCopy);
    }

    if (rLCopy && physicalSandboxCopy)
    {
      MEMORY[0x1AC593440](rLCopy, physicalSandboxCopy);
    }

    _CFURLPromiseSetPhysicalURL();
  }
}

- (FPSandboxingURLWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = FPSandboxingURLWrapper;
  v6 = [(FPSandboxingURLWrapper *)&v16 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSURL"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSPromise"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FPOriginalDocumentURL"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSURLScope"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSPromiseScope"];
    [objc_opt_class() assembleURL:v7 sandbox:v10 physicalURL:v8 physicalSandbox:v11];
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"FPSandboxingURLWrapper.m" lineNumber:207 description:@"tried to unarchive a wrapper with nil url"];
    }

    [(FPSandboxingURLWrapper *)v6 setUrl:v7];
    [(FPSandboxingURLWrapper *)v6 setScope:v10];
    [(FPSandboxingURLWrapper *)v6 setPromiseURL:v8];
    [(FPSandboxingURLWrapper *)v6 setPromiseScope:v11];
    [(FPSandboxingURLWrapper *)v6 setOriginalDocumentURLWrapper:v9];
    if (v9)
    {
      v13 = [(FPSandboxingURLWrapper *)v6 url];
      v14 = [v9 url];
      [v13 setTemporaryResourceValue:v14 forKey:@"FPOriginalDocumentURL"];
    }
  }

  return v6;
}

+ (void)wrapperWithSecurityScopedURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPSandboxingURLWrapper.m" lineNumber:136 description:@"missing security scope"];
}

@end