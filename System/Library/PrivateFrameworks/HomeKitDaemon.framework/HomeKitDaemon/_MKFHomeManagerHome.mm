@interface _MKFHomeManagerHome
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFHomeManagerHomeDatabaseID)databaseID;
- (id)hmd_modelsWithChangeType:(unint64_t)type detached:(BOOL)detached error:(id *)error;
@end

@implementation _MKFHomeManagerHome

+ (id)modelIDForParentRelationshipTo:(id)to
{
  toCopy = to;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (MKFHomeManagerHomeDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeManagerHomeDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)hmd_modelsWithChangeType:(unint64_t)type detached:(BOOL)detached error:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = [(HMDBackingStoreModelObject *)[HMDHomeManagerHomeModel alloc] initWithManagedObject:self changeType:type detached:detached error:error];
  if (v6)
  {
    handle = [(_MKFHomeManagerHome *)self handle];
    [(HMDHomeManagerHomeModel *)v6 setHandle:handle];

    v10[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end