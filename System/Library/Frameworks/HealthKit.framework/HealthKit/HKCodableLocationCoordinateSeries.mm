@interface HKCodableLocationCoordinateSeries
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCoordinates:(id)coordinates;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableLocationCoordinateSeries

- (void)addCoordinates:(id)coordinates
{
  coordinatesCopy = coordinates;
  coordinates = self->_coordinates;
  v8 = coordinatesCopy;
  if (!coordinates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_coordinates;
    self->_coordinates = v6;

    coordinatesCopy = v8;
    coordinates = self->_coordinates;
  }

  [(NSMutableArray *)coordinates addObject:coordinatesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableLocationCoordinateSeries;
  v4 = [(HKCodableLocationCoordinateSeries *)&v8 description];
  dictionaryRepresentation = [(HKCodableLocationCoordinateSeries *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_coordinates count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_coordinates, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_coordinates;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"coordinates"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_resumeDate];
    [dictionary setObject:v11 forKey:@"resumeDate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_coordinates;
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HKCodableLocationCoordinateSeries *)self coordinatesCount])
  {
    [toCopy clearCoordinates];
    coordinatesCount = [(HKCodableLocationCoordinateSeries *)self coordinatesCount];
    if (coordinatesCount)
    {
      v5 = coordinatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableLocationCoordinateSeries *)self coordinatesAtIndex:i];
        [toCopy addCoordinates:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_resumeDate;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_coordinates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addCoordinates:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_resumeDate;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  coordinates = self->_coordinates;
  if (coordinates | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)coordinates isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_resumeDate == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_coordinates hash];
  if (*&self->_has)
  {
    resumeDate = self->_resumeDate;
    if (resumeDate < 0.0)
    {
      resumeDate = -resumeDate;
    }

    *v4.i64 = floor(resumeDate + 0.5);
    v8 = (resumeDate - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [(HKCodableLocationCoordinateSeries *)self addCoordinates:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 24))
  {
    self->_resumeDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end