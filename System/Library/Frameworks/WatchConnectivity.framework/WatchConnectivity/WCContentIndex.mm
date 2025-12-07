@interface WCContentIndex
- (BOOL)isEqual:(id)equal;
- (NSArray)index;
- (NSString)description;
- (WCContentIndex)initWithContainingFolder:(id)folder;
- (id)addContentIdentifier:(id)identifier;
- (id)commit;
- (unint64_t)hash;
- (void)commit;
- (void)invalidate;
- (void)loadContentIfNecessary;
- (void)removeContentIdentifier:(id)identifier;
@end

@implementation WCContentIndex

- (WCContentIndex)initWithContainingFolder:(id)folder
{
  folderCopy = folder;
  v11.receiver = self;
  v11.super_class = WCContentIndex;
  v5 = [(WCContentIndex *)&v11 init];
  if (v5)
  {
    v6 = [folderCopy URLByAppendingPathComponent:@"contents.index" isDirectory:0];
    itemURL = v5->_itemURL;
    v5->_itemURL = v6;

    v8 = objc_opt_new();
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v8;

    [(NSOperationQueue *)v5->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_operationQueue setQualityOfService:17];
    [(WCContentIndex *)v5 loadContentIfNecessary];
    [MEMORY[0x277CCA9E8] addFilePresenter:v5];
  }

  return v5;
}

- (void)invalidate
{
  [(WCContentIndex *)self setInvalidated:1];
  v3 = MEMORY[0x277CCA9E8];

  [v3 removeFilePresenter:self];
}

- (void)loadContentIfNecessary
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_0_0(self, a2, "[WCContentIndex loadContentIfNecessary]");
  OUTLINED_FUNCTION_1_0(&dword_23B2FA000, v3, v3, "%{public}s could not read in index file with error: %{public}@", v4);
}

void __40__WCContentIndex_loadContentIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (!v4)
  {
    obj = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a2 options:0 error:&obj];
    objc_storeStrong(v3, obj);
    if (v6)
    {
      v7 = *(*(a1 + 32) + 8);
      v11 = 0;
      v8 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:1 format:0 error:&v11];
      objc_storeStrong((v7 + 40), v11);
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

- (NSArray)index
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAA80]) initWithTarget:self selector:sel_loadContentIfNecessary object:0];
  presentedItemOperationQueue = [(WCContentIndex *)self presentedItemOperationQueue];
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [presentedItemOperationQueue addOperations:v5 waitUntilFinished:1];

  cachedContentIndex = [(WCContentIndex *)self cachedContentIndex];
  v7 = [cachedContentIndex copy];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  itemURL = [(WCContentIndex *)self itemURL];
  path = [itemURL path];
  cachedContentIndex = [(WCContentIndex *)self cachedContentIndex];
  v9 = WCCompactStringFromCollection(cachedContentIndex);
  v10 = [v3 stringWithFormat:@"<%@: %p, file: %@, index: %@>", v5, self, path, v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      itemURL = [(WCContentIndex *)self itemURL];
      itemURL2 = [(WCContentIndex *)v5 itemURL];

      v8 = [itemURL isEqual:itemURL2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  itemURL = [(WCContentIndex *)self itemURL];
  v3 = [itemURL hash];

  return v3;
}

- (id)addContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    cachedContentIndex = [(WCContentIndex *)self cachedContentIndex];
    [cachedContentIndex addObject:identifierCopy];

    commit = [(WCContentIndex *)self commit];
    if (commit)
    {
      cachedContentIndex2 = [(WCContentIndex *)self cachedContentIndex];
      [cachedContentIndex2 removeObject:identifierCopy];
    }
  }

  else
  {
    commit = 0;
  }

  return commit;
}

- (void)removeContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    cachedContentIndex = [(WCContentIndex *)self cachedContentIndex];
    v6 = [cachedContentIndex containsObject:identifierCopy];

    if (v6)
    {
      cachedContentIndex2 = [(WCContentIndex *)self cachedContentIndex];
      [cachedContentIndex2 removeObject:identifierCopy];

      commit = [(WCContentIndex *)self commit];
    }

    else
    {
      v10 = wc_log(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(WCContentIndex *)identifierCopy removeContentIdentifier:v10, v11];
      }
    }
  }
}

- (id)commit
{
  v32 = *MEMORY[0x277D85DE8];
  cachedContentIndex = [(WCContentIndex *)self cachedContentIndex];
  v4 = [cachedContentIndex count];

  if (v4 < 0x1B59)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v15 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
    presentedItemURL = [(WCContentIndex *)self presentedItemURL];
    v18 = (v26 + 5);
    v17 = v26[5];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __24__WCContentIndex_commit__block_invoke;
    v23[3] = &unk_278B7C4A8;
    v23[5] = &v25;
    obj = v17;
    v23[4] = self;
    [v15 coordinateWritingItemAtURL:presentedItemURL options:8 error:&obj byAccessor:v23];
    objc_storeStrong(v18, obj);

    if (v26[5])
    {
      v20 = wc_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = NSPrintF("%{error}", v26[5]);
        [(WCContentIndex *)v21 commit];
      }
    }

    _Block_object_dispose(&v25, 8);
    v14 = 0;
  }

  else
  {
    cachedContentIndex2 = [(WCContentIndex *)self cachedContentIndex];
    v6 = [cachedContentIndex2 count];

    if (v6 >= 0x1B63)
    {
      cachedContentIndex3 = [(WCContentIndex *)self cachedContentIndex];
      v9 = [cachedContentIndex3 count];

      cachedContentIndex4 = [(WCContentIndex *)self cachedContentIndex];
      v11 = [cachedContentIndex4 subarrayWithRange:{v9 - 7000, 7000}];
      v12 = [v11 mutableCopy];
      [(WCContentIndex *)self setCachedContentIndex:v12];
    }

    v13 = wc_log(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WCContentIndex *)self commit];
    }

    v14 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7015 userInfo:0];
  }

  return v14;
}

void __24__WCContentIndex_commit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = a1 + 40;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = MEMORY[0x277CCAC58];
    v6 = [*(a1 + 32) cachedContentIndex];
    v7 = *(*(a1 + 40) + 8);
    obj = 0;
    v8 = [v5 dataWithPropertyList:v6 format:200 options:0 error:&obj];
    objc_storeStrong((v7 + 40), obj);

    if (v8)
    {
      v10 = *(*v4 + 8);
      v14 = *(v10 + 40);
      v11 = [v8 writeToURL:v3 options:1073741825 error:&v14];
      objc_storeStrong((v10 + 40), v14);
      if (v11)
      {
        goto LABEL_10;
      }

      v12 = [*(*(*v4 + 8) + 40) code];
      if (v12 == 4)
      {
        goto LABEL_10;
      }

      v13 = wc_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __24__WCContentIndex_commit__block_invoke_cold_1(v4, v3, v13);
      }
    }

    else
    {
      v13 = wc_log(v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __24__WCContentIndex_commit__block_invoke_cold_2(v4, v13);
      }
    }

LABEL_10:
  }
}

- (void)removeContentIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136446466;
  v4 = "[WCContentIndex removeContentIdentifier:]";
  v5 = 2114;
  v6 = a1;
  OUTLINED_FUNCTION_1_0(&dword_23B2FA000, a2, a3, "%{public}s identifier not in index %{public}@", &v3);
}

- (void)commit
{
  v9 = *MEMORY[0x277D85DE8];
  cachedContentIndex = [self cachedContentIndex];
  v5 = 136446466;
  v6 = "[WCContentIndex commit]";
  v7 = 2050;
  v8 = [cachedContentIndex count];
  OUTLINED_FUNCTION_1_0(&dword_23B2FA000, a2, v4, "%{public}s could not write to index file because cache size limit was reached. Cache size: %{public}ld", &v5);
}

void __24__WCContentIndex_commit__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v5 = NSPrintF("%{error}");
  v6 = [a2 path];
  *buf = 136446722;
  v8 = "[WCContentIndex commit]_block_invoke";
  v9 = 2114;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&dword_23B2FA000, a3, OS_LOG_TYPE_ERROR, "%{public}s error %{public}@ writing file to %{public}@", buf, 0x20u);
}

void __24__WCContentIndex_commit__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v3 = NSPrintF("%{error}");
  v5 = 136446466;
  v6 = "[WCContentIndex commit]_block_invoke";
  v7 = 2114;
  v8 = v3;
  OUTLINED_FUNCTION_1_0(&dword_23B2FA000, a2, v4, "%{public}s could not serialize content data %{public}@", &v5);
}

@end