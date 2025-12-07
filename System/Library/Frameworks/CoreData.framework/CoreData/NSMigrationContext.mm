@interface NSMigrationContext
- (NSMigrationContext)initWithMigrationManager:(id)manager;
- (id)_createAssociationsByDestination:(uint64_t)destination fromSource:(void *)source forEntityMapping:;
- (id)_createAssociationsBySource:(uint64_t)source withDestination:(void *)destination forEntityMapping:;
- (id)associateSourceInstance:(const void *)instance withDestinationInstance:(void *)destinationInstance forEntityMapping:;
- (id)destinationInstancesForEntityMapping:(uint64_t)mapping sourceInstance:;
- (id)setCurrentEntityMapping:(id *)result;
- (id)setCurrentPropertyMapping:(id *)result;
- (id)sourceInstancesForEntityMapping:(uint64_t)mapping destinationInstance:;
- (void)clearAssociationTables;
- (void)dealloc;
@end

@implementation NSMigrationContext

- (NSMigrationContext)initWithMigrationManager:(id)manager
{
  v10.receiver = self;
  v10.super_class = NSMigrationContext;
  v4 = [(NSMigrationContext *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_migrationManager = manager;
    v4->_currentStep = 0;
    v6 = *MEMORY[0x1E695E480];
    v7 = MEMORY[0x1E695E9D8];
    v8 = MEMORY[0x1E695E9E8];
    v4->_bySourceAssociationTable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5->_byDestinationAssociationTable = CFDictionaryCreateMutable(v6, 0, v7, v8);
    v5->_byMappingBySourceAssociationTable = CFDictionaryCreateMutable(v6, 0, v7, v8);
    v5->_byMappingByDestinationAssociationTable = CFDictionaryCreateMutable(v6, 0, v7, v8);
  }

  return v5;
}

- (void)dealloc
{
  self->_migrationManager = 0;
  [(NSMigrationContext *)self clearAssociationTables];

  self->_currentMapping = 0;
  self->_currentPropertyMapping = 0;

  self->_destinationConfigurationForCloudKitValidation = 0;
  v3.receiver = self;
  v3.super_class = NSMigrationContext;
  [(NSMigrationContext *)&v3 dealloc];
}

- (void)clearAssociationTables
{
  if (self)
  {

    *(self + 8) = 0;
    *(self + 16) = 0;

    *(self + 24) = 0;
    *(self + 32) = 0;
    *(self + 56) = 0;
  }
}

- (id)setCurrentEntityMapping:(id *)result
{
  if (result)
  {
    v3 = result;
    if (result[6] != a2)
    {
      [result[5] willChangeValueForKey:@"currentEntityMapping"];

      v3[6] = a2;
      [v3[5] didChangeValueForKey:@"currentEntityMapping"];
    }

    v4 = v3[7] + 1;
    [v3[5] willChangeValueForKey:@"migrationProgress"];
    v3[7] = v4;
    v5 = v3[5];

    return [v5 didChangeValueForKey:@"migrationProgress"];
  }

  return result;
}

- (id)setCurrentPropertyMapping:(id *)result
{
  if (result)
  {
    v3 = result;
    if (result[8] != a2)
    {
      [result[5] willChangeValueForKey:@"currentPropertyMapping"];

      v3[8] = a2;
      v4 = v3[5];

      return [v4 didChangeValueForKey:@"currentPropertyMapping"];
    }
  }

  return result;
}

- (id)_createAssociationsBySource:(uint64_t)source withDestination:(void *)destination forEntityMapping:
{
  if (result)
  {
    v7 = result;
    Mutable = [result[3] objectForKey:{objc_msgSend(destination, "name")}];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      [v7[3] setObject:Mutable forKey:{objc_msgSend(destination, "name")}];
    }

    v9 = [(__CFDictionary *)Mutable objectForKey:a2];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      CFDictionarySetValue(Mutable, a2, v9);
    }

    [v9 addObject:source];
    v10 = [v7[1] objectForKey:a2];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      CFDictionarySetValue(v7[1], a2, v10);
    }

    return [v10 addObject:source];
  }

  return result;
}

- (id)_createAssociationsByDestination:(uint64_t)destination fromSource:(void *)source forEntityMapping:
{
  if (result)
  {
    v7 = result;
    Mutable = [result[4] objectForKey:{objc_msgSend(source, "name")}];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      [v7[4] setObject:Mutable forKey:{objc_msgSend(source, "name")}];
    }

    v9 = [(__CFDictionary *)Mutable objectForKey:a2];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      CFDictionarySetValue(Mutable, a2, v9);
    }

    [v9 addObject:destination];
    v10 = [v7[2] objectForKey:a2];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      CFDictionarySetValue(v7[2], a2, v10);
    }

    return [v10 addObject:destination];
  }

  return result;
}

- (id)associateSourceInstance:(const void *)instance withDestinationInstance:(void *)destinationInstance forEntityMapping:
{
  if (result)
  {
    v7 = result;
    [(NSMigrationContext *)result _createAssociationsBySource:a2 withDestination:instance forEntityMapping:destinationInstance];

    return [(NSMigrationContext *)v7 _createAssociationsByDestination:instance fromSource:a2 forEntityMapping:destinationInstance];
  }

  return result;
}

- (id)destinationInstancesForEntityMapping:(uint64_t)mapping sourceInstance:
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (a2)
    {
      if (!mapping)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v8 = [objc_msgSend(v5[3] objectForKey:{objc_msgSend(a2, "name")), "allValues"}];
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v7 addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
            }

            v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          }

          while (v10);
        }

        goto LABEL_7;
      }

      v6 = [result[3] objectForKey:{objc_msgSend(a2, "name")}];
    }

    else
    {
      v6 = result[1];
    }

    v7 = [objc_msgSend(v6 objectForKey:{mapping), "copy"}];
LABEL_7:
    if (v7)
    {
      return v7;
    }

    else
    {
      return NSArray_EmptyArray;
    }
  }

  return result;
}

- (id)sourceInstancesForEntityMapping:(uint64_t)mapping destinationInstance:
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (a2)
    {
      if (!mapping)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v8 = [objc_msgSend(v5[4] objectForKey:{objc_msgSend(a2, "name")), "allValues"}];
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v7 addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
            }

            v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          }

          while (v10);
        }

        goto LABEL_7;
      }

      v6 = [result[4] objectForKey:{objc_msgSend(a2, "name")}];
    }

    else
    {
      v6 = result[2];
    }

    v7 = [objc_msgSend(v6 objectForKey:{mapping), "copy"}];
LABEL_7:
    if (v7)
    {
      return v7;
    }

    else
    {
      return NSArray_EmptyArray;
    }
  }

  return result;
}

@end