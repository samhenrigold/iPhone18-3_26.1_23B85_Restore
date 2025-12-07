@interface WFFileLocationUtilities
+ (BOOL)isFileURL:(id)l withParentItems:(id)items insideFolderType:(unint64_t)type;
+ (id)bundleIdentifierForItem:(id)item;
+ (id)cloudDocsURL;
+ (id)desktopDirectory;
+ (id)documentsDirectory;
+ (id)documentsURLForApplicationContainerBundleID:(id)d;
+ (id)downloadsDirectory;
+ (id)fetchRootItemURLForDomainWithID:(id)d;
+ (id)iCloudDesktopDirectory;
+ (id)iCloudDocumentsDirectory;
+ (id)iCloudDownloadsDirectory;
+ (id)itemForURL:(id)l error:(id *)error;
+ (id)mobileDocumentsDirectory;
+ (id)parentItemsForItem:(id)item;
+ (id)rootItemForItem:(id)item;
+ (void)fetchItemWithIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier completionHandler:(id)handler;
@end

@implementation WFFileLocationUtilities

+ (BOOL)isFileURL:(id)l withParentItems:(id)items insideFolderType:(unint64_t)type
{
  lCopy = l;
  itemsCopy = items;
  v9 = itemsCopy;
  v10 = 2;
  if (type == 1)
  {
    v10 = 3;
  }

  if (type == 2)
  {
    v10 = 4;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__WFFileLocationUtilities_isFileURL_withParentItems_insideFolderType___block_invoke;
  v13[3] = &unk_1E8374690;
  v13[4] = &v14;
  v13[5] = v10;
  [itemsCopy enumerateObjectsUsingBlock:v13];
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v11;
}

void *__70__WFFileLocationUtilities_isFileURL_withParentItems_insideFolderType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 folderType];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (id)mobileDocumentsDirectory
{
  cloudDocsURL = [self cloudDocsURL];
  if ([cloudDocsURL wf_fileExists])
  {
    v3 = cloudDocsURL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)iCloudDownloadsDirectory
{
  cloudDocsURL = [self cloudDocsURL];
  v3 = [cloudDocsURL URLByAppendingPathComponent:@"com~apple~CloudDocs/Downloads/"];

  if ([v3 wf_fileExists])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)downloadsDirectory
{
  iCloudDownloadsDirectory = [self iCloudDownloadsDirectory];
  if ([iCloudDownloadsDirectory wf_fileExists])
  {
    v3 = iCloudDownloadsDirectory;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)iCloudDocumentsDirectory
{
  cloudDocsURL = [self cloudDocsURL];
  v3 = [cloudDocsURL URLByAppendingPathComponent:@"com~apple~CloudDocs/Documents/"];

  if ([v3 wf_fileExists])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)documentsDirectory
{
  iCloudDocumentsDirectory = [self iCloudDocumentsDirectory];
  if ([iCloudDocumentsDirectory wf_fileExists])
  {
    v3 = iCloudDocumentsDirectory;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)iCloudDesktopDirectory
{
  cloudDocsURL = [self cloudDocsURL];
  v3 = [cloudDocsURL URLByAppendingPathComponent:@"com~apple~CloudDocs/Desktop/"];

  if ([v3 wf_fileExists])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)desktopDirectory
{
  iCloudDesktopDirectory = [self iCloudDesktopDirectory];
  if ([iCloudDesktopDirectory wf_fileExists])
  {
    v3 = iCloudDesktopDirectory;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)cloudDocsURL
{
  v9 = *MEMORY[0x1E69E9840];
  if (cloudDocsURL_onceToken != -1)
  {
    dispatch_once(&cloudDocsURL_onceToken, &__block_literal_global_6330);
  }

  v2 = getWFFilesLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "+[WFFileLocationUtilities cloudDocsURL]";
    v7 = 2112;
    v8 = cloudDocsURL_URL;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEBUG, "%s Got cloud docs url %@", &v5, 0x16u);
  }

  v3 = cloudDocsURL_URL;

  return v3;
}

void __39__WFFileLocationUtilities_cloudDocsURL__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = getWFFilesLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "+[WFFileLocationUtilities cloudDocsURL]_block_invoke_2";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Could not get url with error: %@", &v8, 0x16u);
    }
  }

  v7 = cloudDocsURL_URL;
  cloudDocsURL_URL = v4;
}

+ (id)documentsURLForApplicationContainerBundleID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69635F8];
  dCopy = d;
  v10 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v10];

  v6 = v10;
  if (v5)
  {
    dataContainerURL = [v5 dataContainerURL];
    v8 = [dataContainerURL URLByAppendingPathComponent:@"Documents"];
  }

  else
  {
    dataContainerURL = getWFFilesLogObject();
    if (os_log_type_enabled(dataContainerURL, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "+[WFFileLocationUtilities documentsURLForApplicationContainerBundleID:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1CA256000, dataContainerURL, OS_LOG_TYPE_ERROR, "%s Could not get application record with error: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)bundleIdentifierForItem:(id)item
{
  itemCopy = item;
  fp_appContainerBundleIdentifier = [itemCopy fp_appContainerBundleIdentifier];
  v5 = [fp_appContainerBundleIdentifier length];

  if (v5)
  {
    fp_appContainerBundleIdentifier2 = [itemCopy fp_appContainerBundleIdentifier];
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__6342;
    v14 = __Block_byref_object_dispose__6343;
    v15 = 0;
    v7 = [WFFileLocationUtilities parentItemsForItem:itemCopy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__WFFileLocationUtilities_bundleIdentifierForItem___block_invoke;
    v9[3] = &unk_1E8374648;
    v9[4] = &v10;
    [v7 enumerateObjectsUsingBlock:v9];
    fp_appContainerBundleIdentifier2 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return fp_appContainerBundleIdentifier2;
}

void __51__WFFileLocationUtilities_bundleIdentifierForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 fp_appContainerBundleIdentifier];

  if (v6)
  {
    v7 = [v10 fp_appContainerBundleIdentifier];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

+ (id)itemForURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x1E69673B0];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  v8 = [defaultManager itemForURL:lCopy error:error];

  return v8;
}

+ (id)rootItemForItem:(id)item
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v14 = 0;
  v4 = [MEMORY[0x1E69673E8] providerDomainForItem:itemCopy error:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v16 = __Block_byref_object_copy__6342;
    v17 = __Block_byref_object_dispose__6343;
    v18 = 0;
    defaultManager = [MEMORY[0x1E69673B0] defaultManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__WFFileLocationUtilities_rootItemForItem___block_invoke;
    v11[3] = &unk_1E8379CE8;
    v13 = buf;
    v8 = v6;
    v12 = v8;
    [defaultManager fetchRootItemForProviderDomain:v4 completionHandler:v11];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v9 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = getWFFilesLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[WFFileLocationUtilities rootItemForItem:]";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Could not get domain with error: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

void __43__WFFileLocationUtilities_rootItemForItem___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)parentItemsForItem:(id)item
{
  itemCopy = item;
  v4 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6342;
  v17 = __Block_byref_object_dispose__6343;
  v18 = 0;
  defaultManager = [MEMORY[0x1E69673B0] defaultManager];
  itemID = [itemCopy itemID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__WFFileLocationUtilities_parentItemsForItem___block_invoke;
  v10[3] = &unk_1E8374620;
  v12 = &v13;
  v7 = v4;
  v11 = v7;
  [defaultManager fetchParentsForItemID:itemID recursively:1 completionHandler:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__WFFileLocationUtilities_parentItemsForItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[WFFileLocationUtilities parentItemsForItem:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not fetch parent items due to error: %@", &v11, 0x16u);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)fetchRootItemURLForDomainWithID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v4 = dispatch_semaphore_create(0);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__6342;
    v23 = __Block_byref_object_dispose__6343;
    v24 = 0;
    v18 = 0;
    v5 = [MEMORY[0x1E69673E8] providerDomainWithID:dCopy error:&v18];
    v6 = v18;
    if (v5)
    {
      defaultManager = [MEMORY[0x1E69673B0] defaultManager];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__WFFileLocationUtilities_fetchRootItemURLForDomainWithID___block_invoke;
      v14[3] = &unk_1E83745F8;
      v15 = v5;
      v17 = &v19;
      v8 = v4;
      v16 = v8;
      [defaultManager fetchRootItemForProviderDomain:v15 completionHandler:v14];

      v9 = dispatch_time(0, 3000000000);
      dispatch_semaphore_wait(v8, v9);
      v10 = v20[5];
      if (v10)
      {
        v11 = v10;
      }

      v12 = v15;
    }

    else
    {
      v12 = getWFFilesLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v26 = "+[WFFileLocationUtilities fetchRootItemURLForDomainWithID:]";
        v27 = 2112;
        v28 = dCopy;
        v29 = 2112;
        v30 = v6;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Could not fetch provider domain: %@ with error: %@", buf, 0x20u);
      }

      v10 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __59__WFFileLocationUtilities_fetchRootItemURLForDomainWithID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v12 = 136315650;
      v13 = "+[WFFileLocationUtilities fetchRootItemURLForDomainWithID:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not fetch root item for providerDomain: %@ error: %@", &v12, 0x20u);
    }
  }

  v9 = [v5 fileURL];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (void)fetchItemWithIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    if (domainIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileLocationUtilities.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"domainIdentifier"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFFileLocationUtilities.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifier"}];

  if (!domainIdentifierCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFFileLocationUtilities.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v11 = [objc_alloc(MEMORY[0x1E69673A0]) initWithProviderDomainID:domainIdentifierCopy itemIdentifier:identifierCopy];
  defaultManager = [MEMORY[0x1E69673B0] defaultManager];
  [defaultManager fetchItemForItemID:v11 completionHandler:handlerCopy];
}

@end