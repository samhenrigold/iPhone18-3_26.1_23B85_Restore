@interface PPSHistogramRequest
- (PPSHistogramRequest)initWithCoder:(id)coder;
- (PPSHistogramRequest)initWithDimensions:(id)dimensions predicate:(id)predicate timeFilter:(id)filter;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSHistogramRequest

- (PPSHistogramRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PPSHistogramRequest;
  v5 = [(PPSDataRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"dimensions"];
    dimensions = v5->_dimensions;
    v5->_dimensions = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PPSHistogramRequest;
  coderCopy = coder;
  [(PPSDataRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_dimensions forKey:{@"dimensions", v5.receiver, v5.super_class}];
}

- (PPSHistogramRequest)initWithDimensions:(id)dimensions predicate:(id)predicate timeFilter:(id)filter
{
  v28 = *MEMORY[0x277D85DE8];
  dimensionsCopy = dimensions;
  predicateCopy = predicate;
  filterCopy = filter;
  v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(dimensionsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = dimensionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        metricName = [*(*(&v23 + 1) + 8 * v17) metricName];
        [v12 addObject:metricName];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v19 = [v12 copy];
  v22.receiver = self;
  v22.super_class = PPSHistogramRequest;
  v20 = [(PPSDataRequest *)&v22 initWithRequestType:1 metrics:v19 predicate:predicateCopy timeFilter:filterCopy];

  if (v20)
  {
    objc_storeStrong(&v20->_dimensions, dimensions);
  }

  return v20;
}

- (id)description
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  requestType = [(PPSDataRequest *)self requestType];
  metrics = [(PPSDataRequest *)self metrics];
  predicate = [(PPSDataRequest *)self predicate];
  timeFilter = [(PPSDataRequest *)self timeFilter];
  v9 = [v3 stringWithFormat:@"<%@: %p { type: %ld, metrics: %@, predicate: %@, timeFilter: %@ ", v4, self, requestType, metrics, predicate, timeFilter];

  dimensions = self->_dimensions;
  if (dimensions)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = dimensions;
    v32 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v32)
    {
      v31 = *v40;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          edges = [v12 edges];
          v14 = [edges count];

          if (v14)
          {
            v33 = i;
            [v9 appendString:@"edges:["];
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            edges2 = [v12 edges];
            v16 = [edges2 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = 0;
              v19 = *v36;
              do
              {
                v20 = 0;
                v34 = v18;
                v21 = v18 + 1;
                do
                {
                  if (*v36 != v19)
                  {
                    objc_enumerationMutation(edges2);
                  }

                  [*(*(&v35 + 1) + 8 * v20) doubleValue];
                  [v9 appendFormat:@"%f", v22];
                  edges3 = [v12 edges];
                  v24 = [edges3 count];

                  if (v21 != v24)
                  {
                    [v9 appendString:{@", "}];
                  }

                  ++v20;
                  ++v21;
                }

                while (v17 != v20);
                v18 = v34 + v17;
                v17 = [edges2 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v17);
            }

            [v9 appendString:@"]"];
            i = v33;
          }

          else
          {
            v25 = [v12 size];
            [v12 range];
            v27 = v26;
            [v12 range];
            [v9 appendFormat:@"binCount:%lu minRange:%f maxRange:%f", v25, v27, v28];
          }
        }

        v32 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v32);
    }
  }

  [v9 appendString:@" }>"];

  return v9;
}

@end