@interface SavingsDashboardMessageSource
- (_TtC9PassKitUI29SavingsDashboardMessageSource)init;
- (void)didUpdatePaymentFundingSources:(id)sources accountIdentifier:(id)identifier;
- (void)discoveryService:(id)service dialogRequestsChangedForPlacement:(id)placement;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
@end

@implementation SavingsDashboardMessageSource

- (_TtC9PassKitUI29SavingsDashboardMessageSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)discoveryService:(id)service dialogRequestsChangedForPlacement:(id)placement
{
  if (placement)
  {
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  sub_1BD9D09F0(v6, v8);

  v8, v11, v12, v13, v14, v15, v16, v17;
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  if (identifier)
  {
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  transactionCopy = transaction;
  selfCopy = self;
  sub_1BD9CFDB4(v6, v8, transaction);

  v8, v11, v12, v13, v14, v15, v16, v17;
}

- (void)didUpdatePaymentFundingSources:(id)sources accountIdentifier:(id)identifier
{
  sourcesCopy = sources;
  if (sources)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4E090, 0x1E69B83A8);
    sourcesCopy = sub_1BE052744();
  }

  if (identifier)
  {
    identifier = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  sub_1BD9D0D7C(identifier, v8);

  sourcesCopy, v10, v11, v12, v13, v14, v15, v16;

  v8, v17, v18, v19, v20, v21, v22, v23;
}

@end