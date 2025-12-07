@interface HierarchicalDiffableCollectionViewAdaptor
- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated;
@end

@implementation HierarchicalDiffableCollectionViewAdaptor

- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated
{
  animatedCopy = animated;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45C8();
  v13 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(&self->super.super.isa + v13) = 1;
  v14 = *&self->super.backingDataSource[OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource];
  ObjectType = swift_getObjectType();

  v16 = swift_unknownObjectRetain();
  v17 = sub_1BA21582C(v16, ObjectType, v14);
  swift_unknownObjectRelease();
  sub_1BA21515C(v17, animatedCopy, 0, 0);

  (*(v9 + 8))(v12, v8);
}

@end