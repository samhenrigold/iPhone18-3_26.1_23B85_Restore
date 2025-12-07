@interface AWDMETRICSKCellularPowerLogXOShutdown
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)lastSdmStateAsString:(int)string;
- (int)StringAsLastSdmState:(id)state;
- (int)lastSdmState;
- (unint64_t)hash;
- (void)addBin:(id)bin;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasDurationMs:(BOOL)ms;
- (void)setHasLastSdmState:(BOOL)state;
- (void)setHasShutdownCount:(BOOL)count;
- (void)setHasTotalNon0States:(BOOL)states;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogXOShutdown

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

- (void)setHasDurationMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (void)setHasShutdownCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTotalNon0States:(BOOL)states
{
  if (states)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)lastSdmState
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_lastSdmState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLastSdmState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)lastSdmStateAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278259DD0[string];
  }

  return v4;
}

- (int)StringAsLastSdmState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"SDM_STATE_DISABLED"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"SDM_STATE_ENABLED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"SDM_STATE_DISABLED_5G_ON"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"SDM_STATE_DISABLED_LTE_ON"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogXOShutdown;
  v4 = [(AWDMETRICSKCellularPowerLogXOShutdown *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogXOShutdown *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_bins count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_bins, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_bins;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"bin"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [dictionary setObject:v13 forKey:@"duration_ms"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_14:
      if ((has & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
  [dictionary setObject:v14 forKey:@"duration"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalNon0States];
    [dictionary setObject:v16 forKey:@"total_non0_states"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    lastSdmState = self->_lastSdmState;
    if (lastSdmState >= 4)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_lastSdmState];
    }

    else
    {
      v18 = off_278259DD0[lastSdmState];
    }

    [dictionary setObject:v18 forKey:@"last_sdm_state"];

    goto LABEL_26;
  }

LABEL_20:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shutdownCount];
  [dictionary setObject:v15 forKey:@"shutdown_count"];

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((has & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_26:

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

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_bins;
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
    if ((has & 2) == 0)
    {
LABEL_12:
      if ((has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((has & 0x20) != 0)
  {
LABEL_15:
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 44) |= 1u;
  }

  v10 = toCopy;
  if ([(AWDMETRICSKCellularPowerLogXOShutdown *)self binsCount])
  {
    [v10 clearBins];
    binsCount = [(AWDMETRICSKCellularPowerLogXOShutdown *)self binsCount];
    if (binsCount)
    {
      v6 = binsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDMETRICSKCellularPowerLogXOShutdown *)self binAtIndex:i];
        [v10 addBin:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v10 + 7) = self->_durationMs;
    *(v10 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v10 + 6) = self->_duration;
  *(v10 + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v10 + 8) = self->_lastSdmState;
  *(v10 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  *(v10 + 9) = self->_shutdownCount;
  *(v10 + 44) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    *(v10 + 10) = self->_totalNon0States;
    *(v10 + 44) |= 0x20u;
  }

LABEL_13:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_bins;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v6 addBin:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_durationMs;
    *(v6 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_12:
      if ((has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 24) = self->_duration;
  *(v6 + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    *(v6 + 36) = self->_shutdownCount;
    *(v6 + 44) |= 0x10u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_15;
  }

LABEL_19:
  *(v6 + 32) = self->_lastSdmState;
  *(v6 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((has & 0x20) != 0)
  {
LABEL_15:
    *(v6 + 40) = self->_totalNon0States;
    *(v6 + 44) |= 0x20u;
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
  v6 = *(equalCopy + 44);
  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_34;
  }

  bins = self->_bins;
  if (bins | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)bins isEqual:?])
    {
LABEL_34:
      v8 = 0;
      goto LABEL_35;
    }

    has = self->_has;
    v6 = *(equalCopy + 44);
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_durationMs != *(equalCopy + 7))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_duration != *(equalCopy + 6))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_lastSdmState != *(equalCopy + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_shutdownCount != *(equalCopy + 9))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_34;
  }

  v8 = (v6 & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_totalNon0States != *(equalCopy + 10))
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
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_bins hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_durationMs;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_duration;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_lastSdmState;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761 * self->_shutdownCount;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = 2654435761 * self->_totalNon0States;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 44))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 2);
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

        [(AWDMETRICSKCellularPowerLogXOShutdown *)self addBin:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 44);
  if ((v11 & 4) != 0)
  {
    self->_durationMs = *(v5 + 7);
    *&self->_has |= 4u;
    v11 = *(v5 + 44);
    if ((v11 & 2) == 0)
    {
LABEL_12:
      if ((v11 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v5 + 44) & 2) == 0)
  {
    goto LABEL_12;
  }

  self->_duration = *(v5 + 6);
  *&self->_has |= 2u;
  v11 = *(v5 + 44);
  if ((v11 & 8) == 0)
  {
LABEL_13:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    self->_shutdownCount = *(v5 + 9);
    *&self->_has |= 0x10u;
    if ((*(v5 + 44) & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_19:
  self->_lastSdmState = *(v5 + 8);
  *&self->_has |= 8u;
  v11 = *(v5 + 44);
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((v11 & 0x20) != 0)
  {
LABEL_15:
    self->_totalNon0States = *(v5 + 10);
    *&self->_has |= 0x20u;
  }

LABEL_16:
}

@end