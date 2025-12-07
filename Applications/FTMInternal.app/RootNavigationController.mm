@interface RootNavigationController
- (_TtC11FTMInternal24RootNavigationController)initWithCoder:(id)coder;
- (_TtC11FTMInternal24RootNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11FTMInternal24RootNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11FTMInternal24RootNavigationController)initWithRootViewController:(id)controller;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)firstTimerMetricRefresh;
- (void)viewDidLoad;
@end

@implementation RootNavigationController

- (_TtC11FTMInternal24RootNavigationController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10022F8E4();
}

- (void)firstTimerMetricRefresh
{
  selfCopy = self;
  sub_10022FF18();
}

- (void)dealloc
{
  v2 = qword_100374F90;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100382478;
  v5 = static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)("root navigation vc deinit called", 32, 2, &_mh_execute_header, v4, v5, _swiftEmptyArrayStorage);
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for RootNavigationController();
  [(RootNavigationController *)&v6 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RootNavigationController();
  [(RootNavigationController *)&v2 didReceiveMemoryWarning];
}

- (_TtC11FTMInternal24RootNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11FTMInternal24RootNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11FTMInternal24RootNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end