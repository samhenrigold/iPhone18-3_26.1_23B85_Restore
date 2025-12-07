@interface SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext
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

@implementation SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext

- (void)mergeFrom:(id)from
{
  v45 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = fromCopy[1];
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

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self addActiveTasks:*(*(&v37 + 1) + 8 * v9++)];
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
  v10 = fromCopy[2];
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

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self addExecutedTasks:*(*(&v33 + 1) + 8 * v14++)];
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
  v15 = fromCopy[4];
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

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self addSystemDialogActs:*(*(&v29 + 1) + 8 * v19++)];
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
  v20 = fromCopy[3];
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

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self addSalientEntities:*(*(&v25 + 1) + 8 * v24++), v25];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_activeTasks hash];
  v4 = [(NSMutableArray *)self->_executedTasks hash]^ v3;
  v5 = [(NSMutableArray *)self->_systemDialogActs hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_salientEntities hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((activeTasks = self->_activeTasks, !(activeTasks | equalCopy[1])) || -[NSMutableArray isEqual:](activeTasks, "isEqual:")) && ((executedTasks = self->_executedTasks, !(executedTasks | equalCopy[2])) || -[NSMutableArray isEqual:](executedTasks, "isEqual:")) && ((systemDialogActs = self->_systemDialogActs, !(systemDialogActs | equalCopy[4])) || -[NSMutableArray isEqual:](systemDialogActs, "isEqual:")))
  {
    salientEntities = self->_salientEntities;
    if (salientEntities | equalCopy[3])
    {
      v9 = [(NSMutableArray *)salientEntities isEqual:?];
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
  v51 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = self->_activeTasks;
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
        [v5 addActiveTasks:v11];

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
  v12 = self->_executedTasks;
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
        [v5 addExecutedTasks:v17];

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
  v18 = self->_systemDialogActs;
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
        [v5 addSystemDialogActs:v23];

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
  v24 = self->_salientEntities;
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
        [v5 addSalientEntities:v29];

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
  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self activeTasksCount])
  {
    [toCopy clearActiveTasks];
    activeTasksCount = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self activeTasksCount];
    if (activeTasksCount)
    {
      v5 = activeTasksCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self activeTasksAtIndex:i];
        [toCopy addActiveTasks:v7];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self executedTasksCount])
  {
    [toCopy clearExecutedTasks];
    executedTasksCount = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self executedTasksCount];
    if (executedTasksCount)
    {
      v9 = executedTasksCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self executedTasksAtIndex:j];
        [toCopy addExecutedTasks:v11];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self systemDialogActsCount])
  {
    [toCopy clearSystemDialogActs];
    systemDialogActsCount = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self systemDialogActsCount];
    if (systemDialogActsCount)
    {
      v13 = systemDialogActsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self systemDialogActsAtIndex:k];
        [toCopy addSystemDialogActs:v15];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self salientEntitiesCount])
  {
    [toCopy clearSalientEntities];
    salientEntitiesCount = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self salientEntitiesCount];
    if (salientEntitiesCount)
    {
      v17 = salientEntitiesCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self salientEntitiesAtIndex:m];
        [toCopy addSalientEntities:v19];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
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
  v15 = self->_systemDialogActs;
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
  v20 = self->_salientEntities;
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
  v53 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_activeTasks count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_activeTasks, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v5 = self->_activeTasks;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v46;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v46 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"active_tasks"];
  }

  if ([(NSMutableArray *)self->_executedTasks count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_executedTasks, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v12 = self->_executedTasks;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v42;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v41 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"executed_tasks"];
  }

  if ([(NSMutableArray *)self->_systemDialogActs count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_systemDialogActs, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = self->_systemDialogActs;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v37 + 1) + 8 * k) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation3];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"system_dialog_acts"];
  }

  if ([(NSMutableArray *)self->_salientEntities count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_salientEntities, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = self->_salientEntities;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation4 = [*(*(&v33 + 1) + 8 * m) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation4];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v28);
    }

    [dictionary setObject:v25 forKey:@"salient_entities"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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