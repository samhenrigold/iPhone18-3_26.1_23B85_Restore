@interface ProvisioningAddPaymentPassViewController
- (_TtC9PassKitUI40ProvisioningAddPaymentPassViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI40ProvisioningAddPaymentPassViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)visibleFieldIdentifiers;
- (void)cancel;
- (void)handleNextButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ProvisioningAddPaymentPassViewController

- (_TtC9PassKitUI40ProvisioningAddPaymentPassViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD595B4C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ProvisioningAddPaymentPassViewController();
  v4 = v5.receiver;
  [(PKPaymentSetupFieldsViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_reporter] reportViewAppeared];
}

- (void)cancel
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator);
  if (v2)
  {
    selfCopy = self;
    v3 = v2;
    sub_1BD81521C();
  }
}

- (_TtC9PassKitUI40ProvisioningAddPaymentPassViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)visibleFieldIdentifiers
{
  selfCopy = self;
  result = [(PKPaymentSetupFieldsViewController *)selfCopy fieldsModel];
  if (result)
  {
    v4 = result;
    visibleSetupFieldIdentifiers = [result visibleSetupFieldIdentifiers];

    if (visibleSetupFieldIdentifiers)
    {
      v6 = sub_1BE052744();

      v7 = sub_1BE052724();
      v6, v8, v9, v10, v11, v12, v13, v14;
    }

    else
    {

      v7 = 0;
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
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
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1BD59603C();

  sub_1BD14EC0C(v6);
}

- (id)defaultHeaderViewTitle
{
  selfCopy = self;
  sub_1BD596158();
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
  sub_1BD596158();
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

@end