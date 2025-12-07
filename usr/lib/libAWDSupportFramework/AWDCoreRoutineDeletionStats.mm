@interface AWDCoreRoutineDeletionStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addGroups:(id)groups;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDeleteType:(BOOL)type;
- (void)setHasSyncEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineDeletionStats

- (void)dealloc
{
  [(AWDCoreRoutineDeletionStats *)self setGroups:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineDeletionStats;
  [(AWDCoreRoutineDeletionStats *)&v3 dealloc];
}

- (void)setHasSyncEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDeleteType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addGroups:(id)groups
{
  groups = self->_groups;
  if (!groups)
  {
    groups = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_groups = groups;
  }

  [(NSMutableArray *)groups addObject:groups];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineDeletionStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineDeletionStats description](&v3, sel_description), -[AWDCoreRoutineDeletionStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_syncEnabled), @"syncEnabled"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_deleteType), @"deleteType"}];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_groups count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_groups, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    groups = self->_groups;
    v7 = [(NSMutableArray *)groups countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(groups);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)groups countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"groups"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  groups = self->_groups;
  v6 = [(NSMutableArray *)groups countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(groups);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)groups countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    *(to + 32) = self->_syncEnabled;
    *(to + 36) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(to + 1) = self->_timestamp;
  *(to + 36) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(to + 4) = self->_deleteType;
    *(to + 36) |= 2u;
  }

LABEL_5:
  if ([(AWDCoreRoutineDeletionStats *)self groupsCount])
  {
    [to clearGroups];
    groupsCount = [(AWDCoreRoutineDeletionStats *)self groupsCount];
    if (groupsCount)
    {
      v7 = groupsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addGroups:{-[AWDCoreRoutineDeletionStats groupsAtIndex:](self, "groupsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_syncEnabled;
  *(v5 + 36) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_deleteType;
    *(v5 + 36) |= 2u;
  }

LABEL_5:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  groups = self->_groups;
  v9 = [(NSMutableArray *)groups countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(groups);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:zone];
        [v6 addGroups:v13];
      }

      v10 = [(NSMutableArray *)groups countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (*&self->_has)
  {
    if ((*(equal + 36) & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equal + 36))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equal + 36) & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 36) & 4) == 0)
  {
    goto LABEL_21;
  }

  if (self->_syncEnabled)
  {
    if ((*(equal + 32) & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (*(equal + 32))
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 36) & 2) == 0 || self->_deleteType != *(equal + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equal + 36) & 2) != 0)
  {
    goto LABEL_21;
  }

  groups = self->_groups;
  if (groups | *(equal + 3))
  {

    LOBYTE(v5) = [(NSMutableArray *)groups isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_groups hash:v3];
  }

  v6 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_syncEnabled;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_deleteType;
  return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_groups hash:v3];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(from + 36);
  if (v4)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v4 = *(from + 36);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_syncEnabled = *(from + 32);
  *&self->_has |= 4u;
  if ((*(from + 36) & 2) != 0)
  {
LABEL_4:
    self->_deleteType = *(from + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(from + 3);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDCoreRoutineDeletionStats *)self addGroups:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end