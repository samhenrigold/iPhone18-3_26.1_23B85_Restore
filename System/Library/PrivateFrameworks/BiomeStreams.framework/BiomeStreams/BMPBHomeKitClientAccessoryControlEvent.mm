@interface BMPBHomeKitClientAccessoryControlEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addZoneNames:(id)names;
- (void)addZoneUniqueIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBHomeKitClientAccessoryControlEvent

- (void)addZoneUniqueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers;
  v8 = identifiersCopy;
  if (!zoneUniqueIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_zoneUniqueIdentifiers;
    self->_zoneUniqueIdentifiers = v6;

    identifiersCopy = v8;
    zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers;
  }

  [(NSMutableArray *)zoneUniqueIdentifiers addObject:identifiersCopy];
}

- (void)addZoneNames:(id)names
{
  namesCopy = names;
  zoneNames = self->_zoneNames;
  v8 = namesCopy;
  if (!zoneNames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_zoneNames;
    self->_zoneNames = v6;

    namesCopy = v8;
    zoneNames = self->_zoneNames;
  }

  [(NSMutableArray *)zoneNames addObject:namesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBHomeKitClientAccessoryControlEvent;
  v4 = [(BMPBHomeKitClientAccessoryControlEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBHomeKitClientAccessoryControlEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  base = self->_base;
  if (base)
  {
    dictionaryRepresentation = [(BMPBHomeKitClientBase *)base dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"base"];
  }

  accessoryUniqueIdentifier = self->_accessoryUniqueIdentifier;
  if (accessoryUniqueIdentifier)
  {
    [dictionary setObject:accessoryUniqueIdentifier forKey:@"accessoryUniqueIdentifier"];
  }

  accessoryState = self->_accessoryState;
  if (accessoryState)
  {
    dictionaryRepresentation2 = [(BMPBAccessoryState *)accessoryState dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"accessoryState"];
  }

  serviceUniqueIdentifier = self->_serviceUniqueIdentifier;
  if (serviceUniqueIdentifier)
  {
    [dictionary setObject:serviceUniqueIdentifier forKey:@"serviceUniqueIdentifier"];
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [dictionary setObject:serviceType forKey:@"serviceType"];
  }

  characteristicType = self->_characteristicType;
  if (characteristicType)
  {
    [dictionary setObject:characteristicType forKey:@"characteristicType"];
  }

  serviceGroupUniqueIdentifier = self->_serviceGroupUniqueIdentifier;
  if (serviceGroupUniqueIdentifier)
  {
    [dictionary setObject:serviceGroupUniqueIdentifier forKey:@"serviceGroupUniqueIdentifier"];
  }

  zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers;
  if (zoneUniqueIdentifiers)
  {
    [dictionary setObject:zoneUniqueIdentifiers forKey:@"zoneUniqueIdentifiers"];
  }

  roomUniqueIdentifier = self->_roomUniqueIdentifier;
  if (roomUniqueIdentifier)
  {
    [dictionary setObject:roomUniqueIdentifier forKey:@"roomUniqueIdentifier"];
  }

  accessoryName = self->_accessoryName;
  if (accessoryName)
  {
    [dictionary setObject:accessoryName forKey:@"accessoryName"];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [dictionary setObject:serviceName forKey:@"serviceName"];
  }

  roomName = self->_roomName;
  if (roomName)
  {
    [dictionary setObject:roomName forKey:@"roomName"];
  }

  serviceGroupName = self->_serviceGroupName;
  if (serviceGroupName)
  {
    [dictionary setObject:serviceGroupName forKey:@"serviceGroupName"];
  }

  zoneNames = self->_zoneNames;
  if (zoneNames)
  {
    [dictionary setObject:zoneNames forKey:@"zoneNames"];
  }

  homeName = self->_homeName;
  if (homeName)
  {
    [dictionary setObject:homeName forKey:@"homeName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_base)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_accessoryUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryState)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_serviceUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_characteristicType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceGroupUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_zoneUniqueIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (self->_roomUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_roomName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceGroupName)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_zoneNames;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (self->_homeName)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_base)
  {
    [toCopy setBase:?];
  }

  if (self->_accessoryUniqueIdentifier)
  {
    [toCopy setAccessoryUniqueIdentifier:?];
  }

  if (self->_accessoryState)
  {
    [toCopy setAccessoryState:?];
  }

  if (self->_serviceUniqueIdentifier)
  {
    [toCopy setServiceUniqueIdentifier:?];
  }

  if (self->_serviceType)
  {
    [toCopy setServiceType:?];
  }

  if (self->_characteristicType)
  {
    [toCopy setCharacteristicType:?];
  }

  if (self->_serviceGroupUniqueIdentifier)
  {
    [toCopy setServiceGroupUniqueIdentifier:?];
  }

  if ([(BMPBHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiersCount])
  {
    [toCopy clearZoneUniqueIdentifiers];
    zoneUniqueIdentifiersCount = [(BMPBHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiersCount];
    if (zoneUniqueIdentifiersCount)
    {
      v5 = zoneUniqueIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiersAtIndex:i];
        [toCopy addZoneUniqueIdentifiers:v7];
      }
    }
  }

  if (self->_roomUniqueIdentifier)
  {
    [toCopy setRoomUniqueIdentifier:?];
  }

  if (self->_accessoryName)
  {
    [toCopy setAccessoryName:?];
  }

  if (self->_serviceName)
  {
    [toCopy setServiceName:?];
  }

  if (self->_roomName)
  {
    [toCopy setRoomName:?];
  }

  if (self->_serviceGroupName)
  {
    [toCopy setServiceGroupName:?];
  }

  if ([(BMPBHomeKitClientAccessoryControlEvent *)self zoneNamesCount])
  {
    [toCopy clearZoneNames];
    zoneNamesCount = [(BMPBHomeKitClientAccessoryControlEvent *)self zoneNamesCount];
    if (zoneNamesCount)
    {
      v9 = zoneNamesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(BMPBHomeKitClientAccessoryControlEvent *)self zoneNamesAtIndex:j];
        [toCopy addZoneNames:v11];
      }
    }
  }

  if (self->_homeName)
  {
    [toCopy setHomeName:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(BMPBHomeKitClientBase *)self->_base copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_accessoryUniqueIdentifier copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(BMPBAccessoryState *)self->_accessoryState copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_serviceUniqueIdentifier copyWithZone:zone];
  v13 = v5[13];
  v5[13] = v12;

  v14 = [(NSString *)self->_serviceType copyWithZone:zone];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSString *)self->_characteristicType copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_serviceGroupUniqueIdentifier copyWithZone:zone];
  v19 = v5[10];
  v5[10] = v18;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = self->_zoneUniqueIdentifiers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v50;
    do
    {
      v24 = 0;
      do
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v49 + 1) + 8 * v24) copyWithZone:zone];
        [v5 addZoneUniqueIdentifiers:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v22);
  }

  v26 = [(NSString *)self->_roomUniqueIdentifier copyWithZone:zone];
  v27 = v5[8];
  v5[8] = v26;

  v28 = [(NSString *)self->_accessoryName copyWithZone:zone];
  v29 = v5[1];
  v5[1] = v28;

  v30 = [(NSString *)self->_serviceName copyWithZone:zone];
  v31 = v5[11];
  v5[11] = v30;

  v32 = [(NSString *)self->_roomName copyWithZone:zone];
  v33 = v5[7];
  v5[7] = v32;

  v34 = [(NSString *)self->_serviceGroupName copyWithZone:zone];
  v35 = v5[9];
  v5[9] = v34;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v36 = self->_zoneNames;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v46;
    do
    {
      v40 = 0;
      do
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v45 + 1) + 8 * v40) copyWithZone:{zone, v45}];
        [v5 addZoneNames:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v38);
  }

  v42 = [(NSString *)self->_homeName copyWithZone:zone];
  v43 = v5[6];
  v5[6] = v42;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((base = self->_base, !(base | equalCopy[4])) || -[BMPBHomeKitClientBase isEqual:](base, "isEqual:")) && ((accessoryUniqueIdentifier = self->_accessoryUniqueIdentifier, !(accessoryUniqueIdentifier | equalCopy[3])) || -[NSString isEqual:](accessoryUniqueIdentifier, "isEqual:")) && ((accessoryState = self->_accessoryState, !(accessoryState | equalCopy[2])) || -[BMPBAccessoryState isEqual:](accessoryState, "isEqual:")) && ((serviceUniqueIdentifier = self->_serviceUniqueIdentifier, !(serviceUniqueIdentifier | equalCopy[13])) || -[NSString isEqual:](serviceUniqueIdentifier, "isEqual:")) && ((serviceType = self->_serviceType, !(serviceType | equalCopy[12])) || -[NSString isEqual:](serviceType, "isEqual:")) && ((characteristicType = self->_characteristicType, !(characteristicType | equalCopy[5])) || -[NSString isEqual:](characteristicType, "isEqual:")) && ((serviceGroupUniqueIdentifier = self->_serviceGroupUniqueIdentifier, !(serviceGroupUniqueIdentifier | equalCopy[10])) || -[NSString isEqual:](serviceGroupUniqueIdentifier, "isEqual:")) && ((zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers, !(zoneUniqueIdentifiers | equalCopy[15])) || -[NSMutableArray isEqual:](zoneUniqueIdentifiers, "isEqual:")) && ((roomUniqueIdentifier = self->_roomUniqueIdentifier, !(roomUniqueIdentifier | equalCopy[8])) || -[NSString isEqual:](roomUniqueIdentifier, "isEqual:")) && ((accessoryName = self->_accessoryName, !(accessoryName | equalCopy[1])) || -[NSString isEqual:](accessoryName, "isEqual:")) && ((serviceName = self->_serviceName, !(serviceName | equalCopy[11])) || -[NSString isEqual:](serviceName, "isEqual:")) && ((roomName = self->_roomName, !(roomName | equalCopy[7])) || -[NSString isEqual:](roomName, "isEqual:")) && ((serviceGroupName = self->_serviceGroupName, !(serviceGroupName | equalCopy[9])) || -[NSString isEqual:](serviceGroupName, "isEqual:")) && ((zoneNames = self->_zoneNames, !(zoneNames | equalCopy[14])) || -[NSMutableArray isEqual:](zoneNames, "isEqual:")))
  {
    homeName = self->_homeName;
    if (homeName | equalCopy[6])
    {
      v20 = [(NSString *)homeName isEqual:?];
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [(BMPBHomeKitClientBase *)self->_base hash];
  v4 = [(NSString *)self->_accessoryUniqueIdentifier hash]^ v3;
  v5 = [(BMPBAccessoryState *)self->_accessoryState hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_serviceUniqueIdentifier hash];
  v7 = [(NSString *)self->_serviceType hash];
  v8 = v7 ^ [(NSString *)self->_characteristicType hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_serviceGroupUniqueIdentifier hash];
  v10 = [(NSMutableArray *)self->_zoneUniqueIdentifiers hash];
  v11 = v10 ^ [(NSString *)self->_roomUniqueIdentifier hash];
  v12 = v11 ^ [(NSString *)self->_accessoryName hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_serviceName hash];
  v14 = [(NSString *)self->_roomName hash];
  v15 = v14 ^ [(NSString *)self->_serviceGroupName hash];
  v16 = v15 ^ [(NSMutableArray *)self->_zoneNames hash];
  return v13 ^ v16 ^ [(NSString *)self->_homeName hash];
}

- (void)mergeFrom:(id)from
{
  v29 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  base = self->_base;
  v6 = *(fromCopy + 4);
  if (base)
  {
    if (v6)
    {
      [(BMPBHomeKitClientBase *)base mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setBase:?];
  }

  if (*(fromCopy + 3))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setAccessoryUniqueIdentifier:?];
  }

  accessoryState = self->_accessoryState;
  v8 = *(fromCopy + 2);
  if (accessoryState)
  {
    if (v8)
    {
      [(BMPBAccessoryState *)accessoryState mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setAccessoryState:?];
  }

  if (*(fromCopy + 13))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceUniqueIdentifier:?];
  }

  if (*(fromCopy + 12))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceType:?];
  }

  if (*(fromCopy + 5))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setCharacteristicType:?];
  }

  if (*(fromCopy + 10))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceGroupUniqueIdentifier:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = *(fromCopy + 15);
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(BMPBHomeKitClientAccessoryControlEvent *)self addZoneUniqueIdentifiers:*(*(&v23 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }

  if (*(fromCopy + 8))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setRoomUniqueIdentifier:?];
  }

  if (*(fromCopy + 1))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setAccessoryName:?];
  }

  if (*(fromCopy + 11))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceName:?];
  }

  if (*(fromCopy + 7))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setRoomName:?];
  }

  if (*(fromCopy + 9))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceGroupName:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = *(fromCopy + 14);
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(BMPBHomeKitClientAccessoryControlEvent *)self addZoneNames:*(*(&v19 + 1) + 8 * j), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }

  if (*(fromCopy + 6))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setHomeName:?];
  }
}

@end