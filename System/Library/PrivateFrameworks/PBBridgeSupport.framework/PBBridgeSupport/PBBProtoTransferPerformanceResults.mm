@interface PBBProtoTransferPerformanceResults
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMacroActivites:(id)activites;
- (void)addMeasures:(id)measures;
- (void)addMilestones:(id)milestones;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoTransferPerformanceResults

- (void)addMilestones:(id)milestones
{
  milestonesCopy = milestones;
  milestones = self->_milestones;
  v8 = milestonesCopy;
  if (!milestones)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_milestones;
    self->_milestones = v6;

    milestonesCopy = v8;
    milestones = self->_milestones;
  }

  [(NSMutableArray *)milestones addObject:milestonesCopy];
}

- (void)addMeasures:(id)measures
{
  measuresCopy = measures;
  measures = self->_measures;
  v8 = measuresCopy;
  if (!measures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_measures;
    self->_measures = v6;

    measuresCopy = v8;
    measures = self->_measures;
  }

  [(NSMutableArray *)measures addObject:measuresCopy];
}

- (void)addMacroActivites:(id)activites
{
  activitesCopy = activites;
  macroActivites = self->_macroActivites;
  v8 = activitesCopy;
  if (!macroActivites)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_macroActivites;
    self->_macroActivites = v6;

    activitesCopy = v8;
    macroActivites = self->_macroActivites;
  }

  [(NSMutableArray *)macroActivites addObject:activitesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoTransferPerformanceResults;
  v4 = [(PBBProtoTransferPerformanceResults *)&v8 description];
  dictionaryRepresentation = [(PBBProtoTransferPerformanceResults *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_milestones count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_milestones, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = self->_milestones;
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

    [dictionary setObject:v4 forKey:@"milestones"];
  }

  if ([(NSMutableArray *)self->_measures count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_measures, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = self->_measures;
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

    [dictionary setObject:v11 forKey:@"measures"];
  }

  if ([(NSMutableArray *)self->_macroActivites count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_macroActivites, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = self->_macroActivites;
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

    [dictionary setObject:v18 forKey:@"macroActivites"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_milestones;
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
  v10 = self->_measures;
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
  v15 = self->_macroActivites;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(PBBProtoTransferPerformanceResults *)self milestonesCount])
  {
    [toCopy clearMilestones];
    milestonesCount = [(PBBProtoTransferPerformanceResults *)self milestonesCount];
    if (milestonesCount)
    {
      v5 = milestonesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PBBProtoTransferPerformanceResults *)self milestonesAtIndex:i];
        [toCopy addMilestones:v7];
      }
    }
  }

  if ([(PBBProtoTransferPerformanceResults *)self measuresCount])
  {
    [toCopy clearMeasures];
    measuresCount = [(PBBProtoTransferPerformanceResults *)self measuresCount];
    if (measuresCount)
    {
      v9 = measuresCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PBBProtoTransferPerformanceResults *)self measuresAtIndex:j];
        [toCopy addMeasures:v11];
      }
    }
  }

  if ([(PBBProtoTransferPerformanceResults *)self macroActivitesCount])
  {
    [toCopy clearMacroActivites];
    macroActivitesCount = [(PBBProtoTransferPerformanceResults *)self macroActivitesCount];
    if (macroActivitesCount)
    {
      v13 = macroActivitesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(PBBProtoTransferPerformanceResults *)self macroActivitesAtIndex:k];
        [toCopy addMacroActivites:v15];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = self->_milestones;
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
        [v5 addMilestones:v11];

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
  v12 = self->_measures;
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
        [v5 addMeasures:v17];

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
  v18 = self->_macroActivites;
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
        [v5 addMacroActivites:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((milestones = self->_milestones, !(milestones | equalCopy[3])) || -[NSMutableArray isEqual:](milestones, "isEqual:")) && ((measures = self->_measures, !(measures | equalCopy[2])) || -[NSMutableArray isEqual:](measures, "isEqual:")))
  {
    macroActivites = self->_macroActivites;
    if (macroActivites | equalCopy[1])
    {
      v8 = [(NSMutableArray *)macroActivites isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_milestones hash];
  v4 = [(NSMutableArray *)self->_measures hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_macroActivites hash];
}

- (void)mergeFrom:(id)from
{
  v35 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = fromCopy[3];
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

        [(PBBProtoTransferPerformanceResults *)self addMilestones:*(*(&v28 + 1) + 8 * v9++)];
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
  v10 = fromCopy[2];
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

        [(PBBProtoTransferPerformanceResults *)self addMeasures:*(*(&v24 + 1) + 8 * v14++)];
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
  v15 = fromCopy[1];
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

        [(PBBProtoTransferPerformanceResults *)self addMacroActivites:*(*(&v20 + 1) + 8 * v19++), v20];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

@end