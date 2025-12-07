@interface ANLocation
- (ANLocation)initWithCoder:(id)coder;
- (ANLocation)initWithHomeID:(id)d;
- (ANLocation)initWithMessage:(id)message;
- (id)copy;
- (id)message;
- (unint64_t)target;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANLocation

- (ANLocation)initWithHomeID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ANLocation;
  v6 = [(ANLocation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeUUID, d);
  }

  return v7;
}

- (id)copy
{
  v3 = objc_opt_new();
  homeUUID = [(ANLocation *)self homeUUID];
  [v3 setHomeUUID:homeUUID];

  roomUUIDs = [(ANLocation *)self roomUUIDs];
  v6 = [roomUUIDs copy];
  [v3 setRoomUUIDs:v6];

  zoneUUIDs = [(ANLocation *)self zoneUUIDs];
  v8 = [zoneUUIDs copy];
  [v3 setZoneUUIDs:v8];

  userUUIDs = [(ANLocation *)self userUUIDs];
  v10 = [userUUIDs copy];
  [v3 setUserUUIDs:v10];

  deviceIDs = [(ANLocation *)self deviceIDs];
  v12 = [deviceIDs copy];
  [v3 setDeviceIDs:v12];

  [v3 setFlags:{-[ANLocation flags](self, "flags")}];
  homeLocationStatus = [(ANLocation *)self homeLocationStatus];
  [v3 setHomeLocationStatus:homeLocationStatus];

  return v3;
}

- (unint64_t)target
{
  zoneUUIDs = [(ANLocation *)self zoneUUIDs];
  v4 = [zoneUUIDs count];

  if (v4 <= 1)
  {
    zoneUUIDs2 = [(ANLocation *)self zoneUUIDs];
    v7 = [zoneUUIDs2 count] == 1;

    v5 = 4 * v7;
  }

  else
  {
    v5 = 8;
  }

  roomUUIDs = [(ANLocation *)self roomUUIDs];
  v9 = [roomUUIDs count];

  if (v9 <= 1)
  {
    roomUUIDs2 = [(ANLocation *)self roomUUIDs];
    v10 = [roomUUIDs2 count] == 1;
  }

  else
  {
    v10 = 2;
  }

  return v5 | v10;
}

- (ANLocation)initWithMessage:(id)message
{
  v63 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy count])
  {
    v5 = [messageCopy objectForKey:@"home"];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
      if (v6)
      {
        v7 = [(ANLocation *)self initWithHomeID:v6];
        if (v7)
        {
          v44 = v6;
          v45 = v5;
          v8 = [messageCopy objectForKey:@"flags"];
          v9 = v8;
          if (v8)
          {
            v7->_flags = [v8 unsignedIntegerValue];
          }

          v43 = v9;
          v47 = v7;
          v10 = [messageCopy objectForKey:@"zones"];
          v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v57;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v57 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v56 + 1) + 8 * i)];
                if (v17)
                {
                  [v11 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v56 objects:v62 count:16];
            }

            while (v14);
          }

          v42 = v12;

          objc_storeStrong(&v47->_zoneUUIDs, v11);
          v18 = [messageCopy objectForKey:@"rooms"];
          v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v20 = v18;
          v21 = [v20 countByEnumeratingWithState:&v52 objects:v61 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v53;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v53 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:{*(*(&v52 + 1) + 8 * j), v42}];
                if (v25)
                {
                  [v19 addObject:v25];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v52 objects:v61 count:16];
            }

            while (v22);
          }

          objc_storeStrong(&v47->_roomUUIDs, v19);
          v46 = messageCopy;
          v26 = [messageCopy objectForKey:@"users"];
          v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v28 = v26;
          v29 = [v28 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v49;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v49 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v48 + 1) + 8 * k)];
                if (v33)
                {
                  [(NSArray *)v27 addObject:v33];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v48 objects:v60 count:16];
            }

            while (v30);
          }

          v7 = v47;
          userUUIDs = v47->_userUUIDs;
          v47->_userUUIDs = v27;
          v35 = v27;

          messageCopy = v46;
          v36 = [v46 objectForKey:@"devices"];
          deviceIDs = v47->_deviceIDs;
          v47->_deviceIDs = v36;

          v38 = [v46 objectForKey:@"homeLocationStatus"];
          homeLocationStatus = v47->_homeLocationStatus;
          v47->_homeLocationStatus = v38;

          v6 = v44;
          v5 = v45;
        }

        self = v7;
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)message
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  uUIDString = [(NSUUID *)self->_homeUUID UUIDString];
  [v3 setValue:uUIDString forKey:@"home"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_flags];
  [v3 setValue:v5 forKey:@"flags"];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_zoneUUIDs, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = self->_zoneUUIDs;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        uUIDString2 = [*(*(&v36 + 1) + 8 * i) UUIDString];
        [v6 addObject:uUIDString2];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  [v3 setValue:v6 forKey:@"zones"];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_roomUUIDs, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_roomUUIDs;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        uUIDString3 = [*(*(&v32 + 1) + 8 * j) UUIDString];
        [v13 addObject:uUIDString3];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v16);
  }

  [v3 setValue:v13 forKey:@"rooms"];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_userUUIDs, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = self->_userUUIDs;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        uUIDString4 = [*(*(&v28 + 1) + 8 * k) UUIDString];
        [v20 addObject:uUIDString4];
      }

      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v23);
  }

  [v3 setValue:v20 forKey:@"users"];
  [v3 setValue:self->_deviceIDs forKey:@"devices"];
  [v3 setValue:self->_homeLocationStatus forKey:@"homeLocationStatus"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  homeUUID = [(ANLocation *)self homeUUID];
  [coderCopy encodeObject:homeUUID forKey:@"home"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANLocation flags](self, "flags")}];
  [coderCopy encodeObject:v6 forKey:@"flags"];

  zoneUUIDs = [(ANLocation *)self zoneUUIDs];
  [coderCopy encodeObject:zoneUUIDs forKey:@"zones"];

  roomUUIDs = [(ANLocation *)self roomUUIDs];
  [coderCopy encodeObject:roomUUIDs forKey:@"rooms"];

  userUUIDs = [(ANLocation *)self userUUIDs];
  [coderCopy encodeObject:userUUIDs forKey:@"users"];

  deviceIDs = [(ANLocation *)self deviceIDs];
  [coderCopy encodeObject:deviceIDs forKey:@"devices"];
}

- (ANLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  if (v5)
  {
    v6 = [(ANLocation *)self initWithHomeID:v5];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flags"];
      v8 = v7;
      if (v7)
      {
        v6->_flags = [v7 unsignedIntegerValue];
      }

      v9 = MEMORY[0x277CBEB98];
      v10 = objc_opt_class();
      v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"zones"];
      zoneUUIDs = v6->_zoneUUIDs;
      v6->_zoneUUIDs = v12;

      v14 = [coderCopy decodeObjectOfClasses:v11 forKey:@"rooms"];
      roomUUIDs = v6->_roomUUIDs;
      v6->_roomUUIDs = v14;

      v16 = [coderCopy decodeObjectOfClasses:v11 forKey:@"users"];
      userUUIDs = v6->_userUUIDs;
      v6->_userUUIDs = v16;

      v18 = MEMORY[0x277CBEB98];
      v19 = objc_opt_class();
      v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
      v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"devices"];
      deviceIDs = v6->_deviceIDs;
      v6->_deviceIDs = v21;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end