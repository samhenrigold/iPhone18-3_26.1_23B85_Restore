@interface BLEduCloudContainer
+ (id)sharedEduCloudContainer;
- (BLEduCloudContainer)init;
- (BOOL)_addOrUpdateCloudEntryWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)_coordinatedReadOfPromisesWithError:(id *)error;
- (BOOL)_writePlist:(id)plist toURL:(id)l error:(id *)error;
- (BOOL)addBookItem:(id)item error:(id *)error;
- (BOOL)removeBookItem:(id)item error:(id *)error;
- (BOOL)updateBookItem:(id)item error:(id *)error;
- (NSURL)documentsURL;
- (id)allBookItems;
- (id)bookItemForPermlink:(id)permlink;
- (id)bookItemForURL:(id)l;
- (id)bookItemsForPermlinks:(id)permlinks;
- (id)cloudUrlForPermlink:(id)permlink;
- (id)dictionaryAsBookItem:(id)item path:(id)path;
- (id)fileNameForPermlink:(id)permlink;
- (id)performMetadataActionOnCloudURL:(id)l action:(id)action;
@end

@implementation BLEduCloudContainer

+ (id)sharedEduCloudContainer
{
  if (qword_27EC71F80 != -1)
  {
    sub_241D76DC8();
  }

  v3 = qword_27EC71F88;

  return v3;
}

- (BLEduCloudContainer)init
{
  v19.receiver = self;
  v19.super_class = BLEduCloudContainer;
  v2 = [(BLEduCloudContainer *)&v19 init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = dispatch_queue_create("com.apple.iBooks.BLEduCloudContainer.containerQueue", 0);
  containerQueue = v3->_containerQueue;
  v3->_containerQueue = v4;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  ubiquityIdentityToken = [defaultManager ubiquityIdentityToken];
  cloudToken = v3->_cloudToken;
  v3->_cloudToken = ubiquityIdentityToken;

  v9 = v3->_cloudToken;
  v10 = BLDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEBUG, "Obtained cloud token.", buf, 2u);
    }

    v12 = v3->_containerQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_241D2D1D0;
    v15[3] = &unk_278D17380;
    v13 = v3;
    v16 = v13;
    v17 = defaultManager;
    dispatch_async(v12, v15);

    v3 = v16;
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEBUG, "Not signed in to iCloud. No edu cloud support available.", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (NSURL)documentsURL
{
  documentsURL = self->_documentsURL;
  if (!documentsURL)
  {
    containerQueue = [(BLEduCloudContainer *)self containerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241D2D2D8;
    block[3] = &unk_278D173A8;
    block[4] = self;
    dispatch_sync(containerQueue, block);

    documentsURL = self->_documentsURL;
  }

  return documentsURL;
}

- (id)dictionaryAsBookItem:(id)item path:(id)path
{
  itemCopy = item;
  if (item)
  {
    pathCopy = path;
    v6 = itemCopy;
    itemCopy = [[BLBookItem alloc] initWithEduCloudData:v6 path:pathCopy];
  }

  return itemCopy;
}

- (id)fileNameForPermlink:(id)permlink
{
  v14 = *MEMORY[0x277D85DE8];
  permlinkCopy = permlink;
  pathExtension = [permlinkCopy pathExtension];
  v5 = MEMORY[0x277CCACA8];
  identifierFromPermlink = [permlinkCopy identifierFromPermlink];
  v7 = [v5 stringWithFormat:@"%@", identifierFromPermlink];

  if (pathExtension)
  {
    v8 = [v7 stringByAppendingPathExtension:pathExtension];

    v7 = v8;
  }

  else
  {
    v9 = BLDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = permlinkCopy;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "Warning. Unable to determine path extension from permlink {%@}", buf, 0xCu);
    }
  }

  v10 = [v7 stringByAppendingPathExtension:@"cloudItem"];

  return v10;
}

- (id)cloudUrlForPermlink:(id)permlink
{
  permlinkCopy = permlink;
  documentsURL = [(BLEduCloudContainer *)self documentsURL];
  v6 = [(BLEduCloudContainer *)self fileNameForPermlink:permlinkCopy];

  v7 = [documentsURL URLByAppendingPathComponent:v6];

  return v7;
}

- (BOOL)_writePlist:(id)plist toURL:(id)l error:(id *)error
{
  lCopy = l;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:plist format:200 options:0 error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:lCopy options:1 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_addOrUpdateCloudEntryWithDictionary:(id)dictionary error:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_241D2DC2C;
  v52 = sub_241D2DC3C;
  v53 = 0;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"permlink"];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  cloudToken = [(BLEduCloudContainer *)self cloudToken];
  if (!cloudToken || (([(BLEduCloudContainer *)self documentsURL], (v10 = objc_claimAutoreleasedReturnValue()) != 0) ? (v11 = v8 == 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), v10, cloudToken, !v12))
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    defaultManager = v49[5];
    v49[5] = v20;
    goto LABEL_31;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [(BLEduCloudContainer *)self cloudUrlForPermlink:v8];
  if ([defaultManager isUbiquitousItemAtURL:v14])
  {
    v15 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v47 = 0;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_241D2DC44;
    v43[3] = &unk_278D173D0;
    v45 = &v54;
    v44 = dictionaryCopy;
    v46 = &v48;
    v40 = v15;
    [v15 coordinateWritingItemAtURL:v14 options:0 error:&v47 byAccessor:v43];
    v16 = v47;
    if ((v55[3] & 1) == 0)
    {
      v17 = BLDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = v49[5];
        *buf = 138412546;
        v61 = v14;
        v62 = 2112;
        v63 = v18;
        _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "Failed to write plist to %@. Error: %@", buf, 0x16u);
      }
    }

    v19 = v44;
    goto LABEL_26;
  }

  v40 = [(BLEduCloudContainer *)self fileNameForPermlink:v8];
  v21 = NSTemporaryDirectory();
  v16 = [v21 stringByAppendingPathComponent:v40];

  [defaultManager removeItemAtPath:v16 error:0];
  v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
  v23 = (v49 + 5);
  obj = v49[5];
  v24 = [(BLEduCloudContainer *)self _writePlist:dictionaryCopy toURL:v22 error:&obj];
  objc_storeStrong(v23, obj);

  if (v24)
  {
    v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
    v26 = (v49 + 5);
    v41 = v49[5];
    v27 = [defaultManager setUbiquitous:1 itemAtURL:v25 destinationURL:v14 error:&v41];
    objc_storeStrong(v26, v41);
    *(v55 + 24) = v27;

    if (v55[3])
    {
      goto LABEL_27;
    }

    v19 = BLDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = v49[5];
      *buf = 138412546;
      v61 = v14;
      v62 = 2112;
      v63 = v28;
      v29 = "Failed to add cloud item at %@. Error:  %@";
LABEL_25:
      _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
    }
  }

  else
  {
    v19 = BLDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = v49[5];
      *buf = 138412546;
      v61 = v14;
      v62 = 2112;
      v63 = v30;
      v29 = "Failed to write plist to %@. Error:  %@";
      goto LABEL_25;
    }
  }

LABEL_26:

LABEL_27:
  path = [v14 path];
  v32 = [defaultManager attributesOfItemAtPath:path error:0];

  if (v32)
  {
    fileOwnerAccountName = [v32 fileOwnerAccountName];
    v34 = [fileOwnerAccountName isEqualToString:@"mobile"];

    if ((v34 & 1) == 0)
    {
      v35 = *MEMORY[0x277CCA120];
      v58[0] = *MEMORY[0x277CCA160];
      v58[1] = v35;
      v59[0] = @"mobile";
      v59[1] = @"mobile";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
      path2 = [v14 path];
      [defaultManager setAttributes:v36 ofItemAtPath:path2 error:0];
    }
  }

LABEL_31:
  if (error)
  {
    *error = v49[5];
  }

  v38 = *(v55 + 24);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  return v38 & 1;
}

- (BOOL)_coordinatedReadOfPromisesWithError:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  documentsURL = [(BLEduCloudContainer *)self documentsURL];
  path = [documentsURL path];
  v48 = 0;
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:&v48];
  v9 = v48;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v10)
  {
    v34 = v11;
    v36 = v9;
    v37 = defaultManager;
    errorCopy = error;
    array = [MEMORY[0x277CBEB18] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v35 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v44 + 1) + 8 * i);
          pathExtension = [v18 pathExtension];
          v20 = [pathExtension isEqualToString:@"cloudItem"];

          if (v20)
          {
            documentsURL2 = [(BLEduCloudContainer *)self documentsURL];
            v22 = [documentsURL2 URLByAppendingPathComponent:v18];

            [array addObject:v22];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v15);
    }

    if ([array count])
    {
      v23 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v24 = array;
      v25 = [v24 countByEnumeratingWithState:&v40 objects:v53 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v41;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v41 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v40 + 1) + 8 * j);
            v39 = 0;
            [v23 coordinateReadingItemAtURL:v29 options:1 error:&v39 byAccessor:&unk_2853E2808];
            v30 = v39;
            if (v30)
            {
              v31 = BLDefaultLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v50 = v24;
                v51 = 2112;
                v52 = v30;
                _os_log_impl(&dword_241D1F000, v31, OS_LOG_TYPE_ERROR, "Encountered error doing a coordinated read of %@. Error:  %@", buf, 0x16u);
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v40 objects:v53 count:16];
        }

        while (v26);
      }
    }

    defaultManager = v37;
    error = errorCopy;
    v8 = v35;
    v9 = v36;
    v11 = v34;
  }

  if (error)
  {
    v32 = v9;
    *error = v9;
  }

  return v11;
}

- (BOOL)removeBookItem:(id)item error:(id *)error
{
  itemCopy = item;
  fileURL = [itemCopy fileURL];

  if (fileURL)
  {
    fileURL2 = [itemCopy fileURL];
    v9 = deleteItemAtURLCoordinated(fileURL2);
  }

  else
  {
    permlink = [itemCopy permlink];

    if (permlink)
    {
      permlink2 = [itemCopy permlink];
      v12 = [(BLEduCloudContainer *)self cloudUrlForPermlink:permlink2];

      v9 = deleteItemAtURLCoordinated(v12);
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    }
  }

  [itemCopy _setCloudCoverImageData:0];
  if (error)
  {
    v13 = v9;
    *error = v9;
  }

  return v9 == 0;
}

- (BOOL)addBookItem:(id)item error:(id *)error
{
  _cloudDictionaryRepresentation = [item _cloudDictionaryRepresentation];
  LOBYTE(error) = [(BLEduCloudContainer *)self _addOrUpdateCloudEntryWithDictionary:_cloudDictionaryRepresentation error:error];

  return error;
}

- (BOOL)updateBookItem:(id)item error:(id *)error
{
  itemCopy = item;
  [(BLEduCloudContainer *)self _coordinatedReadOfPromisesWithError:0];
  _cloudDictionaryRepresentation = [itemCopy _cloudDictionaryRepresentation];

  LOBYTE(error) = [(BLEduCloudContainer *)self _addOrUpdateCloudEntryWithDictionary:_cloudDictionaryRepresentation error:error];
  return error;
}

- (id)allBookItems
{
  v37 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  array = [MEMORY[0x277CBEB18] array];
  cloudToken = [(BLEduCloudContainer *)self cloudToken];

  if (cloudToken)
  {
    v33 = 0;
    v5 = [(BLEduCloudContainer *)self _coordinatedReadOfPromisesWithError:&v33];
    v6 = v33;
    if (!v5)
    {
      v7 = BLDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "Failed to read cloud container with error:  %@", buf, 0xCu);
      }
    }

    if (v6)
    {
      v8 = 0;
    }

    else
    {
      documentsURL = [(BLEduCloudContainer *)self documentsURL];
      path = [documentsURL path];
      v32 = 0;
      v8 = [defaultManager contentsOfDirectoryAtPath:path error:&v32];
      v6 = v32;

      if (!v6)
      {
        if (![v8 count])
        {
          goto LABEL_12;
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = v8;
        v14 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v26 = defaultManager;
          v16 = *v29;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v11);
              }

              v18 = *(*(&v28 + 1) + 8 * i);
              if ([v18 hasSuffix:@"cloudItem"])
              {
                documentsURL2 = [(BLEduCloudContainer *)self documentsURL];
                v20 = [documentsURL2 URLByAppendingPathComponent:v18];

                v21 = MEMORY[0x277CBEAC0];
                path2 = [v20 path];
                v23 = [v21 dictionaryWithContentsOfFile:path2];

                path3 = [v20 path];
                v25 = [(BLEduCloudContainer *)self dictionaryAsBookItem:v23 path:path3];

                if (v25)
                {
                  [array addObject:v25];
                }
              }
            }

            v15 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
          }

          while (v15);
          v8 = v11;
          v6 = 0;
          defaultManager = v26;
        }

        else
        {
          v8 = v11;
        }

LABEL_11:

LABEL_12:
        goto LABEL_13;
      }
    }

    v11 = BLDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_ERROR, "Failed to get contents of cloud documents directory. Error:  %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_13:
  v12 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  return v12;
}

- (id)performMetadataActionOnCloudURL:(id)l action:(id)action
{
  lCopy = l;
  actionCopy = action;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v10 = [defaultManager fileExistsAtPath:path];

  if (v10)
  {
    v11 = MEMORY[0x277CBEAC0];
    path2 = [lCopy path];
    v13 = [v11 dictionaryWithContentsOfFile:path2];

    v14 = [v13 mutableCopy];
    v15 = [v14 hash];
    actionCopy[2](actionCopy, v14);
    if ([v14 hash] == v15)
    {
      v16 = 0;
    }

    else
    {
      v18 = 0;
      [(BLEduCloudContainer *)self _addOrUpdateCloudEntryWithDictionary:v14 error:&v18];
      v16 = v18;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
  }

  return v16;
}

- (id)bookItemForURL:(id)l
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_241D2DC2C;
  v20 = sub_241D2DC3C;
  v21 = 0;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = lCopy;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "bookItemForURL: %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D2EBA0;
  v15[3] = &unk_278D17468;
  v15[4] = self;
  v15[5] = &v16;
  v6 = MEMORY[0x245CFF560](v15);
  if ([lCopy isUbiquitous])
  {
    v7 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v14 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_241D2ECE4;
    v11[3] = &unk_278D17490;
    v12 = 0;
    v13 = v6;
    [v7 coordinateReadingItemAtURL:lCopy options:1 error:&v14 byAccessor:v11];
    v8 = v14;
  }

  else
  {
    v7 = BLDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = lCopy;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "Expected to have a ubiquitous URL but instead got %@", buf, 0xCu);
    }
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)bookItemForPermlink:(id)permlink
{
  permlinkCopy = permlink;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_241D2DC2C;
  v21 = sub_241D2DC3C;
  v22 = 0;
  v5 = [(BLEduCloudContainer *)self cloudUrlForPermlink:permlinkCopy];
  v6 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D2EFF0;
  v11[3] = &unk_278D174B8;
  v12 = 0;
  selfCopy = self;
  v7 = v5;
  v14 = v7;
  v15 = &v17;
  [v6 coordinateReadingItemAtURL:v7 options:1 error:&v16 byAccessor:v11];
  v8 = v16;
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (id)bookItemsForPermlinks:(id)permlinks
{
  v19 = *MEMORY[0x277D85DE8];
  permlinksCopy = permlinks;
  array = [MEMORY[0x277CBEB18] array];
  allBookItems = [(BLEduCloudContainer *)self allBookItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [allBookItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allBookItems);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        permlink = [v11 permlink];
        if ([permlinksCopy containsObject:permlink])
        {
          [array addObject:v11];
        }
      }

      v8 = [allBookItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

@end