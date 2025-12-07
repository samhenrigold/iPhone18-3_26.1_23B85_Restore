@interface DMDManagedAssetManager
- (void)promptUserForiTunesAccount:(id)account accountNameEditable:(BOOL)editable canCreateNewAccount:(BOOL)newAccount assertion:(id)assertion completionBlock:(id)block;
- (void)promptUserToLoginToiTunesIfNeededTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block;
@end

@implementation DMDManagedAssetManager

- (void)promptUserToLoginToiTunesIfNeededTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  assertionCopy = assertion;
  blockCopy = block;
  v14 = +[SSAccountStore defaultStore];
  activeAccount = [v14 activeAccount];

  if (!activeAccount)
  {
    v18 = +[DMDUserNotificationManager sharedManager];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004FD14;
    v19[3] = &unk_1000CF4A0;
    v19[4] = self;
    v20 = assertionCopy;
    v21 = blockCopy;
    [v18 promptUserToLogIntoiTunesWithTitle:titleCopy message:messageCopy assertion:v20 completionBlock:v19];

    v17 = v20;
    goto LABEL_5;
  }

  if (blockCopy)
  {
    v16 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FCCC;
    block[3] = &unk_1000CF450;
    v24 = blockCopy;
    v23 = assertionCopy;
    dispatch_async(v16, block);

    v17 = v24;
LABEL_5:
  }
}

- (void)promptUserForiTunesAccount:(id)account accountNameEditable:(BOOL)editable canCreateNewAccount:(BOOL)newAccount assertion:(id)assertion completionBlock:(id)block
{
  newAccountCopy = newAccount;
  editableCopy = editable;
  accountCopy = account;
  blockCopy = block;
  if (accountCopy)
  {
    v12 = [[SSMutableAuthenticationContext alloc] initWithAccount:accountCopy];
  }

  else
  {
    v12 = +[SSMutableAuthenticationContext contextForSignIn];
  }

  v13 = v12;
  [v12 setPromptStyle:0];
  [v13 setAccountNameEditable:editableCopy];
  [v13 setCanCreateNewAccount:newAccountCopy];
  v14 = [DMDSSAuthenticationRequestDelegate delegateWithAuthenticationContext:v13];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004FF80;
  v16[3] = &unk_1000CF4C8;
  v17 = blockCopy;
  v15 = blockCopy;
  [v14 startWithCompletionBlock:v16];
}

@end