@interface PTPassiveTraceArchiveHandle
- (PTPassiveTraceArchiveHandle)initWithAarPath:(id)path sandboxExtension:(id)extension;
- (void)dealloc;
@end

@implementation PTPassiveTraceArchiveHandle

- (PTPassiveTraceArchiveHandle)initWithAarPath:(id)path sandboxExtension:(id)extension
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  extensionCopy = extension;
  v18.receiver = self;
  v18.super_class = PTPassiveTraceArchiveHandle;
  v9 = [(PTPassiveTraceArchiveHandle *)&v18 init];
  v10 = v9;
  if (!v9)
  {
LABEL_6:
    v13 = v10;
    goto LABEL_10;
  }

  objc_storeStrong(&v9->_aarPath, path);
  [extensionCopy UTF8String];
  v10->_sandboxToken = sandbox_extension_consume();
  sandboxToken = [(PTPassiveTraceArchiveHandle *)v10 sandboxToken];
  if (sandboxToken != -1)
  {
    v12 = _passiveArchiveHandleHandle(sandboxToken);
    if (os_signpost_enabled(v12))
    {
      *buf = 138543362;
      v20 = pathCopy;
      _os_signpost_emit_with_name_impl(&dword_25E3D3000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PassiveTraceArchiveHandleCreation", "Successfully created an archive handle for '%{public}@'", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v14 = _passiveArchiveHandleErrorHandle(-1);
  if (os_signpost_enabled(v14))
  {
    v15 = __error();
    v16 = strerror(*v15);
    *buf = 138543618;
    v20 = pathCopy;
    v21 = 2082;
    v22 = v16;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ExtensionConsumptionFailed", "Failed to consume sandbox extension for '%{public}@' due to error: %{public}s", buf, 0x16u);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(PTPassiveTraceArchiveHandle *)self sandboxToken]!= -1)
  {
    [(PTPassiveTraceArchiveHandle *)self sandboxToken];
    v3 = sandbox_extension_release();
    if (v3)
    {
      v4 = _passiveArchiveHandleErrorHandle(v3);
      if (os_signpost_enabled(v4))
      {
        aarPath = [(PTPassiveTraceArchiveHandle *)self aarPath];
        v6 = __error();
        v7 = strerror(*v6);
        *buf = 138543618;
        v14 = aarPath;
        v15 = 2082;
        v16 = v7;
        v8 = "PassiveTraceArchiveHandleExtensionReleaseFailure";
        v9 = "Failed to release sandbox extension for %{public}@ due to error: %{public}s";
        v10 = v4;
        v11 = 22;
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_25E3D3000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, v11);
      }
    }

    else
    {
      v4 = _passiveArchiveHandleHandle(v3);
      if (os_signpost_enabled(v4))
      {
        aarPath = [(PTPassiveTraceArchiveHandle *)self aarPath];
        *buf = 138543362;
        v14 = aarPath;
        v8 = "PassiveTraceArchiveHandleExtensionRelease";
        v9 = "Successfully released the sandbox extension for %{public}@";
        v10 = v4;
        v11 = 12;
        goto LABEL_7;
      }
    }
  }

  v12.receiver = self;
  v12.super_class = PTPassiveTraceArchiveHandle;
  [(PTPassiveTraceArchiveHandle *)&v12 dealloc];
}

@end