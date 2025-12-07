@interface UnusedModelsVersionMismatchAlertDataSource
- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated;
@end

@implementation UnusedModelsVersionMismatchAlertDataSource

- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated
{
  sub_1B9F12538();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45C8();

  sub_1BA1DA458();

  (*(v7 + 8))(v10, v6);
}

@end