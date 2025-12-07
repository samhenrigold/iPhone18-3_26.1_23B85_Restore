@interface BDSJaliscoDAAPServiceImpl
+ (BDSJaliscoDAAPServiceImpl)sharedClient;
- (BDSJaliscoDAAPServiceImpl)init;
- (BLJaliscoDAAPClientDelegate)daapClientDelegate;
- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion;
- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion;
- (void)setDaapClientDelegate:(id)delegate;
- (void)setItemHidden:(BOOL)hidden forStoreID:(id)d completion:(id)completion;
- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion;
- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error;
- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion;
- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error;
- (void)updatePolitely:(BOOL)politely uiManager:(id)manager reason:(int64_t)reason completion:(id)completion;
- (void)updatePolitelyAfterSignIn:(BOOL)in reason:(int64_t)reason completion:(id)completion;
- (void)updatePolitelyAfterSignOut:(BOOL)out reason:(int64_t)reason completion:(id)completion;
@end

@implementation BDSJaliscoDAAPServiceImpl

- (BDSJaliscoDAAPServiceImpl)init
{
  v9.receiver = self;
  v9.super_class = BDSJaliscoDAAPServiceImpl;
  v2 = [(BDSJaliscoDAAPServiceImpl *)&v9 init];
  if (v2)
  {
    v3 = +[BLJaliscoDAAPClient sharedClient];
    jaliscoClient = v2->_jaliscoClient;
    v2->_jaliscoClient = v3;

    jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)v2 jaliscoClient];

    if (!jaliscoClient)
    {
      v7 = sub_1000023E8(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001C00D8(v7);
      }

      return 0;
    }
  }

  return v2;
}

+ (BDSJaliscoDAAPServiceImpl)sharedClient
{
  os_unfair_lock_lock(&unk_100274A60);
  if (!qword_100274A58)
  {
    v2 = objc_alloc_init(BDSJaliscoDAAPServiceImpl);
    v3 = qword_100274A58;
    qword_100274A58 = v2;
  }

  os_unfair_lock_unlock(&unk_100274A60);
  v4 = qword_100274A58;

  return v4;
}

- (BLJaliscoDAAPClientDelegate)daapClientDelegate
{
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  delegate = [jaliscoClient delegate];

  return delegate;
}

- (void)setDaapClientDelegate:(id)delegate
{
  delegateCopy = delegate;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient setDelegate:delegateCopy];
}

- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error
{
  politelyCopy = politely;
  errorCopy = error;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient updatePolitely:politelyCopy reason:reason completionWithError:errorCopy];
}

- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion
{
  politelyCopy = politely;
  completionCopy = completion;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient updatePolitely:politelyCopy reason:reason completion:completionCopy];
}

- (void)updatePolitelyAfterSignOut:(BOOL)out reason:(int64_t)reason completion:(id)completion
{
  outCopy = out;
  completionCopy = completion;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient updatePolitelyAfterSignOut:outCopy reason:reason completion:completionCopy];
}

- (void)updatePolitelyAfterSignIn:(BOOL)in reason:(int64_t)reason completion:(id)completion
{
  inCopy = in;
  completionCopy = completion;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient updatePolitelyAfterSignIn:inCopy reason:reason completion:completionCopy];
}

- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion
{
  politelyCopy = politely;
  completionCopy = completion;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient updateFamilyPolitely:politelyCopy reason:reason completion:completionCopy];
}

- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error
{
  politelyCopy = politely;
  errorCopy = error;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient updateFamilyPolitely:politelyCopy reason:reason completionWithError:errorCopy];
}

- (void)setItemHidden:(BOOL)hidden forStoreID:(id)d completion:(id)completion
{
  hiddenCopy = hidden;
  completionCopy = completion;
  dCopy = d;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient setItemHidden:hiddenCopy forStoreID:dCopy completion:completionCopy];
}

- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient resetPurchasedTokenForStoreIDs:dsCopy completion:completionCopy];
}

- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient hideItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient fetchAllHiddenItemStoreIDsWithCompletion:completionCopy];
}

- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient deleteItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient resetStaleJaliscoDatabaseWithCompletion:completionCopy];
}

- (void)updatePolitely:(BOOL)politely uiManager:(id)manager reason:(int64_t)reason completion:(id)completion
{
  politelyCopy = politely;
  completionCopy = completion;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient updatePolitely:politelyCopy reason:reason completion:completionCopy];
}

@end