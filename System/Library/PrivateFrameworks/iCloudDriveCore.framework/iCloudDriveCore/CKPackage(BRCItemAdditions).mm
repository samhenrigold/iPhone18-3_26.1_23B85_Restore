@interface CKPackage(BRCItemAdditions)
+ (uint64_t)anchorExistsForArchiverInfo:()BRCItemAdditions;
+ (void)destroyAnchorAndPackageAnchoredAtURL:()BRCItemAdditions;
- (uint64_t)anchorAtURL:()BRCItemAdditions error:;
@end

@implementation CKPackage(BRCItemAdditions)

+ (void)destroyAnchorAndPackageAnchoredAtURL:()BRCItemAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CFAE68] dataWithContentsOfURL:v3];
  if (v4)
  {
    v5 = [MEMORY[0x277CBC538] descriptionOfAnchor:v4];
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138543874;
      v10 = v3;
      v11 = 2114;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] Destroying anchor %{public}@: %{public}@%@", &v9, 0x20u);
    }

    [MEMORY[0x277CBC538] liftAnchor:v4];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:v3 error:0];
  }
}

+ (uint64_t)anchorExistsForArchiverInfo:()BRCItemAdditions
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4 encoding:4];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v7 = [v6 checkResourceIsReachableAndReturnError:0];

  return v7;
}

- (uint64_t)anchorAtURL:()BRCItemAdditions error:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    packageID = [self packageID];
    v16 = 138412802;
    v17 = packageID;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Anchoring CKPackageID=%@ at %@%@", &v16, 0x20u);
  }

  [objc_opt_class() destroyAnchorAndPackageAnchoredAtURL:v6];
  v9 = [BRCUserDefaults defaultsForMangledID:0];
  v10 = MEMORY[0x277CBEAA8];
  [v9 packageAnchorExpirationInterval];
  v11 = [v10 dateWithTimeIntervalSinceNow:?];
  v12 = [self anchorWithExpirationDate:v11 error:a4];
  v13 = [v12 writeToURL:v6 options:1 error:a4];

  return v13;
}

@end