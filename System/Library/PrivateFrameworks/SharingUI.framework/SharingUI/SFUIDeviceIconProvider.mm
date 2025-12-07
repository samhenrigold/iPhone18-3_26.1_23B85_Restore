@interface SFUIDeviceIconProvider
+ (id)deviceImageWithModelIdentifier:(id)identifier;
@end

@implementation SFUIDeviceIconProvider

+ (id)deviceImageWithModelIdentifier:(id)identifier
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](identifier);
  v5 = sub_1B9ED8AAC();
  v6 = v3;
  swift_getObjCClassMetadata();
  v8 = sub_1B9ED4508(v5, v6);

  MEMORY[0x1E69E5920](identifier);

  return v8;
}

@end