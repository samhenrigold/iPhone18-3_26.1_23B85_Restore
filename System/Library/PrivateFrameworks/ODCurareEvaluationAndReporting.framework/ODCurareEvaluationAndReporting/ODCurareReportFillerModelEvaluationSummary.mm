@interface ODCurareReportFillerModelEvaluationSummary
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addModelEvaluationResults:(id)results;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ODCurareReportFillerModelEvaluationSummary

- (void)addModelEvaluationResults:(id)results
{
  resultsCopy = results;
  modelEvaluationResults = self->_modelEvaluationResults;
  v8 = resultsCopy;
  if (!modelEvaluationResults)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_modelEvaluationResults;
    self->_modelEvaluationResults = v6;

    resultsCopy = v8;
    modelEvaluationResults = self->_modelEvaluationResults;
  }

  [(NSMutableArray *)modelEvaluationResults addObject:resultsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerModelEvaluationSummary;
  v4 = [(ODCurareReportFillerModelEvaluationSummary *)&v8 description];
  dictionaryRepresentation = [(ODCurareReportFillerModelEvaluationSummary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  modelName = self->_modelName;
  if (modelName)
  {
    [dictionary setObject:modelName forKey:@"modelName"];
  }

  evaluationDate = self->_evaluationDate;
  if (evaluationDate)
  {
    [v4 setObject:evaluationDate forKey:@"evaluationDate"];
  }

  if ([(NSMutableArray *)self->_modelEvaluationResults count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_modelEvaluationResults, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_modelEvaluationResults;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"modelEvaluationResults"];
  }

  dataUsedToEvaluateModel = self->_dataUsedToEvaluateModel;
  if (dataUsedToEvaluateModel)
  {
    dictionaryRepresentation2 = [(ODCurareReportFillerDataSet *)dataUsedToEvaluateModel dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"dataUsedToEvaluateModel"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_modelName)
  {
    [ODCurareReportFillerModelEvaluationSummary writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_evaluationDate)
  {
    [ODCurareReportFillerModelEvaluationSummary writeTo:];
  }

  PBDataWriterWriteStringField();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_modelEvaluationResults;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (self->_dataUsedToEvaluateModel)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setModelName:self->_modelName];
  [toCopy setEvaluationDate:self->_evaluationDate];
  if ([(ODCurareReportFillerModelEvaluationSummary *)self modelEvaluationResultsCount])
  {
    [toCopy clearModelEvaluationResults];
    modelEvaluationResultsCount = [(ODCurareReportFillerModelEvaluationSummary *)self modelEvaluationResultsCount];
    if (modelEvaluationResultsCount)
    {
      v5 = modelEvaluationResultsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ODCurareReportFillerModelEvaluationSummary *)self modelEvaluationResultsAtIndex:i];
        [toCopy addModelEvaluationResults:v7];
      }
    }
  }

  if (self->_dataUsedToEvaluateModel)
  {
    [toCopy setDataUsedToEvaluateModel:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_modelName copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_evaluationDate copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_modelEvaluationResults;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * v14) copyWithZone:{zone, v19}];
        [v5 addModelEvaluationResults:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [(ODCurareReportFillerDataSet *)self->_dataUsedToEvaluateModel copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((modelName = self->_modelName, !(modelName | equalCopy[4])) || -[NSString isEqual:](modelName, "isEqual:")) && ((evaluationDate = self->_evaluationDate, !(evaluationDate | equalCopy[2])) || -[NSString isEqual:](evaluationDate, "isEqual:")) && ((modelEvaluationResults = self->_modelEvaluationResults, !(modelEvaluationResults | equalCopy[3])) || -[NSMutableArray isEqual:](modelEvaluationResults, "isEqual:")))
  {
    dataUsedToEvaluateModel = self->_dataUsedToEvaluateModel;
    if (dataUsedToEvaluateModel | equalCopy[1])
    {
      v9 = [(ODCurareReportFillerDataSet *)dataUsedToEvaluateModel isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelName hash];
  v4 = [(NSString *)self->_evaluationDate hash]^ v3;
  v5 = [(NSMutableArray *)self->_modelEvaluationResults hash];
  return v4 ^ v5 ^ [(ODCurareReportFillerDataSet *)self->_dataUsedToEvaluateModel hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(ODCurareReportFillerModelEvaluationSummary *)self setModelName:?];
  }

  if (*(fromCopy + 2))
  {
    [(ODCurareReportFillerModelEvaluationSummary *)self setEvaluationDate:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ODCurareReportFillerModelEvaluationSummary *)self addModelEvaluationResults:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  dataUsedToEvaluateModel = self->_dataUsedToEvaluateModel;
  v11 = *(fromCopy + 1);
  if (dataUsedToEvaluateModel)
  {
    if (v11)
    {
      [(ODCurareReportFillerDataSet *)dataUsedToEvaluateModel mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(ODCurareReportFillerModelEvaluationSummary *)self setDataUsedToEvaluateModel:?];
  }
}

@end