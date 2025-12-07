@interface _DAContactsAccountABLegacyProvider
- (_DAContactsAccountABLegacyProvider)initWithAddressBook:(void *)book;
- (id)accountByCreatingAccountWithExternalIdentifier:(id)identifier;
- (id)accountForContainerWithIdentifier:(id)identifier;
- (id)allAccounts;
- (id)fetchedAccountWithExternalIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation _DAContactsAccountABLegacyProvider

- (_DAContactsAccountABLegacyProvider)initWithAddressBook:(void *)book
{
  v6.receiver = self;
  v6.super_class = _DAContactsAccountABLegacyProvider;
  v4 = [(_DAContactsAccountABLegacyProvider *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(book);
  }

  return v4;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
    self->_addressBook = 0;
  }

  v4.receiver = self;
  v4.super_class = _DAContactsAccountABLegacyProvider;
  [(_DAContactsAccountABLegacyProvider *)&v4 dealloc];
}

- (id)fetchedAccountWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(_DAContactsAccountABLegacyProvider *)self addressBook];
  v5 = ABAddressBookCopyAccountWithIdentifier();

  if (v5)
  {
    v6 = [[DAABLegacyAccount alloc] initWithABAccout:CFAutorelease(v5)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountByCreatingAccountWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = ABAccountCreate();
  if (v5)
  {
    ABAccountSetIdentifier();
    ABAddressBookAddRecord([(_DAContactsAccountABLegacyProvider *)self addressBook], v5, 0);
    [(_DAContactsAccountABLegacyProvider *)self addressBook];
    ABAddressBookProcessAddedRecords();
    [(_DAContactsAccountABLegacyProvider *)self addressBook];
    ABDatabaseIntegrityCheckWithAddressBook();
    v5 = [[DAABLegacyAccount alloc] initWithABAccout:CFAutorelease(v5)];
  }

  return v5;
}

- (id)allAccounts
{
  v18 = *MEMORY[0x277D85DE8];
  [(_DAContactsAccountABLegacyProvider *)self addressBook];
  v2 = ABAddressBookCopyArrayOfAllAccounts();
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [DAABLegacyAccount alloc];
        v11 = [(DAABLegacyAccount *)v10 initWithABAccout:v9, v13];
        [array addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)accountForContainerWithIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(_DAContactsAccountABLegacyProvider *)self addressBook];
  v9[0] = identifierCopy;
  [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = ABAddressBookCopySourcesWithUUIDs();
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    [(_DAContactsAccountABLegacyProvider *)self addressBook];
    AccountForSource = ABAddressBookGetAccountForSource();
    if (AccountForSource)
    {
      AccountForSource = [[DAABLegacyAccount alloc] initWithABAccout:AccountForSource];
    }
  }

  else
  {
    AccountForSource = 0;
  }

  return AccountForSource;
}

@end