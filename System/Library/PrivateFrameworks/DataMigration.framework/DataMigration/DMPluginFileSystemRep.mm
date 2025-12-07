@interface DMPluginFileSystemRep
+ (id)allReps;
- (DMPluginFileSystemRep)initWithName:(id)name atEnclosingPath:(id)path;
@end

@implementation DMPluginFileSystemRep

+ (id)allReps
{
  v50 = *MEMORY[0x277D85DE8];
  _pathsContainingPossiblePluginDirectory = [self _pathsContainingPossiblePluginDirectory];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = [_pathsContainingPossiblePluginDirectory countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v44;
    v6 = MEMORY[0x277CBEBF8];
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v44 != v5)
        {
          objc_enumerationMutation(_pathsContainingPossiblePluginDirectory);
        }

        v9 = [*(*(&v43 + 1) + 8 * v7) stringByAppendingPathComponent:@"DataClassMigrators"];
        v6 = [v8 arrayByAddingObject:v9];

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [_pathsContainingPossiblePluginDirectory countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v29 = _pathsContainingPossiblePluginDirectory;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v33 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v33)
  {
    v31 = *v40;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v38 = 0;
        v14 = [defaultManager contentsOfDirectoryAtPath:v12 error:&v38];
        v15 = v38;

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
        _DMLogFunc(v32, 7, @"Found %@ items in migration plugin directory %@. Error: %@", v17, v18, v19, v20, v21, v16);

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v22 = v14;
        v23 = [v22 countByEnumeratingWithState:&v34 objects:v47 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v35;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v35 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [[DMPluginFileSystemRep alloc] initWithName:*(*(&v34 + 1) + 8 * j) atEnclosingPath:v12];
              if (v27)
              {
                [v10 addObject:v27];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v34 objects:v47 count:16];
          }

          while (v24);
        }
      }

      v33 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v33);
  }

  return v10;
}

- (DMPluginFileSystemRep)initWithName:(id)name atEnclosingPath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = DMPluginFileSystemRep;
  v8 = [(DMPluginFileSystemRep *)&v18 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [pathCopy stringByAppendingPathComponent:nameCopy];
    path = v8->_path;
    v8->_path = v11;

    v13 = [MEMORY[0x277CCA8D8] bundleWithPath:v8->_path];
    bundle = v8->_bundle;
    v8->_bundle = v13;

    bundleIdentifier = [(NSBundle *)v8->_bundle bundleIdentifier];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = bundleIdentifier;
  }

  return v8;
}

@end