@interface NSPersistentHistoryChange
+ (NSEntityDescription)entityDescription;
+ (NSEntityDescription)entityDescriptionWithContext:(NSManagedObjectContext *)context;
+ (NSFetchRequest)fetchRequest;
+ (id)shortStringForChangeType:(int64_t)type;
+ (id)stringForChangeType:(int64_t)type;
- (NSDictionary)tombstone;
- (NSManagedObjectID)changedObjectID;
- (NSPersistentHistoryChangeType)changeType;
- (NSPersistentHistoryTransaction)transaction;
- (NSSet)updatedProperties;
- (id)description;
- (int64_t)changeID;
@end

@implementation NSPersistentHistoryChange

+ (NSFetchRequest)fetchRequest
{
  v2 = +[NSPersistentHistoryChange entityDescription];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = objc_alloc_init(NSFetchRequest);
  [(NSFetchRequest *)v4 setEntity:v3];
  v5 = v4;
  return v4;
}

+ (NSEntityDescription)entityDescription
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  if (!v2)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [NSPersistentHistoryChange entityDescriptionWithContext:v2];
}

+ (NSEntityDescription)entityDescriptionWithContext:(NSManagedObjectContext *)context
{
  if (!context)
  {
    return 0;
  }

  persistentStoreCoordinator = [(NSManagedObjectContext *)context persistentStoreCoordinator];
  v4 = persistentStoreCoordinator ? persistentStoreCoordinator->_modelMap : 0;
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], +[_PFPersistentHistoryFetchModel ancillaryModelNamespace], @"Change");
  if (!v4)
  {
    return 0;
  }

  v6 = v5;
  entitiesByPath = v4->_entitiesByPath;

  return [(NSDictionary *)entitiesByPath objectForKey:v6];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSPersistentHistoryChange *)self changeID], [(NSPersistentHistoryChange *)self changedObjectID], [NSPersistentHistoryChange shortStringForChangeType:[(NSPersistentHistoryChange *)self changeType]], [(NSPersistentHistoryTransaction *)[(NSPersistentHistoryChange *)self transaction] transactionNumber], [(NSPersistentHistoryChange *)self updatedProperties], [(NSPersistentHistoryChange *)self tombstone]);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (NSDictionary)tombstone
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return MEMORY[0x1E695E0F8];
}

- (NSManagedObjectID)changedObjectID
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (NSPersistentHistoryChangeType)changeType
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return -1;
}

- (NSPersistentHistoryTransaction)transaction
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (int64_t)changeID
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return -1;
}

- (NSSet)updatedProperties
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

+ (id)shortStringForChangeType:(int64_t)type
{
  v3 = [self stringForChangeType:type];

  return [v3 stringByReplacingOccurrencesOfString:@"NSPersistentHistoryChangeType" withString:&stru_1EF3F1768];
}

+ (id)stringForChangeType:(int64_t)type
{
  if (type >= 3)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{a2, @"'%ld' is an unknown NSPersistentHistoryChangeType value", type), 0}];
    objc_exception_throw(v4);
  }

  return off_1E6EC1FC0[type];
}

@end