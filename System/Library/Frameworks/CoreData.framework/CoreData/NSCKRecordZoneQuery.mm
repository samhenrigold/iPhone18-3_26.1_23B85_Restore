@interface NSCKRecordZoneQuery
+ (NSManagedObject)zoneQueryForRecordType:(void *)type inZone:(uint64_t)zone inStore:(void *)store managedObjectContext:(uint64_t)context error:;
+ (NSString)entityPath;
- (void)createQueryForUpdatingRecords;
@end

@implementation NSCKRecordZoneQuery

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v3, v5);
}

- (void)createQueryForUpdatingRecords
{
  selfCopy = self;
  v11[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    predicate = [selfCopy predicate];
    mostRecentRecordModificationDate = [selfCopy mostRecentRecordModificationDate];
    if (predicate)
    {
      if (mostRecentRecordModificationDate)
      {
        v5 = objc_alloc(MEMORY[0x1E696AB28]);
        v11[0] = [MEMORY[0x1E696AE18] predicateWithFormat:@"modificationDate > %@", objc_msgSend(selfCopy, "mostRecentRecordModificationDate")];
        v11[1] = predicate;
        v6 = [v5 initWithType:1 subpredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 2)}];
      }

      else
      {
        v6 = predicate;
      }
    }

    else
    {
      if (mostRecentRecordModificationDate)
      {
        v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"modificationDate > %@", objc_msgSend(selfCopy, "mostRecentRecordModificationDate")];
      }

      else
      {
        v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
      }

      v6 = v7;
    }

    v8 = v6;

    objc_autoreleasePoolPop(v2);
    selfCopy = [objc_alloc(getCloudKitCKQueryClass()) initWithRecordType:objc_msgSend(selfCopy predicate:{"recordType"), v8}];
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:1];
    [selfCopy setSortDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v10, 1)}];
  }

  return selfCopy;
}

+ (NSManagedObject)zoneQueryForRecordType:(void *)type inZone:(uint64_t)zone inStore:(void *)store managedObjectContext:(uint64_t)context error:
{
  v15[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v11 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneQuery entityPath]);
  -[NSFetchRequest setPredicate:](v11, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordType = %@ AND recordZone = %@", a2, objc_msgSend(type, "objectID")]);
  v15[0] = zone;
  -[NSFetchRequest setAffectedStores:](v11, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1]);
  v12 = [store executeFetchRequest:v11 error:context];
  if (!v12)
  {
    return 0;
  }

  lastObject = [v12 lastObject];
  if (!lastObject)
  {
    lastObject = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordZoneQuery entityPath], store);
    [(NSManagedObject *)lastObject setRecordType:a2];
    [(NSManagedObject *)lastObject setRecordZone:type];
  }

  return lastObject;
}

@end