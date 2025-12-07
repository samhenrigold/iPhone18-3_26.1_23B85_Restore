@interface HMMediaGroupProtoMediaDestinationControllerData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAvailableDestinations:(id)destinations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMMediaGroupProtoMediaDestinationControllerData

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(HMMediaGroupProtoMediaDestinationControllerData *)self setIdentifier:?];
  }

  if (*(fromCopy + 5))
  {
    [(HMMediaGroupProtoMediaDestinationControllerData *)self setParentIdentifier:?];
  }

  if (*(fromCopy + 3))
  {
    [(HMMediaGroupProtoMediaDestinationControllerData *)self setDestinationIdentifier:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 2);
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

        [(HMMediaGroupProtoMediaDestinationControllerData *)self addAvailableDestinations:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 48))
  {
    self->_supportedOptions = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_parentIdentifier hash];
  v5 = [(NSString *)self->_destinationIdentifier hash];
  v6 = [(NSMutableArray *)self->_availableDestinations hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_supportedOptions;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)parentIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  destinationIdentifier = self->_destinationIdentifier;
  if (destinationIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)destinationIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  availableDestinations = self->_availableDestinations;
  if (availableDestinations | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)availableDestinations isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(equalCopy + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) != 0 && self->_supportedOptions == *(equalCopy + 1))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_parentIdentifier copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_destinationIdentifier copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_availableDestinations;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addAvailableDestinations:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_supportedOptions;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if (self->_parentIdentifier)
  {
    [toCopy setParentIdentifier:?];
  }

  if (self->_destinationIdentifier)
  {
    [toCopy setDestinationIdentifier:?];
  }

  if ([(HMMediaGroupProtoMediaDestinationControllerData *)self availableDestinationsCount])
  {
    [toCopy clearAvailableDestinations];
    availableDestinationsCount = [(HMMediaGroupProtoMediaDestinationControllerData *)self availableDestinationsCount];
    if (availableDestinationsCount)
    {
      v5 = availableDestinationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMMediaGroupProtoMediaDestinationControllerData *)self availableDestinationsAtIndex:i];
        [toCopy addAvailableDestinations:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_supportedOptions;
    *(toCopy + 48) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_destinationIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_availableDestinations;
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
    PBDataWriterWriteUint64Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier)
  {
    [v4 setObject:parentIdentifier forKey:@"parentIdentifier"];
  }

  destinationIdentifier = self->_destinationIdentifier;
  if (destinationIdentifier)
  {
    [v4 setObject:destinationIdentifier forKey:@"destinationIdentifier"];
  }

  availableDestinations = self->_availableDestinations;
  if (availableDestinations)
  {
    [v4 setObject:availableDestinations forKey:@"availableDestinations"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_supportedOptions];
    [v4 setObject:v9 forKey:@"supportedOptions"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoMediaDestinationControllerData;
  v4 = [(HMMediaGroupProtoMediaDestinationControllerData *)&v8 description];
  dictionaryRepresentation = [(HMMediaGroupProtoMediaDestinationControllerData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addAvailableDestinations:(id)destinations
{
  destinationsCopy = destinations;
  availableDestinations = self->_availableDestinations;
  v8 = destinationsCopy;
  if (!availableDestinations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableDestinations;
    self->_availableDestinations = v6;

    destinationsCopy = v8;
    availableDestinations = self->_availableDestinations;
  }

  [(NSMutableArray *)availableDestinations addObject:destinationsCopy];
}

@end