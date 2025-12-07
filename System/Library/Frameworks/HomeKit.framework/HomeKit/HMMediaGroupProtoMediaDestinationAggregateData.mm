@interface HMMediaGroupProtoMediaDestinationAggregateData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDestination:(id)destination;
- (void)addDestinationControllerData:(id)data;
- (void)addGroup:(id)group;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMMediaGroupProtoMediaDestinationAggregateData

- (void)mergeFrom:(id)from
{
  v35 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HMMediaGroupProtoMediaDestinationAggregateData *)self addDestination:*(*(&v28 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = fromCopy[1];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HMMediaGroupProtoMediaDestinationAggregateData *)self addDestinationControllerData:*(*(&v24 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = fromCopy[3];
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(HMMediaGroupProtoMediaDestinationAggregateData *)self addGroup:*(*(&v20 + 1) + 8 * v19++), v20];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_destinations hash];
  v4 = [(NSMutableArray *)self->_destinationControllerDatas hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_groups hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((destinations = self->_destinations, !(destinations | equalCopy[2])) || -[NSMutableArray isEqual:](destinations, "isEqual:")) && ((destinationControllerDatas = self->_destinationControllerDatas, !(destinationControllerDatas | equalCopy[1])) || -[NSMutableArray isEqual:](destinationControllerDatas, "isEqual:")))
  {
    groups = self->_groups;
    if (groups | equalCopy[3])
    {
      v8 = [(NSMutableArray *)groups isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = self->_destinations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v33 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addDestination:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_destinationControllerDatas;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v29 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addDestinationControllerData:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_groups;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * v22) copyWithZone:{zone, v25}];
        [v5 addGroup:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HMMediaGroupProtoMediaDestinationAggregateData *)self destinationsCount])
  {
    [toCopy clearDestinations];
    destinationsCount = [(HMMediaGroupProtoMediaDestinationAggregateData *)self destinationsCount];
    if (destinationsCount)
    {
      v5 = destinationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMMediaGroupProtoMediaDestinationAggregateData *)self destinationAtIndex:i];
        [toCopy addDestination:v7];
      }
    }
  }

  if ([(HMMediaGroupProtoMediaDestinationAggregateData *)self destinationControllerDatasCount])
  {
    [toCopy clearDestinationControllerDatas];
    destinationControllerDatasCount = [(HMMediaGroupProtoMediaDestinationAggregateData *)self destinationControllerDatasCount];
    if (destinationControllerDatasCount)
    {
      v9 = destinationControllerDatasCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HMMediaGroupProtoMediaDestinationAggregateData *)self destinationControllerDataAtIndex:j];
        [toCopy addDestinationControllerData:v11];
      }
    }
  }

  if ([(HMMediaGroupProtoMediaDestinationAggregateData *)self groupsCount])
  {
    [toCopy clearGroups];
    groupsCount = [(HMMediaGroupProtoMediaDestinationAggregateData *)self groupsCount];
    if (groupsCount)
    {
      v13 = groupsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(HMMediaGroupProtoMediaDestinationAggregateData *)self groupAtIndex:k];
        [toCopy addGroup:v15];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_destinations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_destinationControllerDatas;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_groups;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_destinations count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_destinations, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = self->_destinations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"destination"];
  }

  if ([(NSMutableArray *)self->_destinationControllerDatas count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_destinationControllerDatas, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = self->_destinationControllerDatas;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"destinationControllerData"];
  }

  if ([(NSMutableArray *)self->_groups count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_groups, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = self->_groups;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v26 + 1) + 8 * k) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation3];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"group"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoMediaDestinationAggregateData;
  v4 = [(HMMediaGroupProtoMediaDestinationAggregateData *)&v8 description];
  dictionaryRepresentation = [(HMMediaGroupProtoMediaDestinationAggregateData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addGroup:(id)group
{
  groupCopy = group;
  groups = self->_groups;
  v8 = groupCopy;
  if (!groups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_groups;
    self->_groups = v6;

    groupCopy = v8;
    groups = self->_groups;
  }

  [(NSMutableArray *)groups addObject:groupCopy];
}

- (void)addDestinationControllerData:(id)data
{
  dataCopy = data;
  destinationControllerDatas = self->_destinationControllerDatas;
  v8 = dataCopy;
  if (!destinationControllerDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_destinationControllerDatas;
    self->_destinationControllerDatas = v6;

    dataCopy = v8;
    destinationControllerDatas = self->_destinationControllerDatas;
  }

  [(NSMutableArray *)destinationControllerDatas addObject:dataCopy];
}

- (void)addDestination:(id)destination
{
  destinationCopy = destination;
  destinations = self->_destinations;
  v8 = destinationCopy;
  if (!destinations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_destinations;
    self->_destinations = v6;

    destinationCopy = v8;
    destinations = self->_destinations;
  }

  [(NSMutableArray *)destinations addObject:destinationCopy];
}

@end