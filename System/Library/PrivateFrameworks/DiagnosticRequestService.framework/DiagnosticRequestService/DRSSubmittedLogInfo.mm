@interface DRSSubmittedLogInfo
+ (id)submittedLogInfosFromPaths:(id)paths sandboxExtensions:(id)extensions transferOwnerships:(id)ownerships successOut:(BOOL *)out;
- (DRSSubmittedLogInfo)initWithPath:(const char *)path sandboxExtension:(const char *)extension transferOwnership:(BOOL)ownership;
- (id)debugDescription;
@end

@implementation DRSSubmittedLogInfo

- (DRSSubmittedLogInfo)initWithPath:(const char *)path sandboxExtension:(const char *)extension transferOwnership:(BOOL)ownership
{
  selfCopy = 0;
  if (path && extension)
  {
    v15.receiver = self;
    v15.super_class = DRSSubmittedLogInfo;
    v9 = [(DRSSubmittedLogInfo *)&v15 init];
    if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:path];
      path = v9->_path;
      v9->_path = v10;

      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:extension];
      sandboxExtension = v9->_sandboxExtension;
      v9->_sandboxExtension = v12;

      v9->_transferOwnership = ownership;
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  path = [(DRSSubmittedLogInfo *)self path];
  sandboxExtension = [(DRSSubmittedLogInfo *)self sandboxExtension];
  transferOwnership = [(DRSSubmittedLogInfo *)self transferOwnership];
  v7 = @"Copy";
  if (transferOwnership)
  {
    v7 = @"Transfer";
  }

  v8 = [v3 stringWithFormat:@"%@ %@ %@", path, sandboxExtension, v7];

  return v8;
}

+ (id)submittedLogInfosFromPaths:(id)paths sandboxExtensions:(id)extensions transferOwnerships:(id)ownerships successOut:(BOOL *)out
{
  v45 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  extensionsCopy = extensions;
  ownershipsCopy = ownerships;
  v12 = ownershipsCopy;
  *out = 1;
  if (!pathsCopy || !extensionsCopy || !ownershipsCopy)
  {
    if (!pathsCopy && !extensionsCopy && !ownershipsCopy)
    {
      v18 = 0;
      goto LABEL_31;
    }

    v15 = DPLogHandle_RequestError(ownershipsCopy);
    if (!os_signpost_enabled(v15))
    {
      goto LABEL_30;
    }

    v19 = @"Available";
    if (pathsCopy)
    {
      v20 = @"Available";
    }

    else
    {
      v20 = @"Missing";
    }

    if (extensionsCopy)
    {
      v21 = @"Available";
    }

    else
    {
      v21 = @"Missing";
    }

    v39 = 138543874;
    v40 = v20;
    v41 = 2114;
    v42 = v21;
    if (!v12)
    {
      v19 = @"Missing";
    }

    v43 = 2114;
    v44 = v19;
    v16 = "SubmittedLogInfoFailure";
    v17 = "Could not generate submitted log info array due to missing input.\nPaths: %{public}@\nSandboxExtensions:%{public}@\nTransferBools:%{public}@";
LABEL_21:
    v22 = v15;
    v23 = 32;
LABEL_29:
    _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v16, v17, &v39, v23);
    goto LABEL_30;
  }

  v13 = MEMORY[0x23838A140](pathsCopy);
  v14 = MEMORY[0x277D86440];
  if (v13 != MEMORY[0x277D86440])
  {
    v15 = DPLogHandle_RequestError(v13);
    if (os_signpost_enabled(v15))
    {
      LOWORD(v39) = 0;
      v16 = "SubmittedLogInfoFailureUnexpected xpcPathArray type";
      v17 = &unk_232980861;
LABEL_28:
      v22 = v15;
      v23 = 2;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v24 = MEMORY[0x23838A140](extensionsCopy);
  if (v24 != v14)
  {
    v15 = DPLogHandle_RequestError(v24);
    if (os_signpost_enabled(v15))
    {
      LOWORD(v39) = 0;
      v16 = "SubmittedLogInfoFailureUnexpected xpcSandboxExtensionsArray type";
      v17 = &unk_232980861;
      goto LABEL_28;
    }

LABEL_30:

    v18 = 0;
    *out = 0;
    goto LABEL_31;
  }

  v25 = MEMORY[0x23838A140](v12);
  if (v25 != v14)
  {
    v15 = DPLogHandle_RequestError(v25);
    if (os_signpost_enabled(v15))
    {
      LOWORD(v39) = 0;
      v16 = "SubmittedLogInfoFailureUnexpected xpcTransferBoolArray type";
      v17 = &unk_232980861;
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  count = xpc_array_get_count(pathsCopy);
  v28 = xpc_array_get_count(extensionsCopy);
  v29 = xpc_array_get_count(v12);
  v30 = v29;
  if (count != v28 || count != v29)
  {
    v15 = DPLogHandle_RequestError(v29);
    if (!os_signpost_enabled(v15))
    {
      goto LABEL_30;
    }

    v39 = 134349568;
    v40 = count;
    v41 = 2050;
    v42 = v28;
    v43 = 2050;
    v44 = v30;
    v16 = "SubmittedLogInfoFailure";
    v17 = "Inconsisted info counts:\nPaths: %{public}zu\nSandbox extensions: %{public}zu\nTransfer BOOLs: %{public}zu\n";
    goto LABEL_21;
  }

  array = [MEMORY[0x277CBEB18] array];
  if (count)
  {
    v32 = 0;
    while (1)
    {
      v33 = [DRSSubmittedLogInfo alloc];
      string = xpc_array_get_string(pathsCopy, v32);
      v35 = xpc_array_get_string(extensionsCopy, v32);
      v36 = [(DRSSubmittedLogInfo *)v33 initWithPath:string sandboxExtension:v35 transferOwnership:xpc_array_get_BOOL(v12, v32)];
      if (!v36)
      {
        break;
      }

      v37 = v36;
      [array addObject:v36];

      if (count == ++v32)
      {
        goto LABEL_40;
      }
    }

    v38 = DPLogHandle_RequestError(0);
    if (os_signpost_enabled(v38))
    {
      LOWORD(v39) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubmittedLogInfoFailure", "Could not create new submitted log info\n", &v39, 2u);
    }

    goto LABEL_47;
  }

LABEL_40:
  if (![array count])
  {
LABEL_47:
    v18 = 0;
    *out = 0;
    goto LABEL_48;
  }

  v18 = array;
LABEL_48:

LABEL_31:

  return v18;
}

@end