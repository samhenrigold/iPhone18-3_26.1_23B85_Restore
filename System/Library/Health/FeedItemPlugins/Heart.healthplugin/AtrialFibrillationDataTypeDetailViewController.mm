@interface AtrialFibrillationDataTypeDetailViewController
- (BOOL)isPinned;
- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode;
- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithStyle:(int64_t)style;
- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithUsingInsetStyling:(BOOL)styling;
- (id)featureStatusCells;
- (id)featureStatusFooterView;
- (id)makeInternalSettingsControllerWithHealthStore:(id)store;
- (void)didSelectRegulatoryRow;
- (void)featureStatusCellTappedAtIndexPath:(id)path;
- (void)recomputeTotalSampleCount;
- (void)setPinned:(BOOL)pinned;
- (void)showAddDataVC;
- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation AtrialFibrillationDataTypeDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29D77F640();
}

- (BOOL)isPinned
{
  selfCopy = self;
  v3 = sub_29D77FA40();

  return v3 & 1;
}

- (void)setPinned:(BOOL)pinned
{
  selfCopy = self;
  sub_29D77FC44(pinned);
}

- (void)recomputeTotalSampleCount
{
  selfCopy = self;
  sub_29D77FDF8();
}

- (void)showAddDataVC
{
  selfCopy = self;
  sub_29D780008();
}

- (void)didSelectRegulatoryRow
{
  selfCopy = self;
  sub_29D7804E4();
}

- (id)featureStatusCells
{
  selfCopy = self;
  sub_29D78112C();

  sub_29D69567C(0, &qword_2A17B4380, 0x29EDC7D10);
  v3 = sub_29D939F18();

  return v3;
}

- (id)featureStatusFooterView
{
  selfCopy = self;
  v3 = sub_29D7813A8();

  return v3;
}

- (void)featureStatusCellTappedAtIndexPath:(id)path
{
  v4 = sub_29D933DB8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933D58();
  selfCopy = self;
  sub_29D781D8C();

  (*(v5 + 8))(v8, v4);
}

- (id)makeInternalSettingsControllerWithHealthStore:(id)store
{
  initWithHealthStore_ = [objc_allocWithZone(type metadata accessor for IRNInternalSettingsViewController()) initWithHealthStore_];

  return initWithHealthStore_;
}

- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated
{
  sub_29D75DD24();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D939D68();
  v14 = v13;
  sub_29D937BA8();
  selfCopy = self;
  sub_29D7831E0(v12, v14);

  (*(v8 + 8))(v11, v7);
}

- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithUsingInsetStyling:(BOOL)styling
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end