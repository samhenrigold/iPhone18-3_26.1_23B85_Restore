@interface SIRINLUEXTERNALUtteranceAlignment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSpans:(id)spans;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNodeIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUtteranceAlignment

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 24))
  {
    self->_asrHypothesisIndex = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SIRINLUEXTERNALUtteranceAlignment *)self addSpans:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((v5[6] & 2) != 0)
  {
    self->_nodeIndex = v5[3];
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_asrHypothesisIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_spans hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_nodeIndex;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if (has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_asrHypothesisIndex != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_14;
  }

  spans = self->_spans;
  if (spans | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)spans isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v6 = *(equalCopy + 24);
  }

  v8 = (v6 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_nodeIndex != *(equalCopy + 3))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_asrHypothesisIndex;
    *(v5 + 24) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_spans;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{zone, v14}];
        [v6 addSpans:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 12) = self->_nodeIndex;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_asrHypothesisIndex;
    *(toCopy + 24) |= 1u;
  }

  v9 = toCopy;
  if ([(SIRINLUEXTERNALUtteranceAlignment *)self spansCount])
  {
    [v9 clearSpans];
    spansCount = [(SIRINLUEXTERNALUtteranceAlignment *)self spansCount];
    if (spansCount)
    {
      v6 = spansCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUEXTERNALUtteranceAlignment *)self spansAtIndex:i];
        [v9 addSpans:v8];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v9 + 3) = self->_nodeIndex;
    *(v9 + 24) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_spans;
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

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_asrHypothesisIndex];
    [dictionary setObject:v4 forKey:@"asr_hypothesis_index"];
  }

  if ([(NSMutableArray *)self->_spans count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_spans, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_spans;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"spans"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_nodeIndex];
    [dictionary setObject:v12 forKey:@"node_index"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUtteranceAlignment;
  v4 = [(SIRINLUEXTERNALUtteranceAlignment *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUtteranceAlignment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasNodeIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSpans:(id)spans
{
  spansCopy = spans;
  spans = self->_spans;
  v8 = spansCopy;
  if (!spans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_spans;
    self->_spans = v6;

    spansCopy = v8;
    spans = self->_spans;
  }

  [(NSMutableArray *)spans addObject:spansCopy];
}

@end