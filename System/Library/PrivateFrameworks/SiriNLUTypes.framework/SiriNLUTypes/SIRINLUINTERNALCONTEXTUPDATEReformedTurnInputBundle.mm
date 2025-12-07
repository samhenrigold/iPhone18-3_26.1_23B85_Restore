@interface SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addPreviousTurns:(id)turns;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[7])
  {
    self->_type = fromCopy[6];
    *&self->_has |= 1u;
  }

  currentTurn = self->_currentTurn;
  v7 = *(v5 + 1);
  if (currentTurn)
  {
    if (v7)
    {
      [(SIRINLUEXTERNALTurnInput *)currentTurn mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self setCurrentTurn:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(v5 + 2);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self addPreviousTurns:*(*(&v13 + 1) + 8 * i), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SIRINLUEXTERNALTurnInput *)self->_currentTurn hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_previousTurns hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_type != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  currentTurn = self->_currentTurn;
  if (currentTurn | *(equalCopy + 1) && ![(SIRINLUEXTERNALTurnInput *)currentTurn isEqual:?])
  {
    goto LABEL_11;
  }

  previousTurns = self->_previousTurns;
  if (previousTurns | *(equalCopy + 2))
  {
    v7 = [(NSMutableArray *)previousTurns isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_type;
    *(v5 + 28) |= 1u;
  }

  v7 = [(SIRINLUEXTERNALTurnInput *)self->_currentTurn copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_previousTurns;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) copyWithZone:{zone, v16}];
        [v6 addPreviousTurns:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_type;
    *(toCopy + 28) |= 1u;
  }

  v9 = toCopy;
  if (self->_currentTurn)
  {
    [toCopy setCurrentTurn:?];
  }

  if ([(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self previousTurnsCount])
  {
    [v9 clearPreviousTurns];
    previousTurnsCount = [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self previousTurnsCount];
    if (previousTurnsCount)
    {
      v6 = previousTurnsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self previousTurnsAtIndex:i];
        [v9 addPreviousTurns:v8];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_currentTurn)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_previousTurns;
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_1E8328050[type];
    }

    [dictionary setObject:v5 forKey:@"type"];
  }

  currentTurn = self->_currentTurn;
  if (currentTurn)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALTurnInput *)currentTurn dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"current_turn"];
  }

  if ([(NSMutableArray *)self->_previousTurns count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_previousTurns, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_previousTurns;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"previous_turns"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle;
  v4 = [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addPreviousTurns:(id)turns
{
  turnsCopy = turns;
  previousTurns = self->_previousTurns;
  v8 = turnsCopy;
  if (!previousTurns)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_previousTurns;
    self->_previousTurns = v6;

    turnsCopy = v8;
    previousTurns = self->_previousTurns;
  }

  [(NSMutableArray *)previousTurns addObject:turnsCopy];
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"REFORM_TYPE_NONE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"CORRECTION_BY_REPETITION"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"REFERENCE_RESOLUTION"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"TAP_TO_EDIT"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)typeAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E8328050[string];
  }

  return v4;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end