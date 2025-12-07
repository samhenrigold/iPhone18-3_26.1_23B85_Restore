@interface _MKFHomeManager
+ (NSUUID)defaultModelID;
+ (id)fetchWithContext:(id)context error:(id *)error;
- (BOOL)validateModelID:(id *)d error:(id *)error;
- (MKFHomeManagerDatabaseID)databaseID;
- (NSArray)accounts;
- (NSArray)homes;
- (NSArray)incomingInvitations;
- (id)hmd_modelsWithChangeType:(unint64_t)type detached:(BOOL)detached error:(id *)error;
- (void)awakeFromInsert;
@end

@implementation _MKFHomeManager

- (NSArray)incomingInvitations
{
  v2 = [(_MKFHomeManager *)self valueForKey:@"incomingInvitations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)homes
{
  v2 = [(_MKFHomeManager *)self valueForKey:@"homes_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)accounts
{
  v2 = [(_MKFHomeManager *)self valueForKey:@"accounts_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHomeManagerDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeManagerDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

+ (id)fetchWithContext:(id)context error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  v8 = MEMORY[0x277CCAC30];
  v9 = +[_MKFHomeManager defaultModelID];
  v10 = [v8 predicateWithFormat:@"%K == %@", @"modelID", v9];
  [fetchRequest setPredicate:v10];

  v20 = 0;
  v11 = [contextCopy executeFetchRequest:fetchRequest error:&v20];
  v12 = v20;
  if (v11)
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home managers: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      v18 = v12;
      firstObject = 0;
      *error = v12;
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

+ (NSUUID)defaultModelID
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v3 = [v2 initWithUUIDString:*MEMORY[0x277CD23C8]];

  return v3;
}

- (BOOL)validateModelID:(id *)d error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = _MKFHomeManager;
  LODWORD(v7) = [_MKFModel validateModelID:sel_validateModelID_error_ error:?];
  if (v7)
  {
    defaultModelID = [objc_opt_class() defaultModelID];
    v9 = [defaultModelID isEqual:*d];

    if (v9)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = *d;
        *buf = 138543874;
        v19 = v13;
        v20 = 2112;
        v21 = @"modelID";
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [objc_opt_class() hmd_errorForInvalidValue:*d key:@"modelID"];
      v7 = v15;
      LOBYTE(v7) = 0;
      *error = v15;
    }
  }

  return v7;
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = _MKFHomeManager;
  [(_MKFHomeManager *)&v4 awakeFromInsert];
  defaultModelID = [objc_opt_class() defaultModelID];
  [(_MKFHomeManager *)self setPrimitiveModelID:defaultModelID];
}

- (id)hmd_modelsWithChangeType:(unint64_t)type detached:(BOOL)detached error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [(HMDBackingStoreModelObject *)[HMDHomeManagerModel alloc] initWithManagedObject:self changeType:type detached:detached error:error];
  if (v6)
  {
    v7 = [HMDApplicationDataModel cd_modelWithMKFHomeManager:self];
    v8 = v7;
    if (v7)
    {
      v15 = v6;
      v16 = v7;
      v9 = MEMORY[0x277CBEA60];
      v10 = &v15;
      v11 = 2;
    }

    else
    {
      v14 = v6;
      v9 = MEMORY[0x277CBEA60];
      v10 = &v14;
      v11 = 1;
    }

    v12 = [v9 arrayWithObjects:v10 count:{v11, v14, v15, v16, v17}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end