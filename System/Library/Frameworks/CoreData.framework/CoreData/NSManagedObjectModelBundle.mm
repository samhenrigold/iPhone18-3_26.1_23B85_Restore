@interface NSManagedObjectModelBundle
- (NSManagedObjectModelBundle)initWithPath:(id)path;
- (id)_modelForVersionHashes:(id)hashes;
- (id)_modelForVersionHashes:(id)hashes inStyle:(unint64_t)style;
- (id)currentVersion;
- (id)currentVersionURL;
- (id)modelVersions;
- (id)optimizedVersionURL;
- (id)urlForModelVersionWithName:(id)name;
- (id)versionChecksums;
- (void)dealloc;
@end

@implementation NSManagedObjectModelBundle

- (id)optimizedVersionURL
{
  if (self)
  {
    bundle = self->_bundle;
  }

  else
  {
    bundle = 0;
  }

  result = [(NSBundle *)bundle pathForResource:[(NSManagedObjectModelBundle *)self currentVersion] ofType:@"omo"];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DFF8];

    return [v5 fileURLWithPath:v4 isDirectory:0];
  }

  return result;
}

- (id)currentVersion
{
  if (self)
  {
    self = self->_versionInfoDictionary;
  }

  return [(NSManagedObjectModelBundle *)self objectForKey:@"NSManagedObjectModel_CurrentVersionName"];
}

- (id)currentVersionURL
{
  currentVersion = [(NSManagedObjectModelBundle *)self currentVersion];

  return [(NSManagedObjectModelBundle *)self urlForModelVersionWithName:currentVersion];
}

- (void)dealloc
{
  self->_bundle = 0;

  self->_versionInfoDictionary = 0;
  v3.receiver = self;
  v3.super_class = NSManagedObjectModelBundle;
  [(NSManagedObjectModelBundle *)&v3 dealloc];
}

- (NSManagedObjectModelBundle)initWithPath:(id)path
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSManagedObjectModelBundle;
  v4 = [(NSManagedObjectModelBundle *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:path];
    v4->_bundle = v5;
    if (v5)
    {
      v6 = [(NSBundle *)v5 pathForResource:@"VersionInfo" ofType:@"plist"];
      if (v6 || (v6 = [(NSBundle *)v4->_bundle pathForResource:@"Info" ofType:@"plist"]) != 0)
      {
        v4->_versionInfoDictionary = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v6];
      }
    }
  }

  return v4;
}

- (id)modelVersions
{
  if (self)
  {
    self = [(NSDictionary *)self->_versionInfoDictionary objectForKey:@"NSManagedObjectModel_VersionHashes"];
    v2 = vars8;
  }

  return [(NSManagedObjectModelBundle *)self allKeys];
}

- (id)versionChecksums
{
  if (self)
  {
    self = self->_versionInfoDictionary;
  }

  return [(NSManagedObjectModelBundle *)self objectForKey:@"NSManagedObjectModel_VersionChecksums"];
}

- (id)urlForModelVersionWithName:(id)name
{
  if (self)
  {
    self = self->_bundle;
  }

  result = [(NSManagedObjectModelBundle *)self pathForResource:name ofType:@"mom"];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DFF8];

    return [v5 fileURLWithPath:v4 isDirectory:0];
  }

  return result;
}

- (id)_modelForVersionHashes:(id)hashes inStyle:(unint64_t)style
{
  v97 = *MEMORY[0x1E69E9840];
  if (style == 1)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    allKeys = [hashes allKeys];
    v7 = [(NSBundle *)self->_bundle URLsForResourcesWithExtension:@"mom" subdirectory:0];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v7;
    v60 = [(NSArray *)v7 countByEnumeratingWithState:&v87 objects:v96 count:16];
    if (v60)
    {
      v54 = v6;
      v64 = 0;
      v57 = 0;
      v58 = *v88;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v88 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v87 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v62 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v9];
          v10 = [(NSManagedObjectModel *)v62 _entityVersionHashesByNameInStyle:?];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v83 objects:v95 count:16];
          if (v11)
          {
            v12 = v11;
            array = 0;
            v14 = *v84;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v84 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v83 + 1) + 8 * j);
                if ([objc_msgSend(v10 objectForKey:{v16), "isEqual:", objc_msgSend(hashes, "objectForKey:", v16)}])
                {
                  if (!array)
                  {
                    array = [MEMORY[0x1E695DF70] array];
                  }

                  [array addObject:v16];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v83 objects:v95 count:16];
            }

            while (v12);
          }

          else
          {
            array = 0;
          }

          if ([array count])
          {
            v17 = [array count];
            v18 = v62;
            if (v17 > [v64 count])
            {

              v57 = v62;
              v64 = array;
              v19 = [allKeys count];
              if (v19 == [array count])
              {

                objc_autoreleasePoolPop(context);
                goto LABEL_31;
              }
            }
          }

          else
          {
            v18 = v62;
          }

          objc_autoreleasePoolPop(context);
        }

        v60 = [(NSArray *)obj countByEnumeratingWithState:&v87 objects:v96 count:16];
      }

      while (v60);
LABEL_31:
      v21 = 0;
      v22 = v57;
      if (!v57)
      {
        v6 = v54;
LABEL_74:
        v23 = v64;
        goto LABEL_75;
      }

      v23 = v64;
      if (v64)
      {
        entitiesByName = [(NSManagedObjectModel *)v57 entitiesByName];
        v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v64, "count")}];
        v26 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v64, "count")}];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v27 = [v64 countByEnumeratingWithState:&v79 objects:v94 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v80;
          v59 = *v80;
          v61 = entitiesByName;
          do
          {
            v30 = 0;
            v63 = v28;
            do
            {
              if (*v80 != v29)
              {
                objc_enumerationMutation(v23);
              }

              v31 = *(*(&v79 + 1) + 8 * v30);
              v32 = objc_autoreleasePoolPush();
              for (k = -[NSDictionary objectForKey:](entitiesByName, "objectForKey:", v31); ; k = [v34 superentity])
              {
                v34 = k;
                [v26 addObject:{objc_msgSend(k, "name")}];
                if (![v34 superentity])
                {
                  break;
                }
              }

              [v34 name];
              if (!objc_msgSend_valueForKey_(v25))
              {
                v35 = [v34 copy];
                v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
                contexta = v35;
                [NSManagedObjectModel _deepCollectEntitiesInArray:v36 entity:v35];
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v37 = [v36 countByEnumeratingWithState:&v75 objects:v93 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v76;
                  do
                  {
                    for (m = 0; m != v38; ++m)
                    {
                      if (*v76 != v39)
                      {
                        objc_enumerationMutation(v36);
                      }

                      [v25 setObject:*(*(&v75 + 1) + 8 * m) forKey:{objc_msgSend(*(*(&v75 + 1) + 8 * m), "name")}];
                    }

                    v38 = [v36 countByEnumeratingWithState:&v75 objects:v93 count:16];
                  }

                  while (v38);
                }

                v28 = v63;
                v23 = v64;
                v29 = v59;
                entitiesByName = v61;
              }

              objc_autoreleasePoolPop(v32);
              ++v30;
            }

            while (v30 != v28);
            v28 = [v23 countByEnumeratingWithState:&v79 objects:v94 count:16];
          }

          while (v28);
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        allValues = [v25 allValues];
        v42 = [allValues countByEnumeratingWithState:&v71 objects:v92 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v72;
          do
          {
            for (n = 0; n != v43; ++n)
            {
              if (*v72 != v44)
              {
                objc_enumerationMutation(allValues);
              }

              v46 = *(*(&v71 + 1) + 8 * n);
              if (([v26 containsObject:{objc_msgSend(v46, "name")}] & 1) == 0)
              {
                -[NSEntityDescription _removeSubentity:]([v46 superentity], v46);
                [v25 removeObjectForKey:{objc_msgSend(v46, "name")}];
              }
            }

            v43 = [allValues countByEnumeratingWithState:&v71 objects:v92 count:16];
          }

          while (v43);
        }

        v21 = -[NSManagedObjectModel _initWithEntities:]([NSManagedObjectModel alloc], "_initWithEntities:", [v25 allValues]);
        [v21 setVersionIdentifiers:{-[NSManagedObjectModel versionIdentifiers](v57, "versionIdentifiers")}];
        fetchRequestTemplatesByName = [(NSManagedObjectModel *)v57 fetchRequestTemplatesByName];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v48 = [(NSDictionary *)fetchRequestTemplatesByName countByEnumeratingWithState:&v67 objects:v91 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v68;
          do
          {
            for (ii = 0; ii != v49; ++ii)
            {
              if (*v68 != v50)
              {
                objc_enumerationMutation(fetchRequestTemplatesByName);
              }

              v52 = *(*(&v67 + 1) + 8 * ii);
              v53 = [(NSDictionary *)fetchRequestTemplatesByName objectForKey:v52];
              if ([v25 objectForKey:{objc_msgSend(objc_msgSend(v53, "entity"), "name")}])
              {
                [v21 setFetchRequestTemplate:v53 forName:v52];
              }
            }

            v49 = [(NSDictionary *)fetchRequestTemplatesByName countByEnumeratingWithState:&v67 objects:v91 count:16];
          }

          while (v49);
        }

        v6 = v54;
        v22 = v57;
        goto LABEL_74;
      }

      v6 = v54;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v21 = 0;
    }

LABEL_75:

    [v6 drain];
    return v21;
  }

  return [(NSManagedObjectModelBundle *)self _modelForVersionHashes:?];
}

- (id)_modelForVersionHashes:(id)hashes
{
  v92 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  allKeys = [hashes allKeys];
  if (self)
  {
    v6 = [(NSDictionary *)self->_versionInfoDictionary objectForKey:@"NSManagedObjectModel_VersionHashes"];
  }

  else
  {
    v6 = 0;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v55 = [v6 countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v55)
  {
    selfCopy = self;
    v50 = v5;
    v61 = 0;
    v51 = 0;
    v52 = v6;
    v53 = *v83;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v83 != v53)
        {
          objc_enumerationMutation(v6);
        }

        v57 = *(*(&v82 + 1) + 8 * i);
        v8 = [objc_msgSend(v6 "objectForKey:{"dictionaryWithValuesForKeys:", allKeys}")];
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v78 objects:v90 count:16];
        if (v9)
        {
          v10 = v9;
          array = 0;
          v12 = *v79;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v79 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v78 + 1) + 8 * j);
              if ([objc_msgSend(v8 objectForKey:{v14), "isEqual:", objc_msgSend(hashes, "objectForKey:", v14)}])
              {
                if (!array)
                {
                  array = [MEMORY[0x1E695DF70] array];
                }

                [array addObject:v14];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v78 objects:v90 count:16];
          }

          while (v10);
        }

        else
        {
          array = 0;
        }

        if ([array count])
        {
          v15 = [array count];
          v6 = v52;
          if (v15 > [v61 count])
          {

            v51 = v57;
            v61 = array;
            v16 = [allKeys count];
            if (v16 == [array count])
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v6 = v52;
        }
      }

      v55 = [v6 countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v55);
LABEL_28:
    v17 = 0;
    v18 = v51;
    if (v51)
    {
      v19 = v61;
      if (v61)
      {
        v54 = [[NSManagedObjectModel alloc] initWithContentsOfURL:[(NSManagedObjectModelBundle *)selfCopy urlForModelVersionWithName:v51]];
        entitiesByName = [(NSManagedObjectModel *)v54 entitiesByName];
        v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v61, "count")}];
        v22 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v61, "count")}];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v23 = [v61 countByEnumeratingWithState:&v74 objects:v89 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v75;
          v56 = *v75;
          v58 = entitiesByName;
          do
          {
            v26 = 0;
            v60 = v24;
            do
            {
              if (*v75 != v25)
              {
                objc_enumerationMutation(v19);
              }

              for (k = -[NSDictionary objectForKey:](entitiesByName, "objectForKey:", *(*(&v74 + 1) + 8 * v26)); ; k = [v28 superentity])
              {
                v28 = k;
                [v22 addObject:{objc_msgSend(k, "name")}];
                if (![v28 superentity])
                {
                  break;
                }
              }

              [v28 name];
              if (!objc_msgSend_valueForKey_(v21))
              {
                v29 = [v28 copy];
                v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [NSManagedObjectModel _deepCollectEntitiesInArray:v30 entity:v29];
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v31 = [v30 countByEnumeratingWithState:&v70 objects:v88 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v71;
                  do
                  {
                    for (m = 0; m != v32; ++m)
                    {
                      if (*v71 != v33)
                      {
                        objc_enumerationMutation(v30);
                      }

                      [v21 setObject:*(*(&v70 + 1) + 8 * m) forKey:{objc_msgSend(*(*(&v70 + 1) + 8 * m), "name")}];
                    }

                    v32 = [v30 countByEnumeratingWithState:&v70 objects:v88 count:16];
                  }

                  while (v32);
                }

                v24 = v60;
                v19 = v61;
                v25 = v56;
                entitiesByName = v58;
              }

              ++v26;
            }

            while (v26 != v24);
            v24 = [v19 countByEnumeratingWithState:&v74 objects:v89 count:16];
          }

          while (v24);
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        allValues = [v21 allValues];
        v36 = [allValues countByEnumeratingWithState:&v66 objects:v87 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v67;
          do
          {
            for (n = 0; n != v37; ++n)
            {
              if (*v67 != v38)
              {
                objc_enumerationMutation(allValues);
              }

              v40 = *(*(&v66 + 1) + 8 * n);
              if (([v22 containsObject:{objc_msgSend(v40, "name")}] & 1) == 0)
              {
                -[NSEntityDescription _removeSubentity:]([v40 superentity], v40);
                [v21 removeObjectForKey:{objc_msgSend(v40, "name")}];
              }
            }

            v37 = [allValues countByEnumeratingWithState:&v66 objects:v87 count:16];
          }

          while (v37);
        }

        v17 = -[NSManagedObjectModel _initWithEntities:]([NSManagedObjectModel alloc], "_initWithEntities:", [v21 allValues]);
        [v17 setVersionIdentifiers:{-[NSManagedObjectModel versionIdentifiers](v54, "versionIdentifiers")}];
        fetchRequestTemplatesByName = [(NSManagedObjectModel *)v54 fetchRequestTemplatesByName];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v42 = [(NSDictionary *)fetchRequestTemplatesByName countByEnumeratingWithState:&v62 objects:v86 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v63;
          do
          {
            for (ii = 0; ii != v43; ++ii)
            {
              if (*v63 != v44)
              {
                objc_enumerationMutation(fetchRequestTemplatesByName);
              }

              v46 = *(*(&v62 + 1) + 8 * ii);
              v47 = [(NSDictionary *)fetchRequestTemplatesByName objectForKey:v46];
              if ([v21 objectForKey:{objc_msgSend(objc_msgSend(v47, "entity"), "name")}])
              {
                [v17 setFetchRequestTemplate:v47 forName:v46];
              }
            }

            v43 = [(NSDictionary *)fetchRequestTemplatesByName countByEnumeratingWithState:&v62 objects:v86 count:16];
          }

          while (v43);
        }

        v5 = v50;
        v18 = v51;
      }

      else
      {
        v5 = v50;
      }
    }

    else
    {
      v5 = v50;
      v19 = v61;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
  }

  [v5 drain];
  return v17;
}

@end