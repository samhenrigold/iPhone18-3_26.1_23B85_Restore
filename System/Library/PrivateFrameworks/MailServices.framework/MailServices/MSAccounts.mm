@interface MSAccounts
+ (BOOL)canSendMailSourceAccountManagement:(int)management;
+ (BOOL)deleteAccountsWithUniqueIdentifiers:(id)identifiers error:(id *)error;
+ (BOOL)hasActiveAccounts;
+ (BOOL)setPushStateForMailboxWithPath:(id)path account:(id)account pushState:(BOOL)state error:(id *)error;
+ (id)attachmentCapabilities;
+ (id)customSignatureForSendingEmailAddress:(id)address;
+ (void)accountValuesForKeys:(id)keys originatingBundleID:(id)d sourceAccountManagement:(int)management launchMobileMail:(BOOL)mail completionBlock:(id)block;
+ (void)mailboxListingForAccountWithUniqueIdentifier:(id)identifier keys:(id)keys completionBlock:(id)block;
- (void)_listAccountKeys:(id)keys originatingBundleID:(id)d sourceAccountManagement:(int)management handler:(id)handler;
- (void)_simulateServicesMethod:(id)method arguments:(id)arguments callback:(id)callback;
@end

@implementation MSAccounts

+ (BOOL)hasActiveAccounts
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v2 setShouldLaunchMobileMail:1];
  v3 = dispatch_semaphore_create(0);
  array = [MEMORY[0x1E695DEC8] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MSAccounts_hasActiveAccounts__block_invoke;
  v7[3] = &unk_1E855E970;
  v9 = &v10;
  v5 = v3;
  v8 = v5;
  [(MSAccounts *)v2 _listAccountKeys:array originatingBundleID:0 sourceAccountManagement:1 handler:v7];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v3;
}

void __31__MSAccounts_hasActiveAccounts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v5 && [v6 count])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)accountValuesForKeys:(id)keys originatingBundleID:(id)d sourceAccountManagement:(int)management launchMobileMail:(BOOL)mail completionBlock:(id)block
{
  mailCopy = mail;
  v9 = *&management;
  keysCopy = keys;
  dCopy = d;
  blockCopy = block;
  v13 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v13 setShouldLaunchMobileMail:mailCopy];
  [(MSAccounts *)v13 _listAccountKeys:keysCopy originatingBundleID:dCopy sourceAccountManagement:v9 handler:blockCopy];
}

- (void)_listAccountKeys:(id)keys originatingBundleID:(id)d sourceAccountManagement:(int)management handler:(id)handler
{
  v7 = *&management;
  v21[3] = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  dCopy = d;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  if (!dCopy)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    dCopy = [mainBundle bundleIdentifier];
  }

  v20[0] = @"keys";
  v20[1] = @"bundleID";
  v21[0] = keysCopy;
  v21[1] = dCopy;
  v20[2] = @"sourceAccountManagement";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v21[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__MSAccounts__listAccountKeys_originatingBundleID_sourceAccountManagement_handler___block_invoke;
  v18[3] = &unk_1E855E998;
  v17 = handlerCopy;
  v19 = v17;
  [(MSService *)self _callServicesMethod:@"ListAccounts" arguments:v16 callback:v18];

  objc_autoreleasePoolPop(v13);
}

void __83__MSAccounts__listAccountKeys_originatingBundleID_sourceAccountManagement_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 objectForKey:@"accounts"];
  (*(*(a1 + 32) + 16))();
}

+ (BOOL)canSendMailSourceAccountManagement:(int)management
{
  v3 = *&management;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v6 = getMCProfileConnectionClass_softClass;
  v15 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getMCProfileConnectionClass_block_invoke;
    v11[3] = &unk_1E855EA60;
    v11[4] = &v12;
    __getMCProfileConnectionClass_block_invoke(v11);
    v6 = v13[3];
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);
  sharedConnection = [v6 sharedConnection];
  v9 = [sharedConnection canSendMail:bundleIdentifier sourceAccountManagement:v3];

  return v9;
}

+ (id)customSignatureForSendingEmailAddress:(id)address
{
  v21[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v4 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v4 setShouldLaunchMobileMail:1];
  if (addressCopy)
  {
    v5 = addressCopy;
  }

  else
  {
    v5 = &stru_1F541BFA8;
  }

  v20 = @"sendingEmailAddress";
  v21[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MSAccounts_customSignatureForSendingEmailAddress___block_invoke;
  v11[3] = &unk_1E855E9C0;
  v12 = v7;
  v13 = &v14;
  v8 = v7;
  [(MSService *)v4 _callServicesMethod:@"CustomSignature" arguments:v6 callback:v11];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __52__MSAccounts_customSignatureForSendingEmailAddress___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKey:@"signature"];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)deleteAccountsWithUniqueIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v6 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v6 setShouldLaunchMobileMail:1];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{identifiersCopy, @"accountUniqueIdentifiers", 0}];
  v8 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__MSAccounts_deleteAccountsWithUniqueIdentifiers_error___block_invoke;
  v12[3] = &unk_1E855E9E8;
  v15 = &v16;
  v13 = v8;
  v14 = &v22;
  v9 = v8;
  [(MSService *)v6 _callServicesMethod:@"RemoveAccounts" arguments:v7 callback:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v23 + 24);
  if (error && (v23[3] & 1) == 0)
  {
    *error = v17[5];
    v10 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10 & 1;
}

void __56__MSAccounts_deleteAccountsWithUniqueIdentifiers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 objectForKey:@"success"];
  *(*(*(a1 + 40) + 8) + 24) = [v6 BOOLValue];

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)mailboxListingForAccountWithUniqueIdentifier:(id)identifier keys:(id)keys completionBlock:(id)block
{
  v22[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  keysCopy = keys;
  blockCopy = block;
  v10 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v10 setShouldLaunchMobileMail:1];
  v11 = objc_autoreleasePoolPush();
  v20 = identifierCopy;
  v21[0] = @"accountUniqueIdentifiers";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v21[1] = @"keys";
  v22[0] = v12;
  v22[1] = keysCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v14 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__MSAccounts_mailboxListingForAccountWithUniqueIdentifier_keys_completionBlock___block_invoke;
  v17[3] = &unk_1E855EA10;
  v15 = blockCopy;
  v18 = v14;
  v19 = v15;
  v16 = v14;
  [(MSService *)v10 _callServicesMethod:@"ListMailboxes" arguments:v13 callback:v17];
  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v11);
}

void __80__MSAccounts_mailboxListingForAccountWithUniqueIdentifier_keys_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 objectForKey:@"mailboxes"];
  (*(*(a1 + 40) + 16))();
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)setPushStateForMailboxWithPath:(id)path account:(id)account pushState:(BOOL)state error:(id *)error
{
  stateCopy = state;
  v31[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  accountCopy = account;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v11 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v11 setShouldLaunchMobileMail:1];
  v12 = objc_autoreleasePoolPush();
  v29 = accountCopy;
  v30[0] = @"accountUniqueIdentifiers";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v31[0] = v13;
  v31[1] = pathCopy;
  v30[1] = @"relativePath";
  v30[2] = @"pushState";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:stateCopy];
  v31[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__MSAccounts_setPushStateForMailboxWithPath_account_pushState_error___block_invoke;
  v18[3] = &unk_1E855EA38;
  v18[4] = &v25;
  v18[5] = &v19;
  [(MSService *)v11 _callServicesMethod:@"MailboxPushState" arguments:v15 callback:v18];

  objc_autoreleasePoolPop(v12);
  v16 = *(v26 + 24);
  if (error && (v26[3] & 1) == 0)
  {
    *error = v20[5];
    v16 = *(v26 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v16 & 1;
}

void __69__MSAccounts_setPushStateForMailboxWithPath_account_pushState_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 objectForKey:@"success"];
  *(*(*(a1 + 32) + 8) + 24) = [v6 BOOLValue];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

+ (id)attachmentCapabilities
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v2 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v2 setShouldLaunchMobileMail:1];
  v3 = objc_autoreleasePoolPush();
  v4 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__MSAccounts_attachmentCapabilities__block_invoke;
  v8[3] = &unk_1E855E9C0;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [(MSService *)v2 _callServicesMethod:@"AttachmentCapabilities" arguments:MEMORY[0x1E695E0F8] callback:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v3);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __36__MSAccounts_attachmentCapabilities__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:@"capabilities"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_simulateServicesMethod:(id)method arguments:(id)arguments callback:(id)callback
{
  v21[16] = *MEMORY[0x1E69E9840];
  methodCopy = method;
  argumentsCopy = arguments;
  callbackCopy = callback;
  if ([methodCopy isEqualToString:@"ListAccounts"])
  {
    v20[0] = @"uniqueID";
    v20[1] = @"fullUserName";
    v21[0] = @"6ADE0CAF-7F5B-4251-A792-71ECB04D5617";
    v21[1] = @"Example User";
    v20[2] = @"username";
    v20[3] = @"emailAddresses";
    v21[2] = @"example";
    v21[3] = &unk_1F541F1B8;
    v20[4] = @"emailAddressAndAliases";
    v20[5] = @"fromEmailAddresses";
    v21[4] = &unk_1F541F1D0;
    v21[5] = &unk_1F541F1E8;
    v20[6] = @"fromEmailAddressesIncludingDisabled";
    v20[7] = @"defaultAddress";
    v21[6] = &unk_1F541F200;
    v21[7] = &unk_1F541F218;
    v20[8] = @"isDefaultSendingAccount";
    v20[9] = @"isActive";
    v21[8] = &unk_1F541F230;
    v21[9] = &unk_1F541F230;
    v20[10] = @"restrictsRepliesAndForwards";
    v20[11] = @"sendingRestricted";
    v21[10] = &unk_1F541F248;
    v21[11] = &unk_1F541F248;
    v20[12] = @"supportsThreadOperations";
    v20[13] = @"supportsMailDrop";
    v21[12] = &unk_1F541F230;
    v21[13] = &unk_1F541F230;
    v20[14] = @"isManaged";
    v20[15] = @"attachmentCapabilities";
    v21[14] = &unk_1F541F248;
    v21[15] = MEMORY[0x1E695E0F8];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:16];
    v17 = v11;
    v18 = @"accounts";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v19 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    callbackCopy[2](callbackCopy, v13, 0);
  }

  else
  {
    if (![methodCopy isEqualToString:@"CustomSignature"])
    {
      v14.receiver = self;
      v14.super_class = MSAccounts;
      [(MSService *)&v14 _simulateServicesMethod:methodCopy arguments:argumentsCopy callback:callbackCopy];
      goto LABEL_7;
    }

    v15 = @"signature";
    v16 = @"Sent from my iPhone Simulator";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    callbackCopy[2](callbackCopy, v11, 0);
  }

LABEL_7:
}

@end