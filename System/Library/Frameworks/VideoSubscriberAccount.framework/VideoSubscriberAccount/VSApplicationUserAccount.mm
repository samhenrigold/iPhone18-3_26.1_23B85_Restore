@interface VSApplicationUserAccount
+ (id)applicationUserAccountsFromUserAccounts:(id)accounts;
+ (id)userAccountsFromApplicationUserAccounts:(id)accounts ForProviderID:(id)d allowedBundleIDs:(id)ds;
- (VSApplicationUserAccount)init;
- (VSApplicationUserAccount)initWithUserAccount:(id)account;
- (id)userAccountForProviderID:(id)d allowedBundleIDs:(id)ds;
@end

@implementation VSApplicationUserAccount

- (VSApplicationUserAccount)init
{
  v3.receiver = self;
  v3.super_class = VSApplicationUserAccount;
  return [(VSApplicationUserAccount *)&v3 init];
}

- (VSApplicationUserAccount)initWithUserAccount:(id)account
{
  accountCopy = account;
  v38.receiver = self;
  v38.super_class = VSApplicationUserAccount;
  v6 = [(VSApplicationUserAccount *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originatingUserAccount, account);
    updateURL = [accountCopy updateURL];
    absoluteString = [updateURL absoluteString];
    v10 = [absoluteString copy];
    updateURL = v7->_updateURL;
    v7->_updateURL = v10;

    v7->_requiresSystemTrust = [accountCopy requiresSystemTrust];
    if (![accountCopy sourceType])
    {
      sourceIdentifier = [accountCopy sourceIdentifier];
      v13 = [sourceIdentifier copy];
      bundleId = v7->_bundleId;
      v7->_bundleId = v13;
    }

    identifier = [accountCopy identifier];
    v16 = [identifier copy];
    identifier = v7->_identifier;
    v7->_identifier = v16;

    v7->_accountType = [accountCopy accountType];
    v7->_signedOut = [accountCopy isSignedOut];
    subscriptionBillingCycleEndDate = [accountCopy subscriptionBillingCycleEndDate];
    v19 = [subscriptionBillingCycleEndDate copy];
    subscriptionBillingCycleEndDate = v7->_subscriptionBillingCycleEndDate;
    v7->_subscriptionBillingCycleEndDate = v19;

    tierIdentifiers = [accountCopy tierIdentifiers];
    v22 = [tierIdentifiers copy];
    tierIdentifiers = v7->_tierIdentifiers;
    v7->_tierIdentifiers = v22;

    billingIdentifier = [accountCopy billingIdentifier];
    v25 = [billingIdentifier copy];
    billingIdentifier = v7->_billingIdentifier;
    v7->_billingIdentifier = v25;

    authenticationData = [accountCopy authenticationData];
    v28 = [authenticationData copy];
    authenticationData = v7->_authenticationData;
    v7->_authenticationData = v28;

    v7->_deviceCategory = [accountCopy deviceCategory];
    appleSubscription = [accountCopy appleSubscription];

    if (appleSubscription)
    {
      v31 = [VSApplicationAppleSubscription alloc];
      appleSubscription2 = [accountCopy appleSubscription];

      if (!appleSubscription2)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [userAccount appleSubscription] parameter must not be nil."];
      }

      appleSubscription3 = [accountCopy appleSubscription];
      v34 = [appleSubscription3 copy];
      v35 = [(VSApplicationAppleSubscription *)v31 initWithAppleSubscription:v34];
      appleSubscription = v7->_appleSubscription;
      v7->_appleSubscription = v35;
    }
  }

  return v7;
}

- (id)userAccountForProviderID:(id)d allowedBundleIDs:(id)ds
{
  dCopy = d;
  dsCopy = ds;
  bundleId = [(VSApplicationUserAccount *)self bundleId];
  bundleId2 = [(VSApplicationUserAccount *)self bundleId];
  if (!bundleId2)
  {
    goto LABEL_6;
  }

  v10 = bundleId2;
  bundleId3 = [(VSApplicationUserAccount *)self bundleId];

  if (!bundleId3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self bundleId] parameter must not be nil."];
  }

  bundleId4 = [(VSApplicationUserAccount *)self bundleId];
  v13 = [dsCopy containsObject:bundleId4];

  if (v13)
  {
    v14 = 0;
  }

  else
  {
LABEL_6:
    v15 = VSDefaultLogObject(bundleId2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, "JS User Account with no bundle ID, setting source type to VSUserAccountSourceTypeProvider", v37, 2u);
    }

    v16 = dCopy;
    v14 = 2;
    bundleId = v16;
  }

  updateURL = [(VSApplicationUserAccount *)self updateURL];

  if (!updateURL)
  {
    goto LABEL_13;
  }

  v18 = MEMORY[0x277CBEBC0];
  updateURL2 = [(VSApplicationUserAccount *)self updateURL];

  if (!updateURL2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self updateURL] parameter must not be nil."];
  }

  updateURL3 = [(VSApplicationUserAccount *)self updateURL];
  updateURL = [v18 URLWithString:updateURL3];

  if (!updateURL)
  {
    updateURL = VSErrorLogObject(v21);
    if (os_log_type_enabled(updateURL, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationUserAccount userAccountForProviderID:updateURL allowedBundleIDs:?];
    }

    v22 = 0;
  }

  else
  {
LABEL_13:
    v22 = [[VSUserAccount alloc] initWithAccountType:[(VSApplicationUserAccount *)self accountType] updateURL:updateURL sourceType:v14 sourceIdentifier:bundleId];
    identifier = [(VSApplicationUserAccount *)self identifier];
    v24 = [identifier copy];
    [(VSUserAccount *)v22 setIdentifier:v24];

    [(VSUserAccount *)v22 setSignedOut:[(VSApplicationUserAccount *)self isSignedOut]];
    subscriptionBillingCycleEndDate = [(VSApplicationUserAccount *)self subscriptionBillingCycleEndDate];
    v26 = [subscriptionBillingCycleEndDate copy];
    [(VSUserAccount *)v22 setSubscriptionBillingCycleEndDate:v26];

    tierIdentifiers = [(VSApplicationUserAccount *)self tierIdentifiers];
    v28 = [tierIdentifiers copy];
    [(VSUserAccount *)v22 setTierIdentifiers:v28];

    billingIdentifier = [(VSApplicationUserAccount *)self billingIdentifier];
    v30 = [billingIdentifier copy];
    [(VSUserAccount *)v22 setBillingIdentifier:v30];

    authenticationData = [(VSApplicationUserAccount *)self authenticationData];
    v32 = [authenticationData copy];
    [(VSUserAccount *)v22 setAuthenticationData:v32];

    appleSubscription = [(VSApplicationUserAccount *)self appleSubscription];
    v33AppleSubscription = [appleSubscription appleSubscription];
    v35 = [v33AppleSubscription copy];
    [(VSUserAccount *)v22 setAppleSubscription:v35];
  }

  return v22;
}

+ (id)userAccountsFromApplicationUserAccounts:(id)accounts ForProviderID:(id)d allowedBundleIDs:(id)ds
{
  v23 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  dCopy = d;
  dsCopy = ds;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = accountsCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) userAccountForProviderID:dCopy allowedBundleIDs:{dsCopy, v18}];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (id)applicationUserAccountsFromUserAccounts:(id)accounts
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_alloc(objc_opt_class());
        v10 = [v9 initWithUserAccount:{v8, v12}];
        [v3 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v3;
}

@end