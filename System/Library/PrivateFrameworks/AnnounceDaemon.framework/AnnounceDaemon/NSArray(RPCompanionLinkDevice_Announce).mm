@interface NSArray(RPCompanionLinkDevice_Announce)
- (id)activeAccessoryDevicesSupportingAnnounce;
- (id)activeDevicesSupportingAnnounce;
- (id)activePersonalDevicesSupportingAnnounce;
- (id)devicesByRemovingNonAccessoryDevicesNotBelongingToUsers:()RPCompanionLinkDevice_Announce;
- (id)devicesInHome:()RPCompanionLinkDevice_Announce;
- (id)pairedCompanion;
- (id)personalDevicesForUser:()RPCompanionLinkDevice_Announce;
@end

@implementation NSArray(RPCompanionLinkDevice_Announce)

- (id)activeAccessoryDevicesSupportingAnnounce
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        homeKitIdentifier = [v9 homeKitIdentifier];
        if (homeKitIdentifier && [v9 supportsAnnounce])
        {
          v11 = [v3 objectForKey:homeKitIdentifier];
          v12 = v11;
          if (!v11 || ([v11 statusFlags] & 3) != 0)
          {
            [v3 setObject:v9 forKey:homeKitIdentifier];
          }
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)activeDevicesSupportingAnnounce
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        idsDeviceIdentifier = [v9 idsDeviceIdentifier];
        if ([v9 supportsAnnounce])
        {
          v11 = idsDeviceIdentifier == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = [v3 objectForKey:idsDeviceIdentifier];
          v13 = v12;
          if (!v12 || ([v12 statusFlags] & 3) != 0)
          {
            [v3 setObject:v9 forKey:idsDeviceIdentifier];
          }
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  allValues = [v3 allValues];

  return allValues;
}

- (id)activePersonalDevicesSupportingAnnounce
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  activeDevicesSupportingAnnounce = [self activeDevicesSupportingAnnounce];
  v5 = [activeDevicesSupportingAnnounce countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(activeDevicesSupportingAnnounce);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 isAccessory] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [activeDevicesSupportingAnnounce countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)pairedCompanion
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  selfCopy = self;
  v2 = [selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(selfCopy);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v5 isPairedCompanion])
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (id)devicesInHome:()RPCompanionLinkDevice_Announce
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        homeKitUserIdentifiers = [v8 homeKitUserIdentifiers];
        v10 = homeKitUserIdentifiers;
        if (homeKitUserIdentifiers)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = homeKitUserIdentifiers;
          v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v23;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v23 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [v4 hmu_userWithUniqueIdentifier:*(*(&v22 + 1) + 8 * j)];
                if (v16)
                {
                  v17 = v16;
                  [v19 addObject:v8];

                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  return v19;
}

- (id)devicesByRemovingNonAccessoryDevicesNotBelongingToUsers:()RPCompanionLinkDevice_Announce
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = objc_opt_new();
  v19 = v4;
  v5 = [MEMORY[0x277CD1EE0] hmu_uniqueIdentifiersFromUsers:v4];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 isAccessory])
        {
          [v21 addObject:v10];
        }

        else
        {
          homeKitUserIdentifiers = [v10 homeKitUserIdentifiers];
          v12 = homeKitUserIdentifiers;
          if (homeKitUserIdentifiers)
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v13 = homeKitUserIdentifiers;
            v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v23;
              while (2)
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v23 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  if ([v5 containsObject:*(*(&v22 + 1) + 8 * j)])
                  {
                    [v21 addObject:v10];
                    goto LABEL_19;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  return v21;
}

- (id)personalDevicesForUser:()RPCompanionLinkDevice_Announce
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (([v11 isAccessory] & 1) == 0)
        {
          homeKitUserIdentifiers = [v11 homeKitUserIdentifiers];
          if (homeKitUserIdentifiers)
          {
            uniqueIdentifier = [v4 uniqueIdentifier];
            v14 = [homeKitUserIdentifiers containsObject:uniqueIdentifier];

            if (v14)
            {
              [v5 addObject:v11];
            }
          }
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

@end