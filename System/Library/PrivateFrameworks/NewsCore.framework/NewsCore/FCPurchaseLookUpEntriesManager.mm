@interface FCPurchaseLookUpEntriesManager
- (id)initWithLocalStore:(id *)store;
- (id)lookupEntriesByTagID;
- (void)addEntryWithTagID:(void *)d purchaseID:(void *)iD lastVerificationTime:(void *)time lastVerificationFailureTime:(uint64_t)failureTime purchaseType:(uint64_t)type purchaseValidationState:(char)state isNewsAppPurchase:(void *)purchase dateOfExpiration:(char)self0 hasShownRenewalNotice:;
- (void)removeEntry:(uint64_t)entry;
- (void)removeEntryForTagID:(uint64_t)d;
- (void)updateEntry:(uint64_t)entry;
@end

@implementation FCPurchaseLookUpEntriesManager

- (id)lookupEntriesByTagID
{
  if (self)
  {
    self = [self[2] copy];
    v1 = vars8;
  }

  return self;
}

- (id)initWithLocalStore:(id *)store
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (store)
  {
    v30.receiver = store;
    v30.super_class = FCPurchaseLookUpEntriesManager;
    v5 = objc_msgSendSuper2(&v30, sel_init);
    store = v5;
    if (v5)
    {
      v28 = v4;
      objc_storeStrong(v5 + 1, a2);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v7 = store[2];
      store[2] = dictionary;

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      allKeys = [store[1] allKeys];
      v9 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        v12 = 0x1E695D000uLL;
        v13 = @"pl-";
        do
        {
          v14 = 0;
          v29 = v10;
          do
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(allKeys);
            }

            v15 = *(*(&v31 + 1) + 8 * v14);
            objc_opt_class();
            v16 = [store[1] objectForKey:v15];
            if (v16)
            {
              if (objc_opt_isKindOfClass())
              {
                v17 = v16;
              }

              else
              {
                v17 = 0;
              }
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;

            if (v18 && [v15 hasPrefix:v13])
            {
              v19 = [[FCPurchaseLookUpEntry alloc] initWithEntryID:v15 dictionaryRepresentation:v18];
              if (v19)
              {
                v20 = store[2];
                [(FCPurchaseLookUpEntry *)v19 tagID];
                v21 = v11;
                storeCopy = store;
                v23 = v12;
                v24 = allKeys;
                v26 = v25 = v13;
                [v20 setObject:v19 forKey:v26];

                v13 = v25;
                allKeys = v24;
                v12 = v23;
                store = storeCopy;
                v11 = v21;
                v10 = v29;
              }
            }

            ++v14;
          }

          while (v10 != v14);
          v10 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v10);
      }

      v4 = v28;
    }
  }

  return store;
}

- (void)addEntryWithTagID:(void *)d purchaseID:(void *)iD lastVerificationTime:(void *)time lastVerificationFailureTime:(uint64_t)failureTime purchaseType:(uint64_t)type purchaseValidationState:(char)state isNewsAppPurchase:(void *)purchase dateOfExpiration:(char)self0 hasShownRenewalNotice:
{
  if (self)
  {
    purchaseCopy = purchase;
    timeCopy = time;
    iDCopy = iD;
    dCopy = d;
    v20 = a2;
    v21 = [FCPurchaseLookUpEntry alloc];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"pl-", v20];
    LOBYTE(v29) = expiration;
    LOBYTE(v28) = state;
    v32 = [(FCPurchaseLookUpEntry *)v21 initWithEntryID:v22 tagID:v20 purchaseID:dCopy lastVerificationTime:iDCopy lastVerificationFailureTime:timeCopy purchaseType:failureTime purchaseValidationState:type isNewsAppPurchase:v28 dateOfExpiration:purchaseCopy hasShownRenewalNotice:v29];

    v23 = *(self + 16);
    tagID = [(FCPurchaseLookUpEntry *)v32 tagID];
    [v23 fc_safelySetObject:v32 forKey:tagID];

    v25 = *(self + 8);
    dictionaryRepresentation = [(FCPurchaseLookUpEntry *)v32 dictionaryRepresentation];
    identifier = [(FCPurchaseLookUpEntry *)v32 identifier];
    [v25 setObject:dictionaryRepresentation forKey:identifier];
  }
}

- (void)updateEntry:(uint64_t)entry
{
  v10 = a2;
  if (entry)
  {
    tagID = [v10 tagID];

    if (tagID)
    {
      v4 = *(entry + 16);
      v5 = [v10 copy];
      tagID2 = [v10 tagID];
      [v4 fc_safelySetObject:v5 forKey:tagID2];
    }

    v7 = *(entry + 8);
    dictionaryRepresentation = [v10 dictionaryRepresentation];
    identifier = [v10 identifier];
    [v7 setObject:dictionaryRepresentation forKey:identifier];
  }
}

- (void)removeEntry:(uint64_t)entry
{
  if (entry)
  {
    tagID = [a2 tagID];
    [(FCPurchaseLookUpEntriesManager *)entry removeEntryForTagID:tagID];
  }
}

- (void)removeEntryForTagID:(uint64_t)d
{
  v7 = a2;
  if (d)
  {
    if (v7)
    {
      [*(d + 16) removeObjectForKey:v7];
    }

    v3 = *(d + 8);
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = [v4 stringWithFormat:@"%@%@", @"pl-", v7];
    [v5 removeObjectForKey:v6];
  }
}

@end