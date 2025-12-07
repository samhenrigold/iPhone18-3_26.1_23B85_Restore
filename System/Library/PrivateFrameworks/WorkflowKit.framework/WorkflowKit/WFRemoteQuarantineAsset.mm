@interface WFRemoteQuarantineAsset
+ (NSDictionary)properties;
@end

@implementation WFRemoteQuarantineAsset

+ (NSDictionary)properties
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"compatibilityVersion";
  v2 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v10[0] = v2;
  v9[1] = @"contentVersion";
  v3 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v10[1] = v3;
  v9[2] = @"assetData";
  v4 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
  v5 = [WFCloudKitItemProperty assetPropertyWithName:@"assetDataFile" fileType:v4];
  v10[2] = v5;
  v9[3] = @"configuration";
  v6 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end