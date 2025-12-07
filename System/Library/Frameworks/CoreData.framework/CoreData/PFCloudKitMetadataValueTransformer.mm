@interface PFCloudKitMetadataValueTransformer
+ (NSArray)allowedTopLevelClasses;
@end

@implementation PFCloudKitMetadataValueTransformer

+ (NSArray)allowedTopLevelClasses
{
  v20 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___PFCloudKitMetadataValueTransformer;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSendSuper2(&v13, sel_allowedTopLevelClasses)}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  getCloudKitCKRecordClass[0]();
  v14[0] = objc_opt_class();
  getCloudKitCKShareClass();
  v14[1] = objc_opt_class();
  getCloudKitCKRecordIDClass();
  v14[2] = objc_opt_class();
  getCloudKitCKRecordZoneIDClass[0]();
  v15 = objc_opt_class();
  getCloudKitCKServerChangeTokenClass(v15);
  v16 = objc_opt_class();
  getCloudKitCKNotificationInfoClass();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:7];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v19 count:16];
    }

    while (v5);
  }

  return v2;
}

@end