@interface FedStatsPluginMaskingDataParameters
+ (id)parametersWithConfiguration:(id)configuration error:(id *)error;
- (FedStatsPluginMaskingDataParameters)initWithResultCap:(unint64_t)cap fieldValueSets:(id)sets;
- (id)maskedResultsFrom:(id)from;
- (id)maskingData;
- (void)maskingData;
@end

@implementation FedStatsPluginMaskingDataParameters

- (FedStatsPluginMaskingDataParameters)initWithResultCap:(unint64_t)cap fieldValueSets:(id)sets
{
  setsCopy = sets;
  v11.receiver = self;
  v11.super_class = FedStatsPluginMaskingDataParameters;
  v8 = [(FedStatsPluginMaskingDataParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fieldValueSets, sets);
    v9->_resultCap = cap;
  }

  return v9;
}

+ (id)parametersWithConfiguration:(id)configuration error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (!configurationCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (error)
    {
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_19;
  }

  v6 = [configurationCopy objectForKey:@"resultCap"];
  if (!v6)
  {
    if (error)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([v6 integerValue] < 0 || (objc_msgSend(v6, "doubleValue"), v7 != objc_msgSend(v6, "unsignedIntegerValue")))
  {
    if (error)
    {
      v9 = LABEL_16:;
      *error = [FedStatsPluginError errorWithCode:300 description:v9];

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v12 = [configurationCopy objectForKey:@"fieldValueSets"];
  if (!v12)
  {
    if (!error)
    {
      goto LABEL_43;
    }

    v20 = LABEL_42:;
    *error = [FedStatsPluginError errorWithCode:300 description:v20];

    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (![v12 count])
  {
    if (error)
    {
      goto LABEL_42;
    }

LABEL_43:
    v8 = 0;
    goto LABEL_44;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v14)
  {
    goto LABEL_35;
  }

  v15 = v14;
  v16 = *v25;
  v23 = unsignedIntegerValue;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v25 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v24 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
LABEL_53:

          goto LABEL_43;
        }
        v19 = ;
        *error = [FedStatsPluginError errorWithCode:300 description:v19];
        goto LABEL_52;
      }

      v19 = [v13 objectForKey:v18];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
LABEL_51:
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:v21, @"fieldValueSets", v18];
          *error = [FedStatsPluginError errorWithCode:300 description:v22];
        }

LABEL_52:

        goto LABEL_53;
      }

      if (![v19 count])
      {
        if (error)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    unsignedIntegerValue = v23;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v8 = [[FedStatsPluginMaskingDataParameters alloc] initWithResultCap:unsignedIntegerValue fieldValueSets:v13];
LABEL_44:

LABEL_18:
LABEL_19:

  return v8;
}

- (id)maskingData
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  fieldValueSets = [(FedStatsPluginMaskingDataParameters *)self fieldValueSets];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(fieldValueSets, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  fieldValueSets2 = [(FedStatsPluginMaskingDataParameters *)self fieldValueSets];
  v7 = [fieldValueSets2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(fieldValueSets2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        fieldValueSets3 = [(FedStatsPluginMaskingDataParameters *)self fieldValueSets];
        v13 = [fieldValueSets3 objectForKey:v11];

        v14 = [v13 objectAtIndex:{arc4random_uniform(objc_msgSend(v13, "count"))}];
        [v5 setObject:v14 forKey:v11];
      }

      v8 = [fieldValueSets2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [v5 setObject:MEMORY[0x277CBEC38] forKey:@"%%FedStatsMaskingData%%"];
  v15 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(FedStatsPluginMaskingDataParameters *)v5 maskingData];
  }

  return v5;
}

- (id)maskedResultsFrom:(id)from
{
  fromCopy = from;
  v5 = [MEMORY[0x277D08458] samplerWithCount:{-[FedStatsPluginMaskingDataParameters resultCap](self, "resultCap")}];
  [v5 addItems:fromCopy];
  resultCap = [(FedStatsPluginMaskingDataParameters *)self resultCap];
  if (resultCap > [fromCopy count])
  {
    resultCap2 = [(FedStatsPluginMaskingDataParameters *)self resultCap];
    if (resultCap2 != [fromCopy count])
    {
      v8 = 0;
      do
      {
        maskingData = [(FedStatsPluginMaskingDataParameters *)self maskingData];
        [v5 addItem:maskingData];

        ++v8;
        resultCap3 = [(FedStatsPluginMaskingDataParameters *)self resultCap];
      }

      while (v8 < resultCap3 - [fromCopy count]);
    }
  }

  getResults = [v5 getResults];

  return getResults;
}

- (void)maskingData
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "Masking data = %@", &v2, 0xCu);
}

@end