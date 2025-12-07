@interface QuickReminderViewController
- (_TtC19RemindersAppIntents27QuickReminderViewController)initWithCoder:(id)coder;
- (_TtC19RemindersAppIntents27QuickReminderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation QuickReminderViewController

- (_TtC19RemindersAppIntents27QuickReminderViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_reminderSaveDidFinishCancellable) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_configurationUsesLastSelectedLocationInViewDidAppear) = 0;
  result = sub_261D004E4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  QuickReminderViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(QuickReminderViewController *)&v5 viewDidAppear:appearCopy];
  if (v4[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_configurationUsesLastSelectedLocationInViewDidAppear] == 1 && *&v4[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_quickReminderModuleInterface])
  {
    swift_getObjectType();
    sub_261CFE594();
  }
}

- (_TtC19RemindersAppIntents27QuickReminderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end