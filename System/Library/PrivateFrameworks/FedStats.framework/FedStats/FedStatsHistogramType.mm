@interface FedStatsHistogramType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsHistogramType)initWithFeatureType:(id)type metricField:(id)field clippingBound:(id)bound featureFactors:(id)factors defaultFeatureFactor:(id)factor featureField:(id)featureField normType:(id)normType normDediscoTaskConfig:(id)self0;
- (id)decodeFromHistogramVector:(id)vector possibleError:(id *)error;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error;
- (id)encodeToHistogramVector:(id)vector possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error;
- (id)invertScaleAndShift:(id)shift;
- (id)scaleAndShift:(id)shift;
- (unint64_t)classCount;
@end

@implementation FedStatsHistogramType

- (FedStatsHistogramType)initWithFeatureType:(id)type metricField:(id)field clippingBound:(id)bound featureFactors:(id)factors defaultFeatureFactor:(id)factor featureField:(id)featureField normType:(id)normType normDediscoTaskConfig:(id)self0
{
  typeCopy = type;
  fieldCopy = field;
  boundCopy = bound;
  factorsCopy = factors;
  factorCopy = factor;
  featureFieldCopy = featureField;
  normTypeCopy = normType;
  configCopy = config;
  v28.receiver = self;
  v28.super_class = FedStatsHistogramType;
  v19 = [(FedStatsHistogramType *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_featureType, type);
    objc_storeStrong(&v20->_metricField, field);
    objc_storeStrong(&v20->_clippingBound, bound);
    objc_storeStrong(&v20->_featureFactors, factors);
    objc_storeStrong(&v20->_defaultFeatureFactor, factor);
    objc_storeStrong(&v20->_featureField, featureField);
    objc_storeStrong(&v20->_normType, normType);
    objc_storeStrong(&v20->_normDediscoTypeConfig, config);
  }

  return v20;
}

- (unint64_t)classCount
{
  featureType = [(FedStatsHistogramType *)self featureType];
  classCount = [featureType classCount];

  return classCount;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v74[2] = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = [dictCopy objectForKey:kFedStatsHistogramTypeMetricFieldKey];
  if (!v6)
  {
    if (error)
    {
      v17 = LABEL_24:;
      *error = [FedStatsError errorWithCode:300 description:v17];
    }

LABEL_25:
    v18 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v7 = [dictCopy objectForKey:kFedStatsHistogramTypeNormTypeKey];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
        v19 = {;
        *error = [FedStatsError errorWithCode:300 description:v19];
      }

      v18 = 0;
      goto LABEL_36;
    }
  }

  v8 = [dictCopy objectForKey:kFedStatsHistogramTypeFeatureTypesKey];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
    {
      v9 = [dictCopy objectForKey:kFedStatsHistogramTypeClippingBoundKey];
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 floatValue];
          if (v10 > 0.0)
          {
            v67 = v9;
            v11 = [dictCopy objectForKey:kFedStatsCombinationTypeAvailableTypes];
            if (!v11)
            {
              if (error)
                v24 = {;
                *error = [FedStatsError errorWithCode:300 description:v24];

                v11 = 0;
              }

              v18 = 0;
              goto LABEL_164;
            }

            v66 = v11;
            v12 = [v11 objectForKey:v7];
            v13 = v12;
            if (!v7)
            {
LABEL_15:
              v65 = v13;
              if ([v8 count] != 1)
              {
                v73[0] = kFedStatsCombinationTypeStructure;
                v73[1] = kFedStatsCombinationTypeAvailableTypes;
                v74[0] = v8;
                v74[1] = v66;
                v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
                v70 = 0;
                v26 = [FedStatsCombinationType createFromDict:v25 possibleError:&v70];
                v27 = v70;
                v28 = v27;
                v64 = v26;
                if (!v26)
                {
                  v9 = v67;
                  if (error)
                  {
                    v40 = v27;
                    v41 = [FedStatsError errorWithCode:300 underlyingError:v27 description:@"HistogramType cannot create feature type"];
                    v28 = v40;
                    *error = v41;
                  }

                  firstObject = 0;
                  v16 = 0;
                  v18 = 0;
                  goto LABEL_162;
                }

                v63 = 0;
LABEL_52:
                v9 = v67;
                v29 = [dictCopy objectForKey:kFedStatsHistogramTypeDefaultFeatureFactorKey];
                if (v29)
                {
                  v30 = v29;
                  objc_opt_class();
                  v62 = v30;
                  if (objc_opt_isKindOfClass())
                  {
                    v61 = [v30 objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
                    if (v61)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v61 floatValue];
                        if (v31 > 0.0)
                        {
                          v32 = [v30 objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
                          if (v32)
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v59 = [dictCopy objectForKey:kFedStatsHistogramTypeFeatureFactorsKey];
                              if (v59)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v54 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v59, "count")}];
                                  if ([v59 count])
                                  {
                                    v56 = 0;
                                    while (1)
                                    {
                                      v33 = [v59 objectAtIndex:v56];
                                      objc_opt_class();
                                      v58 = v33;
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        break;
                                      }

                                      v57 = [v33 objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
                                      if (!v57)
                                      {
                                        if (!error)
                                        {
                                          goto LABEL_151;
                                        }

LABEL_144:
                                        kFedStatsHistogramTypeFeatureFactorScaleKey = [MEMORY[0x277CCACA8] stringWithFormat:v47, kFedStatsHistogramTypeFeatureFactorsKey, v56, kFedStatsHistogramTypeFeatureFactorScaleKey];
                                        *error = [FedStatsError errorWithCode:300 description:kFedStatsHistogramTypeFeatureFactorScaleKey];

                                        goto LABEL_151;
                                      }

                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        if (!error)
                                        {
                                          goto LABEL_151;
                                        }

                                        goto LABEL_144;
                                      }

                                      [v57 floatValue];
                                      if (v34 <= 0.0)
                                      {
                                        if (!error)
                                        {
                                          goto LABEL_151;
                                        }

                                        goto LABEL_144;
                                      }

                                      v35 = [v33 objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
                                      if (!v35)
                                      {
                                        if (error)
                                        {
                                          goto LABEL_149;
                                        }

LABEL_150:

LABEL_151:
                                        goto LABEL_152;
                                      }

                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        if (error)
                                        {
LABEL_149:
                                          kFedStatsHistogramTypeFeatureFactorShiftKey = [MEMORY[0x277CCACA8] stringWithFormat:v49, kFedStatsHistogramTypeFeatureFactorsKey, v56, kFedStatsHistogramTypeFeatureFactorShiftKey];
                                          *error = [FedStatsError errorWithCode:300 description:kFedStatsHistogramTypeFeatureFactorShiftKey];
                                        }

                                        goto LABEL_150;
                                      }

                                      v71[0] = kFedStatsHistogramTypeFeatureFactorScaleKey;
                                      v71[1] = kFedStatsHistogramTypeFeatureFactorShiftKey;
                                      v72[0] = v57;
                                      v72[1] = v35;
                                      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
                                      if (v63)
                                      {
                                        v36 = [v33 objectForKey:v63];
                                        if (v36)
                                        {
                                          v68 = 0;
                                          v18 = [v64 encodeToIndex:v36 possibleError:&v68];
                                          v52 = v68;
                                        }

                                        else
                                        {
                                          v52 = [FedStatsError errorWithCode:401 description:@"HistogramType cannot find feature value"];
                                          v18 = 0;
                                        }
                                      }

                                      else
                                      {
                                        v69 = 0;
                                        v18 = [v64 encodeToIndex:v33 possibleError:&v69];
                                        v52 = v69;
                                      }

                                      if (v18)
                                      {
                                        [v54 setObject:v53 forKey:v18];
                                      }

                                      else if (error)
                                        v37 = {;
                                        *error = [FedStatsError errorWithCode:300 underlyingError:v52 description:v37];
                                      }

                                      if (!v18)
                                      {
                                        goto LABEL_154;
                                      }

                                      if (++v56 >= [v59 count])
                                      {
                                        goto LABEL_81;
                                      }
                                    }

                                    if (error)
                                      v45 = {;
                                      *error = [FedStatsError errorWithCode:300 description:v45];
                                    }

                                    goto LABEL_152;
                                  }

LABEL_81:
                                  v38 = *MEMORY[0x277D05390];
                                  v58 = [dictCopy objectForKey:*MEMORY[0x277D05390]];
                                  if (!v7)
                                  {
LABEL_84:
                                    v18 = [[FedStatsHistogramType alloc] initWithFeatureType:v64 metricField:v6 clippingBound:v67 featureFactors:v54 defaultFeatureFactor:v62 featureField:v63 normType:v65 normDediscoTaskConfig:v58];
                                    goto LABEL_153;
                                  }

                                  if (v58)
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      goto LABEL_84;
                                    }

                                    if (error)
                                    {
                                      goto LABEL_137;
                                    }
                                  }

                                  else if (error)
                                  {
                                    v46 = LABEL_137:;
                                    *error = [FedStatsError errorWithCode:300 description:v46];
                                  }

LABEL_152:
                                  v18 = 0;
LABEL_153:

LABEL_154:
                                  goto LABEL_155;
                                }

                                if (error)
                                {
                                  goto LABEL_129;
                                }
                              }

                              else if (error)
                              {
                                v55 = LABEL_129:;
                                [FedStatsError errorWithCode:300 description:?];
                                *error = v18 = 0;

LABEL_155:
                                goto LABEL_156;
                              }

                              v18 = 0;
                              goto LABEL_155;
                            }

                            if (error)
                            {
                              goto LABEL_123;
                            }
                          }

                          else if (error)
                          {
                            v60 = LABEL_123:;
                            [FedStatsError errorWithCode:300 description:?];
                            *error = v18 = 0;

                            goto LABEL_156;
                          }

                          v18 = 0;
                          goto LABEL_156;
                        }

                        if (error)
                          v32 = {;
                          [FedStatsError errorWithCode:300 description:v32];
                          *error = v18 = 0;
LABEL_156:
                          v9 = v67;
                          goto LABEL_157;
                        }

                        v18 = 0;
                        v9 = v67;
LABEL_158:
                        firstObject = v63;
                        v16 = v64;
                        v42 = v61;
                        goto LABEL_159;
                      }

                      if (error)
                      {
                        goto LABEL_114;
                      }
                    }

                    else if (error)
                    {
                      v32 = LABEL_114:;
                      [FedStatsError errorWithCode:300 description:v32];
                      *error = v18 = 0;
LABEL_157:

                      goto LABEL_158;
                    }

                    v18 = 0;
                    goto LABEL_158;
                  }

                  if (!error)
                  {
                    v18 = 0;
                    firstObject = v63;
                    v16 = v64;
LABEL_160:
                    v29 = v62;
                    goto LABEL_161;
                  }
                }

                else
                {
                  if (!error)
                  {
                    v18 = 0;
                    firstObject = v63;
                    v16 = v64;
LABEL_161:

                    goto LABEL_162;
                  }

                  v62 = 0;
                }
                v42 = ;
                [FedStatsError errorWithCode:300 description:v42];
                *error = v18 = 0;
                firstObject = v63;
                v16 = v64;
LABEL_159:

                goto LABEL_160;
              }

              firstObject = [v8 firstObject];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = [v66 objectForKey:firstObject];
                if (v15)
                {
                  v16 = v15;
                  if ([v15 conformsToProtocol:&unk_285E13BF8])
                  {
                    v63 = firstObject;
                    v64 = v16;
                    goto LABEL_52;
                  }

                  if (error)
                    v44 = {;
                    *error = [FedStatsError errorWithCode:300 description:v44];
                  }

LABEL_105:
                  v18 = 0;
LABEL_162:

                  v13 = v65;
                  goto LABEL_163;
                }

                if (error)
                {
                  goto LABEL_103;
                }
              }

              else if (error)
              {
                v43 = LABEL_103:;
                *error = [FedStatsError errorWithCode:300 description:v43];
              }

              v16 = 0;
              goto LABEL_105;
            }

            if (v12)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_15;
              }

              if (error)
              {
                goto LABEL_89;
              }
            }

            else if (error)
            {
              v39 = LABEL_89:;
              *error = [FedStatsError errorWithCode:300 description:v39];
            }

            v18 = 0;
LABEL_163:

            v11 = v66;
LABEL_164:

            goto LABEL_46;
          }
        }

        if (error)
        {
          v22 = v9;
          v23 = LABEL_44:;
          v9 = v22;
          *error = [FedStatsError errorWithCode:300 description:v23];
        }
      }

      else if (error)
      {
        v22 = 0;
        goto LABEL_44;
      }

      v18 = 0;
LABEL_46:

      goto LABEL_35;
    }

    if (error)
    {
      v20 = LABEL_33:;
      *error = [FedStatsError errorWithCode:300 description:v20];
    }
  }

  else if (error)
  {
    goto LABEL_33;
  }

  v18 = 0;
LABEL_35:

LABEL_36:
LABEL_37:

  return v18;
}

- (id)scaleAndShift:(id)shift
{
  shiftCopy = shift;
  if (shiftCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(shiftCopy, "count")}];
    if ([shiftCopy count])
    {
      v6 = 0;
      do
      {
        featureFactors = [(FedStatsHistogramType *)self featureFactors];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
        defaultFeatureFactor = [featureFactors objectForKey:v8];

        if (!defaultFeatureFactor)
        {
          defaultFeatureFactor = [(FedStatsHistogramType *)self defaultFeatureFactor];
        }

        v10 = [defaultFeatureFactor objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
        [v10 floatValue];
        v12 = v11;

        v13 = [defaultFeatureFactor objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
        [v13 floatValue];
        v15 = v14;

        v16 = [shiftCopy objectAtIndex:v6];
        [v16 floatValue];
        v18 = -(v15 - (v12 * v17));

        *&v19 = v18;
        v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
        [v5 addObject:v20];

        ++v6;
      }

      while (v6 < [shiftCopy count]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)invertScaleAndShift:(id)shift
{
  shiftCopy = shift;
  if (shiftCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(shiftCopy, "count")}];
    if ([shiftCopy count])
    {
      v6 = 0;
      do
      {
        featureFactors = [(FedStatsHistogramType *)self featureFactors];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
        defaultFeatureFactor = [featureFactors objectForKey:v8];

        if (!defaultFeatureFactor)
        {
          defaultFeatureFactor = [(FedStatsHistogramType *)self defaultFeatureFactor];
        }

        v10 = [defaultFeatureFactor objectForKey:kFedStatsHistogramTypeFeatureFactorScaleKey];
        [v10 floatValue];
        v12 = v11;

        v13 = [defaultFeatureFactor objectForKey:kFedStatsHistogramTypeFeatureFactorShiftKey];
        [v13 floatValue];
        v15 = v14;

        v16 = [shiftCopy objectAtIndex:v6];
        [v16 floatValue];
        v18 = (v15 + v17) / v12;

        *&v19 = v18;
        v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
        [v5 addObject:v20];

        ++v6;
      }

      while (v6 < [shiftCopy count]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"encoding to index not implemented for histogram type"];
  }

  return 0;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"decoding from index not implemented for histogram type"];
  }

  return 0;
}

- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"encoding to one-hot vector not implemented for histogram type"];
  }

  return 0;
}

- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"decoding from vector not implemented for histogram type"];
  }

  return 0;
}

- (id)encodeToHistogramVector:(id)vector possibleError:(id *)error
{
  vectorCopy = vector;
  metricField = [(FedStatsHistogramType *)self metricField];
  v8 = [vectorCopy objectForKey:metricField];

  if (!v8)
  {
    if (error)
    {
      v14 = MEMORY[0x277CCACA8];
      metricField2 = [(FedStatsHistogramType *)self metricField];
      [v14 stringWithFormat:@"Histogram type encoder input is missing the key '%@'", metricField2];
      v17 = LABEL_9:;
      *error = [FedStatsError errorWithCode:401 description:v17];
    }

LABEL_10:
    v18 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v16 = MEMORY[0x277CCACA8];
      metricField2 = [(FedStatsHistogramType *)self metricField];
      [v16 stringWithFormat:@"Histogram type encoder input's value for '%@' is not a number", metricField2];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  featureType = [(FedStatsHistogramType *)self featureType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    featureType2 = [(FedStatsHistogramType *)self featureType];
    v29 = 0;
    v12 = [featureType2 encodeToIndex:vectorCopy possibleError:&v29];
    v13 = v29;
  }

  else
  {
    featureField = [(FedStatsHistogramType *)self featureField];
    featureType2 = [vectorCopy objectForKey:featureField];

    if (!featureType2)
    {
      if (error)
      {
        v24 = MEMORY[0x277CCACA8];
        featureField2 = [(FedStatsHistogramType *)self featureField];
        v26 = [v24 stringWithFormat:@"Histogram type encoder input data is missing value for the field %@", featureField2];
        *error = [FedStatsError errorWithCode:401 description:v26];
      }

      v13 = 0;
      goto LABEL_20;
    }

    featureType3 = [(FedStatsHistogramType *)self featureType];
    v28 = 0;
    v12 = [featureType3 encodeToIndex:featureType2 possibleError:&v28];
    v13 = v28;
  }

  if (!v12)
  {
    if (error)
    {
      [FedStatsError errorWithCode:401 underlyingError:v13 description:@"Histogram type encoder input data cannot be encoded to an index"];
      *error = v18 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v21 = MEMORY[0x277CBEB18];
  featureType4 = [(FedStatsHistogramType *)self featureType];
  v23 = [v21 arrayWithObject:&unk_285E12C50 repeated:{objc_msgSend(featureType4, "classCount")}];

  [v23 setObject:v8 atIndexedSubscript:{objc_msgSend(v12, "unsignedIntegerValue")}];
  v18 = [MEMORY[0x277CBEA90] dataWithArray:v23];

LABEL_21:
LABEL_22:

  return v18;
}

- (id)decodeFromHistogramVector:(id)vector possibleError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v7 = [MEMORY[0x277CBEA60] arrayWithData:vectorCopy];
  if ([v7 count])
  {
    v8 = 0;
    v9 = &unk_285E12DE8;
    v10 = -1;
    while (1)
    {
      v11 = [v7 objectAtIndex:v8];
      if (([v11 isEqualToNumber:&unk_285E12C50] & 1) == 0)
      {
        if (v10 != -1)
        {
          if (error)
          {
            *error = [FedStatsError errorWithCode:500 description:@"Histogram vector cannot have multiple indices with non-zero value"];
          }

          v19 = 0;
          goto LABEL_20;
        }

        v12 = v11;

        v9 = v12;
        v10 = v8;
      }

      if (++v8 >= [v7 count])
      {
        goto LABEL_9;
      }
    }
  }

  v10 = -1;
  v9 = &unk_285E12DE8;
LABEL_9:
  featureType = [(FedStatsHistogramType *)self featureType];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v22 = 0;
  v15 = [featureType decodeFromIndex:v14 possibleError:&v22];
  v16 = v22;

  if (v15)
  {
    metricField = [(FedStatsHistogramType *)self metricField];
    v23 = metricField;
    v24[0] = v9;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v19 = [v18 mutableCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 addEntriesFromDictionary:v15];
    }

    else
    {
      featureField = [(FedStatsHistogramType *)self featureField];
      [v19 setObject:v15 forKey:featureField];
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:500 underlyingError:v16 description:@"Cannot decode feature value for histogram"];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_20:

  return v19;
}

@end