@interface ConfirmationSheetViewController
- (_TtC26ADAskForExceptionExtension31ConfirmationSheetViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC26ADAskForExceptionExtension31ConfirmationSheetViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)dealloc;
- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification;
- (void)miniProductPageRequestDidFinish;
- (void)moreInformationPressed;
- (void)primaryButtonPressed;
- (void)secondaryButtonPressed;
- (void)viewDidLoad;
@end

@implementation ConfirmationSheetViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:STRestrictionsPINControllerDidFinishNotification object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ConfirmationSheetViewController(0);
  [(ConfirmationSheetViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConfirmationSheetViewController(0);
  v2 = v3.receiver;
  [(ConfirmationSheetViewController *)&v3 viewDidLoad];
  sub_100004874();
  sub_100006F24();
}

- (void)moreInformationPressed
{
  selfCopy = self;
  sub_100007870();
}

- (void)primaryButtonPressed
{
  v3 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_100017DC0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100017DA0();
  selfCopy = self;
  v8 = sub_100017D90();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_1000080E4(0, 0, v5, &unk_100019218, v9);
}

- (void)secondaryButtonPressed
{
  selfCopy = self;
  sub_100008514();
}

- (_TtC26ADAskForExceptionExtension31ConfirmationSheetViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26ADAskForExceptionExtension31ConfirmationSheetViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100009A80(notificationCopy);
}

- (void)miniProductPageRequestDidFinish
{
  if (qword_1000251F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1000178E0();
  sub_10000BEDC(v0, qword_100025420);
  oslog = sub_1000178C0();
  v1 = sub_100017DF0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Mini product page finished loading", v2, 2u);
  }
}

@end