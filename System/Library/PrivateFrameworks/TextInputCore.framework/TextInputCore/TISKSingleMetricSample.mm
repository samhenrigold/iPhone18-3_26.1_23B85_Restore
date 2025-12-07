@interface TISKSingleMetricSample
+ (id)makeMetric;
- (BOOL)isEqual:(id)equal;
- (TISKSingleMetricSample)init;
- (TISKSingleMetricSample)initWithCoder:(id)coder;
- (double)average;
- (double)sum;
- (double)variance;
- (id)description;
- (id)generateDataForSR:(id)r;
- (void)merge:(id)merge;
@end

@implementation TISKSingleMetricSample

- (id)generateDataForSR:(id)r
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *[r metricDefinition];
  v5 = objc_alloc_init(getSRKeyboardProbabilityMetricClass());
  v6 = self->_samples;
  v7 = [(NSMutableArray *)v6 count];
  if (v7 >= 2)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      [(NSMutableArray *)v6 exchangeObjectAtIndex:v9 withObjectAtIndex:v9 + arc4random_uniform(v8)];
      ++v9;
      --v8;
    }

    while (v8 != 1);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_samples;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = v4;
    v14 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v22 + 1) + 8 * i) floatValue];
        v17 = roundf(v16 / v13) * v13;
        mutableSampleValues = [v5 mutableSampleValues];
        *&v19 = v17;
        v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
        [mutableSampleValues addObject:v20];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  return v5;
}

- (TISKSingleMetricSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TISKSingleMetricSample;
  v5 = [(TISKSingleMetricSample *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"SingleMetricSample"];
    samples = v5->_samples;
    v5->_samples = v10;
  }

  return v5;
}

- (void)merge:(id)merge
{
  v14 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x277CCACA8];
      samples = self->_samples;
      samples = [mergeCopy samples];
      v11 = [v8 stringWithFormat:@"%s [SensorKit] SingleMetricSample merge: other doesn't respond to sample selector %@ : %@", "-[TISKSingleMetricSample merge:]", samples, samples];
      *buf = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v6 = self->_samples;
  samples2 = [mergeCopy samples];
  [(NSMutableArray *)v6 addObjectsFromArray:samples2];
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_string(MEMORY[0x277CCAB68], a2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_samples;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * i) floatValue];
        [v3 appendFormat:@"%f, ", v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  samples = self->_samples;
  samples = [equal samples];
  LOBYTE(samples) = [(NSMutableArray *)samples isEqual:samples];

  return samples;
}

- (double)sum
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_samples;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) doubleValue];
        v6 = v6 + v8;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)variance
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_samples;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * i) doubleValue];
        v7 = v7 + v9 * v9;
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = [(NSMutableArray *)self->_samples count];
  [(TISKSingleMetricSample *)self average];
  return v7 / v10 - v11 * v11;
}

- (double)average
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_samples;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        v7 = v7 + v9;
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7 / [(NSMutableArray *)self->_samples count];
}

- (TISKSingleMetricSample)init
{
  v6.receiver = self;
  v6.super_class = TISKSingleMetricSample;
  v2 = [(TISKSingleMetricSample *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    samples = v2->_samples;
    v2->_samples = array;
  }

  return v2;
}

+ (id)makeMetric
{
  v2 = objc_alloc_init(TISKSingleMetricSample);

  return v2;
}

@end