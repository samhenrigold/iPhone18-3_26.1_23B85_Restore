@interface MSPSharedTripContact
+ (BOOL)isHandleBlocked:(id)blocked;
+ (BOOL)isVirtualReceiver:(id)receiver;
+ (id)_propertiesForFetching;
+ (id)capabilityVersionsForVirtualReceiver:(id)receiver;
+ (id)contactsFromCNContact:(id)contact;
+ (id)contactsFromCNContact:(id)contact matchingHandles:(id)handles;
+ (id)contactsFromHandles:(id)handles;
+ (id)contactsFromIDSHandles:(id)handles;
+ (id)contactsFromVirtualReceiverHandles:(id)handles;
+ (id)iMessageVirtualReceiverWithName:(id)name;
+ (id)mapsVirtualReceiverWithName:(id)name receiverCapabilityVersion:(id)version;
+ (id)rcsVirtualReceiverWithName:(id)name;
+ (id)smsVirtualReceiverWithName:(id)name;
+ (id)virtualReceiverWithHandle:(id)handle;
+ (unint64_t)capabilityTypeForVirtualReceiver:(id)receiver;
+ (void)setAdditionalKeyDescriptorsForContactFetching:(id)fetching;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHandleBlocked;
- (BOOL)isPhoneNumber;
- (MSPSharedTripContact)initWithCoder:(id)coder;
- (MSPSharedTripContact)initWithContact:(id)contact handle:(id)handle;
- (MSPSharedTripContact)initWithContact:(id)contact labeledValue:(id)value;
- (MSPSharedTripContact)initWithContactHandle:(id)handle;
- (NSString)displayName;
- (NSString)handleForIDS;
- (id)_stringValue;
- (id)description;
- (id)handleForDeviceVersion:(unint64_t)version;
- (unint64_t)hash;
- (void)_populateFromContactUsingHandle:(id)handle;
- (void)startLiveUpdatesForCapabilityVersion:(unint64_t)version;
- (void)stopLiveUpdatesForCapabilityVersion:(unint64_t)version;
@end

@implementation MSPSharedTripContact

- (MSPSharedTripContact)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"contactHandle"];
  if (v4)
  {
    self = [(MSPSharedTripContact *)self initWithContactHandle:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    stringValue = [v5 stringValue];
    stringValue2 = [(MSPSharedTripContact *)self stringValue];
    if (stringValue == stringValue2)
    {
      v10 = 1;
    }

    else
    {
      stringValue3 = [v5 stringValue];
      stringValue4 = [(MSPSharedTripContact *)self stringValue];
      v10 = [stringValue3 isEqualToString:stringValue4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  stringValue = [(MSPSharedTripContact *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_displayName)
  {
    v11.receiver = self;
    v11.super_class = MSPSharedTripContact;
    v4 = [(MSPSharedTripContact *)&v11 description];
    displayName = self->_displayName;
    stringValue = [(MSPSharedTripContact *)self stringValue];
    [v3 stringWithFormat:@"%@ %@ (%@)", v4, displayName, stringValue];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MSPSharedTripContact;
    v4 = [(MSPSharedTripContact *)&v10 description];
    stringValue = [(MSPSharedTripContact *)self stringValue];
    [v3 stringWithFormat:@"%@ (%@)", v4, stringValue, v9];
  }
  v7 = ;

  return v7;
}

+ (id)_propertiesForFetching
{
  v23[17] = *MEMORY[0x277D85DE8];
  v2 = keyDescriptorsForFetching;
  if (!keyDescriptorsForFetching)
  {
    v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v23[0] = v3;
    descriptorForRequiredKeys = [MEMORY[0x277CBDAC8] descriptorForRequiredKeys];
    v5 = *MEMORY[0x277CBD068];
    v23[1] = descriptorForRequiredKeys;
    v23[2] = v5;
    v6 = *MEMORY[0x277CBD058];
    v23[3] = *MEMORY[0x277CBD000];
    v23[4] = v6;
    v7 = *MEMORY[0x277CBD070];
    v23[5] = *MEMORY[0x277CBCFF8];
    v23[6] = v7;
    v8 = *MEMORY[0x277CBD0B0];
    v23[7] = *MEMORY[0x277CBD078];
    v23[8] = v8;
    v9 = *MEMORY[0x277CBD0A8];
    v23[9] = *MEMORY[0x277CBD0B8];
    v23[10] = v9;
    v10 = *MEMORY[0x277CBD160];
    v23[11] = *MEMORY[0x277CBD090];
    v23[12] = v10;
    v11 = *MEMORY[0x277CBCFC0];
    v23[13] = *MEMORY[0x277CBD098];
    v23[14] = v11;
    v12 = *MEMORY[0x277CBD168];
    v23[15] = *MEMORY[0x277CBD0C8];
    v23[16] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:17];
    v14 = keyDescriptorsForFetching;
    keyDescriptorsForFetching = v13;

    v15 = [additionalKeyDescriptors count];
    if (v15)
    {
      v16 = [keyDescriptorsForFetching mutableCopy];
      [v16 addObjectsFromArray:additionalKeyDescriptors];
      v17 = [v16 copy];
      v18 = keyDescriptorsForFetching;
      keyDescriptorsForFetching = v17;
    }

    v19 = MSPGetSharedTripLog(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = 134217984;
      v22 = [keyDescriptorsForFetching count];
      _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEBUG, "[Contact] Recompiled %lu keys for contact fetching", &v21, 0xCu);
    }

    v2 = keyDescriptorsForFetching;
  }

  return v2;
}

- (void)_populateFromContactUsingHandle:(id)handle
{
  v38 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = handleCopy;
  if (self->_contact)
  {
    v6 = handleCopy;
    if (v6)
    {
      v27 = v5;
      v7 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v6];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      phoneNumbers = [(CNContact *)self->_contact phoneNumbers];
      v9 = [phoneNumbers countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v33;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v13 = *(*(&v32 + 1) + 8 * v12);
          value = [v13 value];
          v15 = [value isLikePhoneNumber:v7];

          if (v15)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [phoneNumbers countByEnumeratingWithState:&v32 objects:v37 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v16 = v13;

        if (v16)
        {
          goto LABEL_25;
        }
      }

      else
      {
LABEL_11:
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      emailAddresses = [(CNContact *)self->_contact emailAddresses];
      v16 = [emailAddresses countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v16)
      {
        v18 = *v29;
        while (2)
        {
          for (i = 0; i != v16; i = (i + 1))
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            value2 = [v20 value];
            v22 = [value2 isEqualToString:v6];

            if (v22)
            {
              v16 = v20;
              goto LABEL_24;
            }
          }

          v16 = [emailAddresses countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

LABEL_25:
      v5 = v27;
    }

    else
    {
      v16 = 0;
    }

    labeledValue = self->_labeledValue;
    self->_labeledValue = v16;
    v24 = v16;

    v25 = [MEMORY[0x277CBDA78] stringFromContact:self->_contact style:1000];
    displayName = self->_displayName;
    self->_displayName = v25;
  }
}

- (MSPSharedTripContact)initWithContactHandle:(id)handle
{
  v24[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (handleCopy)
  {
    _maps_isAuthorized = [MEMORY[0x277CBDAB8] _maps_isAuthorized];
    if (_maps_isAuthorized)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      v7 = objc_alloc(MEMORY[0x277CBDA70]);
      _propertiesForFetching = [objc_opt_class() _propertiesForFetching];
      v9 = [v7 initWithKeysToFetch:_propertiesForFetching];

      v10 = MEMORY[0x277CBDA58];
      v24[0] = handleCopy;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v12 = [v10 predicateForContactsMatchingHandleStrings:v11];
      [v9 setPredicate:v12];

      [v9 setSortOrder:1];
      *buf = 0;
      v19 = buf;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy_;
      v22 = __Block_byref_object_dispose_;
      v23 = 0;
      v16[4] = buf;
      v17 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __46__MSPSharedTripContact_initWithContactHandle___block_invoke;
      v16[3] = &unk_279866268;
      [v6 enumerateContactsWithFetchRequest:v9 error:&v17 usingBlock:v16];
      v13 = v17;
      self = [(MSPSharedTripContact *)self initWithContact:*(v19 + 5) handle:handleCopy];
      _Block_object_dispose(buf, 8);

      selfCopy = self;
    }

    else
    {
      v6 = MSPGetSharedTripLog(_maps_isAuthorized);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[Contact] Asked to resolve handle to contact, but Maps is not authorised for Contacts", buf, 2u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MSPSharedTripContact)initWithContact:(id)contact handle:(id)handle
{
  contactCopy = contact;
  handleCopy = handle;
  v15.receiver = self;
  v15.super_class = MSPSharedTripContact;
  v8 = [(MSPSharedTripContact *)&v15 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  _propertiesForFetching = [objc_opt_class() _propertiesForFetching];
  if (([contactCopy areKeysAvailable:_propertiesForFetching] & 1) == 0)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    identifier = [contactCopy identifier];
    v12 = [v10 unifiedContactWithIdentifier:identifier keysToFetch:_propertiesForFetching error:0];

    contactCopy = v12;
    if (!v12)
    {

      labeledValue = 0;
      goto LABEL_6;
    }
  }

  objc_storeStrong(&v8->_contact, contactCopy);
  objc_storeStrong(&v8->_originalHandle, handle);
  [(MSPSharedTripContact *)v8 _populateFromContactUsingHandle:handleCopy];
  labeledValue = v8->_labeledValue;

  if (labeledValue)
  {
LABEL_5:
    labeledValue = v8;
  }

LABEL_6:

  return labeledValue;
}

- (MSPSharedTripContact)initWithContact:(id)contact labeledValue:(id)value
{
  contactCopy = contact;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = MSPSharedTripContact;
  v9 = [(MSPSharedTripContact *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    v11 = [MEMORY[0x277CBDA78] stringFromContact:v10->_contact style:1000];
    displayName = v10->_displayName;
    v10->_displayName = v11;

    objc_storeStrong(&v10->_labeledValue, value);
    _stringValue = [(MSPSharedTripContact *)v10 _stringValue];
    originalHandle = v10->_originalHandle;
    v10->_originalHandle = _stringValue;
  }

  return v10;
}

- (id)_stringValue
{
  labeledValue = [(MSPSharedTripContact *)self labeledValue];
  value = [labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    labeledValue2 = [(MSPSharedTripContact *)self labeledValue];
    value2 = [labeledValue2 value];
LABEL_5:
    v9 = value2;

    goto LABEL_7;
  }

  if ([(MSPSharedTripContact *)self isPhoneNumber])
  {
    labeledValue3 = [(MSPSharedTripContact *)self labeledValue];
    labeledValue2 = [labeledValue3 value];

    value2 = [labeledValue2 unformattedInternationalStringValue];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (NSString)handleForIDS
{
  labeledValue = [(MSPSharedTripContact *)self labeledValue];
  value = [labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    stringValue = [(MSPSharedTripContact *)self stringValue];
    v7 = MEMORY[0x259C7A620]();
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([(MSPSharedTripContact *)self isPhoneNumber])
  {
    stringValue = [(MSPSharedTripContact *)self stringValue];
    v7 = IDSCopyIDForPhoneNumber();
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isPhoneNumber
{
  labeledValue = [(MSPSharedTripContact *)self labeledValue];
  value = [labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (displayName)
  {
    stringValue = displayName;
  }

  else
  {
    stringValue = [(MSPSharedTripContact *)self stringValue];
  }

  return stringValue;
}

+ (id)contactsFromCNContact:(id)contact matchingHandles:(id)handles
{
  v67 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  handlesCopy = handles;
  v6 = [handlesCopy count];
  if (v6)
  {
    v7 = MSPGetSharedTripLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [handlesCopy count];
      identifier = [contactCopy identifier];
      *buf = 134218499;
      v62 = v8;
      v63 = 2113;
      v64 = identifier;
      v65 = 2113;
      v66 = handlesCopy;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "Will attempt to match %lu handles for contact %{private}@ (%{private}@)", buf, 0x20u);
    }

    array = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [contactCopy phoneNumbers];
    v35 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v35)
    {
      v34 = *v54;
      do
      {
        v10 = 0;
        do
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v10;
          v11 = *(*(&v53 + 1) + 8 * v10);
          value = [v11 value];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v13 = handlesCopy;
          v14 = [v13 countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v50;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v50 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:*(*(&v49 + 1) + 8 * i) countryCode:0];
                if ([value isLikePhoneNumber:v18])
                {
                  v19 = [[MSPSharedTripContact alloc] initWithContact:contactCopy labeledValue:v11];
                  if (v19)
                  {
                    [array addObject:v19];
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v49 objects:v59 count:16];
            }

            while (v15);
          }

          v10 = v37 + 1;
        }

        while ((v37 + 1) != v35);
        v35 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v35);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    emailAddresses = [contactCopy emailAddresses];
    v20 = [emailAddresses countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v20)
    {
      v21 = v20;
      v38 = *v46;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v23 = *(*(&v45 + 1) + 8 * j);
          value2 = [v23 value];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v25 = handlesCopy;
          v26 = [v25 countByEnumeratingWithState:&v41 objects:v57 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v42;
            do
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v42 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                if ([value2 isEqualToString:*(*(&v41 + 1) + 8 * k)])
                {
                  v30 = [[MSPSharedTripContact alloc] initWithContact:contactCopy labeledValue:v23];
                  if (v30)
                  {
                    [array addObject:v30];
                  }
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v41 objects:v57 count:16];
            }

            while (v27);
          }
        }

        v21 = [emailAddresses countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v21);
    }

    v31 = [array copy];
  }

  else
  {
    v31 = MEMORY[0x277CBEBF8];
  }

  return v31;
}

+ (id)contactsFromCNContact:(id)contact
{
  v33 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v4 = MSPGetSharedTripLog(contactCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    identifier = [contactCopy identifier];
    *buf = 138477827;
    v32 = identifier;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "Will prepare contact values for contact %{private}@", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  phoneNumbers = [contactCopy phoneNumbers];
  v8 = [phoneNumbers countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v12 = [[MSPSharedTripContact alloc] initWithContact:contactCopy labeledValue:*(*(&v25 + 1) + 8 * i)];
        if (v12)
        {
          [array addObject:v12];
        }
      }

      v9 = [phoneNumbers countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v14 = [emailAddresses countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v18 = [[MSPSharedTripContact alloc] initWithContact:contactCopy labeledValue:*(*(&v21 + 1) + 8 * j)];
        if (v18)
        {
          [array addObject:v18];
        }
      }

      v15 = [emailAddresses countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = [array copy];

  return v19;
}

+ (id)contactsFromHandles:(id)handles
{
  v25 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  if ([handlesCopy count])
  {
    _maps_isAuthorized = [MEMORY[0x277CBDAB8] _maps_isAuthorized];
    v5 = _maps_isAuthorized;
    v6 = MSPGetSharedTripLog(_maps_isAuthorized);
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134218243;
        v22 = [handlesCopy count];
        v23 = 2113;
        v24 = handlesCopy;
        _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "Will attempt to fetch contacts for %lu handles (%{private}@)", buf, 0x16u);
      }

      v7 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      v8 = objc_alloc(MEMORY[0x277CBDA70]);
      _propertiesForFetching = [objc_opt_class() _propertiesForFetching];
      v10 = [v8 initWithKeysToFetch:_propertiesForFetching];

      v11 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:handlesCopy];
      [v10 setPredicate:v11];

      [v10 setSortOrder:1];
      v12 = objc_alloc_init(MEMORY[0x277CBEB40]);
      v20 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __44__MSPSharedTripContact_contactsFromHandles___block_invoke;
      v17[3] = &unk_279866290;
      v18 = handlesCopy;
      v19 = v12;
      v13 = v12;
      [v7 enumerateContactsWithFetchRequest:v10 error:&v20 usingBlock:v17];
      v14 = v20;
      array = [v13 array];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Contact] Asked to resolve handles to contacts, but Maps is not authorised for Contacts", buf, 2u);
      }

      array = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

void __44__MSPSharedTripContact_contactsFromHandles___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MSPSharedTripContact contactsFromCNContact:a2 matchingHandles:*(a1 + 32)];
  [*(a1 + 40) addObjectsFromArray:v3];
}

+ (id)contactsFromIDSHandles:(id)handles
{
  v4 = MapsMap(handles, &__block_literal_global_4);
  v5 = [self contactsFromHandles:v4];

  return v5;
}

id __47__MSPSharedTripContact_contactsFromIDSHandles___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = IDSCopyRawAddressForDestination();

  return v2;
}

+ (void)setAdditionalKeyDescriptorsForContactFetching:(id)fetching
{
  v10 = *MEMORY[0x277D85DE8];
  fetchingCopy = fetching;
  v4 = MSPGetSharedTripLog(fetchingCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138477827;
    v9 = fetchingCopy;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEBUG, "[Contact] Setting additional keys for contact fetching: %{private}@", &v8, 0xCu);
  }

  v5 = additionalKeyDescriptors;
  additionalKeyDescriptors = fetchingCopy;
  v6 = fetchingCopy;

  v7 = keyDescriptorsForFetching;
  keyDescriptorsForFetching = 0;
}

+ (BOOL)isHandleBlocked:(id)blocked
{
  CMFItemFromString = CreateCMFItemFromString();
  v4 = CMFBlockListIsItemBlocked() != 0;
  CFRelease(CMFItemFromString);
  return v4;
}

- (BOOL)isHandleBlocked
{
  v27 = *MEMORY[0x277D85DE8];
  timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4;
  lastCheckedBlocked = self->_lastCheckedBlocked;
  if (lastCheckedBlocked > 0.0 && v5 - lastCheckedBlocked < 30.0)
  {
    return self->_isBlocked;
  }

  else
  {
    v8 = MSPGetSharedTripLog(timeIntervalSinceReferenceDate);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      stringValue = [(MSPSharedTripContact *)self stringValue];
      *buf = 138477827;
      v26 = stringValue;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "[Contact] Checking if %{private}@ is blocked", buf, 0xCu);
    }

    self->_isBlocked = 0;
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    v11 = v10;
    if (self->_originalHandle)
    {
      [v10 addObject:?];
    }

    stringValue2 = [(MSPSharedTripContact *)self stringValue];
    if (stringValue2)
    {
      [v11 addObject:stringValue2];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if ([objc_opt_class() isHandleBlocked:{*(*(&v20 + 1) + 8 * i), v20}])
          {
            self->_isBlocked = 1;
            goto LABEL_22;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    self->_lastCheckedBlocked = v5;
    isBlocked = self->_isBlocked;
  }

  return isBlocked;
}

+ (BOOL)isVirtualReceiver:(id)receiver
{
  receiverCopy = receiver;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (unint64_t)capabilityTypeForVirtualReceiver:(id)receiver
{
  receiverCopy = receiver;
  if ([self isVirtualReceiver:receiverCopy])
  {
    handleForIDS = [receiverCopy handleForIDS];
    CapabilityType = MSPSharedTripVirtualReceiverHandleGetCapabilityType(handleForIDS);
  }

  else
  {
    CapabilityType = 0;
  }

  return CapabilityType;
}

+ (id)capabilityVersionsForVirtualReceiver:(id)receiver
{
  receiverCopy = receiver;
  if ([self isVirtualReceiver:receiverCopy])
  {
    handleForIDS = [receiverCopy handleForIDS];
    v6 = MSPSharedTripVirtualReceiverHandleGetReceiverCapabilityVersions(handleForIDS);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

+ (id)virtualReceiverWithHandle:(id)handle
{
  handleCopy = handle;
  if (MSPSharedTripVirtualReceiverIsValid(handleCopy))
  {
    v4 = [[MSPSharedTripVirtualContact alloc] initWithVirtualReceiverHandle:handleCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)contactsFromVirtualReceiverHandles:(id)handles
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__MSPSharedTripContact_VirtualReceivers__contactsFromVirtualReceiverHandles___block_invoke;
  v5[3] = &__block_descriptor_40_e43___MSPSharedTripContact_24__0__NSString_8Q16l;
  v5[4] = self;
  v3 = MapsMap(handles, v5);

  return v3;
}

+ (id)mapsVirtualReceiverWithName:(id)name receiverCapabilityVersion:(id)version
{
  v5 = MSPSharedTripVirtualReceiverHandleMake(name, 4, 0, version);
  v6 = [self virtualReceiverWithHandle:v5];

  return v6;
}

+ (id)iMessageVirtualReceiverWithName:(id)name
{
  v4 = MSPSharedTripVirtualReceiverHandleMake(name, 3, 0, 0);
  v5 = [self virtualReceiverWithHandle:v4];

  return v5;
}

+ (id)smsVirtualReceiverWithName:(id)name
{
  v4 = MSPSharedTripVirtualReceiverHandleMake(name, 2, @"SMS", 0);
  v5 = [self virtualReceiverWithHandle:v4];

  return v5;
}

+ (id)rcsVirtualReceiverWithName:(id)name
{
  v4 = MSPSharedTripVirtualReceiverHandleMake(name, 2, @"RCS", 0);
  v5 = [self virtualReceiverWithHandle:v4];

  return v5;
}

- (id)handleForDeviceVersion:(unint64_t)version
{
  if ([objc_opt_class() isVirtualReceiver:self])
  {
    v5 = [(MSPSharedTripContact *)self _deviceHandleForVersion:version];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)startLiveUpdatesForCapabilityVersion:(unint64_t)version
{
  v3 = [(MSPSharedTripContact *)self handleForDeviceVersion:version];
  if (v3)
  {
    v5 = v3;
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"MSPSharedTripVirtualReceiverStartLiveUpdates" object:v5];

    v3 = v5;
  }
}

- (void)stopLiveUpdatesForCapabilityVersion:(unint64_t)version
{
  v3 = [(MSPSharedTripContact *)self handleForDeviceVersion:version];
  if (v3)
  {
    v5 = v3;
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"MSPSharedTripVirtualReceiverStopLiveUpdates" object:v5];

    v3 = v5;
  }
}

@end