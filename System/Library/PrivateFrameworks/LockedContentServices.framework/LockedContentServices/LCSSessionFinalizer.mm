@interface LCSSessionFinalizer
+ (BOOL)removeContentsOfExtensionDataContainerForBundleProvider:(id)provider;
+ (id)finalizeTemporarySessionAtURL:(id)l forBundleProvider:(id)provider;
@end

@implementation LCSSessionFinalizer

+ (id)finalizeTemporarySessionAtURL:(id)l forBundleProvider:(id)provider
{
  v51 = *MEMORY[0x277D85DE8];
  lCopy = l;
  providerCopy = provider;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v44 = 0;
  v8 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v44];
  v9 = v44;
  v10 = 0;
  if ([v8 count])
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] < 2)
    {
      v10 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v39 = [pathComponents objectAtIndex:{objc_msgSend(pathComponents, "count") - 2}];
    v13 = [[LCSSessionURLBuilder alloc] initWithTypeIdentifier:v39];
    v14 = [(LCSSessionURLBuilder *)v13 finalizationStagingSessionURLForBundleProvider:providerCopy fromTemporaryURL:lCopy];
    v15 = v14;
    if (!v14)
    {
      uRLByDeletingLastPathComponent = LCSLogCommon(0);
      if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v10 = 0;
      goto LABEL_42;
    }

    uRLByDeletingLastPathComponent = [v14 URLByDeletingLastPathComponent];
    v43 = 0;
    v17 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v43];
    v18 = v43;
    v38 = v18;
    if ((v17 & 1) == 0)
    {
      v37 = LCSLogCommon(v18);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v10 = 0;
      goto LABEL_41;
    }

    v42 = 0;
    v19 = [defaultManager copyItemAtURL:lCopy toURL:v15 error:&v42];
    v20 = v42;
    v37 = v20;
    if ((v19 & 1) == 0)
    {
      v36 = LCSLogCommon(v20);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v10 = 0;
      goto LABEL_40;
    }

    v21 = [(LCSSessionURLBuilder *)v13 finalizedSessionURLForBundleProvider:providerCopy fromSessionURL:v15];
    v36 = v21;
    if (!v21)
    {
      v26 = LCSLogCommon(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v41 = 0;
      v35 = [defaultManager removeItemAtURL:v15 error:&v41];
      v27 = v41;
      if (v35)
      {
        v10 = 0;
LABEL_39:

LABEL_40:
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v34 = v27;
      v33 = LCSLogCommon(v27);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v10 = 0;
LABEL_38:

      v27 = v34;
      goto LABEL_39;
    }

    [v21 URLByDeletingLastPathComponent];
    v34 = v40[1] = 0;
    v22 = [defaultManager createDirectoryAtURL:? withIntermediateDirectories:? attributes:? error:?];
    v23 = 0;
    v33 = v23;
    if (v22)
    {
      v40[0] = 0;
      v24 = [defaultManager moveItemAtURL:v15 toURL:v36 error:v40];
      v32 = v40[0];
      v25 = LCSLogCommon(v32);
      if (v24)
      {
        v31 = v25;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
        }

        v10 = v36;
        goto LABEL_37;
      }

      v28 = v25;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = @"no error returned";
        *buf = 138412802;
        if (v32)
        {
          v30 = v32;
        }

        v46 = v15;
        v47 = 2112;
        v48 = v36;
        v49 = 2112;
        v50 = v30;
        _os_log_error_impl(&dword_256175000, v28, OS_LOG_TYPE_ERROR, "Failed moving from %@ to %@: %@", buf, 0x20u);
      }
    }

    else
    {
      v32 = LCSLogCommon(v23);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }
    }

    v10 = 0;
LABEL_37:

    goto LABEL_38;
  }

LABEL_44:

  return v10;
}

+ (BOOL)removeContentsOfExtensionDataContainerForBundleProvider:(id)provider
{
  providerCopy = provider;
  v4 = MEMORY[0x277D46FA0];
  bundleIdentifier = [providerCopy bundleIdentifier];
  v6 = [v4 predicateMatchingBundleIdentifier:bundleIdentifier];

  v7 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"LockedContentServices deleting contents of extension data container"];
  v8 = [objc_alloc(MEMORY[0x277D47020]) initWithPredicate:v6 context:v7];
  v19 = 0;
  v9 = [v8 acquireWithError:&v19];
  v10 = v19;
  v11 = v10;
  if (v9)
  {
    bundleIdentifier2 = [providerCopy bundleIdentifier];
    [bundleIdentifier2 cStringUsingEncoding:4];
    v13 = container_delete_all_data_container_content_for_current_user();

    v15 = v13 == 1;
    if (v13 != 1)
    {
      v16 = LCSLogCommon(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer removeContentsOfExtensionDataContainerForBundleProvider:];
      }
    }

    [v8 invalidate];
  }

  else
  {
    v17 = LCSLogCommon(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(LCSSessionFinalizer *)providerCopy removeContentsOfExtensionDataContainerForBundleProvider:v11, v17];
    }

    v15 = 0;
  }

  return v15;
}

+ (void)finalizeTemporarySessionAtURL:forBundleProvider:.cold.4()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  v3 = v0;
  _os_log_debug_impl(&dword_256175000, v1, OS_LOG_TYPE_DEBUG, "Finalized %@ to %@", v2, 0x16u);
}

+ (void)removeContentsOfExtensionDataContainerForBundleProvider:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2_1();
  v7 = a2;
  _os_log_error_impl(&dword_256175000, a3, OS_LOG_TYPE_ERROR, "Unable to acquire termination assertion for %@: %@", v6, 0x16u);
}

@end