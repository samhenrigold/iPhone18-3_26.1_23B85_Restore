@interface WFRemoteConfigurationAsset
+ (NSDictionary)properties;
@end

@implementation WFRemoteConfigurationAsset

+ (NSDictionary)properties
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"shortVersion";
  v2 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v11[0] = v2;
  v10[1] = @"assetType";
  v3 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v11[1] = v3;
  v10[2] = @"assetData";
  v4 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
  v5 = [WFCloudKitItemProperty assetPropertyWithName:@"assetDataFile" fileType:v4];
  v11[2] = v5;
  v10[3] = @"buildNumber";
  v6 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v11[3] = v6;
  v10[4] = @"configuration";
  v7 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

@end