@interface PMLMultiLabelLogisticRegressionModel
- (PMLMultiLabelLogisticRegressionModel)initWithModels:(id)models;
- (PMLMultiLabelLogisticRegressionModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (PMLMultiLabelLogisticRegressionModel)initWithWeightsArray:(id)array andIntercept:(BOOL)intercept;
- (id)predict:(id)predict;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLMultiLabelLogisticRegressionModel

- (PMLMultiLabelLogisticRegressionModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v10 = [[PMLPlistClassWrapper alloc] initWithClassNameKey:@"CLASS_NAME"];
  v11 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [plistCopy objectForKeyedSubscript:@"MULTI_LABEL_REGRESSION_MODELS"];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(PMLPlistClassWrapper *)v10 readObjectWithPlist:*(*(&v21 + 1) + 8 * v16) chunks:chunksCopy context:contextCopy];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [(PMLMultiLabelLogisticRegressionModel *)self initWithModels:v11];
  return v18;
}

- (id)toPlistWithChunks:(id)chunks
{
  v22 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v5 = [[PMLPlistClassWrapper alloc] initWithClassNameKey:@"CLASS_NAME"];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_models;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(PMLPlistClassWrapper *)v5 writeToPlistWithObject:*(*(&v15 + 1) + 8 * i) andChunks:chunksCopy, v15];
        [v6 addObject:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  v19 = @"MULTI_LABEL_REGRESSION_MODELS";
  v20 = v6;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  return v13;
}

- (id)predict:(id)predict
{
  v22 = *MEMORY[0x277D85DE8];
  predictCopy = predict;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_models, "count")}];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_models;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) predict:{predictCopy, v17}];
          v12 = v11;
          if (v11)
          {
            firstObject = [v11 firstObject];
            [v5 addObject:firstObject];
          }

          else
          {
            [v5 addObject:&unk_287357F08];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    j = v5;
  }

  else
  {
    outputDimension = [(PMLMultiLabelLogisticRegressionModel *)self outputDimension];
    for (j = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:outputDimension]; outputDimension; --outputDimension)
    {
      [j addObject:&unk_287357F08];
    }
  }

  return j;
}

- (PMLMultiLabelLogisticRegressionModel)initWithModels:(id)models
{
  modelsCopy = models;
  v9.receiver = self;
  v9.super_class = PMLMultiLabelLogisticRegressionModel;
  v6 = [(PMLMultiLabelLogisticRegressionModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_models, models);
  }

  return v7;
}

- (PMLMultiLabelLogisticRegressionModel)initWithWeightsArray:(id)array andIntercept:(BOOL)intercept
{
  interceptCopy = intercept;
  v21 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [PMLLogisticRegressionModel withWeights:*(*(&v16 + 1) + 8 * v12) andIntercept:interceptCopy, v16];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [(PMLMultiLabelLogisticRegressionModel *)self initWithModels:v7];
  return v14;
}

@end