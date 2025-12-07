@interface PDContainer
+ (PDContainer)containerWithFileURL:(id)l error:(id *)error;
+ (PDContainer)containerWithJSONData:(id)data error:(id *)error;
+ (PDContainer)containerWithJSONDictionary:(id)dictionary error:(id *)error;
+ (PDContainer)containerWithPath:(id)path error:(id *)error;
- (BOOL)enumerateAggregatedMeasurementsMatchingNullableFilter:(id)filter ignoringVariables:(id)variables error:(id *)error usingBlock:(id)block;
- (BOOL)enumerateMeasurementsMatchingNullableFilter:(id)filter error:(id *)error usingBlock:(id)block;
- (BOOL)isComparableTo:(id)to;
- (BOOL)isLike:(id)like;
- (PDContainer)initWithFileURL:(id)l error:(id *)error;
- (PDContainer)initWithJSONData:(id)data error:(id *)error;
- (PDContainer)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (PDContainer)initWithPath:(id)path error:(id *)error;
- (id)aggregateMeasurementsMatchingFilter:(id)filter error:(id *)error;
- (id)description;
- (unint64_t)measurementCount;
@end

@implementation PDContainer

- (PDContainer)initWithPath:(id)path error:(id *)error
{
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:path isDirectory:0];
  v7 = [(PDContainer *)self initWithFileURL:v6 error:error];

  return v7;
}

+ (PDContainer)containerWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = [[PDContainer alloc] initWithPath:pathCopy error:error];

  return v6;
}

- (PDContainer)initWithFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = PDContainer;
  v7 = [(PDContainer *)&v13 init];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CBEAE0] inputStreamWithURL:lCopy];
    [v9 open];
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v9 options:3 error:error];
    [v9 close];
    if (v10)
    {
      v8 = [(PDContainer *)v8 initWithJSONDictionary:v10 error:error];
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (PDContainer)containerWithFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [[PDContainer alloc] initWithFileURL:lCopy error:error];

  return v6;
}

- (PDContainer)initWithJSONData:(id)data error:(id *)error
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = PDContainer;
  v7 = [(PDContainer *)&v12 init];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:3 error:error];
    if (v9)
    {
      v8 = [(PDContainer *)v8 initWithJSONDictionary:v9 error:error];
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (PDContainer)containerWithJSONData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [[PDContainer alloc] initWithJSONData:dataCopy error:error];

  return v6;
}

- (PDContainer)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v56[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PDContainer *)self setPerfdata:dictionaryCopy];
    perfdata = [(PDContainer *)self perfdata];
    v8 = [perfdata objectForKeyedSubscript:@"$schema"];

    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v8 hasPrefix:@"https://perfdata.apple.com/schema/"] & 1) == 0)
    {
      if (p_isa)
      {
        v26 = MEMORY[0x277CCA9B8];
        v55 = *MEMORY[0x277CCA450];
        v56[0] = @"schema is not perfdata";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
        *p_isa = [v26 errorWithDomain:@"PDError" code:3 userInfo:v27];

        p_isa = 0;
      }

      goto LABEL_17;
    }

    perfdata2 = [(PDContainer *)self perfdata];
    v10 = [perfdata2 objectForKeyedSubscript:@"name"];
    [(PDContainer *)self setName:v10];

    name = [(PDContainer *)self name];
    if (!name || (v12 = name, [(PDContainer *)self name], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass & 1) == 0))
    {
      p_isa = handle_malformed_data(p_isa, @"perfdata name");
LABEL_17:

      goto LABEL_18;
    }

    perfdata3 = [(PDContainer *)self perfdata];
    v16 = [perfdata3 objectForKeyedSubscript:@"version"];

    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      -[PDContainer setVersion:](self, "setVersion:", [v16 unsignedIntegerValue]);
      perfdata4 = [(PDContainer *)self perfdata];
      v18 = [perfdata4 objectForKeyedSubscript:@"description"];
      [(PDContainer *)self setTestDescription:v18];

      testDescription = [(PDContainer *)self testDescription];
      if (!testDescription || (v20 = testDescription, [(PDContainer *)self testDescription], v21 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v22 = objc_opt_isKindOfClass(), v21, v20, (v22 & 1) != 0))
      {
        perfdata5 = [(PDContainer *)self perfdata];
        v24 = [perfdata5 objectForKeyedSubscript:@"larger_better"];

        if (v24)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v41 = @"perfdata larger_better";
            goto LABEL_31;
          }

          bOOLValue = [v24 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        [(PDContainer *)self setLargerBetter:bOOLValue];
        perfdata6 = [(PDContainer *)self perfdata];
        v31 = [perfdata6 objectForKeyedSubscript:@"primary_metric"];
        [(PDContainer *)self setPrimaryMetricFilter:v31];

        primaryMetricFilter = [(PDContainer *)self primaryMetricFilter];
        if (primaryMetricFilter)
        {
          v33 = primaryMetricFilter;
          primaryMetricFilter2 = [(PDContainer *)self primaryMetricFilter];
          objc_opt_class();
          v35 = objc_opt_isKindOfClass();

          if ((v35 & 1) == 0)
          {
            v41 = @"perfdata primary_metric";
            goto LABEL_31;
          }
        }

        perfdata7 = [(PDContainer *)self perfdata];
        v37 = [perfdata7 objectForKeyedSubscript:@"generator"];
        [(PDContainer *)self setGenerator:v37];

        generator = [(PDContainer *)self generator];

        if (generator)
        {
          generator2 = [(PDContainer *)self generator];
          objc_opt_class();
          v40 = objc_opt_isKindOfClass();

          if ((v40 & 1) == 0)
          {
            v41 = @"perfdata generator";
            goto LABEL_31;
          }
        }

        else
        {
          [(PDContainer *)self setGenerator:@"<unknown>"];
        }

        perfdata8 = [(PDContainer *)self perfdata];
        v44 = expect_dictionary(perfdata8, @"variables", p_isa, @"perfdata variables");
        [(PDContainer *)self setVariables:v44];

        variables = [(PDContainer *)self variables];

        if (!variables || ([(PDContainer *)self perfdata], v46 = objc_claimAutoreleasedReturnValue(), expect_dictionary(v46, @"configuration", p_isa, @"perfdata configuration"), v47 = objc_claimAutoreleasedReturnValue(), [(PDContainer *)self setConfiguration:v47], v47, v46, [(PDContainer *)self configuration], v48 = objc_claimAutoreleasedReturnValue(), v48, !v48))
        {
          p_isa = 0;
          goto LABEL_33;
        }

        perfdata9 = [(PDContainer *)self perfdata];
        v50 = [perfdata9 objectForKeyedSubscript:@"notes"];
        [(PDContainer *)self setNotes:v50];

        notes = [(PDContainer *)self notes];
        if (!notes || (v52 = notes, [(PDContainer *)self notes], v53 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v54 = objc_opt_isKindOfClass(), v53, v52, (v54 & 1) != 0))
        {
          selfCopy = self;
          goto LABEL_32;
        }

        v41 = @"perfdata notes";
LABEL_31:
        selfCopy = handle_malformed_data(p_isa, v41);
LABEL_32:
        p_isa = &selfCopy->super.isa;
LABEL_33:

        goto LABEL_34;
      }

      v29 = @"perfdata description";
    }

    else
    {
      v29 = @"perfdata version";
    }

    p_isa = handle_malformed_data(p_isa, v29);
LABEL_34:

    goto LABEL_17;
  }

  p_isa = handle_malformed_data(p_isa, @"perfdata object");
LABEL_18:

  return p_isa;
}

+ (PDContainer)containerWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = [[PDContainer alloc] initWithJSONDictionary:dictionaryCopy error:error];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(PDContainer *)self name];
  v5 = [v3 stringWithFormat:@"PerfData: %@ v%lu", name, -[PDContainer version](self, "version")];

  return v5;
}

- (BOOL)isComparableTo:(id)to
{
  toCopy = to;
  version = [(PDContainer *)self version];
  if (version == [toCopy version])
  {
    name = [(PDContainer *)self name];
    name2 = [toCopy name];
    v8 = [name isEqualToString:name2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isLike:(id)like
{
  likeCopy = like;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [(PDContainer *)self isComparableTo:likeCopy];

  return v5;
}

- (unint64_t)measurementCount
{
  v17 = *MEMORY[0x277D85DE8];
  perfdata = [(PDContainer *)self perfdata];
  v3 = [perfdata objectForKeyedSubscript:@"data"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7 += [v10 count];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)enumerateMeasurementsMatchingNullableFilter:(id)filter error:(id *)error usingBlock:(id)block
{
  v57 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  blockCopy = block;
  perfdata = [(PDContainer *)self perfdata];
  v11 = [perfdata objectForKeyedSubscript:@"data"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!filterCopy)
      {
        v45 = 0;
        v14 = 0;
        goto LABEL_10;
      }

      if ([filterCopy length])
      {
        v12 = strip_container_prefix(self, filterCopy);

        v45 = get_metric_filter_metric(v12);
        v13 = get_metric_filter_variables(v12, error);
        if (!v13)
        {
          v15 = 0;
          filterCopy = v12;
LABEL_42:

          goto LABEL_43;
        }

        v14 = v13;
        filterCopy = v12;
LABEL_10:
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v17 = v11;
        v18 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v18)
        {
          errorCopy = error;
          v44 = 0;
          v19 = *v52;
          v40 = v17;
          v37 = *v52;
          while (2)
          {
            v20 = 0;
            error = errorCopy;
            v38 = v18;
            do
            {
              if (*v52 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v51 + 1) + 8 * v20);
              if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v35 = handle_malformed_data(error, @"perfdata group");
                v32 = 0;
                LOBYTE(error) = 0;
                goto LABEL_41;
              }

              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              obj = v21;
              v22 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v48;
                v41 = blockCopy;
                v39 = filterCopy;
                v36 = v20;
                while (2)
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v48 != v24)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v26 = *(*(&v47 + 1) + 8 * i);
                    if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      v33 = handle_malformed_data(error, @"perfdata measurement");
                      LOBYTE(error) = 0;
LABEL_40:

                      v32 = 0;
                      blockCopy = v41;
                      filterCopy = v39;
                      v17 = v40;
                      goto LABEL_41;
                    }

                    v27 = [[PDMeasurement alloc] initWithContainer:self dictionary:v26 group:v44 error:error];
                    v28 = v27;
                    LOBYTE(error) = v27 != 0;
                    if (!v27 || (!v45 || (-[PDMeasurement metric](v27, "metric"), v29 = v14, v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 isEqualToString:v45], v30, v14 = v29, v31)) && (!v14 || -[PDMeasurement matchesVariables:ignoringMissing:](v28, "matchesVariables:ignoringMissing:", v14, 0)) && (v46 = 0, (*(v41 + 2))(v41, v28, &v46), v46 == 1))
                    {

                      goto LABEL_40;
                    }

                    error = errorCopy;
                  }

                  v23 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
                  blockCopy = v41;
                  filterCopy = v39;
                  v20 = v36;
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v44;
              ++v20;
              v19 = v37;
              v17 = v40;
            }

            while (v20 != v38);
            v18 = [v40 countByEnumeratingWithState:&v51 objects:v56 count:16];
            v32 = 1;
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v32 = 1;
        }

LABEL_41:

        v15 = v32 | error;
        goto LABEL_42;
      }

      v15 = 1;
    }

    else
    {
      v16 = handle_malformed_data(error, @"perfdata data");
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_43:

  return v15 & 1;
}

- (BOOL)enumerateAggregatedMeasurementsMatchingNullableFilter:(id)filter ignoringVariables:(id)variables error:(id *)error usingBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  variablesCopy = variables;
  blockCopy = block;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __104__PDContainer_enumerateAggregatedMeasurementsMatchingNullableFilter_ignoringVariables_error_usingBlock___block_invoke;
  v36[3] = &unk_27A70FF40;
  v15 = variablesCopy;
  v37 = v15;
  v16 = v13;
  v38 = v16;
  selfCopy = self;
  v17 = v14;
  v40 = v17;
  v18 = [(PDContainer *)self enumerateMeasurementsMatchingNullableFilter:filterCopy error:error usingBlock:v36];
  v19 = v18;
  if (v18)
  {
    v29 = v18;
    v30 = filterCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
LABEL_4:
      v24 = 0;
      while (1)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [v16 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * v24)];
        if (!v25)
        {
          pdwriter_open_stream_cold_1();
        }

        v26 = v25;
        v31 = 0;
        measurement = [v25 measurement];
        blockCopy[2](blockCopy, measurement, &v31);

        LOBYTE(measurement) = v31;
        if (measurement)
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v22)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    filterCopy = v30;
    v19 = v29;
  }

  return v19;
}

void __104__PDContainer_enumerateAggregatedMeasurementsMatchingNullableFilter_ignoringVariables_error_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (*(a1 + 32))
  {
    [v3 metricFilterIgnoringVariables:?];
  }

  else
  {
    [v3 metricFilter];
  }
  v4 = ;
  v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = *(a1 + 40);
    v7 = [PDAggregateMeasurement alloc];
    v8 = *(a1 + 48);
    v9 = [v11 metric];
    v10 = [v11 unitString];
    v5 = [(PDAggregateMeasurement *)v7 initWithContainer:v8 metric:v9 unitString:v10];
    [v6 setObject:v5 forKeyedSubscript:v4];

    [*(a1 + 56) addObject:v4];
  }

  [(PDAggregateMeasurement *)v5 updateWithMeasurement:v11];
}

- (id)aggregateMeasurementsMatchingFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__PDContainer_aggregateMeasurementsMatchingFilter_error___block_invoke;
  v9[3] = &unk_27A70FF68;
  v9[4] = self;
  v9[5] = &v10;
  if ([(PDContainer *)self enumerateMeasurementsMatchingFilter:filterCopy error:error usingBlock:v9])
  {
    measurement = [v11[5] measurement];
  }

  else
  {
    measurement = 0;
  }

  _Block_object_dispose(&v10, 8);

  return measurement;
}

void __57__PDContainer_aggregateMeasurementsMatchingFilter_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (!v3)
  {
    v4 = [PDAggregateMeasurement alloc];
    v5 = *(a1 + 32);
    v6 = [v11 metric];
    v7 = [v11 unitString];
    v8 = [(PDAggregateMeasurement *)v4 initWithContainer:v5 metric:v6 unitString:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v3 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v3 updateWithMeasurement:v11];
}

@end