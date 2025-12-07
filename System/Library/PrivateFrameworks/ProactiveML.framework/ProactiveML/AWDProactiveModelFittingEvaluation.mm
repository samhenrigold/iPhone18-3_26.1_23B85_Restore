@interface AWDProactiveModelFittingEvaluation
- (BOOL)isEqual:(id)equal;
- (float)precisionAtK:(unint64_t)k;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPrecisionAtK:(id)k;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingEvaluation

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  modelInfo = self->_modelInfo;
  v7 = *(v5 + 4);
  if (modelInfo)
  {
    if (v7)
    {
      [(AWDProactiveModelFittingModelInfo *)modelInfo mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDProactiveModelFittingEvaluation *)self setModelInfo:?];
  }

  minibatchStats = self->_minibatchStats;
  v9 = *(v5 + 3);
  if (minibatchStats)
  {
    if (v9)
    {
      [(AWDProactiveModelFittingMinibatchStats *)minibatchStats mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDProactiveModelFittingEvaluation *)self setMinibatchStats:?];
  }

  evaluationMetrics = self->_evaluationMetrics;
  v11 = *(v5 + 2);
  if (evaluationMetrics)
  {
    if (v11)
    {
      [(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDProactiveModelFittingEvaluation *)self setEvaluationMetrics:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(v5 + 5);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDProactiveModelFittingEvaluation *)self addPrecisionAtK:*(*(&v17 + 1) + 8 * i), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo hash]^ v3;
  v5 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats hash];
  v6 = v4 ^ v5 ^ [(AWDProactiveModelFittingEvalMetrics *)self->_evaluationMetrics hash];
  return v6 ^ [(NSMutableArray *)self->_precisionAtKs hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  modelInfo = self->_modelInfo;
  if (modelInfo | *(equalCopy + 4) && ![(AWDProactiveModelFittingModelInfo *)modelInfo isEqual:?])
  {
    goto LABEL_15;
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats | *(equalCopy + 3))
  {
    if (![(AWDProactiveModelFittingMinibatchStats *)minibatchStats isEqual:?])
    {
      goto LABEL_15;
    }
  }

  evaluationMetrics = self->_evaluationMetrics;
  if (evaluationMetrics | *(equalCopy + 2))
  {
    if (![(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics isEqual:?])
    {
      goto LABEL_15;
    }
  }

  precisionAtKs = self->_precisionAtKs;
  if (precisionAtKs | *(equalCopy + 5))
  {
    v9 = [(NSMutableArray *)precisionAtKs isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(AWDProactiveModelFittingEvalMetrics *)self->_evaluationMetrics copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_precisionAtKs;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * v17) copyWithZone:{zone, v20}];
        [v6 addPrecisionAtK:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  v9 = toCopy;
  if (self->_modelInfo)
  {
    [toCopy setModelInfo:?];
  }

  if (self->_minibatchStats)
  {
    [v9 setMinibatchStats:?];
  }

  if (self->_evaluationMetrics)
  {
    [v9 setEvaluationMetrics:?];
  }

  if ([(AWDProactiveModelFittingEvaluation *)self precisionAtKsCount])
  {
    [v9 clearPrecisionAtKs];
    precisionAtKsCount = [(AWDProactiveModelFittingEvaluation *)self precisionAtKsCount];
    if (precisionAtKsCount)
    {
      v6 = precisionAtKsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDProactiveModelFittingEvaluation *)self precisionAtKAtIndex:i];
        [v9 addPrecisionAtK:v8];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_modelInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_minibatchStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_evaluationMetrics)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_precisionAtKs;
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
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  modelInfo = self->_modelInfo;
  if (modelInfo)
  {
    dictionaryRepresentation = [(AWDProactiveModelFittingModelInfo *)modelInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"modelInfo"];
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats)
  {
    dictionaryRepresentation2 = [(AWDProactiveModelFittingMinibatchStats *)minibatchStats dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"minibatchStats"];
  }

  evaluationMetrics = self->_evaluationMetrics;
  if (evaluationMetrics)
  {
    dictionaryRepresentation3 = [(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"evaluationMetrics"];
  }

  if ([(NSMutableArray *)self->_precisionAtKs count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_precisionAtKs, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_precisionAtKs;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation4 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation4];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"precisionAtK"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingEvaluation;
  v4 = [(AWDProactiveModelFittingEvaluation *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveModelFittingEvaluation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addPrecisionAtK:(id)k
{
  kCopy = k;
  precisionAtKs = self->_precisionAtKs;
  v8 = kCopy;
  if (!precisionAtKs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_precisionAtKs;
    self->_precisionAtKs = v6;

    kCopy = v8;
    precisionAtKs = self->_precisionAtKs;
  }

  [(NSMutableArray *)precisionAtKs addObject:kCopy];
}

- (float)precisionAtK:(unint64_t)k
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  precisionAtKs = [(AWDProactiveModelFittingEvaluation *)self precisionAtKs];
  v5 = [precisionAtKs countByEnumeratingWithState:&v13 objects:v17 count:16];
  v6 = -1.0;
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(precisionAtKs);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 k] == k)
        {
          [v10 precision];
          v6 = v11;
          goto LABEL_11;
        }
      }

      v7 = [precisionAtKs countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end