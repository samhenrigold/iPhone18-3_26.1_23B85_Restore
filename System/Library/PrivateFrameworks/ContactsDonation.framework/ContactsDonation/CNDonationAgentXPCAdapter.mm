@interface CNDonationAgentXPCAdapter
+ (id)newXPCConnection;
+ (void)changeFromAccount:(id)account toAccount:(id)toAccount scope:(id)scope;
+ (void)donateMeCardValues:(id)values scope:(id)scope;
+ (void)fetchDonatedMeCardWithScope:(id)scope;
+ (void)meCardDonationsWithScope:(id)scope;
+ (void)rejectValueWithDonationIdentifier:(id)identifier scope:(id)scope;
+ (void)rejectValuesWithClusterIdentifier:(id)identifier scope:(id)scope;
+ (void)removeAllRejectionsWithScope:(id)scope;
+ (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers scope:(id)scope;
- (id)changeFromAccount:(id)account toAccount:(id)toAccount;
- (id)donateMeCardValues:(id)values;
- (id)donatedMeCardEither;
- (id)fetchDonatedMeCard;
- (id)meCardDonations;
- (id)rejectValueWithDonationIdentifier:(id)identifier;
- (id)rejectValuesWithClusterIdentifier:(id)identifier;
- (id)removeAllRejections;
- (id)removeDonatedMeCardValuesForIdentifiers:(id)identifiers;
@end

@implementation CNDonationAgentXPCAdapter

- (id)donateMeCardValues:(id)values
{
  valuesCopy = values;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() donateMeCardValues:valuesCopy scope:v4];

  promise = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  future = [promise future];

  return future;
}

+ (void)donateMeCardValues:(id)values scope:(id)scope
{
  scopeCopy = scope;
  valuesCopy = values;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy donateMeCardValues:valuesCopy completionHandler:errorOnlyCompletionHandlerAdapter];
}

- (id)removeDonatedMeCardValuesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() removeDonatedMeCardValuesForIdentifiers:identifiersCopy scope:v4];

  promise = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  future = [promise future];

  return future;
}

+ (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers scope:(id)scope
{
  scopeCopy = scope;
  identifiersCopy = identifiers;
  proxy = [scopeCopy proxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__CNDonationAgentXPCAdapter_removeDonatedMeCardValuesForIdentifiers_scope___block_invoke;
  v9[3] = &unk_278569D98;
  v10 = scopeCopy;
  v8 = scopeCopy;
  [proxy removeDonatedMeCardValuesForIdentifiers:identifiersCopy completionHandler:v9];
}

void __75__CNDonationAgentXPCAdapter_removeDonatedMeCardValuesForIdentifiers_scope___block_invoke(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) promise];
  v6 = v5;
  if (a2)
  {
    v7 = [MEMORY[0x277CBEB68] null];
    [v6 finishWithResult:v7];
  }

  else
  {
    [v5 finishWithError:v8];
  }
}

- (id)fetchDonatedMeCard
{
  v2 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() fetchDonatedMeCardWithScope:v2];
  promise = [(_CNDonationAgentXPCMethodScope *)v2 promise];
  future = [promise future];

  return future;
}

+ (void)fetchDonatedMeCardWithScope:(id)scope
{
  scopeCopy = scope;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  completionHandlerAdapter = [promise completionHandlerAdapter];
  [proxy fetchDonatedMeCard:completionHandlerAdapter];
}

- (id)meCardDonations
{
  v2 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() meCardDonationsWithScope:v2];
  promise = [(_CNDonationAgentXPCMethodScope *)v2 promise];
  future = [promise future];

  return future;
}

+ (void)meCardDonationsWithScope:(id)scope
{
  scopeCopy = scope;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  completionHandlerAdapter = [promise completionHandlerAdapter];
  [proxy meCardDonations:completionHandlerAdapter];
}

- (id)rejectValueWithDonationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() rejectValueWithDonationIdentifier:identifierCopy scope:v4];

  promise = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  future = [promise future];

  return future;
}

+ (void)changeFromAccount:(id)account toAccount:(id)toAccount scope:(id)scope
{
  scopeCopy = scope;
  toAccountCopy = toAccount;
  accountCopy = account;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy changeFromAccount:accountCopy toAccount:toAccountCopy completionHandler:errorOnlyCompletionHandlerAdapter];
}

- (id)changeFromAccount:(id)account toAccount:(id)toAccount
{
  toAccountCopy = toAccount;
  accountCopy = account;
  v7 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() changeFromAccount:accountCopy toAccount:toAccountCopy scope:v7];

  promise = [(_CNDonationAgentXPCMethodScope *)v7 promise];
  future = [promise future];

  return future;
}

+ (void)rejectValueWithDonationIdentifier:(id)identifier scope:(id)scope
{
  scopeCopy = scope;
  identifierCopy = identifier;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy rejectValueWithDonationIdentifier:identifierCopy completionHandler:errorOnlyCompletionHandlerAdapter];
}

- (id)rejectValuesWithClusterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() rejectValuesWithClusterIdentifier:identifierCopy scope:v4];

  promise = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  future = [promise future];

  return future;
}

+ (void)rejectValuesWithClusterIdentifier:(id)identifier scope:(id)scope
{
  scopeCopy = scope;
  identifierCopy = identifier;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy rejectValuesWithClusterIdentifier:identifierCopy completionHandler:errorOnlyCompletionHandlerAdapter];
}

- (id)removeAllRejections
{
  v2 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() removeAllRejectionsWithScope:v2];
  promise = [(_CNDonationAgentXPCMethodScope *)v2 promise];
  future = [promise future];

  return future;
}

- (id)donatedMeCardEither
{
  v25[4] = *MEMORY[0x277D85DE8];
  v2 = +[CNDonationAgentXPCAdapter newXPCConnection];
  v3 = MEMORY[0x277CFBEF0];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  remoteObjectInterface = [v2 remoteObjectInterface];
  [v3 addAllowedClasses:v4 toInterface:remoteObjectInterface forSelector:sel_synchronousDonatedMeCard_ argumentIndex:0 ofReply:1];

  [v2 resume];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__CNDonationAgentXPCAdapter_donatedMeCardEither__block_invoke;
  v18[3] = &unk_278569DC0;
  v18[4] = &v19;
  v6 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__CNDonationAgentXPCAdapter_donatedMeCardEither__block_invoke_2;
  v11[3] = &unk_278569DE8;
  v11[4] = &v12;
  [v6 synchronousDonatedMeCard:v11];
  [v2 invalidate];
  v7 = v13[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CFBDF8] eitherWithRight:v20[5]];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

uint64_t __48__CNDonationAgentXPCAdapter_donatedMeCardEither__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 copy];

  return MEMORY[0x2821F96F8]();
}

+ (void)removeAllRejectionsWithScope:(id)scope
{
  scopeCopy = scope;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy removeAllRejectionsWithCompletionHandler:errorOnlyCompletionHandlerAdapter];
}

+ (id)newXPCConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.contacts.donation.agent" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838E4770];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

@end