@interface BRCFSPackageEnumerator
+ (BOOL)enumerateItemsInPackageAtURL:(id)l error:(id *)error usingBlock:(id)block;
- (BOOL)enumeratePackageItemsWithSortOrder:(unint64_t)order error:(id *)error usingBlock:(id)block;
- (id)initForURL:(id)l boundaryKey:(id)key error:(id *)error;
@end

@implementation BRCFSPackageEnumerator

+ (BOOL)enumerateItemsInPackageAtURL:(id)l error:(id *)error usingBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  lCopy = l;
  blockCopy = block;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__BRCFSPackageEnumerator_enumerateItemsInPackageAtURL_error_usingBlock___block_invoke;
  v27[3] = &unk_278500E40;
  v27[4] = &v28;
  v9 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:0 options:16 errorHandler:v27];

  v10 = 0;
  *&v11 = 138412546;
  v25 = v11;
  do
  {
    nextObject = [v9 nextObject];

    if (!nextObject)
    {
      break;
    }

    v13 = objc_autoreleasePoolPush();
    lastPathComponent = [nextObject lastPathComponent];
    if ([lastPathComponent br_isExcludedWithMaximumDepth:1])
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = v25;
        v35 = nextObject;
        v36 = 2112;
        v37 = v15;
        _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Item %@ is excluded from sync. Skipping hierarchy%@", buf, 0x16u);
      }

      if ([nextObject fp_isFolder])
      {
        [v9 skipDescendants];
      }

      v17 = 0;
    }

    else
    {
      buf[0] = 0;
      relativePath = [nextObject relativePath];
      blockCopy[2](blockCopy, nextObject, relativePath, buf);

      v17 = buf[0];
    }

    objc_autoreleasePoolPop(v13);
    v10 = nextObject;
  }

  while ((v17 & 1) == 0);
  v19 = v29[5];
  if (v19)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, 0x90u))
    {
      v24 = "(passed to caller)";
      *buf = 136315906;
      v35 = "+[BRCFSPackageEnumerator enumerateItemsInPackageAtURL:error:usingBlock:]";
      v36 = 2080;
      if (!error)
      {
        v24 = "(ignored by caller)";
      }

      v37 = v24;
      v38 = 2112;
      v39 = v19;
      v40 = 2112;
      v41 = v20;
      _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v22 = v19;
    *error = v19;
  }

  _Block_object_dispose(&v28, 8);
  return v19 == 0;
}

- (id)initForURL:(id)l boundaryKey:(id)key error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  v37.receiver = self;
  v37.super_class = BRCFSPackageEnumerator;
  v11 = [(BRCFSPackageEnumerator *)&v37 init];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [BRCFSPackageEnumerator initForURL:lCopy boundaryKey:v12 error:v13];
  }

  objc_storeStrong(&v11->_rootURL, l);
  v14 = [keyCopy copy];
  boundaryKey = v11->_boundaryKey;
  v11->_boundaryKey = v14;

  v16 = [BRCSQLBackedSet createStringsSetWithError:error];
  packageItems = v11->_packageItems;
  v11->_packageItems = v16;

  if (!v11->_packageItems)
  {
    goto LABEL_10;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__8;
  v35 = __Block_byref_object_dispose__8;
  v36 = 0;
  rootURL = v11->_rootURL;
  obj = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __55__BRCFSPackageEnumerator_initForURL_boundaryKey_error___block_invoke;
  v27[3] = &unk_278500E68;
  v28 = v11;
  v29 = &v31;
  [BRCFSPackageEnumerator enumerateItemsInPackageAtURL:rootURL error:&obj usingBlock:v27];
  objc_storeStrong(&v36, obj);
  v19 = v32[5];
  if (!v19)
  {

    _Block_object_dispose(&v31, 8);
LABEL_12:
    v24 = v11;
    goto LABEL_13;
  }

  v20 = v19;
  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, 0x90u))
  {
    v26 = "(passed to caller)";
    *buf = 136315906;
    v39 = "[BRCFSPackageEnumerator initForURL:boundaryKey:error:]";
    v40 = 2080;
    if (!error)
    {
      v26 = "(ignored by caller)";
    }

    v41 = v26;
    v42 = 2112;
    v43 = v20;
    v44 = 2112;
    v45 = v21;
    _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
  }

  if (error)
  {
    v23 = v20;
    *error = v20;
  }

  _Block_object_dispose(&v31, 8);
LABEL_10:
  v24 = 0;
LABEL_13:

  return v24;
}

void __55__BRCFSPackageEnumerator_initForURL_boundaryKey_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 16);
  v9 = 0;
  [v6 addObject:a3 error:&v9];
  v7 = v9;
  v8 = v9;
  if (v8)
  {
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  }
}

- (BOOL)enumeratePackageItemsWithSortOrder:(unint64_t)order error:(id *)error usingBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  packageItems = self->_packageItems;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__BRCFSPackageEnumerator_enumeratePackageItemsWithSortOrder_error_usingBlock___block_invoke;
  v16[3] = &unk_278500E90;
  v16[4] = self;
  v18 = &v19;
  v9 = blockCopy;
  v17 = v9;
  [(BRCSQLBackedSet *)packageItems enumerateObjectsWithSortOrder:2 usingBlock:v16];
  v10 = v20[5];
  if (v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      v15 = "(passed to caller)";
      *buf = 136315906;
      v26 = "[BRCFSPackageEnumerator enumeratePackageItemsWithSortOrder:error:usingBlock:]";
      v27 = 2080;
      if (!error)
      {
        v15 = "(ignored by caller)";
      }

      v28 = v15;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v13 = v10;
    *error = v10;
  }

  _Block_object_dispose(&v19, 8);
  return v10 == 0;
}

void __78__BRCFSPackageEnumerator_enumeratePackageItemsWithSortOrder_error_usingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1[4] + 8) URLByAppendingPathComponent:v5];
  v8 = a1[4];
  v9 = *(v8 + 8);
  v10 = *(v8 + 24);
  v11 = *(a1[6] + 8);
  obj = *(v11 + 40);
  v12 = [BRCPackageItem newItemForSignatureCalculationWithURL:v7 inPackage:v9 boundaryKey:v10 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    (*(a1[5] + 16))();
  }

  else if ([*(*(a1[6] + 8) + 40) br_isCloudDocsErrorCode:43])
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 path];
      v16 = [v15 fp_obfuscatedPath];
      *buf = 138412546;
      v26 = v16;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Ignoring excluded package item from sync %@%@", buf, 0x16u);
    }

    v17 = *(a1[6] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      v21 = [v7 path];
      v22 = [v21 fp_obfuscatedPath];
      v23 = *(*(a1[6] + 8) + 40);
      *buf = 138412802;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      v29 = 2112;
      v30 = v19;
      _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] Couldn't create import item for %@ - %@%@", buf, 0x20u);
    }

    *a3 = 1;
  }

  objc_autoreleasePoolPop(v6);
}

- (void)initForURL:(uint64_t)a1 boundaryKey:(uint64_t)a2 error:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Creating BRCFSPackageEnumerator for %@%@", &v3, 0x16u);
}

@end