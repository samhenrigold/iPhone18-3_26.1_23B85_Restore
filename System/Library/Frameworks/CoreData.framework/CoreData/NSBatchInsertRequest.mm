@interface NSBatchInsertRequest
+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName dictionaryHandler:(void *)handler;
+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName managedObjectHandler:(void *)handler;
+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName objects:(NSArray *)dictionaries;
+ (id)decodeFromXPCArchive:(id)archive withContext:(id)context withPolicy:(id)policy;
- (NSBatchInsertRequest)init;
- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity dictionaryHandler:(void *)handler;
- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity managedObjectHandler:(void *)handler;
- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity objects:(NSArray *)dictionaries;
- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName dictionaryHandler:(void *)handler;
- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName managedObjectHandler:(void *)handler;
- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName objects:(NSArray *)dictionaries;
- (NSEntityDescription)entity;
- (NSString)entityName;
- (id)description;
- (id)encodeForXPC;
- (void)_resolveEntityWithContext:(id)context;
- (void)_resolveEntityWithSQLCore:(uint64_t)core;
- (void)_setSecureOperation:(BOOL)operation;
- (void)dealloc;
- (void)setDictionaryHandler:(void *)dictionaryHandler;
- (void)setManagedObjectHandler:(void *)managedObjectHandler;
@end

@implementation NSBatchInsertRequest

- (id)encodeForXPC
{
  v2 = [[NSBatchInsertRequestEncodingToken alloc] initForRequest:self];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 setDelegate:objc_opt_class()];
  [v3 encodeObject:v2 forKey:@"root"];
  [v3 finishEncoding];
  encodedData = [v3 encodedData];

  return encodedData;
}

+ (id)decodeFromXPCArchive:(id)archive withContext:(id)context withPolicy:(id)policy
{
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:archive error:0];
  [v7 setDelegate:context];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  if (policy)
  {
    v8 = [v8 setByAddingObjectsFromSet:{objc_msgSend(policy, "allowableClassesForClientWithContext:", context)}];
  }

  v9 = [v7 decodeObjectOfClasses:v8 forKey:@"root"];

  result = [v9 objectsToInsert];
  if (result)
  {
    v11 = -[NSBatchInsertRequest initWithEntityName:objects:]([NSBatchInsertRequest alloc], "initWithEntityName:objects:", [v9 entityName], objc_msgSend(v9, "objectsToInsert"));
    -[NSBatchInsertRequest setResultType:](v11, "setResultType:", [v9 resultType]);
    -[NSBatchInsertRequest _setSecureOperation:](v11, "_setSecureOperation:", [v9 secure]);

    return v11;
  }

  return result;
}

+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName objects:(NSArray *)dictionaries
{
  v4 = [objc_alloc(objc_opt_class()) initWithEntityName:entityName objects:dictionaries];

  return v4;
}

+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName dictionaryHandler:(void *)handler
{
  v4 = [objc_alloc(objc_opt_class()) initWithEntityName:entityName dictionaryHandler:handler];

  return v4;
}

+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName managedObjectHandler:(void *)handler
{
  v4 = [objc_alloc(objc_opt_class()) initWithEntityName:entityName managedObjectHandler:handler];

  return v4;
}

- (NSBatchInsertRequest)init
{
  if (dword_1ED4BEEC8 == 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-init results in undefined behavior for NSBatchInsertRequest" userInfo:0]);
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: -init results in undefined behavior for NSBatchInsertRequest\n", buf, 2u);
  }

  v3 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: -init results in undefined behavior for NSBatchInsertRequest", v5, 2u);
  }

  return 0;
}

- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName objects:(NSArray *)dictionaries
{
  v8.receiver = self;
  v8.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v8 init];
  if (v6)
  {
    if ([(NSArray *)dictionaries count])
    {
      v6->_objectsToInsert = [(NSArray *)dictionaries copy];
      v6->_entity = [(NSString *)entityName copy];
      v6->_flags = (*&v6->_flags & 0xFFFFFFF8 | 4);
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity objects:(NSArray *)dictionaries
{
  v8.receiver = self;
  v8.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v8 init];
  if (v6)
  {
    if ([(NSArray *)dictionaries count])
    {
      v6->_objectsToInsert = [(NSArray *)dictionaries copy];
      v6->_entity = entity;
      *&v6->_flags &= 0xFFFFFFFC;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity dictionaryHandler:(void *)handler
{
  v9.receiver = self;
  v9.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (handler)
    {
      v6->_insertDictionaryHandler = _Block_copy(handler);
      v7->_entity = entity;
      *&v7->_flags &= 0xFFFFFFFC;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity managedObjectHandler:(void *)handler
{
  v9.receiver = self;
  v9.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (handler)
    {
      v6->_insertManagedObjectHandler = _Block_copy(handler);
      v7->_entity = entity;
      *&v7->_flags &= 0xFFFFFFFC;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName dictionaryHandler:(void *)handler
{
  v9.receiver = self;
  v9.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (handler)
    {
      v6->_insertDictionaryHandler = _Block_copy(handler);
      v7->_entity = entityName;
      v7->_flags = (*&v7->_flags & 0xFFFFFFF8 | 4);
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName managedObjectHandler:(void *)handler
{
  v9.receiver = self;
  v9.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (handler)
    {
      v6->_insertManagedObjectHandler = _Block_copy(handler);
      v7->_entity = entityName;
      v7->_flags = (*&v7->_flags & 0xFFFFFFF8 | 4);
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  self->_entity = 0;

  self->_objectsToInsert = 0;
  insertDictionaryHandler = self->_insertDictionaryHandler;
  if (insertDictionaryHandler)
  {
    _Block_release(insertDictionaryHandler);
    self->_insertDictionaryHandler = 0;
  }

  insertManagedObjectHandler = self->_insertManagedObjectHandler;
  if (insertManagedObjectHandler)
  {
    _Block_release(insertManagedObjectHandler);
    self->_insertManagedObjectHandler = 0;
  }

  v5.receiver = self;
  v5.super_class = NSBatchInsertRequest;
  [(NSPersistentStoreRequest *)&v5 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  entityName = [(NSBatchInsertRequest *)self entityName];
  resultType = [(NSBatchInsertRequest *)self resultType];
  objc_opt_self();
  if (resultType >= (NSBatchInsertRequestResultTypeCount|NSBatchInsertRequestResultTypeObjectIDs))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{resultType), 0}];
    objc_exception_throw(v11);
  }

  v7 = off_1E6EC2A20[resultType];
  if (self->_objectsToInsert)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSArray *)[(NSBatchInsertRequest *)self objectsToInsert] count]);
  }

  else
  {
    v8 = @"handler provided";
  }

  v9 = objc_msgSend_stringWithFormat_(v4, entityName, v7, v8);
  objc_autoreleasePoolPop(v3);

  return v9;
}

- (NSString)entityName
{
  result = self->_entity;
  if ((*&self->_flags & 4) == 0)
  {
    return [(NSString *)result name];
  }

  return result;
}

- (NSEntityDescription)entity
{
  if ((*&self->_flags & 4) != 0)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696A778] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{a2, @"This batch insert request (%p) was created with a string name (%@), and cannot respond to -entity until used by an NSManagedObjectContext", self, self->_entity, 0), 0}];
    objc_exception_throw(v3);
  }

  return self->_entity;
}

- (void)_setSecureOperation:(BOOL)operation
{
  if (operation)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFF7 | v3);
}

- (void)_resolveEntityWithContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 4) != 0)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = __Block_byref_object_copy__18;
    v24 = __Block_byref_object_dispose__18;
    v5 = [objc_msgSend(context "persistentStoreCoordinator")];
    if (v5)
    {
      v5 = [*(v5 + 32) objectForKey:self->_entity];
    }

    v25 = v5;
    if (!v21[5])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [objc_msgSend(context "persistentStoreCoordinator")];
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v7)
      {
        v8 = *v17;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v6);
            }

            ancillaryModels = [*(*(&v16 + 1) + 8 * i) ancillaryModels];
            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = __50__NSBatchInsertRequest__resolveEntityWithContext___block_invoke;
            v15[3] = &unk_1E6EC2A00;
            v15[4] = self;
            v15[5] = &v20;
            [ancillaryModels enumerateKeysAndObjectsUsingBlock:v15];
          }

          v7 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
        }

        while (v7);
      }
    }

    v11 = v21[5];
    if (!v11)
    {
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{self->_entity), 0}];
      objc_exception_throw(v14);
    }

    v12 = v11;
    entity = self->_entity;
    self->_entity = v21[5];
    *&self->_flags &= ~4u;

    _Block_object_dispose(&v20, 8);
  }
}

void *__50__NSBatchInsertRequest__resolveEntityWithContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    result = [*(a3 + 32) objectForKey:*(*(a1 + 32) + 16)];
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }

  return result;
}

- (void)_resolveEntityWithSQLCore:(uint64_t)core
{
  if (core && (*(core + 48) & 4) != 0)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = __Block_byref_object_copy__18;
    v15 = __Block_byref_object_dispose__18;
    v4 = [objc_msgSend(a2 "persistentStoreCoordinator")];
    if (v4)
    {
      v4 = [*(v4 + 32) objectForKey:*(core + 16)];
    }

    v16 = v4;
    v5 = v12[5];
    if (!v5)
    {
      ancillaryModels = [a2 ancillaryModels];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __50__NSBatchInsertRequest__resolveEntityWithSQLCore___block_invoke;
      v10[3] = &unk_1E6EC2A00;
      v10[4] = core;
      v10[5] = &v11;
      [ancillaryModels enumerateKeysAndObjectsUsingBlock:v10];
      v5 = v12[5];
      if (!v5)
      {
        v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{*(core + 16)), 0}];
        objc_exception_throw(v9);
      }
    }

    v7 = v5;
    v8 = *(core + 16);
    *(core + 16) = v12[5];
    *(core + 48) &= ~4u;

    _Block_object_dispose(&v11, 8);
  }
}

void *__50__NSBatchInsertRequest__resolveEntityWithSQLCore___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    result = [*(a3 + 32) objectForKey:*(*(a1 + 32) + 16)];
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }

  return result;
}

- (void)setDictionaryHandler:(void *)dictionaryHandler
{
  insertDictionaryHandler = self->_insertDictionaryHandler;
  if (insertDictionaryHandler)
  {
    _Block_release(insertDictionaryHandler);
    self->_insertDictionaryHandler = 0;
  }

  self->_insertDictionaryHandler = _Block_copy(dictionaryHandler);
}

- (void)setManagedObjectHandler:(void *)managedObjectHandler
{
  insertManagedObjectHandler = self->_insertManagedObjectHandler;
  if (insertManagedObjectHandler)
  {
    _Block_release(insertManagedObjectHandler);
    self->_insertManagedObjectHandler = 0;
  }

  self->_insertManagedObjectHandler = _Block_copy(managedObjectHandler);
}

@end