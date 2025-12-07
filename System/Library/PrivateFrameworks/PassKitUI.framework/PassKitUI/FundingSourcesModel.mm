@interface FundingSourcesModel
- (void)dealloc;
- (void)didUpdatePaymentFundingSources:(id)sources accountIdentifier:(id)identifier;
@end

@implementation FundingSourcesModel

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_accountService);
  if (v3)
  {
    [v3 unregisterObserver_];
  }

  else
  {
    selfCopy = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for FundingSourcesModel(0);
  [(FundingSourcesModel *)&v5 dealloc];
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
  sub_1BD648238(sourcesCopy, identifier, v8);

  v8, v10, v11, v12, v13, v14, v15, v16;

  sourcesCopy, v17, v18, v19, v20, v21, v22, v23;
}

@end