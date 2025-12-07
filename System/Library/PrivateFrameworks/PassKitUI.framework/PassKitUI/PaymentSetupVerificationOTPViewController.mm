@interface PaymentSetupVerificationOTPViewController
- (_TtC9PassKitUI41PaymentSetupVerificationOTPViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI41PaymentSetupVerificationOTPViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)visibleFieldIdentifiers;
- (void)_handlePassVerifiedNotificationWithNotification:(id)notification;
- (void)_performVerificationButtonPressed;
- (void)_selectDifferentMethodButtonPressed;
- (void)_sendNewCodeButtonPressed;
- (void)_skipCardButtonPressed;
- (void)_startVerificationObserver;
- (void)_stopVerificationObserver;
- (void)handleNextButtonTapped:(id)tapped;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)verificationObserver:(id)observer didObserveVerificationCode:(id)code;
- (void)verificationObserverDidTimeout:(id)timeout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PaymentSetupVerificationOTPViewController

- (_TtC9PassKitUI41PaymentSetupVerificationOTPViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD7F77EC();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKPaymentSetupFieldsViewController *)&v5 viewWillAppear:appearCopy];
  sub_1BD7F7FEC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKPaymentSetupFieldsViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter] reportViewAppeared];
}

- (void)_performVerificationButtonPressed
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter);
  selfCopy = self;
  if (v2)
  {
    [v2 reportButtonPressed_];
  }

  sub_1BD7F82FC();
}

- (void)_skipCardButtonPressed
{
  selfCopy = self;
  sub_1BD7F87E0();
}

- (void)_selectDifferentMethodButtonPressed
{
  selfCopy = self;
  sub_1BD7F8B7C();
}

- (void)_sendNewCodeButtonPressed
{
  selfCopy = self;
  sub_1BD7F8E88();
}

- (_TtC9PassKitUI41PaymentSetupVerificationOTPViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)visibleFieldIdentifiers
{
  selfCopy = self;
  v3 = sub_1BD65A578();

  if (v3)
  {
    v4 = sub_1BE052724();
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleNextButtonTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter);
  if (v6)
  {
    [v6 reportButtonPressed_];
  }

  sub_1BD7F82FC();

  sub_1BD0DE53C(v7, &qword_1EBD3EC90, &unk_1BE0BC6B0);
}

- (id)defaultHeaderViewTitle
{
  selfCopy = self;
  sub_1BD7FAD34();
  v4 = v3;
  v6 = v5;

  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1BE052404();
  v4, v15, v16, v17, v18, v19, v20, v21;

  return v14;
}

- (id)defaultHeaderViewSubTitle
{
  selfCopy = self;
  sub_1BD7FAD34();
  v4 = v3;
  v6 = v5;

  v4, v7, v8, v9, v10, v11, v12, v13;
  if (v6)
  {
    v14 = sub_1BE052404();
    v6, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)defaultFields
{
  v2 = sub_1BE052724();

  return v2;
}

- (void)_startVerificationObserver
{
  selfCopy = self;
  sub_1BD7F7FEC();
}

- (void)_stopVerificationObserver
{
  selfCopy = self;
  sub_1BD7F89DC();
}

- (void)verificationObserver:(id)observer didObserveVerificationCode:(id)code
{
  v6 = sub_1BE052434();
  v8 = v7;
  observerCopy = observer;
  selfCopy = self;
  sub_1BD7FB17C(observerCopy, v6, v8);

  v8, v11, v12, v13, v14, v15, v16, v17;
}

- (void)verificationObserverDidTimeout:(id)timeout
{
  timeoutCopy = timeout;
  selfCopy = self;
  sub_1BD7FC040();
}

- (void)_handlePassVerifiedNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1BD7FB954(notificationCopy);
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  selfCopy = self;
  sub_1BD7FBF3C(i);
}

@end