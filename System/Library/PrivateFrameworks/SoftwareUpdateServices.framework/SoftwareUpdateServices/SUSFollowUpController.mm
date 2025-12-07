@interface SUSFollowUpController
+ (id)sharedController;
+ (id)stringForSUSFollowUpType:(unint64_t)type;
- (BOOL)_isCurrentlyPresentingFollowUpType:(unint64_t)type currentFollowUps:(id)ups;
- (BOOL)isCurrentlyPresentingFollowUpType:(unint64_t)type;
- (BOOL)isCurrentlyPresentingFollowUpTypes:(id)types presentationOption:(unint64_t)option;
- (BOOL)isfollowUpSUSRelated:(id)related;
- (SUSFollowUpController)init;
- (id)getCurrentSUSFollowUpItems;
- (id)identifierForSUFollowUpType:(unint64_t)type;
- (id)identifiersForSUFollowUpTypes:(id)types;
- (void)SUSFollowUpControllerBadgeSettings:(id)settings;
- (void)SUSFollowUpControllerUnbadgeSettings;
- (void)dismissAllSUFollowUps;
- (void)dismissFollowUpType:(unint64_t)type;
- (void)dismissFollowUpTypes:(id)types;
- (void)dismissFollowUpWithIdentifiers:(id)identifiers;
- (void)dismissLegacyFollowUps;
- (void)postFollowUpItem:(id)item;
- (void)postFollowUpOfType:(unint64_t)type withUpdate:(id)update userInfo:(id)info;
@end

@implementation SUSFollowUpController

- (SUSFollowUpController)init
{
  v6.receiver = self;
  v6.super_class = SUSFollowUpController;
  v2 = [(SUSFollowUpController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.SoftwareUpdateServices.followup"];
    followUpController = v2->_followUpController;
    v2->_followUpController = v3;
  }

  return v2;
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[SUSFollowUpController sharedController];
  }

  v3 = sharedController_sharedInstance;

  return v3;
}

uint64_t __41__SUSFollowUpController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SUSFollowUpController);
  v1 = sharedController_sharedInstance;
  sharedController_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)isCurrentlyPresentingFollowUpTypes:(id)types presentationOption:(unint64_t)option
{
  v20 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  getCurrentSUSFollowUpItems = [(SUSFollowUpController *)self getCurrentSUSFollowUpItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = typesCopy;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v4 = -[SUSFollowUpController _isCurrentlyPresentingFollowUpType:currentFollowUps:](self, "_isCurrentlyPresentingFollowUpType:currentFollowUps:", [*(*(&v15 + 1) + 8 * i) integerValue], getCurrentSUSFollowUpItems);
        if (v4)
        {
          if (option == 1)
          {
            LOBYTE(option) = 0;
            goto LABEL_13;
          }
        }

        else if (!option)
        {
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  LOBYTE(option) = 1;
LABEL_13:

  return (v4 | option) & 1;
}

- (BOOL)isCurrentlyPresentingFollowUpType:(unint64_t)type
{
  getCurrentSUSFollowUpItems = [(SUSFollowUpController *)self getCurrentSUSFollowUpItems];
  LOBYTE(type) = [(SUSFollowUpController *)self _isCurrentlyPresentingFollowUpType:type currentFollowUps:getCurrentSUSFollowUpItems];

  return type;
}

- (BOOL)_isCurrentlyPresentingFollowUpType:(unint64_t)type currentFollowUps:(id)ups
{
  v36 = *MEMORY[0x277D85DE8];
  upsCopy = ups;
  v7 = upsCopy;
  if (upsCopy && (upsCopy = [upsCopy count]) != 0)
  {
    v8 = [(SUSFollowUpController *)self identifierForSUFollowUpType:type];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = *v32;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v9);
          }

          uniqueIdentifier = [*(*(&v31 + 1) + 8 * i) uniqueIdentifier];
          v14 = [uniqueIdentifier isEqualToString:v8];

          if (v14)
          {
            v10 = SULogFollowUp(v15);
            SULogInfoForSubsystem(v10, @"FollowUp with identifier %@ is currently presented", v23, v24, v25, v26, v27, v28, v8);

            LOBYTE(v10) = 1;
            goto LABEL_14;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v16 = SULogFollowUp(upsCopy);
    SULogInfoForSubsystem(v16, @"No SUS followup is currently presented", v17, v18, v19, v20, v21, v22, v30);

    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)getCurrentSUSFollowUpItems
{
  v20 = *MEMORY[0x277D85DE8];
  followUpController = self->_followUpController;
  v18 = 0;
  v4 = [(FLFollowUpController *)followUpController pendingFollowUpItems:&v18];
  v5 = v18;
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([(SUSFollowUpController *)self isfollowUpSUSRelated:v12, v14])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isfollowUpSUSRelated:(id)related
{
  v11[4] = *MEMORY[0x277D85DE8];
  relatedCopy = related;
  v4 = +[SUSFollowUpBadgeOnly identifier];
  v11[0] = v4;
  v5 = +[SUSFollowUpUpdateAvailable identifier];
  v11[1] = v5;
  v6 = +[SUSFollowUpAutoUpdate identifier];
  v11[2] = v6;
  v7 = +[SUSFollowUpInsufficientDiskSpace identifier];
  v11[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  uniqueIdentifier = [relatedCopy uniqueIdentifier];

  LOBYTE(relatedCopy) = [v8 containsObject:uniqueIdentifier];
  return relatedCopy;
}

- (void)dismissAllSUFollowUps
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  getCurrentSUSFollowUpItems = [(SUSFollowUpController *)self getCurrentSUSFollowUpItems];
  v5 = [getCurrentSUSFollowUpItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(getCurrentSUSFollowUpItems);
        }

        uniqueIdentifier = [*(*(&v10 + 1) + 8 * v8) uniqueIdentifier];
        [v3 addObject:uniqueIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [getCurrentSUSFollowUpItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(SUSFollowUpController *)self dismissFollowUpWithIdentifiers:v3];
}

- (void)dismissFollowUpType:(unint64_t)type
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = [(SUSFollowUpController *)self identifierForSUFollowUpType:type];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(SUSFollowUpController *)self dismissFollowUpWithIdentifiers:v5];
}

- (void)dismissFollowUpTypes:(id)types
{
  v4 = [(SUSFollowUpController *)self identifiersForSUFollowUpTypes:types];
  [(SUSFollowUpController *)self dismissFollowUpWithIdentifiers:v4];
}

- (void)dismissFollowUpWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = SULogFollowUp(identifiersCopy);
  SULogInfoForSubsystem(v5, @"Dismissing FollowUps with identifiers: %@", v6, v7, v8, v9, v10, v11, identifiersCopy);

  followUpController = [(SUSFollowUpController *)self followUpController];
  v22 = 0;
  [followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:identifiersCopy error:&v22];

  v13 = v22;
  if (v13)
  {
    v15 = SULogFollowUp(v14);
    SULogErrorForSubsystem(v15, @"error clearing pending followUp item: %@", v16, v17, v18, v19, v20, v21, v13);
  }
}

- (id)identifiersForSUFollowUpTypes:(id)types
{
  v18 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = typesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[SUSFollowUpController identifierForSUFollowUpType:](self, "identifierForSUFollowUpType:", [*(*(&v13 + 1) + 8 * i) integerValue]);
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)identifierForSUFollowUpType:(unint64_t)type
{
  if (type > 1)
  {
    if (type == 2)
    {
      v4 = SUSFollowUpAutoUpdate;
      goto LABEL_11;
    }

    if (type == 3)
    {
      v4 = SUSFollowUpInsufficientDiskSpace;
      goto LABEL_11;
    }

LABEL_8:
    v5 = SULogFollowUp(self);
    SULogInfoForSubsystem(v5, @"Unknown SUSFollowUpType: %ld", v6, v7, v8, v9, v10, v11, type);

    identifier = 0;
    goto LABEL_12;
  }

  if (!type)
  {
    v4 = SUSFollowUpBadgeOnly;
    goto LABEL_11;
  }

  if (type != 1)
  {
    goto LABEL_8;
  }

  v4 = SUSFollowUpUpdateAvailable;
LABEL_11:
  identifier = [(__objc2_class *)v4 identifier];
LABEL_12:

  return identifier;
}

- (void)postFollowUpOfType:(unint64_t)type withUpdate:(id)update userInfo:(id)info
{
  updateCopy = update;
  infoCopy = info;
  v9 = +[SUPreferences sharedInstance];
  disableFollowUps = [v9 disableFollowUps];

  v12 = SULogFollowUp(v11);
  v19 = v12;
  if (disableFollowUps)
  {
    v20 = [SUSFollowUpController stringForSUSFollowUpType:type];
    SULogInfoForSubsystem(v19, @"Skipping post of %@ followup item because preference is set", v21, v22, v23, v24, v25, v26, v20);

    goto LABEL_18;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      v27 = off_279CA9BB8;
      v28 = @"Attempting to post SUSFollowUpAutoUpdate item";
      goto LABEL_15;
    }

    if (type == 3)
    {
      v27 = off_279CA9BD0;
      v28 = @"Attempting to post SUSFollowUpTypeInsufficientDiskSpace item";
      goto LABEL_15;
    }

LABEL_10:
    SULogInfoForSubsystem(v12, @"Unknown SUSFollowUpType (%ld). Unable to create FollowUp", v13, v14, v15, v16, v17, v18, type);
    goto LABEL_18;
  }

  if (!type)
  {
    SULogInfoForSubsystem(v12, @"Attempting to post SUSFollowUpBadgeOnly item", v13, v14, v15, v16, v17, v18, v37);

    isSplatOnly = [updateCopy isSplatOnly];
    if (isSplatOnly)
    {
      v19 = SULogFollowUp(isSplatOnly);
      SULogInfoForSubsystem(v19, @"Not posting badge only followups for splat only updates", v30, v31, v32, v33, v34, v35, v38);
      goto LABEL_18;
    }

    v27 = off_279CA9BC0;
    goto LABEL_16;
  }

  if (type != 1)
  {
    goto LABEL_10;
  }

  v27 = off_279CA9BD8;
  v28 = @"Attempting to post SUSFollowUpUpdateAvailable item";
LABEL_15:
  SULogInfoForSubsystem(v12, v28, v13, v14, v15, v16, v17, v18, v37);

LABEL_16:
  v36 = [(__objc2_class *)*v27 generateFollowUpWithDescriptor:updateCopy userInfo:infoCopy];
  if (!v36)
  {
    goto LABEL_19;
  }

  v19 = v36;
  [(SUSFollowUpController *)self postFollowUpItem:v36];
LABEL_18:

LABEL_19:
}

- (void)postFollowUpItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    [(SUSFollowUpController *)self dismissAllSUFollowUps];
    followUpController = self->_followUpController;
    v23 = 0;
    v6 = [(FLFollowUpController *)followUpController postFollowUpItem:itemCopy error:&v23];
    v7 = v23;
    v8 = SULogFollowUp(v7);
    v15 = v8;
    if (v6)
    {
      SULogInfoForSubsystem(v8, @"Successfully posted FollowUp item: %@", v9, v10, v11, v12, v13, v14, itemCopy);
    }

    else
    {
      SULogInfoForSubsystem(v8, @"Failed to post FollowUp item: %@ Error: %@", v9, v10, v11, v12, v13, v14, itemCopy);
    }
  }

  else
  {
    v7 = SULogFollowUp(0);
    SULogInfoForSubsystem(v7, @"Unable to post null FollowUp item", v16, v17, v18, v19, v20, v21, v22);
  }
}

+ (id)stringForSUSFollowUpType:(unint64_t)type
{
  if (type > 3)
  {
    return @"Unknonw Type";
  }

  else
  {
    return off_279CAA808[type];
  }
}

- (void)SUSFollowUpControllerBadgeSettings:(id)settings
{
  settingsCopy = settings;
  v4 = SULogFollowUp(settingsCopy);
  SULogInfoForSubsystem(v4, @"Got request to badge settings via followUp", v5, v6, v7, v8, v9, v10, v11);

  [(SUSFollowUpController *)self dismissAllSUFollowUps];
  [(SUSFollowUpController *)self postFollowUpOfType:0 withUpdate:settingsCopy userInfo:0];
}

- (void)SUSFollowUpControllerUnbadgeSettings
{
  v3 = SULogFollowUp(self);
  SULogInfoForSubsystem(v3, @"Got request to unbadge settings via followUp", v4, v5, v6, v7, v8, v9, v10);

  [(SUSFollowUpController *)self dismissFollowUpType:0];
}

- (void)dismissLegacyFollowUps
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = SUSFollowUpUniqueIdentifierLegacy;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [(SUSFollowUpController *)self dismissFollowUpWithIdentifiers:v3];
}

@end