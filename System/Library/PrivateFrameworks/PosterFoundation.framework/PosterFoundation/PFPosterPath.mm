@interface PFPosterPath
+ (id)debugDescription;
+ (id)temporaryDescriptorPathWithIdentifier:(id)identifier role:(id)role;
+ (id)temporaryPathForRole:(id)role;
+ (id)temporaryPathForTask:(id)task role:(id)role;
+ (id)temporaryPathForURL:(id)l role:(id)role;
+ (uint64_t)_reportSandboxExtensionError:(uint64_t)error withCode:(void *)code reason:(uint64_t)reason;
- (BOOL)_isPersistable;
- (BOOL)copyContentsOfPath:(id)path error:(id *)error;
- (BOOL)ensureContentsURLIsReachableAndReturnError:(id *)error;
- (BOOL)storeUserInfo:(id)info error:(id *)error;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)descriptorIdentifier;
- (NSString)role;
- (PFPosterPath)init;
- (PFPosterPath)initWithBSXPCCoder:(id)coder;
- (PFPosterPath)initWithCoder:(id)coder;
- (id)_issueSandboxExtensionTokenWithContext:(xpc_object_t)context;
- (id)extendValidityForReason:(id)reason;
- (id)loadUserInfoWithError:(id *)error;
- (int64_t)compareDescriptorIdentifiers:(id)identifiers;
- (os_unfair_lock)_lock_descriptionWithDebugInfo:(os_unfair_lock *)info;
- (uint64_t)_initDecodedWithContentsURL:(void *)l role:(void *)role serverIdentity:(void *)identity descriptorIdentifier:(uint64_t)identifier sandboxExtensionHandle:;
- (uint64_t)_isEqualToPersistable:(uint64_t)persistable;
- (uint64_t)_sandboxExtensionLevel;
- (void)_extendReadAccessForURL:(void *)l toAuditToken:(void *)token error:;
- (void)_initWithContentsURL:(void *)l role:(char)role options:(void *)options serverIdentity:(void *)identity descriptorIdentifier:(uint64_t)identifier sandboxExtensionHandle:(void *)handle sandboxExtensionURL:(void *)rL sandboxExtensionAuditToken:;
- (void)_invalidate;
- (void)_lock_purgeIfPossible;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation PFPosterPath

- (NSString)descriptorIdentifier
{
  descriptorIdentifier = [(PFServerPosterIdentity *)self->_serverIdentity descriptorIdentifier];
  descriptorIdentifier = descriptorIdentifier;
  if (!descriptorIdentifier)
  {
    descriptorIdentifier = self->_descriptorIdentifier;
  }

  v5 = descriptorIdentifier;

  return descriptorIdentifier;
}

- (NSString)role
{
  role = [(PFServerPosterIdentity *)self->_serverIdentity role];
  role = role;
  if (!role)
  {
    role = self->_role;
  }

  v5 = role;

  return role;
}

- (PFPosterPath)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed on %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"PFPosterPath.m";
    v21 = 1024;
    v22 = 126;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_initWithContentsURL:(void *)l role:(char)role options:(void *)options serverIdentity:(void *)identity descriptorIdentifier:(uint64_t)identifier sandboxExtensionHandle:(void *)handle sandboxExtensionURL:(void *)rL sandboxExtensionAuditToken:
{
  v16 = a2;
  lCopy = l;
  optionsCopy = options;
  identityCopy = identity;
  handleCopy = handle;
  rLCopy = rL;
  if (!self)
  {
LABEL_11:

    return;
  }

  v41.receiver = self;
  v41.super_class = PFPosterPath;
  v22 = objc_msgSendSuper2(&v41, sel_init);
  if (v22)
  {
    v23 = v22;
    v24 = [v16 copy];
    v25 = *(v23 + 8);
    *(v23 + 8) = v24;

    *(v23 + 76) = role;
    v26 = [lCopy copy];
    v27 = *(v23 + 32);
    *(v23 + 32) = v26;

    v28 = [optionsCopy copy];
    v29 = *(v23 + 16);
    *(v23 + 16) = v28;

    v30 = [identityCopy copy];
    v31 = *(v23 + 24);
    *(v23 + 24) = v30;

    *(v23 + 72) = 0;
    *(v23 + 64) = identifier;
    v32 = [handleCopy copy];
    v33 = *(v23 + 48);
    *(v23 + 48) = v32;

    v34 = [rLCopy copy];
    v35 = *(v23 + 56);
    *(v23 + 56) = v34;

    if (*(v23 + 8))
    {
      os_unfair_lock_lock(&__allPathsLock);
      v37 = _MergedGlobals;
      if (!_MergedGlobals)
      {
        v38 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
        v39 = _MergedGlobals;
        _MergedGlobals = v38;

        v37 = _MergedGlobals;
      }

      [v37 addObject:v23];
      os_unfair_lock_unlock(&__allPathsLock);
    }

    if (*(v23 + 76))
    {
      v40 = PFLogPosterContents(v36);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [PFPosterPath _initWithContentsURL:v23 role:v40 options:? serverIdentity:? descriptorIdentifier:? sandboxExtensionHandle:? sandboxExtensionURL:? sandboxExtensionAuditToken:?];
      }
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [PFPosterPath _initWithContentsURL:? role:? options:? serverIdentity:? descriptorIdentifier:? sandboxExtensionHandle:? sandboxExtensionURL:? sandboxExtensionAuditToken:?];
  }

  __break(0);
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outstanding validityExtensions must be released before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    v7 = 138544642;
    selfCopy = self;
    OUTLINED_FUNCTION_1_3();
    v9 = @"PFPosterPath.m";
    v10 = 1024;
    v11 = 173;
    v12 = v5;
    v13 = v2;
    OUTLINED_FUNCTION_3_0(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (uint64_t)_reportSandboxExtensionError:(uint64_t)error withCode:(void *)code reason:(uint64_t)reason
{
  v27 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v12 = objc_opt_self();
  if (![codeCopy length])
  {
    [PFPosterPath _reportSandboxExtensionError:? withCode:? reason:?];
  }

  v13 = NSStringFromClass(v12);
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:codeCopy arguments:&a9];
  v15 = PFLogPosterContents(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v22 = v13;
    v23 = 2048;
    errorCopy = error;
    v25 = 2114;
    v26 = v14;
    _os_log_error_impl(&dword_1C269D000, v15, OS_LOG_TYPE_ERROR, "SandboxExtensionError: domain=%{publid}@ code=%lli reason=%{public}@", buf, 0x20u);
  }

  if (a2)
  {
    v16 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A588];
    v20 = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    *a2 = [v16 errorWithDomain:v13 code:error userInfo:v17];
  }

  return 0;
}

- (void)_extendReadAccessForURL:(void *)l toAuditToken:(void *)token error:
{
  v7 = a2;
  lCopy = l;
  v9 = lCopy;
  if (self)
  {
    if (!v7)
    {
      [PFPosterPath _extendReadAccessForURL:? toAuditToken:? error:?];
    }

    if (lCopy && [lCopy isInvalid])
    {
      v14 = [PFPosterPath _reportSandboxExtensionError:token withCode:1 reason:@"cannot extend access of %@ with invalid auditToken %@", v10, v11, v12, v13, self];
    }

    else
    {
      v15 = objc_alloc(objc_opt_class());
      [(PFPosterPath *)v15 _initWithContentsURL:self[4] role:2 options:self[2] serverIdentity:self[3] descriptorIdentifier:-1 sandboxExtensionHandle:v7 sandboxExtensionURL:v9 sandboxExtensionAuditToken:?];
    }

    self = v14;
  }

  return self;
}

uint64_t __47__PFPosterPath__lock_descriptionWithDebugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  v8 = [v7 unsignedIntegerValue];

  v9 = [*(a1 + 32) objectForKey:v6];
  v10 = [v9 unsignedIntegerValue];

  if (v8 == v10)
  {
    v11 = [v5 compare:v6];
  }

  else if (v8 < v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

id __47__PFPosterPath__lock_descriptionWithDebugInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [v2 stringWithFormat:@"%@:%lu", v4, objc_msgSend(v5, "unsignedIntegerValue")];

  return v6;
}

+ (id)debugDescription
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&__allPathsLock);
  v3 = [MEMORY[0x1E695DFA8] set];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  objectEnumerator = [qword_1ED8486E8 objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        objectEnumerator2 = [v9 objectEnumerator];
        v11 = [objectEnumerator2 countByEnumeratingWithState:&v52 objects:v63 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v53;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v53 != v13)
              {
                objc_enumerationMutation(objectEnumerator2);
              }

              [v3 addObject:*(*(&v52 + 1) + 8 * j)];
            }

            v12 = [objectEnumerator2 countByEnumeratingWithState:&v52 objects:v63 count:16];
          }

          while (v12);
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];
  v16 = [allObjects sortedArrayUsingComparator:&__block_literal_global_83];

  array = [MEMORY[0x1E695DF70] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v18 = _MergedGlobals;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v48 + 1) + 8 * k);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 containsObject:v23] & 1) == 0)
        {
          [array addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v20);
  }

  [array sortUsingComparator:&__block_literal_global_88];
  os_unfair_lock_unlock(&__allPathsLock);
  v24 = [MEMORY[0x1E696AD60] stringWithFormat:@"cachedServerPaths = %llu {", objc_msgSend(v16, "count")];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v25 = v16;
  v26 = [v25 countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v44 + 1) + 8 * m);
        [v24 appendString:@"\n\t"];
        v31 = [v30 debugDescription];
        [v24 appendString:v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v44 objects:v61 count:16];
    }

    while (v27);
  }

  [v24 appendFormat:@"\n}\notherPaths = %llu {", objc_msgSend(array, "count")];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = array;
  v33 = [v32 countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v40 + 1) + 8 * n);
        [v24 appendString:@"\n\t"];
        v38 = [v37 debugDescription];
        [v24 appendString:v38];
      }

      v34 = [v32 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v34);
  }

  [v24 appendString:@"\n}"];
  objc_autoreleasePoolPop(v2);

  return v24;
}

uint64_t __32__PFPosterPath_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identity];
  v6 = [v4 identity];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __32__PFPosterPath_debugDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 serverIdentity];
  v7 = [v5 serverIdentity];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 compare:v7];
    v10 = -1;
    if (v4 >= v5)
    {
      v10 = 1;
    }

    if (v4 == v5)
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    if (v6)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (!(v6 | v7))
    {
      v12 = [v4 contentsURL];
      v13 = [v12 absoluteString];
      v14 = [v5 contentsURL];
      v15 = [v14 absoluteString];
      v11 = [v13 compare:v15];

      if (!v11)
      {
        if (v4 == v5)
        {
          v11 = 0;
        }

        else if (v4 < v5)
        {
          v11 = -1;
        }

        else
        {
          v11 = 1;
        }
      }
    }
  }

  return v11;
}

+ (id)temporaryDescriptorPathWithIdentifier:(id)identifier role:(id)role
{
  identifierCopy = identifier;
  roleCopy = role;
  v8 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [PFPosterPath temporaryDescriptorPathWithIdentifier:a2 role:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFPosterPath temporaryDescriptorPathWithIdentifier:a2 role:?];
  }

  if ((PFPosterRoleIsValid(roleCopy) & 1) == 0)
  {
    [PFPosterPath temporaryDescriptorPathWithIdentifier:roleCopy role:a2];
  }

  v9 = [PFPosterPath alloc];
  v10 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"com.apple.posterkit.provider.path.descriptor"];
  [(PFPosterPath *)v9 _initWithContentsURL:v10 role:roleCopy options:1 serverIdentity:0 descriptorIdentifier:v8 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  v12 = v11;

  return v12;
}

+ (id)temporaryPathForRole:(id)role
{
  roleCopy = role;
  v4 = [PFPosterPath alloc];
  v5 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"com.apple.posterkit.provider.path.generic"];
  [(PFPosterPath *)v4 _initWithContentsURL:v5 role:roleCopy options:1 serverIdentity:0 descriptorIdentifier:0 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  v7 = v6;

  return v7;
}

+ (id)temporaryPathForTask:(id)task role:(id)role
{
  taskCopy = task;
  roleCopy = role;
  if ((PFPosterRoleIsValid(roleCopy) & 1) == 0)
  {
    [PFPosterPath temporaryPathForTask:roleCopy role:a2];
  }

  if (![(__CFString *)taskCopy length])
  {

    taskCopy = @"com.apple.posterkit.provider.path.task";
  }

  v8 = [PFPosterPath alloc];
  v9 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:taskCopy];
  [(PFPosterPath *)v8 _initWithContentsURL:v9 role:roleCopy options:1 serverIdentity:0 descriptorIdentifier:0 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  v11 = v10;

  return v11;
}

+ (id)temporaryPathForURL:(id)l role:(id)role
{
  roleCopy = role;
  lCopy = l;
  [[PFPosterPath alloc] _initWithContentsURL:lCopy role:roleCopy options:0 serverIdentity:0 descriptorIdentifier:0 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  v8 = v7;

  return v8;
}

- (BOOL)copyContentsOfPath:(id)path error:(id *)error
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  role = [pathCopy role];
  v9 = [PFPosterPath temporaryPathForRole:role];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __41__PFPosterPath_copyContentsOfPath_error___block_invoke;
  v21[3] = &unk_1E818A328;
  v10 = defaultManager;
  v22 = v10;
  v11 = MEMORY[0x1C691C400](v21);
  v12 = v11[2];
  v20 = 0;
  v13 = v12(v11, pathCopy, v9, &v20);
  v14 = v20;
  v15 = v14;
  if (v13 && !v14)
  {
    v19 = 0;
    LOBYTE(v13) = (v11[2])(v11, pathCopy, self, &v19);
    v15 = v19;
  }

  [v9 invalidate];
  if (error && v15)
  {
    v16 = v15;
    *error = v15;
  }

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  return v17;
}

uint64_t __41__PFPosterPath_copyContentsOfPath_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v32 = a3;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__6;
  v43 = __Block_byref_object_dispose__6;
  v44 = 0;
  v7 = *(a1 + 32);
  v31 = v6;
  v8 = [v6 contentsURL];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __41__PFPosterPath_copyContentsOfPath_error___block_invoke_123;
  v38[3] = &unk_1E818A300;
  v38[4] = &v39;
  v9 = [v7 enumeratorAtURL:v8 includingPropertiesForKeys:0 options:17 errorHandler:v38];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v11)
  {
    v12 = *v35;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (v40[5])
        {
          goto LABEL_18;
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = MEMORY[0x1E695DFF8];
        v16 = [v14 relativePath];
        v17 = [v32 contentsURL];
        v18 = [v15 fileURLWithPath:v16 relativeToURL:v17];
        v19 = [v18 absoluteURL];

        if ([v19 checkResourceIsReachableAndReturnError:0])
        {
          [*(a1 + 32) removeItemAtURL:v19 error:0];
        }

        v20 = *(a1 + 32);
        v33 = 0;
        v21 = [v20 copyItemAtURL:v14 toURL:v19 error:{&v33, v30}];
        v22 = v33;
        v23 = v22;
        if ((v21 & 1) == 0)
        {
          if (v22)
          {
            v25 = v22;
            *v30 = v23;
          }

          else
          {
            v26 = MEMORY[0x1E696ABC0];
            v45 = *MEMORY[0x1E696A588];
            v46 = @"Unable to copy files";
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            v28 = [v26 pf_errorWithCode:1 userInfo:v27];
            *v30 = v28;
          }

LABEL_18:
          v24 = 0;
          goto LABEL_19;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v34 objects:v47 count:16];
      v24 = 1;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 1;
  }

LABEL_19:

  _Block_object_dispose(&v39, 8);
  return v24;
}

- (BOOL)ensureContentsURLIsReachableAndReturnError:(id *)error
{
  v5 = objc_opt_new();
  contentsURL = self->_contentsURL;
  v17 = 0;
  v7 = [(NSURL *)contentsURL checkResourceIsReachableAndReturnError:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v11 = self->_contentsURL;
    v12 = PFPosterPathFileAttributes(v8);
    v16 = 0;
    v10 = [v5 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:v12 error:&v16];
    v13 = v16;

    if ((v10 & 1) == 0 && error)
    {
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9;
      }

      *error = v14;
    }
  }

  return v10;
}

- (int64_t)compareDescriptorIdentifiers:(id)identifiers
{
  descriptorIdentifier = [identifiers descriptorIdentifier];
  v5 = descriptorIdentifier;
  if (descriptorIdentifier)
  {
    v6 = descriptorIdentifier;
  }

  else
  {
    v6 = &stru_1F425B6D8;
  }

  descriptorIdentifier2 = [(PFPosterPath *)self descriptorIdentifier];
  v8 = descriptorIdentifier2;
  if (descriptorIdentifier2)
  {
    v9 = descriptorIdentifier2;
  }

  else
  {
    v9 = &stru_1F425B6D8;
  }

  v10 = [(__CFString *)v6 compare:v9];

  return v10;
}

- (id)loadUserInfoWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userInfo = selfCopy->_userInfo;
  if (userInfo)
  {
    v6 = userInfo;
  }

  else
  {
    v7 = [(NSURL *)selfCopy->_contentsURL URLByAppendingPathComponent:@"com.apple.posterkit.provider.contents.userInfo" isDirectory:0];
    v8 = [v7 pf_loadFromPlistWithError:error];
    v9 = objc_opt_class();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = selfCopy->_userInfo;
    selfCopy->_userInfo = v12;

    v6 = selfCopy->_userInfo;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)storeUserInfo:(id)info error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (infoCopy)
  {
    NSClassFromString(&cfstr_Nsdictionary.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PFPosterPath storeUserInfo:a2 error:?];
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSURL *)selfCopy->_contentsURL URLByAppendingPathComponent:@"com.apple.posterkit.provider.contents.userInfo" isDirectory:0];
  if (infoCopy)
  {
    if (-[PFPosterPath ensureContentsURLIsReachableAndReturnError:](selfCopy, "ensureContentsURLIsReachableAndReturnError:", error) && [v9 pf_storeToPlist:infoCopy error:error])
    {
      v10 = [infoCopy copy];
      userInfo = selfCopy->_userInfo;
      selfCopy->_userInfo = v10;

      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    v13 = objc_opt_new();
    v12 = [v13 removeItemAtURL:v9 error:error];

    v14 = selfCopy->_userInfo;
    selfCopy->_userInfo = 0;

    v16 = PFLogPosterContents(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v17 = *error;
      }

      else
      {
        v17 = 0;
      }

      v19[0] = 67240706;
      v19[1] = v12;
      v20 = 2114;
      v21 = v17;
      v22 = 2112;
      v23 = selfCopy;
      _os_log_impl(&dword_1C269D000, v16, OS_LOG_TYPE_DEFAULT, "erasing userInfo: %{public}i %{public}@ (path=%@)", v19, 0x1Cu);
    }
  }

  objc_sync_exit(selfCopy);
  return v12;
}

- (id)extendValidityForReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  lock_validityExtensions = self->_lock_validityExtensions;
  if (self->_lock_invalidated && lock_validityExtensions == 0)
  {
    [(PFPosterPath *)self extendValidityForReason:a2];
  }

  if (lock_validityExtensions == 255)
  {
    [(PFPosterPath *)self extendValidityForReason:a2];
  }

  if (self->_lock_sandboxExtensionHandle == -1 && (self->_options & 3) == 2)
  {
    v12 = 0;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E698E778]);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__PFPosterPath_extendValidityForReason___block_invoke;
    v18[3] = &unk_1E818A350;
    v18[4] = self;
    v18[5] = a2;
    v12 = [v9 initWithIdentifier:v11 forReason:reasonCopy invalidationBlock:v18];

    v13 = self->_lock_validityExtensions + 1;
    self->_lock_validityExtensions = v13;
    if (self->_lock_validityExtensionsHigh < v13)
    {
      self->_lock_validityExtensionsHigh = v13;
    }

    lock_allExtensions = self->_lock_allExtensions;
    if (!lock_allExtensions)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v16 = self->_lock_allExtensions;
      self->_lock_allExtensions = weakObjectsHashTable;

      lock_allExtensions = self->_lock_allExtensions;
    }

    [(NSHashTable *)lock_allExtensions addObject:v12];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

void __40__PFPosterPath_extendValidityForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 72));
  if (!*(*(a1 + 32) + 77))
  {
    __40__PFPosterPath_extendValidityForReason___block_invoke_cold_2(*(a1 + 32), a1, (a1 + 32));
  }

  __40__PFPosterPath_extendValidityForReason___block_invoke_cold_1(*(*(a1 + 32) + 77), (*(a1 + 32) + 77), (a1 + 32), v3);
}

- (uint64_t)_sandboxExtensionLevel
{
  if (self)
  {
    return *MEMORY[0x1E69E9BA8];
  }

  else
  {
    return 0;
  }
}

- (PFPosterPath)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || v5 == objc_opt_class())
  {
    [(PFPosterPath *)coderCopy initWithBSXPCCoder:&v9, &v10];
    v6 = v9;
    v7 = v10;
  }

  else
  {
    [(PFPosterPath *)self initWithBSXPCCoder:?];
    v7 = 0;
    v6 = v10;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PFPosterPath *)self encodeWithCoder:coderCopy, a2];
  }

  [(PFPosterPath *)self encodeWithCoder:coderCopy];
}

- (PFPosterPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || v5 == objc_opt_class())
  {
    [(PFPosterPath *)coderCopy initWithCoder:&v9, &v10];
    v6 = v9;
    v7 = v10;
  }

  else
  {
    [(PFPosterPath *)self initWithBSXPCCoder:?];
    v7 = 0;
    v6 = v10;
  }

  return v7;
}

- (void)invalidate
{
  if ((self->_options & 2) == 0)
  {
    [(PFPosterPath *)self _invalidate];
  }
}

- (void)_invalidate
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_12_0(self);
    os_unfair_lock_lock(v2);
    if ((*(v1 + 79) & 1) == 0)
    {
      *(v1 + 79) = 1;
      [(PFPosterPath *)v1 _lock_purgeIfPossible];
    }

    os_unfair_lock_unlock((v1 + 72));
  }
}

- (void)_lock_purgeIfPossible
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = OUTLINED_FUNCTION_12_0(self);
  os_unfair_lock_assert_owner(v2);
  if ((*(v1 + 80) & 1) != 0 || *(v1 + 79) != 1 || *(v1 + 77))
  {
    return;
  }

  *(v1 + 80) = 1;
  if (*(v1 + 64) != -1)
  {
    *__error() = 0;
    v3 = sandbox_extension_release();
    if (v3)
    {
      v4 = __error();
      v5 = strerror_r(*v4, __strerrbuf, 0x100uLL);
      v6 = PFLogPosterContents(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *__error();
        v8 = [(PFPosterPath *)v1 _lock_descriptionWithDebugInfo:?];
        *buf = 67109634;
        v24 = v7;
        v25 = 2082;
        v26 = __strerrbuf;
        v27 = 2114;
        v28 = v8;
        _os_log_error_impl(&dword_1C269D000, v6, OS_LOG_TYPE_ERROR, "failed to release sandboxExtensionHandle with errno=%i (%{public}s) : %{public}@", buf, 0x1Cu);
LABEL_36:
      }
    }

    else
    {
      v6 = PFLogPosterContents(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = [(PFPosterPath *)v1 _lock_descriptionWithDebugInfo:?];
        *__strerrbuf = 138543362;
        v30 = v8;
        _os_log_debug_impl(&dword_1C269D000, v6, OS_LOG_TYPE_DEBUG, "released sandboxExtensionHandle : %{public}@", __strerrbuf, 0xCu);
        goto LABEL_36;
      }
    }
  }

  if ((*(v1 + 76) & 1) == 0)
  {
    goto LABEL_18;
  }

  v9 = objc_opt_new();
  v10 = *(v1 + 8);
  v22 = 0;
  v11 = [v9 removeItemAtURL:v10 error:&v22];
  v12 = v22;

  v14 = PFLogPosterContents(v13);
  v15 = v14;
  if (!v11 || v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [(PFPosterPath *)v1 _lock_descriptionWithDebugInfo:?];
      *__strerrbuf = 138543618;
      v30 = v12;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&dword_1C269D000, v15, OS_LOG_TYPE_ERROR, "failed to purge contents with error=%{public}@ : contents=%{public}@", __strerrbuf, 0x16u);
      goto LABEL_34;
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(PFPosterPath *)v1 _lock_descriptionWithDebugInfo:?];
    *__strerrbuf = 138543362;
    v30 = v16;
    _os_log_debug_impl(&dword_1C269D000, v15, OS_LOG_TYPE_DEBUG, "purged contents : %{public}@", __strerrbuf, 0xCu);
LABEL_34:
  }

LABEL_18:
  if (*(v1 + 8))
  {
    os_unfair_lock_lock(&__allPathsLock);
    v17 = [_MergedGlobals member:v1];
    v18 = v17;
    if (v17 == v1 || !v17)
    {
      [_MergedGlobals removeObject:v1];
    }

    os_unfair_lock_unlock(&__allPathsLock);
    if (*(v1 + 16))
    {
      os_unfair_lock_lock(&__cachedServerPathsByIdentityByURLLock);
      v19 = [qword_1ED8486E8 objectForKey:*(v1 + 8)];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 objectForKey:*(v1 + 16)];

        if (v21 == v1 || !v21)
        {
          [v20 removeObjectForKey:*(v1 + 16)];
        }

        if (![v20 count])
        {
          [qword_1ED8486E8 removeObjectForKey:*(v1 + 8)];
        }
      }

      else
      {
        v21 = v18;
      }

      os_unfair_lock_unlock(&__cachedServerPathsByIdentityByURLLock);

      v18 = v21;
    }
  }
}

- (os_unfair_lock)_lock_descriptionWithDebugInfo:(os_unfair_lock *)info
{
  infoCopy = info;
  v50 = *MEMORY[0x1E69E9840];
  if (!info)
  {
    goto LABEL_28;
  }

  os_unfair_lock_assert_owner(info + 18);
  v4 = &stru_1F425B6D8;
  if (LOBYTE(infoCopy[20]._os_unfair_lock_opaque))
  {
    v5 = @":purged";
  }

  else
  {
    v5 = &stru_1F425B6D8;
  }

  v6 = v5;
  v7 = &stru_1F425B6D8;
  if (a2)
  {
    if (*&infoCopy[16]._os_unfair_lock_opaque == -1)
    {
      if (!*&infoCopy[12]._os_unfair_lock_opaque)
      {
        v7 = &stru_1F425B6D8;
LABEL_9:
        if (BYTE2(infoCopy[19]._os_unfair_lock_opaque))
        {
          v39 = v7;
          v40 = v6;
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v9 = *&infoCopy[10]._os_unfair_lock_opaque;
          v10 = [v9 countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v46;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v46 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                reason = [*(*(&v45 + 1) + 8 * i) reason];
                v15 = MEMORY[0x1E696AD98];
                v16 = [dictionary objectForKey:reason];
                v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + 1}];
                [dictionary setObject:v17 forKey:reason];
              }

              v11 = [v9 countByEnumeratingWithState:&v45 objects:v49 count:16];
            }

            while (v11);
          }

          allKeys = [dictionary allKeys];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __47__PFPosterPath__lock_descriptionWithDebugInfo___block_invoke;
          v43[3] = &unk_1E818A270;
          v19 = dictionary;
          v44 = v19;
          v20 = [allKeys sortedArrayUsingComparator:v43];

          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __47__PFPosterPath__lock_descriptionWithDebugInfo___block_invoke_2;
          v41[3] = &unk_1E818A298;
          v42 = v19;
          v21 = v19;
          v22 = [v20 bs_map:v41];
          v23 = MEMORY[0x1E696AD60];
          v24 = BYTE1(infoCopy[19]._os_unfair_lock_opaque);
          v25 = BYTE2(infoCopy[19]._os_unfair_lock_opaque);
          v26 = [v22 componentsJoinedByString:{@", "}];
          v4 = [v23 stringWithFormat:@" eCount=%u(%u) eReasons=%@", v24, v25, v26];

          v7 = v39;
          v6 = v40;
        }

        goto LABEL_18;
      }

      v35 = *&infoCopy[14]._os_unfair_lock_opaque;
      if (v35)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@" sURL=%@ sDest=%@", *&infoCopy[12]._os_unfair_lock_opaque, v35];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@" sURL=%@", *&infoCopy[12]._os_unfair_lock_opaque, v37];
      }
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@" sHandle=%lli", *&infoCopy[16]._os_unfair_lock_opaque, v37];
    }
    v7 = ;
    goto LABEL_9;
  }

LABEL_18:
  if (*&infoCopy[4]._os_unfair_lock_opaque)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    descriptorIdentifier = NSStringFromClass(v28);
    infoCopy = [v27 stringWithFormat:@"<%@:%p%@ %@%@%@>", descriptorIdentifier, infoCopy, v6, *&infoCopy[4]._os_unfair_lock_opaque, v7, v4];
  }

  else
  {
    descriptorIdentifier = [(os_unfair_lock *)infoCopy descriptorIdentifier];
    v30 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = *&infoCopy[8]._os_unfair_lock_opaque;
    fileSystemRepresentation = [*&infoCopy[2]._os_unfair_lock_opaque fileSystemRepresentation];
    if (descriptorIdentifier)
    {
      [v30 stringWithFormat:@"<%@:%p%@ descriptor='%@' role='%@' contents='%s'%@%@>", v32, infoCopy, v6, descriptorIdentifier, v33, fileSystemRepresentation, v7, v4];
    }

    else
    {
      [v30 stringWithFormat:@"<%@:%p%@ role='%@' contents='%s'%@%@>", v32, infoCopy, v6, v33, fileSystemRepresentation, v7, v4, v38];
    }
    infoCopy = ;
  }

LABEL_28:

  return infoCopy;
}

- (BOOL)_isPersistable
{
  if (!self || !*(self + 8) || !*(self + 16) || *(self + 76) != 2 || *(self + 48) || *(self + 56))
  {
    return 0;
  }

  os_unfair_lock_lock((self + 72));
  v2 = (*(self + 79) & 1) == 0 && (*(self + 80) & 1) == 0 && *(self + 64) == -1;
  os_unfair_lock_unlock((self + 72));
  return v2;
}

- (uint64_t)_isEqualToPersistable:(uint64_t)persistable
{
  v3 = a2;
  if (persistable)
  {
    if (![(PFPosterPath *)persistable _isPersistable])
    {
      goto LABEL_10;
    }

    if (persistable == v3)
    {
      persistable = 1;
      goto LABEL_11;
    }

    if (![(PFPosterPath *)v3 _isPersistable])
    {
LABEL_10:
      persistable = 0;
      goto LABEL_11;
    }

    contentsURL = [persistable contentsURL];
    contentsURL2 = [v3 contentsURL];
    if (BSEqualObjects())
    {
      role = [persistable role];
      role2 = [v3 role];
      if (BSEqualObjects())
      {
        serverIdentity = [persistable serverIdentity];
        serverIdentity2 = [v3 serverIdentity];
        if (BSEqualObjects())
        {
          descriptorIdentifier = [persistable descriptorIdentifier];
          descriptorIdentifier2 = [v3 descriptorIdentifier];
          persistable = BSEqualObjects();
        }

        else
        {
          persistable = 0;
        }
      }

      else
      {
        persistable = 0;
      }
    }

    else
    {
      persistable = 0;
    }
  }

LABEL_11:

  return persistable;
}

- (uint64_t)_initDecodedWithContentsURL:(void *)l role:(void *)role serverIdentity:(void *)identity descriptorIdentifier:(uint64_t)identifier sandboxExtensionHandle:
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a2;
  lCopy = l;
  roleCopy = role;
  identityCopy = identity;
  if (!self)
  {
    goto LABEL_19;
  }

  v15 = objc_opt_class();
  if ((PFPosterRoleIsValid(lCopy) & 1) == 0)
  {
    OUTLINED_FUNCTION_4_3();
    [(PFPosterPath *)v27 _initWithContentsURL:v28 role:v29 options:v30 serverIdentity:v31 descriptorIdentifier:v32 sandboxExtensionHandle:identifier sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
    v26 = v33;
    [(PFPosterPath *)v33 _invalidate];
    v35 = PFLogPosterContents(v34);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      v37 = PFPosterRolesSupportedForCurrentDeviceClass(v36);
      *buf = 138543618;
      v40 = lCopy;
      v41 = 2114;
      v42 = v37;
      _os_log_error_impl(&dword_1C269D000, v35, OS_LOG_TYPE_ERROR, "Failed to decode PFPosterPath with invalid role: %{public}@, supported roles for device class: %{public}@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  if (v15 != objc_opt_class())
  {
    if (!roleCopy)
    {
      v16 = OUTLINED_FUNCTION_10_1();
      v20 = 0;
      v21 = identityCopy;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (!roleCopy || identityCopy)
  {
LABEL_14:
    [(PFPosterPath *)self _initWithContentsURL:lCopy role:2 options:0 serverIdentity:0 descriptorIdentifier:identifier sandboxExtensionHandle:0 sandboxExtensionURL:0 sandboxExtensionAuditToken:?];
    v26 = v25;
    [(PFPosterPath *)v25 _invalidate];
LABEL_18:

LABEL_19:
    v23 = 0;
    goto LABEL_12;
  }

  if (identifier == -1)
  {
    v23 = [PFServerPosterPath _cachedPathWithContentsURL:v11 identity:roleCopy allocedInstance:self];

    goto LABEL_12;
  }

  v16 = OUTLINED_FUNCTION_10_1();
  v20 = roleCopy;
  v21 = 0;
LABEL_11:
  [(PFPosterPath *)v16 _initWithContentsURL:v17 role:v18 options:v19 serverIdentity:v20 descriptorIdentifier:v21 sandboxExtensionHandle:identifier sandboxExtensionURL:0 sandboxExtensionAuditToken:v38];
  v23 = v22;
LABEL_12:

  return v23;
}

- (id)_issueSandboxExtensionTokenWithContext:(xpc_object_t)context
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (context)
  {
    if (*(context + 6))
    {
      *__error() = 0;
      v4 = *(context + 7);
      [*(context + 6) fileSystemRepresentation];
      if (v4)
      {
        v5 = *(context + 7);
        if (v5)
        {
          objc_msgSend_realToken(v5);
        }

        else
        {
          *__strerrbuf = 0u;
          v16 = 0u;
        }

        v6 = sandbox_extension_issue_file_to_process();
      }

      else
      {
        v6 = sandbox_extension_issue_file();
      }

      v7 = v6;
      if (v6)
      {
        context = xpc_string_create(v6);
        free(v7);
        goto LABEL_13;
      }

      v8 = __error();
      strerror_r(*v8, __strerrbuf, 0x100uLL);
      __error();
      v13 = [PFPosterPath _reportSandboxExtensionError:2 withCode:@"%@: cannot extend access of %@ due to sandbox errno=%i (%s)" reason:v9, v10, v11, v12, v3];
    }

    context = 0;
  }

LABEL_13:

  return context;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_contentsURL forKey:@"c"];
  [coderCopy encodeObject:self->_serverIdentity forKey:@"i"];
  [coderCopy encodeObject:self->_descriptorIdentifier forKey:@"d"];
  [coderCopy encodeObject:self->_role forKey:@"r"];
  v5 = [(PFPosterPath *)self _issueSandboxExtensionTokenWithContext:?];
  if (v5)
  {
    v6 = PFLogPosterContents([coderCopy encodeXPCObject:v5 forKey:@"t"]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_13(&dword_1C269D000, v7, v8, "created and bsxpc encoded sandboxToken %@ : %@", v9, v10, v11, v12);
    }
  }
}

- (NSString)description
{
  v3 = OUTLINED_FUNCTION_12_0(self);
  os_unfair_lock_lock(v3);
  v4 = [(PFPosterPath *)v2 _lock_descriptionWithDebugInfo:?];
  os_unfair_lock_unlock(v2 + 18);

  return v4;
}

- (NSString)debugDescription
{
  v3 = OUTLINED_FUNCTION_12_0(self);
  os_unfair_lock_lock(v3);
  v4 = [(PFPosterPath *)v2 _lock_descriptionWithDebugInfo:?];
  os_unfair_lock_unlock(v2 + 18);

  return v4;
}

- (void)_initWithContentsURL:(uint64_t)a1 role:(NSObject *)a2 options:serverIdentity:descriptorIdentifier:sandboxExtensionHandle:sandboxExtensionURL:sandboxExtensionAuditToken:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1C269D000, a2, OS_LOG_TYPE_DEBUG, "created purgeable contents=%{public}@", &v2, 0xCu);
}

- (void)_initWithContentsURL:(const char *)a1 role:options:serverIdentity:descriptorIdentifier:sandboxExtensionHandle:sandboxExtensionURL:sandboxExtensionAuditToken:.cold.2(const char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138413314;
  v5 = v1;
  v6 = 2112;
  v7 = v3;
  v8 = 2048;
  v9 = 0;
  v10 = 2112;
  v11 = @"PFPosterPath.m";
  v12 = 1024;
  v13 = 163;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v4, 0x30u);
}

+ (void)_reportSandboxExtensionError:(char *)a1 withCode:reason:.cold.1(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromSelector(a1);
  v4 = [v2 stringWithFormat:@"bad format string for %@", v3];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_11_0();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_extendReadAccessForURL:(char *)a1 toAuditToken:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"extensionURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)temporaryDescriptorPathWithIdentifier:(char *)a1 role:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)temporaryDescriptorPathWithIdentifier:(uint64_t)a1 role:(char *)a2 .cold.2(uint64_t a1, char *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = PFPosterRolesSupportedForCurrentDeviceClass(a1);
  v6 = [v4 stringWithFormat:@"invalid role: %@, supported roles for device class: %@", a1, v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v7 = OUTLINED_FUNCTION_11_0();
    v8 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, v14, v15);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)temporaryDescriptorPathWithIdentifier:(char *)a1 role:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)temporaryPathForTask:(uint64_t)a1 role:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = PFPosterRolesSupportedForCurrentDeviceClass(a1);
  v6 = [v4 stringWithFormat:@"invalid role: %@, supported roles for device class: %@", a1, v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v7 = OUTLINED_FUNCTION_11_0();
    v8 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, v14, v15);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)storeUserInfo:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSDictionaryClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)extendValidityForReason:(os_unfair_lock *)a1 .cold.1(os_unfair_lock *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PFPosterPath *)a1 _lock_descriptionWithDebugInfo:?];
  v5 = [v3 stringWithFormat:@"validity overflow of %@", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_11_0();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)extendValidityForReason:(os_unfair_lock *)a1 .cold.2(os_unfair_lock *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PFPosterPath *)a1 _lock_descriptionWithDebugInfo:?];
  v5 = [v3 stringWithFormat:@"cannot extend validity after invalidation of %@", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_11_0();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __40__PFPosterPath_extendValidityForReason___block_invoke_cold_1(char a1, _BYTE *a2, uint64_t *a3, void *a4)
{
  *a2 = a1 - 1;
  [*(*a3 + 40) removeObject:a4];
  if (![*(*a3 + 40) count])
  {
    v5 = *(*a3 + 40);
    *(*a3 + 40) = 0;
  }

  [(PFPosterPath *)*a3 _lock_purgeIfPossible];
  os_unfair_lock_unlock((*a3 + 72));
}

void __40__PFPosterPath_extendValidityForReason___block_invoke_cold_2(os_unfair_lock *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(PFPosterPath *)a1 _lock_descriptionWithDebugInfo:?];
  v6 = [v4 stringWithFormat:@"validity underflow of %@", v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(*(a2 + 40));
    v8 = objc_opt_class();
    v16 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, v14, v15);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithBSXPCCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_3();
  [(PFPosterPath *)v3 _initWithContentsURL:v4 role:v5 options:v6 serverIdentity:v7 descriptorIdentifier:v8 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  *a2 = v9;

  [(PFPosterPath *)v9 _invalidate];
}

- (void)initWithBSXPCCoder:(void *)a3 .cold.2(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"c"];
  *a3 = v8;
  v18 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v9 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v10 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"r"];
  v11 = [a1 decodeXPCObjectOfType:MEMORY[0x1E69E9F10] forKey:@"t"];
  v12 = [v18 descriptorIdentifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;

  v16 = objc_opt_class();
  v17 = _consumeSandboxExtensionHandleForXPCObject(v11, v15, v8, v16, @"bsxpc");
  *a4 = [(PFPosterPath *)a2 _initDecodedWithContentsURL:v8 role:v10 serverIdentity:v18 descriptorIdentifier:v9 sandboxExtensionHandle:v17];
}

- (BOOL)encodeWithCoder:(const char *)a3 .cold.1(uint64_t a1, uint64_t a2, const char *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  result = [(PFPosterPath *)a1 _isPersistable];
  if (!result)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v6 stringWithFormat:@"<%@:%p> can only be encoded by %@ rather than %@ : %@", v8, a1, v10, v12, a1];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a3);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v18 = 138544642;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      v23 = a1;
      v24 = 2114;
      v25 = @"PFPosterPath.m";
      v26 = 1024;
      v27 = 875;
      v28 = 2114;
      v29 = v13;
      OUTLINED_FUNCTION_3_0(&dword_1C269D000, MEMORY[0x1E69E9C10], v17, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v18);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C26E180CLL);
  }

  return result;
}

- (void)encodeWithCoder:(void *)a1 .cold.2(void *a1, void *a2)
{
  [a2 encodeObject:a1[1] forKey:@"c"];
  [a2 encodeObject:a1[2] forKey:@"i"];
  [a2 encodeObject:a1[3] forKey:@"d"];
  [a2 encodeObject:a1[4] forKey:@"r"];
  v4 = [(PFPosterPath *)a1 _issueSandboxExtensionTokenWithContext:?];
  if (v4)
  {
    v5 = PFLogPosterContents([a2 encodeXPCObject:v4 forKey:@"t"]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_13(&dword_1C269D000, v6, v7, "created and nsxpc encoded sandboxToken %@ : %@", v8, v9, v10, v11);
    }
  }
}

- (void)initWithCoder:(void *)a3 .cold.2(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"c"];
  *a3 = v8;
  v18 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v9 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v10 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"r"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [a1 decodeXPCObjectOfType:MEMORY[0x1E69E9F10] forKey:@"t"];
    v12 = [v18 descriptorIdentifier];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v9;
    }

    v15 = v14;

    v16 = objc_opt_class();
    v17 = _consumeSandboxExtensionHandleForXPCObject(v11, v15, v8, v16, @"nsxpc");
  }

  else
  {
    v17 = -1;
  }

  *a4 = [(PFPosterPath *)a2 _initDecodedWithContentsURL:v8 role:v10 serverIdentity:v18 descriptorIdentifier:v9 sandboxExtensionHandle:v17];
}

@end