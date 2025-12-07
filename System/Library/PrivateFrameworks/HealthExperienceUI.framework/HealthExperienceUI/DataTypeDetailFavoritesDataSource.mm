@interface DataTypeDetailFavoritesDataSource
- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated;
@end

@implementation DataTypeDetailFavoritesDataSource

- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;
  sub_1BA4A45C8();

  sub_1BA2E7DA4(v12, v14, v15, animated);

  (*(v8 + 8))(v11, v7);
}

@end