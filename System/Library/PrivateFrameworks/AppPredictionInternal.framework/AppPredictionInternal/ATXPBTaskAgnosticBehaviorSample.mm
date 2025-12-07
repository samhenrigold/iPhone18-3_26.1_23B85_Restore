@interface ATXPBTaskAgnosticBehaviorSample
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEngaged:(BOOL)engaged;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ATXPBTaskAgnosticBehaviorSample

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
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

- (id)typeAsString:(int)string
{
  if (string)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = @"contactInteraction";
  }

  return v4;
}

- (void)setHasEngaged:(BOOL)engaged
{
  if (engaged)
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
  v8.super_class = ATXPBTaskAgnosticBehaviorSample;
  v4 = [(ATXPBTaskAgnosticBehaviorSample *)&v8 description];
  dictionaryRepresentation = [(ATXPBTaskAgnosticBehaviorSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeIntervalSinceReferenceDate];
    [dictionary setObject:v9 forKey:@"timeIntervalSinceReferenceDate"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  if (self->_type)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v10 = @"contactInteraction";
  }

  [dictionary setObject:v10 forKey:@"type"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_engaged];
    [dictionary setObject:v5 forKey:@"engaged"];
  }

LABEL_5:
  featureVector = self->_featureVector;
  if (featureVector)
  {
    dictionaryRepresentation = [(ATXPBTaskAgnosticBehaviorFeatureVector *)featureVector dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"featureVector"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_5:
  if (self->_featureVector)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = *&self->_timeIntervalSinceReferenceDate;
    *(toCopy + 32) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  *(toCopy + 6) = self->_type;
  *(toCopy + 32) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(toCopy + 28) = self->_engaged;
    *(toCopy + 32) |= 4u;
  }

LABEL_5:
  if (self->_featureVector)
  {
    v6 = toCopy;
    [toCopy setFeatureVector:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_type;
    *(v5 + 32) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_timeIntervalSinceReferenceDate;
  *(v5 + 32) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 28) = self->_engaged;
    *(v5 + 32) |= 4u;
  }

LABEL_5:
  v8 = [(ATXPBTaskAgnosticBehaviorFeatureVector *)self->_featureVector copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_timeIntervalSinceReferenceDate != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_type != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 32) & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if ((*(equalCopy + 32) & 4) == 0)
  {
    goto LABEL_17;
  }

  if (self->_engaged)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_17;
  }

LABEL_14:
  featureVector = self->_featureVector;
  if (featureVector | *(equalCopy + 2))
  {
    v6 = [(ATXPBTaskAgnosticBehaviorFeatureVector *)featureVector isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_18:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    timeIntervalSinceReferenceDate = self->_timeIntervalSinceReferenceDate;
    if (timeIntervalSinceReferenceDate < 0.0)
    {
      timeIntervalSinceReferenceDate = -timeIntervalSinceReferenceDate;
    }

    *v6.i64 = floor(timeIntervalSinceReferenceDate + 0.5);
    v10 = (timeIntervalSinceReferenceDate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_type;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v13 = 0;
    return v12 ^ v8 ^ v13 ^ [(ATXPBTaskAgnosticBehaviorFeatureVector *)self->_featureVector hash:v3];
  }

  v12 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v13 = 2654435761 * self->_engaged;
  return v12 ^ v8 ^ v13 ^ [(ATXPBTaskAgnosticBehaviorFeatureVector *)self->_featureVector hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 32);
  if (v6)
  {
    self->_timeIntervalSinceReferenceDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_type = *(fromCopy + 6);
  *&self->_has |= 2u;
  if ((*(fromCopy + 32) & 4) != 0)
  {
LABEL_4:
    self->_engaged = *(fromCopy + 28);
    *&self->_has |= 4u;
  }

LABEL_5:
  featureVector = self->_featureVector;
  v8 = v5[2];
  if (featureVector)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    featureVector = [(ATXPBTaskAgnosticBehaviorFeatureVector *)featureVector mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    featureVector = [(ATXPBTaskAgnosticBehaviorSample *)self setFeatureVector:?];
  }

  v5 = v9;
LABEL_14:

  MEMORY[0x2821F96F8](featureVector, v5);
}

@end