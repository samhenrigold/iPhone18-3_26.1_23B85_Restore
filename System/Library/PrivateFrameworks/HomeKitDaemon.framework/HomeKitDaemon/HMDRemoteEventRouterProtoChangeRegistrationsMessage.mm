@interface HMDRemoteEventRouterProtoChangeRegistrationsMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTopicAdditions:(id)additions;
- (void)addTopicFilterAdditions:(id)additions;
- (void)addTopicFilterRemovals:(id)removals;
- (void)addTopicRemovals:(id)removals;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMDRemoteEventRouterProtoChangeRegistrationsMessage

- (void)mergeFrom:(id)from
{
  v45 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self addTopicFilterAdditions:*(*(&v37 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = fromCopy[3];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self addTopicFilterRemovals:*(*(&v33 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = fromCopy[1];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self addTopicAdditions:*(*(&v29 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = fromCopy[4];
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self addTopicRemovals:*(*(&v25 + 1) + 8 * v24++), v25];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_topicFilterAdditions hash];
  v4 = [(NSMutableArray *)self->_topicFilterRemovals hash]^ v3;
  v5 = [(NSMutableArray *)self->_topicAdditions hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_topicRemovals hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((topicFilterAdditions = self->_topicFilterAdditions, !(topicFilterAdditions | equalCopy[2])) || -[NSMutableArray isEqual:](topicFilterAdditions, "isEqual:")) && ((topicFilterRemovals = self->_topicFilterRemovals, !(topicFilterRemovals | equalCopy[3])) || -[NSMutableArray isEqual:](topicFilterRemovals, "isEqual:")) && ((topicAdditions = self->_topicAdditions, !(topicAdditions | equalCopy[1])) || -[NSMutableArray isEqual:](topicAdditions, "isEqual:")))
  {
    topicRemovals = self->_topicRemovals;
    if (topicRemovals | equalCopy[4])
    {
      v9 = [(NSMutableArray *)topicRemovals isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = self->_topicFilterAdditions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v43 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addTopicFilterAdditions:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = self->_topicFilterRemovals;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      v16 = 0;
      do
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v39 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addTopicFilterRemovals:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v14);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = self->_topicAdditions;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      v22 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v35 + 1) + 8 * v22) copyWithZone:zone];
        [v5 addTopicAdditions:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v20);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = self->_topicRemovals;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      v28 = 0;
      do
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v31 + 1) + 8 * v28) copyWithZone:{zone, v31}];
        [v5 addTopicRemovals:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v26);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterAdditionsCount])
  {
    [toCopy clearTopicFilterAdditions];
    topicFilterAdditionsCount = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterAdditionsCount];
    if (topicFilterAdditionsCount)
    {
      v5 = topicFilterAdditionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterAdditionsAtIndex:i];
        [toCopy addTopicFilterAdditions:v7];
      }
    }
  }

  if ([(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterRemovalsCount])
  {
    [toCopy clearTopicFilterRemovals];
    topicFilterRemovalsCount = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterRemovalsCount];
    if (topicFilterRemovalsCount)
    {
      v9 = topicFilterRemovalsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterRemovalsAtIndex:j];
        [toCopy addTopicFilterRemovals:v11];
      }
    }
  }

  if ([(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicAdditionsCount])
  {
    [toCopy clearTopicAdditions];
    topicAdditionsCount = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicAdditionsCount];
    if (topicAdditionsCount)
    {
      v13 = topicAdditionsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicAdditionsAtIndex:k];
        [toCopy addTopicAdditions:v15];
      }
    }
  }

  if ([(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicRemovalsCount])
  {
    [toCopy clearTopicRemovals];
    topicRemovalsCount = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicRemovalsCount];
    if (topicRemovalsCount)
    {
      v17 = topicRemovalsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicRemovalsAtIndex:m];
        [toCopy addTopicRemovals:v19];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = self->_topicFilterAdditions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_topicFilterRemovals;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_topicAdditions;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_topicRemovals;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  topicFilterAdditions = self->_topicFilterAdditions;
  if (topicFilterAdditions)
  {
    [dictionary setObject:topicFilterAdditions forKey:@"topicFilterAdditions"];
  }

  topicFilterRemovals = self->_topicFilterRemovals;
  if (topicFilterRemovals)
  {
    [v4 setObject:topicFilterRemovals forKey:@"topicFilterRemovals"];
  }

  if ([(NSMutableArray *)self->_topicAdditions count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_topicAdditions, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = self->_topicAdditions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"topicAdditions"];
  }

  if ([(NSMutableArray *)self->_topicRemovals count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_topicRemovals, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_topicRemovals;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"topicRemovals"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDRemoteEventRouterProtoChangeRegistrationsMessage;
  v4 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)&v8 description];
  dictionaryRepresentation = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addTopicRemovals:(id)removals
{
  removalsCopy = removals;
  topicRemovals = self->_topicRemovals;
  v8 = removalsCopy;
  if (!topicRemovals)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicRemovals;
    self->_topicRemovals = v6;

    removalsCopy = v8;
    topicRemovals = self->_topicRemovals;
  }

  [(NSMutableArray *)topicRemovals addObject:removalsCopy];
}

- (void)addTopicAdditions:(id)additions
{
  additionsCopy = additions;
  topicAdditions = self->_topicAdditions;
  v8 = additionsCopy;
  if (!topicAdditions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicAdditions;
    self->_topicAdditions = v6;

    additionsCopy = v8;
    topicAdditions = self->_topicAdditions;
  }

  [(NSMutableArray *)topicAdditions addObject:additionsCopy];
}

- (void)addTopicFilterRemovals:(id)removals
{
  removalsCopy = removals;
  topicFilterRemovals = self->_topicFilterRemovals;
  v8 = removalsCopy;
  if (!topicFilterRemovals)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicFilterRemovals;
    self->_topicFilterRemovals = v6;

    removalsCopy = v8;
    topicFilterRemovals = self->_topicFilterRemovals;
  }

  [(NSMutableArray *)topicFilterRemovals addObject:removalsCopy];
}

- (void)addTopicFilterAdditions:(id)additions
{
  additionsCopy = additions;
  topicFilterAdditions = self->_topicFilterAdditions;
  v8 = additionsCopy;
  if (!topicFilterAdditions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicFilterAdditions;
    self->_topicFilterAdditions = v6;

    additionsCopy = v8;
    topicFilterAdditions = self->_topicFilterAdditions;
  }

  [(NSMutableArray *)topicFilterAdditions addObject:additionsCopy];
}

@end