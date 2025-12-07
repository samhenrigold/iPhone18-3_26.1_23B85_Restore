@interface AssetActivityItemsConfiguration
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (_TtC7Journal31AssetActivityItemsConfiguration)init;
- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key;
@end

@implementation AssetActivityItemsConfiguration

- (_TtC7Journal31AssetActivityItemsConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)itemProvidersForActivityItemsConfiguration
{
  selfCopy = self;
  sub_1001F42FC();

  sub_1000065A8(0, &unk_100AD8660, NSItemProvider_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key
{
  keyCopy = key;
  selfCopy = self;
  sub_1001F43E8(index, v16);

  v8 = v17;
  if (v17)
  {
    v9 = sub_10000CA14(v16, v17);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_10000BA7C(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end