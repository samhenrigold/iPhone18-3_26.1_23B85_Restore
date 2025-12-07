@interface SIRINLUEXTERNALNLContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActiveTasks:(id)tasks;
- (void)addExecutedTasks:(id)tasks;
- (void)addSalientEntities:(id)entities;
- (void)addSystemDialogActs:(id)acts;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLContext

- (void)mergeFrom:(id)from
{
  v47 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  systemDialogActGroup = self->_systemDialogActGroup;
  v6 = *(fromCopy + 4);
  if (systemDialogActGroup)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALNLContext *)self setSystemDialogActGroup:?];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = *(fromCopy + 1);
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

        [(SIRINLUEXTERNALNLContext *)self addActiveTasks:*(*(&v39 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = *(fromCopy + 2);
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

        [(SIRINLUEXTERNALNLContext *)self addExecutedTasks:*(*(&v35 + 1) + 8 * j)];
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

        [(SIRINLUEXTERNALNLContext *)self addSalientEntities:*(*(&v31 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v19);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = *(fromCopy + 5);
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

        [(SIRINLUEXTERNALNLContext *)self addSystemDialogActs:*(*(&v27 + 1) + 8 * m), v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v24);
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALSystemDialogActGroup *)self->_systemDialogActGroup hash];
  v4 = [(NSMutableArray *)self->_activeTasks hash]^ v3;
  v5 = [(NSMutableArray *)self->_executedTasks hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_salientEntities hash];
  return v6 ^ [(NSMutableArray *)self->_systemDialogActs hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((systemDialogActGroup = self->_systemDialogActGroup, !(systemDialogActGroup | equalCopy[4])) || -[SIRINLUEXTERNALSystemDialogActGroup isEqual:](systemDialogActGroup, "isEqual:")) && ((activeTasks = self->_activeTasks, !(activeTasks | equalCopy[1])) || -[NSMutableArray isEqual:](activeTasks, "isEqual:")) && ((executedTasks = self->_executedTasks, !(executedTasks | equalCopy[2])) || -[NSMutableArray isEqual:](executedTasks, "isEqual:")) && ((salientEntities = self->_salientEntities, !(salientEntities | equalCopy[3])) || -[NSMutableArray isEqual:](salientEntities, "isEqual:")))
  {
    systemDialogActs = self->_systemDialogActs;
    if (systemDialogActs | equalCopy[5])
    {
      v10 = [(NSMutableArray *)systemDialogActs isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALSystemDialogActGroup *)self->_systemDialogActGroup copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = self->_activeTasks;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      v12 = 0;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v45 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addActiveTasks:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v10);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = self->_executedTasks;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      v18 = 0;
      do
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v41 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addExecutedTasks:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v16);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = self->_salientEntities;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      v24 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v37 + 1) + 8 * v24) copyWithZone:zone];
        [v5 addSalientEntities:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v22);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = self->_systemDialogActs;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      v30 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v33 + 1) + 8 * v30) copyWithZone:{zone, v33}];
        [v5 addSystemDialogActs:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v28);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_systemDialogActGroup)
  {
    [toCopy setSystemDialogActGroup:?];
  }

  if ([(SIRINLUEXTERNALNLContext *)self activeTasksCount])
  {
    [toCopy clearActiveTasks];
    activeTasksCount = [(SIRINLUEXTERNALNLContext *)self activeTasksCount];
    if (activeTasksCount)
    {
      v5 = activeTasksCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALNLContext *)self activeTasksAtIndex:i];
        [toCopy addActiveTasks:v7];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLContext *)self executedTasksCount])
  {
    [toCopy clearExecutedTasks];
    executedTasksCount = [(SIRINLUEXTERNALNLContext *)self executedTasksCount];
    if (executedTasksCount)
    {
      v9 = executedTasksCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUEXTERNALNLContext *)self executedTasksAtIndex:j];
        [toCopy addExecutedTasks:v11];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLContext *)self salientEntitiesCount])
  {
    [toCopy clearSalientEntities];
    salientEntitiesCount = [(SIRINLUEXTERNALNLContext *)self salientEntitiesCount];
    if (salientEntitiesCount)
    {
      v13 = salientEntitiesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUEXTERNALNLContext *)self salientEntitiesAtIndex:k];
        [toCopy addSalientEntities:v15];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLContext *)self systemDialogActsCount])
  {
    [toCopy clearSystemDialogActs];
    systemDialogActsCount = [(SIRINLUEXTERNALNLContext *)self systemDialogActsCount];
    if (systemDialogActsCount)
    {
      v17 = systemDialogActsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUEXTERNALNLContext *)self systemDialogActsAtIndex:m];
        [toCopy addSystemDialogActs:v19];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_systemDialogActGroup)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_activeTasks;
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
  v10 = self->_executedTasks;
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
  v15 = self->_salientEntities;
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
  v20 = self->_systemDialogActs;
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
  v55 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  systemDialogActGroup = self->_systemDialogActGroup;
  if (systemDialogActGroup)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"system_dialog_act_group"];
  }

  if ([(NSMutableArray *)self->_activeTasks count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_activeTasks, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = self->_activeTasks;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v48;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"active_tasks"];
  }

  if ([(NSMutableArray *)self->_executedTasks count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_executedTasks, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = self->_executedTasks;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"executed_tasks"];
  }

  if ([(NSMutableArray *)self->_salientEntities count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_salientEntities, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v21 = self->_salientEntities;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation4 = [*(*(&v39 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation4];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v23);
    }

    [dictionary setObject:v20 forKey:@"salient_entities"];
  }

  if ([(NSMutableArray *)self->_systemDialogActs count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_systemDialogActs, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = self->_systemDialogActs;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v36;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v36 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation5 = [*(*(&v35 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation5];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
      }

      while (v30);
    }

    [dictionary setObject:v27 forKey:@"system_dialog_acts"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLContext;
  v4 = [(SIRINLUEXTERNALNLContext *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addSystemDialogActs:(id)acts
{
  actsCopy = acts;
  systemDialogActs = self->_systemDialogActs;
  v8 = actsCopy;
  if (!systemDialogActs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_systemDialogActs;
    self->_systemDialogActs = v6;

    actsCopy = v8;
    systemDialogActs = self->_systemDialogActs;
  }

  [(NSMutableArray *)systemDialogActs addObject:actsCopy];
}

- (void)addSalientEntities:(id)entities
{
  entitiesCopy = entities;
  salientEntities = self->_salientEntities;
  v8 = entitiesCopy;
  if (!salientEntities)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_salientEntities;
    self->_salientEntities = v6;

    entitiesCopy = v8;
    salientEntities = self->_salientEntities;
  }

  [(NSMutableArray *)salientEntities addObject:entitiesCopy];
}

- (void)addExecutedTasks:(id)tasks
{
  tasksCopy = tasks;
  executedTasks = self->_executedTasks;
  v8 = tasksCopy;
  if (!executedTasks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_executedTasks;
    self->_executedTasks = v6;

    tasksCopy = v8;
    executedTasks = self->_executedTasks;
  }

  [(NSMutableArray *)executedTasks addObject:tasksCopy];
}

- (void)addActiveTasks:(id)tasks
{
  tasksCopy = tasks;
  activeTasks = self->_activeTasks;
  v8 = tasksCopy;
  if (!activeTasks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_activeTasks;
    self->_activeTasks = v6;

    tasksCopy = v8;
    activeTasks = self->_activeTasks;
  }

  [(NSMutableArray *)activeTasks addObject:tasksCopy];
}

@end