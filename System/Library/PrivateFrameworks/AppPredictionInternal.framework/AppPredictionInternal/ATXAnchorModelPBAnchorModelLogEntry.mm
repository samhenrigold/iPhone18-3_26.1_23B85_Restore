@interface ATXAnchorModelPBAnchorModelLogEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNegativeActions:(id)actions;
- (void)addNegativeAppLaunches:(id)launches;
- (void)addPositiveActions:(id)actions;
- (void)addPositiveAppLaunches:(id)launches;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXAnchorModelPBAnchorModelLogEntry

- (void)addPositiveAppLaunches:(id)launches
{
  launchesCopy = launches;
  positiveAppLaunches = self->_positiveAppLaunches;
  v8 = launchesCopy;
  if (!positiveAppLaunches)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_positiveAppLaunches;
    self->_positiveAppLaunches = v6;

    launchesCopy = v8;
    positiveAppLaunches = self->_positiveAppLaunches;
  }

  [(NSMutableArray *)positiveAppLaunches addObject:launchesCopy];
}

- (void)addPositiveActions:(id)actions
{
  actionsCopy = actions;
  positiveActions = self->_positiveActions;
  v8 = actionsCopy;
  if (!positiveActions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_positiveActions;
    self->_positiveActions = v6;

    actionsCopy = v8;
    positiveActions = self->_positiveActions;
  }

  [(NSMutableArray *)positiveActions addObject:actionsCopy];
}

- (void)addNegativeAppLaunches:(id)launches
{
  launchesCopy = launches;
  negativeAppLaunches = self->_negativeAppLaunches;
  v8 = launchesCopy;
  if (!negativeAppLaunches)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_negativeAppLaunches;
    self->_negativeAppLaunches = v6;

    launchesCopy = v8;
    negativeAppLaunches = self->_negativeAppLaunches;
  }

  [(NSMutableArray *)negativeAppLaunches addObject:launchesCopy];
}

- (void)addNegativeActions:(id)actions
{
  actionsCopy = actions;
  negativeActions = self->_negativeActions;
  v8 = actionsCopy;
  if (!negativeActions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_negativeActions;
    self->_negativeActions = v6;

    actionsCopy = v8;
    negativeActions = self->_negativeActions;
  }

  [(NSMutableArray *)negativeActions addObject:actionsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBAnchorModelLogEntry;
  v4 = [(ATXAnchorModelPBAnchorModelLogEntry *)&v8 description];
  dictionaryRepresentation = [(ATXAnchorModelPBAnchorModelLogEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v57 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  userId = self->_userId;
  if (userId)
  {
    [dictionary setObject:userId forKey:@"userId"];
  }

  anchor = self->_anchor;
  if (anchor)
  {
    dictionaryRepresentation = [(ATXAnchorModelPBAnchorMetadata *)anchor dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"anchor"];
  }

  if ([(NSMutableArray *)self->_positiveAppLaunches count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_positiveAppLaunches, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v9 = self->_positiveAppLaunches;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v50;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v49 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"positiveAppLaunches"];
  }

  if ([(NSMutableArray *)self->_positiveActions count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_positiveActions, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = self->_positiveActions;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v45 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation3];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"positiveActions"];
  }

  if ([(NSMutableArray *)self->_negativeAppLaunches count])
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_negativeAppLaunches, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v23 = self->_negativeAppLaunches;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation4 = [*(*(&v41 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation4];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"negativeAppLaunches"];
  }

  if ([(NSMutableArray *)self->_negativeActions count])
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_negativeActions, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = self->_negativeActions;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v38;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v38 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation5 = [*(*(&v37 + 1) + 8 * m) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation5];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v32);
    }

    [v4 setObject:v29 forKey:@"negativeActions"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_userId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_anchor)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_positiveAppLaunches;
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

        PBDataWriterWriteSubmessage();
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
  v10 = self->_positiveActions;
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

        PBDataWriterWriteSubmessage();
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
  v15 = self->_negativeAppLaunches;
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
  v20 = self->_negativeActions;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_userId)
  {
    [toCopy setUserId:?];
  }

  if (self->_anchor)
  {
    [toCopy setAnchor:?];
  }

  if ([(ATXAnchorModelPBAnchorModelLogEntry *)self positiveAppLaunchesCount])
  {
    [toCopy clearPositiveAppLaunches];
    positiveAppLaunchesCount = [(ATXAnchorModelPBAnchorModelLogEntry *)self positiveAppLaunchesCount];
    if (positiveAppLaunchesCount)
    {
      v5 = positiveAppLaunchesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXAnchorModelPBAnchorModelLogEntry *)self positiveAppLaunchesAtIndex:i];
        [toCopy addPositiveAppLaunches:v7];
      }
    }
  }

  if ([(ATXAnchorModelPBAnchorModelLogEntry *)self positiveActionsCount])
  {
    [toCopy clearPositiveActions];
    positiveActionsCount = [(ATXAnchorModelPBAnchorModelLogEntry *)self positiveActionsCount];
    if (positiveActionsCount)
    {
      v9 = positiveActionsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ATXAnchorModelPBAnchorModelLogEntry *)self positiveActionsAtIndex:j];
        [toCopy addPositiveActions:v11];
      }
    }
  }

  if ([(ATXAnchorModelPBAnchorModelLogEntry *)self negativeAppLaunchesCount])
  {
    [toCopy clearNegativeAppLaunches];
    negativeAppLaunchesCount = [(ATXAnchorModelPBAnchorModelLogEntry *)self negativeAppLaunchesCount];
    if (negativeAppLaunchesCount)
    {
      v13 = negativeAppLaunchesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(ATXAnchorModelPBAnchorModelLogEntry *)self negativeAppLaunchesAtIndex:k];
        [toCopy addNegativeAppLaunches:v15];
      }
    }
  }

  if ([(ATXAnchorModelPBAnchorModelLogEntry *)self negativeActionsCount])
  {
    [toCopy clearNegativeActions];
    negativeActionsCount = [(ATXAnchorModelPBAnchorModelLogEntry *)self negativeActionsCount];
    if (negativeActionsCount)
    {
      v17 = negativeActionsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(ATXAnchorModelPBAnchorModelLogEntry *)self negativeActionsAtIndex:m];
        [toCopy addNegativeActions:v19];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_userId copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(ATXAnchorModelPBAnchorMetadata *)self->_anchor copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = self->_positiveAppLaunches;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      v14 = 0;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v47 + 1) + 8 * v14) copyWithZone:zone];
        [v5 addPositiveAppLaunches:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = self->_positiveActions;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v43 + 1) + 8 * v20) copyWithZone:zone];
        [v5 addPositiveActions:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = self->_negativeAppLaunches;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      v26 = 0;
      do
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v39 + 1) + 8 * v26) copyWithZone:zone];
        [v5 addNegativeAppLaunches:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v24);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_negativeActions;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v35 + 1) + 8 * v32) copyWithZone:{zone, v35}];
        [v5 addNegativeActions:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v30);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((userId = self->_userId, !(userId | equalCopy[6])) || -[NSString isEqual:](userId, "isEqual:")) && ((anchor = self->_anchor, !(anchor | equalCopy[1])) || -[ATXAnchorModelPBAnchorMetadata isEqual:](anchor, "isEqual:")) && ((positiveAppLaunches = self->_positiveAppLaunches, !(positiveAppLaunches | equalCopy[5])) || -[NSMutableArray isEqual:](positiveAppLaunches, "isEqual:")) && ((positiveActions = self->_positiveActions, !(positiveActions | equalCopy[4])) || -[NSMutableArray isEqual:](positiveActions, "isEqual:")) && ((negativeAppLaunches = self->_negativeAppLaunches, !(negativeAppLaunches | equalCopy[3])) || -[NSMutableArray isEqual:](negativeAppLaunches, "isEqual:")))
  {
    negativeActions = self->_negativeActions;
    if (negativeActions | equalCopy[2])
    {
      v11 = [(NSMutableArray *)negativeActions isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_userId hash];
  v4 = [(ATXAnchorModelPBAnchorMetadata *)self->_anchor hash]^ v3;
  v5 = [(NSMutableArray *)self->_positiveAppLaunches hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_positiveActions hash];
  v7 = [(NSMutableArray *)self->_negativeAppLaunches hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_negativeActions hash];
}

- (void)mergeFrom:(id)from
{
  v47 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 6))
  {
    [(ATXAnchorModelPBAnchorModelLogEntry *)self setUserId:?];
  }

  anchor = self->_anchor;
  v6 = *(fromCopy + 1);
  if (anchor)
  {
    if (v6)
    {
      [(ATXAnchorModelPBAnchorMetadata *)anchor mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ATXAnchorModelPBAnchorModelLogEntry *)self setAnchor:?];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = *(fromCopy + 5);
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ATXAnchorModelPBAnchorModelLogEntry *)self addPositiveAppLaunches:*(*(&v39 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = *(fromCopy + 4);
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ATXAnchorModelPBAnchorModelLogEntry *)self addPositiveActions:*(*(&v35 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v14);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = *(fromCopy + 3);
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(ATXAnchorModelPBAnchorModelLogEntry *)self addNegativeAppLaunches:*(*(&v31 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v19);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = *(fromCopy + 2);
  v23 = [v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v28;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(ATXAnchorModelPBAnchorModelLogEntry *)self addNegativeActions:*(*(&v27 + 1) + 8 * m), v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v24);
  }
}

@end