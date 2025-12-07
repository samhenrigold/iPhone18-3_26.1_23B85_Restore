@interface ANAnnouncementDestination(Home)
- (id)home;
- (id)rooms;
- (id)zones;
@end

@implementation ANAnnouncementDestination(Home)

- (id)home
{
  type = [self type];
  if (type == 1)
  {
    homeObject = [self homeObject];
    currentAccessory2 = +[ANHomeManager shared];
    v7 = [currentAccessory2 homeForID:homeObject];
  }

  else
  {
    if (type)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v3 = +[ANHomeManager shared];
    currentAccessory = [v3 currentAccessory];

    if (currentAccessory)
    {
      homeObject = +[ANHomeManager shared];
      currentAccessory2 = [homeObject currentAccessory];
      [currentAccessory2 home];
    }

    else
    {
      homeObject = [self homeObject];
      currentAccessory2 = +[ANHomeManager shared];
      [currentAccessory2 homeWithName:homeObject];
    }
    v7 = ;
  }

  v8 = v7;

LABEL_10:

  return v8;
}

- (id)zones
{
  v31 = *MEMORY[0x277D85DE8];
  home = [self home];
  if (!home)
  {
    goto LABEL_14;
  }

  type = [self type];
  if (type == 1)
  {
    v13 = MEMORY[0x277CBEB18];
    zoneObjects = [self zoneObjects];
    v6 = [v13 arrayWithCapacity:{objc_msgSend(zoneObjects, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    zoneObjects2 = [self zoneObjects];
    v15 = [zoneObjects2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(zoneObjects2);
          }

          v19 = [home hmu_zoneWithUniqueIdentifier:*(*(&v21 + 1) + 8 * i)];
          if (v19)
          {
            [v6 addObject:v19];
          }
        }

        v16 = [zoneObjects2 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    goto LABEL_24;
  }

  if (type)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_25;
  }

  v4 = MEMORY[0x277CBEB18];
  zoneObjects3 = [self zoneObjects];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(zoneObjects3, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  zoneObjects2 = [self zoneObjects];
  v8 = [zoneObjects2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(zoneObjects2);
        }

        v12 = [home hmu_zoneWithName:*(*(&v25 + 1) + 8 * j)];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [zoneObjects2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

LABEL_24:

LABEL_25:

  return v6;
}

- (id)rooms
{
  v31 = *MEMORY[0x277D85DE8];
  home = [self home];
  if (!home)
  {
    goto LABEL_14;
  }

  type = [self type];
  if (type == 1)
  {
    v13 = MEMORY[0x277CBEB18];
    roomObjects = [self roomObjects];
    v6 = [v13 arrayWithCapacity:{objc_msgSend(roomObjects, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    roomObjects2 = [self roomObjects];
    v15 = [roomObjects2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(roomObjects2);
          }

          v19 = [home hmu_roomWithUniqueIdentifier:*(*(&v21 + 1) + 8 * i)];
          if (v19)
          {
            [v6 addObject:v19];
          }
        }

        v16 = [roomObjects2 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    goto LABEL_24;
  }

  if (type)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_25;
  }

  v4 = MEMORY[0x277CBEB18];
  roomObjects3 = [self roomObjects];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(roomObjects3, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  roomObjects2 = [self roomObjects];
  v8 = [roomObjects2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(roomObjects2);
        }

        v12 = [home hmu_roomWithName:*(*(&v25 + 1) + 8 * j)];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [roomObjects2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

LABEL_24:

LABEL_25:

  return v6;
}

@end