@interface _PFPersistentHistoryFetchModel
+ (id)newFetchHistoryModelForCoordinator:(uint64_t)coordinator andOptions:;
+ (void)_invalidateStaticCaches;
+ (void)initialize;
@end

@implementation _PFPersistentHistoryFetchModel

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {

    objc_opt_self();
  }
}

+ (void)_invalidateStaticCaches
{
  v2 = historyFetchModel;
  if (historyFetchModel)
  {
    v3 = historyFetchModel;
    atomic_compare_exchange_strong(&historyFetchModel, &v3, 0);
    if (v3 == v2)
    {
    }
  }
}

+ (id)newFetchHistoryModelForCoordinator:(uint64_t)coordinator andOptions:
{
  v21[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!historyFetchModel)
  {
    v1 = objc_autoreleasePoolPush();
    v2 = [[NSEntityDescription alloc] _initWithName:@"Transaction"];
    v3 = [[NSAttributeDescription alloc] _initWithName:@"author" type:700];
    [v2 _addProperty:v3];

    v4 = [[NSAttributeDescription alloc] _initWithName:@"contextName" type:700];
    [v2 _addProperty:v4];

    v5 = [[NSAttributeDescription alloc] _initWithName:@"bundleID" type:700];
    [v2 _addProperty:v5];

    v6 = [[NSAttributeDescription alloc] _initWithName:@"processID" type:700];
    [v2 _addProperty:v6];

    v7 = [[NSAttributeDescription alloc] _initWithName:@"timestamp" type:900];
    [v2 _addProperty:v7];

    v8 = [[NSAttributeDescription alloc] _initWithName:@"transactionNumber" type:300];
    [v2 _addProperty:v8];

    v9 = [[NSAttributeDescription alloc] _initWithName:@"token" type:300];
    [v2 _addProperty:v9];

    v10 = [[NSEntityDescription alloc] _initWithName:@"Change"];
    v11 = [[NSAttributeDescription alloc] _initWithName:@"changeID" type:300];
    [v10 _addProperty:v11];

    v12 = [[NSAttributeDescription alloc] _initWithName:@"changeType" type:300];
    [v10 _addProperty:v12];

    v13 = [[NSAttributeDescription alloc] _initWithName:@"changedEntity" type:300];
    [v10 _addProperty:v13];

    v14 = objc_alloc_init(NSAttributeDescription);
    [(NSPropertyDescription *)v14 setName:@"changedObjectID"];
    if (v14)
    {
      [(NSPropertyDescription *)v14 _throwIfNotEditable];
      v14->_type = 2000;
    }

    [v10 _addProperty:v14];

    v15 = [[NSRelationshipDescription alloc] _initWithName:@"changes"];
    v16 = [[NSRelationshipDescription alloc] _initWithName:@"transaction"];
    [v16 setDestinationEntity:v2];
    [v16 setInverseRelationship:v15];
    [v15 setDestinationEntity:v10];
    [v15 setInverseRelationship:v16];
    [v16 setMaxCount:1];
    [v16 setMinCount:1];
    [v2 _addProperty:v15];

    [v10 _addProperty:v16];
    [v2 _flattenProperties];
    [v10 _flattenProperties];
    v17 = [NSManagedObjectModel alloc];
    v21[0] = v2;
    v21[1] = v10;
    v18 = -[NSManagedObjectModel _initWithEntities:](v17, "_initWithEntities:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2]);
    [v18 _setModelsReferenceIDOffset:{+[_PFPersistentHistoryFetchModel ancillaryEntityOffset](_PFPersistentHistoryFetchModel, "ancillaryEntityOffset")}];
    [v18 _setIsEditable:0];

    objc_autoreleasePoolPop(v1);
    v19 = 0;
    atomic_compare_exchange_strong(&historyFetchModel, &v19, v18);
    if (v19)
    {
    }
  }

  return historyFetchModel;
}

@end