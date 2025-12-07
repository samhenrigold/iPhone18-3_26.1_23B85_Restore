@interface ConfirmChildAgeViewController
- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (id)showUpdateChildBdayLink;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ConfirmChildAgeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100001BD8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100002070(appear);
}

- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  v12 = sub_100003034(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;

  v4 = sub_10001B720();

  v5 = *(v4 + 16);

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = sub_10001B410();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B3F0();
  viewCopy = view;
  isa = sub_10001B3E0().super.isa;
  [viewCopy deselectRowAtIndexPath:isa animated:0];

  (*(v6 + 8))(v8, v5);
}

- (id)showUpdateChildBdayLink
{
  v0 = sub_10001B930();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v38 - v5;
  v7 = sub_100003C14(&qword_10002E5B8, &qword_10001CDE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_10001B3B0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  sub_10001B3A0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v17 = v1;
    sub_100005DE8(v9, &qword_10002E5B8, &qword_10001CDE8);
    sub_10001B420();
    v18 = sub_10001B920();
    v19 = sub_10001BE50();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100012460(0xD000000000000057, 0x800000010001DB80, &v43);
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not create update birthdate URL from string: %s", v20, 0xCu);
      sub_100005E48(v21);
    }

    return (*(v17 + 8))(v4, v0);
  }

  else
  {
    v42 = v0;
    (*(v11 + 32))(v16, v9, v10);
    sub_10001B420();
    (*(v11 + 16))(v14, v16, v10);
    v23 = sub_10001B920();
    v24 = sub_10001BE70();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = v25;
      v41 = swift_slowAlloc();
      v43 = v41;
      *v25 = 136315138;
      sub_100005E94(&qword_10002E5C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = sub_10001BFB0();
      v40 = v1;
      v28 = v27;
      v29 = *(v11 + 8);
      v29(v14, v10);
      v30 = sub_100012460(v26, v28, &v43);

      v31 = v39;
      *(v39 + 1) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Update birthdate url: %s", v31, 0xCu);
      sub_100005E48(v41);

      v32 = v29;
      (*(v40 + 8))(v6, v42);
    }

    else
    {

      v32 = *(v11 + 8);
      v32(v14, v10);
      (*(v1 + 8))(v6, v42);
    }

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v34 = result;
      sub_10001B390(v33);
      v36 = v35;
      sub_100005574(&_swiftEmptyArrayStorage);
      isa = sub_10001BCB0().super.isa;

      [v34 openSensitiveURL:v36 withOptions:isa];

      return (v32)(v16, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

@end