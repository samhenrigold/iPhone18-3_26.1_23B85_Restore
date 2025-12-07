@interface BAAssetPack
- (BAAssetPack)init;
- (NSData)userInfo;
- (NSString)identifier;
- (id)download;
- (id)downloadForContentRequest:(int64_t)request;
- (id)init:(id)init;
@end

@implementation BAAssetPack

- (NSString)identifier
{

  v2 = sub_236E81E74();

  return v2;
}

- (NSData)userInfo
{
  v2 = *(&self->super.isa + OBJC_IVAR___BAAssetPack_assetPackWrapper) + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack;
  v3 = *(v2 + 5);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 4);
    sub_236E59298(v5, *(v2 + 5));
    v6 = sub_236E81A24();
    sub_236E592EC(v5, v3);
    v4 = v6;
  }

  return v4;
}

- (id)download
{
  v3 = type metadata accessor for AssetPack(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E393B0(*(&self->super.isa + OBJC_IVAR___BAAssetPack_assetPackWrapper) + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, v5);
  selfCopy = self;
  v7 = AssetPack.download(for:)(0, 1);
  sub_236E39414(v5);

  return v7;
}

- (id)downloadForContentRequest:(int64_t)request
{
  v5 = type metadata accessor for AssetPack(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E393B0(*(&self->super.isa + OBJC_IVAR___BAAssetPack_assetPackWrapper) + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, v7);
  selfCopy = self;
  v9 = AssetPack.download(for:)(request, 0);
  sub_236E39414(v7);

  return v9;
}

- (id)init:(id)init
{
  *(&self->super.isa + OBJC_IVAR___BAAssetPack_assetPackWrapper) = init;
  v5.receiver = self;
  v5.super_class = BAAssetPack;
  initCopy = init;
  return [(BAAssetPack *)&v5 init];
}

- (BAAssetPack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end