@interface DeviceSelector
- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)continueConsent;
- (void)tryAgain;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DeviceSelector

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000BDFB4(selfCopy, v2);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_1000BE490(v5);
  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for DeviceSelector();
  [(DeviceSelector *)&v8 viewWillAppear:appearCopy];
  v6 = *&selfCopy->OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (v6)
  {
    v7 = v6;
    [v7 invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_1000C1940();
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.stopDeviceDiscovery()();
  }

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for DeviceSelector();
  [(DeviceSelector *)&v5 viewDidDisappear:disappearCopy];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1000C3BF0(viewCopy, section);

  return v8;
}

- (void)continueConsent
{
  selfCopy = self;
  sub_1000C4224();
}

- (void)tryAgain
{
  selfCopy = self;
  sub_1000C171C();
  sub_1000BE490(v2);
}

- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end