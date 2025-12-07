@interface WFCloudKitSyncFlags
+ (BOOL)isCloudKitSyncFlagsRecordID:(id)d;
+ (NSDictionary)properties;
+ (id)recordIDWithZoneID:(id)d;
- (WFCloudKitSyncFlags)initWithZoneID:(id)d;
@end

@implementation WFCloudKitSyncFlags

- (WFCloudKitSyncFlags)initWithZoneID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitSyncFlags.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];
  }

  v12.receiver = self;
  v12.super_class = WFCloudKitSyncFlags;
  v6 = [(WFCloudKitSyncFlags *)&v12 init];
  if (v6)
  {
    v7 = [WFCloudKitSyncFlags recordIDWithZoneID:dCopy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = v6;
  }

  return v6;
}

+ (BOOL)isCloudKitSyncFlagsRecordID:(id)d
{
  recordName = [d recordName];
  isEqualToString = objc_msgSend_isEqualToString_(recordName);

  return isEqualToString;
}

+ (id)recordIDWithZoneID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitSyncFlags.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"ShortcutFlags" zoneID:dCopy];

  return v6;
}

+ (NSDictionary)properties
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"migratedVoiceShortcuts";
  v2 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v6[1] = @"defaultShortcutsVersion";
  v7[0] = v2;
  v3 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end