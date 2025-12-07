@interface BDSJaliscoDAAPClient
+ (BDSJaliscoDAAPClient)sharedClient;
- (BDSJaliscoDAAPClient)init;
- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion;
- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion;
- (void)setItemHidden:(BOOL)hidden forStoreID:(id)d completion:(id)completion;
- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion;
- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error;
- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion;
- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error;
- (void)updatePolitelyAfterSignIn:(BOOL)in reason:(int64_t)reason completion:(id)completion;
- (void)updatePolitelyAfterSignOut:(BOOL)out reason:(int64_t)reason completion:(id)completion;
@end

@implementation BDSJaliscoDAAPClient

+ (BDSJaliscoDAAPClient)sharedClient
{
  if (qword_1EE2AEC08 != -1)
  {
    sub_1E47048B8();
  }

  v3 = qword_1EE2AEC00;

  return v3;
}

- (BDSJaliscoDAAPClient)init
{
  v6.receiver = self;
  v6.super_class = BDSJaliscoDAAPClient;
  v2 = [(BDSJaliscoDAAPClient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;

    v2->_familyUpdateInProgress = 0;
  }

  return v2;
}

- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion
{
  politelyCopy = politely;
  completionCopy = completion;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy updatePolitely:politelyCopy reason:reason completion:completionCopy];
}

- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error
{
  politelyCopy = politely;
  errorCopy = error;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy updatePolitely:politelyCopy reason:reason completionWithError:errorCopy];
}

- (void)updatePolitelyAfterSignOut:(BOOL)out reason:(int64_t)reason completion:(id)completion
{
  outCopy = out;
  completionCopy = completion;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy updatePolitelyAfterSignOut:outCopy reason:reason completion:completionCopy];
}

- (void)updatePolitelyAfterSignIn:(BOOL)in reason:(int64_t)reason completion:(id)completion
{
  inCopy = in;
  completionCopy = completion;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy updatePolitelyAfterSignIn:inCopy reason:reason completion:completionCopy];
}

- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion
{
  politelyCopy = politely;
  completionCopy = completion;
  [(BDSJaliscoDAAPClient *)self setFamilyUpdateInProgress:1];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = sub_1E4604480;
  v15 = &unk_1E8759D88;
  selfCopy = self;
  v17 = completionCopy;
  v9 = completionCopy;
  v10 = _Block_copy(&v12);
  v11 = [(BDSJaliscoDAAPClient *)self serviceProxy:v12];
  [v11 updateFamilyPolitely:politelyCopy reason:reason completion:v10];
}

- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error
{
  politelyCopy = politely;
  errorCopy = error;
  [(BDSJaliscoDAAPClient *)self setFamilyUpdateInProgress:1];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = sub_1E46045D0;
  v15 = &unk_1E8759C90;
  selfCopy = self;
  v17 = errorCopy;
  v9 = errorCopy;
  v10 = _Block_copy(&v12);
  v11 = [(BDSJaliscoDAAPClient *)self serviceProxy:v12];
  [v11 updateFamilyPolitely:politelyCopy reason:reason completionWithError:v10];
}

- (void)setItemHidden:(BOOL)hidden forStoreID:(id)d completion:(id)completion
{
  hiddenCopy = hidden;
  completionCopy = completion;
  dCopy = d;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy setItemHidden:hiddenCopy forStoreID:dCopy completion:completionCopy];
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy fetchAllHiddenItemStoreIDsWithCompletion:completionCopy];
}

- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy resetPurchasedTokenForStoreIDs:dsCopy completion:completionCopy];
}

- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy hideItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy deleteItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy resetStaleJaliscoDatabaseWithCompletion:completionCopy];
}

@end