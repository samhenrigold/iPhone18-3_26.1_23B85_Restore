@interface PMLPassThroughTracker
- (PMLPassThroughTracker)initWithPlanId:(id)id numberOfBuckets:(unint64_t)buckets;
- (PMLPassThroughTracker)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)trackEvaluationMetrics:(id)metrics minibatchStats:(id)stats;
- (id)trackGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration;
- (id)trackWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics;
@end

@implementation PMLPassThroughTracker

- (PMLPassThroughTracker)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  contextCopy = context;
  v8 = [contextCopy objectForKeyedSubscript:@"planId"];

  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:108 description:{@"Can't instantiate %@. Missing planId dependency.", v16}];
  }

  v9 = [contextCopy objectForKeyedSubscript:@"buckets"];

  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:109 description:{@"Can't instantiate %@. Missing buckets dependency.", v19}];
  }

  v10 = [contextCopy objectForKeyedSubscript:@"planId"];
  v11 = [contextCopy objectForKeyedSubscript:@"buckets"];
  v12 = [(PMLPassThroughTracker *)self initWithPlanId:v10 numberOfBuckets:v11];

  return v12;
}

- (id)trackEvaluationMetrics:(id)metrics minibatchStats:(id)stats
{
  v17[2] = *MEMORY[0x277D85DE8];
  resultsLock = self->_resultsLock;
  statsCopy = stats;
  metricsCopy = metrics;
  [(NSLock *)resultsLock lock];
  results = self->_results;
  v16[0] = @"minibatchStats";
  v16[1] = @"evaluationMetrics";
  v17[0] = statsCopy;
  v17[1] = metricsCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(NSMutableArray *)results addObject:v10];

  v11 = [(NSMutableArray *)self->_results copy];
  [(NSLock *)self->_resultsLock unlock];
  v14 = @"results";
  v15 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  return v12;
}

- (id)trackGradient:(id)gradient scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics serverIteration:(unint64_t)iteration
{
  v30[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  metricsCopy = metrics;
  statsCopy = stats;
  gradientCopy = gradient;
  v16 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:planId];
  *&v17 = factor;
  v18 = [PMLProtoBufTracker messageForGradient:gradientCopy scaleFactor:statsCopy minibatchStats:metricsCopy evaluationMetrics:iteration serverIteration:v16 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v17];

  v19 = [PMLSparseVector sparseVectorFromDense:gradientCopy];

  [(NSLock *)self->_resultsLock lock];
  results = self->_results;
  v30[0] = v19;
  v29[0] = @"gradient";
  v29[1] = @"scaleFactor";
  *&v21 = factor;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v30[1] = v22;
  v30[2] = statsCopy;
  v29[2] = @"minibatchStats";
  v29[3] = @"evaluationMetrics";
  v29[4] = @"AWDGradientMessage";
  v30[3] = metricsCopy;
  v30[4] = v18;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];
  [(NSMutableArray *)results addObject:v23];

  v24 = [(NSMutableArray *)self->_results copy];
  [(NSLock *)self->_resultsLock unlock];
  v27 = @"results";
  v28 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

  return v25;
}

- (id)trackWeights:(id)weights scaleFactor:(float)factor minibatchStats:(id)stats evaluationMetrics:(id)metrics
{
  v28[5] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  metricsCopy = metrics;
  statsCopy = stats;
  weightsCopy = weights;
  v14 = [AWDProactiveModelFittingModelInfo modelInfoFromPlanId:planId];
  *&v15 = factor;
  v16 = [PMLProtoBufTracker messageForWeights:weightsCopy scaleFactor:statsCopy minibatchStats:metricsCopy evaluationMetrics:v14 modelInfo:self->_quantizationNumberOfBuckets numberOfBuckets:v15];

  v17 = [PMLSparseVector sparseVectorFromDense:weightsCopy];

  [(NSLock *)self->_resultsLock lock];
  results = self->_results;
  v28[0] = v17;
  v27[0] = @"weights";
  v27[1] = @"scaleFactor";
  *&v19 = factor;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v28[1] = v20;
  v28[2] = statsCopy;
  v27[2] = @"minibatchStats";
  v27[3] = @"evaluationMetrics";
  v27[4] = @"AWDWeightsMessage";
  v28[3] = metricsCopy;
  v28[4] = v16;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];
  [(NSMutableArray *)results addObject:v21];

  v22 = [(NSMutableArray *)self->_results copy];
  [(NSLock *)self->_resultsLock unlock];
  v25 = @"results";
  v26 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  return v23;
}

- (PMLPassThroughTracker)initWithPlanId:(id)id numberOfBuckets:(unint64_t)buckets
{
  idCopy = id;
  if (idCopy)
  {
    if (buckets)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"planId"}];

    if (buckets)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLPassThroughTracker.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"buckets"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PMLPassThroughTracker;
  v9 = [(PMLPassThroughTracker *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_planId, id);
    v10->_quantizationNumberOfBuckets = buckets;
    v11 = objc_opt_new();
    results = v10->_results;
    v10->_results = v11;

    v13 = objc_opt_new();
    resultsLock = v10->_resultsLock;
    v10->_resultsLock = v13;
  }

  return v10;
}

@end