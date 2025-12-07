@interface CPLFaceAnalysis
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFaceInstances:(id)instances;
- (void)addPetFaceInstances:(id)instances;
- (void)addTorsoFaceInstances:(id)instances;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CPLFaceAnalysis

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 36))
  {
    self->_completed = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = *(fromCopy + 1);
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CPLFaceAnalysis *)self addFaceInstances:*(*(&v29 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v5[2];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(CPLFaceAnalysis *)self addPetFaceInstances:*(*(&v25 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v5[3];
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(CPLFaceAnalysis *)self addTorsoFaceInstances:*(*(&v21 + 1) + 8 * v20++), v21];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_completed;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_faceInstances hash]^ v3;
  v5 = [(NSMutableArray *)self->_petFaceInstances hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_torsoFaceInstances hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 36) & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (!self->_completed)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if ((*(equalCopy + 32) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  faceInstances = self->_faceInstances;
  if (faceInstances | *(equalCopy + 1) && ![(NSMutableArray *)faceInstances isEqual:?])
  {
    goto LABEL_11;
  }

  petFaceInstances = self->_petFaceInstances;
  if (petFaceInstances | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)petFaceInstances isEqual:?])
    {
      goto LABEL_11;
    }
  }

  torsoFaceInstances = self->_torsoFaceInstances;
  if (torsoFaceInstances | *(equalCopy + 3))
  {
    v9 = [(NSMutableArray *)torsoFaceInstances isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_12:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_completed;
    *(v5 + 36) |= 1u;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = self->_faceInstances;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v34 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addFaceInstances:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = self->_petFaceInstances;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v30 + 1) + 8 * v17) copyWithZone:zone];
        [v6 addPetFaceInstances:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self->_torsoFaceInstances;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v26 + 1) + 8 * v23) copyWithZone:{zone, v26}];
        [v6 addTorsoFaceInstances:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[32] = self->_completed;
    toCopy[36] |= 1u;
  }

  v17 = toCopy;
  if ([(CPLFaceAnalysis *)self faceInstancesCount])
  {
    [v17 clearFaceInstances];
    faceInstancesCount = [(CPLFaceAnalysis *)self faceInstancesCount];
    if (faceInstancesCount)
    {
      v6 = faceInstancesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(CPLFaceAnalysis *)self faceInstancesAtIndex:i];
        [v17 addFaceInstances:v8];
      }
    }
  }

  if ([(CPLFaceAnalysis *)self petFaceInstancesCount])
  {
    [v17 clearPetFaceInstances];
    petFaceInstancesCount = [(CPLFaceAnalysis *)self petFaceInstancesCount];
    if (petFaceInstancesCount)
    {
      v10 = petFaceInstancesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(CPLFaceAnalysis *)self petFaceInstancesAtIndex:j];
        [v17 addPetFaceInstances:v12];
      }
    }
  }

  if ([(CPLFaceAnalysis *)self torsoFaceInstancesCount])
  {
    [v17 clearTorsoFaceInstances];
    torsoFaceInstancesCount = [(CPLFaceAnalysis *)self torsoFaceInstancesCount];
    if (torsoFaceInstancesCount)
    {
      v14 = torsoFaceInstancesCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(CPLFaceAnalysis *)self torsoFaceInstancesAtIndex:k];
        [v17 addTorsoFaceInstances:v16];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_faceInstances;
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
  v10 = self->_petFaceInstances;
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
  v15 = self->_torsoFaceInstances;
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
  v42 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
    [dictionary setObject:v4 forKey:@"completed"];
  }

  if ([(NSMutableArray *)self->_faceInstances count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_faceInstances, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = self->_faceInstances;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"faceInstances"];
  }

  if ([(NSMutableArray *)self->_petFaceInstances count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_petFaceInstances, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = self->_petFaceInstances;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"petFaceInstances"];
  }

  if ([(NSMutableArray *)self->_torsoFaceInstances count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_torsoFaceInstances, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = self->_torsoFaceInstances;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v27 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"torsoFaceInstances"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLFaceAnalysis;
  v4 = [(CPLFaceAnalysis *)&v8 description];
  dictionaryRepresentation = [(CPLFaceAnalysis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addTorsoFaceInstances:(id)instances
{
  instancesCopy = instances;
  torsoFaceInstances = self->_torsoFaceInstances;
  v8 = instancesCopy;
  if (!torsoFaceInstances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_torsoFaceInstances;
    self->_torsoFaceInstances = v6;

    instancesCopy = v8;
    torsoFaceInstances = self->_torsoFaceInstances;
  }

  [(NSMutableArray *)torsoFaceInstances addObject:instancesCopy];
}

- (void)addPetFaceInstances:(id)instances
{
  instancesCopy = instances;
  petFaceInstances = self->_petFaceInstances;
  v8 = instancesCopy;
  if (!petFaceInstances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_petFaceInstances;
    self->_petFaceInstances = v6;

    instancesCopy = v8;
    petFaceInstances = self->_petFaceInstances;
  }

  [(NSMutableArray *)petFaceInstances addObject:instancesCopy];
}

- (void)addFaceInstances:(id)instances
{
  instancesCopy = instances;
  faceInstances = self->_faceInstances;
  v8 = instancesCopy;
  if (!faceInstances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_faceInstances;
    self->_faceInstances = v6;

    instancesCopy = v8;
    faceInstances = self->_faceInstances;
  }

  [(NSMutableArray *)faceInstances addObject:instancesCopy];
}

@end