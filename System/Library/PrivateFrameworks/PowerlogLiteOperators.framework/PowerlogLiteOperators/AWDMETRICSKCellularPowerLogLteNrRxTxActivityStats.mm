@interface AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRxTxAct:(id)act;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDurationMs:(BOOL)ms;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats

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

- (void)addRxTxAct:(id)act
{
  actCopy = act;
  rxTxActs = self->_rxTxActs;
  v8 = actCopy;
  if (!rxTxActs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_rxTxActs;
    self->_rxTxActs = v6;

    actCopy = v8;
    rxTxActs = self->_rxTxActs;
  }

  [(NSMutableArray *)rxTxActs addObject:actCopy];
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

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  if (preferred)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats;
  v4 = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [dictionary setObject:v6 forKey:@"duration_ms"];
  }

  if ([(NSMutableArray *)self->_rxTxActs count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_rxTxActs, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_rxTxActs;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"rx_tx_act"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v14 forKey:@"subs_id"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [dictionary setObject:plmn forKey:@"plmn"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [dictionary setObject:v16 forKey:@"is_data_preferred"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_rxTxActs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  v10 = toCopy;
  if (self->_plmn)
  {
    [toCopy setPlmn:?];
    toCopy = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 4) = self->_durationMs;
    *(toCopy + 48) |= 2u;
  }

  if ([(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self rxTxActsCount])
  {
    [v10 clearRxTxActs];
    rxTxActsCount = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self rxTxActsCount];
    if (rxTxActsCount)
    {
      v6 = rxTxActsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self rxTxActAtIndex:i];
        [v10 addRxTxAct:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v10 + 10) = self->_subsId;
    *(v10 + 48) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v10 + 44) = self->_isDataPreferred;
    *(v10 + 48) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSData *)self->_plmn copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_durationMs;
    *(v6 + 48) |= 2u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_rxTxActs;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{zone, v17}];
        [v6 addRxTxAct:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 40) = self->_subsId;
    *(v6 + 48) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v6 + 44) = self->_isDataPreferred;
    *(v6 + 48) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_25;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 3))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_25;
    }

    has = self->_has;
    v6 = *(equalCopy + 48);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_durationMs != *(equalCopy + 4))
    {
      goto LABEL_25;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_25;
  }

  rxTxActs = self->_rxTxActs;
  if (rxTxActs | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)rxTxActs isEqual:?])
    {
      goto LABEL_25;
    }

    has = self->_has;
    v6 = *(equalCopy + 48);
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_subsId != *(equalCopy + 10))
    {
      goto LABEL_25;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_25;
  }

  v9 = (v6 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v6 & 8) != 0)
    {
      if (self->_isDataPreferred)
      {
        if ((*(equalCopy + 44) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (*(equalCopy + 44))
      {
        goto LABEL_25;
      }

      v9 = 1;
      goto LABEL_26;
    }

LABEL_25:
    v9 = 0;
  }

LABEL_26:

  return v9;
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

  v4 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_durationMs;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSMutableArray *)self->_rxTxActs hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_subsId;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v8 = 2654435761 * self->_isDataPreferred;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[3])
  {
    [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self setPlmn:?];
  }

  if ((*(v5 + 48) & 2) != 0)
  {
    self->_durationMs = *(v5 + 4);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v5 + 4);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self addRxTxAct:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 48);
  if ((v11 & 4) != 0)
  {
    self->_subsId = *(v5 + 10);
    *&self->_has |= 4u;
    v11 = *(v5 + 48);
  }

  if ((v11 & 8) != 0)
  {
    self->_isDataPreferred = *(v5 + 44);
    *&self->_has |= 8u;
  }
}

@end