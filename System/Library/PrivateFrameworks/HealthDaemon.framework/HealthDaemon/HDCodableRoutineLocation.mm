@interface HDCodableRoutineLocation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)locationOfInterestTypeAsString:(int)string;
- (int)StringAsLocationOfInterestType:(id)type;
- (int)locationOfInterestType;
- (unint64_t)hash;
- (void)addVisits:(id)visits;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLatitude:(BOOL)latitude;
- (void)setHasLocationOfInterestType:(BOOL)type;
- (void)setHasLongitude:(BOOL)longitude;
- (void)setHasUncertainty:(BOOL)uncertainty;
- (void)writeTo:(id)to;
@end

@implementation HDCodableRoutineLocation

- (void)setHasLatitude:(BOOL)latitude
{
  if (latitude)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUncertainty:(BOOL)uncertainty
{
  if (uncertainty)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)locationOfInterestType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_locationOfInterestType;
  }

  else
  {
    return -1;
  }
}

- (void)setHasLocationOfInterestType:(BOOL)type
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

- (id)locationOfInterestTypeAsString:(int)string
{
  if ((string + 1) >= 5)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278614810[string + 1];
  }

  return v4;
}

- (int)StringAsLocationOfInterestType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UnknownLocation"])
  {
    v4 = -1;
  }

  else if ([typeCopy isEqualToString:@"Home"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Work"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"School"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Gym"])
  {
    v4 = 3;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)addVisits:(id)visits
{
  visitsCopy = visits;
  visits = self->_visits;
  v8 = visitsCopy;
  if (!visits)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_visits;
    self->_visits = v6;

    visitsCopy = v8;
    visits = self->_visits;
  }

  [(NSMutableArray *)visits addObject:visitsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRoutineLocation;
  v4 = [(HDCodableRoutineLocation *)&v8 description];
  dictionaryRepresentation = [(HDCodableRoutineLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
    [dictionary setObject:v9 forKey:@"latitude"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  [dictionary setObject:v10 forKey:@"longitude"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_uncertainty];
  [dictionary setObject:v11 forKey:@"uncertainty"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
    [dictionary setObject:v5 forKey:@"confidence"];
  }

LABEL_6:
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v7 = self->_locationOfInterestType + 1;
    if (v7 >= 5)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_locationOfInterestType];
    }

    else
    {
      v8 = off_278614810[v7];
    }

    [dictionary setObject:v8 forKey:@"locationOfInterestType"];
  }

  geoData = self->_geoData;
  if (geoData)
  {
    [dictionary setObject:geoData forKey:@"geoData"];
  }

  if ([(NSMutableArray *)self->_visits count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_visits, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_visits;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"visits"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_5:
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_geoData)
  {
    PBDataWriterWriteDataField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_visits;
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
  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_latitude;
    *(toCopy + 72) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = *&self->_longitude;
  *(toCopy + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  toCopy[4] = *&self->_uncertainty;
  *(toCopy + 72) |= 8u;
  if (*&self->_has)
  {
LABEL_5:
    toCopy[1] = *&self->_confidence;
    *(toCopy + 72) |= 1u;
  }

LABEL_6:
  v10 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v10;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 12) = self->_locationOfInterestType;
    *(toCopy + 72) |= 0x10u;
  }

  if (self->_geoData)
  {
    [v10 setGeoData:?];
  }

  if ([(HDCodableRoutineLocation *)self visitsCount])
  {
    [v10 clearVisits];
    visitsCount = [(HDCodableRoutineLocation *)self visitsCount];
    if (visitsCount)
    {
      v7 = visitsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableRoutineLocation *)self visitsAtIndex:i];
        [v10 addVisits:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_latitude;
    *(v5 + 72) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_longitude;
  *(v5 + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  *(v5 + 32) = self->_uncertainty;
  *(v5 + 72) |= 8u;
  if (*&self->_has)
  {
LABEL_5:
    *(v5 + 8) = self->_confidence;
    *(v5 + 72) |= 1u;
  }

LABEL_6:
  v8 = [(NSString *)self->_uuid copyWithZone:zone];
  v9 = *(v6 + 56);
  *(v6 + 56) = v8;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 48) = self->_locationOfInterestType;
    *(v6 + 72) |= 0x10u;
  }

  v10 = [(NSData *)self->_geoData copyWithZone:zone];
  v11 = *(v6 + 40);
  *(v6 + 40) = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_visits;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v6 addVisits:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
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
  v6 = *(equalCopy + 72);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_latitude != *(equalCopy + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_longitude != *(equalCopy + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0 || self->_uncertainty != *(equalCopy + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_confidence != *(equalCopy + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_34;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 7))
  {
    if (![(NSString *)uuid isEqual:?])
    {
LABEL_34:
      v10 = 0;
      goto LABEL_35;
    }

    has = self->_has;
    v6 = *(equalCopy + 72);
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_locationOfInterestType != *(equalCopy + 12))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_34;
  }

  geoData = self->_geoData;
  if (geoData | *(equalCopy + 5) && ![(NSData *)geoData isEqual:?])
  {
    goto LABEL_34;
  }

  visits = self->_visits;
  if (visits | *(equalCopy + 8))
  {
    v10 = [(NSMutableArray *)visits isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_35:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    latitude = self->_latitude;
    if (latitude < 0.0)
    {
      latitude = -latitude;
    }

    *v2.i64 = floor(latitude + 0.5);
    v7 = (latitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 4) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v2.i64 = floor(longitude + 0.5);
    v11 = (longitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 8) != 0)
  {
    uncertainty = self->_uncertainty;
    if (uncertainty < 0.0)
    {
      uncertainty = -uncertainty;
    }

    *v2.i64 = floor(uncertainty + 0.5);
    v15 = (uncertainty - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v16), v3, v2);
    v13 = 2654435761u * *v2.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v2.i64 = floor(confidence + 0.5);
    v19 = (confidence - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v17 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v3, v2).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = [(NSString *)self->_uuid hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v22 = 2654435761 * self->_locationOfInterestType;
  }

  else
  {
    v22 = 0;
  }

  v23 = v9 ^ v5 ^ v13 ^ v17 ^ v22 ^ v21;
  v24 = [(NSData *)self->_geoData hash];
  return v23 ^ v24 ^ [(NSMutableArray *)self->_visits hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 72);
  if ((v6 & 2) != 0)
  {
    self->_latitude = fromCopy[2];
    *&self->_has |= 2u;
    v6 = *(fromCopy + 72);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((fromCopy[9] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_longitude = fromCopy[3];
  *&self->_has |= 4u;
  v6 = *(fromCopy + 72);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  self->_uncertainty = fromCopy[4];
  *&self->_has |= 8u;
  if (fromCopy[9])
  {
LABEL_5:
    self->_confidence = fromCopy[1];
    *&self->_has |= 1u;
  }

LABEL_6:
  if (*(fromCopy + 7))
  {
    [(HDCodableRoutineLocation *)self setUuid:?];
  }

  if ((v5[9] & 0x10) != 0)
  {
    self->_locationOfInterestType = *(v5 + 12);
    *&self->_has |= 0x10u;
  }

  if (*(v5 + 5))
  {
    [(HDCodableRoutineLocation *)self setGeoData:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v5 + 8);
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

        [(HDCodableRoutineLocation *)self addVisits:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end