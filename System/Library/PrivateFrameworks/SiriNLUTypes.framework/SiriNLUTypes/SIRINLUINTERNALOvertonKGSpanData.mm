@interface SIRINLUINTERNALOvertonKGSpanData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFeatures:(id)features;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALOvertonKGSpanData

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 24))
  {
    self->_confidence = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SIRINLUINTERNALOvertonKGSpanData *)self addFeatures:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v2.i64 = floor(confidence + 0.5);
    v6 = (confidence - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return [(NSMutableArray *)self->_features hash]^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_confidence != *(equalCopy + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  features = self->_features;
  if (features | *(equalCopy + 2))
  {
    v6 = [(NSMutableArray *)features isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_confidence;
    *(v5 + 24) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_features;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{zone, v14}];
        [v6 addFeatures:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_confidence;
    *(toCopy + 24) |= 1u;
  }

  v9 = toCopy;
  if ([(SIRINLUINTERNALOvertonKGSpanData *)self featuresCount])
  {
    [v9 clearFeatures];
    featuresCount = [(SIRINLUINTERNALOvertonKGSpanData *)self featuresCount];
    if (featuresCount)
    {
      v6 = featuresCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUINTERNALOvertonKGSpanData *)self featuresAtIndex:i];
        [v9 addFeatures:v8];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_features;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
    [dictionary setObject:v4 forKey:@"confidence"];
  }

  features = self->_features;
  if (features)
  {
    [dictionary setObject:features forKey:@"features"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALOvertonKGSpanData;
  v4 = [(SIRINLUINTERNALOvertonKGSpanData *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALOvertonKGSpanData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addFeatures:(id)features
{
  featuresCopy = features;
  features = self->_features;
  v8 = featuresCopy;
  if (!features)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_features;
    self->_features = v6;

    featuresCopy = v8;
    features = self->_features;
  }

  [(NSMutableArray *)features addObject:featuresCopy];
}

@end