@interface BKAudiobookAsset
- (BKAudiobookAsset)init;
- (id)assetType;
- (id)url;
@end

@implementation BKAudiobookAsset

- (id)assetType
{
  v2 = sub_1007A2214();

  return v2;
}

- (id)url
{
  v3 = sub_1007969B4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___BKAudiobookAsset_audiobookURL, v3, v5);
  sub_100796944(v8);
  v10 = v9;
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (BKAudiobookAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end