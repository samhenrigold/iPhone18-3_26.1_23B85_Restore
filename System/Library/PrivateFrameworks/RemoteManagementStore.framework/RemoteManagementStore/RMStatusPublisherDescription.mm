@interface RMStatusPublisherDescription
+ (id)descriptionWithEventsDictionary:(id)dictionary;
+ (id)descriptionWithServiceDictionary:(id)dictionary;
- (BOOL)_validateStatusEvents:(id)events;
- (BOOL)_validateStatusKeysByNotification:(id)notification;
- (BOOL)_validateStatusKeysWithoutNotification:(id)notification;
- (RMStatusPublisherDescription)initWithDictionary:(id)dictionary;
- (void)_loadDescription:(id)description;
- (void)_loadDescriptionFromStatusEvents:(id)events statusKeysByNotification:(id)notification statusKeysWithoutNotification:(id)withoutNotification;
- (void)_loadManagedSettingsDescription;
@end

@implementation RMStatusPublisherDescription

+ (id)descriptionWithEventsDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"StatusPublisher"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [RMStatusPublisherDescription alloc];
  if (isKindOfClass)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = [(RMStatusPublisherDescription *)v5 initWithDictionary:v6];

  return v7;
}

+ (id)descriptionWithServiceDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"StatusPublisher"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [RMStatusPublisherDescription alloc];
  if (isKindOfClass)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = [(RMStatusPublisherDescription *)v5 initWithDictionary:v6];

  return v7;
}

- (RMStatusPublisherDescription)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RMStatusPublisherDescription;
  v5 = [(RMStatusPublisherDescription *)&v10 init];
  v6 = v5;
  if (v5)
  {
    statusKeysByXPCEvent = v5->_statusKeysByXPCEvent;
    v5->_statusKeysByXPCEvent = 0;

    statusKeys = v6->_statusKeys;
    v6->_statusKeys = 0;

    [(RMStatusPublisherDescription *)v6 _loadDescription:dictionaryCopy];
  }

  return v6;
}

- (void)_loadDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy objectForKeyedSubscript:@"ManagedSettings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 BOOLValue])
  {
    [(RMStatusPublisherDescription *)self _loadManagedSettingsDescription];
  }

  else
  {
    v5 = [descriptionCopy objectForKeyedSubscript:@"StatusEvents"];
    v6 = [descriptionCopy objectForKeyedSubscript:@"StatusKeysByNotification"];
    v7 = [descriptionCopy objectForKeyedSubscript:@"StatusKeysWithoutNotification"];
    if ([(RMStatusPublisherDescription *)self _validateStatusEvents:v5]&& [(RMStatusPublisherDescription *)self _validateStatusKeysByNotification:v6]&& [(RMStatusPublisherDescription *)self _validateStatusKeysWithoutNotification:v7])
    {
      [(RMStatusPublisherDescription *)self _loadDescriptionFromStatusEvents:v5 statusKeysByNotification:v6 statusKeysWithoutNotification:v7];
    }
  }
}

- (void)_loadManagedSettingsDescription
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  managedSettingsSchemas = [MEMORY[0x277D46050] managedSettingsSchemas];
  allValues = [managedSettingsSchemas allValues];

  v5 = [allValues countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        managedSetting = [*(*(&v26 + 1) + 8 * v8) managedSetting];
        managedSettingKey = [managedSetting managedSettingKey];
        v11 = [managedSettingKey componentsSeparatedByString:@"."];
        v12 = [v11 objectAtIndexedSubscript:0];

        [v2 addObject:v12];
        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v6);
  }

  v13 = MEMORY[0x277D45F88];
  v32 = @"SettingsGroups";
  allObjects = [v2 allObjects];
  v33 = allObjects;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v16 = [v13 newXPCEventForStream:@"com.apple.ManagedSettings.effective-settings.changed" notificationName:@"com.apple.remotemanagement.effective-settings.changed" descriptor:v15];

  v17 = MEMORY[0x277CBEB98];
  managedSettingsSchemas2 = [MEMORY[0x277D46050] managedSettingsSchemas];
  allKeys = [managedSettingsSchemas2 allKeys];
  v20 = [v17 setWithArray:allKeys];
  statusKeys = self->_statusKeys;
  self->_statusKeys = v20;

  v22 = self->_statusKeys;
  v30 = v16;
  v31 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  statusKeysByXPCEvent = self->_statusKeysByXPCEvent;
  self->_statusKeysByXPCEvent = v23;
}

- (void)_loadDescriptionFromStatusEvents:(id)events statusKeysByNotification:(id)notification statusKeysWithoutNotification:(id)withoutNotification
{
  v43 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  notificationCopy = notification;
  withoutNotificationCopy = withoutNotification;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  if (eventsCopy)
  {
    v27 = withoutNotificationCopy;
    selfCopy = self;
    v29 = notificationCopy;
    v30 = eventsCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = eventsCopy;
    v13 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:@"XPCEvents"];
          v19 = MEMORY[0x277CBEB98];
          v20 = [v17 objectForKeyedSubscript:@"StatusItems"];
          v21 = [v19 setWithArray:v20];

          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke;
          v35[3] = &unk_279B05E70;
          v36 = v11;
          v37 = v21;
          v22 = v21;
          [v18 enumerateKeysAndObjectsUsingBlock:v35];
          [v12 unionSet:v22];
        }

        v14 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v14);
    }

    notificationCopy = v29;
    eventsCopy = v30;
    withoutNotificationCopy = v27;
    self = selfCopy;
  }

  if (notificationCopy)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke_3;
    v32[3] = &unk_279B05A38;
    v33 = v11;
    v34 = v12;
    [notificationCopy enumerateKeysAndObjectsUsingBlock:v32];
  }

  if (withoutNotificationCopy)
  {
    [v12 addObjectsFromArray:withoutNotificationCopy];
  }

  if ([v11 count])
  {
    v23 = [v11 copy];
    statusKeysByXPCEvent = self->_statusKeysByXPCEvent;
    self->_statusKeysByXPCEvent = v23;
  }

  if ([v12 count])
  {
    v25 = [v12 copy];
    statusKeys = self->_statusKeys;
    self->_statusKeys = v25;
  }
}

void __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke_2;
  v7[3] = &unk_279B05E48;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x277D45F88] newXPCEventForStream:*(a1 + 32) notificationName:a2 descriptor:a3];
  [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v4];
}

void __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D45F88];
  v6 = a3;
  v8 = [v5 newXPCEventForDarwinNotification:a2];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];

  [*(a1 + 40) addObjectsFromArray:v6];
}

- (BOOL)_validateStatusEvents:(id)events
{
  v60 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if (eventsCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      statusPublisherDescription7 = eventsCopy;
      v5 = [statusPublisherDescription7 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v5)
      {
        v6 = *v53;
        v39 = statusPublisherDescription7;
        v34 = *v53;
        while (2)
        {
          v7 = 0;
          v35 = v5;
          do
          {
            if (*v53 != v6)
            {
              objc_enumerationMutation(statusPublisherDescription7);
            }

            v8 = *(*(&v52 + 1) + 8 * v7);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              statusPublisherDescription = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(statusPublisherDescription, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

              goto LABEL_50;
            }

            statusPublisherDescription = [v8 objectForKeyedSubscript:@"XPCEvents"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              statusPublisherDescription2 = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(statusPublisherDescription2, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

LABEL_45:

              goto LABEL_50;
            }

            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            statusPublisherDescription2 = [statusPublisherDescription allValues];
            v11 = [statusPublisherDescription2 countByEnumeratingWithState:&v48 objects:v58 count:16];
            v36 = v7;
            if (v11)
            {
              v12 = v11;
              v13 = *v49;
              v37 = statusPublisherDescription;
              v38 = statusPublisherDescription2;
              v33 = *v49;
              while (2)
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v49 != v13)
                  {
                    objc_enumerationMutation(statusPublisherDescription2);
                  }

                  v15 = *(*(&v48 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    statusPublisherDescription3 = [MEMORY[0x277D45F58] statusPublisherDescription];
                    statusPublisherDescription7 = v39;
                    if (os_log_type_enabled(statusPublisherDescription3, OS_LOG_TYPE_ERROR))
                    {
                      [RMStatusPublisherDescription _validateStatusEvents:];
                    }

                    statusPublisherDescription = v37;
LABEL_44:

                    goto LABEL_45;
                  }

                  v46 = 0u;
                  v47 = 0u;
                  v44 = 0u;
                  v45 = 0u;
                  statusPublisherDescription3 = [v15 allValues];
                  v17 = [statusPublisherDescription3 countByEnumeratingWithState:&v44 objects:v57 count:16];
                  if (v17)
                  {
                    v18 = v17;
                    v19 = *v45;
                    while (2)
                    {
                      for (j = 0; j != v18; ++j)
                      {
                        if (*v45 != v19)
                        {
                          objc_enumerationMutation(statusPublisherDescription3);
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          statusPublisherDescription4 = [MEMORY[0x277D45F58] statusPublisherDescription];
                          statusPublisherDescription7 = v39;
                          if (os_log_type_enabled(statusPublisherDescription4, OS_LOG_TYPE_ERROR))
                          {
                            [RMStatusPublisherDescription _validateStatusEvents:];
                          }

                          statusPublisherDescription = v37;
                          statusPublisherDescription2 = v38;
                          goto LABEL_44;
                        }
                      }

                      v18 = [statusPublisherDescription3 countByEnumeratingWithState:&v44 objects:v57 count:16];
                      if (v18)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  statusPublisherDescription2 = v38;
                  v13 = v33;
                }

                v12 = [v38 countByEnumeratingWithState:&v48 objects:v58 count:16];
                statusPublisherDescription = v37;
                if (v12)
                {
                  continue;
                }

                break;
              }
            }

            v21 = [v8 objectForKeyedSubscript:@"StatusItems"];
            objc_opt_class();
            statusPublisherDescription7 = v39;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              statusPublisherDescription5 = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(statusPublisherDescription5, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

LABEL_50:
              goto LABEL_51;
            }

            v22 = statusPublisherDescription;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v23 = v21;
            v24 = [v23 countByEnumeratingWithState:&v40 objects:v56 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v41;
              while (2)
              {
                for (k = 0; k != v25; ++k)
                {
                  if (*v41 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    statusPublisherDescription6 = [MEMORY[0x277D45F58] statusPublisherDescription];
                    if (os_log_type_enabled(statusPublisherDescription6, OS_LOG_TYPE_ERROR))
                    {
                      [RMStatusPublisherDescription _validateStatusEvents:];
                    }

                    statusPublisherDescription = v22;
                    goto LABEL_50;
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v40 objects:v56 count:16];
                if (v25)
                {
                  continue;
                }

                break;
              }
            }

            v7 = v36 + 1;
            v6 = v34;
          }

          while (v36 + 1 != v35);
          v5 = [v39 countByEnumeratingWithState:&v52 objects:v59 count:16];
          v28 = 1;
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      statusPublisherDescription7 = [MEMORY[0x277D45F58] statusPublisherDescription];
      if (os_log_type_enabled(statusPublisherDescription7, OS_LOG_TYPE_ERROR))
      {
        [RMStatusPublisherDescription _validateStatusEvents:];
      }

LABEL_51:
      v28 = 0;
    }
  }

  else
  {
    v28 = 1;
  }

  return v28;
}

- (BOOL)_validateStatusKeysByNotification:(id)notification
{
  v29 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      allValues = [notificationCopy allValues];
      v5 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v24;
        v18 = *v24;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v24 != v7)
            {
              objc_enumerationMutation(allValues);
            }

            v9 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              statusPublisherDescription = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(statusPublisherDescription, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

LABEL_26:

              goto LABEL_27;
            }

            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            statusPublisherDescription = v9;
            v11 = [statusPublisherDescription countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v20;
              while (2)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v20 != v13)
                  {
                    objc_enumerationMutation(statusPublisherDescription);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    statusPublisherDescription2 = [MEMORY[0x277D45F58] statusPublisherDescription];
                    if (os_log_type_enabled(statusPublisherDescription2, OS_LOG_TYPE_ERROR))
                    {
                      [RMStatusPublisherDescription _validateStatusEvents:];
                    }

                    goto LABEL_26;
                  }
                }

                v12 = [statusPublisherDescription countByEnumeratingWithState:&v19 objects:v27 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }
            }

            v7 = v18;
          }

          v6 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
          v15 = 1;
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      allValues = [MEMORY[0x277D45F58] statusPublisherDescription];
      if (os_log_type_enabled(allValues, OS_LOG_TYPE_ERROR))
      {
        [RMStatusPublisherDescription _validateStatusEvents:];
      }

LABEL_27:
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (BOOL)_validateStatusKeysWithoutNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      statusPublisherDescription2 = notificationCopy;
      v5 = [statusPublisherDescription2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(statusPublisherDescription2);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              statusPublisherDescription = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(statusPublisherDescription, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

              goto LABEL_18;
            }
          }

          v6 = [statusPublisherDescription2 countByEnumeratingWithState:&v12 objects:v16 count:16];
          v9 = 1;
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      statusPublisherDescription2 = [MEMORY[0x277D45F58] statusPublisherDescription];
      if (os_log_type_enabled(statusPublisherDescription2, OS_LOG_TYPE_ERROR))
      {
        [RMStatusPublisherDescription _validateStatusEvents:];
      }

LABEL_18:
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end