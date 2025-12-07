@interface BMPBMicroLocationRestrictedLocalizationEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNumDevicesVector:(id)vector;
- (void)addProbabilityVector:(id)vector;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMaxProbability:(BOOL)probability;
- (void)writeTo:(id)to;
@end

@implementation BMPBMicroLocationRestrictedLocalizationEvent

- (void)setHasMaxProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addProbabilityVector:(id)vector
{
  vectorCopy = vector;
  probabilityVectors = self->_probabilityVectors;
  v8 = vectorCopy;
  if (!probabilityVectors)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_probabilityVectors;
    self->_probabilityVectors = v6;

    vectorCopy = v8;
    probabilityVectors = self->_probabilityVectors;
  }

  [(NSMutableArray *)probabilityVectors addObject:vectorCopy];
}

- (void)addNumDevicesVector:(id)vector
{
  vectorCopy = vector;
  numDevicesVectors = self->_numDevicesVectors;
  v8 = vectorCopy;
  if (!numDevicesVectors)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_numDevicesVectors;
    self->_numDevicesVectors = v6;

    vectorCopy = v8;
    numDevicesVectors = self->_numDevicesVectors;
  }

  [(NSMutableArray *)numDevicesVectors addObject:vectorCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBMicroLocationRestrictedLocalizationEvent;
  v4 = [(BMPBMicroLocationRestrictedLocalizationEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBMicroLocationRestrictedLocalizationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimeStamp];
    [dictionary setObject:v4 forKey:@"absoluteTimeStamp"];
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId)
  {
    [dictionary setObject:clientBundleId forKey:@"clientBundleId"];
  }

  maxProbabilityLabel = self->_maxProbabilityLabel;
  if (maxProbabilityLabel)
  {
    [dictionary setObject:maxProbabilityLabel forKey:@"maxProbabilityLabel"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxProbability];
    [dictionary setObject:v7 forKey:@"maxProbability"];
  }

  if ([(NSMutableArray *)self->_probabilityVectors count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_probabilityVectors, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = self->_probabilityVectors;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"probabilityVector"];
  }

  if ([(NSMutableArray *)self->_numDevicesVectors count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_numDevicesVectors, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = self->_numDevicesVectors;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation2];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"numDevicesVector"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_clientBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_maxProbabilityLabel)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_probabilityVectors;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_numDevicesVectors;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_absoluteTimeStamp;
    *(toCopy + 56) |= 1u;
  }

  v13 = toCopy;
  if (self->_clientBundleId)
  {
    [toCopy setClientBundleId:?];
    toCopy = v13;
  }

  if (self->_maxProbabilityLabel)
  {
    [v13 setMaxProbabilityLabel:?];
    toCopy = v13;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = *&self->_maxProbability;
    *(toCopy + 56) |= 2u;
  }

  if ([(BMPBMicroLocationRestrictedLocalizationEvent *)self probabilityVectorsCount])
  {
    [v13 clearProbabilityVectors];
    probabilityVectorsCount = [(BMPBMicroLocationRestrictedLocalizationEvent *)self probabilityVectorsCount];
    if (probabilityVectorsCount)
    {
      v6 = probabilityVectorsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BMPBMicroLocationRestrictedLocalizationEvent *)self probabilityVectorAtIndex:i];
        [v13 addProbabilityVector:v8];
      }
    }
  }

  if ([(BMPBMicroLocationRestrictedLocalizationEvent *)self numDevicesVectorsCount])
  {
    [v13 clearNumDevicesVectors];
    numDevicesVectorsCount = [(BMPBMicroLocationRestrictedLocalizationEvent *)self numDevicesVectorsCount];
    if (numDevicesVectorsCount)
    {
      v10 = numDevicesVectorsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(BMPBMicroLocationRestrictedLocalizationEvent *)self numDevicesVectorAtIndex:j];
        [v13 addNumDevicesVector:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimeStamp;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_clientBundleId copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_maxProbabilityLabel copyWithZone:zone];
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_maxProbability;
    *(v6 + 56) |= 2u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_probabilityVectors;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v28 + 1) + 8 * v15) copyWithZone:zone];
        [v6 addProbabilityVector:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_numDevicesVectors;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v24 + 1) + 8 * v21) copyWithZone:{zone, v24}];
        [v6 addNumDevicesVector:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_absoluteTimeStamp != *(equalCopy + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId | *(equalCopy + 3) && ![(NSString *)clientBundleId isEqual:?])
  {
    goto LABEL_20;
  }

  maxProbabilityLabel = self->_maxProbabilityLabel;
  if (maxProbabilityLabel | *(equalCopy + 4))
  {
    if (![(NSString *)maxProbabilityLabel isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_maxProbability != *(equalCopy + 2))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_20;
  }

  probabilityVectors = self->_probabilityVectors;
  if (probabilityVectors | *(equalCopy + 6) && ![(NSMutableArray *)probabilityVectors isEqual:?])
  {
    goto LABEL_20;
  }

  numDevicesVectors = self->_numDevicesVectors;
  if (numDevicesVectors | *(equalCopy + 5))
  {
    v9 = [(NSMutableArray *)numDevicesVectors isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_21:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimeStamp = self->_absoluteTimeStamp;
    if (absoluteTimeStamp < 0.0)
    {
      absoluteTimeStamp = -absoluteTimeStamp;
    }

    *v2.i64 = floor(absoluteTimeStamp + 0.5);
    v7 = (absoluteTimeStamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
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

  v9 = [(NSString *)self->_clientBundleId hash];
  v10 = [(NSString *)self->_maxProbabilityLabel hash];
  if ((*&self->_has & 2) != 0)
  {
    maxProbability = self->_maxProbability;
    if (maxProbability < 0.0)
    {
      maxProbability = -maxProbability;
    }

    *v11.i64 = floor(maxProbability + 0.5);
    v15 = (maxProbability - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v12, v11).i64;
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

  v17 = v9 ^ v5 ^ v10 ^ v13;
  v18 = [(NSMutableArray *)self->_probabilityVectors hash];
  return v17 ^ v18 ^ [(NSMutableArray *)self->_numDevicesVectors hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[7])
  {
    self->_absoluteTimeStamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBMicroLocationRestrictedLocalizationEvent *)self setClientBundleId:?];
  }

  if (*(v5 + 4))
  {
    [(BMPBMicroLocationRestrictedLocalizationEvent *)self setMaxProbabilityLabel:?];
  }

  if ((v5[7] & 2) != 0)
  {
    self->_maxProbability = v5[2];
    *&self->_has |= 2u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(v5 + 6);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

        [(BMPBMicroLocationRestrictedLocalizationEvent *)self addProbabilityVector:*(*(&v20 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(v5 + 5);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(BMPBMicroLocationRestrictedLocalizationEvent *)self addNumDevicesVector:*(*(&v16 + 1) + 8 * j), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

@end