@interface PDMeasurement
- (BOOL)enumerateHistogramBucketsWithError:(id *)error usingBlock:(id)block;
- (BOOL)enumeratePercentilesWithError:(id *)error usingBlock:(id)block;
- (BOOL)isComparableTo:(id)to ignoringNullableVariables:(id)variables;
- (BOOL)isLike:(id)like;
- (BOOL)matchesMetricFilter:(id)filter;
- (BOOL)matchesVariables:(id)variables ignoringMissing:(BOOL)missing;
- (PDContainer)container;
- (PDMeasurement)initWithContainer:(id)container dictionary:(id)dictionary group:(unint64_t)group error:(id *)error;
- (id)description;
- (id)metricFilter;
- (id)metricFilterIgnoringNullableVariables:(id)variables;
- (unint64_t)histogramBucketCount;
- (unint64_t)percentileCount;
@end

@implementation PDMeasurement

- (PDMeasurement)initWithContainer:(id)container dictionary:(id)dictionary group:(unint64_t)group error:(id *)error
{
  v98 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  dictionaryCopy = dictionary;
  v95.receiver = self;
  v95.super_class = PDMeasurement;
  v12 = [(PDMeasurement *)&v95 init];
  v13 = v12;
  if (v12)
  {
    [(PDMeasurement *)v12 setContainer:containerCopy];
    [(PDMeasurement *)v13 setMeasurement:dictionaryCopy];
    [(PDMeasurement *)v13 setGroup:group];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"metric"];
    if (!v14 || (v15 = 0x277CCA000uLL, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v24 = handle_malformed_data(error, @"measurement metric");
LABEL_54:

      goto LABEL_55;
    }

    [(PDMeasurement *)v13 setMetric:v14];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"unit"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v24 = handle_malformed_data(error, @"measurement unit");
LABEL_53:

      goto LABEL_54;
    }

    errorCopy = error;
    [(PDMeasurement *)v13 setUnitString:v16];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"variables"];
    v78 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = handle_malformed_data(error, @"measurement variables");
LABEL_52:

        goto LABEL_53;
      }

      variables = [containerCopy variables];
      v20 = [variables count];

      if (!v20)
      {
        [(PDMeasurement *)v13 setVariables:v18];
LABEL_15:
        [dictionaryCopy objectForKeyedSubscript:@"labels"];
        v80 = v86 = dictionaryCopy;
        if (v80)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v24 = handle_malformed_data(errorCopy, @"measurement labels");
LABEL_51:

            goto LABEL_52;
          }

          labels = [containerCopy labels];
          v26 = [labels count];

          v76 = containerCopy;
          if (v26)
          {
            labels2 = [containerCopy labels];
            v28 = [labels2 mutableCopy];
            [(PDMeasurement *)v13 setLabels:v28];
          }

          else
          {
            labels2 = [MEMORY[0x277CBEB38] dictionary];
            [(PDMeasurement *)v13 setLabels:labels2];
          }

          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v30 = v80;
          allKeys = [v80 allKeys];
          v84 = [allKeys countByEnumeratingWithState:&v91 objects:v97 count:16];
          if (v84)
          {
            v81 = allKeys;
            v82 = *v92;
            while (2)
            {
              v31 = 0;
              do
              {
                if (*v92 != v82)
                {
                  objc_enumerationMutation(allKeys);
                }

                v32 = *(*(&v91 + 1) + 8 * v31);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  handle_malformed_data(errorCopy, @"measurement label key");
                  objc_claimAutoreleasedReturnValue();

                  v24 = 0;
                  containerCopy = v76;
                  goto LABEL_51;
                }

                v33 = v15;
                v34 = [v30 objectForKeyedSubscript:v32];
                labels3 = [(PDMeasurement *)v13 labels];
                v36 = [labels3 objectForKeyedSubscript:v32];

                if (v36)
                {
                  [v36 addObject:v34];
                }

                else
                {
                  labels4 = [(PDMeasurement *)v13 labels];
                  [MEMORY[0x277CBEB58] setWithObject:v34];
                  v38 = v14;
                  v40 = v39 = v16;
                  [labels4 setValue:v40 forKey:v32];

                  v16 = v39;
                  v14 = v38;
                  v30 = v80;
                }

                ++v31;
                v15 = v33;
                dictionaryCopy = v86;
                allKeys = v81;
              }

              while (v84 != v31);
              v84 = [v81 countByEnumeratingWithState:&v91 objects:v97 count:16];
              if (v84)
              {
                continue;
              }

              break;
            }
          }

          containerCopy = v76;
        }

        else
        {
          allKeys = [containerCopy labels];
          [(PDMeasurement *)v13 setLabels:allKeys];
        }

        v41 = [dictionaryCopy objectForKeyedSubscript:@"larger_better"];
        if (not_a_number(v41, errorCopy, @"measurement larger_better"))
        {
          v24 = 0;
        }

        else
        {
          v85 = v41;
          v42 = v15;
          if (v41)
          {
            bOOLValue = [v41 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          [(PDMeasurement *)v13 setLargerBetter:bOOLValue, containerCopy, v78];
          v44 = [dictionaryCopy objectForKeyedSubscript:@"value"];
          [(PDMeasurement *)v13 setValue:v44];

          value = [(PDMeasurement *)v13 value];
          v46 = not_a_number(value, errorCopy, @"measurement value");

          if (v46 & 1) != 0 || ([dictionaryCopy objectForKeyedSubscript:@"samples"], v47 = objc_claimAutoreleasedReturnValue(), -[PDMeasurement setSampleCount:](v13, "setSampleCount:", v47), v47, -[PDMeasurement sampleCount](v13, "sampleCount"), v48 = objc_claimAutoreleasedReturnValue(), v49 = not_a_number(v48, errorCopy, @"measurement samples"), v48, (v49) || (objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"mean"), v50 = objc_claimAutoreleasedReturnValue(), -[PDMeasurement setMean:](v13, "setMean:", v50), v50, -[PDMeasurement mean](v13, "mean"), v51 = objc_claimAutoreleasedReturnValue(), v52 = not_a_number(v51, errorCopy, @"measurement mean"), v51, (v52) || (objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"std_dev"), v53 = objc_claimAutoreleasedReturnValue(), -[PDMeasurement setStandardDeviation:](v13, "setStandardDeviation:", v53), v53, -[PDMeasurement standardDeviation](v13, "standardDeviation"), v54 = objc_claimAutoreleasedReturnValue(), v55 = not_a_number(v54, errorCopy, @"measurement std_dev"), v54, (v55) || (objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"minimum"), v56 = objc_claimAutoreleasedReturnValue(), -[PDMeasurement setMinimum:](v13, "setMinimum:", v56), v56, -[PDMeasurement minimum](v13, "minimum"), v57 = objc_claimAutoreleasedReturnValue(), v58 = not_a_number(v57, errorCopy, @"measurement minimum"), v57, (v58) || (objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"maximum"), v59 = objc_claimAutoreleasedReturnValue(), -[PDMeasurement setMaximum:](v13, "setMaximum:", v59), v59, -[PDMeasurement maximum](v13, "maximum"), v60 = objc_claimAutoreleasedReturnValue(), v61 = not_a_number(v60, errorCopy, @"measurement maximum"), v60, (v61))
          {
            v24 = 0;
          }

          else
          {
            v83 = v16;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            measurement = [(PDMeasurement *)v13 measurement];
            v64 = [measurement objectForKeyedSubscript:@"tags"];

            v65 = v64;
            v66 = [v64 countByEnumeratingWithState:&v87 objects:v96 count:16];
            if (v66)
            {
              v67 = v66;
              v68 = *v88;
              do
              {
                for (i = 0; i != v67; ++i)
                {
                  if (*v88 != v68)
                  {
                    objc_enumerationMutation(v65);
                  }

                  v70 = *(*(&v87 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [*(v42 + 3240) stringWithUTF8String:pdtag_summary];
                    v72 = v71 = v42;
                    v73 = [v70 isEqualToString:v72];

                    if (v73)
                    {
                      [(PDMeasurement *)v13 setSummary:1];
                      v42 = v71;
                      dictionaryCopy = v86;
                    }

                    else
                    {
                      v74 = [*(v71 + 3240) stringWithUTF8String:pdtag_context];
                      v75 = [v70 isEqualToString:v74];

                      v42 = v71;
                      dictionaryCopy = v86;
                      if (v75)
                      {
                        [(PDMeasurement *)v13 setContext:1];
                      }
                    }
                  }
                }

                v67 = [v65 countByEnumeratingWithState:&v87 objects:v96 count:16];
              }

              while (v67);
            }

            v24 = v13;
            v16 = v83;
          }

          containerCopy = v77;
          v41 = v85;
        }

        goto LABEL_51;
      }

      variables2 = [containerCopy variables];
      v22 = [variables2 mutableCopy];
      [(PDMeasurement *)v13 setVariables:v22];

      variables3 = [(PDMeasurement *)v13 variables];
      [variables3 setValuesForKeysWithDictionary:v18];
    }

    else
    {
      variables3 = [containerCopy variables];
      [(PDMeasurement *)v13 setVariables:variables3];
    }

    goto LABEL_15;
  }

  v24 = 0;
LABEL_55:

  return v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  metric = [(PDMeasurement *)self metric];
  unitString = [(PDMeasurement *)self unitString];
  v6 = [v3 stringWithFormat:@"PDMeasurement: %@ (%@)", metric, unitString];

  return v6;
}

- (BOOL)matchesMetricFilter:(id)filter
{
  filterCopy = filter;
  container = [(PDMeasurement *)self container];
  v6 = strip_container_prefix(container, filterCopy);

  v7 = get_metric_filter_metric(v6);
  metric = [(PDMeasurement *)self metric];
  v9 = [v7 isEqualToString:metric];

  if (v9)
  {
    v10 = get_metric_filter_variables(v6, 0);
    if (v10)
    {
      v11 = [(PDMeasurement *)self matchesVariables:v10 ignoringMissing:0];
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

- (BOOL)matchesVariables:(id)variables ignoringMissing:(BOOL)missing
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  variablesCopy = variables;
  v7 = [variablesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(variablesCopy);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        variables = [(PDMeasurement *)self variables];
        v13 = [variables objectForKeyedSubscript:v11];

        if (!missing && !v13 || v13 && ([variablesCopy objectForKeyedSubscript:v11], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, (v15 & 1) == 0))
        {

          v16 = 0;
          goto LABEL_15;
        }
      }

      v8 = [variablesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_15:

  return v16;
}

- (id)metricFilter
{
  cachedMetricFilter = [(PDMeasurement *)self cachedMetricFilter];

  if (!cachedMetricFilter)
  {
    v4 = [(PDMeasurement *)self metricFilterIgnoringNullableVariables:0];
    [(PDMeasurement *)self setCachedMetricFilter:v4];
  }

  return [(PDMeasurement *)self cachedMetricFilter];
}

- (id)metricFilterIgnoringNullableVariables:(id)variables
{
  v25 = *MEMORY[0x277D85DE8];
  variablesCopy = variables;
  container = [(PDMeasurement *)self container];
  name = [container name];
  v7 = [name mutableCopy];

  metric = [(PDMeasurement *)self metric];
  [v7 appendFormat:@".%@", metric];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  variables = [(PDMeasurement *)self variables];
  allKeys = [variables allKeys];
  v11 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if (!variablesCopy || ([variablesCopy containsObject:*(*(&v20 + 1) + 8 * i)] & 1) == 0)
        {
          variables2 = [(PDMeasurement *)self variables];
          v18 = [variables2 objectForKeyedSubscript:v16];
          [v7 appendFormat:@", %@=%@", v16, v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  return v7;
}

- (BOOL)isLike:(id)like
{
  likeCopy = like;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [(PDMeasurement *)self isComparableTo:likeCopy];

  return v5;
}

- (BOOL)isComparableTo:(id)to ignoringNullableVariables:(id)variables
{
  toCopy = to;
  variablesCopy = variables;
  metric = [(PDMeasurement *)self metric];
  metric2 = [toCopy metric];
  if (![metric isEqualToString:metric2])
  {
    v15 = 0;
LABEL_10:

    goto LABEL_11;
  }

  container = [(PDMeasurement *)self container];
  container2 = [toCopy container];
  v12 = [container isComparableTo:container2];

  if (v12)
  {
    if (variablesCopy && [variablesCopy count])
    {
      variables = [(PDMeasurement *)self variables];
      metric = [variables mutableCopy];

      [metric removeObjectsForKeys:variablesCopy];
      variables2 = [toCopy variables];
      metric2 = [variables2 mutableCopy];

      [metric2 removeObjectsForKeys:variablesCopy];
    }

    else
    {
      metric = [(PDMeasurement *)self variables];
      metric2 = [toCopy variables];
    }

    v15 = [metric isEqualToDictionary:metric2];
    goto LABEL_10;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (unint64_t)histogramBucketCount
{
  measurement = [(PDMeasurement *)self measurement];
  v3 = [measurement objectForKeyedSubscript:@"histogram"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [[PDBucket alloc] initWithDictionary:v4 error:0];
      v6 = v5;
      if (v5)
      {
        v7 = [(PDBucket *)v5 count]== 0;
        v8 = [v3 count] - v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)enumerateHistogramBucketsWithError:(id *)error usingBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  measurement = [(PDMeasurement *)self measurement];
  v8 = [measurement objectForKeyedSubscript:@"histogram"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 count];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = 0;
        v15 = *v35;
        v16 = v9 - 1;
        v31 = 1;
        obj = v10;
        selfCopy = self;
        v29 = v9 - 1;
        while (2)
        {
          v17 = 0;
          v18 = v16 - v13;
          v30 = v13 + v12;
          v19 = v14;
          do
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v34 + 1) + 8 * v17);
            if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v26 = handle_malformed_data(error, @"histogram bucket");
              v22 = 0;
LABEL_25:

              goto LABEL_26;
            }

            v21 = [[PDBucket alloc] initWithDictionary:v20 error:error];
            v14 = v21;
            v22 = v21 != 0;
            if (!v21)
            {
              goto LABEL_24;
            }

            if (v19)
            {
              if (v18 == v17)
              {
                v31 &= [(PDBucket *)v21 count]!= 0;
              }

              [(PDBucket *)v14 lowerInclusiveBound];
              [(PDBucket *)v19 setUpperBound:?];
              [(PDBucket *)v19 setHasInclusiveUpperBound:0];
              v33 = 0;
              blockCopy[2](blockCopy, v19, &v33);
              if (v33 == 1)
              {
LABEL_24:

                goto LABEL_25;
              }
            }

            ++v17;
            v19 = v14;
          }

          while (v12 != v17);
          v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          v16 = v29;
          v13 = v30;
          if (v12)
          {
            continue;
          }

          break;
        }

        if (v31)
        {
          maximum = [(PDMeasurement *)selfCopy maximum];
          if (maximum)
          {
            maximum2 = [(PDMeasurement *)selfCopy maximum];
            [maximum2 doubleValue];
            [(PDBucket *)v14 setUpperBound:?];
          }

          else
          {
            [(PDBucket *)v14 setUpperBound:1.79769313e308];
          }

          v22 = 1;
          [(PDBucket *)v14 setHasInclusiveUpperBound:1];
          v33 = 0;
          blockCopy[2](blockCopy, v14, &v33);
        }

        else
        {
          v22 = 1;
        }

        v19 = v14;
      }

      else
      {

        v19 = 0;
        v22 = 1;
      }

LABEL_26:
    }

    else
    {
      v25 = handle_malformed_data(error, @"measurement histogram");
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (unint64_t)percentileCount
{
  measurement = [(PDMeasurement *)self measurement];
  v3 = [measurement objectForKeyedSubscript:@"percentiles"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 count];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)enumeratePercentilesWithError:(id *)error usingBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  measurement = [(PDMeasurement *)self measurement];
  v8 = [measurement objectForKeyedSubscript:@"percentiles"];

  if (!v8)
  {
    v21 = 1;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = handle_malformed_data(error, @"measurement percentiles");
    v21 = 0;
    goto LABEL_27;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v10)
  {
LABEL_20:
    v21 = 1;
    goto LABEL_26;
  }

  v11 = v10;
  v12 = *v29;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v23 = handle_malformed_data(error, @"measurement percentile");
LABEL_25:
        v21 = 0;
        goto LABEL_26;
      }

      v15 = [v14 objectForKeyedSubscript:@"%"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v24 = handle_malformed_data(error, @"percentile %");
LABEL_24:

        goto LABEL_25;
      }

      v16 = [v14 objectForKeyedSubscript:@"value"];
      if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v25 = handle_malformed_data(error, @"percentile value");

        goto LABEL_24;
      }

      v27 = 0;
      [v15 doubleValue];
      v18 = v17;
      [v16 doubleValue];
      blockCopy[2](blockCopy, &v27, v18, v19);
      v20 = v27;

      if (v20)
      {
        goto LABEL_20;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v21 = 1;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_26:

LABEL_27:
  return v21;
}

- (PDContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end