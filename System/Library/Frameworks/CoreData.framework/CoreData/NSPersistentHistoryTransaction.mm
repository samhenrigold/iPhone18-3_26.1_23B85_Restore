@interface NSPersistentHistoryTransaction
+ (NSEntityDescription)entityDescription;
+ (NSEntityDescription)entityDescriptionWithContext:(NSManagedObjectContext *)context;
+ (NSFetchRequest)fetchRequest;
- (BOOL)isEqual:(id)equal;
- (NSArray)changes;
- (NSDate)timestamp;
- (NSNotification)objectIDNotification;
- (NSPersistentHistoryToken)token;
- (NSString)author;
- (NSString)bundleID;
- (NSString)contextName;
- (NSString)processID;
- (NSString)storeID;
- (id)description;
- (id)initialQueryGenerationToken;
- (id)postQueryGenerationToken;
- (int64_t)transactionNumber;
@end

@implementation NSPersistentHistoryTransaction

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

  return [NSPersistentHistoryTransaction entityDescriptionWithContext:v2];
}

+ (NSFetchRequest)fetchRequest
{
  v2 = +[NSPersistentHistoryTransaction entityDescription];
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

+ (NSEntityDescription)entityDescriptionWithContext:(NSManagedObjectContext *)context
{
  if (!context)
  {
    return 0;
  }

  persistentStoreCoordinator = [(NSManagedObjectContext *)context persistentStoreCoordinator];
  v4 = persistentStoreCoordinator ? persistentStoreCoordinator->_modelMap : 0;
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], +[_PFPersistentHistoryFetchModel ancillaryModelNamespace], @"Transaction");
  if (!v4)
  {
    return 0;
  }

  v6 = v5;
  entitiesByPath = v4->_entitiesByPath;

  return [(NSDictionary *)entitiesByPath objectForKey:v6];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  storeID = [(NSPersistentHistoryTransaction *)self storeID];
  result = 0;
  if (storeID == [equal storeID])
  {
    transactionNumber = [(NSPersistentHistoryTransaction *)self transactionNumber];
    if (transactionNumber == [equal transactionNumber])
    {
      return 1;
    }
  }

  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSPersistentHistoryTransaction *)self transactionNumber], [(NSPersistentHistoryTransaction *)self timestamp], [(NSPersistentHistoryTransaction *)self bundleID], [(NSPersistentHistoryTransaction *)self processID], [(NSPersistentHistoryTransaction *)self contextName], [(NSPersistentHistoryTransaction *)self author], [(NSPersistentHistoryTransaction *)self changes]);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (NSDate)timestamp
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  v10 = MEMORY[0x1E695DF00];

  return [v10 distantFuture];
}

- (NSArray)changes
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (NSPersistentHistoryToken)token
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (id)initialQueryGenerationToken
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (id)postQueryGenerationToken
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (int64_t)transactionNumber
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (NSString)storeID
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return &stru_1EF3F1768;
}

- (NSString)bundleID
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return &stru_1EF3F1768;
}

- (NSString)processID
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return &stru_1EF3F1768;
}

- (NSString)contextName
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (NSString)author
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (NSNotification)objectIDNotification
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  v10 = MEMORY[0x1E696AD80];

  return [v10 notificationWithName:&stru_1EF3F1768 object:0];
}

@end