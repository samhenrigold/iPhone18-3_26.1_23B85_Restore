@interface PMAppAccountsListModel.WrappedPMAccount
- (NSString)effectiveTitleForSorting;
- (_TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount)init;
- (void)setEffectiveTitleForSorting:(id)sorting;
@end

@implementation PMAppAccountsListModel.WrappedPMAccount

- (NSString)effectiveTitleForSorting
{

  v2 = sub_21CB85584();

  return v2;
}

- (void)setEffectiveTitleForSorting:(id)sorting
{
  v4 = sub_21CB855C4();
  v5 = (self + OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_effectiveTitleForSorting);
  *v5 = v4;
  v5[1] = v6;
}

- (_TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end