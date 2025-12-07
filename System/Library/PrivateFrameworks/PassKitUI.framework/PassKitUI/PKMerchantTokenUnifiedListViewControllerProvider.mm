@interface PKMerchantTokenUnifiedListViewControllerProvider
+ (id)makeViewController;
- (PKMerchantTokenUnifiedListViewControllerProvider)init;
- (id)makeViewControllerInNavigationContextForPass:(id)pass withDelegate:(id)delegate prefetchedMerchantTokens:(id)tokens;
- (id)makeViewControllerInNavigationContextForUnifiedListWithDelegate:(id)delegate;
@end

@implementation PKMerchantTokenUnifiedListViewControllerProvider

- (PKMerchantTokenUnifiedListViewControllerProvider)init
{
  sub_1BE049864();
  v13 = sub_1BE049854();
  v3 = sub_1BE0498E4();
  v13, v4, v5, v6, v7, v8, v9, v10;
  *(&self->super.isa + OBJC_IVAR___PKMerchantTokenUnifiedListViewControllerProvider_coreDataContext) = v3;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MerchantTokenUnifiedListViewControllerProvider();
  return [(PKMerchantTokenUnifiedListViewControllerProvider *)&v12 init];
}

+ (id)makeViewController
{
  v2 = _s9PassKitUI46MerchantTokenUnifiedListViewControllerProviderC04makehI0So010PKMerchantefghI8Protocol_So06UIViewI0CXcyFZ_0();

  return v2;
}

- (id)makeViewControllerInNavigationContextForPass:(id)pass withDelegate:(id)delegate prefetchedMerchantTokens:(id)tokens
{
  tokensCopy = tokens;
  if (tokens)
  {
    sub_1BD3626C8();
    tokensCopy = sub_1BE052744();
  }

  passCopy = pass;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_1BD3621BC(pass);

  swift_unknownObjectRelease();
  tokensCopy, v11, v12, v13, v14, v15, v16, v17;

  return v10;
}

- (id)makeViewControllerInNavigationContextForUnifiedListWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_1BD3621BC(0);
  swift_unknownObjectRelease();

  return v5;
}

@end