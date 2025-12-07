@interface BankConnectAccountCredentialsViewControllerProvider
+ (id)makeViewControllerWithAccountCredentials:(id)credentials title:(id)title;
- (_TtC9PassKitUI51BankConnectAccountCredentialsViewControllerProvider)init;
@end

@implementation BankConnectAccountCredentialsViewControllerProvider

+ (id)makeViewControllerWithAccountCredentials:(id)credentials title:(id)title
{
  sub_1BD1E57C8();
  v4 = sub_1BE052744();
  v5 = sub_1BE052434();
  v7 = v6;
  v8 = _s9PassKitUI51BankConnectAccountCredentialsViewControllerProviderC04makehI007accountG00lG5TitleSo06UIViewI0CSaySo27FKAccountPaymentInformationCG_SStFZ_0(v4, v5, v6);
  v4, v9, v10, v11, v12, v13, v14, v15;
  v7, v16, v17, v18, v19, v20, v21, v22;

  return v8;
}

- (_TtC9PassKitUI51BankConnectAccountCredentialsViewControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BankConnectAccountCredentialsViewControllerProvider();
  return [(BankConnectAccountCredentialsViewControllerProvider *)&v3 init];
}

@end