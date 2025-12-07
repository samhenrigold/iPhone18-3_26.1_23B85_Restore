@interface LibraryAssetStateObserver
- (_TtC11BookStoreUI25LibraryAssetStateObserver)init;
- (void)dynamicProgressChanged:(id)changed;
- (void)libraryItemStateCenter:(id)center didUpdateItemState:(id)state forIdentifier:(id)identifier;
@end

@implementation LibraryAssetStateObserver

- (void)libraryItemStateCenter:(id)center didUpdateItemState:(id)state forIdentifier:(id)identifier
{
  sub_2C58C8();
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock((v6 + 40));
  sub_135648((v6 + 16), v8);
  os_unfair_lock_unlock((v6 + 40));

  swift_unknownObjectRelease();
}

- (void)dynamicProgressChanged:(id)changed
{
  swift_unknownObjectRetain();
  selfCopy = self;
  progress = [changed progress];
  [progress doubleValue];

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData);
  os_unfair_lock_lock((v7 + 40));
  sub_135664((v7 + 16));
  os_unfair_lock_unlock((v7 + 40));
  swift_unknownObjectRelease();
}

- (_TtC11BookStoreUI25LibraryAssetStateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end