@interface ANLocation(Home)
- (id)allRoomsInHome:()Home;
- (uint64_t)containsAccessory:()Home;
@end

@implementation ANLocation(Home)

- (uint64_t)containsAccessory:()Home
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  homeUUID = [self homeUUID];
  home = [v4 home];
  uniqueIdentifier = [home uniqueIdentifier];
  v8 = [homeUUID isEqual:uniqueIdentifier];

  if (v8)
  {
    if ([self flags])
    {
      v31 = 1;
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      roomUUIDs = [self roomUUIDs];
      v10 = [roomUUIDs countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v46;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v46 != v12)
            {
              objc_enumerationMutation(roomUUIDs);
            }

            v14 = *(*(&v45 + 1) + 8 * v13);
            room = [v4 room];
            uniqueIdentifier2 = [room uniqueIdentifier];
            LOBYTE(v14) = [v14 isEqual:uniqueIdentifier2];

            if (v14)
            {
LABEL_30:
              v31 = 1;
              goto LABEL_31;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [roomUUIDs countByEnumeratingWithState:&v45 objects:v51 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      roomUUIDs = [self zoneUUIDs];
      v34 = [roomUUIDs countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v34)
      {
        v17 = *v42;
        v33 = *v42;
        do
        {
          v18 = 0;
          do
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(roomUUIDs);
            }

            v35 = v18;
            v19 = *(*(&v41 + 1) + 8 * v18);
            home2 = [v4 home];
            v21 = [home2 hmu_zoneWithUniqueIdentifier:v19];

            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v36 = v21;
            rooms = [v21 rooms];
            v23 = [rooms countByEnumeratingWithState:&v37 objects:v49 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v38;
              while (2)
              {
                v26 = 0;
                do
                {
                  if (*v38 != v25)
                  {
                    objc_enumerationMutation(rooms);
                  }

                  uniqueIdentifier3 = [*(*(&v37 + 1) + 8 * v26) uniqueIdentifier];
                  room2 = [v4 room];
                  uniqueIdentifier4 = [room2 uniqueIdentifier];
                  v30 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

                  if (v30)
                  {

                    goto LABEL_30;
                  }

                  ++v26;
                }

                while (v24 != v26);
                v24 = [rooms countByEnumeratingWithState:&v37 objects:v49 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v18 = v35 + 1;
            v17 = v33;
          }

          while (v35 + 1 != v34);
          v34 = [roomUUIDs countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v34);
      }

      v31 = 0;
LABEL_31:
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)allRoomsInHome:()Home
{
  v4 = a3;
  roomUUIDs = [self roomUUIDs];
  if (roomUUIDs)
  {
    roomUUIDs2 = [self roomUUIDs];
    v7 = [v4 hmu_roomsWithUniqueIdentifiers:roomUUIDs2];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  zoneUUIDs = [self zoneUUIDs];
  if (zoneUUIDs)
  {
    zoneUUIDs2 = [self zoneUUIDs];
    v10 = [v4 hmu_zonesWithUniqueIdentifiers:zoneUUIDs2];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = [MEMORY[0x277CD1F50] hmu_roomsInZones:v10 appendingRooms:v7];

  return v11;
}

@end