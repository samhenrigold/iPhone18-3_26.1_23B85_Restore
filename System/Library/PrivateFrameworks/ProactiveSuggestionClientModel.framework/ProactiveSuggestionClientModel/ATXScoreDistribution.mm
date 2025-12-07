@interface ATXScoreDistribution
- (ATXScoreDistribution)init;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXDeviceLevelMetricsScoreDistribution:(id)distribution;
- (double)mean;
- (double)standardDeviation;
- (void)enumerateAsHistogramWithNumberOfBins:(unint64_t)bins binHandler:(id)handler;
- (void)recordScore:(double)score;
@end

@implementation ATXScoreDistribution

- (ATXScoreDistribution)init
{
  v6.receiver = self;
  v6.super_class = ATXScoreDistribution;
  v2 = [(ATXScoreDistribution *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    scores = v2->_scores;
    v2->_scores = v3;
  }

  return v2;
}

- (void)recordScore:(double)score
{
  if (![(NSMutableArray *)self->_scores count]|| self->_min > score)
  {
    self->_min = score;
  }

  if (![(NSMutableArray *)self->_scores count]|| self->_max < score)
  {
    self->_max = score;
  }

  self->_sum = self->_sum + score;
  scores = self->_scores;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  [(NSMutableArray *)scores addObject:v6];
}

- (double)mean
{
  if (![(NSMutableArray *)self->_scores count])
  {
    return 0.0;
  }

  sum = self->_sum;
  return sum / [(NSMutableArray *)self->_scores count];
}

- (double)standardDeviation
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_scores count])
  {
    return 0.0;
  }

  [(ATXScoreDistribution *)self mean];
  v4 = v3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_scores;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * i) doubleValue];
        v9 = v9 + (v11 - v4) * (v11 - v4);
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return sqrt(v9 / [(NSMutableArray *)self->_scores count]);
}

- (void)enumerateAsHistogramWithNumberOfBins:(unint64_t)bins binHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (bins && [(NSMutableArray *)self->_scores count])
  {
    v8.n128_u64[0] = *&self->_min;
    v9.n128_u64[0] = *&self->_max;
    if (v8.n128_f64[0] == v9.n128_f64[0])
    {
      v7.n128_u64[0] = 1.0;
      handlerCopy[2](handlerCopy, v7, v8, v9);
    }

    else
    {
      v23 = handlerCopy;
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:bins];
      binsCopy = bins;
      do
      {
        [v10 addObject:&unk_1F5A41128];
        --binsCopy;
      }

      while (binsCopy);
      v12 = (self->_max - self->_min) / bins;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = self->_scores;
      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        do
        {
          v16 = 0;
          do
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(obj);
            }

            [*(*(&v28 + 1) + 8 * v16) doubleValue];
            v18 = (v17 - self->_min) / v12;
            if (v18 >= bins)
            {
              v19 = bins - 1;
            }

            else
            {
              v19 = v18;
            }

            v20 = MEMORY[0x1E696AD98];
            v21 = [v10 objectAtIndexedSubscript:v19];
            v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "unsignedIntegerValue") + 1}];
            [v10 setObject:v22 atIndexedSubscript:v19];

            ++v16;
          }

          while (v14 != v16);
          v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v14);
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __72__ATXScoreDistribution_enumerateAsHistogramWithNumberOfBins_binHandler___block_invoke;
      v25[3] = &unk_1E86A4208;
      v27 = v12;
      v25[4] = self;
      handlerCopy = v23;
      v26 = v23;
      [v10 enumerateObjectsUsingBlock:v25];
    }
  }

  else
  {
    v7.n128_u64[0] = 0;
    v8.n128_u64[0] = 0;
    v9.n128_u64[0] = 0;
    handlerCopy[2](handlerCopy, v7, v8, v9);
  }
}

uint64_t __72__ATXScoreDistribution_enumerateAsHistogramWithNumberOfBins_binHandler___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 24) + a3 * v4;
  v7 = v4 + v6;
  [a2 doubleValue];
  v9.n128_f64[0] = v8 / [*(*(a1 + 32) + 8) count];
  v10 = *(v5 + 16);
  v11.n128_f64[0] = v6;
  v12.n128_f64[0] = v7;

  return v10(v5, v9, v11, v12);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXScoreDistribution *)self isEqualToATXDeviceLevelMetricsScoreDistribution:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDeviceLevelMetricsScoreDistribution:(id)distribution
{
  v4 = self->_scores;
  v5 = v4;
  if (v4 == *(distribution + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableArray *)v4 isEqual:?];
  }

  return v6;
}

@end