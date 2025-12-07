@interface AWDMETRICSKCellularPowerLogLteNrTxPowerHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addHist:(id)hist;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDurationMs:(BOOL)ms;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogLteNrTxPowerHist

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

- (void)setHasDurationMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addHist:(id)hist
{
  histCopy = hist;
  hists = self->_hists;
  v8 = histCopy;
  if (!hists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_hists;
    self->_hists = v6;

    histCopy = v8;
    hists = self->_hists;
  }

  [(NSMutableArray *)hists addObject:histCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogLteNrTxPowerHist;
  v4 = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHist *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
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

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v15 forKey:@"subs_id"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [dictionary setObject:v5 forKey:@"duration_ms"];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_hists count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_hists, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_hists;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"hist"];
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

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_hists;
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
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    toCopy[8] = self->_subsId;
    *(toCopy + 36) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(toCopy + 1) = self->_timestamp;
  *(toCopy + 36) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    toCopy[4] = self->_durationMs;
    *(toCopy + 36) |= 2u;
  }

LABEL_5:
  v10 = toCopy;
  if ([(AWDMETRICSKCellularPowerLogLteNrTxPowerHist *)self histsCount])
  {
    [v10 clearHists];
    histsCount = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHist *)self histsCount];
    if (histsCount)
    {
      v7 = histsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHist *)self histAtIndex:i];
        [v10 addHist:v9];
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

  *(v5 + 32) = self->_subsId;
  *(v5 + 36) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_durationMs;
    *(v5 + 36) |= 2u;
  }

LABEL_5:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_hists;
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
        [v6 addHist:v13];
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
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_subsId != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_durationMs != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  hists = self->_hists;
  if (hists | *(equalCopy + 3))
  {
    v6 = [(NSMutableArray *)hists isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_20:

  return v6;
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
    return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_hists hash:v3];
  }

  v6 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_subsId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_durationMs;
  return v7 ^ v6 ^ v8 ^ [(NSMutableArray *)self->_hists hash:v3];
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
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(fromCopy + 8);
  *&self->_has |= 4u;
  if ((*(fromCopy + 36) & 2) != 0)
  {
LABEL_4:
    self->_durationMs = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
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

        [(AWDMETRICSKCellularPowerLogLteNrTxPowerHist *)self addHist:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end