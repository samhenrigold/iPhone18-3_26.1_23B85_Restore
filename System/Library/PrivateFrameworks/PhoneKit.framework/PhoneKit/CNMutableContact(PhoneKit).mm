@interface CNMutableContact(PhoneKit)
+ (id)contactForHandle:()PhoneKit isoCountryCode:metadataCache:;
+ (id)contactForRecentCall:()PhoneKit metadataCache:;
+ (void)suggestedContactForHandle:()PhoneKit isoCountryCode:metadataCache:;
@end

@implementation CNMutableContact(PhoneKit)

+ (id)contactForHandle:()PhoneKit isoCountryCode:metadataCache:
{
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CBDB38]);
  value = [v8 value];
  if ([value length])
  {
    if (v10)
    {
      v13 = [self suggestedContactForHandle:v8 isoCountryCode:v9 metadataCache:v10];
      v14 = v13;
      if (v13)
      {
        v15 = v13;

        v11 = v15;
      }

      v16 = [objc_alloc(MEMORY[0x277D6EF00]) initWithDestinationID:value isoCountryCode:v9];
      if (v16)
      {
        v17 = [v10 metadataForDestinationID:v16];
        v18 = [v17 metadataForProvider:objc_opt_class()];
        if (v18)
        {
          [v11 setOrganizationName:v18];
        }
      }
    }

    v19 = value;
    type = [v8 type];
    if (type == 2)
    {
      v21 = [MEMORY[0x277CBDB70] phoneNumberWithDigits:v19 countryCode:v9];
    }

    else
    {
      if (type != 1)
      {
        goto LABEL_15;
      }

      v21 = [objc_alloc(MEMORY[0x277CBDBB0]) initWithUrlString:0 username:v19 userIdentifier:0 service:0];
    }

    v22 = v21;

    v19 = v22;
LABEL_15:
    v23 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v19];
    type2 = [v8 type];
    switch(type2)
    {
      case 3:
        v27 = v23;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
        [v11 setEmailAddresses:v25];
        break;
      case 2:
        v28 = v23;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
        [v11 setPhoneNumbers:v25];
        break;
      case 1:
        v29[0] = v23;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
        [v11 setSocialProfiles:v25];
        break;
      default:
LABEL_22:

        goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:

  return v11;
}

+ (id)contactForRecentCall:()PhoneKit metadataCache:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D6EEE8] handleForCHRecentCall:v6];
  if (v8)
  {
    isoCountryCode = [v6 isoCountryCode];
    if ([v8 type] == 2)
    {
      if (![isoCountryCode length])
      {
        [v6 callStatus];
        v11 = TUCountryCodeForIncomingCall();

        isoCountryCode = v11;
      }

      if ([isoCountryCode length])
      {
        v12 = TUHomeCountryCode();
        if (([isoCountryCode isEqualToString:v12] & 1) == 0)
        {
          value = [v8 value];
          v14 = TUNumberToDial();

          v15 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:objc_msgSend(v8 value:{"type"), v14}];
          v8 = v15;
        }
      }
    }

    v10 = [self contactForHandle:v8 isoCountryCode:isoCountryCode metadataCache:v7];
    imageURL = [v6 imageURL];

    if (imageURL)
    {
      name = [v6 name];
      [v10 setOrganizationName:name];

      [v10 setContactType:1];
    }

    else
    {
      [v10 setContactType:{objc_msgSend(v6, "callDirectoryIdentityType") == 2}];
      if ([v10 contactType])
      {
        fullName = [v6 fullName];
        [v10 setOrganizationName:fullName];
      }

      else
      {
        givenName = [v6 givenName];
        [v10 setGivenName:givenName];

        fullName = [v6 familyName];
        [v10 setFamilyName:fullName];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)suggestedContactForHandle:()PhoneKit isoCountryCode:metadataCache:
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v9 providers];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v27 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v10);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = objc_opt_class();
    value = [v7 value];
    v14 = [v16 newestSuggestedContactForDestinationID:value];

    if (!v14)
    {
      v11 = 0;
      goto LABEL_17;
    }

    v11 = [v14 mutableCopy];
    v18 = objc_alloc(MEMORY[0x277D6EF00]);
    value2 = [v7 value];
    v15 = [v18 initWithDestinationID:value2 isoCountryCode:v8];

    if (v15)
    {
      v20 = [v9 metadataForDestinationID:v15];
      v21 = [v20 metadataForProvider:objc_opt_class()];
      if ([v21 length])
      {
        [v11 setContactType:1];
        [v11 setOrganizationName:v21];
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
    v15 = v10;
  }

LABEL_17:
  v22 = v11;

  return v11;
}

@end