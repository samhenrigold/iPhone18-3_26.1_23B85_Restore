@interface ISStore
- (BOOL)removeUnitForUUID:(id)d;
- (BOOL)writeStoreUnit:(id)unit;
- (ISStore)initWithURL:(id)l;
- (id)addUnitWithData:(id)data;
- (id)unitForUUID:(id)d;
@end

@implementation ISStore

- (ISStore)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ISStore;
  v6 = [(ISStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeURL, l);
  }

  return v7;
}

- (id)unitForUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    os_unfair_lock_lock(&self->_registryLock);
    v5 = [(NSMutableDictionary *)self->_registry objectForKey:dCopy];
    os_unfair_lock_unlock(&self->_registryLock);
    if (!v5)
    {
      storeURL = [(ISStore *)self storeURL];
      v5 = [ISStoreUnit storeUnitWithStoreURL:storeURL UUID:dCopy];

      if (v5)
      {
        os_unfair_lock_lock(&self->_registryLock);
        [(NSMutableDictionary *)self->_registry setObject:v5 forKey:dCopy];
        os_unfair_lock_unlock(&self->_registryLock);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)writeStoreUnit:(id)unit
{
  v47[1] = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  data = [unitCopy data];
  uUID = [unitCopy UUID];

  if ([data length])
  {
    path = [(NSURL *)self->_storeURL path];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v9 = *MEMORY[0x1E696A370];
    v46 = *MEMORY[0x1E696A370];
    v47[0] = &unk_1F1A652C8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v37 = 0;
    v11 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:v10 error:&v37];
    v12 = v37;

    if ((v11 & 1) == 0)
    {
      v17 = _ISDefaultLog(v13);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [ISStore writeStoreUnit:];
      }

      v30 = 0;
      goto LABEL_23;
    }

    v14 = MEMORY[0x1E696AEC0];
    uUIDString = [uUID UUIDString];
    v16 = [v14 stringWithFormat:@"%@.%s", uUIDString, "isdata"];
    v17 = [path stringByAppendingPathComponent:v16];

    v18 = [v17 stringByAppendingPathExtension:@"tmp"];
    v36 = v12;
    v19 = [data writeToFile:v18 options:0x10000000 error:&v36];
    v20 = v36;

    if (v19)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v44 = v9;
      v45 = &unk_1F1A652E0;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v35 = v20;
      v24 = [defaultManager2 setAttributes:v23 ofItemAtPath:v18 error:&v35];
      v25 = v35;

      if (v24)
      {
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v34 = v25;
        v28 = [defaultManager3 moveItemAtPath:v18 toPath:v17 error:&v34];
        v20 = v34;

        if (v28)
        {
          v30 = 1;
LABEL_22:

          v12 = v20;
LABEL_23:

          goto LABEL_24;
        }

        v32 = _ISDefaultLog(v29);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v39 = v18;
          v40 = 2112;
          v41 = v17;
          v42 = 2112;
          v43 = v20;
          _os_log_fault_impl(&dword_1A77B8000, v32, OS_LOG_TYPE_FAULT, "Failed to move temp file %@ to %@ with error: %@", buf, 0x20u);
        }

        defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager4 removeItemAtPath:v18 error:0];
      }

      else
      {
        defaultManager4 = _ISDefaultLog(v26);
        if (os_log_type_enabled(defaultManager4, OS_LOG_TYPE_FAULT))
        {
          [ISStore writeStoreUnit:];
        }

        v20 = v25;
      }
    }

    else
    {
      defaultManager4 = _ISDefaultLog(v21);
      if (os_log_type_enabled(defaultManager4, OS_LOG_TYPE_FAULT))
      {
        [ISStore writeStoreUnit:];
      }
    }

    v30 = 0;
    goto LABEL_22;
  }

  path = _ISDefaultLog(0);
  if (os_log_type_enabled(path, OS_LOG_TYPE_FAULT))
  {
    [ISStore writeStoreUnit:path];
  }

  v30 = 0;
LABEL_24:

  return v30;
}

- (id)addUnitWithData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [ISStoreUnit storeUnitWithData:data];
  if ([v4 isValid])
  {
    uUID = [v4 UUID];
    v6 = [(ISStore *)self unitForUUID:uUID];

    isValid = [v6 isValid];
    if (isValid)
    {
      v8 = v6;
    }

    else
    {
      v10 = _ISDefaultLog(isValid);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        uUID2 = [v4 UUID];
        uUIDString = [uUID2 UUIDString];
        v14 = 138412290;
        v15 = uUIDString;
        _os_log_impl(&dword_1A77B8000, v10, OS_LOG_TYPE_INFO, "ADDING_NEW_STORE_ENTRY with UUID: %@", &v14, 0xCu);
      }

      v8 = v4;
      if ([(ISStore *)self writeStoreUnit:v8])
      {
        storeURL = [(ISStore *)self storeURL];
        [v8 remapWithStoreURL:storeURL];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeUnitForUUID:(id)d
{
  dCopy = d;
  path = [(NSURL *)self->_storeURL path];
  v6 = MEMORY[0x1E696AEC0];
  uUIDString = [dCopy UUIDString];
  v8 = [v6 stringWithFormat:@"%@.%s", uUIDString, "isdata"];
  v9 = [path stringByAppendingPathComponent:v8];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  v11 = [defaultManager removeItemAtPath:v9 error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    code = [v12 code];
    if (code != 4)
    {
      v14 = _ISDefaultLog(code);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ISStore *)dCopy removeUnitForUUID:v12, v14];
      }
    }
  }

  return v11;
}

- (void)removeUnitForUUID:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [a1 UUIDString];
  OUTLINED_FUNCTION_0_4();
  v7 = a2;
  _os_log_error_impl(&dword_1A77B8000, a3, OS_LOG_TYPE_ERROR, "Failed to remove store entry for UUID: %@ with error: %@", v6, 0x16u);
}

@end