@interface DNDContact(Contacts)
+ (id)contactWithCNContact:()Contacts;
+ (id)keysToFetch;
- (id)sanitizedContactWithContactStore:()Contacts withError:;
@end

@implementation DNDContact(Contacts)

+ (id)contactWithCNContact:()Contacts
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D05A28]);
  identifier = [v3 identifier];
  [v4 setContactIdentifier:identifier];

  givenName = [v3 givenName];
  [v4 setFirstName:givenName];

  middleName = [v3 middleName];
  [v4 setMiddleName:middleName];

  familyName = [v3 familyName];
  [v4 setLastName:familyName];

  nickname = [v3 nickname];
  [v4 setNickName:nickname];

  organizationName = [v3 organizationName];
  [v4 setOrganizationName:organizationName];

  v11 = [MEMORY[0x277CBEB58] set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  emailAddresses = [v3 emailAddresses];
  v13 = [emailAddresses countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(emailAddresses);
        }

        value = [*(*(&v34 + 1) + 8 * i) value];
        [v11 addObject:value];
      }

      v14 = [emailAddresses countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v14);
  }

  [v4 setEmailAddresses:v11];
  v18 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29 = v3;
  phoneNumbers = [v3 phoneNumbers];
  v20 = [phoneNumbers countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        value2 = [*(*(&v30 + 1) + 8 * j) value];
        stringValue = [value2 stringValue];

        v26 = [MEMORY[0x277D058F0] normalizePhoneNumber:stringValue];
        [v18 addObject:v26];
      }

      v21 = [phoneNumbers countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  [v4 setPhoneNumbers:v18];
  v27 = [v4 copy];

  return v27;
}

+ (id)keysToFetch
{
  if (keysToFetch_onceToken != -1)
  {
    +[DNDContact(Contacts) keysToFetch];
  }

  v2 = keysToFetch_keys;

  return v2;
}

- (id)sanitizedContactWithContactStore:()Contacts withError:
{
  v6 = a3;
  selfCopy = self;
  keysToFetch = [MEMORY[0x277D058F0] keysToFetch];
  contactIdentifier = [selfCopy contactIdentifier];
  if (!contactIdentifier)
  {
    goto LABEL_5;
  }

  phoneNumbers = [selfCopy phoneNumbers];
  if ([phoneNumbers count])
  {
    emailAddresses = [selfCopy emailAddresses];
    v12 = [emailAddresses count];

    if (v12)
    {
      contactIdentifier = 0;
LABEL_5:
      v13 = selfCopy;
      goto LABEL_14;
    }
  }

  else
  {
  }

  contactIdentifier2 = [selfCopy contactIdentifier];
  v19 = 0;
  v15 = [v6 unifiedContactWithIdentifier:contactIdentifier2 keysToFetch:keysToFetch error:&v19];
  contactIdentifier = v19;

  v13 = selfCopy;
  if (v15)
  {
    v13 = [MEMORY[0x277D058F0] contactWithCNContact:v15];
  }

  if (contactIdentifier)
  {
    v16 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
    {
      [(DNDContact(Contacts) *)selfCopy sanitizedContactWithContactStore:contactIdentifier withError:v16];
      if (!a4)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (a4)
    {
LABEL_12:
      v17 = contactIdentifier;
      *a4 = contactIdentifier;
    }
  }

LABEL_13:

LABEL_14:

  return v13;
}

- (void)sanitizedContactWithContactStore:()Contacts withError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Sanitizing contact %{public}@ failed: error=%{public}@", &v3, 0x16u);
}

@end