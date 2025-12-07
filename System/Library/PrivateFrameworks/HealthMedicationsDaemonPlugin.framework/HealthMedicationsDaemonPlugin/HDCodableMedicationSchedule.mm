@interface HDCodableMedicationSchedule
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedMedicationUUID;
- (id)decodedUUID;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIntervalData:(id)data;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeleted:(BOOL)deleted;
- (void)setHasDisplayOptions:(BOOL)options;
- (void)setHasDuplicate:(BOOL)duplicate;
- (void)setHasEndDateTime:(BOOL)time;
- (void)setHasFrequencyType:(BOOL)type;
- (void)setHasScheduleType:(BOOL)type;
- (void)setHasStartDateTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMedicationSchedule

- (id)decodedUUID
{
  if (self->_uuid)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)decodedMedicationUUID
{
  if (self->_medicationUUID)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHasStartDateTime:(BOOL)time
{
  if (time)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEndDateTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasFrequencyType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDeleted:(BOOL)deleted
{
  if (deleted)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasScheduleType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasDisplayOptions:(BOOL)options
{
  if (options)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addIntervalData:(id)data
{
  dataCopy = data;
  intervalDatas = self->_intervalDatas;
  v8 = dataCopy;
  if (!intervalDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_intervalDatas;
    self->_intervalDatas = v6;

    dataCopy = v8;
    intervalDatas = self->_intervalDatas;
  }

  [(NSMutableArray *)intervalDatas addObject:dataCopy];
}

- (void)setHasDuplicate:(BOOL)duplicate
{
  if (duplicate)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicationSchedule;
  v4 = [(HDCodableMedicationSchedule *)&v8 description];
  dictionaryRepresentation = [(HDCodableMedicationSchedule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  medicationIdentifier = self->_medicationIdentifier;
  if (medicationIdentifier)
  {
    [v4 setObject:medicationIdentifier forKey:@"medicationIdentifier"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDateTime];
    [v4 setObject:v8 forKey:@"startDateTime"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endDateTime];
    [v4 setObject:v9 forKey:@"endDateTime"];
  }

  createdTimeZone = self->_createdTimeZone;
  if (createdTimeZone)
  {
    [v4 setObject:createdTimeZone forKey:@"createdTimeZone"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_frequencyType];
    [v4 setObject:v11 forKey:@"frequencyType"];
  }

  cycleStartDateComponents = self->_cycleStartDateComponents;
  if (cycleStartDateComponents)
  {
    dictionaryRepresentation = [(HDCodableDateComponents *)cycleStartDateComponents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"cycleStartDateComponents"];
  }

  note = self->_note;
  if (note)
  {
    [v4 setObject:note forKey:@"note"];
  }

  medicationUUID = self->_medicationUUID;
  if (medicationUUID)
  {
    [v4 setObject:medicationUUID forKey:@"medicationUUID"];
  }

  v16 = self->_has;
  if (v16)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v17 forKey:@"creationDate"];

    v16 = self->_has;
  }

  if ((v16 & 0x40) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v4 setObject:v18 forKey:@"deleted"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation2 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"syncIdentity"];
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  if (compatibilityVersionRange)
  {
    dictionaryRepresentation3 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"compatibilityVersionRange"];
  }

  v23 = self->_has;
  if ((v23 & 0x10) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_scheduleType];
    [v4 setObject:v24 forKey:@"scheduleType"];

    v23 = self->_has;
  }

  if ((v23 & 2) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_displayOptions];
    [v4 setObject:v25 forKey:@"displayOptions"];
  }

  if ([(NSMutableArray *)self->_intervalDatas count])
  {
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_intervalDatas, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = self->_intervalDatas;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v36;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(v27);
          }

          dictionaryRepresentation4 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v26 addObject:dictionaryRepresentation4];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v29);
    }

    [v4 setObject:v26 forKey:@"intervalData"];
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_duplicate];
    [v4 setObject:v33 forKey:@"duplicate"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_medicationIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_createdTimeZone)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_cycleStartDateComponents)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_note)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_medicationUUID)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if (v6)
  {
    PBDataWriterWriteDoubleField();
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_compatibilityVersionRange)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    PBDataWriterWriteInt64Field();
    v7 = self->_has;
  }

  if ((v7 & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_intervalDatas;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v12;
  }

  if (self->_medicationIdentifier)
  {
    [v12 setMedicationIdentifier:?];
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 6) = *&self->_startDateTime;
    toCopy[132] |= 0x20u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 3) = *&self->_endDateTime;
    toCopy[132] |= 4u;
  }

  if (self->_createdTimeZone)
  {
    [v12 setCreatedTimeZone:?];
    toCopy = v12;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 4) = *&self->_frequencyType;
    toCopy[132] |= 8u;
  }

  if (self->_cycleStartDateComponents)
  {
    [v12 setCycleStartDateComponents:?];
    toCopy = v12;
  }

  if (self->_note)
  {
    [v12 setNote:?];
    toCopy = v12;
  }

  if (self->_medicationUUID)
  {
    [v12 setMedicationUUID:?];
    toCopy = v12;
  }

  v6 = self->_has;
  if (v6)
  {
    *(toCopy + 1) = *&self->_creationDate;
    toCopy[132] |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    toCopy[128] = self->_deleted;
    toCopy[132] |= 0x40u;
  }

  if (self->_syncIdentity)
  {
    [v12 setSyncIdentity:?];
    toCopy = v12;
  }

  if (self->_compatibilityVersionRange)
  {
    [v12 setCompatibilityVersionRange:?];
    toCopy = v12;
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    *(toCopy + 5) = self->_scheduleType;
    toCopy[132] |= 0x10u;
    v7 = self->_has;
  }

  if ((v7 & 2) != 0)
  {
    *(toCopy + 2) = self->_displayOptions;
    toCopy[132] |= 2u;
  }

  if ([(HDCodableMedicationSchedule *)self intervalDatasCount])
  {
    [v12 clearIntervalDatas];
    intervalDatasCount = [(HDCodableMedicationSchedule *)self intervalDatasCount];
    if (intervalDatasCount)
    {
      v9 = intervalDatasCount;
      for (i = 0; i != v9; ++i)
      {
        v11 = [(HDCodableMedicationSchedule *)self intervalDataAtIndex:i];
        [v12 addIntervalData:v11];
      }
    }
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v12[129] = self->_duplicate;
    v12[132] |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  v8 = [(NSString *)self->_medicationIdentifier copyWithZone:zone];
  v9 = *(v5 + 88);
  *(v5 + 88) = v8;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 48) = self->_startDateTime;
    *(v5 + 132) |= 0x20u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_endDateTime;
    *(v5 + 132) |= 4u;
  }

  v11 = [(NSString *)self->_createdTimeZone copyWithZone:zone];
  v12 = *(v5 + 64);
  *(v5 + 64) = v11;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_frequencyType;
    *(v5 + 132) |= 8u;
  }

  v13 = [(HDCodableDateComponents *)self->_cycleStartDateComponents copyWithZone:zone];
  v14 = *(v5 + 72);
  *(v5 + 72) = v13;

  v15 = [(NSString *)self->_note copyWithZone:zone];
  v16 = *(v5 + 104);
  *(v5 + 104) = v15;

  v17 = [(NSData *)self->_medicationUUID copyWithZone:zone];
  v18 = *(v5 + 96);
  *(v5 + 96) = v17;

  v19 = self->_has;
  if (v19)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 132) |= 1u;
    v19 = self->_has;
  }

  if ((v19 & 0x40) != 0)
  {
    *(v5 + 128) = self->_deleted;
    *(v5 + 132) |= 0x40u;
  }

  v20 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v21 = *(v5 + 112);
  *(v5 + 112) = v20;

  v22 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)self->_compatibilityVersionRange copyWithZone:zone];
  v23 = *(v5 + 56);
  *(v5 + 56) = v22;

  v24 = self->_has;
  if ((v24 & 0x10) != 0)
  {
    *(v5 + 40) = self->_scheduleType;
    *(v5 + 132) |= 0x10u;
    v24 = self->_has;
  }

  if ((v24 & 2) != 0)
  {
    *(v5 + 16) = self->_displayOptions;
    *(v5 + 132) |= 2u;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_intervalDatas;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v32 + 1) + 8 * i) copyWithZone:{zone, v32}];
        [v5 addIntervalData:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v27);
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v5 + 129) = self->_duplicate;
    *(v5 + 132) |= 0x80u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 15))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_45;
    }
  }

  medicationIdentifier = self->_medicationIdentifier;
  if (medicationIdentifier | *(equalCopy + 11))
  {
    if (![(NSString *)medicationIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    if ((equalCopy[132] & 0x20) == 0 || self->_startDateTime != *(equalCopy + 6))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[132] & 0x20) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[132] & 4) == 0 || self->_endDateTime != *(equalCopy + 3))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[132] & 4) != 0)
  {
    goto LABEL_45;
  }

  createdTimeZone = self->_createdTimeZone;
  if (createdTimeZone | *(equalCopy + 8))
  {
    if (![(NSString *)createdTimeZone isEqual:?])
    {
      goto LABEL_45;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((equalCopy[132] & 8) == 0 || self->_frequencyType != *(equalCopy + 4))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[132] & 8) != 0)
  {
    goto LABEL_45;
  }

  cycleStartDateComponents = self->_cycleStartDateComponents;
  if (cycleStartDateComponents | *(equalCopy + 9) && ![(HDCodableDateComponents *)cycleStartDateComponents isEqual:?])
  {
    goto LABEL_45;
  }

  note = self->_note;
  if (note | *(equalCopy + 13))
  {
    if (![(NSString *)note isEqual:?])
    {
      goto LABEL_45;
    }
  }

  medicationUUID = self->_medicationUUID;
  if (medicationUUID | *(equalCopy + 12))
  {
    if (![(NSData *)medicationUUID isEqual:?])
    {
      goto LABEL_45;
    }
  }

  if (*&self->_has)
  {
    if ((equalCopy[132] & 1) == 0 || self->_creationDate != *(equalCopy + 1))
    {
      goto LABEL_45;
    }
  }

  else if (equalCopy[132])
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((equalCopy[132] & 0x40) == 0)
    {
      goto LABEL_45;
    }

    if (self->_deleted)
    {
      if ((equalCopy[128] & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (equalCopy[128])
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[132] & 0x40) != 0)
  {
    goto LABEL_45;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 14) && ![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
  {
    goto LABEL_45;
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  if (compatibilityVersionRange | *(equalCopy + 7))
  {
    if (![(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v14 = self->_has;
  if ((v14 & 0x10) != 0)
  {
    if ((equalCopy[132] & 0x10) == 0 || self->_scheduleType != *(equalCopy + 5))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[132] & 0x10) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[132] & 2) == 0 || self->_displayOptions != *(equalCopy + 2))
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[132] & 2) != 0)
  {
    goto LABEL_45;
  }

  intervalDatas = self->_intervalDatas;
  if (intervalDatas | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)intervalDatas isEqual:?])
    {
      goto LABEL_45;
    }

    v14 = self->_has;
  }

  v18 = equalCopy[132];
  if ((v14 & 0x80) == 0)
  {
    v15 = v18 >= 0;
    goto LABEL_46;
  }

  if (v18 < 0)
  {
    if (self->_duplicate)
    {
      if (equalCopy[129])
      {
        goto LABEL_69;
      }
    }

    else if (!equalCopy[129])
    {
LABEL_69:
      v15 = 1;
      goto LABEL_46;
    }
  }

LABEL_45:
  v15 = 0;
LABEL_46:

  return v15;
}

- (unint64_t)hash
{
  v41 = [(NSData *)self->_uuid hash];
  v40 = [(NSString *)self->_medicationIdentifier hash];
  if ((*&self->_has & 0x20) != 0)
  {
    startDateTime = self->_startDateTime;
    if (startDateTime < 0.0)
    {
      startDateTime = -startDateTime;
    }

    *v3.i64 = floor(startDateTime + 0.5);
    v7 = (startDateTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
    v5 = 2654435761u * *v3.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v39 = v5;
  if ((*&self->_has & 4) != 0)
  {
    endDateTime = self->_endDateTime;
    if (endDateTime < 0.0)
    {
      endDateTime = -endDateTime;
    }

    *v3.i64 = floor(endDateTime + 0.5);
    v11 = (endDateTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v4, v3).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v38 = v9;
  v37 = [(NSString *)self->_createdTimeZone hash];
  if ((*&self->_has & 8) != 0)
  {
    frequencyType = self->_frequencyType;
    if (frequencyType < 0.0)
    {
      frequencyType = -frequencyType;
    }

    *v13.i64 = floor(frequencyType + 0.5);
    v17 = (frequencyType - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v14, v13).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  v36 = [(HDCodableDateComponents *)self->_cycleStartDateComponents hash];
  v35 = [(NSString *)self->_note hash];
  v33 = [(NSData *)self->_medicationUUID hash];
  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v19.i64 = floor(creationDate + 0.5);
    v23 = (creationDate - *v19.i64) * 1.84467441e19;
    *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v24), v20, v19).i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v25 = 2654435761 * self->_deleted;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  v27 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)self->_compatibilityVersionRange hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v28 = 2654435761 * self->_scheduleType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v28 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_38:
      v29 = 2654435761 * self->_displayOptions;
      goto LABEL_41;
    }
  }

  v29 = 0;
LABEL_41:
  v30 = [(NSMutableArray *)self->_intervalDatas hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v31 = 2654435761 * self->_duplicate;
  }

  else
  {
    v31 = 0;
  }

  return v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v15 ^ v36 ^ v35 ^ v34 ^ v21 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31;
}

- (void)mergeFrom:(id)from
{
  v24 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 15))
  {
    [(HDCodableMedicationSchedule *)self setUuid:?];
  }

  if (*(fromCopy + 11))
  {
    [(HDCodableMedicationSchedule *)self setMedicationIdentifier:?];
  }

  v5 = fromCopy[132];
  if ((v5 & 0x20) != 0)
  {
    self->_startDateTime = *(fromCopy + 6);
    *&self->_has |= 0x20u;
    v5 = fromCopy[132];
  }

  if ((v5 & 4) != 0)
  {
    self->_endDateTime = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 8))
  {
    [(HDCodableMedicationSchedule *)self setCreatedTimeZone:?];
  }

  if ((fromCopy[132] & 8) != 0)
  {
    self->_frequencyType = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

  cycleStartDateComponents = self->_cycleStartDateComponents;
  v7 = *(fromCopy + 9);
  if (cycleStartDateComponents)
  {
    if (v7)
    {
      [(HDCodableDateComponents *)cycleStartDateComponents mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HDCodableMedicationSchedule *)self setCycleStartDateComponents:?];
  }

  if (*(fromCopy + 13))
  {
    [(HDCodableMedicationSchedule *)self setNote:?];
  }

  if (*(fromCopy + 12))
  {
    [(HDCodableMedicationSchedule *)self setMedicationUUID:?];
  }

  v8 = fromCopy[132];
  if (v8)
  {
    self->_creationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v8 = fromCopy[132];
  }

  if ((v8 & 0x40) != 0)
  {
    self->_deleted = fromCopy[128];
    *&self->_has |= 0x40u;
  }

  syncIdentity = self->_syncIdentity;
  v10 = *(fromCopy + 14);
  if (syncIdentity)
  {
    if (v10)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(HDCodableMedicationSchedule *)self setSyncIdentity:?];
  }

  compatibilityVersionRange = self->_compatibilityVersionRange;
  v12 = *(fromCopy + 7);
  if (compatibilityVersionRange)
  {
    if (v12)
    {
      [(HDCodableMedicationScheduleCompatibilityVersionRange *)compatibilityVersionRange mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HDCodableMedicationSchedule *)self setCompatibilityVersionRange:?];
  }

  v13 = fromCopy[132];
  if ((v13 & 0x10) != 0)
  {
    self->_scheduleType = *(fromCopy + 5);
    *&self->_has |= 0x10u;
    v13 = fromCopy[132];
  }

  if ((v13 & 2) != 0)
  {
    self->_displayOptions = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = *(fromCopy + 10);
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(HDCodableMedicationSchedule *)self addIntervalData:*(*(&v19 + 1) + 8 * i), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }

  if (fromCopy[132] < 0)
  {
    self->_duplicate = fromCopy[129];
    *&self->_has |= 0x80u;
  }
}

@end