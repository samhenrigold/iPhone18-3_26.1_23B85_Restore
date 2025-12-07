@interface IdentityProofingRetryProvisioningViewController
- (_TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController)initWithCoder:(id)coder;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IdentityProofingRetryProvisioningViewController

- (_TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController)initWithCoder:(id)coder
{
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24584F26C();
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for IdentityProofingRetryProvisioningViewController();
  v2 = v7.receiver;
  [(IdentityProofingViewController *)&v7 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController_viewConfig];
  v4 = *(v3 + 144);
  if (v4)
  {
    v5 = *(v3 + 152);

    v4(v6);
    sub_245771C34(v4, v5);
  }
}

@end