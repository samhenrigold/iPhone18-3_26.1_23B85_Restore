@interface NSPersistentStoreMap
- (NSPersistentStoreMap)initWithStore:(id)store;
- (id)_updatedMetadataWithSeed:(int)seed includeVersioning:;
- (id)dataForKey:(id)key;
- (id)handleFetchRequest:(id)request;
- (id)retainedObjectIDsForRelationship:(id)relationship forObjectID:(id)d;
- (id)setMetadata:(id *)result;
- (unint64_t)nextPK64;
- (void)_setMetadata:(void *)result;
- (void)addObject:(id)object objectIDMap:(id)map;
- (void)databaseUUID;
- (void)dealloc;
- (void)removeObject:(id)object objectIDMap:(id)map;
- (void)updateObject:(id)object objectIDMap:(id)map;
@end

@implementation NSPersistentStoreMap

- (NSPersistentStoreMap)initWithStore:(id)store
{
  v10.receiver = self;
  v10.super_class = NSPersistentStoreMap;
  v4 = [(NSPersistentStoreMap *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_store = store;
    v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v7 = +[NSStoreMappingGenerator defaultMappingGenerator];
    if ([(NSPersistentStoreMap *)v5 configurationName])
    {
      configurationName = [(NSPersistentStoreMap *)v5 configurationName];
    }

    else
    {
      configurationName = @"PF_DEFAULT_CONFIGURATION_NAME";
    }

    v5->_mappings = -[NSStoreMappingGenerator mappingsDictForConfigurationWithName:inModel:](v7, configurationName, [objc_msgSend(store "_persistentStoreCoordinator")]);
    [v6 drain];
  }

  return v5;
}

- (void)dealloc
{
  self->_store = 0;

  self->_databaseUUID = 0;
  self->_storeMetadata = 0;

  self->_mappings = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentStoreMap;
  [(NSPersistentStoreMap *)&v3 dealloc];
}

- (id)dataForKey:(id)key
{
  v5 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v5, v6, v7, v8, v9, v10);
  return 0;
}

- (void)addObject:(id)object objectIDMap:(id)map
{
  v6 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v6, v7, v8, v9, v10, v11);
}

- (void)removeObject:(id)object objectIDMap:(id)map
{
  v6 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v6, v7, v8, v9, v10, v11);
}

- (void)updateObject:(id)object objectIDMap:(id)map
{
  v6 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v6, v7, v8, v9, v10, v11);
}

- (id)handleFetchRequest:(id)request
{
  v5 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v5, v6, v7, v8, v9, v10);
  return 0;
}

- (id)retainedObjectIDsForRelationship:(id)relationship forObjectID:(id)d
{
  v6 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v6, v7, v8, v9, v10, v11);
  return 0;
}

- (unint64_t)nextPK64
{
  objc_sync_enter(self);
  v3 = self->_nextPK64 + 1;
  self->_nextPK64 = v3;
  objc_sync_exit(self);
  return v3;
}

- (void)databaseUUID
{
  if (result)
  {
    v1 = result;
    result = result[2];
    if (!result)
    {
      result = [(__CFString *)+[_PFRoutines _getUUID]copy];
      v1[2] = result;
    }
  }

  return result;
}

- (id)_updatedMetadataWithSeed:(int)seed includeVersioning:
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [a2 mutableCopy];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  }

  type = [v5[1] type];
  if (!type)
  {
    type = [a2 objectForKey:@"NSStoreType"];
  }

  [v6 setObject:type forKey:@"NSStoreType"];
  v8 = [a2 objectForKey:@"NSStoreUUID"];
  if (v8)
  {
    goto LABEL_7;
  }

  v9 = v5[2];
  if (!v9)
  {
    v8 = [(__CFString *)+[_PFRoutines _getUUID]copy];
    v5[2] = v8;
    if (!v8)
    {
      v8 = +[_PFRoutines _getUUID];
    }

LABEL_7:
    v9 = v8;
  }

  [v6 setObject:v9 forKey:@"NSStoreUUID"];
  if (seed)
  {
    PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
    [v6 setObject:PFBundleVersion forKey:0x1EF3FD408];
    v11 = [v6 objectForKey:0x1EF3FD428];
    if (!v11 || [PFBundleVersion compare:v11] == 1)
    {
      [v6 setObject:PFBundleVersion forKey:0x1EF3FD428];
    }

    _persistentStoreCoordinator = [v5[1] _persistentStoreCoordinator];
    if (_persistentStoreCoordinator)
    {
      managedObjectModel = [_persistentStoreCoordinator managedObjectModel];
      entityVersionHashesByName = [managedObjectModel entityVersionHashesByName];
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 3), 0x1EF3FD3E8}];
      [v6 setObject:entityVersionHashesByName forKey:@"NSStoreModelVersionHashes"];
      if (managedObjectModel)
      {
        v15 = [objc_msgSend(managedObjectModel "versionIdentifiers")];
      }

      else
      {
        v15 = 0;
      }

      [v6 setObject:v15 forKey:@"NSStoreModelVersionIdentifiers"];
      [v6 setObject:-[NSManagedObjectModel _entityVersionHashesDigestFrom:](managedObjectModel forKey:{entityVersionHashesByName), 0x1EF3FCE28}];
      versionChecksum = [managedObjectModel versionChecksum];
      v17 = v6;
    }

    else
    {
      if (![v6 objectForKey:0x1EF3FD3E8])
      {
        [v6 setObject:objc_msgSend(v5[3] forKey:{"objectForKey:", 0x1EF3FD3E8), 0x1EF3FD3E8}];
      }

      if (![v6 objectForKey:@"NSStoreModelVersionHashes"])
      {
        [v6 setObject:objc_msgSend(v5[3] forKey:{"objectForKey:", @"NSStoreModelVersionHashes", @"NSStoreModelVersionHashes"}];
      }

      if (![v6 objectForKey:0x1EF3FCE28])
      {
        [v6 setObject:objc_msgSend(v5[3] forKey:{"objectForKey:", 0x1EF3FCE28), 0x1EF3FCE28}];
      }

      if (![v6 objectForKey:@"NSStoreModelVersionIdentifiers"])
      {
        [v6 setObject:objc_msgSend(v5[3] forKey:{"objectForKey:", @"NSStoreModelVersionIdentifiers", @"NSStoreModelVersionIdentifiers"}];
      }

      if ([v6 objectForKey:@"NSStoreModelVersionChecksumKey"])
      {
        goto LABEL_27;
      }

      versionChecksum = [v5[3] objectForKey:@"NSStoreModelVersionChecksumKey"];
      v17 = v6;
    }

    [v17 setObject:versionChecksum forKey:@"NSStoreModelVersionChecksumKey"];
  }

LABEL_27:

  return v6;
}

- (void)_setMetadata:(void *)result
{
  if (result)
  {
    v3 = result;
    result = [a2 isEqual:result[3]];
    if ((result & 1) == 0)
    {
      v4 = [a2 objectForKey:@"NSStoreUUID"];
      if (v4)
      {
        if (v3[2] != v4)
        {
          v5 = [v4 copy];

          v3[2] = v5;
        }
      }

      result = a2;
      v3[3] = result;
    }
  }

  return result;
}

- (id)setMetadata:(id *)result
{
  if (result)
  {
    v2 = result;
    v3 = [(NSPersistentStoreMap *)result _updatedMetadataWithSeed:a2 includeVersioning:1];

    return [(NSPersistentStoreMap *)v2 _setMetadata:v3];
  }

  return result;
}

@end