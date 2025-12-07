@interface KCellularProtocolStackHist2
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBin:(id)bin;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation KCellularProtocolStackHist2

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

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addBin:(id)bin
{
  binCopy = bin;
  bins = self->_bins;
  v8 = binCopy;
  if (!bins)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_bins;
    self->_bins = v6;

    binCopy = v8;
    bins = self->_bins;
  }

  [(NSMutableArray *)bins addObject:binCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularProtocolStackHist2;
  v4 = [(KCellularProtocolStackHist2 *)&v8 description];
  dictionaryRepresentation = [(KCellularProtocolStackHist2 *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v14 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v15 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_20:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v16 forKey:@"version"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [dictionary setObject:v5 forKey:@"duration"];
  }

LABEL_6:
  if ([(NSMutableArray *)self->_bins count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_bins, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_bins;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"bin"];
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_bins;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      *(toCopy + 8) = self->_version;
      *(toCopy + 36) |= 8u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 7) = self->_subsId;
  *(toCopy + 36) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    *(toCopy + 6) = self->_duration;
    *(toCopy + 36) |= 2u;
  }

LABEL_6:
  v10 = toCopy;
  if ([(KCellularProtocolStackHist2 *)self binsCount])
  {
    [v10 clearBins];
    binsCount = [(KCellularProtocolStackHist2 *)self binsCount];
    if (binsCount)
    {
      v7 = binsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(KCellularProtocolStackHist2 *)self binAtIndex:i];
        [v10 addBin:v9];
      }
    }
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
    *(v5 + 36) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_subsId;
  *(v5 + 36) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  *(v5 + 32) = self->_version;
  *(v5 + 36) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    *(v5 + 24) = self->_duration;
    *(v5 + 36) |= 2u;
  }

LABEL_6:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_bins;
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
        [v6 addBin:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_24:
    v6 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_subsId != *(equalCopy + 7))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_version != *(equalCopy + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 36) & 8) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_duration != *(equalCopy + 6))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_24;
  }

  bins = self->_bins;
  if (bins | *(equalCopy + 2))
  {
    v6 = [(NSMutableArray *)bins isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_25:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_subsId;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v7 ^ v6 ^ v8 ^ v9 ^ [(NSMutableArray *)self->_bins hash:v3];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_version;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_duration;
  return v7 ^ v6 ^ v8 ^ v9 ^ [(NSMutableArray *)self->_bins hash:v3];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 36);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 36);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(fromCopy + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(fromCopy + 7);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 36);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  self->_version = *(fromCopy + 8);
  *&self->_has |= 8u;
  if ((*(fromCopy + 36) & 2) != 0)
  {
LABEL_5:
    self->_duration = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

LABEL_6:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 2);
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

        [(KCellularProtocolStackHist2 *)self addBin:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end