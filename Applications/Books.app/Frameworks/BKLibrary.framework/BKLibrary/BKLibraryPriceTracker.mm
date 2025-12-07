@interface BKLibraryPriceTracker
- (BKLibraryPriceTracker)init;
- (BKLibraryPriceTracker)initWithLibraryManager:(id)manager bdsPriceTracker:(id)tracker;
- (void)setNeedsConfigurationUpdate;
@end

@implementation BKLibraryPriceTracker

- (BKLibraryPriceTracker)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKLibraryPriceTracker)initWithLibraryManager:(id)manager bdsPriceTracker:(id)tracker
{
  managerCopy = manager;
  swift_unknownObjectRetain();
  return PriceTracker.init(libraryManager:bdsPriceTracker:)(managerCopy, tracker);
}

- (void)setNeedsConfigurationUpdate
{
  v3 = sub_70674(&qword_EF620, &qword_A5C38);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_9218C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_7C7A8(0, 0, v5, &unk_A5DD8, v7);
}

@end