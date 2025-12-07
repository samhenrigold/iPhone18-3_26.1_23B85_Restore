@interface IXUnregisterOSModuleToken
- (BOOL)acquireTerminationAssertionsWithError:(id *)error;
- (BOOL)isValid;
- (IXUnregisterOSModuleToken)initWithModuleURL:(id)l options:(id)options;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IXUnregisterOSModuleToken

- (IXUnregisterOSModuleToken)initWithModuleURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = IXUnregisterOSModuleToken;
  v8 = [(IXUnregisterOSModuleToken *)&v13 init];
  if (v8)
  {
    v9 = [lCopy copy];
    moduleURL = v8->_moduleURL;
    v8->_moduleURL = v9;

    objc_storeStrong(&v8->_options, options);
    terminationAssertion = v8->_terminationAssertion;
    v8->_terminationAssertion = 0;
  }

  return v8;
}

- (BOOL)isValid
{
  terminationAssertion = [(IXUnregisterOSModuleToken *)self terminationAssertion];
  v3 = terminationAssertion != 0;

  return v3;
}

- (BOOL)acquireTerminationAssertionsWithError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  moduleURL = [(IXUnregisterOSModuleToken *)self moduleURL];
  v6 = [MEMORY[0x1E69635F8] enumeratorForApplicationsOnSameVolumeWithinDirectoryAtURL:moduleURL enumerationOptions:0 filteringOptions:0];
  if (!v6)
  {
    v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(IXUnregisterOSModuleToken *)moduleURL acquireTerminationAssertionsWithError:v23];
    }

    path = [moduleURL path];
    v19 = _CreateError("[IXUnregisterOSModuleToken acquireTerminationAssertionsWithError:]", 60, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to enumerate apps on module at %@", v25, path);

    v17 = 0;
    v16 = 0;
    v7 = 0;
LABEL_15:
    if (!error)
    {
      goto LABEL_17;
    }

LABEL_16:
    v26 = v19;
    *error = v19;
    goto LABEL_17;
  }

  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allObjects = [v6 allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        bundleIdentifier = [*(*(&v30 + 1) + 8 * i) bundleIdentifier];
        [v7 addObject:bundleIdentifier];
      }

      v10 = [allObjects countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x1E696AEC0];
  path2 = [moduleURL path];
  v16 = [v14 stringWithFormat:@"installcoordinationd os-module-unregister moduleURL:%@", path2];

  v29 = 0;
  v17 = [[IXTerminationAssertion alloc] initForBundleIDs:v7 description:v16 terminationResistance:50 error:&v29];
  v18 = v29;
  v19 = v18;
  if (!v17)
  {
    goto LABEL_15;
  }

  v28 = v18;
  v20 = [v17 acquireAssertion:&v28];
  v21 = v28;

  if (v20)
  {
    [(IXUnregisterOSModuleToken *)self setTerminationAssertion:v17];
    v22 = 1;
    v19 = v21;
    goto LABEL_19;
  }

  v19 = v21;
  if (error)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (!v17)
  {
    v22 = 0;
    goto LABEL_21;
  }

  [v17 invalidate];
  v22 = 0;
LABEL_19:

LABEL_21:
  return v22;
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  terminationAssertion = [(IXUnregisterOSModuleToken *)self terminationAssertion];
  v4 = terminationAssertion;
  if (terminationAssertion)
  {
    [terminationAssertion invalidate];
    [(IXUnregisterOSModuleToken *)self setTerminationAssertion:0];
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      moduleURL = [(IXUnregisterOSModuleToken *)self moduleURL];
      path = [moduleURL path];
      v9 = 136315394;
      v10 = "[IXUnregisterOSModuleToken invalidate]";
      v11 = 2112;
      v12 = path;
      v8 = "%s: Invalidated unregister token for OSModule at %@";
LABEL_6:
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_INFO, v8, &v9, 0x16u);
    }
  }

  else
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      moduleURL = [(IXUnregisterOSModuleToken *)self moduleURL];
      path = [moduleURL path];
      v9 = 136315394;
      v10 = "[IXUnregisterOSModuleToken invalidate]";
      v11 = 2112;
      v12 = path;
      v8 = "%s: Token for OSModule at %@ already invalidated";
      goto LABEL_6;
    }
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  path = [*(self + 8) path];
  v4[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_FAULT, "%s: IXUnregisterOSModuleToken deallocated without being invalidated for OSModule at %@", v4, 0x16u);
}

- (void)acquireTerminationAssertionsWithError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v5[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v6 = v4;
  v7 = 0;
  _os_log_error_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to enumerate apps on module at %@ : %@", v5, 0x20u);
}

@end