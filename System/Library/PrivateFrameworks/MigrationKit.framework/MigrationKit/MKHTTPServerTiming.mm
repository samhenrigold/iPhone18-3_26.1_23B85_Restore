@interface MKHTTPServerTiming
- (id)value;
@end

@implementation MKHTTPServerTiming

- (id)value
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_response > 0.0)
  {
    v3 = [[MKHTTPServerTimingMetric alloc] initWithDuration:self->_response];
    [v18 setObject:v3 forKeyedSubscript:@"response"];
  }

  if (self->_import > 0.0)
  {
    v4 = [[MKHTTPServerTimingMetric alloc] initWithDuration:self->_import];
    [v18 setObject:v4 forKeyedSubscript:@"import"];
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v18 allKeys];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v23[0] = *(*(&v19 + 1) + 8 * v10);
        v12 = [v18 objectForKeyedSubscript:?];
        value = [v12 value];
        v23[1] = value;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
        v8 = [v14 componentsJoinedByString:@""];;

        [v5 addObject:v8];
        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = [v5 componentsJoinedByString:{@", "}];

  return v15;
}

@end