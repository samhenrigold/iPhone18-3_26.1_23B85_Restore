@interface SIRINLUEXTERNALTurnInput
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActiveTasks:(id)tasks;
- (void)addAsrOutputs:(id)outputs;
- (void)addExecutedTasks:(id)tasks;
- (void)addSalientEntities:(id)entities;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConnectedToCarPlayUltra:(BOOL)ultra;
- (void)setHasTapToEdit:(BOOL)edit;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALTurnInput

- (void)mergeFrom:(id)from
{
  v52 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  systemDialogActGroup = self->_systemDialogActGroup;
  v6 = *(fromCopy + 8);
  if (systemDialogActGroup)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALTurnInput *)self setSystemDialogActGroup:?];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = *(fromCopy + 7);
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALTurnInput *)self addSalientEntities:*(*(&v44 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v9);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = *(fromCopy + 2);
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUEXTERNALTurnInput *)self addActiveTasks:*(*(&v40 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v14);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = *(fromCopy + 5);
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(SIRINLUEXTERNALTurnInput *)self addExecutedTasks:*(*(&v36 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v19);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = *(fromCopy + 3);
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(SIRINLUEXTERNALTurnInput *)self addAsrOutputs:*(*(&v32 + 1) + 8 * m), v32];
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v24);
  }

  turnContext = self->_turnContext;
  v28 = *(fromCopy + 9);
  if (turnContext)
  {
    if (v28)
    {
      [(SIRINLUEXTERNALTurnContext *)turnContext mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(SIRINLUEXTERNALTurnInput *)self setTurnContext:?];
  }

  if (*(fromCopy + 6))
  {
    [(SIRINLUEXTERNALTurnInput *)self setLocale:?];
  }

  v29 = *(fromCopy + 84);
  if ((v29 & 4) != 0)
  {
    self->_tapToEdit = *(fromCopy + 81);
    *&self->_has |= 4u;
    v29 = *(fromCopy + 84);
  }

  if (v29)
  {
    self->_startTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  correctionOutcomeOverride = self->_correctionOutcomeOverride;
  v31 = *(fromCopy + 4);
  if (correctionOutcomeOverride)
  {
    if (v31)
    {
      [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcomeOverride mergeFrom:?];
    }
  }

  else if (v31)
  {
    [(SIRINLUEXTERNALTurnInput *)self setCorrectionOutcomeOverride:?];
  }

  if ((*(fromCopy + 84) & 2) != 0)
  {
    self->_connectedToCarPlayUltra = *(fromCopy + 80);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v14 = [(SIRINLUEXTERNALSystemDialogActGroup *)self->_systemDialogActGroup hash];
  v13 = [(NSMutableArray *)self->_salientEntities hash];
  v3 = [(NSMutableArray *)self->_activeTasks hash];
  v4 = [(NSMutableArray *)self->_executedTasks hash];
  v5 = [(NSMutableArray *)self->_asrOutputs hash];
  v6 = [(SIRINLUEXTERNALTurnContext *)self->_turnContext hash];
  v7 = [(NSString *)self->_locale hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_tapToEdit;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v9 = 2654435761u * self->_startTimestamp;
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcomeOverride hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_connectedToCarPlayUltra;
  }

  else
  {
    v11 = 0;
  }

  return v13 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  systemDialogActGroup = self->_systemDialogActGroup;
  if (systemDialogActGroup | *(equalCopy + 8))
  {
    if (![(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup isEqual:?])
    {
      goto LABEL_36;
    }
  }

  salientEntities = self->_salientEntities;
  if (salientEntities | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)salientEntities isEqual:?])
    {
      goto LABEL_36;
    }
  }

  activeTasks = self->_activeTasks;
  if (activeTasks | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)activeTasks isEqual:?])
    {
      goto LABEL_36;
    }
  }

  executedTasks = self->_executedTasks;
  if (executedTasks | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)executedTasks isEqual:?])
    {
      goto LABEL_36;
    }
  }

  asrOutputs = self->_asrOutputs;
  if (asrOutputs | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)asrOutputs isEqual:?])
    {
      goto LABEL_36;
    }
  }

  turnContext = self->_turnContext;
  if (turnContext | *(equalCopy + 9))
  {
    if (![(SIRINLUEXTERNALTurnContext *)turnContext isEqual:?])
    {
      goto LABEL_36;
    }
  }

  locale = self->_locale;
  if (locale | *(equalCopy + 6))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_36;
    }
  }

  has = self->_has;
  v13 = *(equalCopy + 84);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 84) & 4) == 0)
    {
      goto LABEL_36;
    }

    if (self->_tapToEdit)
    {
      if ((*(equalCopy + 81) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(equalCopy + 81))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 84) & 4) != 0)
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_startTimestamp != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_36;
  }

  correctionOutcomeOverride = self->_correctionOutcomeOverride;
  if (correctionOutcomeOverride | *(equalCopy + 4))
  {
    if (![(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcomeOverride isEqual:?])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = *(equalCopy + 84);
  }

  v15 = (v13 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v13 & 2) != 0)
    {
      if (self->_connectedToCarPlayUltra)
      {
        if (*(equalCopy + 80))
        {
          goto LABEL_39;
        }
      }

      else if (!*(equalCopy + 80))
      {
LABEL_39:
        v15 = 1;
        goto LABEL_37;
      }
    }

LABEL_36:
    v15 = 0;
  }

LABEL_37:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALSystemDialogActGroup *)self->_systemDialogActGroup copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = self->_salientEntities;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v53;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v52 + 1) + 8 * i) copyWithZone:zone];
        [v5 addSalientEntities:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v10);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = self->_activeTasks;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v48 + 1) + 8 * j) copyWithZone:zone];
        [v5 addActiveTasks:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v16);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = self->_executedTasks;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v44 + 1) + 8 * k) copyWithZone:zone];
        [v5 addExecutedTasks:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v22);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = self->_asrOutputs;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v40 + 1) + 8 * m) copyWithZone:{zone, v40}];
        [v5 addAsrOutputs:v31];
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v28);
  }

  v32 = [(SIRINLUEXTERNALTurnContext *)self->_turnContext copyWithZone:zone];
  v33 = *(v5 + 72);
  *(v5 + 72) = v32;

  v34 = [(NSString *)self->_locale copyWithZone:zone];
  v35 = *(v5 + 48);
  *(v5 + 48) = v34;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 81) = self->_tapToEdit;
    *(v5 + 84) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_startTimestamp;
    *(v5 + 84) |= 1u;
  }

  v37 = [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcomeOverride copyWithZone:zone, v40];
  v38 = *(v5 + 32);
  *(v5 + 32) = v37;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 80) = self->_connectedToCarPlayUltra;
    *(v5 + 84) |= 2u;
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

  if ([(SIRINLUEXTERNALTurnInput *)self salientEntitiesCount])
  {
    [toCopy clearSalientEntities];
    salientEntitiesCount = [(SIRINLUEXTERNALTurnInput *)self salientEntitiesCount];
    if (salientEntitiesCount)
    {
      v5 = salientEntitiesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALTurnInput *)self salientEntitiesAtIndex:i];
        [toCopy addSalientEntities:v7];
      }
    }
  }

  if ([(SIRINLUEXTERNALTurnInput *)self activeTasksCount])
  {
    [toCopy clearActiveTasks];
    activeTasksCount = [(SIRINLUEXTERNALTurnInput *)self activeTasksCount];
    if (activeTasksCount)
    {
      v9 = activeTasksCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUEXTERNALTurnInput *)self activeTasksAtIndex:j];
        [toCopy addActiveTasks:v11];
      }
    }
  }

  if ([(SIRINLUEXTERNALTurnInput *)self executedTasksCount])
  {
    [toCopy clearExecutedTasks];
    executedTasksCount = [(SIRINLUEXTERNALTurnInput *)self executedTasksCount];
    if (executedTasksCount)
    {
      v13 = executedTasksCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUEXTERNALTurnInput *)self executedTasksAtIndex:k];
        [toCopy addExecutedTasks:v15];
      }
    }
  }

  if ([(SIRINLUEXTERNALTurnInput *)self asrOutputsCount])
  {
    [toCopy clearAsrOutputs];
    asrOutputsCount = [(SIRINLUEXTERNALTurnInput *)self asrOutputsCount];
    if (asrOutputsCount)
    {
      v17 = asrOutputsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUEXTERNALTurnInput *)self asrOutputsAtIndex:m];
        [toCopy addAsrOutputs:v19];
      }
    }
  }

  if (self->_turnContext)
  {
    [toCopy setTurnContext:?];
  }

  v20 = toCopy;
  if (self->_locale)
  {
    [toCopy setLocale:?];
    v20 = toCopy;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v20[81] = self->_tapToEdit;
    v20[84] |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v20 + 1) = self->_startTimestamp;
    v20[84] |= 1u;
  }

  if (self->_correctionOutcomeOverride)
  {
    [toCopy setCorrectionOutcomeOverride:?];
    v20 = toCopy;
  }

  if ((*&self->_has & 2) != 0)
  {
    v20[80] = self->_connectedToCarPlayUltra;
    v20[84] |= 2u;
  }
}

- (void)writeTo:(id)to
{
  v46 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_systemDialogActGroup)
  {
    PBDataWriterWriteSubmessage();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self->_salientEntities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v7);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = self->_activeTasks;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = self->_executedTasks;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v17);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = self->_asrOutputs;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v22);
  }

  if (self->_turnContext)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_correctionOutcomeOverride)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  v64 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  systemDialogActGroup = self->_systemDialogActGroup;
  if (systemDialogActGroup)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"system_dialog_act_group"];
  }

  if ([(NSMutableArray *)self->_salientEntities count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_salientEntities, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v7 = self->_salientEntities;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v57;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v57 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v56 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"salient_entities"];
  }

  if ([(NSMutableArray *)self->_activeTasks count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_activeTasks, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v14 = self->_activeTasks;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v53;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v53 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v52 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"active_tasks"];
  }

  if ([(NSMutableArray *)self->_executedTasks count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_executedTasks, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = self->_executedTasks;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v49;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation4 = [*(*(&v48 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation4];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v23);
    }

    [dictionary setObject:v20 forKey:@"executed_tasks"];
  }

  if ([(NSMutableArray *)self->_asrOutputs count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_asrOutputs, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v28 = self->_asrOutputs;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v45;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation5 = [*(*(&v44 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation5];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v44 objects:v60 count:16];
      }

      while (v30);
    }

    [dictionary setObject:v27 forKey:@"asr_outputs"];
  }

  turnContext = self->_turnContext;
  if (turnContext)
  {
    dictionaryRepresentation6 = [(SIRINLUEXTERNALTurnContext *)turnContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"turn_context"];
  }

  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_tapToEdit];
    [dictionary setObject:v38 forKey:@"tap_to_edit"];

    has = self->_has;
  }

  if (has)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startTimestamp];
    [dictionary setObject:v39 forKey:@"start_timestamp"];
  }

  correctionOutcomeOverride = self->_correctionOutcomeOverride;
  if (correctionOutcomeOverride)
  {
    dictionaryRepresentation7 = [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcomeOverride dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"correction_outcome_override"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:self->_connectedToCarPlayUltra];
    [dictionary setObject:v42 forKey:@"connectedToCarPlayUltra"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALTurnInput;
  v4 = [(SIRINLUEXTERNALTurnInput *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALTurnInput *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasConnectedToCarPlayUltra:(BOOL)ultra
{
  if (ultra)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTapToEdit:(BOOL)edit
{
  if (edit)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addAsrOutputs:(id)outputs
{
  outputsCopy = outputs;
  asrOutputs = self->_asrOutputs;
  v8 = outputsCopy;
  if (!asrOutputs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_asrOutputs;
    self->_asrOutputs = v6;

    outputsCopy = v8;
    asrOutputs = self->_asrOutputs;
  }

  [(NSMutableArray *)asrOutputs addObject:outputsCopy];
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

@end