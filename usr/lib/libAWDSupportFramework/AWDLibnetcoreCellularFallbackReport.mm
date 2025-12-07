@interface AWDLibnetcoreCellularFallbackReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)denyReasonAsString:(int)string;
- (id)description;
- (id)dictionaryRepresentation;
- (id)networkEventsAsString:(int)string;
- (int)StringAsDenyReason:(id)reason;
- (int)StringAsNetworkEvents:(id)events;
- (int)denyReason;
- (int)networkEventsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)timeToNetworkEventsMsecsAtIndex:(unint64_t)index;
- (void)addDataUsageSnapshotsAtNetworkEvents:(id)events;
- (void)addPrimaryInterfaceAttemptStatisticsReports:(id)reports;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDenyReason:(BOOL)reason;
- (void)setHasFellback:(BOOL)fellback;
- (void)writeTo:(id)to;
@end

@implementation AWDLibnetcoreCellularFallbackReport

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedUInt64Clear();
  [(AWDLibnetcoreCellularFallbackReport *)self setPrimaryInterfaceAttemptStatisticsReports:0];
  [(AWDLibnetcoreCellularFallbackReport *)self setDataUsageSnapshotsAtNetworkEvents:0];
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreCellularFallbackReport;
  [(AWDLibnetcoreCellularFallbackReport *)&v3 dealloc];
}

- (void)setHasFellback:(BOOL)fellback
{
  if (fellback)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)denyReason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_denyReason;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDenyReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)denyReasonAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    return [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return off_29EE326D8[string - 1];
  }
}

- (int)StringAsDenyReason:(id)reason
{
  if ([reason isEqualToString:@"DENY_REASON_BLOCKED_FROM_USING_CELL_DATA"])
  {
    return 1;
  }

  if ([reason isEqualToString:@"DENY_REASON_EXCEEDED_CELL_FALLBACK_DATA_BUDGET"])
  {
    return 2;
  }

  if ([reason isEqualToString:@"DENY_REASON_METRICS_TESTING_DENIED"])
  {
    return 3;
  }

  return 1;
}

- (int)networkEventsAtIndex:(unint64_t)index
{
  p_networkEvents = &self->_networkEvents;
  count = self->_networkEvents.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_networkEvents->list[index];
}

- (id)networkEventsAsString:(int)string
{
  if ((string - 1) >= 0xA)
  {
    return [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return off_29EE326F0[string - 1];
  }
}

- (int)StringAsNetworkEvents:(id)events
{
  if ([events isEqualToString:@"NETWORK_EVENT_USER_TURNING_OFF_WIFI"])
  {
    return 1;
  }

  if ([events isEqualToString:@"NETWORK_EVENT_WIFI_TRIGGER_DISCONNECT"])
  {
    return 2;
  }

  if ([events isEqualToString:@"NETWORK_EVENT_SYMPTOMS_SENDING_WIFI_RECOMMENDED_SIGNAL"])
  {
    return 3;
  }

  if ([events isEqualToString:@"NETWORK_EVENT_SYMPTOMS_SENDING_WEAK_FALLBACK_SIGNAL"])
  {
    return 4;
  }

  if ([events isEqualToString:@"NETWORK_EVENT_SYMPTOMS_SENDING_STRONG_FALLBACK_SIGNAL"])
  {
    return 5;
  }

  if ([events isEqualToString:@"NETWORK_EVENT_CONNECTION_BEING_REUSED"])
  {
    return 6;
  }

  if ([events isEqualToString:@"NETWORK_EVENT_DATA_STALL_AT_APP_LAYER"])
  {
    return 7;
  }

  if ([events isEqualToString:@"NETWORK_EVENT_BETTER_ROUTE"])
  {
    return 8;
  }

  if ([events isEqualToString:@"NETWORK_EVENT_CELLULAR_FALLBACK_TIMER_START"])
  {
    return 9;
  }

  if ([events isEqualToString:@"NETWORK_EVENT_CELLULAR_FALLBACK_ATTEMPT_START"])
  {
    return 10;
  }

  return 1;
}

- (unint64_t)timeToNetworkEventsMsecsAtIndex:(unint64_t)index
{
  p_timeToNetworkEventsMsecs = &self->_timeToNetworkEventsMsecs;
  count = self->_timeToNetworkEventsMsecs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_timeToNetworkEventsMsecs->list[index];
}

- (void)addPrimaryInterfaceAttemptStatisticsReports:(id)reports
{
  primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
  if (!primaryInterfaceAttemptStatisticsReports)
  {
    primaryInterfaceAttemptStatisticsReports = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_primaryInterfaceAttemptStatisticsReports = primaryInterfaceAttemptStatisticsReports;
  }

  [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports addObject:reports];
}

- (void)addDataUsageSnapshotsAtNetworkEvents:(id)events
{
  dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
  if (!dataUsageSnapshotsAtNetworkEvents)
  {
    dataUsageSnapshotsAtNetworkEvents = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_dataUsageSnapshotsAtNetworkEvents = dataUsageSnapshotsAtNetworkEvents;
  }

  [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents addObject:events];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreCellularFallbackReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreCellularFallbackReport description](&v3, sel_description), -[AWDLibnetcoreCellularFallbackReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_fellback), @"fellback"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v23 = self->_denyReason - 1;
  if (v23 >= 3)
  {
    v24 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_denyReason];
  }

  else
  {
    v24 = off_29EE326D8[v23];
  }

  [dictionary setObject:v24 forKey:@"denyReason"];
  if (*&self->_has)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fallbackTimerMsecs), @"fallbackTimer_msecs"}];
  }

LABEL_5:
  p_networkEvents = &self->_networkEvents;
  if (self->_networkEvents.count)
  {
    v6 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:?];
    if (self->_networkEvents.count)
    {
      v7 = 0;
      do
      {
        v8 = p_networkEvents->list[v7] - 1;
        if (v8 >= 0xA)
        {
          v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", p_networkEvents->list[v7]];
        }

        else
        {
          v9 = off_29EE326F0[v8];
        }

        [v6 addObject:v9];
        ++v7;
      }

      while (v7 < self->_networkEvents.count);
    }

    [dictionary setObject:v6 forKey:@"networkEvents"];
  }

  [dictionary setObject:PBRepeatedUInt64NSArray() forKey:@"timeToNetworkEvents_msecs"];
  if ([(NSMutableArray *)self->_primaryInterfaceAttemptStatisticsReports count])
  {
    v10 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_primaryInterfaceAttemptStatisticsReports, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
    v12 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(primaryInterfaceAttemptStatisticsReports);
          }

          [v10 addObject:{objc_msgSend(*(*(&v29 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"primaryInterfaceAttemptStatisticsReports"];
  }

  if ([(NSMutableArray *)self->_dataUsageSnapshotsAtNetworkEvents count])
  {
    v16 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_dataUsageSnapshotsAtNetworkEvents, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
    v18 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(dataUsageSnapshotsAtNetworkEvents);
          }

          [v16 addObject:{objc_msgSend(*(*(&v25 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v19 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [dictionary setObject:v16 forKey:@"dataUsageSnapshotsAtNetworkEvents"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_networkEvents.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_networkEvents.count);
  }

  if (self->_timeToNetworkEventsMsecs.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      ++v6;
    }

    while (v6 < self->_timeToNetworkEventsMsecs.count);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
  v8 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(primaryInterfaceAttemptStatisticsReports);
        }

        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
  v13 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(dataUsageSnapshotsAtNetworkEvents);
        }

        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    *(to + 18) = self->_denyReason;
    *(to + 92) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(to + 88) = self->_fellback;
  *(to + 92) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(to + 7) = self->_fallbackTimerMsecs;
    *(to + 92) |= 1u;
  }

LABEL_5:
  if ([(AWDLibnetcoreCellularFallbackReport *)self networkEventsCount])
  {
    [to clearNetworkEvents];
    networkEventsCount = [(AWDLibnetcoreCellularFallbackReport *)self networkEventsCount];
    if (networkEventsCount)
    {
      v7 = networkEventsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addNetworkEvents:{-[AWDLibnetcoreCellularFallbackReport networkEventsAtIndex:](self, "networkEventsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDLibnetcoreCellularFallbackReport *)self timeToNetworkEventsMsecsCount])
  {
    [to clearTimeToNetworkEventsMsecs];
    timeToNetworkEventsMsecsCount = [(AWDLibnetcoreCellularFallbackReport *)self timeToNetworkEventsMsecsCount];
    if (timeToNetworkEventsMsecsCount)
    {
      v10 = timeToNetworkEventsMsecsCount;
      for (j = 0; j != v10; ++j)
      {
        [to addTimeToNetworkEventsMsecs:{-[AWDLibnetcoreCellularFallbackReport timeToNetworkEventsMsecsAtIndex:](self, "timeToNetworkEventsMsecsAtIndex:", j)}];
      }
    }
  }

  if ([(AWDLibnetcoreCellularFallbackReport *)self primaryInterfaceAttemptStatisticsReportsCount])
  {
    [to clearPrimaryInterfaceAttemptStatisticsReports];
    primaryInterfaceAttemptStatisticsReportsCount = [(AWDLibnetcoreCellularFallbackReport *)self primaryInterfaceAttemptStatisticsReportsCount];
    if (primaryInterfaceAttemptStatisticsReportsCount)
    {
      v13 = primaryInterfaceAttemptStatisticsReportsCount;
      for (k = 0; k != v13; ++k)
      {
        [to addPrimaryInterfaceAttemptStatisticsReports:{-[AWDLibnetcoreCellularFallbackReport primaryInterfaceAttemptStatisticsReportsAtIndex:](self, "primaryInterfaceAttemptStatisticsReportsAtIndex:", k)}];
      }
    }
  }

  if ([(AWDLibnetcoreCellularFallbackReport *)self dataUsageSnapshotsAtNetworkEventsCount])
  {
    [to clearDataUsageSnapshotsAtNetworkEvents];
    dataUsageSnapshotsAtNetworkEventsCount = [(AWDLibnetcoreCellularFallbackReport *)self dataUsageSnapshotsAtNetworkEventsCount];
    if (dataUsageSnapshotsAtNetworkEventsCount)
    {
      v16 = dataUsageSnapshotsAtNetworkEventsCount;
      for (m = 0; m != v16; ++m)
      {
        [to addDataUsageSnapshotsAtNetworkEvents:{-[AWDLibnetcoreCellularFallbackReport dataUsageSnapshotsAtNetworkEventsAtIndex:](self, "dataUsageSnapshotsAtNetworkEventsAtIndex:", m)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 88) = self->_fellback;
    *(v5 + 92) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 72) = self->_denyReason;
  *(v5 + 92) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 56) = self->_fallbackTimerMsecs;
    *(v5 + 92) |= 1u;
  }

LABEL_5:
  PBRepeatedInt32Copy();
  PBRepeatedUInt64Copy();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
  v9 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(primaryInterfaceAttemptStatisticsReports);
        }

        v13 = [*(*(&v25 + 1) + 8 * i) copyWithZone:zone];
        [v6 addPrimaryInterfaceAttemptStatisticsReports:v13];
      }

      v10 = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
  v15 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(dataUsageSnapshotsAtNetworkEvents);
        }

        v19 = [*(*(&v21 + 1) + 8 * j) copyWithZone:zone];
        [v6 addDataUsageSnapshotsAtNetworkEvents:v19];
      }

      v16 = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (!IsEqual)
  {
    return IsEqual;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 92) & 4) != 0)
    {
      if (self->_fellback)
      {
        if ((*(equal + 88) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (*(equal + 88))
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_26:
    LOBYTE(IsEqual) = 0;
    return IsEqual;
  }

  if ((*(equal + 92) & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 92) & 2) == 0 || self->_denyReason != *(equal + 18))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equal + 92) & 2) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equal + 92) & 1) == 0 || self->_fallbackTimerMsecs != *(equal + 7))
    {
      goto LABEL_26;
    }
  }

  else if (*(equal + 92))
  {
    goto LABEL_26;
  }

  IsEqual = PBRepeatedInt32IsEqual();
  if (IsEqual)
  {
    IsEqual = PBRepeatedUInt64IsEqual();
    if (IsEqual)
    {
      primaryInterfaceAttemptStatisticsReports = self->_primaryInterfaceAttemptStatisticsReports;
      if (!(primaryInterfaceAttemptStatisticsReports | *(equal + 10)) || (IsEqual = [(NSMutableArray *)primaryInterfaceAttemptStatisticsReports isEqual:?]) != 0)
      {
        dataUsageSnapshotsAtNetworkEvents = self->_dataUsageSnapshotsAtNetworkEvents;
        if (dataUsageSnapshotsAtNetworkEvents | *(equal + 8))
        {

          LOBYTE(IsEqual) = [(NSMutableArray *)dataUsageSnapshotsAtNetworkEvents isEqual:?];
        }

        else
        {
          LOBYTE(IsEqual) = 1;
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_fellback;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_denyReason;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761u * self->_fallbackTimerMsecs;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ PBRepeatedInt32Hash();
  v7 = v6 ^ PBRepeatedUInt64Hash();
  v8 = v7 ^ [(NSMutableArray *)self->_primaryInterfaceAttemptStatisticsReports hash];
  return v8 ^ [(NSMutableArray *)self->_dataUsageSnapshotsAtNetworkEvents hash];
}

- (void)mergeFrom:(id)from
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = *(from + 92);
  if ((v5 & 4) != 0)
  {
    self->_fellback = *(from + 88);
    *&self->_has |= 4u;
    v5 = *(from + 92);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 92) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_denyReason = *(from + 18);
  *&self->_has |= 2u;
  if (*(from + 92))
  {
LABEL_4:
    self->_fallbackTimerMsecs = *(from + 7);
    *&self->_has |= 1u;
  }

LABEL_5:
  networkEventsCount = [from networkEventsCount];
  if (networkEventsCount)
  {
    v7 = networkEventsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDLibnetcoreCellularFallbackReport addNetworkEvents:](self, "addNetworkEvents:", [from networkEventsAtIndex:i]);
    }
  }

  timeToNetworkEventsMsecsCount = [from timeToNetworkEventsMsecsCount];
  if (timeToNetworkEventsMsecsCount)
  {
    v10 = timeToNetworkEventsMsecsCount;
    for (j = 0; j != v10; ++j)
    {
      -[AWDLibnetcoreCellularFallbackReport addTimeToNetworkEventsMsecs:](self, "addTimeToNetworkEventsMsecs:", [from timeToNetworkEventsMsecsAtIndex:j]);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = *(from + 10);
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDLibnetcoreCellularFallbackReport *)self addPrimaryInterfaceAttemptStatisticsReports:*(*(&v26 + 1) + 8 * k)];
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v14);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = *(from + 8);
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      for (m = 0; m != v19; ++m)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(AWDLibnetcoreCellularFallbackReport *)self addDataUsageSnapshotsAtNetworkEvents:*(*(&v22 + 1) + 8 * m)];
      }

      v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

@end