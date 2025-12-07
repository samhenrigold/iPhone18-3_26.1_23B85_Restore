@interface CCDataResourceWriter
+ (BOOL)incrementRowsModified:(unint64_t)modified database:(id)database;
- (BOOL)_cleanupDatabaseIfRequired;
- (BOOL)_createDatabaseWithLocalDeviceSite:(id)site;
- (BOOL)_didCompleteMaintenance:(id *)maintenance shouldDefer:(id)defer;
- (BOOL)_executeDatabaseTransactionUsingBlock:(id)block;
- (BOOL)_removeResource:(id *)resource;
- (BOOL)_tombstoneResource:(id *)resource;
- (BOOL)initializeDatabaseWithLocalDeviceSite:(id)site;
- (BOOL)performMaintenance:(id *)maintenance shouldDefer:(id)defer;
- (BOOL)removeResource:(id *)resource;
- (BOOL)submitDatabaseTransactionUsingBlock:(id)block;
- (CCDataResourceWriter)initWithDataResource:(id)resource accessAssertion:(id)assertion;
- (id)_loadDatabase:(id *)database;
- (id)_temporaryDirectoryURLWithError:(id *)error;
- (id)description;
- (void)_cleanupDatabaseIfRequired;
@end

@implementation CCDataResourceWriter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CCDataResourceWriter;
  v4 = [(CCDataResourceWriter *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_dataResource];

  return v5;
}

- (CCDataResourceWriter)initWithDataResource:(id)resource accessAssertion:(id)assertion
{
  resourceCopy = resource;
  assertionCopy = assertion;
  v17.receiver = self;
  v17.super_class = CCDataResourceWriter;
  v9 = [(CCDataResourceWriter *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataResource, resource);
    objc_storeStrong(&v10->_accessAssertion, assertion);
    v11 = [(CCDataResourceWriter *)v10 description];
    v12 = [v11 cStringUsingEncoding:4];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    queue = v10->_queue;
    v10->_queue = v14;
  }

  return v10;
}

- (BOOL)initializeDatabaseWithLocalDeviceSite:(id)site
{
  siteCopy = site;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CCDataResourceWriter_initializeDatabaseWithLocalDeviceSite___block_invoke;
  block[3] = &unk_1E7C8B9D0;
  v9 = siteCopy;
  v10 = &v11;
  block[4] = self;
  v6 = siteCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void *__62__CCDataResourceWriter_initializeDatabaseWithLocalDeviceSite___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createDatabaseWithLocalDeviceSite:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)removeResource:(id *)resource
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CCDataResourceWriter_removeResource___block_invoke;
  block[3] = &unk_1E7C8B9F8;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);
  v5 = v10[5];
  if (v5)
  {
    CCSetError(resource, v5);
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __39__CCDataResourceWriter_removeResource___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _removeResource:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (BOOL)submitDatabaseTransactionUsingBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CCDataResourceWriter_submitDatabaseTransactionUsingBlock___block_invoke;
  block[3] = &unk_1E7C8BA20;
  v9 = blockCopy;
  v10 = &v11;
  block[4] = self;
  v6 = blockCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void *__60__CCDataResourceWriter_submitDatabaseTransactionUsingBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _executeDatabaseTransactionUsingBlock:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)performMaintenance:(id *)maintenance shouldDefer:(id)defer
{
  deferCopy = defer;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CCDataResourceWriter_performMaintenance_shouldDefer___block_invoke;
  v11[3] = &unk_1E7C8BA48;
  v13 = &v21;
  v14 = &v15;
  v11[4] = self;
  v8 = deferCopy;
  v12 = v8;
  dispatch_sync(queue, v11);
  if (maintenance)
  {
    *maintenance = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __55__CCDataResourceWriter_performMaintenance_shouldDefer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  obj = *(v2 + 40);
  v3 = [*(a1 + 32) _didCompleteMaintenance:&obj shouldDefer:*(a1 + 40)];
  objc_storeStrong((v2 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (id)_temporaryDirectoryURLWithError:(id *)error
{
  p_dataResource = &self->_dataResource;
  dataResource = self->_dataResource;
  v23 = 0;
  v6 = [(CCDataResource *)dataResource setWithError:&v23];
  v7 = v23;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v12 = CCTypeIdentifierRegistryBridge(v7);
    v13 = [v12 setIdentifierForItemType:{objc_msgSend(v6, "itemType")}];

    if (v13)
    {
      v14 = MEMORY[0x1E698E9C8];
      container = [(CCDataResource *)*p_dataResource container];
      v16 = [v14 biomeTemporaryDirectoryForContainer:container];

      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      v18 = objc_opt_new();
      uUIDString = [v18 UUIDString];
      v20 = [v17 initWithFormat:@"%@-%@-%@", @".tmp.", v13, uUIDString];

      v21 = [v16 stringByAppendingPathComponent:v20];
      v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21];
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _temporaryDirectoryURLWithError:v6];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CCDataResourceWriter _temporaryDirectoryURLWithError:];
    }

    CCSetError(error, v8);
    v11 = 0;
  }

  return v11;
}

- (BOOL)_createDatabaseWithLocalDeviceSite:(id)site
{
  v51 = *MEMORY[0x1E69E9840];
  siteCopy = site;
  dispatch_assert_queue_V2(self->_queue);
  v46 = 0;
  v5 = [(CCDataResourceWriter *)self _temporaryDirectoryURLWithError:&v46];
  v6 = v46;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [CCDataResource databaseURLFromParentDirectoryURL:v5];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      dataResource = self->_dataResource;
      path = [v8 path];
      *buf = 138412546;
      v48 = dataResource;
      v49 = 2112;
      v50 = path;
      _os_log_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_DEFAULT, "(%@) Creating database in temporary path: %@", buf, 0x16u);
    }

    v12 = +[CCDatabaseConnection connectionToDatabaseAtURL:dataProtectionClass:openMode:accessAssertion:](CCDatabaseConnection, "connectionToDatabaseAtURL:dataProtectionClass:openMode:accessAssertion:", v8, [objc_opt_class() defaultDataProtectionClass], 3, self->_accessAssertion);
    v45 = 0;
    v13 = [v12 openWithError:&v45];
    v14 = v45;
    v7 = v14;
    if (v13)
    {
      v44 = v14;
      v15 = [v12 beginTransactionWithError:&v44];
      v16 = v44;

      if ((v15 & 1) == 0)
      {
        v18 = __biome_log_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
        }

        v35 = 0;
        v7 = v16;
        goto LABEL_35;
      }

      v43 = v16;
      v17 = [v12 prepareWithError:&v43];
      v7 = v43;

      if (v17)
      {
        v18 = [CCDatabaseUpdater updaterForDatabase:v12];
        if (([v18 registerLocalDeviceSite:siteCopy]& 1) != 0)
        {
          v42 = v7;
          v19 = [v12 commitTransactionWithError:&v42];
          v20 = v42;

          if ((v19 & 1) == 0)
          {
            v34 = __biome_log_for_category();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
            }

            goto LABEL_33;
          }

          v41 = v20;
          v21 = [v12 closeWithError:&v41];
          v7 = v41;

          if (v21)
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v24 = self->_dataResource;
            p_dataResource = &self->_dataResource;
            resourceDirectoryURL = [(CCDataResource *)v24 resourceDirectoryURL];
            path2 = [resourceDirectoryURL path];
            LODWORD(v38) = [defaultManager fileExistsAtPath:path2];

            if (v38)
            {
LABEL_14:
              path3 = [v5 path];
              v39 = [path3 cStringUsingEncoding:4];

              databaseDirectoryURL = [(CCDataResource *)*p_dataResource databaseDirectoryURL];
              path4 = [databaseDirectoryURL path];
              v32 = [path4 cStringUsingEncoding:4];

              LODWORD(path4) = renamex_np(v39, v32, 4u);
              v33 = __biome_log_for_category();
              v34 = v33;
              if (!path4)
              {
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = *p_dataResource;
                  *buf = 138412546;
                  v48 = v37;
                  v49 = 2080;
                  v50 = v32;
                  _os_log_impl(&dword_1B6DB2000, v34, OS_LOG_TYPE_DEFAULT, "(%@) Successfully renamed temporary directory and moved to final path: %s", buf, 0x16u);
                }

                v35 = 1;
                goto LABEL_34;
              }

              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
              }

              goto LABEL_30;
            }

            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            resourceDirectoryURL2 = [(CCDataResource *)*p_dataResource resourceDirectoryURL];
            v40 = v7;
            LODWORD(v38) = [defaultManager2 createDirectoryAtURL:resourceDirectoryURL2 withIntermediateDirectories:1 attributes:0 error:&v40];
            v20 = v40;

            if (v38)
            {
              v7 = v20;
              goto LABEL_14;
            }

            v34 = __biome_log_for_category();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:?];
            }

LABEL_33:
            v35 = 0;
            v7 = v20;
            goto LABEL_34;
          }

          v34 = __biome_log_for_category();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
          }
        }

        else
        {
          v34 = __biome_log_for_category();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:v34];
          }
        }

LABEL_30:
        v35 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
      }
    }

    else
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
      }
    }

    v35 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
  }

  v35 = 0;
LABEL_36:

  return v35;
}

- (BOOL)_removeResource:(id *)resource
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v5 = [(CCDataResourceWriter *)self _temporaryDirectoryURLWithError:&v22];
  v6 = v22;
  v7 = v6;
  if (!v5 || v6)
  {
    CCSetError(resource, v6);
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CCDataResourceWriter _removeResource:];
    }

    goto LABEL_9;
  }

  path = [v5 path];
  v9 = [path cStringUsingEncoding:4];

  databaseDirectoryURL = [(CCDataResource *)self->_dataResource databaseDirectoryURL];
  path2 = [databaseDirectoryURL path];
  v12 = [path2 cStringUsingEncoding:4];

  LODWORD(path2) = renamex_np(v12, v9, 4u);
  v13 = __biome_log_for_category();
  v14 = v13;
  if (path2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CCDataResourceWriter _createDatabaseWithLocalDeviceSite:];
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    CCSetError(resource, v15);
    v7 = 0;
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = v12;
    v25 = 2080;
    v26 = v9;
    _os_log_impl(&dword_1B6DB2000, v14, OS_LOG_TYPE_DEFAULT, "Successfully renamed directory at path %s into %s", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v19 = [defaultManager removeItemAtURL:v5 error:&v21];
  v7 = v21;

  v20 = __biome_log_for_category();
  v15 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&dword_1B6DB2000, v15, OS_LOG_TYPE_DEFAULT, "Successfully removed folder at %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [CCDataResourceWriter _removeResource:];
  }

  v16 = 1;
LABEL_10:

  return v16;
}

- (BOOL)_tombstoneResource:(id *)resource
{
  dataResource = self->_dataResource;
  v5 = objc_opt_new();
  LOBYTE(resource) = [(CCDataResource *)dataResource markTombstoned:v5 error:resource];

  return resource;
}

- (id)_loadDatabase:(id *)database
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(CCDataResource *)self->_dataResource databaseFileExists:database])
  {
    databaseURL = [(CCDataResource *)self->_dataResource databaseURL];
    v6 = +[CCDatabaseConnection connectionToDatabaseAtURL:dataProtectionClass:openMode:accessAssertion:](CCDatabaseConnection, "connectionToDatabaseAtURL:dataProtectionClass:openMode:accessAssertion:", databaseURL, [objc_opt_class() defaultDataProtectionClass], 2, self->_accessAssertion);

    if ([v6 openWithError:database])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_executeDatabaseTransactionUsingBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dispatch_assert_queue_V2(self->_queue);
  v24 = 0;
  v5 = [(CCDataResourceWriter *)self _loadDatabase:&v24];
  v6 = v24;
  v7 = v6;
  if (!v5)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:];
    }

LABEL_17:
    v14 = 0;
    goto LABEL_22;
  }

  v23 = v6;
  v8 = [v5 beginTransactionWithError:&v23];
  v9 = v23;

  if (v8)
  {
    v22 = 0;
    if (blockCopy[2](blockCopy, v5, &v22) && [objc_opt_class() incrementRowsModified:v22 database:v5])
    {
      v21 = v9;
      v10 = [v5 commitTransactionWithError:&v21];
      v7 = v21;

      v11 = __biome_log_for_category();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          dataResource = self->_dataResource;
          *buf = 138412290;
          v26 = dataResource;
          _os_log_impl(&dword_1B6DB2000, v12, OS_LOG_TYPE_DEFAULT, "(%@) Successfully committed database transaction", buf, 0xCu);
        }

        v14 = 1;
LABEL_21:

        goto LABEL_22;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:];
      }
    }

    else
    {
      v7 = v9;
    }

    v17 = v7;
    v20 = v7;
    v18 = [v5 rollbackTransactionWithError:&v20];
    v7 = v20;

    if ((v18 & 1) == 0)
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:];
      }

      v14 = 0;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:];
  }

  v14 = 0;
  v7 = v9;
LABEL_22:

  return v14;
}

- (BOOL)_cleanupDatabaseIfRequired
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v24 = 0;
  v3 = [(CCDataResourceWriter *)self _loadDatabase:&v24];
  v4 = v24;
  if (v3)
  {
    v23 = v4;
    v5 = [CCDatabaseUpdater selectRowsModifiedCountInDatabase:v3 error:&v23];
    v6 = v23;

    if (v6)
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _cleanupDatabaseIfRequired];
      }

      goto LABEL_26;
    }

    unsignedIntegerValue = [v5 unsignedIntegerValue];
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      dataResource = self->_dataResource;
      v12 = @"not ";
      *buf = 138412802;
      if (unsignedIntegerValue > 0x3E8)
      {
        v12 = &stru_1F2EBB700;
      }

      v26 = dataResource;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEFAULT, "(%@) Database cleanup is %@ required. %@ rows have been modified since last cleanup", buf, 0x20u);
    }

    if (unsignedIntegerValue < 0x3E9)
    {
      v16 = 0;
    }

    else
    {
      v22 = 0;
      v13 = [v3 cleanup:&v22];
      v14 = v22;
      if (!v13)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CCDataResourceWriter _cleanupDatabaseIfRequired];
        }

        v16 = v14;
        goto LABEL_22;
      }

      v21 = v14;
      v15 = [CCDatabaseUpdater upsertRowsModified:0 database:v3 error:&v21];
      v16 = v21;

      if (!v15)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CCDataResourceWriter _cleanupDatabaseIfRequired];
        }

LABEL_22:

        v8 = 0;
        goto LABEL_23;
      }
    }

    v8 = 1;
LABEL_23:
    v20 = v16;
    v18 = [v3 closeWithError:&v20];
    v6 = v20;

    if (v18)
    {
LABEL_27:
      v4 = v6;
      goto LABEL_28;
    }

    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CCDataResourceWriter _cleanupDatabaseIfRequired];
    }

LABEL_26:

    v8 = 0;
    goto LABEL_27;
  }

  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CCDataResourceWriter _executeDatabaseTransactionUsingBlock:];
  }

  v8 = 0;
LABEL_28:

  return v8;
}

- (BOOL)_didCompleteMaintenance:(id *)maintenance shouldDefer:(id)defer
{
  v42 = *MEMORY[0x1E69E9840];
  deferCopy = defer;
  dispatch_assert_queue_V2(self->_queue);
  p_dataResource = &self->_dataResource;
  dataResource = self->_dataResource;
  v37 = 0;
  v9 = [(CCDataResource *)dataResource databaseFileExists:&v37];
  v10 = v37;
  v11 = __biome_log_for_category();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v13 = *p_dataResource;
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&dword_1B6DB2000, v11, OS_LOG_TYPE_DEFAULT, "(%@) Starting data resource-specific maintenance", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v41 = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __60__CCDataResourceWriter__didCompleteMaintenance_shouldDefer___block_invoke;
    v34[3] = &unk_1E7C8BA70;
    v14 = deferCopy;
    v35 = v14;
    v36 = buf;
    if (![(CCDataResourceWriter *)self _executeDatabaseTransactionUsingBlock:v34])
    {
      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _didCompleteMaintenance:shouldDefer:];
      }

      v19 = 0;
      v15 = v35;
      goto LABEL_30;
    }

    if (v14 && (v14[2].isa)(v14))
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *p_dataResource;
        *v38 = 138412290;
        v39 = v16;
        v17 = "(%@) Aborting maintenance due to deferral signal";
LABEL_28:
        _os_log_impl(&dword_1B6DB2000, v15, OS_LOG_TYPE_DEFAULT, v17, v38, 0xCu);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (![(CCDataResourceWriter *)self _cleanupDatabaseIfRequired])
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CCDataResourceWriter _didCompleteMaintenance:shouldDefer:];
      }

      goto LABEL_29;
    }

    if (![(CCDataResourceWriter *)self _executeDatabaseTransactionUsingBlock:&__block_literal_global_8])
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *p_dataResource;
        *v38 = 138412290;
        v39 = v25;
        v17 = "(%@) Aborting maintenance after failing to record date";
        goto LABEL_28;
      }

LABEL_29:
      v19 = 0;
LABEL_30:

      _Block_object_dispose(buf, 8);
      goto LABEL_31;
    }

    if (*(*&buf[8] + 24) == 1)
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *p_dataResource;
        *v38 = 138412290;
        v39 = v22;
        _os_log_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_DEFAULT, "(%@) Tombstoning set after maintenance removed all remaining state", v38, 0xCu);
      }

      v33 = 0;
      v23 = [(CCDataResourceWriter *)self _tombstoneResource:&v33];
      v15 = v33;
      if (!v23)
      {
        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CCDataResourceWriter _didCompleteMaintenance:shouldDefer:];
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (!maintenance)
      {
LABEL_36:
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *p_dataResource;
          *v38 = 138412290;
          v39 = v30;
          _os_log_impl(&dword_1B6DB2000, v15, OS_LOG_TYPE_DEFAULT, "(%@) Finished database maintenance", v38, 0xCu);
        }

        v19 = 1;
        goto LABEL_30;
      }

      v27 = *p_dataResource;
      v32 = 0;
      v28 = [(CCDataResource *)v27 setWithError:&v32];
      v15 = v32;
      if (!v28)
      {
        v31 = __biome_log_for_category();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [CCDataResourceWriter _didCompleteMaintenance:shouldDefer:];
        }

        goto LABEL_29;
      }

      v29 = v28;
      *maintenance = v28;
    }

    goto LABEL_36;
  }

  if (v12)
  {
    v18 = *p_dataResource;
    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1B6DB2000, v11, OS_LOG_TYPE_DEFAULT, "(%@) Database not found: %@", buf, 0x16u);
  }

  v19 = 1;
LABEL_31:

  return v19;
}

uint64_t __60__CCDataResourceWriter__didCompleteMaintenance_shouldDefer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [CCDatabaseUpdater updaterForDatabase:a2];
  if ([v5 deleteExpiredRemoteDeviceState:*(a1 + 32) shouldTombstoneSet:*(*(a1 + 40) + 8) + 24] && objc_msgSend(v5, "compactContiguousRunsOfDeletes:", *(a1 + 32)))
  {
    *a3 = [v5 modifiedRowCount];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __60__CCDataResourceWriter__didCompleteMaintenance_shouldDefer___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v8 = 0;
  v4 = [CCDatabaseUpdater upsertLastMaintenanceDate:v3 database:v2 error:&v8];

  v5 = v8;
  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__CCDataResourceWriter__didCompleteMaintenance_shouldDefer___block_invoke_27_cold_1();
    }
  }

  return v4;
}

+ (BOOL)incrementRowsModified:(unint64_t)modified database:(id)database
{
  databaseCopy = database;
  v15 = 0;
  v6 = [CCDatabaseUpdater selectRowsModifiedCountInDatabase:databaseCopy error:&v15];
  v7 = v15;
  v8 = &unk_1F2EC9408;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  if (v7)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CCDataResourceWriter incrementRowsModified:database:];
    }

LABEL_10:

    v12 = 0;
    goto LABEL_11;
  }

  v14 = 0;
  v11 = +[CCDatabaseUpdater upsertRowsModified:database:error:](CCDatabaseUpdater, "upsertRowsModified:database:error:", [v9 unsignedIntegerValue] + modified, databaseCopy, &v14);
  v7 = v14;
  if (!v11)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CCDataResourceWriter incrementRowsModified:database:];
    }

    goto LABEL_10;
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (void)_temporaryDirectoryURLWithError:(void *)a1 .cold.1(void *a1)
{
  [a1 itemType];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)_temporaryDirectoryURLWithError:.cold.2()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "Could not obtain set from data resource: %@ with error: %@");
}

- (void)_createDatabaseWithLocalDeviceSite:(id *)a1 .cold.7(id *a1)
{
  v1 = [*a1 resourceDirectoryURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_createDatabaseWithLocalDeviceSite:.cold.8()
{
  OUTLINED_FUNCTION_7_0();
  __error();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_removeResource:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  [MEMORY[0x1E69C5D08] isDeviceUnlocked];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_executeDatabaseTransactionUsingBlock:.cold.1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "(%@) Failed to begin transaction: %@");
}

- (void)_executeDatabaseTransactionUsingBlock:.cold.2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "(%@) Failed to commit transaction: %@");
}

- (void)_executeDatabaseTransactionUsingBlock:.cold.3()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "(%@) Failed to rollback transaction: %@");
}

- (void)_executeDatabaseTransactionUsingBlock:.cold.4()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "(%@) Failed to open database: %@");
}

- (void)_cleanupDatabaseIfRequired
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "(%@) Failed to reset rows modified in database: %@");
}

- (void)_didCompleteMaintenance:shouldDefer:.cold.1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  LODWORD(v7) = 138412290;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v1, v2, "(%@) Failed to complete data resource-specific maintenance", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)_didCompleteMaintenance:shouldDefer:.cold.2()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  LODWORD(v7) = 138412290;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v1, v2, "(%@) Failed to clean database", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)_didCompleteMaintenance:shouldDefer:.cold.3()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "(%@) Failed to resolve set: %@");
}

- (void)_didCompleteMaintenance:shouldDefer:.cold.4()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "(%@) Maintenance failed to tombstone set: %@");
}

@end