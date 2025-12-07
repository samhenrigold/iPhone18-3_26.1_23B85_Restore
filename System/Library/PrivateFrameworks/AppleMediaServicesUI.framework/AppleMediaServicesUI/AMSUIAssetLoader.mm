@interface AMSUIAssetLoader
+ (AMSUIAssetLoader)sharedLoader;
- (id)fetchWithAssetURL:(id)l;
@end

@implementation AMSUIAssetLoader

+ (AMSUIAssetLoader)sharedLoader
{
  v2 = static AssetLoader.shared.getter();

  return v2;
}

- (id)fetchWithAssetURL:(id)l
{
  v4 = sub_1BB1DB398();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  selfCopy = self;
  v9 = sub_1BB12F6B8(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

@end