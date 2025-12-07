@interface NSStoreMappingGenerator
+ (NSStoreMappingGenerator)defaultMappingGenerator;
- (void)mappingsDictForConfigurationWithName:(void *)name inModel:;
@end

@implementation NSStoreMappingGenerator

+ (NSStoreMappingGenerator)defaultMappingGenerator
{
  objc_opt_self();
  result = _NSDefaultMappingGenerator;
  if (!_NSDefaultMappingGenerator)
  {
    result = objc_alloc_init(NSStoreMappingGenerator);
    _NSDefaultMappingGenerator = result;
  }

  return result;
}

- (void)mappingsDictForConfigurationWithName:(void *)name inModel:
{
  v61 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  array = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [name entitiesForConfiguration:a2];
  v36 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v36)
  {
    v35 = *v46;
    p_superclass = PFCloudKitStoreComparisonCache.superclass;
    do
    {
      v6 = 0;
      do
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v6;
        v7 = *(*(&v45 + 1) + 8 * v6);
        v38 = [[NSEntityStoreMapping alloc] initWithEntity:v7];
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v40 = v7;
        v9 = [objc_msgSend(v7 "attributesByName")];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v54;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v54 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v53 + 1) + 8 * i);
              v15 = [objc_alloc((p_superclass + 429)) initWithProperty:v14];
              [v15 setExternalType:{objc_msgSend(v14, "attributeType")}];
              [dictionary2 setObject:v15 forKey:{objc_msgSend(v14, "name")}];
            }

            v11 = [v9 countByEnumeratingWithState:&v53 objects:v60 count:16];
          }

          while (v11);
        }

        v16 = [objc_msgSend(v40 "relationshipsByName")];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v50;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v50 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v49 + 1) + 8 * j);
              v22 = [(NSPropertyStoreMapping *)[NSRelationshipStoreMapping alloc] initWithProperty:v21];
              -[NSRelationshipStoreMapping setDestinationEntityExternalName:](v22, [objc_msgSend(objc_msgSend(v21 "destinationEntity")]);
              if ([v21 isToMany])
              {
                entity = [v21 entity];
              }

              else
              {
                entity = [v21 destinationEntity];
              }

              v24 = [objc_msgSend(objc_msgSend(entity "name")];
              v25 = [MEMORY[0x1E695DEC8] arrayWithObject:{+[NSJoin joinWithSourceAttributeName:destinationAttributeName:](NSJoin, v24, v24)}];
              [(NSRelationshipStoreMapping *)v22 setJoins:v25];
              v26 = [objc_msgSend_valueForKey_(v25) mutableCopy];
              [v26 removeObject:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v21, "entity"), "name"), "stringByAppendingString:", @"_id", "lowercaseString")}];
              [(NSRelationshipStoreMapping *)v22 setForeignKeys:v26];

              if (v22)
              {
                v22->_joinSemantic = 2;
              }

              [dictionary2 setObject:v22 forKey:{objc_msgSend(v21, "name")}];
            }

            v18 = [v16 countByEnumeratingWithState:&v49 objects:v59 count:16];
          }

          while (v18);
        }

        [(NSEntityStoreMapping *)v38 setPropertyMappings:dictionary2];
        -[NSEntityStoreMapping setPrimaryKeys:](v38, [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(objc_msgSend(objc_msgSend(v40, "name"), "stringByAppendingString:", @"_id", "lowercaseString")}]);
        [array addObject:v38];
        v6 = v39 + 1;
        p_superclass = (PFCloudKitStoreComparisonCache + 8);
      }

      while (v39 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v36);
  }

  v27 = [array countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (!v27)
  {
    return dictionary;
  }

  v28 = v27;
  v29 = *v42;
  v30 = dictionary;
  do
  {
    for (k = 0; k != v28; ++k)
    {
      if (*v42 != v29)
      {
        objc_enumerationMutation(array);
      }

      [dictionary setObject:*(*(&v41 + 1) + 8 * k) forKey:{objc_msgSend(objc_msgSend(*(*(&v41 + 1) + 8 * k), "entity"), "name")}];
    }

    v28 = [array countByEnumeratingWithState:&v41 objects:v57 count:16];
  }

  while (v28);
  return v30;
}

@end