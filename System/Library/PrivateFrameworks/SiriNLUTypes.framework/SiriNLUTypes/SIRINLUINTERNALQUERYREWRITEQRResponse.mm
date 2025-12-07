@interface SIRINLUINTERNALQUERYREWRITEQRResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)repetitionTypeAsString:(int)string;
- (int)StringAsRepetitionType:(id)type;
- (int)repetitionType;
- (unint64_t)hash;
- (void)addQrHypotheses:(id)hypotheses;
- (void)addRewriteHypotheses:(id)hypotheses;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALQUERYREWRITEQRResponse

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  requestId = self->_requestId;
  v6 = *(fromCopy + 3);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self setRequestId:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self addQrHypotheses:*(*(&v21 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 40))
  {
    self->_repetitionType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(fromCopy + 4);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self addRewriteHypotheses:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v4 = [(NSMutableArray *)self->_qrHypotheses hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_repetitionType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_rewriteHypotheses hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 3))
  {
    if (![(SIRINLUEXTERNALUUID *)requestId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  qrHypotheses = self->_qrHypotheses;
  if (qrHypotheses | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)qrHypotheses isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_repetitionType != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  rewriteHypotheses = self->_rewriteHypotheses;
  if (rewriteHypotheses | *(equalCopy + 4))
  {
    v8 = [(NSMutableArray *)rewriteHypotheses isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_qrHypotheses;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addQrHypotheses:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 16) = self->_repetitionType;
    *(v5 + 40) |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_rewriteHypotheses;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
        [v5 addRewriteHypotheses:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if ([(SIRINLUINTERNALQUERYREWRITEQRResponse *)self qrHypothesesCount])
  {
    [toCopy clearQrHypotheses];
    qrHypothesesCount = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self qrHypothesesCount];
    if (qrHypothesesCount)
    {
      v5 = qrHypothesesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self qrHypothesesAtIndex:i];
        [toCopy addQrHypotheses:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_repetitionType;
    *(toCopy + 40) |= 1u;
  }

  if ([(SIRINLUINTERNALQUERYREWRITEQRResponse *)self rewriteHypothesesCount])
  {
    [toCopy clearRewriteHypotheses];
    rewriteHypothesesCount = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self rewriteHypothesesCount];
    if (rewriteHypothesesCount)
    {
      v9 = rewriteHypothesesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self rewriteHypothesesAtIndex:j];
        [toCopy addRewriteHypotheses:v11];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_qrHypotheses;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_rewriteHypotheses;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  if ([(NSMutableArray *)self->_qrHypotheses count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_qrHypotheses, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_qrHypotheses;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"qr_hypotheses"];
  }

  if (*&self->_has)
  {
    repetitionType = self->_repetitionType;
    if (repetitionType >= 4)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_repetitionType];
    }

    else
    {
      v14 = off_1E8327F80[repetitionType];
    }

    [dictionary setObject:v14 forKey:@"repetition_type"];
  }

  if ([(NSMutableArray *)self->_rewriteHypotheses count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rewriteHypotheses, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = self->_rewriteHypotheses;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v23 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation3];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"rewrite_hypotheses"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALQUERYREWRITEQRResponse;
  v4 = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addRewriteHypotheses:(id)hypotheses
{
  hypothesesCopy = hypotheses;
  rewriteHypotheses = self->_rewriteHypotheses;
  v8 = hypothesesCopy;
  if (!rewriteHypotheses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rewriteHypotheses;
    self->_rewriteHypotheses = v6;

    hypothesesCopy = v8;
    rewriteHypotheses = self->_rewriteHypotheses;
  }

  [(NSMutableArray *)rewriteHypotheses addObject:hypothesesCopy];
}

- (int)StringAsRepetitionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NOT_AVAILABLE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"NO_REPETITION"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PARTIAL_REPETITION"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"FULL_REPETITION"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)repetitionTypeAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E8327F80[string];
  }

  return v4;
}

- (int)repetitionType
{
  if (*&self->_has)
  {
    return self->_repetitionType;
  }

  else
  {
    return 0;
  }
}

- (void)addQrHypotheses:(id)hypotheses
{
  hypothesesCopy = hypotheses;
  qrHypotheses = self->_qrHypotheses;
  v8 = hypothesesCopy;
  if (!qrHypotheses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_qrHypotheses;
    self->_qrHypotheses = v6;

    hypothesesCopy = v8;
    qrHypotheses = self->_qrHypotheses;
  }

  [(NSMutableArray *)qrHypotheses addObject:hypothesesCopy];
}

@end