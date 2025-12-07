@interface VoicemailDetailViewController
- (_TtC10CallsAppUI29VoicemailDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)handleBackButtonPressed;
- (void)handleCallButtonPressed;
- (void)reportSpamWithShouldDelete:(BOOL)delete;
- (void)shareMessage;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VoicemailDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  VoicemailDetailViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  VoicemailDetailViewController.viewWillAppear(_:)(appear);
}

- (void)handleBackButtonPressed
{
  selfCopy = self;
  navigationController = [(VoicemailDetailViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }
}

- (void)handleCallButtonPressed
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction);
  selfCopy = self;
  v2();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  VoicemailDetailViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  VoicemailDetailViewController.viewWillDisappear(_:)(disappear);
}

- (void)shareMessage
{
  selfCopy = self;
  sub_1CFBDF274();
}

- (void)reportSpamWithShouldDelete:(BOOL)delete
{
  selfCopy = self;
  sub_1CFBDFC08(delete);
}

- (_TtC10CallsAppUI29VoicemailDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1CFC9F998();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1CFC9F968();
  contactCopy = contact;
  selfCopy = self;
  v12 = contactCopy;
  v13 = selfCopy;
  v14 = sub_1CFC9F958();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = contact;
  v15[5] = v13;
  sub_1CFBDC030(0, 0, v8, &unk_1CFCA2CD8, v15);
}

@end