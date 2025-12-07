@interface HVDataSourceContentState
+ (BOOL)deleteStateForDataSource:(unsigned int)source basePath:(id)path error:(id *)error;
+ (id)_pathForDataSource:(void *)source basePath:;
+ (uint64_t)_deleteStateAtPath:(NSObject *)path error:;
- (BOOL)isEqual:(id)equal;
- (BOOL)saveStateWithError:(id *)error;
- (HVDataSourceContentState)initWithDataSource:(unsigned int)source basePath:(id)path;
- (id)sha256;
- (unint64_t)hash;
@end

@implementation HVDataSourceContentState

- (id)sha256
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    v2 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
    v38[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];

    v4 = objc_autoreleasePoolPush();
    allKeys = [*(selfCopy + 32) allKeys];
    v25 = v3;
    v6 = [allKeys sortedArrayUsingDescriptors:v3];

    objc_autoreleasePoolPop(v4);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          HVSHA256String(v11, &c);
          v13 = selfCopy;
          v14 = [*(selfCopy + 32) objectForKeyedSubscript:v11];
          consumers = [v14 consumers];
          v16 = [consumers sortedArrayUsingDescriptors:v25];

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v28;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v28 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                HVSHA256String(*(*(&v27 + 1) + 8 * j), &c);
              }

              v19 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
            }

            while (v19);
          }

          data = [v14 levelOfService];
          CC_SHA256_Update(&c, &data, 1u);

          objc_autoreleasePoolPop(v12);
          selfCopy = v13;
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v8);
    }

    v22 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
    CC_SHA256_Final([v22 mutableBytes], &c);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dataSource = self->_dataSource;
      if (dataSource == [(HVDataSourceContentState *)v5 dataSource])
      {
        deferredContentStates = self->_deferredContentStates;
        deferredContentStates = [(HVDataSourceContentState *)v5 deferredContentStates];
        v9 = [(NSMutableDictionary *)deferredContentStates isEqualToDictionary:deferredContentStates];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  deferredContentStates = self->_deferredContentStates;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__HVDataSourceContentState_hash__block_invoke;
  v7[3] = &unk_278969B80;
  v7[4] = &v8;
  [(NSMutableDictionary *)deferredContentStates enumerateKeysAndObjectsUsingBlock:v7];
  v4 = v9[3];
  v5 = [(NSMutableDictionary *)self->_deferredContentStates count]- v4 + 32 * v4;
  v9[3] = v5;
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __32__HVDataSourceContentState_hash__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 hash] + v5;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = [v6 hash];

  *(*(*(a1 + 32) + 8) + 24) = v8 + v7;
}

- (BOOL)saveStateWithError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  sha256 = [(HVDataSourceContentState *)self sha256];
  if ([(NSData *)self->_fileContentsHash isEqualToData:sha256])
  {
    v6 = hv_default_log_handle();
    v7 = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      dataSource = self->_dataSource;
      *buf = 67109120;
      v33 = dataSource;
      _os_log_impl(&dword_2321EC000, v6, OS_LOG_TYPE_INFO, "HVDataSourceContentState: source %u content unchanged, not writing to disk.", buf, 8u);
    }
  }

  else
  {
    v9 = objc_opt_new();
    v10 = objc_autoreleasePoolPush();
    v11 = objc_opt_new();
    deferredContentStates = self->_deferredContentStates;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __47__HVDataSourceContentState_saveStateWithError___block_invoke;
    v30[3] = &unk_278969B30;
    v13 = v11;
    v31 = v13;
    [(NSMutableDictionary *)deferredContentStates enumerateKeysAndObjectsUsingBlock:v30];
    allKeys = [v13 allKeys];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __47__HVDataSourceContentState_saveStateWithError___block_invoke_2;
    v28[3] = &unk_278969B58;
    v29 = v13;
    v15 = v13;
    v16 = [allKeys _pas_mappedArrayWithTransform:v28];

    v17 = [v16 mutableCopy];
    [v9 setDeferredContentStates:v17];

    objc_autoreleasePoolPop(v10);
    data = [v9 data];

    path = self->_path;
    v27 = 0;
    v7 = [data writeToFile:path options:1073741825 error:&v27];
    v6 = v27;
    if (v7)
    {
      objc_storeStrong(&self->_fileContentsHash, sha256);
      v20 = hv_default_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = self->_dataSource;
        *buf = 67109120;
        v33 = v21;
        _os_log_impl(&dword_2321EC000, v20, OS_LOG_TYPE_INFO, "HVDataSourceContentState: source %u content saved to disk.", buf, 8u);
      }
    }

    else
    {
      v22 = hv_default_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = self->_dataSource;
        v26 = self->_path;
        *buf = 67109634;
        v33 = v25;
        v34 = 2112;
        v35 = v26;
        v36 = 2112;
        v37 = v6;
        _os_log_error_impl(&dword_2321EC000, v22, OS_LOG_TYPE_ERROR, "HVDataSourceContentState: source %u failed to write protobuf at: %@ error: %@", buf, 0x1Cu);
      }

      if (error)
      {
        v23 = v6;
        *error = v6;
      }
    }
  }

  return v7;
}

void __47__HVDataSourceContentState_saveStateWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:v7];
}

HVPBContentStateEntry *__47__HVDataSourceContentState_saveStateWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 consumers];
  v6 = [v5 allObjects];
  v7 = [v6 mutableCopy];
  [v4 setConsumers:v7];

  [v4 setLevelOfService:{objc_msgSend(v3, "levelOfService")}];
  v8 = objc_opt_new();
  [v8 setState:v4];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v3];

  v10 = [v9 mutableCopy];
  [v8 setUniqueIds:v10];

  return v8;
}

- (HVDataSourceContentState)initWithDataSource:(unsigned int)source basePath:(id)path
{
  v4 = *&source;
  v90 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v69.receiver = self;
  v69.super_class = HVDataSourceContentState;
  v7 = [(HVDataSourceContentState *)&v69 init];
  v8 = v7;
  if (v7)
  {
    v7->_dataSource = v4;
    v9 = [HVDataSourceContentState _pathForDataSource:v4 basePath:pathCopy];
    path = v8->_path;
    v8->_path = v9;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager fileExistsAtPath:v8->_path];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277CBEA90]);
      v14 = v8->_path;
      v82 = 0;
      v15 = [v13 initWithContentsOfFile:v14 options:1 error:&v82];
      v16 = v82;
      if (v15)
      {
        v17 = [[HVPBDataSourceContentState alloc] initWithData:v15];
        if (v17)
        {
          v18 = objc_opt_new();
          v63 = v8;
          v64 = pathCopy;
          v61 = v16;
          v62 = v15;
          v60 = v17;
          if ([(HVPBDataSourceContentState *)v17 deferredContentStatesCount])
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            obj = [(HVPBDataSourceContentState *)v17 deferredContentStates];
            v19 = [obj countByEnumeratingWithState:&v78 objects:buf count:16];
            if (v19)
            {
              v20 = v19;
              v67 = *v79;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v79 != v67)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = *(*(&v78 + 1) + 8 * i);
                  v23 = [HVContentState alloc];
                  v24 = objc_alloc(MEMORY[0x277CBEB98]);
                  state = [v22 state];
                  consumers = [state consumers];
                  v27 = [v24 initWithArray:consumers];
                  state2 = [v22 state];
                  v29 = -[HVContentState initWithConsumers:levelOfService:](v23, "initWithConsumers:levelOfService:", v27, [state2 levelOfService]);

                  v76 = 0u;
                  v77 = 0u;
                  v74 = 0u;
                  v75 = 0u;
                  uniqueIds = [v22 uniqueIds];
                  v31 = [uniqueIds countByEnumeratingWithState:&v74 objects:v85 count:16];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = *v75;
                    do
                    {
                      for (j = 0; j != v32; ++j)
                      {
                        if (*v75 != v33)
                        {
                          objc_enumerationMutation(uniqueIds);
                        }

                        [(NSMutableDictionary *)v18 setObject:v29 forKeyedSubscript:*(*(&v74 + 1) + 8 * j)];
                      }

                      v32 = [uniqueIds countByEnumeratingWithState:&v74 objects:v85 count:16];
                    }

                    while (v32);
                  }
                }

                v20 = [obj countByEnumeratingWithState:&v78 objects:buf count:16];
              }

              while (v20);
            }

            v8 = v63;
            pathCopy = v64;
            v16 = v61;
            v15 = v62;
            v17 = v60;
          }

          if ([(HVPBDataSourceContentState *)v17 deprecatedDeferredContentStatesCount])
          {
            if ([(HVPBDataSourceContentState *)v17 deferredContentStatesCount])
            {
              v35 = hv_default_log_handle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
              {
                v59 = v8->_path;
                *v83 = 138412290;
                v84 = v59;
                _os_log_fault_impl(&dword_2321EC000, v35, OS_LOG_TYPE_FAULT, "HVDataSourceContentState: protobuf at %@ mixes deprecated and new content state formats!", v83, 0xCu);
              }
            }

            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            obja = [(HVPBDataSourceContentState *)v17 deprecatedDeferredContentStates];
            v36 = [obja countByEnumeratingWithState:&v70 objects:v83 count:16];
            if (v36)
            {
              v37 = v36;
              v68 = *v71;
              do
              {
                for (k = 0; k != v37; ++k)
                {
                  if (*v71 != v68)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v39 = *(*(&v70 + 1) + 8 * k);
                  v40 = objc_autoreleasePoolPush();
                  v41 = [HVContentState alloc];
                  v42 = objc_alloc(MEMORY[0x277CBEB98]);
                  state3 = [v39 state];
                  consumers2 = [state3 consumers];
                  v45 = [v42 initWithArray:consumers2];
                  state4 = [v39 state];
                  v47 = -[HVContentState initWithConsumers:levelOfService:](v41, "initWithConsumers:levelOfService:", v45, [state4 levelOfService]);

                  uniqueId = [v39 uniqueId];
                  [(NSMutableDictionary *)v18 setObject:v47 forKeyedSubscript:uniqueId];

                  objc_autoreleasePoolPop(v40);
                }

                v37 = [obja countByEnumeratingWithState:&v70 objects:v83 count:16];
              }

              while (v37);
            }

            v8 = v63;
            pathCopy = v64;
            v16 = v61;
            v15 = v62;
            v17 = v60;
          }
        }

        else
        {
          v53 = hv_default_log_handle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = v8->_path;
            *buf = 138412290;
            v87 = v54;
            _os_log_impl(&dword_2321EC000, v53, OS_LOG_TYPE_DEFAULT, "HVDataSourceContentState: malformed protobuf at: %@", buf, 0xCu);
          }

          [HVDataSourceContentState _deleteStateAtPath:0 error:?];
          v18 = objc_opt_new();
        }
      }

      else
      {
        v51 = hv_default_log_handle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v8->_path;
          *buf = 138412546;
          v87 = v52;
          v88 = 2112;
          v89 = v16;
          _os_log_impl(&dword_2321EC000, v51, OS_LOG_TYPE_DEFAULT, "HVDataSourceContentState: failed to read %@: error: %@", buf, 0x16u);
        }

        v18 = objc_opt_new();
      }
    }

    else
    {
      v49 = hv_default_log_handle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = v8->_path;
        *buf = 138412290;
        v87 = v50;
        _os_log_impl(&dword_2321EC000, v49, OS_LOG_TYPE_INFO, "HVDataSourceContentState: no existing deferred id list at %@", buf, 0xCu);
      }

      v18 = objc_opt_new();
    }

    deferredContentStates = v8->_deferredContentStates;
    v8->_deferredContentStates = v18;

    sha256 = [(HVDataSourceContentState *)v8 sha256];
    fileContentsHash = v8->_fileContentsHash;
    v8->_fileContentsHash = sha256;
  }

  return v8;
}

+ (id)_pathForDataSource:(void *)source basePath:
{
  sourceCopy = source;
  objc_opt_self();
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"deferred_%d.pb", a2];
  v6 = [sourceCopy stringByAppendingPathComponent:v5];

  return v6;
}

+ (uint64_t)_deleteStateAtPath:(NSObject *)path error:
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v8 = [defaultManager2 removeItemAtPath:v4 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v11 = hv_default_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v9;
        _os_log_error_impl(&dword_2321EC000, v11, OS_LOG_TYPE_ERROR, "HVDataSourceContentState: failed to delete protobuf at: %@ error: %@", buf, 0x16u);
      }

      if (path)
      {
        v12 = v9;
        v10 = 0;
        *path = v9;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v9 = hv_default_log_handle();
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_INFO, "HVDataSourceContentState: went to delete protobuf but there was no file at: %@ ", buf, 0xCu);
    }
  }

  return v10;
}

+ (BOOL)deleteStateForDataSource:(unsigned int)source basePath:(id)path error:(id *)error
{
  v7 = [(HVDataSourceContentState *)self _pathForDataSource:path basePath:?];
  LOBYTE(error) = [(HVDataSourceContentState *)self _deleteStateAtPath:v7 error:error];

  return error;
}

@end