@interface VerificationCodeEntryViewController
- (_TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)didTapCancel;
- (void)didTapHelpButton;
- (void)keyboardWillChangeFrame:(id)frame;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VerificationCodeEntryViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver_];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(VerificationCodeEntryViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  VerificationCodeEntryViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(VerificationCodeEntryViewController *)&v7 viewWillAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView];
  if (v5)
  {
    v6 = v5;
    [v6 becomeFirstResponder];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  VerificationCodeEntryViewController.viewSafeAreaInsetsDidChange()();
}

- (void)keyboardWillChangeFrame:(id)frame
{
  v4 = sub_251702C84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702C64();
  selfCopy = self;
  sub_2516D5214();

  (*(v5 + 8))(v7, v4);
}

- (void)didTapHelpButton
{
  selfCopy = self;
  sub_2516D5594();
}

- (void)didTapCancel
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_flow);
  selfCopy = self;
  sub_25169D808(selfCopy, v2);
}

- (_TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end