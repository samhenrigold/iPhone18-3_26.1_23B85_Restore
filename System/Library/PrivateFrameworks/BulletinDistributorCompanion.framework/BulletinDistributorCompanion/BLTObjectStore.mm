@interface BLTObjectStore
- (BLTObjectStore)initWithPath:(id)path elementClass:(Class)class;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)keys;
- (id)objectForKey:(id)key;
- (id)succinctDescription;
- (void)keys;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)storeObject:(id)object withKey:(id)key;
@end

@implementation BLTObjectStore

- (BLTObjectStore)initWithPath:(id)path elementClass:(Class)class
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = BLTObjectStore;
  v8 = [(BLTObjectStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, path);
    v9->_elementClass = class;
  }

  return v9;
}

- (id)keys
{
  v39[1] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = self->_path;
  v38 = *MEMORY[0x277CCA1B0];
  v39[0] = *MEMORY[0x277CCA1B8];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v36 = 0;
  [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:v5 error:&v36];
  v6 = v36;

  if (v6)
  {
    v8 = blt_general_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BLTObjectStore keys];
    }

    v29 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = self->_path;
    v35 = 0;
    v8 = [defaultManager2 contentsOfDirectoryAtPath:v10 error:&v35];
    v6 = v35;

    if (v6)
    {
      obj = blt_general_log(v11);
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [BLTObjectStore keys];
      }

      v29 = 0;
    }

    else
    {
      v29 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSObject count](v8, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v8;
      v12 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v25 = v8;
        v26 = 0;
        v14 = *v32;
        do
        {
          v15 = 0;
          v27 = v13;
          do
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v31 + 1) + 8 * v15);
            fromHex = [v16 fromHex];
            if (fromHex)
            {
              [v29 addObject:fromHex];
            }

            else
            {
              v18 = [v16 hex];
              v19 = [(NSString *)self->_path stringByAppendingPathComponent:v16];
              selfCopy = self;
              v21 = [(NSString *)self->_path stringByAppendingPathComponent:v18];
              defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
              v30 = 0;
              [defaultManager3 moveItemAtPath:v19 toPath:v21 error:&v30];
              v23 = v30;

              if (!v23)
              {
                [v29 addObject:v16];
              }

              self = selfCopy;
              v13 = v27;
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v13);
        v8 = v25;
        v6 = v26;
      }
    }
  }

  return v29;
}

- (id)objectForKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [keyCopy hex];
  v6 = [(NSString *)self->_path stringByAppendingPathComponent:v5];
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  if (v7)
  {
    v15 = 0;
    v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:&v15];
    v9 = v15;
    v10 = v9;
    if (v9)
    {
      v11 = blt_general_log(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        selfCopy2 = self;
        v18 = 2112;
        v19 = keyCopy;
        v20 = 2112;
        v21 = v10;
        v22 = 2112;
        v23 = v6;
        _os_log_error_impl(&dword_241FB3000, v11, OS_LOG_TYPE_ERROR, "%@ objectForKey: %@ error: %@ unarchiving %@", buf, 0x2Au);
      }
    }

    v12 = [v8 decodeObjectOfClass:self->_elementClass forKey:*MEMORY[0x277CCA308]];
    [v8 finishDecoding];
  }

  else
  {
    v13 = blt_general_log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v18 = 2112;
      v19 = keyCopy;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_241FB3000, v13, OS_LOG_TYPE_ERROR, "%@ objectForKey: %@ not found at %@", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)removeObjectForKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [keyCopy hex];
  v6 = [(NSString *)self->_path stringByAppendingPathComponent:v5];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  [defaultManager removeItemAtPath:v6 error:&v11];
  v8 = v11;

  v10 = blt_general_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v14 = 2112;
    v15 = keyCopy;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_241FB3000, v10, OS_LOG_TYPE_DEFAULT, "%@ removeObjectForKey: %@ path: %@ error: %@", buf, 0x2Au);
  }
}

- (void)storeObject:(id)object withKey:(id)key
{
  v37[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  v8 = keyCopy;
  if (objectCopy)
  {
    v27 = 0;
    v9 = [keyCopy hex];
    v10 = [(NSString *)self->_path stringByAppendingPathComponent:v9];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager fileExistsAtPath:self->_path isDirectory:&v27];
    v13 = v27;

    if ((v12 & v13 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v14 = objc_claimAutoreleasedReturnValue(), path = self->_path, v36 = *MEMORY[0x277CCA1B0], v37[0] = *MEMORY[0x277CCA1B8], objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v37, &v36, 1), v16 = objc_claimAutoreleasedReturnValue(), v26 = 0, objc_msgSend(v14, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", path, 1, v16, &v26), v17 = v26, v16, v14, !v17))
    {
      v20 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      v19 = v20;
      if (v20)
      {
        [v20 encodeObject:objectCopy forKey:*MEMORY[0x277CCA308]];
        encodedData = [v19 encodedData];
        v25 = 0;
        [encodedData writeToFile:v10 options:268435457 error:&v25];
        v17 = v25;

        v23 = blt_general_log(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          selfCopy3 = self;
          v30 = 2112;
          v31 = v8;
          v32 = 2112;
          v33 = v10;
          _os_log_impl(&dword_241FB3000, v23, OS_LOG_TYPE_DEFAULT, "%@ storeObject:withKey: wrote for: %@ path: %@", buf, 0x20u);
        }
      }

      else
      {
        v24 = blt_general_log(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          selfCopy3 = self;
          v30 = 2112;
          v31 = v8;
          v32 = 2112;
          v33 = v10;
          _os_log_error_impl(&dword_241FB3000, v24, OS_LOG_TYPE_ERROR, "%@ storeObject:withKey: failed to create archiver for: %@ path: %@", buf, 0x20u);
        }

        v17 = 0;
      }
    }

    else
    {
      v19 = blt_general_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        selfCopy3 = self;
        v30 = 2112;
        v31 = v8;
        v32 = 2112;
        v33 = v10;
        v34 = 2112;
        v35 = v17;
        _os_log_error_impl(&dword_241FB3000, v19, OS_LOG_TYPE_ERROR, "%@ storeObject:withKey: createDirectoryAtPath failed for: %@ at path: %@ error: %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v17 = blt_general_log(keyCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(BLTObjectStore *)self storeObject:v8 withKey:v17];
    }
  }
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  if (object)
  {
    [(BLTObjectStore *)self storeObject:object withKey:subscript];
  }

  else
  {
    [(BLTObjectStore *)self removeObjectForKey:subscript];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BLTObjectStore *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BLTObjectStore *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BLTObjectStore *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_path withName:@"path"];
  v6 = [succinctDescriptionBuilder appendObject:self->_elementClass withName:@"_elementClass"];

  return succinctDescriptionBuilder;
}

- (void)keys
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_241FB3000, v0, OS_LOG_TYPE_ERROR, "%s error loading object store keys: %@", v1, 0x16u);
}

- (void)storeObject:(os_log_t)log withKey:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "%@ storeObject:withKey: object nil for: %@", &v3, 0x16u);
}

@end