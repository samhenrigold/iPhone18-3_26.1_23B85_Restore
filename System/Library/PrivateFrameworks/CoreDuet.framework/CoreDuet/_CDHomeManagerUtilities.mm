@interface _CDHomeManagerUtilities
+ (id)sharedInstance;
- (_CDHomeManagerUtilities)init;
- (id)contactKeysToFetch;
- (id)contactsInHome;
@end

@implementation _CDHomeManagerUtilities

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken20_1 != -1)
  {
    +[_CDHomeManagerUtilities sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_4;

  return v3;
}

- (_CDHomeManagerUtilities)init
{
  v9.receiver = self;
  v9.super_class = _CDHomeManagerUtilities;
  v2 = [(_CDHomeManagerUtilities *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(getHMHomeManagerConfigurationClass()) initWithOptions:8 cachePolicy:2];
    v4 = [objc_alloc(getHMHomeManagerClass()) initWithHomeMangerConfiguration:v3];
    homeManager = v2->_homeManager;
    v2->_homeManager = v4;

    v6 = objc_alloc_init(getCNContactStoreClass());
    contactStore = v2->_contactStore;
    v2->_contactStore = v6;
  }

  return v2;
}

- (id)contactsInHome
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v28 = objc_opt_new();
  [(HMHomeManager *)self->_homeManager setDelegate:self];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  obj = [(HMHomeManager *)self->_homeManager homes];
  v4 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        users = [v8 users];
        v10 = [users countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(users);
              }

              v14 = *(*(&v35 + 1) + 8 * j);
              userID = [v14 userID];

              if (userID)
              {
                userID2 = [v14 userID];
                [v3 addObject:userID2];
              }
            }

            v11 = [users countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v5);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v3;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [getCNContactClass() predicateForContactsMatchingEmailAddress:*(*(&v31 + 1) + 8 * k)];
        contactStore = selfCopy->_contactStore;
        contactKeysToFetch = [(_CDHomeManagerUtilities *)selfCopy contactKeysToFetch];
        v25 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v22 keysToFetch:contactKeysToFetch error:0];
        firstObject = [v25 firstObject];

        if (firstObject)
        {
          [v28 addObject:firstObject];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v19);
  }

  return v28;
}

- (id)contactKeysToFetch
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = getCNContactIdentifierKey();
  v13[0] = v2;
  v3 = getCNContactBirthdayKey();
  v13[1] = v3;
  v4 = getCNContactRelationsKey();
  v13[2] = v4;
  v5 = getCNContactGivenNameKey();
  v13[3] = v5;
  v6 = getCNContactMiddleNameKey();
  v13[4] = v6;
  v7 = getCNContactFamilyNameKey();
  v13[5] = v7;
  v8 = getCNContactNicknameKey();
  v13[6] = v8;
  v9 = getCNContactPhoneNumbersKey();
  v13[7] = v9;
  v10 = getCNContactEmailAddressesKey();
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

@end