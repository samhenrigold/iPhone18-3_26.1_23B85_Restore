@interface SGParsedPersonFromInteraction
+ (id)_peopleFromInteraction:(id)interaction;
+ (id)intentClassWhitelist;
+ (id)parseInteraction:(id)interaction bundleId:(id)id;
- (SGParsedPersonFromInteraction)initWithPerson:(id)person bundleId:(id)id interactionIdentifier:(id)identifier groupId:(id)groupId date:(id)date;
- (id)pipelineEntity;
- (void)_harvestEmail:(id)email;
- (void)_harvestPerson:(id)person handle:(id)handle suggestionType:(int64_t)type bundleId:(id)id;
- (void)_harvestPhoneNumber:(id)number;
- (void)_harvestSocialProfile:(id)profile handle:(id)handle bundleId:(id)id;
- (void)grabNameIfNeededFromContactStore:(id)store;
@end

@implementation SGParsedPersonFromInteraction

- (id)pipelineEntity
{
  v70 = *MEMORY[0x277D85DE8];
  displayName = self->_displayName;
  if (displayName && !heuristicIdentifyHandle(displayName))
  {
    v4 = self->_displayName;
  }

  else
  {
    v4 = &stru_284703F00;
  }

  v5 = v4;
  v6 = SGNormalizePhoneNumber();
  socialProfile = self->_socialProfile;
  if (socialProfile)
  {
    serialize = [(SGSocialProfileDetails *)self->_socialProfile serialize];
    v9 = [SGIdentityKey keyForSocialProfile:serialize];

    userIdentifier = [(SGSocialProfileDetails *)self->_socialProfile userIdentifier];
    v11 = [userIdentifier length];
    v12 = self->_socialProfile;
    if (v11)
    {
      [(SGSocialProfileDetails *)v12 userIdentifier];
    }

    else
    {
      [(SGSocialProfileDetails *)v12 username];
    }
    v13 = ;
    v14 = 1;
    goto LABEL_12;
  }

  if (self->_phoneNumber)
  {
    v9 = [SGIdentityKey keyForNormalizedPhone:v6];
    userIdentifier = [(INPersonHandle *)self->_handle value];
    v13 = SGNormalizePhoneNumber();
    v14 = 0;
LABEL_12:
    v15 = 1;
    goto LABEL_13;
  }

  if (!self->_email)
  {
    v13 = 0;
    v9 = 0;
    goto LABEL_47;
  }

  v9 = [SGIdentityKey keyForEmail:?];
  userIdentifier = [(INPersonHandle *)self->_handle value];
  v13 = SGNormalizeEmailAddress();
  v15 = 0;
  v14 = 1;
LABEL_13:

  if (v9 && [v13 length])
  {
    v49 = v14;
    v50 = v15;
    v54 = v6;
    v16 = [[SGPipelineEntity alloc] initWithIntentPersonAtDate:self->_date bundleId:self->_bundleId handle:v13 displayName:v5];
    v17 = [[SGPseudoContactKey alloc] initWithIdentityKey:v9];
    v18 = [SGDuplicateKey alloc];
    duplicateKey = [(SGEntity *)v16 duplicateKey];
    v52 = v17;
    v20 = [(SGDuplicateKey *)v18 initWithEntityKey:v17 entityType:4 parentKey:duplicateKey];

    v51 = v20;
    v53 = v5;
    v21 = [[SGPipelineEnrichment alloc] initWithDuplicateKey:v20 title:v5 parent:v16];
    v55 = v9;
    if (socialProfile)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      uniqueIdentifiers = [(SGSocialProfileDetails *)self->_socialProfile uniqueIdentifiers];
      v23 = [uniqueIdentifiers countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v61;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v61 != v25)
            {
              objc_enumerationMutation(uniqueIdentifiers);
            }

            v27 = *(*(&v60 + 1) + 8 * i);
            v28 = MEMORY[0x277D01FA0];
            SGNormalizeSocialProfile(v27);
            objc_claimAutoreleasedReturnValue();
            v29 = [v28 contactDetail:v27];
            [(SGEntity *)v21 addTag:v29];
          }

          v24 = [uniqueIdentifiers countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v24);
      }

      v9 = v55;
    }

    [(SGPipelineEntity *)v16 addEnrichment:v21];
    v30 = v49 ^ 1;
    if (!self->_phoneNumber)
    {
      v30 = 1;
    }

    if ((v30 & 1) == 0)
    {
      v31 = [[SGLabeledValue alloc] initWithLabel:0 value:v54];
      v32 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:16 modelVersion:0 confidence:0];
      [(SGPipelineEntity *)v16 addDetectedPhoneNumber:v31 forIdentity:v9 context:0 contextRangeOfInterest:0x7FFFFFFFFFFFFFFFLL extractionInfo:0, v32];
    }

    v33 = v50 ^ 1;
    if (!self->_email)
    {
      v33 = 1;
    }

    if ((v33 & 1) == 0)
    {
      v34 = [[SGLabeledValue alloc] initWithLabel:0 value:self->_email];
      v35 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:16 modelVersion:0 confidence:0];
      [(SGPipelineEntity *)v16 addDetectedEmailAddress:v34 forIdentity:v9 context:0 contextRangeOfInterest:0x7FFFFFFFFFFFFFFFLL extractionInfo:0, v35];
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    enrichments = [(SGPipelineEntity *)v16 enrichments];
    v37 = [enrichments countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v57;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v57 != v39)
          {
            objc_enumerationMutation(enrichments);
          }

          v41 = *(*(&v56 + 1) + 8 * j);
          fromInteraction = [MEMORY[0x277D01FA0] fromInteraction];
          [v41 addTag:fromInteraction];

          v43 = [MEMORY[0x277D01FA0] interactionId:self->_interactionIdentifier];
          [v41 addTag:v43];

          v44 = [MEMORY[0x277D01FA0] interactionBundleId:self->_bundleId];
          [v41 addTag:v44];

          if (self->_contactIdentifier)
          {
            v45 = [MEMORY[0x277D01FA0] interactionContactIdentifier:?];
            [v41 addTag:v45];
          }

          if (self->_groupId)
          {
            v46 = [MEMORY[0x277D01FA0] interactionGroupId:?];
            [v41 addTag:v46];
          }
        }

        v38 = [enrichments countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v38);
    }

    v5 = v53;
    v6 = v54;
    v9 = v55;
    p_super = &v52->super;
    goto LABEL_50;
  }

LABEL_47:
  p_super = sgLogHandle();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v67 = v9;
    v68 = 2112;
    v69 = v13;
    _os_log_error_impl(&dword_231E60000, p_super, OS_LOG_TYPE_ERROR, "Interaction Person has no identity/handle: %@ / %@", buf, 0x16u);
  }

  v16 = 0;
LABEL_50:

  return v16;
}

- (void)grabNameIfNeededFromContactStore:(id)store
{
  v18 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (!self->_displayName && self->_contactIdentifier)
  {
    if (grabNameIfNeededFromContactStore___pasOnceToken3 != -1)
    {
      dispatch_once(&grabNameIfNeededFromContactStore___pasOnceToken3, &__block_literal_global_398);
    }

    v5 = grabNameIfNeededFromContactStore___pasExprOnceResult;
    contactIdentifier = self->_contactIdentifier;
    v13 = 0;
    v7 = [SGContactsInterface unifiedContactWithIdentifier:contactIdentifier keysToFetch:v5 usingContactStore:storeCopy error:&v13];
    v8 = v13;
    v9 = v8;
    if (v7)
    {
      v10 = [MEMORY[0x277CBDA78] stringFromContact:v7 style:0];
      p_super = &self->_displayName->super;
      self->_displayName = v10;
    }

    else
    {
      if (!v8)
      {
LABEL_11:

        goto LABEL_12;
      }

      p_super = sgLogHandle();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v12 = self->_contactIdentifier;
        *buf = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v9;
        _os_log_error_impl(&dword_231E60000, p_super, OS_LOG_TYPE_ERROR, "Error fetching contact for identifier '%@': %@", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

LABEL_12:
}

void __66__SGParsedPersonFromInteraction_grabNameIfNeededFromContactStore___block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v4[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v3 = grabNameIfNeededFromContactStore___pasExprOnceResult;
  grabNameIfNeededFromContactStore___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

- (void)_harvestSocialProfile:(id)profile handle:(id)handle bundleId:(id)id
{
  if (!self->_socialProfile)
  {
    v9 = MEMORY[0x277D02070];
    idCopy = id;
    handleCopy = handle;
    profileCopy = profile;
    v33 = [v9 originWithType:5 sourceKey:idCopy externalKey:&stru_284703F00 bundleId:idCopy fromForwardedMessage:0];
    v32 = [SGSocialProfileDetails alloc];
    value = [handleCopy value];

    if (value)
    {
      v14 = value;
    }

    else
    {
      v14 = &stru_284703F00;
    }

    v31 = v14;
    customIdentifier = [profileCopy customIdentifier];
    v16 = customIdentifier;
    if (customIdentifier)
    {
      v17 = customIdentifier;
    }

    else
    {
      v17 = &stru_284703F00;
    }

    if (idCopy)
    {
      v18 = idCopy;
    }

    else
    {
      v18 = &stru_284703F00;
    }

    v29 = v18;
    v30 = v17;
    displayName = [profileCopy displayName];

    if (displayName)
    {
      v20 = displayName;
    }

    else
    {
      v20 = &stru_284703F00;
    }

    localizedApplicationName = [v33 localizedApplicationName];
    v22 = localizedApplicationName;
    if (localizedApplicationName)
    {
      v23 = localizedApplicationName;
    }

    else
    {
      v23 = &stru_284703F00;
    }

    teamId = [v33 teamId];
    v25 = teamId;
    if (teamId)
    {
      v26 = teamId;
    }

    else
    {
      v26 = &stru_284703F00;
    }

    v27 = [(SGSocialProfileDetails *)v32 initWithUsername:v31 userIdentifier:v30 bundleIdentifier:v29 displayName:v20 service:v23 teamIdentifier:v26];

    socialProfile = self->_socialProfile;
    self->_socialProfile = v27;
  }
}

- (void)_harvestPhoneNumber:(id)number
{
  if (!self->_phoneNumber)
  {
    v5 = SGDataDetectorsScanForPhone(number);
    phoneNumber = self->_phoneNumber;
    self->_phoneNumber = v5;

    MEMORY[0x2821F96F8](v5, phoneNumber);
  }
}

- (void)_harvestEmail:(id)email
{
  emailCopy = email;
  v5 = emailCopy;
  if (!self->_email && (CFStringGetCStringPtr(emailCopy, 0x8000100u) || [(__CFString *)v5 UTF8String]))
  {
    SGParseNamedEmailAddress();
  }
}

- (void)_harvestPerson:(id)person handle:(id)handle suggestionType:(int64_t)type bundleId:(id)id
{
  personCopy = person;
  handleCopy = handle;
  idCopy = id;
  value = [handleCopy value];
  if (![value length])
  {

    goto LABEL_15;
  }

  value2 = [handleCopy value];
  v14 = [value2 length];

  if (v14 > 0x3E8)
  {
    goto LABEL_15;
  }

  type = [handleCopy type];
  if (type == 2)
  {
    goto LABEL_11;
  }

  if (type == 1)
  {
LABEL_9:
    value3 = [handleCopy value];
    [(SGParsedPersonFromInteraction *)self _harvestEmail:value3];
LABEL_12:

LABEL_13:
    if ((type - 1) > 1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (type)
  {
    goto LABEL_13;
  }

  if ((type - 1) >= 2)
  {
    value4 = [(INPersonHandle *)self->_handle value];
    v17 = heuristicIdentifyHandle(value4);

    if (v17 != 2)
    {
      if (v17 != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

LABEL_11:
    value3 = [handleCopy value];
    [(SGParsedPersonFromInteraction *)self _harvestPhoneNumber:value3];
    goto LABEL_12;
  }

LABEL_14:
  [(SGParsedPersonFromInteraction *)self _harvestSocialProfile:personCopy handle:handleCopy bundleId:idCopy];
LABEL_15:
}

- (SGParsedPersonFromInteraction)initWithPerson:(id)person bundleId:(id)id interactionIdentifier:(id)identifier groupId:(id)groupId date:(id)date
{
  v60 = *MEMORY[0x277D85DE8];
  personCopy = person;
  idCopy = id;
  identifierCopy = identifier;
  obj = groupId;
  groupIdCopy = groupId;
  dateCopy = date;
  if (personCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_36:
    [MEMORY[0x277CCA890] currentHandler];
    v44 = v50 = date;
    [v44 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    date = v50;
    if (identifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  [MEMORY[0x277CCA890] currentHandler];
  v43 = v49 = date;
  [v43 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"person"}];

  date = v49;
  if (!idCopy)
  {
    goto LABEL_36;
  }

LABEL_3:
  if (identifierCopy)
  {
    goto LABEL_4;
  }

LABEL_37:
  [MEMORY[0x277CCA890] currentHandler];
  v45 = v51 = date;
  [v45 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"interactionIdentifier"}];

  date = v51;
LABEL_4:
  v58.receiver = self;
  v58.super_class = SGParsedPersonFromInteraction;
  v18 = [(SGParsedPersonFromInteraction *)&v58 init];
  if (!v18)
  {
LABEL_32:
    v24 = v18;
    goto LABEL_33;
  }

  personHandle = [personCopy personHandle];
  handle = v18->_handle;
  v18->_handle = personHandle;

  value = [(INPersonHandle *)v18->_handle value];
  if (![value length])
  {

    goto LABEL_10;
  }

  dateCopy2 = date;
  v52 = dateCopy;
  value2 = [(INPersonHandle *)v18->_handle value];
  v23 = [value2 length];

  if (v23 <= 0x3E8)
  {
    v46 = groupIdCopy;
    v47 = identifierCopy;
    personHandle2 = [personCopy personHandle];
    -[SGParsedPersonFromInteraction _harvestPerson:handle:suggestionType:bundleId:](v18, "_harvestPerson:handle:suggestionType:bundleId:", personCopy, personHandle2, [personCopy suggestionType], idCopy);

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    aliases = [personCopy aliases];
    v27 = [aliases countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v55;
      do
      {
        v30 = 0;
        do
        {
          if (*v55 != v29)
          {
            objc_enumerationMutation(aliases);
          }

          -[SGParsedPersonFromInteraction _harvestPerson:handle:suggestionType:bundleId:](v18, "_harvestPerson:handle:suggestionType:bundleId:", personCopy, *(*(&v54 + 1) + 8 * v30++), [personCopy suggestionType], idCopy);
        }

        while (v28 != v30);
        v28 = [aliases countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v28);
    }

    if (!v18->_email && !v18->_phoneNumber && !v18->_socialProfile)
    {
      v24 = 0;
      groupIdCopy = v46;
      identifierCopy = v47;
      goto LABEL_8;
    }

    objc_storeStrong(&v18->_bundleId, id);
    objc_storeStrong(&v18->_interactionIdentifier, identifier);
    objc_storeStrong(&v18->_groupId, obj);
    objc_storeStrong(&v18->_date, dateCopy2);
    displayName = [personCopy displayName];
    controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
    v33 = [displayName stringByTrimmingCharactersInSet:controlCharacterSet];
    displayName = v18->_displayName;
    v18->_displayName = v33;

    nameComponents = [personCopy nameComponents];
    nameComponents = v18->_nameComponents;
    v18->_nameComponents = nameComponents;

    contactIdentifier = [personCopy contactIdentifier];
    contactIdentifier = v18->_contactIdentifier;
    v18->_contactIdentifier = contactIdentifier;

    groupIdCopy = v46;
    identifierCopy = v47;
    if (!v18->_nameComponents && !v18->_socialProfile && (v18->_email || v18->_phoneNumber || v18->_contactIdentifier))
    {
      value3 = [(INPersonHandle *)v18->_handle value];
      if ([value3 isEqualToString:v18->_displayName])
      {

LABEL_29:
        v41 = v18->_displayName;
        v18->_displayName = 0;

        goto LABEL_30;
      }

      v40 = heuristicIdentifyHandle(v18->_displayName);

      if (v40)
      {
        goto LABEL_29;
      }
    }

LABEL_30:
    dateCopy = v52;
    if (v18->_displayName || v18->_contactIdentifier)
    {
      goto LABEL_32;
    }

LABEL_10:
    v24 = 0;
    goto LABEL_33;
  }

  v24 = 0;
LABEL_8:
  dateCopy = v52;
LABEL_33:

  return v24;
}

+ (id)intentClassWhitelist
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)parseInteraction:(id)interaction bundleId:(id)id
{
  v33 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  idCopy = id;
  v9 = idCopy;
  if (interactionCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

LABEL_3:
  dateInterval = [interactionCopy dateInterval];
  startDate = [dateInterval startDate];

  v27 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [self _peopleFromInteraction:interactionCopy];
  v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        v16 = v9;
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [SGParsedPersonFromInteraction alloc];
        identifier = [interactionCopy identifier];
        groupIdentifier = [interactionCopy groupIdentifier];
        v21 = v18;
        v9 = v16;
        v22 = [(SGParsedPersonFromInteraction *)v21 initWithPerson:v17 bundleId:v16 interactionIdentifier:identifier groupId:groupIdentifier date:startDate];

        if (v22)
        {
          [v27 addObject:v22];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  return v27;
}

+ (id)_peopleFromInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([interactionCopy direction] == 2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  intent = [interactionCopy intent];
  if (!intent)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recipients = [intent recipients];
      goto LABEL_8;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  recipients = [intent contacts];
LABEL_8:
  v4 = recipients;
LABEL_10:

LABEL_11:

  return v4;
}

@end