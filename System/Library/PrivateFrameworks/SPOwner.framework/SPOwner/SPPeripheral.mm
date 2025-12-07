@interface SPPeripheral
- (BOOL)isEqual:(id)equal;
- (NSArray)keyAddressPairs;
- (SPPeripheral)initWithCoder:(id)coder;
- (SPPeripheral)initWithUserIdentifier:(id)identifier beaconIdentifier:(id)beaconIdentifier groupIdentifier:(id)groupIdentifier name:(id)name partIdentifier:(unsigned __int8)partIdentifier serialNumber:(id)number managedByFindMy:(BOOL)my primaryIndex:(unint64_t)self0 ltkIndexMap:(id)self1 lastConnectedLEMAC:(id)self2 allowedSessions:(id)self3 keyAddressPairs:(id)self4;
- (SPPeripheral)initWithUserIdentifier:(id)identifier beaconIdentifier:(id)beaconIdentifier groupIdentifier:(id)groupIdentifier name:(id)name partIdentifier:(unsigned __int8)partIdentifier serialNumber:(id)number managedByFindMy:(BOOL)my primaryIndex:(unint64_t)self0 ltkIndexMap:(id)self1 lastConnectedLEMAC:(id)self2 allowedSessions:(id)self3 longTermKeyMap:(id)self4;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionForLEMAC:(id)c;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPPeripheral

- (SPPeripheral)initWithUserIdentifier:(id)identifier beaconIdentifier:(id)beaconIdentifier groupIdentifier:(id)groupIdentifier name:(id)name partIdentifier:(unsigned __int8)partIdentifier serialNumber:(id)number managedByFindMy:(BOOL)my primaryIndex:(unint64_t)self0 ltkIndexMap:(id)self1 lastConnectedLEMAC:(id)self2 allowedSessions:(id)self3 keyAddressPairs:(id)self4
{
  partIdentifierCopy = partIdentifier;
  v61 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  beaconIdentifierCopy = beaconIdentifier;
  groupIdentifierCopy = groupIdentifier;
  nameCopy = name;
  numberCopy = number;
  mapCopy = map;
  cCopy = c;
  sessionsCopy = sessions;
  pairsCopy = pairs;
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v21 = pairsCopy;
  v22 = [v21 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v57;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v56 + 1) + 8 * i);
        leMACAddress = [v26 leMACAddress];
        v28 = [v20 objectForKeyedSubscript:leMACAddress];

        if (!v28)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
          leMACAddress2 = [v26 leMACAddress];
          [v20 setObject:v29 forKeyedSubscript:leMACAddress2];
        }

        leMACAddress3 = [v26 leMACAddress];
        v32 = [v20 objectForKeyedSubscript:leMACAddress3];

        longTermKey = [v26 longTermKey];
        [v32 addObject:longTermKey];
      }

      v23 = [v21 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v23);
  }

  v34 = [v20 count];
  if (v34 < 3)
  {
    v36 = [v20 copy];
    v41 = sessionsCopy;
    v40 = cCopy;
    selfCopy = self;
    v39 = mapCopy;
    v42 = numberCopy;
    LOBYTE(v45) = my;
    v38 = nameCopy;
    v37 = groupIdentifierCopy;
    selfCopy2 = [(SPPeripheral *)selfCopy initWithUserIdentifier:identifierCopy beaconIdentifier:beaconIdentifierCopy groupIdentifier:groupIdentifierCopy name:nameCopy partIdentifier:partIdentifierCopy serialNumber:numberCopy managedByFindMy:v45 primaryIndex:index ltkIndexMap:mapCopy lastConnectedLEMAC:cCopy allowedSessions:sessionsCopy longTermKeyMap:v36];
    v47 = selfCopy2;
  }

  else
  {
    selfCopy2 = self;
    v36 = LogCategory_CBPeripheralManagement(v34);
    v38 = nameCopy;
    v37 = groupIdentifierCopy;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [SPPeripheral initWithUserIdentifier:v20 beaconIdentifier:v36 groupIdentifier:? name:? partIdentifier:? serialNumber:? managedByFindMy:? primaryIndex:? ltkIndexMap:? lastConnectedLEMAC:? allowedSessions:? keyAddressPairs:?];
    }

    v47 = 0;
    v40 = cCopy;
    v39 = mapCopy;
    v41 = sessionsCopy;
    v42 = numberCopy;
  }

  return v47;
}

- (SPPeripheral)initWithUserIdentifier:(id)identifier beaconIdentifier:(id)beaconIdentifier groupIdentifier:(id)groupIdentifier name:(id)name partIdentifier:(unsigned __int8)partIdentifier serialNumber:(id)number managedByFindMy:(BOOL)my primaryIndex:(unint64_t)self0 ltkIndexMap:(id)self1 lastConnectedLEMAC:(id)self2 allowedSessions:(id)self3 longTermKeyMap:(id)self4
{
  identifierCopy = identifier;
  beaconIdentifierCopy = beaconIdentifier;
  groupIdentifierCopy = groupIdentifier;
  nameCopy = name;
  numberCopy = number;
  mapCopy = map;
  cCopy = c;
  sessionsCopy = sessions;
  keyMapCopy = keyMap;
  v45.receiver = self;
  v45.super_class = SPPeripheral;
  v25 = [(SPPeripheral *)&v45 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    userIdentifier = v25->_userIdentifier;
    v25->_userIdentifier = v26;

    v28 = [beaconIdentifierCopy copy];
    beaconIdentifier = v25->_beaconIdentifier;
    v25->_beaconIdentifier = v28;

    v30 = [groupIdentifierCopy copy];
    groupIdentifier = v25->_groupIdentifier;
    v25->_groupIdentifier = v30;

    v32 = [nameCopy copy];
    name = v25->_name;
    v25->_name = v32;

    v25->_partIdentifier = partIdentifier;
    v34 = [numberCopy copy];
    serialNumber = v25->_serialNumber;
    v25->_serialNumber = v34;

    v25->_managedByFindMy = my;
    v25->_primaryIndex = index;
    objc_storeStrong(&v25->_ltkIndexMap, map);
    objc_storeStrong(&v25->_lastConnectedLEMAC, c);
    v36 = [sessionsCopy copy];
    allowedSessions = v25->_allowedSessions;
    v25->_allowedSessions = v36;

    v38 = [keyMapCopy copy];
    longTermKeyMap = v25->_longTermKeyMap;
    v25->_longTermKeyMap = v38;
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = [SPPeripheral alloc];
  userIdentifier = [(SPPeripheral *)self userIdentifier];
  beaconIdentifier = [(SPPeripheral *)self beaconIdentifier];
  groupIdentifier = [(SPPeripheral *)self groupIdentifier];
  name = [(SPPeripheral *)self name];
  partIdentifier = [(SPPeripheral *)self partIdentifier];
  serialNumber = [(SPPeripheral *)self serialNumber];
  managedByFindMy = [(SPPeripheral *)self managedByFindMy];
  primaryIndex = [(SPPeripheral *)self primaryIndex];
  ltkIndexMap = [(SPPeripheral *)self ltkIndexMap];
  lastConnectedLEMAC = [(SPPeripheral *)self lastConnectedLEMAC];
  allowedSessions = [(SPPeripheral *)self allowedSessions];
  longTermKeyMap = [(SPPeripheral *)self longTermKeyMap];
  LOBYTE(v16) = managedByFindMy;
  v14 = [(SPPeripheral *)v19 initWithUserIdentifier:userIdentifier beaconIdentifier:beaconIdentifier groupIdentifier:groupIdentifier name:name partIdentifier:partIdentifier serialNumber:serialNumber managedByFindMy:v16 primaryIndex:primaryIndex ltkIndexMap:ltkIndexMap lastConnectedLEMAC:lastConnectedLEMAC allowedSessions:allowedSessions longTermKeyMap:longTermKeyMap];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userIdentifier = [(SPPeripheral *)self userIdentifier];
  [coderCopy encodeObject:userIdentifier forKey:@"userIdentifier"];

  beaconIdentifier = [(SPPeripheral *)self beaconIdentifier];
  [coderCopy encodeObject:beaconIdentifier forKey:@"beaconIdentifier"];

  groupIdentifier = [(SPPeripheral *)self groupIdentifier];
  [coderCopy encodeObject:groupIdentifier forKey:@"groupIdentifier"];

  name = [(SPPeripheral *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInt64:-[SPPeripheral partIdentifier](self forKey:{"partIdentifier"), @"partIdentifier"}];
  serialNumber = [(SPPeripheral *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  [coderCopy encodeBool:-[SPPeripheral managedByFindMy](self forKey:{"managedByFindMy"), @"managedByFindMy"}];
  [coderCopy encodeInt64:-[SPPeripheral primaryIndex](self forKey:{"primaryIndex"), @"primaryIndex"}];
  ltkIndexMap = [(SPPeripheral *)self ltkIndexMap];
  [coderCopy encodeObject:ltkIndexMap forKey:@"ltkIndexMap"];

  lastConnectedLEMAC = [(SPPeripheral *)self lastConnectedLEMAC];
  [coderCopy encodeObject:lastConnectedLEMAC forKey:@"lastConnectedLEMAC"];

  allowedSessions = [(SPPeripheral *)self allowedSessions];
  [coderCopy encodeObject:allowedSessions forKey:@"allowedSessions"];

  longTermKeyMap = [(SPPeripheral *)self longTermKeyMap];
  [coderCopy encodeObject:longTermKeyMap forKey:@"longTermKeyMap"];
}

- (SPPeripheral)initWithCoder:(id)coder
{
  v37[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userIdentifier"];
  userIdentifier = self->_userIdentifier;
  self->_userIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
  groupIdentifier = self->_groupIdentifier;
  self->_groupIdentifier = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v11;

  self->_partIdentifier = [coderCopy decodeInt64ForKey:@"partIdentifier"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v13;

  self->_managedByFindMy = [coderCopy decodeBoolForKey:@"managedByFindMy"];
  self->_primaryIndex = [coderCopy decodeInt64ForKey:@"primaryIndex"];
  v15 = MEMORY[0x277CBEB98];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v37[3] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
  v17 = [v15 setWithArray:v16];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"ltkIndexMap"];
  ltkIndexMap = self->_ltkIndexMap;
  self->_ltkIndexMap = v18;

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastConnectedLEMAC"];
  lastConnectedLEMAC = self->_lastConnectedLEMAC;
  self->_lastConnectedLEMAC = v20;

  v22 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v24 = [v22 setWithArray:v23];
  v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"allowedSessions"];
  allowedSessions = self->_allowedSessions;
  self->_allowedSessions = v25;

  v27 = MEMORY[0x277CBEB98];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:3];
  v29 = [v27 setWithArray:{v28, v33, v34}];
  v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"longTermKeyMap"];

  longTermKeyMap = self->_longTermKeyMap;
  self->_longTermKeyMap = v30;

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      userIdentifier = [(SPPeripheral *)self userIdentifier];
      userIdentifier2 = [(SPPeripheral *)v5 userIdentifier];
      if ([userIdentifier isEqual:userIdentifier2])
      {
        beaconIdentifier = [(SPPeripheral *)self beaconIdentifier];
        beaconIdentifier2 = [(SPPeripheral *)v5 beaconIdentifier];
        v10 = [beaconIdentifier isEqual:beaconIdentifier2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  userIdentifier = [(SPPeripheral *)self userIdentifier];
  v4 = [userIdentifier hash];
  beaconIdentifier = [(SPPeripheral *)self beaconIdentifier];
  v6 = [beaconIdentifier hash];

  return v6 ^ v4;
}

- (NSArray)keyAddressPairs
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  longTermKeyMap = [(SPPeripheral *)self longTermKeyMap];
  allKeys = [longTermKeyMap allKeys];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = allKeys;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        longTermKeyMap2 = [(SPPeripheral *)selfCopy longTermKeyMap];
        v11 = [longTermKeyMap2 objectForKeyedSubscript:v9];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [[SPCBPeripheralKeyAddressPair alloc] initWithLEMACAddress:v9 longTermKey:*(*(&v22 + 1) + 8 * j)];
              [v3 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v14);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)descriptionForLEMAC:(id)c
{
  cCopy = c;
  v4 = [cCopy subdataWithRange:{0, 1}];
  v5 = [cCopy subdataWithRange:{1, 6}];

  v6 = MEMORY[0x277CCACA8];
  fm_hexString = [v4 fm_hexString];
  fm_hexString2 = [v5 fm_hexString];
  v9 = [v6 stringWithFormat:@"%@ %@", fm_hexString, fm_hexString2];

  return v9;
}

- (id)description
{
  v73 = *MEMORY[0x277D85DE8];
  groupIdentifier = [(SPPeripheral *)self groupIdentifier];

  if (groupIdentifier)
  {
    groupIdentifier2 = [(SPPeripheral *)self groupIdentifier];
    v52 = [groupIdentifier2 description];
  }

  else
  {
    v52 = @"<nil>";
  }

  lastConnectedLEMAC = [(SPPeripheral *)self lastConnectedLEMAC];

  if (lastConnectedLEMAC)
  {
    lastConnectedLEMAC2 = [(SPPeripheral *)self lastConnectedLEMAC];
    v51 = [(SPPeripheral *)self descriptionForLEMAC:lastConnectedLEMAC2];
  }

  else
  {
    v51 = &stru_2875DB468;
  }

  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  longTermKeyMap = [(SPPeripheral *)self longTermKeyMap];
  allKeys = [longTermKeyMap allKeys];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = allKeys;
  v9 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v9)
  {
    v10 = v9;
    v54 = *v67;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v67 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v66 + 1) + 8 * i);
        longTermKeyMap2 = [(SPPeripheral *)self longTermKeyMap];
        v14 = [longTermKeyMap2 objectForKeyedSubscript:v12];

        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v63;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v63 != v19)
              {
                objc_enumerationMutation(v16);
              }

              fm_hexString = [*(*(&v62 + 1) + 8 * j) fm_hexString];
              [v15 addObject:fm_hexString];
            }

            v18 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
          }

          while (v18);
        }

        v22 = [v15 componentsJoinedByString:{@", "}];
        v23 = MEMORY[0x277CCACA8];
        v24 = [(SPPeripheral *)self descriptionForLEMAC:v12];
        v25 = [v23 stringWithFormat:@"LEMAC: %@ -- LTKs: [%@]", v24, v22];
        [v57 addObject:v25];
      }

      v10 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v10);
  }

  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  ltkIndexMap = [(SPPeripheral *)self ltkIndexMap];
  v27 = [ltkIndexMap countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v59;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v59 != v29)
        {
          objc_enumerationMutation(ltkIndexMap);
        }

        v31 = *(*(&v58 + 1) + 8 * k);
        v32 = MEMORY[0x277CCACA8];
        fm_hexString2 = [v31 fm_hexString];
        ltkIndexMap2 = [(SPPeripheral *)self ltkIndexMap];
        v35 = [ltkIndexMap2 objectForKeyedSubscript:v31];
        v36 = [v32 stringWithFormat:@"  %@ -> %llu", fm_hexString2, objc_msgSend(v35, "unsignedLongLongValue")];
        [v26 addObject:v36];
      }

      v28 = [ltkIndexMap countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v28);
  }

  v37 = MEMORY[0x277CCACA8];
  v50 = v26;
  v38 = [v26 componentsJoinedByString:@"\n"];
  v39 = [v37 stringWithFormat:@"\n%@\n", v38];

  v56 = MEMORY[0x277CCACA8];
  userIdentifier = [(SPPeripheral *)self userIdentifier];
  beaconIdentifier = [(SPPeripheral *)self beaconIdentifier];
  partIdentifier = [(SPPeripheral *)self partIdentifier];
  name = [(SPPeripheral *)self name];
  serialNumber = [(SPPeripheral *)self serialNumber];
  managedByFindMy = [(SPPeripheral *)self managedByFindMy];
  primaryIndex = [(SPPeripheral *)self primaryIndex];
  allowedSessions = [(SPPeripheral *)self allowedSessions];
  v47 = [v56 stringWithFormat:@"<Uid: %@ Bid: %@ group: %@ part: %u name: [%@] S/N: [%@] managed: %d index: %llu lastConnectedMAC: [%@] acl: %@ ltkMap: %@ ltkIndexMap: %@>", userIdentifier, beaconIdentifier, v52, partIdentifier, name, serialNumber, managedByFindMy, primaryIndex, v51, allowedSessions, v57, v39];

  return v47;
}

- (void)initWithUserIdentifier:(void *)a1 beaconIdentifier:(NSObject *)a2 groupIdentifier:name:partIdentifier:serialNumber:managedByFindMy:primaryIndex:ltkIndexMap:lastConnectedLEMAC:allowedSessions:keyAddressPairs:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "Too many MAC addresses: %lu", &v3, 0xCu);
}

@end