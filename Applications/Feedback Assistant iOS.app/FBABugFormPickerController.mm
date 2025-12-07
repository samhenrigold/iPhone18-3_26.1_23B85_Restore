@interface FBABugFormPickerController
- (_TtC18Feedback_Assistant26FBABugFormPickerController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18Feedback_Assistant26FBABugFormPickerController)initWithStubsPredicate:(id)predicate;
- (_TtP18Feedback_Assistant24FBABugFormPickerDelegate_)pickerDelegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dismissPicker;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setCurrentSelection:(id)selection;
- (void)setTeam:(id)team;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation FBABugFormPickerController

- (_TtC18Feedback_Assistant26FBABugFormPickerController)initWithStubsPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = sub_100080934(predicateCopy);

  return v4;
}

- (void)setCurrentSelection:(id)selection
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection) = selection;
  selectionCopy = selection;
}

- (void)setTeam:(id)team
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team) = team;
  teamCopy = team;
}

- (_TtP18Feedback_Assistant24FBABugFormPickerDelegate_)pickerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10007F048(selfCopy, v2);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_100080A04(selfCopy, v7);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  selfCopy = self;
  sub_100080AF8(headerViewCopy, section);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10007F450(viewCopy, section);

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs);
  if (v4)
  {
    if (v4 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10007F5D0(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100080C04();

  (*(v7 + 8))(v9, v6);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_10007FA20(appearCopy, selfCopy);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_10007FE28(disappearCopy, selfCopy);
}

- (void)dismissPicker
{
  selfCopy = self;
  sub_10007FF8C();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"bugFormPickerDidCancel:"])
    {
      [v5 bugFormPickerDidCancel:self];
    }

    swift_unknownObjectRelease();
  }
}

- (_TtC18Feedback_Assistant26FBABugFormPickerController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end