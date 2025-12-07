@interface CNAssistantConversion
+ (id)addressesForSyncFromContact:(id)contact;
+ (id)addressesFromContact:(id)contact;
+ (id)addressesFromPerson:(id)person;
+ (id)createSAPersonFromCNContact:(id)contact conversionType:(int64_t)type;
+ (id)createSAPersonFromCNContactWithExternalIdentifier:(id)identifier;
+ (id)createSASourceFromCNContainer:(id)container;
+ (id)descriptorsForRequiredKeysForConversionType:(int64_t)type;
+ (id)emailAddressesForSyncFromContact:(id)contact;
+ (id)emailAddressesFromContact:(id)contact;
+ (id)emailAddressesFromPerson:(id)person;
+ (id)filterLabeledValues:(id)values droppingEmptyLabels:(BOOL)labels droppingDuplicates:(BOOL)duplicates;
+ (id)keysFromPerson:(id)person;
+ (id)personForSyncFromContact:(id)contact;
+ (id)personFromContact:(id)contact useABPerson:(BOOL)person;
+ (id)personFromMeContact:(id)contact;
+ (id)phoneNumbersForSyncFromContact:(id)contact;
+ (id)phoneNumbersFromContact:(id)contact;
+ (id)phoneNumbersFromPerson:(id)person;
+ (id)relationsForSyncFromContact:(id)contact;
+ (id)relationsFromContact:(id)contact;
+ (id)relationsFromPerson:(id)person;
+ (id)socialProfilesFromContact:(id)contact;
+ (id)verifyContact:(id)contact hasDescriptorsForRequiredKeys:(id)keys;
+ (void)addFieldsFromPerson:(id)person toContactWithIdentifier:(id)identifier usingStore:(id)store saveRequest:(id)request;
+ (void)applyUpdate:(id)update toContactWithIdentifier:(id)identifier usingStore:(id)store saveRequest:(id)request;
+ (void)markMeContactInPeople:(id)people usingStore:(id)store;
+ (void)removeFieldsFromPerson:(id)person toContactWithIdentifier:(id)identifier usingStore:(id)store saveRequest:(id)request;
+ (void)setFieldsFromPerson:(id)person toContactWithIdentifier:(id)identifier usingStore:(id)store saveRequest:(id)request;
@end

@implementation CNAssistantConversion

+ (id)descriptorsForRequiredKeysForConversionType:(int64_t)type
{
  v21[7] = *MEMORY[0x277D85DE8];
  if (type)
  {
    if (type == 2)
    {
      v9 = *MEMORY[0x277CBD160];
      v20[0] = *MEMORY[0x277CBD018];
      v20[1] = v9;
      v10 = *MEMORY[0x277CBCFF8];
      v20[2] = *MEMORY[0x277CBD000];
      v20[3] = v10;
      v11 = *MEMORY[0x277CBD090];
      v20[4] = *MEMORY[0x277CBD078];
      v20[5] = v11;
      v12 = *MEMORY[0x277CBD0B0];
      v20[6] = *MEMORY[0x277CBD0A0];
      v20[7] = v12;
      v13 = *MEMORY[0x277CBCFC0];
      v20[8] = *MEMORY[0x277CBD0A8];
      v20[9] = v13;
      v14 = *MEMORY[0x277CBD0C8];
      v20[10] = *MEMORY[0x277CBD098];
      v20[11] = v14;
      v15 = *MEMORY[0x277CBD010];
      v20[12] = *MEMORY[0x277CBD120];
      v20[13] = v15;
      v6 = MEMORY[0x277CBEA60];
      v7 = v20;
      v8 = 14;
      goto LABEL_6;
    }

    if (type == 1)
    {
      v3 = *MEMORY[0x277CBD000];
      v21[0] = *MEMORY[0x277CBD018];
      v21[1] = v3;
      v4 = *MEMORY[0x277CBD078];
      v21[2] = *MEMORY[0x277CBD0B0];
      v21[3] = v4;
      v5 = *MEMORY[0x277CBD0A0];
      v21[4] = *MEMORY[0x277CBD120];
      v21[5] = v5;
      v21[6] = *MEMORY[0x277CBD010];
      v6 = MEMORY[0x277CBEA60];
      v7 = v21;
      v8 = 7;
LABEL_6:
      v16 = [v6 arrayWithObjects:v7 count:v8];
      goto LABEL_9;
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v17 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:{*MEMORY[0x277CBD018], *MEMORY[0x277CBD160], *MEMORY[0x277CBD000], *MEMORY[0x277CBD058], *MEMORY[0x277CBCFF8], *MEMORY[0x277CBCF90], *MEMORY[0x277CBD078], *MEMORY[0x277CBD068], *MEMORY[0x277CBD070], *MEMORY[0x277CBD090], *MEMORY[0x277CBD0A0], *MEMORY[0x277CBD0B0], *MEMORY[0x277CBD0A8], *MEMORY[0x277CBCFC0], *MEMORY[0x277CBD098], *MEMORY[0x277CBD0C8], *MEMORY[0x277CBD120], *MEMORY[0x277CBD138], *MEMORY[0x277CBD010]}];
    v19[19] = v17;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:20];
  }

LABEL_9:

  return v16;
}

+ (id)personFromMeContact:(id)contact
{
  contactCopy = contact;
  v4 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:1];
  v5 = [contactCopy areKeysAvailable:v4];

  if (v5)
  {
    v6 = objc_opt_new();
    [v6 setMe:MEMORY[0x277CBEC38]];
    givenName = [contactCopy givenName];
    v8 = NonEmptyOrNilString(givenName);
    [v6 setFirstName:v8];

    nickname = [contactCopy nickname];
    v10 = NonEmptyOrNilString(nickname);
    [v6 setNickName:v10];

    phoneticGivenName = [contactCopy phoneticGivenName];
    v12 = NonEmptyOrNilString(phoneticGivenName);
    [v6 setFirstNamePhonetic:v12];

    [v6 setIdentifier:0];
    v13 = [CNAssistantConversion relationsFromContact:contactCopy];
    v14 = NonEmptyOrNilArray(v13);
    [v6 setRelatedNames:v14];

    phonemeData = [contactCopy phonemeData];
    v16 = NonEmptyOrNilString(phonemeData);
    [v6 setPhonemeData:v16];

    identifier = [contactCopy identifier];
    v18 = NonEmptyOrNilString(identifier);
    [v6 setInternalGUID:v18];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)personForSyncFromContact:(id)contact
{
  contactCopy = contact;
  v4 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:2];
  v5 = [contactCopy areKeysAvailable:v4];

  if (!v5)
  {
    goto LABEL_19;
  }

  givenName = [contactCopy givenName];
  if (givenName)
  {
    givenName2 = [contactCopy givenName];
    v8 = [givenName2 length] != 0;
  }

  else
  {
    v8 = 0;
  }

  familyName = [contactCopy familyName];
  if (familyName)
  {
    familyName2 = [contactCopy familyName];
    if ([familyName2 length])
    {
      v8 = 1;
    }
  }

  organizationName = [contactCopy organizationName];
  if (organizationName)
  {
    organizationName2 = [contactCopy organizationName];
    if ([organizationName2 length])
    {
      v8 = 1;
    }
  }

  nickname = [contactCopy nickname];
  if (nickname)
  {
    v14 = nickname;
    nickname2 = [contactCopy nickname];
    if ([nickname2 length])
    {
      v8 = 1;
    }
  }

  if (v8)
  {
    v16 = objc_opt_new();
    v17 = [CNAssistantID assistantIDFromContact:contactCopy];
    [v16 setIdentifier:v17];
    identifier = [contactCopy identifier];
    [v16 setInternalGUID:identifier];

    givenName3 = [contactCopy givenName];
    v20 = NonEmptyOrNilString(givenName3);
    [v16 setFirstName:v20];

    familyName3 = [contactCopy familyName];
    v22 = NonEmptyOrNilString(familyName3);
    [v16 setLastName:v22];

    nickname3 = [contactCopy nickname];
    v24 = NonEmptyOrNilString(nickname3);
    [v16 setNickName:v24];

    organizationName3 = [contactCopy organizationName];
    v26 = NonEmptyOrNilString(organizationName3);
    [v16 setCompany:v26];

    phoneticGivenName = [contactCopy phoneticGivenName];
    v28 = NonEmptyOrNilString(phoneticGivenName);
    [v16 setFirstNamePhonetic:v28];

    phoneticFamilyName = [contactCopy phoneticFamilyName];
    v30 = NonEmptyOrNilString(phoneticFamilyName);
    [v16 setLastNamePhonetic:v30];

    phonemeData = [contactCopy phonemeData];
    v32 = NonEmptyOrNilString(phonemeData);
    [v16 setPhonemeData:v32];

    v33 = [CNAssistantConversion emailAddressesForSyncFromContact:contactCopy];
    v34 = NonEmptyOrNilArray(v33);
    [v16 setEmails:v34];

    v35 = [CNAssistantConversion phoneNumbersForSyncFromContact:contactCopy];
    v36 = NonEmptyOrNilArray(v35);
    [v16 setPhones:v36];

    v37 = [CNAssistantConversion addressesForSyncFromContact:contactCopy];
    v38 = NonEmptyOrNilArray(v37);
    [v16 setAddresses:v38];

    v39 = [CNAssistantConversion relationsForSyncFromContact:contactCopy];
    v40 = NonEmptyOrNilArray(v39);
    [v16 setRelatedNames:v40];
  }

  else
  {
LABEL_19:
    v16 = 0;
  }

  return v16;
}

+ (id)personFromContact:(id)contact useABPerson:(BOOL)person
{
  contactCopy = contact;
  v5 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:0];
  v6 = [contactCopy areKeysAvailable:v5];

  v7 = 0;
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [CNAssistantID assistantIDFromContact:contactCopy];
    [v7 setIdentifier:v8];
    identifier = [contactCopy identifier];
    [v7 setInternalGUID:identifier];

    givenName = [contactCopy givenName];
    v11 = NonEmptyOrNilString(givenName);
    [v7 setFirstName:v11];

    middleName = [contactCopy middleName];
    v13 = NonEmptyOrNilString(middleName);
    [v7 setMiddleName:v13];

    familyName = [contactCopy familyName];
    v15 = NonEmptyOrNilString(familyName);
    [v7 setLastName:v15];

    birthday = [contactCopy birthday];

    if (birthday)
    {
      birthday2 = [contactCopy birthday];
      if ([birthday2 year] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [birthday2 setYear:1604];
      }

      timeZone = [birthday2 timeZone];

      if (!timeZone)
      {
        v19 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
        [birthday2 setTimeZone:v19];
      }

      v20 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
      v21 = [v20 dateFromComponents:birthday2];
      [v7 setBirthday:v21];
    }

    nickname = [contactCopy nickname];
    v23 = NonEmptyOrNilString(nickname);
    [v7 setNickName:v23];

    namePrefix = [contactCopy namePrefix];
    v25 = NonEmptyOrNilString(namePrefix);
    [v7 setPrefix:v25];

    nameSuffix = [contactCopy nameSuffix];
    v27 = NonEmptyOrNilString(nameSuffix);
    [v7 setSuffix:v27];

    organizationName = [contactCopy organizationName];
    v29 = NonEmptyOrNilString(organizationName);
    [v7 setCompany:v29];

    phoneticGivenName = [contactCopy phoneticGivenName];
    v31 = NonEmptyOrNilString(phoneticGivenName);
    [v7 setFirstNamePhonetic:v31];

    phoneticFamilyName = [contactCopy phoneticFamilyName];
    v33 = NonEmptyOrNilString(phoneticFamilyName);
    [v7 setLastNamePhonetic:v33];

    phonemeData = [contactCopy phonemeData];
    v35 = NonEmptyOrNilString(phonemeData);
    [v7 setPhonemeData:v35];

    v36 = [CNAssistantConversion emailAddressesFromContact:contactCopy];
    v37 = NonEmptyOrNilArray(v36);
    [v7 setEmails:v37];

    v38 = [CNAssistantConversion phoneNumbersFromContact:contactCopy];
    v39 = NonEmptyOrNilArray(v38);
    [v7 setPhones:v39];

    v40 = [CNAssistantConversion addressesFromContact:contactCopy];
    v41 = NonEmptyOrNilArray(v40);
    [v7 setAddresses:v41];

    v42 = [CNAssistantConversion relationsFromContact:contactCopy];
    v43 = NonEmptyOrNilArray(v42);
    [v7 setRelatedNames:v43];

    v44 = [MEMORY[0x277CBDA78] stringFromContact:contactCopy style:0];
    v45 = NonEmptyOrNilString(v44);
    [v7 setFullName:v45];
  }

  return v7;
}

+ (id)createSAPersonFromCNContact:(id)contact conversionType:(int64_t)type
{
  contactCopy = contact;
  v7 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:type];
  v8 = [CNAssistantConversion verifyContact:contactCopy hasDescriptorsForRequiredKeys:v7];

  switch(type)
  {
    case 0:
      v9 = [self personFromContact:v8];
      goto LABEL_7;
    case 2:
      v9 = [self personForSyncFromContact:v8];
      goto LABEL_7;
    case 1:
      v9 = [self personFromMeContact:v8];
LABEL_7:
      v10 = v9;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)createSAPersonFromCNContactWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  if (identifierCopy)
  {
    v5 = [MEMORY[0x277CBDA58] predicateForContactsMatchingFullTextSearch:identifierCopy containerIdentifiers:0 groupIdentifiers:0];
    v6 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:0];
    v7 = [v4 unifiedContactsMatchingPredicate:v5 keysToFetch:v6 error:0];
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count])
  {
    firstObject = [v7 firstObject];
    v9 = [CNAssistantConversion createSAPersonFromCNContact:firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)createSASourceFromCNContainer:(id)container
{
  containerCopy = container;
  v4 = objc_opt_new();
  [v4 setDomainIdentifier:*MEMORY[0x277D47BA8]];
  v5 = [CNAssistantID assistantIDFromContainer:containerCopy];
  [v4 setIdentifier:v5];

  v6 = MEMORY[0x277CCABB0];
  type = [containerCopy type];

  v8 = [v6 numberWithBool:type > 1];
  [v4 setRemote:v8];

  return v4;
}

+ (id)filterLabeledValues:(id)values droppingEmptyLabels:(BOOL)labels droppingDuplicates:(BOOL)duplicates
{
  valuesCopy = values;
  v8 = valuesCopy;
  if (labels || duplicates)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__CNAssistantConversion_filterLabeledValues_droppingEmptyLabels_droppingDuplicates___block_invoke;
    v13[3] = &unk_278E05240;
    labelsCopy = labels;
    duplicatesCopy = duplicates;
    v14 = v10;
    v11 = v10;
    v9 = [v8 filterUsingBlock:v13];
  }

  else
  {
    v9 = valuesCopy;
  }

  return v9;
}

uint64_t __84__CNAssistantConversion_filterLabeledValues_droppingEmptyLabels_droppingDuplicates___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = v3;
  if (*(a1 + 40) == 1 && (!v3 || ![v3 length]))
  {
    goto LABEL_6;
  }

  if (*(a1 + 41) != 1)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
    goto LABEL_8;
  }

LABEL_6:
  v5 = 0;
LABEL_9:

  return v5;
}

+ (id)emailAddressesFromContact:(id)contact
{
  v41 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v5 = *MEMORY[0x277CBCFC0];
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBCFC0]])
  {
    selfCopy = self;
    mEMORY[0x277CBDAF8] = [MEMORY[0x277CBDAF8] sharedInstance];
    v30 = contactCopy;
    v6 = [mEMORY[0x277CBDAF8] entriesForContact:contactCopy propertyKey:v5 labeledValueIdentifier:0 actionType:0 bundleIdentifier:*MEMORY[0x277CBCF58]];
    v7 = [MEMORY[0x277CBEB58] set];
    v31 = [MEMORY[0x277CBEB58] set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      v11 = *MEMORY[0x277CBCF70];
      v12 = *MEMORY[0x277CBCF80];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          actionType = [v14 actionType];
          v16 = [actionType isEqualToString:v11];

          v17 = v7;
          if ((v16 & 1) == 0)
          {
            actionType2 = [v14 actionType];
            v19 = [actionType2 isEqualToString:v12];

            v17 = v31;
            if (!v19)
            {
              continue;
            }
          }

          contactProperty = [v14 contactProperty];
          identifier = [contactProperty identifier];
          [v17 addObject:identifier];
        }

        v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v9);
    }

    contactCopy = v30;
    emailAddresses = [v30 emailAddresses];
    v23 = [selfCopy filterLabeledValues:emailAddresses droppingEmptyLabels:0 droppingDuplicates:0];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __51__CNAssistantConversion_emailAddressesFromContact___block_invoke;
    v33[3] = &unk_278E05268;
    v34 = v7;
    v35 = v31;
    v24 = v31;
    v25 = v7;
    v26 = [v23 mapUsingBlock:v33];
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  return v26;
}

id __51__CNAssistantConversion_emailAddressesFromContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 value];
  [v4 setEmailAddress:v5];

  v6 = [v3 label];
  v7 = NonEmptyOrNilString(v6);
  [v4 setLabel:v7];

  v8 = *(a1 + 32);
  v9 = [v3 identifier];
  v10 = [v8 containsObject:v9];
  v11 = MEMORY[0x277CBEC38];
  if (v10)
  {
    v12 = MEMORY[0x277CBEC38];
  }

  else
  {
    v12 = 0;
  }

  [v4 setFavoriteFacetimeAudio:v12];

  v13 = *(a1 + 40);
  v14 = [v3 identifier];

  if ([v13 containsObject:v14])
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  [v4 setFavoriteFacetime:v15];

  return v4;
}

+ (id)emailAddressesForSyncFromContact:(id)contact
{
  v41 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v5 = *MEMORY[0x277CBCFC0];
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBCFC0]])
  {
    selfCopy = self;
    mEMORY[0x277CBDAF8] = [MEMORY[0x277CBDAF8] sharedInstance];
    v30 = contactCopy;
    v6 = [mEMORY[0x277CBDAF8] entriesForContact:contactCopy propertyKey:v5 labeledValueIdentifier:0 actionType:0 bundleIdentifier:*MEMORY[0x277CBCF58]];
    v7 = [MEMORY[0x277CBEB58] set];
    v31 = [MEMORY[0x277CBEB58] set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      v11 = *MEMORY[0x277CBCF70];
      v12 = *MEMORY[0x277CBCF80];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          actionType = [v14 actionType];
          v16 = [actionType isEqualToString:v11];

          v17 = v7;
          if ((v16 & 1) == 0)
          {
            actionType2 = [v14 actionType];
            v19 = [actionType2 isEqualToString:v12];

            v17 = v31;
            if (!v19)
            {
              continue;
            }
          }

          contactProperty = [v14 contactProperty];
          identifier = [contactProperty identifier];
          [v17 addObject:identifier];
        }

        v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v9);
    }

    contactCopy = v30;
    emailAddresses = [v30 emailAddresses];
    v23 = [selfCopy filterLabeledValues:emailAddresses droppingEmptyLabels:1 droppingDuplicates:0];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __58__CNAssistantConversion_emailAddressesForSyncFromContact___block_invoke;
    v33[3] = &unk_278E05268;
    v34 = v7;
    v35 = v31;
    v24 = v31;
    v25 = v7;
    v26 = [v23 mapUsingBlock:v33];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

id __58__CNAssistantConversion_emailAddressesForSyncFromContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 label];
  [v4 setLabel:v5];

  v6 = *(a1 + 32);
  v7 = [v3 identifier];
  v8 = [v6 containsObject:v7];
  v9 = MEMORY[0x277CBEC38];
  if (v8)
  {
    v10 = MEMORY[0x277CBEC38];
  }

  else
  {
    v10 = 0;
  }

  [v4 setFavoriteFacetimeAudio:v10];

  v11 = *(a1 + 40);
  v12 = [v3 identifier];

  if ([v11 containsObject:v12])
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  [v4 setFavoriteFacetime:v13];

  return v4;
}

+ (id)phoneNumbersFromContact:(id)contact
{
  v53 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v5 = *MEMORY[0x277CBD098];
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBD098]])
  {
    selfCopy = self;
    mEMORY[0x277CBDAF8] = [MEMORY[0x277CBDAF8] sharedInstance];
    v39 = contactCopy;
    v6 = [mEMORY[0x277CBDAF8] entriesForContact:contactCopy propertyKey:v5 labeledValueIdentifier:0 actionType:0 bundleIdentifier:0];
    v42 = [MEMORY[0x277CBEB58] set];
    v43 = [MEMORY[0x277CBEB58] set];
    v41 = [MEMORY[0x277CBEB58] set];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = v8;
    v10 = *v49;
    v11 = *MEMORY[0x277CBCF58];
    v12 = *MEMORY[0x277CBCF68];
    v13 = *MEMORY[0x277CBCF70];
    v40 = *MEMORY[0x277CBCF80];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        bundleIdentifier = [v15 bundleIdentifier];
        v17 = [bundleIdentifier isEqualToString:v11];

        if (v17)
        {
          actionType = [v15 actionType];
          v19 = [actionType isEqualToString:v13];

          v20 = v43;
          if (v19)
          {
            goto LABEL_13;
          }

          actionType2 = [v15 actionType];
          v22 = [actionType2 isEqualToString:v40];

          v20 = v41;
          if (v22)
          {
            goto LABEL_13;
          }
        }

        else
        {
          bundleIdentifier2 = [v15 bundleIdentifier];
          v24 = [bundleIdentifier2 isEqualToString:v12];

          if (v24)
          {
            actionType3 = [v15 actionType];
            v26 = [actionType3 isEqualToString:v13];

            v20 = v42;
            if (v26)
            {
LABEL_13:
              contactProperty = [v15 contactProperty];
              identifier = [contactProperty identifier];
              [v20 addObject:identifier];

              continue;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (!v9)
      {
LABEL_16:
        v29 = v7;

        contactCopy = v39;
        phoneNumbers = [v39 phoneNumbers];
        v31 = [selfCopy filterLabeledValues:phoneNumbers droppingEmptyLabels:0 droppingDuplicates:0];

        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __49__CNAssistantConversion_phoneNumbersFromContact___block_invoke;
        v44[3] = &unk_278E05290;
        v45 = v43;
        v46 = v41;
        v47 = v42;
        v32 = v42;
        v33 = v41;
        v34 = v43;
        v35 = [v31 mapUsingBlock:v44];

        goto LABEL_18;
      }
    }
  }

  v35 = 0;
LABEL_18:

  return v35;
}

id __49__CNAssistantConversion_phoneNumbersFromContact___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 value];
  v6 = [v5 formattedInternationalStringValue];
  [v4 setNumber:v6];

  v7 = [v3 label];
  v8 = NonEmptyOrNilString(v7);
  [v4 setLabel:v8];

  v9 = a1[4];
  v10 = [v3 identifier];
  v11 = [v9 containsObject:v10];
  v12 = MEMORY[0x277CBEC38];
  if (v11)
  {
    v13 = MEMORY[0x277CBEC38];
  }

  else
  {
    v13 = 0;
  }

  [v4 setFavoriteFacetimeAudio:v13];

  v14 = a1[5];
  v15 = [v3 identifier];
  if ([v14 containsObject:v15])
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  [v4 setFavoriteFacetime:v16];

  v17 = a1[6];
  v18 = [v3 identifier];

  if ([v17 containsObject:v18])
  {
    v19 = v12;
  }

  else
  {
    v19 = 0;
  }

  [v4 setFavoriteVoice:v19];

  return v4;
}

+ (id)phoneNumbersForSyncFromContact:(id)contact
{
  v53 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v5 = *MEMORY[0x277CBD098];
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBD098]])
  {
    selfCopy = self;
    mEMORY[0x277CBDAF8] = [MEMORY[0x277CBDAF8] sharedInstance];
    v39 = contactCopy;
    v6 = [mEMORY[0x277CBDAF8] entriesForContact:contactCopy propertyKey:v5 labeledValueIdentifier:0 actionType:0 bundleIdentifier:0];
    v42 = [MEMORY[0x277CBEB58] set];
    v43 = [MEMORY[0x277CBEB58] set];
    v41 = [MEMORY[0x277CBEB58] set];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = v8;
    v10 = *v49;
    v11 = *MEMORY[0x277CBCF58];
    v12 = *MEMORY[0x277CBCF68];
    v13 = *MEMORY[0x277CBCF70];
    v40 = *MEMORY[0x277CBCF80];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        bundleIdentifier = [v15 bundleIdentifier];
        v17 = [bundleIdentifier isEqualToString:v11];

        if (v17)
        {
          actionType = [v15 actionType];
          v19 = [actionType isEqualToString:v13];

          v20 = v43;
          if (v19)
          {
            goto LABEL_13;
          }

          actionType2 = [v15 actionType];
          v22 = [actionType2 isEqualToString:v40];

          v20 = v41;
          if (v22)
          {
            goto LABEL_13;
          }
        }

        else
        {
          bundleIdentifier2 = [v15 bundleIdentifier];
          v24 = [bundleIdentifier2 isEqualToString:v12];

          if (v24)
          {
            actionType3 = [v15 actionType];
            v26 = [actionType3 isEqualToString:v13];

            v20 = v42;
            if (v26)
            {
LABEL_13:
              contactProperty = [v15 contactProperty];
              identifier = [contactProperty identifier];
              [v20 addObject:identifier];

              continue;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (!v9)
      {
LABEL_16:
        v29 = v7;

        contactCopy = v39;
        phoneNumbers = [v39 phoneNumbers];
        v31 = [selfCopy filterLabeledValues:phoneNumbers droppingEmptyLabels:1 droppingDuplicates:0];

        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __56__CNAssistantConversion_phoneNumbersForSyncFromContact___block_invoke;
        v44[3] = &unk_278E05290;
        v45 = v43;
        v46 = v41;
        v47 = v42;
        v32 = v42;
        v33 = v41;
        v34 = v43;
        v35 = [v31 mapUsingBlock:v44];

        goto LABEL_18;
      }
    }
  }

  v35 = 0;
LABEL_18:

  return v35;
}

id __56__CNAssistantConversion_phoneNumbersForSyncFromContact___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 label];
  [v4 setLabel:v5];

  v6 = a1[4];
  v7 = [v3 identifier];
  v8 = [v6 containsObject:v7];
  v9 = MEMORY[0x277CBEC38];
  if (v8)
  {
    v10 = MEMORY[0x277CBEC38];
  }

  else
  {
    v10 = 0;
  }

  [v4 setFavoriteFacetimeAudio:v10];

  v11 = a1[5];
  v12 = [v3 identifier];
  if ([v11 containsObject:v12])
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  [v4 setFavoriteFacetime:v13];

  v14 = a1[6];
  v15 = [v3 identifier];

  if ([v14 containsObject:v15])
  {
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  [v4 setFavoriteVoice:v16];

  return v4;
}

+ (id)addressesFromContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBD0C8]])
  {
    postalAddresses = [contactCopy postalAddresses];
    v6 = [self filterLabeledValues:postalAddresses droppingEmptyLabels:0 droppingDuplicates:0];

    v7 = [v6 mapUsingBlock:&__block_literal_global];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __46__CNAssistantConversion_addressesFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 label];
  v5 = NonEmptyOrNilString(v4);
  [v3 setLabel:v5];

  v6 = [v2 value];
  v7 = [v6 street];
  v8 = NonEmptyOrNilString(v7);
  [v3 setStreet:v8];

  v9 = [v2 value];
  v10 = [v9 city];
  v11 = NonEmptyOrNilString(v10);
  [v3 setCity:v11];

  v12 = [v2 value];
  v13 = [v12 state];
  v14 = NonEmptyOrNilString(v13);
  [v3 setStateCode:v14];

  v15 = [v2 value];
  v16 = [v15 postalCode];
  v17 = NonEmptyOrNilString(v16);
  [v3 setPostalCode:v17];

  v18 = [v2 value];

  v19 = [v18 ISOCountryCode];
  v20 = NonEmptyOrNilString(v19);
  [v3 setCountryCode:v20];

  return v3;
}

+ (id)addressesForSyncFromContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBD0C8]])
  {
    postalAddresses = [contactCopy postalAddresses];
    v6 = [self filterLabeledValues:postalAddresses droppingEmptyLabels:1 droppingDuplicates:1];

    v7 = [v6 mapUsingBlock:&__block_literal_global_22];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __53__CNAssistantConversion_addressesForSyncFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 label];

  [v3 setLabel:v4];

  return v3;
}

+ (id)relationsFromContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBD120]])
  {
    contactRelations = [contactCopy contactRelations];
    v6 = [self filterLabeledValues:contactRelations droppingEmptyLabels:1 droppingDuplicates:0];

    v7 = [v6 mapUsingBlock:&__block_literal_global_25];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

id __46__CNAssistantConversion_relationsFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 label];
  [v3 setLabel:v4];

  v5 = [v2 value];

  v6 = [v5 name];
  [v3 setName:v6];

  return v3;
}

+ (id)relationsForSyncFromContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBD120]])
  {
    contactRelations = [contactCopy contactRelations];
    v6 = [self filterLabeledValues:contactRelations droppingEmptyLabels:1 droppingDuplicates:1];

    v7 = [v6 mapUsingBlock:&__block_literal_global_28];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

id __53__CNAssistantConversion_relationsForSyncFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 label];

  [v3 setLabel:v4];

  return v3;
}

+ (id)socialProfilesFromContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBD138]])
  {
    socialProfiles = [contactCopy socialProfiles];
    v6 = [self filterLabeledValues:socialProfiles droppingEmptyLabels:0 droppingDuplicates:0];

    v7 = [v6 mapUsingBlock:&__block_literal_global_31];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

id __51__CNAssistantConversion_socialProfilesFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 value];
  v5 = [v4 service];
  v6 = NonEmptyOrNilString(v5);
  [v3 setServiceType:v6];

  v7 = [v2 value];
  v8 = [v7 urlString];
  v9 = NonEmptyOrNilString(v8);
  [v3 setUrl:v9];

  v10 = [v2 value];

  v11 = [v10 username];
  v12 = NonEmptyOrNilString(v11);
  [v3 setUserName:v12];

  return v3;
}

+ (id)verifyContact:(id)contact hasDescriptorsForRequiredKeys:(id)keys
{
  v14[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  keysCopy = keys;
  if ([contactCopy areKeysAvailable:keysCopy])
  {
    goto LABEL_4;
  }

  v14[0] = *MEMORY[0x277CBD018];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [contactCopy areKeysAvailable:v7];

  if (v8)
  {
    v9 = objc_opt_new();
    identifier = [contactCopy identifier];
    v11 = [v9 unifiedContactWithIdentifier:identifier keysToFetch:keysCopy error:0];

    contactCopy = v11;
LABEL_4:
    contactCopy = contactCopy;
    v12 = contactCopy;
    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

+ (void)markMeContactInPeople:(id)people usingStore:(id)store
{
  v24[1] = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  storeCopy = store;
  v24[0] = *MEMORY[0x277CBD018];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v8 = [storeCopy _crossPlatformUnifiedMeContactWithKeysToFetch:v7 error:0];

  if (v8)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = peopleCopy;
    v9 = peopleCopy;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          internalGUID = [v14 internalGUID];
          identifier = [v8 identifier];
          v17 = [internalGUID isEqualToString:identifier];

          if (v17)
          {
            [v14 setMe:MEMORY[0x277CBEC38]];
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    peopleCopy = v18;
  }
}

+ (id)keysFromPerson:(id)person
{
  personCopy = person;
  array = [MEMORY[0x277CBEB18] array];
  firstName = [personCopy firstName];

  if (firstName)
  {
    [array addObject:*MEMORY[0x277CBD000]];
  }

  lastName = [personCopy lastName];

  if (lastName)
  {
    [array addObject:*MEMORY[0x277CBCFF8]];
  }

  middleName = [personCopy middleName];

  if (middleName)
  {
    [array addObject:*MEMORY[0x277CBD058]];
  }

  nickName = [personCopy nickName];

  if (nickName)
  {
    [array addObject:*MEMORY[0x277CBD078]];
  }

  prefix = [personCopy prefix];

  if (prefix)
  {
    [array addObject:*MEMORY[0x277CBD068]];
  }

  suffix = [personCopy suffix];

  if (suffix)
  {
    [array addObject:*MEMORY[0x277CBD070]];
  }

  company = [personCopy company];

  if (company)
  {
    [array addObject:*MEMORY[0x277CBD090]];
  }

  birthday = [personCopy birthday];

  if (birthday)
  {
    [array addObject:*MEMORY[0x277CBCF90]];
  }

  phonemeData = [personCopy phonemeData];

  if (phonemeData)
  {
    [array addObject:*MEMORY[0x277CBD0A0]];
  }

  addresses = [personCopy addresses];

  if (addresses)
  {
    [array addObject:*MEMORY[0x277CBD0C8]];
  }

  emails = [personCopy emails];

  if (emails)
  {
    [array addObject:*MEMORY[0x277CBCFC0]];
  }

  phones = [personCopy phones];

  if (phones)
  {
    [array addObject:*MEMORY[0x277CBD098]];
  }

  relatedNames = [personCopy relatedNames];

  if (relatedNames)
  {
    [array addObject:*MEMORY[0x277CBD120]];
  }

  return array;
}

+ (id)addressesFromPerson:(id)person
{
  addresses = [person addresses];
  v4 = [addresses mapUsingBlock:&__block_literal_global_36];

  return v4;
}

id __45__CNAssistantConversion_addressesFromPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 street];
  [v3 setStreet:v4];

  v5 = [v2 city];
  [v3 setCity:v5];

  v6 = [v2 stateCode];
  [v3 setState:v6];

  v7 = [v2 postalCode];
  [v3 setPostalCode:v7];

  v8 = [v2 countryCode];
  [v3 setISOCountryCode:v8];

  v9 = MEMORY[0x277CBDB20];
  v10 = [v2 label];

  v11 = [v9 labeledValueWithLabel:v10 value:v3];

  return v11;
}

+ (id)emailAddressesFromPerson:(id)person
{
  emails = [person emails];
  v4 = [emails mapUsingBlock:&__block_literal_global_41];

  return v4;
}

id __50__CNAssistantConversion_emailAddressesFromPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDB20];
  v3 = a2;
  v4 = [v3 label];
  v5 = [v3 emailAddress];

  v6 = [v2 labeledValueWithLabel:v4 value:v5];

  return v6;
}

+ (id)phoneNumbersFromPerson:(id)person
{
  phones = [person phones];
  v4 = [phones mapUsingBlock:&__block_literal_global_44];

  return v4;
}

id __48__CNAssistantConversion_phoneNumbersFromPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDB70];
  v3 = a2;
  v4 = [v3 number];
  v5 = [v2 phoneNumberWithStringValue:v4];

  v6 = MEMORY[0x277CBDB20];
  v7 = [v3 label];

  v8 = [v6 labeledValueWithLabel:v7 value:v5];

  return v8;
}

+ (id)relationsFromPerson:(id)person
{
  relatedNames = [person relatedNames];
  v4 = [relatedNames mapUsingBlock:&__block_literal_global_48];

  return v4;
}

id __45__CNAssistantConversion_relationsFromPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDAB0];
  v3 = a2;
  v4 = [v3 name];
  v5 = [v2 contactRelationWithName:v4];

  v6 = MEMORY[0x277CBDB20];
  v7 = [v3 label];

  v8 = [v6 labeledValueWithLabel:v7 value:v5];

  return v8;
}

+ (void)addFieldsFromPerson:(id)person toContactWithIdentifier:(id)identifier usingStore:(id)store saveRequest:(id)request
{
  v41[9] = *MEMORY[0x277D85DE8];
  personCopy = person;
  requestCopy = request;
  storeCopy = store;
  identifierCopy = identifier;
  v14 = [self keysFromPerson:personCopy];
  v15 = *MEMORY[0x277CBCFC0];
  v41[0] = *MEMORY[0x277CBD098];
  v41[1] = v15;
  v16 = *MEMORY[0x277CBD168];
  v41[2] = *MEMORY[0x277CBCFB0];
  v41[3] = v16;
  v17 = *MEMORY[0x277CBD120];
  v41[4] = *MEMORY[0x277CBD038];
  v41[5] = v17;
  v18 = *MEMORY[0x277CBD0C8];
  v41[6] = *MEMORY[0x277CBD138];
  v41[7] = v18;
  v41[8] = *MEMORY[0x277CBCF98];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:9];
  v20 = [v14 arrayByAddingObjectsFromArray:v19];

  v40 = 0;
  v21 = [storeCopy contactWithIdentifier:identifierCopy keysToFetch:v20 error:&v40];

  v22 = v40;
  v23 = [v21 mutableCopy];

  if (v23)
  {
    addresses = [personCopy addresses];

    if (addresses)
    {
      v25 = [self addressesFromPerson:personCopy];
      postalAddresses = [v23 postalAddresses];
      v27 = [postalAddresses arrayByAddingObjectsFromArray:v25];
      [v23 setPostalAddresses:v27];
    }

    emails = [personCopy emails];

    if (emails)
    {
      v29 = [self emailAddressesFromPerson:personCopy];
      emailAddresses = [v23 emailAddresses];
      v31 = [emailAddresses arrayByAddingObjectsFromArray:v29];
      [v23 setEmailAddresses:v31];
    }

    phones = [personCopy phones];

    if (phones)
    {
      v33 = [self phoneNumbersFromPerson:personCopy];
      phoneNumbers = [v23 phoneNumbers];
      v35 = [phoneNumbers arrayByAddingObjectsFromArray:v33];
      [v23 setPhoneNumbers:v35];
    }

    relatedNames = [personCopy relatedNames];

    if (relatedNames)
    {
      v37 = [self relationsFromPerson:personCopy];
      contactRelations = [v23 contactRelations];
      v39 = [contactRelations arrayByAddingObjectsFromArray:v37];
      [v23 setContactRelations:v39];
    }

    [requestCopy updateContact:v23];
  }

  else
  {
    _AFServiceLog();
  }
}

+ (void)setFieldsFromPerson:(id)person toContactWithIdentifier:(id)identifier usingStore:(id)store saveRequest:(id)request
{
  v53[9] = *MEMORY[0x277D85DE8];
  personCopy = person;
  requestCopy = request;
  storeCopy = store;
  identifierCopy = identifier;
  v14 = [self keysFromPerson:personCopy];
  v15 = *MEMORY[0x277CBCFC0];
  v53[0] = *MEMORY[0x277CBD098];
  v53[1] = v15;
  v16 = *MEMORY[0x277CBD168];
  v53[2] = *MEMORY[0x277CBCFB0];
  v53[3] = v16;
  v17 = *MEMORY[0x277CBD120];
  v53[4] = *MEMORY[0x277CBD038];
  v53[5] = v17;
  v18 = *MEMORY[0x277CBD0C8];
  v53[6] = *MEMORY[0x277CBD138];
  v53[7] = v18;
  v53[8] = *MEMORY[0x277CBCF98];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];
  v20 = [v14 arrayByAddingObjectsFromArray:v19];

  v52 = 0;
  v21 = [storeCopy contactWithIdentifier:identifierCopy keysToFetch:v20 error:&v52];

  v22 = v52;
  v23 = [v21 mutableCopy];

  if (v23)
  {
    firstName = [personCopy firstName];

    if (firstName)
    {
      firstName2 = [personCopy firstName];
      [v23 setGivenName:firstName2];
    }

    lastName = [personCopy lastName];

    if (lastName)
    {
      lastName2 = [personCopy lastName];
      [v23 setFamilyName:lastName2];
    }

    middleName = [personCopy middleName];

    if (middleName)
    {
      middleName2 = [personCopy middleName];
      [v23 setMiddleName:middleName2];
    }

    nickName = [personCopy nickName];

    if (nickName)
    {
      nickName2 = [personCopy nickName];
      [v23 setNickname:nickName2];
    }

    prefix = [personCopy prefix];

    if (prefix)
    {
      prefix2 = [personCopy prefix];
      [v23 setNamePrefix:prefix2];
    }

    suffix = [personCopy suffix];

    if (suffix)
    {
      suffix2 = [personCopy suffix];
      [v23 setNameSuffix:suffix2];
    }

    company = [personCopy company];

    if (company)
    {
      company2 = [personCopy company];
      [v23 setOrganizationName:company2];
    }

    birthday = [personCopy birthday];

    if (birthday)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      birthday2 = [personCopy birthday];
      v41 = [currentCalendar components:28 fromDate:birthday2];

      [v23 setBirthday:v41];
    }

    phonemeData = [personCopy phonemeData];

    if (phonemeData)
    {
      phonemeData2 = [personCopy phonemeData];
      [v23 setPhonemeData:phonemeData2];
    }

    addresses = [personCopy addresses];

    if (addresses)
    {
      v45 = [CNAssistantConversion addressesFromPerson:personCopy];
      [v23 setPostalAddresses:v45];
    }

    emails = [personCopy emails];

    if (emails)
    {
      v47 = [CNAssistantConversion emailAddressesFromPerson:personCopy];
      [v23 setEmailAddresses:v47];
    }

    phones = [personCopy phones];

    if (phones)
    {
      v49 = [CNAssistantConversion phoneNumbersFromPerson:personCopy];
      [v23 setPhoneNumbers:v49];
    }

    relatedNames = [personCopy relatedNames];

    if (relatedNames)
    {
      v51 = [CNAssistantConversion relationsFromPerson:personCopy];
      [v23 setContactRelations:v51];
    }

    [requestCopy updateContact:v23];
  }

  else
  {
    _AFServiceLog();
  }
}

+ (void)removeFieldsFromPerson:(id)person toContactWithIdentifier:(id)identifier usingStore:(id)store saveRequest:(id)request
{
  personCopy = person;
  requestCopy = request;
  storeCopy = store;
  identifierCopy = identifier;
  v14 = [self keysFromPerson:personCopy];
  v19 = 0;
  v15 = [storeCopy contactWithIdentifier:identifierCopy keysToFetch:v14 error:&v19];

  v16 = v19;
  v17 = [v15 mutableCopy];

  if (personCopy)
  {
    phonemeData = [personCopy phonemeData];

    if (phonemeData)
    {
      [v17 setPhonemeData:0];
    }

    [requestCopy updateContact:v17];
  }

  else
  {
    _AFServiceLog();
  }
}

+ (void)applyUpdate:(id)update toContactWithIdentifier:(id)identifier usingStore:(id)store saveRequest:(id)request
{
  updateCopy = update;
  identifierCopy = identifier;
  storeCopy = store;
  requestCopy = request;
  addFields = [updateCopy addFields];

  if (addFields)
  {
    addFields2 = [updateCopy addFields];
    [self addFieldsFromPerson:addFields2 toContactWithIdentifier:identifierCopy usingStore:storeCopy saveRequest:requestCopy];
  }

  setFields = [updateCopy setFields];

  if (setFields)
  {
    setFields2 = [updateCopy setFields];
    [self setFieldsFromPerson:setFields2 toContactWithIdentifier:identifierCopy usingStore:storeCopy saveRequest:requestCopy];

    setFields3 = [updateCopy setFields];
    v18 = [setFields3 me];
    [v18 BOOLValue];
  }

  removeFields = [updateCopy removeFields];

  if (removeFields)
  {
    removeFields2 = [updateCopy removeFields];
    [self removeFieldsFromPerson:removeFields2 toContactWithIdentifier:identifierCopy usingStore:storeCopy saveRequest:requestCopy];
  }
}

@end