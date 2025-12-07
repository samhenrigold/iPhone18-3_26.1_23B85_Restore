@interface TRIClientNamespaceMetadataStorage
@end

@implementation TRIClientNamespaceMetadataStorage

void __85__TRIClientNamespaceMetadataStorage_Server__mergeNamespaceMetadata_forNamespaceName___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) loadNamespaceMetadataForNamespaceName:*(a1 + 40) error:0];
  v3 = v2;
  if (v2 && (v4 = [v2 compatibilityVersion], v4 == objc_msgSend(*(a1 + 48), "compatibilityVersion")))
  {
    v5 = v3;
    v6 = [*(a1 + 48) factorNamePurgeabilityLevels];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __85__TRIClientNamespaceMetadataStorage_Server__mergeNamespaceMetadata_forNamespaceName___block_invoke_2;
    v21[3] = &unk_279DE2798;
    v7 = v5;
    v22 = v7;
    [v6 enumerateKeysAndEnumsUsingBlock:v21];
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEBUG, "Found ClientNamespaceMetadata with different compatibility version, overwriting", buf, 2u);
    }

    v7 = *(a1 + 48);
  }

  v9 = [*(a1 + 32) urlForNamespaceMetadataForNamespaceName:*(a1 + 40)];
  v10 = [v7 data];
  if (!v10)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIClientNamespaceMetadataStorage+Server.m" lineNumber:51 description:{@"Expression was unexpectedly nil/false: %@", @"[mergedNamespaceMetadata data]"}];
  }

  v11 = [v9 URLByDeletingLastPathComponent];
  v12 = [v11 path];

  if (!v12)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIClientNamespaceMetadataStorage+Server.m" lineNumber:52 description:{@"Expression was unexpectedly nil/false: %@", @"[[metadataURL URLByDeletingLastPathComponent] path]"}];
  }

  if (([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v12] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v20 = 0;
  v13 = [v10 writeToURL:v9 options:268435457 error:&v20];
  v14 = v20;
  if ((v13 & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      v17 = [*(a1 + 48) compatibilityVersion];
      *buf = 138543874;
      v24 = v16;
      v25 = 1024;
      v26 = v17;
      v27 = 2114;
      v28 = v14;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to write TRIClientNamespaceMetadata for namespace %{public}@ and compatibility version %u: %{public}@", buf, 0x1Cu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __85__TRIClientNamespaceMetadataStorage_Server__mergeNamespaceMetadata_forNamespaceName___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 factorNamePurgeabilityLevels];
  [v6 setEnum:a3 forKey:v5];
}

void __121__TRIClientNamespaceMetadataStorage_Server__removeOutdatedNamespaceMetadataForNamespaceName_currentCompatibilityVersion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [v2 loadNamespaceMetadataForNamespaceName:v3 error:&v16];
  v5 = v16;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  if (!v4 || [v4 compatibilityVersion] == *(a1 + 64))
  {
    v6 = 1;
    v7 = v5;
LABEL_6:
    *(*(*(a1 + 48) + 8) + 24) = v6;
    goto LABEL_7;
  }

  v8 = [*(a1 + 32) urlForNamespaceMetadataForNamespaceName:*(a1 + 40)];
  v7 = [v8 path];

  if (!v7)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIClientNamespaceMetadataStorage+Server.m" lineNumber:90 description:{@"Expression was unexpectedly nil/false: %@", @"[[self urlForNamespaceMetadataForNamespaceName:namespaceName] path]"}];
  }

  if (unlink([v7 fileSystemRepresentation]) && *__error() != 2)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = [v4 compatibilityVersion];
      v12 = __error();
      v13 = strerror(*v12);
      v14 = *__error();
      *buf = 138544130;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      v21 = 2080;
      v22 = v13;
      v23 = 1024;
      v24 = v14;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Failed to delete outdated TRIClientNamespaceMetadata for namespace %{public}@ and compatibility version %u: %s (%d)", buf, 0x22u);
    }

    v6 = 0;
    goto LABEL_6;
  }

LABEL_7:
}

@end