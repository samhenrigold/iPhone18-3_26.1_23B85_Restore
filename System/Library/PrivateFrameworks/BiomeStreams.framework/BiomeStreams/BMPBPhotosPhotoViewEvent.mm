@interface BMPBPhotosPhotoViewEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLocations:(id)locations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBPhotosPhotoViewEvent

- (void)addLocations:(id)locations
{
  locationsCopy = locations;
  locations = self->_locations;
  v8 = locationsCopy;
  if (!locations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_locations;
    self->_locations = v6;

    locationsCopy = v8;
    locations = self->_locations;
  }

  [(NSMutableArray *)locations addObject:locationsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBPhotosPhotoViewEvent;
  v4 = [(BMPBPhotosPhotoViewEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBPhotosPhotoViewEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  locations = self->_locations;
  if (locations)
  {
    [dictionary setObject:locations forKey:@"locations"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v6 forKey:@"absoluteTimestamp"];
  }

  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v4 setObject:uniqueId forKey:@"uniqueId"];
  }

  contentProtection = self->_contentProtection;
  if (contentProtection)
  {
    [v4 setObject:contentProtection forKey:@"contentProtection"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v4 setObject:personaId forKey:@"personaId"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_locations;
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

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(BMPBPhotosPhotoViewEvent *)self locationsCount])
  {
    [toCopy clearLocations];
    locationsCount = [(BMPBPhotosPhotoViewEvent *)self locationsCount];
    if (locationsCount)
    {
      v5 = locationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBPhotosPhotoViewEvent *)self locationsAtIndex:i];
        [toCopy addLocations:v7];
      }
    }
  }

  v8 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_absoluteTimestamp;
    *(toCopy + 48) |= 1u;
  }

  if (self->_uniqueId)
  {
    [toCopy setUniqueId:?];
    v8 = toCopy;
  }

  if (self->_contentProtection)
  {
    [toCopy setContentProtection:?];
    v8 = toCopy;
  }

  if (self->_personaId)
  {
    [toCopy setPersonaId:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_locations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v19 + 1) + 8 * v10) copyWithZone:{zone, v19}];
        [v5 addLocations:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSString *)self->_uniqueId copyWithZone:zone, v19];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_contentProtection copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = [(NSString *)self->_personaId copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  locations = self->_locations;
  if (locations | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)locations isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(equalCopy + 5) && ![(NSString *)uniqueId isEqual:?])
  {
    goto LABEL_15;
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(equalCopy + 2))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_15;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(equalCopy + 4))
  {
    v9 = [(NSString *)personaId isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_locations hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v4.i64 = floor(absoluteTimestamp + 0.5);
    v8 = (absoluteTimestamp - *v4.i64) * 1.84467441e19;
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

  v10 = v6 ^ v3;
  v11 = [(NSString *)self->_uniqueId hash];
  v12 = v10 ^ v11 ^ [(NSString *)self->_contentProtection hash];
  return v12 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BMPBPhotosPhotoViewEvent *)self addLocations:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 48))
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(BMPBPhotosPhotoViewEvent *)self setUniqueId:?];
  }

  if (*(fromCopy + 2))
  {
    [(BMPBPhotosPhotoViewEvent *)self setContentProtection:?];
  }

  if (*(fromCopy + 4))
  {
    [(BMPBPhotosPhotoViewEvent *)self setPersonaId:?];
  }
}

@end