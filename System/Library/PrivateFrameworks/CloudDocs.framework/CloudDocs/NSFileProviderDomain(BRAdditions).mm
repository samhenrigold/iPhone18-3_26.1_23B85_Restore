@interface NSFileProviderDomain(BRAdditions)
- (id)br_volumeUUID;
- (uint64_t)br_isCiconiaDomain;
@end

@implementation NSFileProviderDomain(BRAdditions)

- (uint64_t)br_isCiconiaDomain
{
  identifier = [self identifier];
  v2 = [identifier hasPrefix:@"Ciconia-"];

  return v2;
}

- (id)br_volumeUUID
{
  v3 = 0;
  v27 = *MEMORY[0x1E69E9840];
  v4 = 1;
  a2.n128_u64[0] = 138412802;
  v19 = a2;
  while (1)
  {
    v5 = v4;
    v6 = MEMORY[0x1E69673E0];
    identifier = [self identifier];
    v8 = [BRFileProviderHelper br_getProviderDomainIDForDomainIdentifier:identifier dataSeparated:v3 & 1];
    v20 = 0;
    v9 = [v6 providerDomainWithID:v8 cachePolicy:0 error:&v20];
    v10 = v20;

    storageURLs = [v9 storageURLs];
    v12 = [storageURLs count];

    if (v12)
    {
      break;
    }

    if (v10)
    {
      v13 = brc_bread_crumbs("[NSFileProviderDomain(BRAdditions) br_volumeUUID]", 34);
      v14 = brc_default_log(1, 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = v19.n128_u32[0];
        selfCopy = self;
        v23 = 2112;
        v24 = v10;
        v25 = 2112;
        v26 = v13;
        _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Failed getting provider domain: %@%@", buf, 0x20u);
      }
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      fp_volumeUUID = 0;
      goto LABEL_10;
    }
  }

  storageURLs2 = [v9 storageURLs];
  v16 = [storageURLs2 objectAtIndexedSubscript:0];

  fp_volumeUUID = [v16 fp_volumeUUID];

LABEL_10:

  return fp_volumeUUID;
}

@end