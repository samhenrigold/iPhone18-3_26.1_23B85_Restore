@interface ClimateHorizontalQuickActionPopover
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)didUpdateSettings;
- (void)viewDidLayoutSubviews;
@end

@implementation ClimateHorizontalQuickActionPopover

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100099290(selfCopy);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_10009B2DC(contextCopy, coordinatorCopy);
}

- (void)didUpdateSettings
{
  selfCopy = self;
  v3 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10011B1C0, "Quick action popover refresh UI", 31, 2, _swiftEmptyArrayStorage);
  v8 = _swiftEmptyArrayStorage;
  sub_100028DB0();
  v5 = v4;
  v7 = selfCopy;
  sub_10009BA7C(v5, v7, &v8);

  sub_1000994AC(v8);

  sub_100099E8C();
}

@end