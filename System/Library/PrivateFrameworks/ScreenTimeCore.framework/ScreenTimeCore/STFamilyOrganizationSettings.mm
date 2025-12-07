@interface STFamilyOrganizationSettings
- (BOOL)_validateOrganization:(id)organization;
- (BOOL)_validateUser:(id)user;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (NSString)description;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)key;
- (void)updateAppExceptionsWithDictionaryRepresentationsIfNeeded:(id)needed;
@end

@implementation STFamilyOrganizationSettings

- (id)computeUniqueIdentifier
{
  user = [(STFamilyOrganizationSettings *)self user];

  if (user)
  {
    v4 = MEMORY[0x1E696AEC0];
    serializableClassName = [objc_opt_class() serializableClassName];
    user2 = [(STFamilyOrganizationSettings *)self user];
    dsid = [user2 dsid];
    stringValue = [dsid stringValue];
    serializableClassName2 = [v4 stringWithFormat:@"%@:%@", serializableClassName, stringValue];
  }

  else
  {
    serializableClassName2 = [objc_opt_class() serializableClassName];
  }

  return serializableClassName2;
}

- (void)didChangeValueForKey:(id)key
{
  v45 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"user"])
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
    goto LABEL_30;
  }

  if ([keyCopy isEqualToString:@"passcode"])
  {
    passcode = [(STFamilyOrganizationSettings *)self passcode];

    if (!passcode)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      organization = [(STFamilyOrganizationSettings *)self organization];
      blueprints = [organization blueprints];

      v22 = [(STVersionVector *)blueprints countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v36;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v36 != v24)
            {
              objc_enumerationMutation(blueprints);
            }

            v26 = *(*(&v35 + 1) + 8 * i);
            users = [v26 users];
            user = [(STFamilyOrganizationSettings *)self user];
            v29 = [users containsObject:user];

            if (v29)
            {
              [(STCoreOrganizationSettings *)self _changeAppLimitsFromAskToWarn:v26];
            }
          }

          v23 = [(STVersionVector *)blueprints countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v23);
      }

      goto LABEL_29;
    }
  }

  if (![keyCopy isEqualToString:@"isManaged"])
  {
    if (![keyCopy isEqualToString:@"isDirty"] || !-[STFamilyOrganizationSettings isDirty](self, "isDirty"))
    {
      goto LABEL_30;
    }

    v15 = [MEMORY[0x1E695DF00] now];
    [(STFamilyOrganizationSettings *)self setModificationDate:v15];

    v16 = [STVersionVector alloc];
    versionVector = [(STFamilyOrganizationSettings *)self versionVector];
    blueprints = [(STVersionVector *)v16 initWithDataRepresentation:versionVector];

    v19 = STGetDeviceUUID();
    [(STVersionVector *)blueprints incrementNodeWithIdentifier:v19];

    dataRepresentation = [(STVersionVector *)blueprints dataRepresentation];
    [(STFamilyOrganizationSettings *)self setVersionVector:dataRepresentation];

LABEL_29:
    goto LABEL_30;
  }

  if (([(STFamilyOrganizationSettings *)self isManaged]& 1) == 0)
  {
    [(STFamilyOrganizationSettings *)self setPasscode:0];
    managedObjectContext = [(STFamilyOrganizationSettings *)self managedObjectContext];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    user2 = [(STFamilyOrganizationSettings *)self user];
    usages = [user2 usages];

    v9 = [usages countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(usages);
          }

          v13 = *(*(&v31 + 1) + 8 * j);
          v14 = +[STLog screentime];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v40 = "[STFamilyOrganizationSettings didChangeValueForKey:]";
            v41 = 2112;
            v42 = v13;
            _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting usage (%@)", buf, 0x16u);
          }

          [managedObjectContext deleteObject:v13];
        }

        v10 = [usages countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v10);
    }
  }

LABEL_30:
  v30.receiver = self;
  v30.super_class = STFamilyOrganizationSettings;
  [(STFamilyOrganizationSettings *)&v30 didChangeValueForKey:keyCopy];
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v93 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [STVersionVector alloc];
  versionVector = [(STFamilyOrganizationSettings *)self versionVector];
  v7 = [(STVersionVector *)v5 initWithDataRepresentation:versionVector];

  nodes = [(STVersionVector *)v7 nodes];
  v9 = [nodes count];

  v10 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"versionVector"];
  v11 = [[STVersionVector alloc] initWithDataRepresentation:v10];
  if (!v7)
  {
    goto LABEL_53;
  }

  v12 = +[STLog versionVector];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    user = [(STFamilyOrganizationSettings *)self user];
    dsid = [user dsid];
    *buf = 138412802;
    v88 = dsid;
    v89 = 2112;
    v90 = v7;
    v91 = 2112;
    v92 = v11;
    _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_INFO, "COMPARE SETTINGS (%@): %@ vs %@", buf, 0x20u);
  }

  v15 = [(STVersionVector *)v7 evaluateCausality:v11];
  v16 = v15;
  switch(v15)
  {
    case 1:
      v17 = +[STLog versionVector];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [STFamilyOrganizationSettings updateWithDictionaryRepresentation:];
      }

LABEL_7:

      break;
    case 3:
      v17 = +[STLog versionVector];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [STFamilyOrganizationSettings updateWithDictionaryRepresentation:];
      }

      goto LABEL_7;
    case 2:
      v17 = +[STLog versionVector];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [STFamilyOrganizationSettings updateWithDictionaryRepresentation:];
      }

      goto LABEL_7;
    case 0:
      v17 = +[STLog versionVector];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [STFamilyOrganizationSettings updateWithDictionaryRepresentation:];
      }

      goto LABEL_7;
  }

  [(STVersionVector *)v7 join:v11];
  dataRepresentation = [(STVersionVector *)v7 dataRepresentation];
  [(STFamilyOrganizationSettings *)self setVersionVector:dataRepresentation];

  switch(v16)
  {
    case 1:
      modificationDate = +[STLog screentime];
      if (os_log_type_enabled(modificationDate, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, modificationDate, OS_LOG_TYPE_INFO, "Received family settings representation is out of date. Skipping update.", buf, 2u);
      }

      goto LABEL_50;
    case 3:
      v32 = +[STLog screentime];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        dictionaryRepresentation = [(STFamilyOrganizationSettings *)self dictionaryRepresentation];
        *buf = 138412546;
        v88 = dictionaryRepresentation;
        v89 = 2112;
        v90 = representationCopy;
        _os_log_impl(&dword_1B831F000, v32, OS_LOG_TYPE_INFO, "Family settings version clocks equal: %@ \n %@", buf, 0x16u);
      }

      if (v9)
      {
        v34 = 1;
        goto LABEL_97;
      }

      break;
    case 2:
      v20 = +[STLog screentime];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v20, OS_LOG_TYPE_DEFAULT, "Settings version clocks concurrent. Most recent modification wins", buf, 2u);
      }

      v21 = +[STLog screentime];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(STFamilyOrganizationSettings *)self updateWithDictionaryRepresentation:v21];
      }

      v22 = +[STLog screentime];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [STFamilyOrganizationSettings updateWithDictionaryRepresentation:];
      }

      modificationDate = [(STFamilyOrganizationSettings *)self modificationDate];
      v23 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"modificationDate"];
      v24 = +[STLog screentime];
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (modificationDate && v23)
      {
        if (v25)
        {
          *buf = 138412546;
          v88 = modificationDate;
          v89 = 2112;
          v90 = v23;
          _os_log_impl(&dword_1B831F000, v24, OS_LOG_TYPE_DEFAULT, "Local modification date = %@, Incoming modification date = %@", buf, 0x16u);
        }

        v26 = modificationDate;
        v27 = [modificationDate compare:v23];
        v24 = +[STLog screentime];
        v28 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (v27 != -1)
        {
          if (!v28)
          {
            modificationDate = v26;
            goto LABEL_49;
          }

          *buf = 138412546;
          modificationDate = v26;
          v88 = v26;
          v89 = 2112;
          v90 = v23;
          v29 = "Local settings is more recently modified. We will ignore the received settings. Local = %@, Incoming = %@";
          v30 = v24;
          v31 = 22;
          goto LABEL_42;
        }

        if (!v28)
        {
          modificationDate = v26;
          goto LABEL_52;
        }

        *buf = 138412546;
        modificationDate = v26;
        v88 = v26;
        v89 = 2112;
        v90 = v23;
        v35 = "Received settings is more recently modified. We will overwrite the local settings. Local = %@, Incoming = %@";
        v36 = v24;
        v37 = 22;
      }

      else
      {
        if (modificationDate)
        {
          if (!v25)
          {
LABEL_49:

LABEL_50:
            v34 = 0;
LABEL_96:

            goto LABEL_97;
          }

          *buf = 0;
          v29 = "Only the local blueprint has a modification date. We will ignore the received blueprint.";
          v30 = v24;
          v31 = 2;
LABEL_42:
          _os_log_impl(&dword_1B831F000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
          goto LABEL_49;
        }

        if (!v25)
        {
          goto LABEL_52;
        }

        *buf = 0;
        v35 = "Only the inboud blueprint has a modification date. We will overwrite the local blueprint.";
        v36 = v24;
        v37 = 2;
      }

      _os_log_impl(&dword_1B831F000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_52:

      break;
  }

LABEL_53:
  v86.receiver = self;
  v86.super_class = STFamilyOrganizationSettings;
  if ([(STCoreOrganizationSettings *)&v86 updateWithDictionaryRepresentation:representationCopy])
  {
    managedObjectContext = [(STFamilyOrganizationSettings *)self managedObjectContext];
    v85 = 0;
    v39 = [STFamilyOrganization fetchOrCreateFamilyOrganizationWithContext:managedObjectContext error:&v85];
    modificationDate = v85;

    v34 = v39 != 0;
    if (!v39)
    {
      v68 = +[STLog persistence];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        [STiCloudOrganizationSettings updateWithDictionaryRepresentation:];
      }

      goto LABEL_95;
    }

    v82 = modificationDate;
    [(STFamilyOrganizationSettings *)self setOrganization:v39];
    isManaged = [(STFamilyOrganizationSettings *)self isManaged];
    v40 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"isManaged"];
    -[STFamilyOrganizationSettings setIsManaged:](self, "setIsManaged:", [v40 BOOLValue]);

    v41 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"passcode"];
    [(STFamilyOrganizationSettings *)self setPasscode:v41];

    v42 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"allLimitsEnabled"];
    v43 = v42;
    if (v42)
    {
      [(STFamilyOrganizationSettings *)self setAllLimitsEnabled:[v42 BOOLValue]];
    }

    v80 = v43;
    v44 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"defaultUserPolicies"];
    v45 = v44;
    if (v44)
    {
      -[STFamilyOrganizationSettings setDefaultUserPolicies:](self, "setDefaultUserPolicies:", [v44 longLongValue]);
    }

    v46 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"communicationPolicy"];
    v47 = v46;
    if (v46)
    {
      -[STFamilyOrganizationSettings setCommunicationPolicy:](self, "setCommunicationPolicy:", [v46 longLongValue]);
    }

    v48 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"communicationWhileLimitedPolicy"];
    v49 = v48;
    if (v48)
    {
      -[STFamilyOrganizationSettings setCommunicationWhileLimitedPolicy:](self, "setCommunicationWhileLimitedPolicy:", [v48 longLongValue]);
    }

    v77 = v49;
    v50 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"contactManagementState"];
    v51 = v50;
    v78 = v47;
    if (v50)
    {
      longLongValue = [v50 longLongValue];
      if (longLongValue != [(STFamilyOrganizationSettings *)self contactManagementState])
      {
        -[STFamilyOrganizationSettings setContactManagementState:](self, "setContactManagementState:", [v51 longLongValue]);
      }
    }

    v53 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"contentPrivacySiriImageGenerationRestriction"];
    v84 = v53;
    if (v53)
    {
      longLongValue2 = [v53 longLongValue];
      if (longLongValue2 != [(STCoreOrganizationSettings *)self contentPrivacySiriImageGenerationRestriction])
      {
        -[STCoreOrganizationSettings setContentPrivacySiriImageGenerationRestriction:](self, "setContentPrivacySiriImageGenerationRestriction:", [v84 longLongValue]);
      }
    }

    v55 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"isCommunicationSafetySendingRestricted"];
    v56 = v55;
    if (v55)
    {
      -[STCoreOrganizationSettings setIsCommunicationSafetySendingRestricted:](self, "setIsCommunicationSafetySendingRestricted:", [v55 BOOLValue]);
    }

    v79 = v45;
    v57 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"isCommunicationSafetyReceivingRestricted"];
    v58 = v57;
    if (v57)
    {
      -[STCoreOrganizationSettings setIsCommunicationSafetyReceivingRestricted:](self, "setIsCommunicationSafetyReceivingRestricted:", [v57 BOOLValue]);
    }

    v73 = v58;
    v81 = v39;
    v59 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"isCommunicationSafetyNotificationEnabled"];
    v60 = v59;
    if (v59)
    {
      -[STFamilyOrganizationSettings setIsCommunicationSafetyNotificationEnabled:](self, "setIsCommunicationSafetyNotificationEnabled:", [v59 BOOLValue]);
    }

    v74 = v56;
    v61 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"isCommunicationSafetyAnalyticsEnabled"];
    v62 = v61;
    if (v61)
    {
      -[STFamilyOrganizationSettings setIsCommunicationSafetyAnalyticsEnabled:](self, "setIsCommunicationSafetyAnalyticsEnabled:", [v61 BOOLValue]);
    }

    v83 = v10;
    v63 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"isEyeReliefEnabled"];
    v64 = v63;
    if (v63)
    {
      -[STCoreOrganizationSettings setIsEyeReliefEnabled:](self, "setIsEyeReliefEnabled:", [v63 BOOLValue]);
    }

    v65 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];
    v66 = v65;
    if (!v65)
    {
      isManaged2 = [(STFamilyOrganizationSettings *)self isManaged];
      if (isManaged)
      {
        if (isManaged2)
        {
          goto LABEL_81;
        }

        v66 = MEMORY[0x1E695E110];
      }

      else
      {
        if ((isManaged2 & 1) == 0)
        {
          goto LABEL_81;
        }

        v66 = MEMORY[0x1E695E118];
      }
    }

    [(STFamilyOrganizationSettings *)self setIsAppAndWebsiteActivityEnabled:v66];
LABEL_81:
    v76 = v51;
    if ([(STFamilyOrganizationSettings *)self isManaged])
    {
      v67 = [(STVersionVector *)representationCopy objectForKeyedSubscript:@"appExceptions"];
      if (v67)
      {
        [(STFamilyOrganizationSettings *)self updateAppExceptionsWithDictionaryRepresentationsIfNeeded:v67];
      }

      else
      {
        log = +[STLog appExceptions];
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, log, OS_LOG_TYPE_DEFAULT, "No app exceptions found in family settings. Not modifying app exceptions", buf, 2u);
        }
      }
    }

    dataRepresentation2 = [(STVersionVector *)v7 dataRepresentation];
    [(STFamilyOrganizationSettings *)self setVersionVector:dataRepresentation2];

    modificationDate = v82;
    v10 = v83;
    v68 = v80;
    v39 = v81;
LABEL_95:

    goto LABEL_96;
  }

  v34 = 0;
LABEL_97:

  return v34;
}

- (void)updateAppExceptionsWithDictionaryRepresentationsIfNeeded:(id)needed
{
  v59 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  appExceptions = [(STFamilyOrganizationSettings *)self appExceptions];

  if (appExceptions)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    appExceptions2 = [(STFamilyOrganizationSettings *)self appExceptions];
    v9 = [appExceptions2 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v49;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(appExceptions2);
          }

          v13 = *(*(&v48 + 1) + 8 * i);
          dictionaryRepresentation = [v13 dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];

          uniqueIdentifier = [v13 uniqueIdentifier];
          [v6 setObject:v13 forKeyedSubscript:uniqueIdentifier];
        }

        v10 = [appExceptions2 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v10);
    }
  }

  v34 = v5;
  v16 = [v5 mutableCopy];
  v35 = neededCopy;
  [v16 minusSet:neededCopy];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [*(*(&v44 + 1) + 8 * j) objectForKeyedSubscript:@"uniqueIdentifier"];
        v22 = [v6 objectForKeyedSubscript:v21];
        v23 = +[STLog appExceptions];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v54 = "[STFamilyOrganizationSettings updateAppExceptionsWithDictionaryRepresentationsIfNeeded:]";
          v55 = 2112;
          v56 = v22;
          _os_log_impl(&dword_1B831F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting app exception (%@)", buf, 0x16u);
        }

        managedObjectContext = [(STFamilyOrganizationSettings *)self managedObjectContext];
        [managedObjectContext deleteObject:v22];
      }

      v18 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v18);
  }

  v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v35;
  v25 = [v36 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v36);
        }

        v29 = *(*(&v40 + 1) + 8 * k);
        managedObjectContext2 = [(STFamilyOrganizationSettings *)self managedObjectContext];
        v39 = 0;
        v31 = [STAppException fetchOrCreateWithDictionaryRepresentation:v29 inContext:managedObjectContext2 error:&v39];
        v32 = v39;

        if (v31)
        {
          [v31 updateWithDictionaryRepresentation:v29];
          [v38 addObject:v31];
        }

        else
        {
          v33 = +[STLog appExceptions];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v54 = "[STFamilyOrganizationSettings updateAppExceptionsWithDictionaryRepresentationsIfNeeded:]";
            v55 = 2114;
            v56 = v32;
            _os_log_error_impl(&dword_1B831F000, v33, OS_LOG_TYPE_ERROR, "%{public}s: Failed updating exception. Error: %{public}@", buf, 0x16u);
          }
        }
      }

      v26 = [v36 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v26);
  }

  [(STFamilyOrganizationSettings *)self setAppExceptions:v38];
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v28.receiver = self;
  v28.super_class = STFamilyOrganizationSettings;
  dictionaryRepresentation = [(STCoreOrganizationSettings *)&v28 dictionaryRepresentation];
  v5 = [v3 dictionaryWithDictionary:dictionaryRepresentation];

  serializableClassName = [objc_opt_class() serializableClassName];
  [v5 setObject:serializableClassName forKeyedSubscript:@"class"];

  organization = [(STFamilyOrganizationSettings *)self organization];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v5 setObject:v9 forKeyedSubscript:@"organization"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[STFamilyOrganizationSettings isManaged](self, "isManaged")}];
  [v5 setObject:v10 forKeyedSubscript:@"isManaged"];

  versionVector = [(STFamilyOrganizationSettings *)self versionVector];
  [v5 setObject:versionVector forKeyedSubscript:@"versionVector"];

  isAppAndWebsiteActivityEnabled = [(STFamilyOrganizationSettings *)self isAppAndWebsiteActivityEnabled];

  if (isAppAndWebsiteActivityEnabled)
  {
    isAppAndWebsiteActivityEnabled2 = [(STFamilyOrganizationSettings *)self isAppAndWebsiteActivityEnabled];
    [v5 setObject:isAppAndWebsiteActivityEnabled2 forKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];
  }

  if ([(STFamilyOrganizationSettings *)self isManaged])
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    appExceptions = [(STFamilyOrganizationSettings *)self appExceptions];
    v16 = [appExceptions countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(appExceptions);
          }

          dictionaryRepresentation2 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [appExceptions countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v17);
    }

    v21 = [v14 copy];
    [v5 setObject:v21 forKeyedSubscript:@"appExceptions"];
  }

  v22 = [v5 copy];

  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = STFamilyOrganizationSettings;
  v4 = [(STCoreOrganizationSettings *)&v11 description];
  isDirty = [(STFamilyOrganizationSettings *)self isDirty];
  isManaged = [(STFamilyOrganizationSettings *)self isManaged];
  shareWebUsage = [(STFamilyOrganizationSettings *)self shareWebUsage];
  isAppAndWebsiteActivityEnabled = [(STFamilyOrganizationSettings *)self isAppAndWebsiteActivityEnabled];
  v9 = [v3 stringWithFormat:@"%@, ({\n isDirty: %d\n isManaged: %d\n shareWebUsage: %d\n isAppAndWebsiteActivityEnabled: %@\n})", v4, isDirty, isManaged, shareWebUsage, isAppAndWebsiteActivityEnabled];

  return v9;
}

- (BOOL)validateForUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = STFamilyOrganizationSettings;
  if ([(STFamilyOrganizationSettings *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STFamilyOrganizationSettings *)self _validateUser:v5];
    [(STFamilyOrganizationSettings *)self _validateOrganization:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STFamilyOrganizationSettings validateForUpdate:];
      }
    }

    v9.receiver = self;
    v9.super_class = STFamilyOrganizationSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STFamilyOrganizationSettings validateForUpdate:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
{
  v10.receiver = self;
  v10.super_class = STFamilyOrganizationSettings;
  if ([(STFamilyOrganizationSettings *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STFamilyOrganizationSettings *)self _validateUser:v5];
    [(STFamilyOrganizationSettings *)self _validateOrganization:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STFamilyOrganizationSettings validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STFamilyOrganizationSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STFamilyOrganizationSettings validateForInsert:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v4.receiver = self;
  v4.super_class = STFamilyOrganizationSettings;
  return [(STFamilyOrganizationSettings *)&v4 validateForDelete:delete];
}

- (BOOL)_validateOrganization:(id)organization
{
  v12[1] = *MEMORY[0x1E69E9840];
  organizationCopy = organization;
  organization = [(STFamilyOrganizationSettings *)self organization];

  if (!organization)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"Family settings is not related to an organization. This is not supported.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:507 userInfo:v7];
    [organizationCopy addObject:v8];
  }

  v9 = [organizationCopy count] == 0;

  return v9;
}

- (BOOL)_validateUser:(id)user
{
  v24[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  user = [(STFamilyOrganizationSettings *)self user];
  familyMemberType = [user familyMemberType];
  v7 = MEMORY[0x1E696A578];
  if (familyMemberType)
  {
    v8 = familyMemberType;
    user2 = [(STFamilyOrganizationSettings *)self user];
    familyMemberType2 = [user2 familyMemberType];

    if (familyMemberType2 != @"Unknown")
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x1E696ABC0];
  v23 = *v7;
  v24[0] = @"Family settings are assigned to a user that is not in a family. This is not supported.";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v13 = [v11 errorWithDomain:@"STErrorDomain" code:536 userInfo:v12];
  [userCopy addObject:v13];

LABEL_6:
  user3 = [(STFamilyOrganizationSettings *)self user];
  isParent = [user3 isParent];

  if (isParent)
  {
    v16 = MEMORY[0x1E696ABC0];
    v21 = *v7;
    v22 = @"Family settings are assigned to a guardian. This is not supported.";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v18 = [v16 errorWithDomain:@"STErrorDomain" code:535 userInfo:v17];
    [userCopy addObject:v18];
  }

  v19 = [userCopy count] == 0;

  return v19;
}

- (void)updateWithDictionaryRepresentation:(void *)a1 .cold.5(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 dictionaryRepresentation];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1B831F000, a2, OS_LOG_TYPE_DEBUG, "L: %@", v4, 0xCu);
}

- (void)updateWithDictionaryRepresentation:.cold.6()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1B831F000, v0, OS_LOG_TYPE_DEBUG, "R: %@", v1, 0xCu);
}

- (void)validateForUpdate:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateForUpdate:.cold.2()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for update on FamilyOrganizationSettings failed with error: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForInsert:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateForInsert:.cold.2()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for Insert on FamilyOrganizationSettings failed with error: %{public}@", v2, v3, v4, v5, v6);
}

@end