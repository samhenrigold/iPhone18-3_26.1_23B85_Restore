@interface CLBAppIcons
+ (BOOL)shouldDownloadForBundleIdentifier:(id)identifier;
+ (CGSize)size;
+ (id)urlForBundleIdentifier:(id)identifier;
- (CLBAppIcons)init;
@end

@implementation CLBAppIcons

+ (id)urlForBundleIdentifier:(id)identifier
{
  v3 = sub_243517B0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243517C7C();
  static CLBAppIcons.url(for:)(v7, v8, v6);

  v9 = sub_243517ABC();
  (*(v4 + 8))(v6, v3);

  return v9;
}

+ (CGSize)size
{
  v2 = 1024.0;
  v3 = 1024.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (BOOL)shouldDownloadForBundleIdentifier:(id)identifier
{
  v3 = sub_243517C7C();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = static CLBAppIcons.shouldDownload(for:)(v3, v5);

  return v6 & 1;
}

- (CLBAppIcons)init
{
  v3.receiver = self;
  v3.super_class = CLBAppIcons;
  return [(CLBAppIcons *)&v3 init];
}

@end