@interface ShareAgeRangeViewController
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:viewForHeaderInSection:;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation ShareAgeRangeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100016A44();
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_10001B410();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B3F0();
  viewCopy = view;
  selfCopy = self;
  sub_10001A288(v9);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = *(sub_100019EF8() + 16);

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_10001B410();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B3F0();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100018690(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:viewForHeaderInSection:
{
  v0 = [objc_allocWithZone(UIView) init];

  return v0;
}

@end