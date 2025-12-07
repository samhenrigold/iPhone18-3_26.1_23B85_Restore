@interface HFContactStore
+ (HFContactStore)defaultStore;
- (HFContactStore)init;
- (id)_fallbackContactWithEmailAddress:(id)address phoneNumber:(id)number;
- (id)_meContactWithEmailAddress:(id)address keys:(id)keys;
- (id)contactForEmailAddress:(id)address withKeys:(id)keys;
- (id)contactForPhoneNumber:(id)number withKeys:(id)keys;
- (id)contactForUserHandle:(id)handle withKeys:(id)keys;
@end

@implementation HFContactStore

+ (HFContactStore)defaultStore
{
  if (_MergedGlobals_223 != -1)
  {
    dispatch_once(&_MergedGlobals_223, &__block_literal_global_3_2);
  }

  v3 = qword_280E02C88;

  return v3;
}

void __30__HFContactStore_defaultStore__block_invoke_2()
{
  v0 = objc_alloc_init(HFContactStore);
  v1 = qword_280E02C88;
  qword_280E02C88 = v0;
}

- (HFContactStore)init
{
  v6.receiver = self;
  v6.super_class = HFContactStore;
  v2 = [(HFContactStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;
  }

  return v2;
}

- (id)contactForUserHandle:(id)handle withKeys:(id)keys
{
  handleCopy = handle;
  keysCopy = keys;
  if (handleCopy)
  {
    type = [handleCopy type];
    if (type == 1)
    {
      userID = [handleCopy userID];
      v10 = [(HFContactStore *)self contactForEmailAddress:userID withKeys:keysCopy];
      goto LABEL_9;
    }

    if (!type)
    {
      userID = [handleCopy userID];
      v10 = [(HFContactStore *)self _meContactWithEmailAddress:userID keys:keysCopy];
LABEL_9:
      v12 = v10;

      goto LABEL_10;
    }
  }

  v11 = HFLogForCategory(0x4CuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Cannot create contact because HFUserHandle is nil.", v14, 2u);
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)_meContactWithEmailAddress:(id)address keys:(id)keys
{
  v23 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  keysCopy = keys;
  v8 = keysCopy;
  if (addressCopy)
  {
    v9 = [keysCopy arrayByAddingObject:*MEMORY[0x277CBCFC0]];

    contactStore = [(HFContactStore *)self contactStore];
    v20 = 0;
    v11 = [contactStore unifiedMeContactMatchingEmailAddress:addressCopy keysToFetch:v9 error:&v20];
    v12 = v20;

    v8 = v9;
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_4;
      }

LABEL_8:
      v16 = HFLogForCategory(0x4CuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v12;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Error fetching me contact: %@", buf, 0xCu);
      }

      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    v9 = keysCopy;
  }

  contactStore2 = [(HFContactStore *)self contactStore];
  v19 = v12;
  v11 = [contactStore2 _ios_meContactWithKeysToFetch:v8 error:&v19];
  v15 = v19;

  v12 = v15;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v11)
  {
LABEL_5:
    v13 = v11;
    goto LABEL_12;
  }

LABEL_11:
  v13 = [(HFContactStore *)self _fallbackContactWithEmailAddress:addressCopy phoneNumber:0];
LABEL_12:
  v17 = v13;

  return v17;
}

- (id)contactForEmailAddress:(id)address withKeys:(id)keys
{
  v25 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  keysCopy = keys;
  if (addressCopy)
  {
    v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:addressCopy];
    contactStore = [(HFContactStore *)self contactStore];
    v20 = 0;
    v10 = [contactStore unifiedContactsMatchingPredicate:v8 keysToFetch:keysCopy error:&v20];
    v11 = v20;
    firstObject = [v10 firstObject];

    if (v11)
    {
      v13 = HFLogForCategory(0x4CuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = addressCopy;
        v23 = 2112;
        v24 = v11;
        _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Error fetching contact with email %@: %@", buf, 0x16u);
      }

      v14 = HFLogForCategory(0x4CuLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
        *buf = 134217984;
        v22 = v19;
        _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Contact Store access: %ld", buf, 0xCu);
      }
    }

    if (firstObject)
    {
      v15 = firstObject;
    }

    else
    {
      v15 = [(HFContactStore *)self _fallbackContactWithEmailAddress:addressCopy phoneNumber:0];
    }

    v17 = v15;
  }

  else
  {
    v16 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Email address for user is nil!", buf, 2u);
    }

    v17 = [(HFContactStore *)self _fallbackContactWithEmailAddress:0 phoneNumber:0];
  }

  return v17;
}

- (id)contactForPhoneNumber:(id)number withKeys:(id)keys
{
  v27 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  keysCopy = keys;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFContactStore.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"phoneNumberString"}];
  }

  v9 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:numberCopy];
  v10 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v9];
  contactStore = [(HFContactStore *)self contactStore];
  v22 = 0;
  v12 = [contactStore unifiedContactsMatchingPredicate:v10 keysToFetch:keysCopy error:&v22];
  v13 = v22;
  firstObject = [v12 firstObject];

  if (v13)
  {
    v15 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = numberCopy;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Error fetching contact with phone number %@: %@", buf, 0x16u);
    }

    v16 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
      *buf = 134217984;
      v24 = v20;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Contact Store access: %ld", buf, 0xCu);
    }
  }

  if (firstObject)
  {
    v17 = firstObject;
  }

  else
  {
    v17 = [(HFContactStore *)self _fallbackContactWithEmailAddress:0 phoneNumber:v9];
  }

  v18 = v17;

  return v18;
}

- (id)_fallbackContactWithEmailAddress:(id)address phoneNumber:(id)number
{
  v16[1] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  numberCopy = number;
  v7 = objc_alloc_init(MEMORY[0x277CBDB38]);
  v8 = v7;
  if (addressCopy)
  {
    [v7 setGivenName:addressCopy];
    stringValue = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:addressCopy];
    v16[0] = stringValue;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v8 setEmailAddresses:v10];
  }

  else
  {
    stringValue = [numberCopy stringValue];
    [v8 setGivenName:stringValue];
  }

  if (numberCopy)
  {
    v11 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:numberCopy];
    v15 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v8 setPhoneNumbers:v12];
  }

  v13 = [v8 copy];

  return v13;
}

@end