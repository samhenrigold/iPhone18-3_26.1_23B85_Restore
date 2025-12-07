@interface _DAContactsAccountContactsProvider
- (_DAContactsAccountContactsProvider)initWithContactStore:(id)store;
- (id)accountByCreatingAccountWithExternalIdentifier:(id)identifier;
- (id)accountForContainerWithIdentifier:(id)identifier;
- (id)allAccounts;
- (id)fetchedAccountWithExternalIdentifier:(id)identifier;
@end

@implementation _DAContactsAccountContactsProvider

- (_DAContactsAccountContactsProvider)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _DAContactsAccountContactsProvider;
  v6 = [(_DAContactsAccountContactsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (id)fetchedAccountWithExternalIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277CBDA28] predicateForAccountWithExternalIdentifier:identifier];
  contactStore = [(_DAContactsAccountContactsProvider *)self contactStore];
  v6 = [contactStore accountsMatchingPredicate:v4 error:0];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [[DAContactsBasedAccount alloc] initWithAccount:firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accountByCreatingAccountWithExternalIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CBDA28];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithExternalIdentifier:identifierCopy];

  if (v5)
  {
    v6 = [[DAContactsBasedAccount alloc] initWithAccount:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)allAccounts
{
  v21 = *MEMORY[0x277D85DE8];
  contactStore = [(_DAContactsAccountContactsProvider *)self contactStore];
  v19 = 0;
  v3 = [contactStore accountsMatchingPredicate:0 error:&v19];
  v4 = v19;

  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [DAContactsBasedAccount alloc];
        v13 = [(DAContactsBasedAccount *)v12 initWithAccount:v11, v15];
        [array addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)accountForContainerWithIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277CBDA28] predicateForAccountForContainerWithIdentifier:identifier];
  contactStore = [(_DAContactsAccountContactsProvider *)self contactStore];
  v10 = 0;
  v6 = [contactStore accountsMatchingPredicate:v4 error:&v10];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [[DAContactsBasedAccount alloc] initWithAccount:firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end