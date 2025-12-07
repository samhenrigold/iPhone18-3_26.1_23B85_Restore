@interface UNCKeyedDataStoreRepository
- (BOOL)_saveObjects:(id)objects atPath:(id)path;
- (BOOL)_useReplacementToImport:(id)import into:(id)into;
- (UNCKeyedDataStoreRepository)initWithDirectory:(id)directory fileName:(id)name pathExtension:(id)extension librarian:(id)librarian repositoryProtectionStrategy:(id)strategy objectIdentifierKey:(id)key maxObjectsPerKey:(int64_t)perKey;
- (id)_addObject:(id)object mustReplace:(BOOL)replace atPath:(id)path;
- (id)_addObject:(id)object toObjects:(id)objects mustReplace:(BOOL)replace receipt:(id *)receipt;
- (id)_dataAtPath:(id)path;
- (id)_directoryForKey:(id)key;
- (id)_objectsAtPath:(id)path;
- (id)_objectsForData:(id)data identifier:(id)identifier;
- (id)_objectsPassingTest:(id)test atPath:(id)path;
- (id)_pathForKey:(id)key;
- (id)_removeObjectsPassingTest:(id)test atPath:(id)path;
- (id)addObject:(id)object mustReplace:(BOOL)replace forKey:(id)key;
- (id)allKeys;
- (id)objectsForKey:(id)key;
- (id)objectsPassingTest:(id)test forKey:(id)key;
- (id)removeObjectsPassingTest:(id)test forKey:(id)key;
- (void)_removeItemAtPath:(id)path;
- (void)_setObjects:(id)objects atPath:(id)path;
- (void)migrateStoreAtPath:(id)path forKey:(id)key;
- (void)protectionStateChanged;
- (void)removeAllObjectsForKey:(id)key;
- (void)removeStoreForKey:(id)key;
- (void)removeStoreForKey:(id)key overridePathExtension:(id)extension;
- (void)setObjects:(id)objects forKey:(id)key;
@end

@implementation UNCKeyedDataStoreRepository

- (void)protectionStateChanged
{
  if (objc_opt_respondsToSelector())
  {
    protectionStrategy = self->_protectionStrategy;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__UNCKeyedDataStoreRepository_protectionStateChanged__block_invoke;
    v4[3] = &unk_1E85D7D58;
    v4[4] = self;
    [(UNSContentProtectionStrategy *)protectionStrategy importDataWithImportHandler:v4];
  }
}

- (UNCKeyedDataStoreRepository)initWithDirectory:(id)directory fileName:(id)name pathExtension:(id)extension librarian:(id)librarian repositoryProtectionStrategy:(id)strategy objectIdentifierKey:(id)key maxObjectsPerKey:(int64_t)perKey
{
  directoryCopy = directory;
  nameCopy = name;
  extensionCopy = extension;
  librarianCopy = librarian;
  strategyCopy = strategy;
  keyCopy = key;
  v31.receiver = self;
  v31.super_class = UNCKeyedDataStoreRepository;
  v21 = [(UNCKeyedDataStoreRepository *)&v31 init];
  if (v21)
  {
    v22 = [directoryCopy copy];
    directory = v21->_directory;
    v21->_directory = v22;

    v24 = [nameCopy copy];
    fileName = v21->_fileName;
    v21->_fileName = v24;

    v26 = [extensionCopy copy];
    pathExtension = v21->_pathExtension;
    v21->_pathExtension = v26;

    objc_storeStrong(&v21->_librarian, librarian);
    objc_storeStrong(&v21->_protectionStrategy, strategy);
    v28 = [keyCopy copy];
    objectIdentifierKey = v21->_objectIdentifierKey;
    v21->_objectIdentifierKey = v28;

    v21->_maxObjectsPerKey = perKey;
  }

  return v21;
}

- (id)allKeys
{
  v36[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_directory];
  v36[0] = *MEMORY[0x1E695DB78];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v6 = [defaultManager enumeratorAtURL:v4 includingPropertiesForKeys:v5 options:1 errorHandler:&__block_literal_global_22];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        protectionStrategy = self->_protectionStrategy;
        path = [v12 path];
        LOBYTE(protectionStrategy) = [(UNSContentProtectionStrategy *)protectionStrategy dataIsAvailableAtPath:path];

        if (protectionStrategy)
        {
          librarian = self->_librarian;
          lastPathComponent = [v12 lastPathComponent];
          v18 = [(UNCBundleLibrarian *)librarian bundleIdentifierForUniqueIdentifier:lastPathComponent];

          v19 = *MEMORY[0x1E6983368];
          if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            path2 = [v12 path];
            *buf = 138412546;
            v32 = path2;
            v33 = 2112;
            v34 = v18;
            _os_log_impl(&dword_1DA7A9000, v20, OS_LOG_TYPE_DEFAULT, "UNCKeyedDataStoreRepository allKeys: Loading: %@ bundleIdentifier: %@", buf, 0x16u);
          }

          if (v18)
          {
            [array addObject:v18];
          }
        }

        else
        {
          v22 = *MEMORY[0x1E6983368];
          if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            path3 = [v12 path];
            *buf = 138412290;
            v32 = path3;
            _os_log_impl(&dword_1DA7A9000, v23, OS_LOG_TYPE_DEFAULT, "UNCKeyedDataStoreRepository allKeys: !dataIsAvailableAtPath: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v9);
  }

  return array;
}

uint64_t __38__UNCKeyedDataStoreRepository_allKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "UNCKeyedDataStoreRepository allKeys: enumeratorAtURL failed url: %@ error: %@", &v8, 0x16u);
  }

  return 1;
}

- (id)_directoryForKey:(id)key
{
  v4 = [(UNCBundleLibrarian *)self->_librarian uniqueIdentifierForBundleIdentifier:key];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F563BF08];
  v6 = [(NSString *)self->_directory stringByAppendingPathComponent:v5];

  return v6;
}

- (id)_pathForKey:(id)key
{
  v4 = [(UNCKeyedDataStoreRepository *)self _directoryForKey:key];
  v5 = [v4 stringByAppendingPathComponent:self->_fileName];
  v6 = [v5 stringByAppendingPathExtension:self->_pathExtension];

  return v6;
}

- (id)objectsForKey:(id)key
{
  v4 = [(UNCKeyedDataStoreRepository *)self _pathForKey:key];
  v5 = [(UNCKeyedDataStoreRepository *)self _objectsAtPath:v4];

  return v5;
}

- (id)_objectsAtPath:(id)path
{
  pathCopy = path;
  v5 = [(UNCKeyedDataStoreRepository *)self _dataAtPath:pathCopy];
  if (v5)
  {
    v6 = [(UNCKeyedDataStoreRepository *)self _objectsForData:v5 identifier:pathCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)objectsPassingTest:(id)test forKey:(id)key
{
  if (test)
  {
    testCopy = test;
    v7 = [(UNCKeyedDataStoreRepository *)self _pathForKey:key];
    v8 = [(UNCKeyedDataStoreRepository *)self _objectsPassingTest:testCopy atPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_objectsPassingTest:(id)test atPath:(id)path
{
  testCopy = test;
  pathCopy = path;
  v8 = [(UNCKeyedDataStoreRepository *)self _dataAtPath:pathCopy];
  if (v8)
  {
    v9 = [(UNCKeyedDataStoreRepository *)self _objectsForData:v8 identifier:pathCopy];
    v10 = [v9 bs_filter:testCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_objectsForData:(id)data identifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  context = objc_autoreleasePoolPush();
  v21 = MEMORY[0x1E696ACD0];
  v23 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v20 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v23 setWithObjects:{v22, v20, v5, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [v21 unarchivedObjectOfClasses:v14 fromData:dataCopy error:0];

  objc_autoreleasePoolPop(context);
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = *MEMORY[0x1E6983368];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        [(UNCKeyedDataStoreRepository *)v17 _objectsForData:identifierCopy identifier:v26, v16];
      }

      v15 = 0;
    }
  }

  return v15;
}

- (id)_dataAtPath:(id)path
{
  pathCopy = path;
  v5 = [(UNSContentProtectionStrategy *)self->_protectionStrategy dataAtPath:pathCopy];
  if (!v5)
  {
    v6 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [(UNCKeyedDictionaryRepository *)pathCopy _dataAtPath:v6];
    }
  }

  return v5;
}

- (BOOL)_saveObjects:(id)objects atPath:(id)path
{
  v30 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  pathCopy = path;
  v8 = MEMORY[0x1E6983368];
  v9 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543618;
    v27 = pathCopy;
    v28 = 2048;
    v29 = [objectsCopy count];
    _os_log_impl(&dword_1DA7A9000, v10, OS_LOG_TYPE_DEFAULT, "Saving file at %{public}@ with %lu items", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
  {
    v25 = 0;
    v13 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
    v14 = v25;
    if ((v13 & 1) == 0 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [UNCKeyedDataStoreRepository _saveObjects:atPath:];
    }
  }

  v24 = 0;
  v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectsCopy requiringSecureCoding:1 error:&v24];
  v16 = v24;
  if (v15)
  {
    protectionStrategy = self->_protectionStrategy;
    v23 = v16;
    v18 = [(UNSContentProtectionStrategy *)protectionStrategy writeData:v15 atPath:pathCopy error:&v23];
    v19 = v23;

    if (v18)
    {
      v20 = 1;
    }

    else
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        [UNCKeyedDataStoreRepository _saveObjects:atPath:];
      }

      v20 = 0;
    }

    v16 = v19;
  }

  else
  {
    v21 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [UNCKeyedDictionaryRepository _saveDictionary:v16 atPath:v21];
    }

    v20 = 0;
  }

  return v20;
}

- (void)removeAllObjectsForKey:(id)key
{
  v4 = [(UNCKeyedDataStoreRepository *)self _pathForKey:key];
  [(UNCKeyedDataStoreRepository *)self _saveObjects:MEMORY[0x1E695E0F0] atPath:v4];
}

- (id)removeObjectsPassingTest:(id)test forKey:(id)key
{
  if (test)
  {
    testCopy = test;
    v7 = [(UNCKeyedDataStoreRepository *)self _pathForKey:key];
    v8 = [(UNCKeyedDataStoreRepository *)self _removeObjectsPassingTest:testCopy atPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_removeObjectsPassingTest:(id)test atPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  testCopy = test;
  selfCopy = self;
  pathCopy = path;
  v7 = [(UNCKeyedDataStoreRepository *)self _objectsAtPath:?];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (testCopy[2](testCopy, v14))
        {
          if (v11)
          {
            array = v11;
          }

          else
          {
            array = [MEMORY[0x1E695DF70] array];
            v11 = array;
          }
        }

        else if (v10)
        {
          array = v10;
        }

        else
        {
          array = [MEMORY[0x1E695DF70] array];
          v10 = array;
        }

        [array addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  [(UNCKeyedDataStoreRepository *)selfCopy _saveObjects:v10 atPath:pathCopy];
  v16 = [UNCDataStoreReceipt receiptWithAddedObjects:0 replacedObjects:0 replacementObjects:0 removedObjects:v11];

  return v16;
}

- (void)setObjects:(id)objects forKey:(id)key
{
  objectsCopy = objects;
  v7 = [(UNCKeyedDataStoreRepository *)self _pathForKey:key];
  [(UNCKeyedDataStoreRepository *)self _setObjects:objectsCopy atPath:v7];
}

- (void)_setObjects:(id)objects atPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  pathCopy = path;
  v8 = [objectsCopy mutableCopy];
  v9 = [v8 count];
  maxObjectsPerKey = self->_maxObjectsPerKey;
  if (v9 > maxObjectsPerKey)
  {
    [v8 removeObjectsInRange:{maxObjectsPerKey, objc_msgSend(v8, "count") - self->_maxObjectsPerKey}];
  }

  if (self->_recordValidationTest)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v12)
    {
      array = v11;
      goto LABEL_18;
    }

    v13 = v12;
    v19 = objectsCopy;
    array = 0;
    v15 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (((*(self->_recordValidationTest + 2))() & 1) == 0)
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);

    objectsCopy = v19;
    if (array)
    {
      [v11 removeObjectsInArray:array];
LABEL_18:
    }
  }

  v18 = objc_autoreleasePoolPush();
  [(UNCKeyedDataStoreRepository *)self _saveObjects:v8 atPath:pathCopy];
  objc_autoreleasePoolPop(v18);
}

- (id)addObject:(id)object mustReplace:(BOOL)replace forKey:(id)key
{
  v5 = 0;
  if (object && key)
  {
    replaceCopy = replace;
    objectCopy = object;
    v10 = [(UNCKeyedDataStoreRepository *)self _pathForKey:key];
    v5 = [(UNCKeyedDataStoreRepository *)self _addObject:objectCopy mustReplace:replaceCopy atPath:v10];
  }

  return v5;
}

- (id)_addObject:(id)object mustReplace:(BOOL)replace atPath:(id)path
{
  replaceCopy = replace;
  objectCopy = object;
  pathCopy = path;
  v10 = objc_autoreleasePoolPush();
  v11 = [(UNCKeyedDataStoreRepository *)self _objectsAtPath:pathCopy];
  v15 = 0;
  v12 = [(UNCKeyedDataStoreRepository *)self _addObject:objectCopy toObjects:v11 mustReplace:replaceCopy receipt:&v15];
  v13 = v15;
  [(UNCKeyedDataStoreRepository *)self _saveObjects:v12 atPath:pathCopy];

  objc_autoreleasePoolPop(v10);

  return v13;
}

- (id)_addObject:(id)object toObjects:(id)objects mustReplace:(BOOL)replace receipt:(id *)receipt
{
  LODWORD(v40) = replace;
  v54 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objectsCopy = objects;
  array = [MEMORY[0x1E695DF70] array];
  v42 = objectCopy;
  [array addObject:objectCopy];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = objectsCopy;
  v11 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        if (-[UNCKeyedDataStoreRepository _isReplacementSupported](self, "_isReplacementSupported", v40) && ([v16 objectForKey:self->_objectIdentifierKey], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "objectForKey:", self->_objectIdentifierKey), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v17, v19))
        {
          v20 = [MEMORY[0x1E695DEC8] arrayWithObject:v16];

          v13 = v20;
        }

        else
        {
          [array addObject:v16];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v21 = v13;
  if (v40 && ![v13 count])
  {
    v37 = 0;
    v24 = 0;
    v26 = 0;
    receiptCopy3 = receipt;
    if (receipt)
    {
LABEL_41:
      *receiptCopy3 = [UNCDataStoreReceipt receiptWithAddedObjects:v37 replacedObjects:v21 replacementObjects:v24 removedObjects:v26, v40];
    }
  }

  else
  {
    v22 = [MEMORY[0x1E695DEC8] arrayWithObject:{v42, v40}];
    if (v13)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    if (v13)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v25 = [array count];
    v26 = 0;
    maxObjectsPerKey = self->_maxObjectsPerKey;
    if (v25 > maxObjectsPerKey)
    {
      v28 = [array count] - self->_maxObjectsPerKey;
      v29 = [array subarrayWithRange:{maxObjectsPerKey, v28}];
      v26 = [v29 mutableCopy];

      [array removeObjectsInRange:{maxObjectsPerKey, v28}];
    }

    if (self->_recordValidationTest)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v30 = array;
      v31 = [v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v45;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v45 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v44 + 1) + 8 * j);
            if (((*(self->_recordValidationTest + 2))() & 1) == 0)
            {
              if (!v26)
              {
                v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v30, "count")}];
              }

              [v26 addObject:v35];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v32);
      }

      if (v26)
      {
        [v30 removeObjectsInArray:v26];
      }

      receiptCopy3 = receipt;
      v21 = v13;
    }

    else
    {
      receiptCopy3 = receipt;
    }

    v37 = v40;
    if (receiptCopy3)
    {
      goto LABEL_41;
    }
  }

  v38 = [array copy];

  return v38;
}

- (void)removeStoreForKey:(id)key
{
  v4 = [(UNCKeyedDataStoreRepository *)self _pathForKey:key];
  [(UNCKeyedDataStoreRepository *)self _removeItemAtPath:v4];
}

- (void)removeStoreForKey:(id)key overridePathExtension:(id)extension
{
  extensionCopy = extension;
  v9 = [(UNCKeyedDataStoreRepository *)self _pathForKey:key];
  stringByDeletingPathExtension = [v9 stringByDeletingPathExtension];
  v8 = [stringByDeletingPathExtension stringByAppendingPathExtension:extensionCopy];

  [(UNCKeyedDataStoreRepository *)self _removeItemAtPath:v8];
}

- (void)_removeItemAtPath:(id)path
{
  protectionStrategy = self->_protectionStrategy;
  v4 = 0;
  [(UNSContentProtectionStrategy *)protectionStrategy removeItemAtPath:path error:&v4];
}

- (void)migrateStoreAtPath:(id)path forKey:(id)key
{
  keyCopy = key;
  v7 = MEMORY[0x1E696AC08];
  pathCopy = path;
  defaultManager = [v7 defaultManager];
  v10 = [(UNCKeyedDataStoreRepository *)self _directoryForKey:keyCopy];
  if (([defaultManager fileExistsAtPath:v10] & 1) == 0)
  {
    v14 = 0;
    [defaultManager createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v14];
    v11 = v14;
    if (v11 && os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [UNCKeyedDataStoreRepository migrateStoreAtPath:forKey:];
    }
  }

  protectionStrategy = self->_protectionStrategy;
  v13 = [(UNCKeyedDataStoreRepository *)self _pathForKey:keyCopy];
  [(UNSContentProtectionStrategy *)protectionStrategy migrateDataAtPath:pathCopy toPath:v13];
}

- (BOOL)_useReplacementToImport:(id)import into:(id)into
{
  intoCopy = into;
  v7 = [import count];
  v8 = [intoCopy count];

  if (!v7 || !v8)
  {
    return 0;
  }

  return [(UNCKeyedDataStoreRepository *)self _isReplacementSupported];
}

id __53__UNCKeyedDataStoreRepository_protectionStateChanged__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) _objectsForData:a2 identifier:0];
  v7 = [*(a1 + 32) _objectsForData:v5 identifier:0];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;
  if ([*(a1 + 32) _useReplacementToImport:v6 into:v8])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v24 = v6;
      v25 = v5;
      v14 = 0;
      v15 = *v29;
      do
      {
        v16 = 0;
        v17 = v14;
        v18 = v10;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v28 + 1) + 8 * v16);
          v20 = *(a1 + 32);
          v27 = v17;
          v10 = [v20 _addObject:v19 toObjects:v18 mustReplace:0 receipt:{&v27, v24, v25}];
          v14 = v27;

          ++v16;
          v17 = v14;
          v18 = v10;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);

      v6 = v24;
      v5 = v25;
    }
  }

  else if ([v6 count])
  {
    v21 = v6;

    v10 = v21;
  }

  v26 = 0;
  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v26];

  return v22;
}

- (void)_objectsForData:(void *)a1 identifier:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
  {
    v5 = 138543618;
    v6 = a2;
    v7 = 2114;
    v8 = v3;
    _os_log_error_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_ERROR, "Exception caught data at %{public}@; exception: %{public}@", &v5, 0x16u);
  }

  objc_end_catch();
}

- (void)_objectsForData:(uint64_t)a3 identifier:(NSObject *)a4 .cold.2(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a4, OS_LOG_TYPE_ERROR, "Unexpected class %{public}@ decocded at %{public}@", a3, 0x16u);
}

- (void)_saveObjects:(void *)a1 atPath:.cold.2(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = objc_begin_catch(a1);
  v2 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = v1;
    _os_log_error_impl(&dword_1DA7A9000, v2, OS_LOG_TYPE_ERROR, "Unable to archive objects: %{public}@", &v3, 0xCu);
  }

  objc_end_catch();
}

@end