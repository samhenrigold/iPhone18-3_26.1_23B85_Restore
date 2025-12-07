@interface ANAnnouncement(RemotePlaybackSession)
- (id)remoteSessionDictionary;
- (id)sendFailureDictionary;
@end

@implementation ANAnnouncement(RemotePlaybackSession)

- (id)remoteSessionDictionary
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  identifier = [self identifier];
  [v3 setObject:identifier forKeyedSubscript:*MEMORY[0x277CEA760]];

  groupID = [self groupID];
  [v3 setObject:groupID forKeyedSubscript:*MEMORY[0x277CEA9F0]];

  location = [self location];
  homeUUID = [location homeUUID];

  v84 = homeUUID;
  if (homeUUID)
  {
    v8 = +[ANHomeManager shared];
    v9 = [v8 homeForID:homeUUID];

    uUIDString = [homeUUID UUIDString];
    [v3 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CEAA00]];

    name = [v9 name];
    [v3 setObject:name forKeyedSubscript:*MEMORY[0x277CEAA08]];
  }

  else
  {
    v9 = 0;
  }

  v12 = MEMORY[0x277CCABB0];
  announcer = [self announcer];
  v14 = [v12 numberWithBool:{objc_msgSend(announcer, "isAccessory")}];
  [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277CEA7B8]];

  announcer2 = [self announcer];
  homeKitID = [announcer2 homeKitID];
  [v3 setObject:homeKitID forKeyedSubscript:*MEMORY[0x277CEA7B0]];

  announcer3 = [self announcer];
  homeKitUserID = [announcer3 homeKitUserID];
  [v3 setObject:homeKitUserID forKeyedSubscript:*MEMORY[0x277CEA7E0]];

  selfCopy = self;
  if (v9)
  {
    announcer4 = [self announcer];
    name2 = [announcer4 name];

    if (!name2 || [name2 isEqualToString:&stru_2851BDB18])
    {
      v21 = [self announcerNameInHome:v9];

      name2 = v21;
    }

    [v3 setObject:name2 forKeyedSubscript:*MEMORY[0x277CEA7C8]];
    v22 = objc_alloc(MEMORY[0x277CCAD78]);
    announcer5 = [self announcer];
    homeKitID2 = [announcer5 homeKitID];
    v25 = [v22 initWithUUIDString:homeKitID2];
    selfCopy2 = self;
    v27 = v25;

    announcer6 = [selfCopy2 announcer];
    userID = [announcer6 userID];

    if (!userID)
    {
      v30 = [v9 hmu_userWithUniqueIdentifier:v27];
      userID2 = [v30 userID];

      if (userID2)
      {
        userID = userID2;
      }

      else
      {
        userID = &stru_2851BDB18;
      }
    }

    [v3 setObject:userID forKeyedSubscript:*MEMORY[0x277CEA7D8]];

    self = selfCopy;
  }

  v85 = v3;
  v32 = objc_opt_new();
  location2 = [self location];
  roomUUIDs = [location2 roomUUIDs];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v35 = roomUUIDs;
  v36 = [v35 countByEnumeratingWithState:&v91 objects:v96 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v92;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v92 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v91 + 1) + 8 * i);
        v41 = [v9 hmu_roomWithUniqueIdentifier:v40];
        v42 = v41;
        if (v41)
        {
          name3 = [v41 name];
          uUIDString2 = [v40 UUIDString];
          [v32 setObject:name3 forKeyedSubscript:uUIDString2];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v91 objects:v96 count:16];
    }

    while (v37);
  }

  v83 = v35;

  [v85 setObject:v32 forKeyedSubscript:*MEMORY[0x277CEAA88]];
  v45 = objc_opt_new();
  location3 = [selfCopy location];
  zoneUUIDs = [location3 zoneUUIDs];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v48 = zoneUUIDs;
  v49 = [v48 countByEnumeratingWithState:&v87 objects:v95 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v88;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v88 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v87 + 1) + 8 * j);
        v54 = [v9 hmu_zoneWithUniqueIdentifier:v53];
        v55 = v54;
        if (v54)
        {
          name4 = [v54 name];
          uUIDString3 = [v53 UUIDString];
          [v45 setObject:name4 forKeyedSubscript:uUIDString3];
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v87 objects:v95 count:16];
    }

    while (v50);
  }

  [v85 setObject:v45 forKeyedSubscript:*MEMORY[0x277CEAB20]];
  filePath = [selfCopy filePath];
  [v85 setObject:filePath forKeyedSubscript:*MEMORY[0x277CEA7E8]];

  announcer7 = [selfCopy announcer];
  homeKitID3 = [announcer7 homeKitID];
  v61 = [v9 hmu_accessoryWithUniqueIdentifierUUIDString:homeKitID3];

  if (v9)
  {
    announcer8 = [selfCopy announcer];
    if ([announcer8 isAccessory])
    {
      v63 = v61;
      announcer9 = [selfCopy announcer];
      homeKitUserID2 = [announcer9 homeKitUserID];
      if (homeKitUserID2)
      {
        v66 = homeKitUserID2;
        v82 = v63;
        room = [v63 room];

        v61 = v82;
        if (room)
        {
          room2 = [v82 room];
          name5 = [room2 name];
          v69 = ANLocalizedStringWithFormat();

LABEL_39:
          [v85 setObject:v69 forKeyedSubscript:{*MEMORY[0x277CEAAA8], name5}];

          goto LABEL_40;
        }

LABEL_38:
        room2 = [v9 name];
        name5 = room2;
        v69 = ANLocalizedStringWithFormat();
        goto LABEL_39;
      }
    }

    goto LABEL_38;
  }

LABEL_40:
  services = [v61 services];
  v71 = [services na_firstObjectPassingTest:&__block_literal_global_4];

  v72 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(selfCopy, "productType")}];
  [v85 setObject:v72 forKeyedSubscript:*MEMORY[0x277CEAA68]];

  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(selfCopy, "productTypeOverride")}];
  [v85 setObject:v73 forKeyedSubscript:*MEMORY[0x277CEAA78]];

  serviceType = [v71 serviceType];
  [v85 setObject:serviceType forKeyedSubscript:*MEMORY[0x277CEAA98]];

  v75 = +[ANMGProductTypeUtility productTypeToSystemImageName:](_TtC14AnnounceDaemon22ANMGProductTypeUtility, "productTypeToSystemImageName:", [selfCopy productType]);
  [v85 setObject:v75 forKeyedSubscript:*MEMORY[0x277CEAAB8]];

  v76 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(selfCopy, "deviceClass")}];
  [v85 setObject:v76 forKeyedSubscript:*MEMORY[0x277CEA998]];

  transcriptionText = [selfCopy transcriptionText];
  [v85 setObject:transcriptionText forKeyedSubscript:*MEMORY[0x277CEAAC0]];

  v78 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(selfCopy, "hasPlayed")}];
  [v85 setObject:v78 forKeyedSubscript:*MEMORY[0x277CEAA58]];

  v79 = [v85 copy];

  return v79;
}

- (id)sendFailureDictionary
{
  v1 = MEMORY[0x277CBEB38];
  remoteSessionDictionary = [self remoteSessionDictionary];
  v3 = [v1 dictionaryWithDictionary:remoteSessionDictionary];

  [v3 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA998]];
  [v3 setObject:0 forKeyedSubscript:*MEMORY[0x277CEAA58]];
  [v3 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA7B8]];
  [v3 setObject:0 forKeyedSubscript:*MEMORY[0x277CEAA68]];
  v4 = ANLocalizedString();
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CEAAA8]];

  v5 = [v3 copy];

  return v5;
}

@end