@interface StickerIndexingClient.Provider
- (_TtCV9stickersd21StickerIndexingClient8Provider)init;
- (void)reindexAllItemsForBundleID:(NSString *)d protectionClass:(NSString *)class acknowledgementHandler:(id)handler;
- (void)reindexItemsWithIdentifiers:(NSArray *)identifiers bundleID:(NSString *)d protectionClass:(NSString *)class acknowledgementHandler:(id)handler;
@end

@implementation StickerIndexingClient.Provider

- (void)reindexAllItemsForBundleID:(NSString *)d protectionClass:(NSString *)class acknowledgementHandler:(id)handler
{
  v9 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = class;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100016310;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100016318;
  v16[5] = v15;
  dCopy = d;
  classCopy = class;
  selfCopy = self;
  sub_1000113B4(0, 0, v11, &unk_100016320, v16);
}

- (void)reindexItemsWithIdentifiers:(NSArray *)identifiers bundleID:(NSString *)d protectionClass:(NSString *)class acknowledgementHandler:(id)handler
{
  v11 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = identifiers;
  v15[3] = d;
  v15[4] = class;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000162C8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000162D8;
  v18[5] = v17;
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  selfCopy = self;
  sub_1000113B4(0, 0, v13, &unk_1000162E8, v18);
}

- (_TtCV9stickersd21StickerIndexingClient8Provider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end