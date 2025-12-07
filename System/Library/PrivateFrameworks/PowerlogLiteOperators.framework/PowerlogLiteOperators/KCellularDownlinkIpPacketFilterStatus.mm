@interface KCellularDownlinkIpPacketFilterStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFilters:(id)filters;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBearerContextId:(BOOL)id;
- (void)setHasIsActivated:(BOOL)activated;
- (void)setHasIsEchoReqBlocked:(BOOL)blocked;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularDownlinkIpPacketFilterStatus

- (void)setHasBearerContextId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsActivated:(BOOL)activated
{
  if (activated)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsEchoReqBlocked:(BOOL)blocked
{
  if (blocked)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addFilters:(id)filters
{
  filtersCopy = filters;
  filters = self->_filters;
  v8 = filtersCopy;
  if (!filters)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_filters;
    self->_filters = v6;

    filtersCopy = v8;
    filters = self->_filters;
  }

  [(NSMutableArray *)filters addObject:filtersCopy];
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularDownlinkIpPacketFilterStatus;
  v4 = [(KCellularDownlinkIpPacketFilterStatus *)&v8 description];
  dictionaryRepresentation = [(KCellularDownlinkIpPacketFilterStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v15 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bearerContextId];
  [dictionary setObject:v16 forKey:@"bearer_context_id"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isActivated];
  [dictionary setObject:v17 forKey:@"is_activated"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEchoReqBlocked];
    [dictionary setObject:v5 forKey:@"is_echo_req_blocked"];
  }

LABEL_6:
  if ([(NSMutableArray *)self->_filters count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_filters, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_filters;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"filters"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v13 forKey:@"subs_id"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_filters;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_17:
      *(toCopy + 36) = self->_isActivated;
      *(toCopy + 40) |= 8u;
      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 4) = self->_bearerContextId;
  *(toCopy + 40) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((has & 0x10) != 0)
  {
LABEL_5:
    *(toCopy + 37) = self->_isEchoReqBlocked;
    *(toCopy + 40) |= 0x10u;
  }

LABEL_6:
  v10 = toCopy;
  if ([(KCellularDownlinkIpPacketFilterStatus *)self filtersCount])
  {
    [v10 clearFilters];
    filtersCount = [(KCellularDownlinkIpPacketFilterStatus *)self filtersCount];
    if (filtersCount)
    {
      v7 = filtersCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(KCellularDownlinkIpPacketFilterStatus *)self filtersAtIndex:i];
        [v10 addFilters:v9];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 8) = self->_subsId;
    *(v10 + 40) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_bearerContextId;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  *(v5 + 36) = self->_isActivated;
  *(v5 + 40) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    *(v5 + 37) = self->_isEchoReqBlocked;
    *(v5 + 40) |= 0x10u;
  }

LABEL_6:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_filters;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v6 addFilters:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 32) = self->_subsId;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = *(equalCopy + 40);
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_bearerContextId != *(equalCopy + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0)
    {
      goto LABEL_34;
    }

    if (self->_isActivated)
    {
      if ((*(equalCopy + 36) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(equalCopy + 36))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0)
    {
      goto LABEL_34;
    }

    if (self->_isEchoReqBlocked)
    {
      if ((*(equalCopy + 37) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(equalCopy + 37))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 40) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  filters = self->_filters;
  if (!(filters | *(equalCopy + 3)))
  {
    goto LABEL_19;
  }

  if (![(NSMutableArray *)filters isEqual:?])
  {
LABEL_34:
    v8 = 0;
    goto LABEL_35;
  }

  has = self->_has;
  v6 = *(equalCopy + 40);
LABEL_19:
  v8 = (v6 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_subsId != *(equalCopy + 8))
    {
      goto LABEL_34;
    }

    v8 = 1;
  }

LABEL_35:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_bearerContextId;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_isActivated;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_isEchoReqBlocked;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(NSMutableArray *)self->_filters hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_subsId;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 40);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(fromCopy + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_bearerContextId = *(fromCopy + 4);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 40);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  self->_isActivated = *(fromCopy + 36);
  *&self->_has |= 8u;
  if ((*(fromCopy + 40) & 0x10) != 0)
  {
LABEL_5:
    self->_isEchoReqBlocked = *(fromCopy + 37);
    *&self->_has |= 0x10u;
  }

LABEL_6:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(KCellularDownlinkIpPacketFilterStatus *)self addFilters:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if ((v5[10] & 4) != 0)
  {
    self->_subsId = v5[8];
    *&self->_has |= 4u;
  }
}

@end