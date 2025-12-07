@interface SGStorageContact
+ (id)contactFromContactEntity:(id)entity;
+ (id)contactWithMasterEntityId:(int64_t)id;
+ (id)mergeAll:(id)all;
- (BOOL)hasProfileFromInteraction;
- (BOOL)hasProfileFromTextMessage;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStorageContact:(id)contact;
- (NSString)name;
- (SGStorageContact)init;
- (id)allNames;
- (id)bestProfile;
- (id)convertToContact:(id)contact sourceEntity:(id)entity enrichments:(id)enrichments;
- (id)description;
- (id)loadAddressDetailsFrom:(id)from;
- (id)loadAllDetailsFrom:(id)from;
- (id)loadBirthdayDetailsFrom:(id)from;
- (id)loadEmailAddressDetailsFrom:(id)from;
- (id)loadPhoneDetailsFrom:(id)from;
- (void)merge:(id)merge;
@end

@implementation SGStorageContact

- (BOOL)hasProfileFromTextMessage
{
  v16 = *MEMORY[0x277D85DE8];
  fromTextMessage = [MEMORY[0x277D01FA0] fromTextMessage];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        tags = [*(*(&v11 + 1) + 8 * i) tags];
        v9 = [tags containsObject:fromTextMessage];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)hasProfileFromInteraction
{
  v16 = *MEMORY[0x277D85DE8];
  fromInteraction = [MEMORY[0x277D01FA0] fromInteraction];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        tags = [*(*(&v11 + 1) + 8 * i) tags];
        v9 = [tags containsObject:fromInteraction];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)bestProfile
{
  v24 = *MEMORY[0x277D85DE8];
  name = [(SGStorageContact *)self name];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    v9 = -INFINITY;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        title = [v11 title];
        v13 = [title isEqualToString:name];

        if (v13)
        {
          v17 = v11;

          v7 = v17;
          goto LABEL_14;
        }

        [v11 creationTimestamp];
        if (v14 > v9)
        {
          v15 = v14;
          v16 = v11;

          v9 = v15;
          v7 = v16;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (id)convertToContact:(id)contact sourceEntity:(id)entity enrichments:(id)enrichments
{
  v95 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  entityCopy = entity;
  v9 = contactCopy;
  v10 = entityCopy;
  enrichmentsCopy = enrichments;
  v81 = [MEMORY[0x277D02070] originWithType:0 sourceKey:0 externalKey:0 fromForwardedMessage:0];
  v84 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v12 = enrichmentsCopy;
  v13 = [v12 countByEnumeratingWithState:&v89 objects:v94 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v90;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v90 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v89 + 1) + 8 * i);
        recordId = [v17 recordId];

        if (recordId)
        {
          v19 = MEMORY[0x277D02070];
          duplicateKey = [v17 duplicateKey];
          v21 = [v19 originForDuplicateKey:duplicateKey entity:v17 parent:v10 store:v9];
          recordId2 = [v17 recordId];
          [v84 setObject:v21 forKeyedSubscript:recordId2];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v89 objects:v94 count:16];
    }

    while (v14);
  }

  recordId3 = [v10 recordId];

  if (recordId3)
  {
    v24 = MEMORY[0x277D02070];
    duplicateKey2 = [v10 duplicateKey];
    v26 = [v24 originForDuplicateKey:duplicateKey2 entity:v10 parent:0 store:v9];
    recordId4 = [v10 recordId];
    [v84 setObject:v26 forKeyedSubscript:recordId4];
  }

  v28 = [(SGStorageContact *)self loadAllDetailsFrom:v9];
  phoneNumbers = [v28 phoneNumbers];
  v80 = sgMapAndFilter();

  postalAddresses = [v28 postalAddresses];
  v79 = sgMapAndFilter();

  emailAddresses = [v28 emailAddresses];
  v78 = sgMapAndFilter();

  socialProfiles = [v28 socialProfiles];
  v77 = sgMapAndFilter();

  birthday = [v28 birthday];

  if (birthday)
  {
    v75 = MEMORY[0x277D01F78];
    birthday2 = [v28 birthday];
    value = [birthday2 value];
    v34 = SGDateComponentsFromNormalizeBirthday(value);
    birthday3 = [v28 birthday];
    label = [birthday3 label];
    birthday4 = [v28 birthday];
    extractionInfo = [birthday4 extractionInfo];
    birthday5 = [v28 birthday];
    recordId5 = [birthday5 recordId];
    v76 = [v75 dateComponents:v34 label:label extractionInfo:extractionInfo withRecordId:recordId5];
  }

  else
  {
    v76 = 0;
  }

  photoPath = [v28 photoPath];

  if (photoPath)
  {
    photoPath2 = [v28 photoPath];
    value2 = [photoPath2 value];
  }

  else
  {
    value2 = 0;
  }

  bestProfile = [(SGStorageContact *)self bestProfile];
  v43 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(bestProfile, "masterEntityId")}];
  title = [bestProfile title];
  v45 = [v84 objectForKeyedSubscript:v43];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = v81;
  }

  v70 = bestProfile;
  extractionInfo2 = [bestProfile extractionInfo];
  v49 = [SGNames sgNameFromString:title origin:v47 recordId:v43 extractionInfo:extractionInfo2];

  v66 = v49;
  v67 = v43;
  v50 = [MEMORY[0x277D01F60] contactWithId:v43 name:v49 emailAddresses:v78 phones:v80 postalAddresses:v79 socialProfiles:v77 birthday:v76 photoPath:value2];
  if ([(SGStorageContact *)self hasProfileFromInteraction])
  {
    [v50 setSignificance:1];
    [v50 setSignificanceOrigin:1];
  }

  v68 = v50;
  v72 = v28;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obja = v12;
  v51 = [obja countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = 0;
    v54 = *v86;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v86 != v54)
        {
          objc_enumerationMutation(obja);
        }

        v56 = *(*(&v85 + 1) + 8 * j);
        extractionInfo3 = [v56 extractionInfo];
        if ([extractionInfo3 extractionType] == 64)
        {
          duplicateKey3 = [v56 duplicateKey];
          v59 = v10;
          v60 = v9;
          v61 = [duplicateKey3 entityType] == 4;

          v53 = v53 | v61;
          v9 = v60;
          v10 = v59;
        }

        else
        {
        }

        extractionInfo4 = [v56 extractionInfo];
        if ([extractionInfo4 extractionType] == 64)
        {
          duplicateKey4 = [v56 duplicateKey];
          entityType = [duplicateKey4 entityType];

          if (entityType == 23)
          {
            v53 = v53 | 2;
          }

          else
          {
            v53 = v53;
          }
        }

        else
        {
        }
      }

      v52 = [obja countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v52);
  }

  else
  {
    v53 = 0;
  }

  [v68 setUpdatedFields:v53];

  return v68;
}

id __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SGSocialProfileDetails alloc];
  v4 = [v2 value];
  v5 = [(SGSocialProfileDetails *)v3 initWithSerialized:v4];

  if (v5)
  {
    v17 = objc_alloc(MEMORY[0x277D020F0]);
    v18 = [(SGSocialProfileDetails *)v5 username];
    v16 = [(SGSocialProfileDetails *)v5 userIdentifier];
    v6 = [(SGSocialProfileDetails *)v5 bundleIdentifier];
    v7 = [(SGSocialProfileDetails *)v5 displayName];
    v8 = [(SGSocialProfileDetails *)v5 service];
    v9 = [(SGSocialProfileDetails *)v5 teamIdentifier];
    v10 = [v2 label];
    v11 = [v2 extractionInfo];
    v12 = [v2 recordId];
    v13 = v8;
    v14 = [v17 initWithUsername:v18 userIdentifier:v16 bundleIdentifier:v6 displayName:v7 service:v8 teamIdentifier:v9 label:v10 extractionInfo:v11 recordId:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01F90];
  v3 = a2;
  v4 = [v3 value];
  v5 = [v3 label];
  v6 = [v3 extractionInfo];
  v7 = [v3 recordId];

  v8 = [v2 emailAddress:v4 label:v5 extractionInfo:v6 withRecordId:v7];

  return v8;
}

id __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = SGPostalAddressParse(v3);

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_3;
  v19[3] = &unk_27894C3D8;
  v19[4] = &v20;
  [v4 enumerateKeysAndObjectsUsingBlock:v19];
  if (*(v21 + 24) == 1)
  {
    [v4 objectForKeyedSubscript:@"Street"];
  }

  else
  {
    [v2 value];
  }
  v5 = ;
  v6 = MEMORY[0x277D02090];
  v7 = [v4 objectForKeyedSubscript:@"City"];
  v8 = [v4 objectForKeyedSubscript:@"State"];
  v9 = [v4 objectForKeyedSubscript:@"ZIP"];
  v10 = [v4 objectForKeyedSubscript:@"Country"];
  v11 = [v6 components:v5 city:v7 state:v8 postalCode:v9 country:v10];

  v12 = MEMORY[0x277D02088];
  v13 = [v2 value];
  v14 = [v2 label];
  v15 = [v2 extractionInfo];
  v16 = [v2 recordId];
  v17 = [v12 postalAddress:v13 components:v11 label:v14 extractionInfo:v15 recordId:v16];

  _Block_object_dispose(&v20, 8);

  return v17;
}

void *__62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, BOOL *a4)
{
  result = [a3 length];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  *a4 = result != 0;
  return result;
}

id __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D02080];
  v3 = a2;
  v4 = [v3 value];
  v5 = [v3 label];
  v6 = [v3 extractionInfo];
  v7 = [v3 recordId];

  v8 = [v2 phoneNumber:v4 label:v5 extractionInfo:v6 recordId:v7];

  return v8;
}

- (id)loadBirthdayDetailsFrom:(id)from
{
  v3 = [(SGStorageContact *)self loadAllDetailsFrom:from];
  birthday = [v3 birthday];

  return birthday;
}

- (id)loadEmailAddressDetailsFrom:(id)from
{
  v3 = [(SGStorageContact *)self loadAllDetailsFrom:from];
  emailAddresses = [v3 emailAddresses];

  return emailAddresses;
}

- (id)loadAddressDetailsFrom:(id)from
{
  v3 = [(SGStorageContact *)self loadAllDetailsFrom:from];
  postalAddresses = [v3 postalAddresses];

  return postalAddresses;
}

- (id)loadPhoneDetailsFrom:(id)from
{
  v3 = [(SGStorageContact *)self loadAllDetailsFrom:from];
  phoneNumbers = [v3 phoneNumbers];

  return phoneNumbers;
}

- (id)loadAllDetailsFrom:(id)from
{
  v33 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  internalDetectedDetails = [(SGStorageContact *)self internalDetectedDetails];
  if (!internalDetectedDetails)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:objc_msgSend_count(self->_profiles)];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = self->_profiles;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          recordId = [*(*(&v28 + 1) + 8 * i) recordId];
          v13 = [fromCopy loadAllContactDetailsForRecordId:recordId];
          [v6 addObjectsFromArray:v13];
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v9);
    }

    v14 = [SGDeduper splitContactDetailsByType:v6];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __39__SGStorageContact_loadAllDetailsFrom___block_invoke;
    v26[3] = &unk_27894C370;
    v27 = v14;
    v15 = v14;
    v16 = MEMORY[0x2383809F0](v26);
    internalDetectedDetails = objc_opt_new();
    v17 = v16[2](v16, 2);
    [internalDetectedDetails setEmailAddresses:v17];

    v18 = v16[2](v16, 1);
    [internalDetectedDetails setPostalAddresses:v18];

    v19 = v16[2](v16, 0);
    [internalDetectedDetails setPhoneNumbers:v19];

    v20 = v16[2](v16, 4);
    [internalDetectedDetails setSocialProfiles:v20];

    v21 = v16[2](v16, 6);
    firstObject = [v21 firstObject];
    [internalDetectedDetails setBirthday:firstObject];

    v23 = v16[2](v16, 5);
    firstObject2 = [v23 firstObject];
    [internalDetectedDetails setPhotoPath:firstObject2];
  }

  return internalDetectedDetails;
}

id __39__SGStorageContact_loadAllDetailsFrom___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [SGDeduper dedupeContactDetails:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)merge:(id)merge
{
  v17 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  if (![(SGStorageContact *)self canMerge:mergeCopy])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGStorageContact.m" lineNumber:149 description:@"Merging with a contact that isn't mergable"];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = mergeCopy[1];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SGStorageContact *)self addProfile:*(*(&v12 + 1) + 8 * v10++), v12];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (NSString)name
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:objc_msgSend_count(self->_profiles)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        title = [v9 title];

        if (title)
        {
          title2 = [v9 title];
          v12 = normalizeName(title2);
          [v3 addObject:v12];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [SGNames bestName:v3];

  return v13;
}

- (id)allNames
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:objc_msgSend_count(self->_profiles)];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        title = [v9 title];

        if (title)
        {
          title2 = [v9 title];
          v12 = normalizeName(title2);
          [v3 addObject:v12];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  name = [(SGStorageContact *)self name];
  v5 = [v3 initWithFormat:@"<SGStorageContact: %@ - %lu profile(s)>", name, objc_msgSend_count(self->_profiles)];

  return v5;
}

- (BOOL)isEqualToStorageContact:(id)contact
{
  contactCopy = contact;
  masterEntityId = self->_masterEntityId;
  if (masterEntityId == [contactCopy masterEntityId])
  {
    v6 = self->_profiles;
    v7 = v6;
    if (v6 == contactCopy[1])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSMutableSet *)v6 isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGStorageContact *)self isEqualToStorageContact:v5];
  }

  return v6;
}

- (SGStorageContact)init
{
  v6.receiver = self;
  v6.super_class = SGStorageContact;
  v2 = [(SGStorageContact *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    profiles = v2->_profiles;
    v2->_profiles = v3;
  }

  return v2;
}

+ (id)mergeAll:(id)all
{
  v28 = *MEMORY[0x277D85DE8];
  allCopy = all;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:objc_msgSend_count(allCopy)];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = allCopy;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = v4;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              if ([v15 canMerge:v9])
              {
                [v15 merge:v9];

                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        [v10 addObject:v9];
LABEL_16:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)contactWithMasterEntityId:(int64_t)id
{
  v4 = objc_opt_new();
  v4[2] = id;

  return v4;
}

+ (id)contactFromContactEntity:(id)entity
{
  entityCopy = entity;
  v4 = objc_opt_new();
  v4[2] = [entityCopy masterEntityId];
  v5 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(entityCopy, "masterEntityId")}];
  v6 = v4[3];
  v4[3] = v5;

  [v4 addProfile:entityCopy];

  return v4;
}

@end