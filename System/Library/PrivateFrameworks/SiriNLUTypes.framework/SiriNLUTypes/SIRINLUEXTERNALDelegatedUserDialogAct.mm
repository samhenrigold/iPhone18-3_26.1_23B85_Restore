@interface SIRINLUEXTERNALDelegatedUserDialogAct
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchingSpans:(id)spans;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALDelegatedUserDialogAct

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[14])
  {
    self->_asrHypothesisIndex = fromCopy[2];
    *&self->_has |= 1u;
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  v7 = *(v5 + 6);
  if (rewrittenUtterance)
  {
    if (v7)
    {
      [(SIRICOMMONStringValue *)rewrittenUtterance mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)self setRewrittenUtterance:?];
  }

  if (*(v5 + 2))
  {
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)self setExternalParserId:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = *(v5 + 3);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SIRINLUEXTERNALDelegatedUserDialogAct *)self addMatchingSpans:*(*(&v17 + 1) + 8 * i), v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  rewrite = self->_rewrite;
  v14 = *(v5 + 5);
  if (rewrite)
  {
    if (v14)
    {
      [(SIRINLUEXTERNALRewriteMessage *)rewrite mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)self setRewrite:?];
  }

  referenceContext = self->_referenceContext;
  v16 = *(v5 + 4);
  if (referenceContext)
  {
    if (v16)
    {
      [(SIRINLUEXTERNALReferenceContext *)referenceContext mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)self setReferenceContext:?];
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

  v4 = [(SIRICOMMONStringValue *)self->_rewrittenUtterance hash]^ v3;
  v5 = [(NSString *)self->_externalParserId hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_matchingSpans hash];
  v7 = [(SIRINLUEXTERNALRewriteMessage *)self->_rewrite hash];
  return v6 ^ v7 ^ [(SIRINLUEXTERNALReferenceContext *)self->_referenceContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_asrHypothesisIndex != *(equalCopy + 2))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  if (rewrittenUtterance | *(equalCopy + 6) && ![(SIRICOMMONStringValue *)rewrittenUtterance isEqual:?])
  {
    goto LABEL_17;
  }

  externalParserId = self->_externalParserId;
  if (externalParserId | *(equalCopy + 2))
  {
    if (![(NSString *)externalParserId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  matchingSpans = self->_matchingSpans;
  if (matchingSpans | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)matchingSpans isEqual:?])
    {
      goto LABEL_17;
    }
  }

  rewrite = self->_rewrite;
  if (rewrite | *(equalCopy + 5))
  {
    if (![(SIRINLUEXTERNALRewriteMessage *)rewrite isEqual:?])
    {
      goto LABEL_17;
    }
  }

  referenceContext = self->_referenceContext;
  if (referenceContext | *(equalCopy + 4))
  {
    v10 = [(SIRINLUEXTERNALReferenceContext *)referenceContext isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_asrHypothesisIndex;
    *(v5 + 56) |= 1u;
  }

  v7 = [(SIRICOMMONStringValue *)self->_rewrittenUtterance copyWithZone:zone];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(NSString *)self->_externalParserId copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_matchingSpans;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v22 + 1) + 8 * v15) copyWithZone:{zone, v22}];
        [v6 addMatchingSpans:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = [(SIRINLUEXTERNALRewriteMessage *)self->_rewrite copyWithZone:zone];
  v18 = v6[5];
  v6[5] = v17;

  v19 = [(SIRINLUEXTERNALReferenceContext *)self->_referenceContext copyWithZone:zone];
  v20 = v6[4];
  v6[4] = v19;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_asrHypothesisIndex;
    *(toCopy + 56) |= 1u;
  }

  v10 = toCopy;
  if (self->_rewrittenUtterance)
  {
    [toCopy setRewrittenUtterance:?];
  }

  if (self->_externalParserId)
  {
    [v10 setExternalParserId:?];
  }

  if ([(SIRINLUEXTERNALDelegatedUserDialogAct *)self matchingSpansCount])
  {
    [v10 clearMatchingSpans];
    matchingSpansCount = [(SIRINLUEXTERNALDelegatedUserDialogAct *)self matchingSpansCount];
    if (matchingSpansCount)
    {
      v6 = matchingSpansCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)self matchingSpansAtIndex:i];
        [v10 addMatchingSpans:v8];
      }
    }
  }

  if (self->_rewrite)
  {
    [v10 setRewrite:?];
  }

  v9 = v10;
  if (self->_referenceContext)
  {
    [v10 setReferenceContext:?];
    v9 = v10;
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

  if (self->_rewrittenUtterance)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_externalParserId)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_matchingSpans;
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

  if (self->_rewrite)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_referenceContext)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_asrHypothesisIndex];
    [dictionary setObject:v4 forKey:@"asr_hypothesis_index"];
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  if (rewrittenUtterance)
  {
    dictionaryRepresentation = [(SIRICOMMONStringValue *)rewrittenUtterance dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"rewritten_utterance"];
  }

  externalParserId = self->_externalParserId;
  if (externalParserId)
  {
    [dictionary setObject:externalParserId forKey:@"external_parser_id"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_matchingSpans;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"matching_spans"];
  }

  rewrite = self->_rewrite;
  if (rewrite)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALRewriteMessage *)rewrite dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"rewrite"];
  }

  referenceContext = self->_referenceContext;
  if (referenceContext)
  {
    dictionaryRepresentation4 = [(SIRINLUEXTERNALReferenceContext *)referenceContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"reference_context"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALDelegatedUserDialogAct;
  v4 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALDelegatedUserDialogAct *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addMatchingSpans:(id)spans
{
  spansCopy = spans;
  matchingSpans = self->_matchingSpans;
  v8 = spansCopy;
  if (!matchingSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_matchingSpans;
    self->_matchingSpans = v6;

    spansCopy = v8;
    matchingSpans = self->_matchingSpans;
  }

  [(NSMutableArray *)matchingSpans addObject:spansCopy];
}

@end