@interface NSSaveChangesRequest
- (NSSaveChangesRequest)init;
- (NSSaveChangesRequest)initWithInsertedObjects:(NSSet *)insertedObjects updatedObjects:(NSSet *)updatedObjects deletedObjects:(NSSet *)deletedObjects lockedObjects:(NSSet *)lockedObjects;
- (id)description;
- (uint64_t)hasChanges;
- (void)_addChangedObjectIDsNotification:(void *)result;
- (void)_setSecureOperation:(BOOL)operation;
- (void)dealloc;
- (void)setDeletedObjects:(void *)result;
@end

@implementation NSSaveChangesRequest

- (void)dealloc
{
  self->_insertedObjects = 0;

  self->_updatedObjects = 0;
  self->_deletedObjects = 0;

  self->_optimisticallyLockedObjects = 0;
  self->_mutatedObjectIDsNotifications = 0;
  v3.receiver = self;
  v3.super_class = NSSaveChangesRequest;
  [(NSPersistentStoreRequest *)&v3 dealloc];
}

- (uint64_t)hasChanges
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 16) count];
    v3 = [*(v1 + 24) count] + v2;
    return v3 + [*(v1 + 32) count] != 0;
  }

  return result;
}

- (NSSaveChangesRequest)initWithInsertedObjects:(NSSet *)insertedObjects updatedObjects:(NSSet *)updatedObjects deletedObjects:(NSSet *)deletedObjects lockedObjects:(NSSet *)lockedObjects
{
  v12.receiver = self;
  v12.super_class = NSSaveChangesRequest;
  v10 = [(NSSaveChangesRequest *)&v12 init];
  if (v10)
  {
    v10->_insertedObjects = insertedObjects;
    v10->_updatedObjects = updatedObjects;
    v10->_deletedObjects = deletedObjects;
    v10->_optimisticallyLockedObjects = lockedObjects;
    v10->_flags = 0;
  }

  return v10;
}

- (NSSaveChangesRequest)init
{
  v3.receiver = self;
  v3.super_class = NSSaveChangesRequest;
  result = [(NSSaveChangesRequest *)&v3 init];
  if (result)
  {
    result->_insertedObjects = 0;
    result->_updatedObjects = 0;
    result->_deletedObjects = 0;
    result->_optimisticallyLockedObjects = 0;
    result->_flags = 0;
  }

  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  allObjects = [objc_msgSend_valueForKey_(self->_insertedObjects) allObjects];
  allObjects2 = [objc_msgSend_valueForKey_(self->_updatedObjects) allObjects];
  allObjects3 = [objc_msgSend_valueForKey_(self->_deletedObjects) allObjects];
  allObjects4 = [objc_msgSend_valueForKey_(self->_optimisticallyLockedObjects) allObjects];
  v8 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = NSSaveChangesRequest;
  v9 = [(NSSaveChangesRequest *)&v14 description];
  if (![(__CFString *)allObjects count])
  {
    allObjects = &stru_1EF3F1768;
  }

  if (![(__CFString *)allObjects2 count])
  {
    allObjects2 = &stru_1EF3F1768;
  }

  if (![(__CFString *)allObjects3 count])
  {
    allObjects3 = &stru_1EF3F1768;
  }

  if ([allObjects4 count])
  {
    v10 = objc_msgSend_stringWithFormat_(v8, v9, allObjects, allObjects2, allObjects3, allObjects4);
  }

  else
  {
    v10 = objc_msgSend_stringWithFormat_(v8, v9, allObjects, allObjects2, allObjects3, &stru_1EF3F1768);
  }

  v11 = v10;
  v12 = v10;
  objc_autoreleasePoolPop(v3);
  return v11;
}

- (void)setDeletedObjects:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[4];
    if (v4 != a2)
    {

      result = [a2 count];
      if (result)
      {
        result = a2;
      }

      v3[4] = result;
    }
  }

  return result;
}

- (void)_setSecureOperation:(BOOL)operation
{
  v3 = self->_flags | 0x200;
  if (!operation)
  {
    v3 = self->_flags & 0xFFFFFEFF;
  }

  self->_flags = v3;
}

- (void)_addChangedObjectIDsNotification:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[7];
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v3[7] = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

@end