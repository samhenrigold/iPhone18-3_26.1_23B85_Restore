@interface AWDCoreRoutinePersistenceMirroringAccountDevices
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addProfiles:(id)profiles;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTopDeviceClass:(BOOL)class;
- (void)setHasTotalPlaces:(BOOL)places;
- (void)setHasTotalTransitions:(BOOL)transitions;
- (void)setHasTotalVisits:(BOOL)visits;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutinePersistenceMirroringAccountDevices

- (void)dealloc
{
  [(AWDCoreRoutinePersistenceMirroringAccountDevices *)self setProfiles:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutinePersistenceMirroringAccountDevices;
  [(AWDCoreRoutinePersistenceMirroringAccountDevices *)&v3 dealloc];
}

- (void)addProfiles:(id)profiles
{
  profiles = self->_profiles;
  if (!profiles)
  {
    profiles = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_profiles = profiles;
  }

  [(NSMutableArray *)profiles addObject:profiles];
}

- (void)setHasTopDeviceClass:(BOOL)class
{
  if (class)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTotalVisits:(BOOL)visits
{
  if (visits)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTotalPlaces:(BOOL)places
{
  if (places)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTotalTransitions:(BOOL)transitions
{
  if (transitions)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutinePersistenceMirroringAccountDevices;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutinePersistenceMirroringAccountDevices description](&v3, sel_description), -[AWDCoreRoutinePersistenceMirroringAccountDevices dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_profiles count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_profiles, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    profiles = self->_profiles;
    v6 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(profiles);
          }

          [v4 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"profiles"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_topDeviceClass), @"topDeviceClass"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_14:
      if ((has & 4) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_totalPlaces), @"totalPlaces"}];
      if ((*&self->_has & 8) == 0)
      {
        return dictionary;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_totalVisits), @"totalVisits"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((has & 8) != 0)
  {
LABEL_16:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_totalTransitions), @"totalTransitions"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  profiles = self->_profiles;
  v5 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(profiles);
        }

        PBDataWriterWriteSubmessage();
      }

      v6 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_18:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_14:
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 40) |= 1u;
  }

  if ([(AWDCoreRoutinePersistenceMirroringAccountDevices *)self profilesCount])
  {
    [to clearProfiles];
    profilesCount = [(AWDCoreRoutinePersistenceMirroringAccountDevices *)self profilesCount];
    if (profilesCount)
    {
      v6 = profilesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addProfiles:{-[AWDCoreRoutinePersistenceMirroringAccountDevices profilesAtIndex:](self, "profilesAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 6) = self->_topDeviceClass;
    *(to + 40) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *(to + 9) = self->_totalVisits;
  *(to + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(to + 7) = self->_totalPlaces;
  *(to + 40) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_11:
  *(to + 8) = self->_totalTransitions;
  *(to + 40) |= 8u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  profiles = self->_profiles;
  v8 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(profiles);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) copyWithZone:zone];
        [v6 addProfiles:v12];
      }

      v9 = [(NSMutableArray *)profiles countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_topDeviceClass;
    *(v6 + 40) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      *(v6 + 28) = self->_totalPlaces;
      *(v6 + 40) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        return v6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 36) = self->_totalVisits;
  *(v6 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((has & 8) != 0)
  {
LABEL_14:
    *(v6 + 32) = self->_totalTransitions;
    *(v6 + 40) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    if (has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(equal + 40))
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    profiles = self->_profiles;
    if (profiles | *(equal + 2))
    {
      v5 = [(NSMutableArray *)profiles isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_topDeviceClass != *(equal + 6))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(equal + 40) & 0x10) == 0 || self->_totalVisits != *(equal + 9))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 40) & 0x10) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_totalPlaces != *(equal + 7))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
      goto LABEL_29;
    }

    LOBYTE(v5) = (*(equal + 40) & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((*(equal + 40) & 8) == 0 || self->_totalTransitions != *(equal + 8))
      {
        goto LABEL_29;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_profiles hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_topDeviceClass;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_totalVisits;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_totalPlaces;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761 * self->_totalTransitions;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(from + 40))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(from + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDCoreRoutinePersistenceMirroringAccountDevices *)self addProfiles:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *(from + 40);
  if ((v10 & 2) != 0)
  {
    self->_topDeviceClass = *(from + 6);
    *&self->_has |= 2u;
    v10 = *(from + 40);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((*(from + 40) & 0x10) == 0)
  {
    goto LABEL_12;
  }

  self->_totalVisits = *(from + 9);
  *&self->_has |= 0x10u;
  v10 = *(from + 40);
  if ((v10 & 4) == 0)
  {
LABEL_13:
    if ((v10 & 8) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_18:
  self->_totalPlaces = *(from + 7);
  *&self->_has |= 4u;
  if ((*(from + 40) & 8) == 0)
  {
    return;
  }

LABEL_14:
  self->_totalTransitions = *(from + 8);
  *&self->_has |= 8u;
}

@end