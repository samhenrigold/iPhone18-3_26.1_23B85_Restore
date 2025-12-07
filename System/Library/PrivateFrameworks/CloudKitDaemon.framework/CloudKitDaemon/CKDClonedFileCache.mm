@interface CKDClonedFileCache
- (CKDClonedFileCache)initWithCacheDirectory:(id)directory limit:(unint64_t)limit;
- (id)cacheEntries;
- (id)cloneFileDescriptor:(int)descriptor filename:(id)filename error:(id *)error;
- (id)cloneMMCSItem:(id)item error:(id *)error;
- (id)filenameForMMCSItem:(id)item;
- (void)prune;
@end

@implementation CKDClonedFileCache

- (CKDClonedFileCache)initWithCacheDirectory:(id)directory limit:(unint64_t)limit
{
  directoryCopy = directory;
  v17.receiver = self;
  v17.super_class = CKDClonedFileCache;
  v9 = [(CKDClonedFileCache *)&v17 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(directoryCopy, v7, v8);
    cacheDirectory = v9->_cacheDirectory;
    v9->_cacheDirectory = v10;

    v9->_entryLimit = limit;
    v14 = objc_msgSend_cacheEntries(v9, v12, v13);
    entries = v9->_entries;
    v9->_entries = v14;
  }

  return v9;
}

- (id)cacheEntries
{
  v58[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
  CKCreateDirectoryAtURL();
  cacheDirectory = self->_cacheDirectory;
  v6 = *MEMORY[0x277CBE7C0];
  v58[0] = *MEMORY[0x277CBE7C0];
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v58, 1);
  v47 = v4;
  v10 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v4, v9, cacheDirectory, v8, 3, 0);

  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  selfCopy = self;
  v49 = objc_msgSend_initWithCapacity_(v11, v12, self->_entryLimit);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = v10;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v52, v57, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v53;
    v19 = *MEMORY[0x277CBE8E8];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        v51 = 0;
        ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v21, v16, &v51, v19, 0);
        v24 = v51;
        v25 = 0;
        if (ResourceValue_forKey_error)
        {
          v50 = 0;
          v26 = objc_msgSend_getResourceValue_forKey_error_(v21, v23, &v50, v6, 0);
          v27 = v50;
          v25 = v27;
          if (v26)
          {
            v56[0] = v27;
            v56[1] = v24;
            v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v56, 2);
            objc_msgSend_addObject_(v49, v30, v29);
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v52, v57, 16);
    }

    while (v17);
  }

  objc_msgSend_sortUsingComparator_(v49, v31, &unk_28385CB60);
  v34 = objc_msgSend_count(v49, v32, v33);
  if (v34)
  {
    v35 = v34;
    for (j = 0; j != v35; ++j)
    {
      v37 = objc_autoreleasePoolPush();
      v39 = objc_msgSend_objectAtIndex_(v49, v38, j);
      v41 = objc_msgSend_objectAtIndex_(v39, v40, 1);
      objc_msgSend_replaceObjectAtIndex_withObject_(v49, v42, j, v41);
      v44 = objc_msgSend_URLByAppendingPathComponent_(selfCopy->_cacheDirectory, v43, v41);
      objc_msgSend_CKMarkFilePurgeable_(v44, v45, 0);

      objc_autoreleasePoolPop(v37);
    }
  }

  return v49;
}

- (void)prune
{
  v4 = objc_msgSend_count(self->_entries, a2, v2);
  if (v4 > self->_entryLimit)
  {
    v7 = v4;
    v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
    do
    {
      cacheDirectory = self->_cacheDirectory;
      v10 = objc_msgSend_objectAtIndex_(self->_entries, v8, 0);
      v12 = objc_msgSend_URLByAppendingPathComponent_(cacheDirectory, v11, v10);

      objc_msgSend_removeItemAtURL_error_(v15, v13, v12, 0);
      objc_msgSend_removeObjectAtIndex_(self->_entries, v14, 0);
      --v7;
    }

    while (v7 > self->_entryLimit);
  }
}

- (id)cloneFileDescriptor:(int)descriptor filename:(id)filename error:(id *)error
{
  filenameCopy = filename;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -10;
  while (1)
  {
    if (filenameCopy)
    {
      v14 = v10;
      v10 = filenameCopy;
    }

    else
    {
      v14 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v7, v8);
      v17 = objc_msgSend_UUIDString(v14, v15, v16);

      v10 = v17;
    }

    v19 = objc_msgSend_URLByAppendingPathComponent_(self->_cacheDirectory, v18, v10);

    v22 = objc_msgSend_fileSystemRepresentation(v19, v20, v21);
    if (!fclonefileat(descriptor, -1, v22, 0))
    {
      break;
    }

    if (*__error() != 17)
    {
      v31 = MEMORY[0x277CBC560];
      v32 = *MEMORY[0x277CBC120];
      v33 = __error();
      v34 = strerror(*v33);
      v35 = __error();
      v25 = objc_msgSend_errorWithDomain_code_format_(v31, v36, v32, 1017, @"could not clone file: %s (errno=%d)", v34, *v35);
      goto LABEL_17;
    }

    if (filenameCopy)
    {
      unlink(v22);
      v11 = 1;
    }

    v12 = v19;
    if (__CFADD__(v13++, 1))
    {
      v25 = 0;
LABEL_17:

      v19 = 0;
      goto LABEL_18;
    }
  }

  v41 = 0;
  v26 = objc_msgSend_CKMarkFilePurgeable_(v19, v23, &v41);
  v25 = v41;
  if ((v26 & 1) == 0)
  {
    v37 = objc_msgSend_fileSystemRepresentation(v19, v27, v28);
    unlink(v37);
    goto LABEL_17;
  }

  if ((v11 & 1) == 0)
  {
    objc_msgSend_addObject_(self->_entries, v27, v10);
    objc_msgSend_prune(self, v29, v30);
  }

LABEL_18:
  if (error && !v19 && v25)
  {
    v38 = v25;
    *error = v25;
  }

  return v19;
}

- (id)filenameForMMCSItem:(id)item
{
  itemCopy = item;
  v6 = objc_msgSend_recordID(itemCopy, v4, v5);
  v9 = objc_msgSend_recordName(v6, v7, v8);

  v12 = objc_msgSend_recordKey(itemCopy, v10, v11);
  v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendString_(v13, v14, v9);
  objc_msgSend_appendString_(v13, v15, @"_");
  objc_msgSend_appendString_(v13, v16, v12);
  v19 = objc_msgSend_asset(itemCopy, v17, v18);
  v22 = v19;
  if (v19)
  {
    v23 = objc_msgSend_arrayIndex(v19, v20, v21);
    if (v23 != -1)
    {
      objc_msgSend_appendFormat_(v13, v20, @"_a:%ld", v23);
    }
  }

  if (objc_msgSend_isPackageManifest(itemCopy, v20, v21))
  {
    objc_msgSend_appendString_(v13, v24, @"_m");
  }

  v26 = objc_msgSend_packageIndex(itemCopy, v24, v25);
  if (v26 != -1)
  {
    objc_msgSend_appendFormat_(v13, v27, @"_p:%ld", v26);
  }

  v29 = objc_msgSend_length(v13, v27, v28);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v13, v30, @"/", @"__", 2, 0, v29);

  return v13;
}

- (id)cloneMMCSItem:(id)item error:(id *)error
{
  itemCopy = item;
  v9 = objc_msgSend_fileHandle(itemCopy, v7, v8);
  if (v9)
  {
    v12 = v9;
    v13 = 0;
    v14 = objc_msgSend_fileDescriptor(v9, v10, v11);
  }

  else
  {
    v27 = 0;
    v16 = objc_msgSend_openWithError_(itemCopy, v10, &v27);
    v13 = v27;
    v12 = objc_msgSend_fileHandle(v16, v17, v18);

    if (!v12)
    {
      v24 = 0;
      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    v14 = objc_msgSend_fileDescriptor(v12, v19, v20);
  }

  v21 = v14;
  v22 = objc_msgSend_filenameForMMCSItem_(self, v15, itemCopy);
  v24 = objc_msgSend_cloneFileDescriptor_filename_error_(self, v23, v21, v22, error);

  if (!error)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!v24 && v13)
  {
    v25 = v13;
    *error = v13;
  }

LABEL_9:

  return v24;
}

@end