@interface BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples)initWithLaunchTimeInMs:(id)ms endpointDelayInMs:(id)inMs siriResponseTimeInMs:(id)timeInMs timeToUufrInMs:(id)uufrInMs timeToFirstWordInMs:(id)wordInMs;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_endpointDelayInMsJSONArray;
- (id)_launchTimeInMsJSONArray;
- (id)_siriResponseTimeInMsJSONArray;
- (id)_timeToFirstWordInMsJSONArray;
- (id)_timeToUufrInMsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    launchTimeInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self launchTimeInMs];
    launchTimeInMs2 = [v5 launchTimeInMs];
    v8 = launchTimeInMs2;
    if (launchTimeInMs == launchTimeInMs2)
    {
    }

    else
    {
      launchTimeInMs3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self launchTimeInMs];
      launchTimeInMs4 = [v5 launchTimeInMs];
      v11 = [launchTimeInMs3 isEqual:launchTimeInMs4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    endpointDelayInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self endpointDelayInMs];
    endpointDelayInMs2 = [v5 endpointDelayInMs];
    v15 = endpointDelayInMs2;
    if (endpointDelayInMs == endpointDelayInMs2)
    {
    }

    else
    {
      endpointDelayInMs3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self endpointDelayInMs];
      endpointDelayInMs4 = [v5 endpointDelayInMs];
      v18 = [endpointDelayInMs3 isEqual:endpointDelayInMs4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    siriResponseTimeInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self siriResponseTimeInMs];
    siriResponseTimeInMs2 = [v5 siriResponseTimeInMs];
    v21 = siriResponseTimeInMs2;
    if (siriResponseTimeInMs == siriResponseTimeInMs2)
    {
    }

    else
    {
      siriResponseTimeInMs3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self siriResponseTimeInMs];
      siriResponseTimeInMs4 = [v5 siriResponseTimeInMs];
      v24 = [siriResponseTimeInMs3 isEqual:siriResponseTimeInMs4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    timeToUufrInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToUufrInMs];
    timeToUufrInMs2 = [v5 timeToUufrInMs];
    v27 = timeToUufrInMs2;
    if (timeToUufrInMs == timeToUufrInMs2)
    {
    }

    else
    {
      timeToUufrInMs3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToUufrInMs];
      timeToUufrInMs4 = [v5 timeToUufrInMs];
      v30 = [timeToUufrInMs3 isEqual:timeToUufrInMs4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    timeToFirstWordInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToFirstWordInMs];
    timeToFirstWordInMs2 = [v5 timeToFirstWordInMs];
    if (timeToFirstWordInMs == timeToFirstWordInMs2)
    {
      v12 = 1;
    }

    else
    {
      timeToFirstWordInMs3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToFirstWordInMs];
      timeToFirstWordInMs4 = [v5 timeToFirstWordInMs];
      v12 = [timeToFirstWordInMs3 isEqual:timeToFirstWordInMs4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v22[5] = *MEMORY[0x1E69E9840];
  _launchTimeInMsJSONArray = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _launchTimeInMsJSONArray];
  _endpointDelayInMsJSONArray = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _endpointDelayInMsJSONArray];
  _siriResponseTimeInMsJSONArray = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _siriResponseTimeInMsJSONArray];
  _timeToUufrInMsJSONArray = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _timeToUufrInMsJSONArray];
  _timeToFirstWordInMsJSONArray = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self _timeToFirstWordInMsJSONArray];
  v17 = @"launchTimeInMs";
  null = _launchTimeInMsJSONArray;
  if (!_launchTimeInMsJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15 = null;
  v22[0] = null;
  v18 = @"endpointDelayInMs";
  null2 = _endpointDelayInMsJSONArray;
  if (!_endpointDelayInMsJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null2;
  v19 = @"siriResponseTimeInMs";
  null3 = _siriResponseTimeInMsJSONArray;
  if (!_siriResponseTimeInMsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = null3;
  v20 = @"timeToUufrInMs";
  null4 = _timeToUufrInMsJSONArray;
  if (!_timeToUufrInMsJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null4;
  v21 = @"timeToFirstWordInMs";
  null5 = _timeToFirstWordInMsJSONArray;
  if (!_timeToFirstWordInMsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v17 count:{5, v15}];
  if (_timeToFirstWordInMsJSONArray)
  {
    if (_timeToUufrInMsJSONArray)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (_timeToUufrInMsJSONArray)
    {
LABEL_13:
      if (_siriResponseTimeInMsJSONArray)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (_siriResponseTimeInMsJSONArray)
  {
LABEL_14:
    if (_endpointDelayInMsJSONArray)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (_launchTimeInMsJSONArray)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!_endpointDelayInMsJSONArray)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (_launchTimeInMsJSONArray)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:

  return v13;
}

- (id)_timeToFirstWordInMsJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  timeToFirstWordInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToFirstWordInMs];
  v5 = [timeToFirstWordInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(timeToFirstWordInMs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [timeToFirstWordInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_timeToUufrInMsJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  timeToUufrInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToUufrInMs];
  v5 = [timeToUufrInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(timeToUufrInMs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [timeToUufrInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_siriResponseTimeInMsJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  siriResponseTimeInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self siriResponseTimeInMs];
  v5 = [siriResponseTimeInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(siriResponseTimeInMs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [siriResponseTimeInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_endpointDelayInMsJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  endpointDelayInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self endpointDelayInMs];
  v5 = [endpointDelayInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(endpointDelayInMs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [endpointDelayInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_launchTimeInMsJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  launchTimeInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self launchTimeInMs];
  v5 = [launchTimeInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(launchTimeInMs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [launchTimeInMs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v174[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"launchTimeInMs"];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {
    selfCopy2 = self;

    v6 = 0;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v173 = *MEMORY[0x1E696A578];
          v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"launchTimeInMs"];
          v174[0] = v9;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:&v173 count:1];
          selfCopy3 = 0;
          *error = [v34 initWithDomain:v35 code:2 userInfo:v15];
          goto LABEL_118;
        }

        selfCopy3 = 0;
        goto LABEL_119;
      }
    }

    selfCopy2 = self;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v6 = v6;
  v10 = [v6 countByEnumeratingWithState:&v136 objects:v172 count:16];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = *v137;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v137 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v136 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v170 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"launchTimeInMs"];
          v171 = v21;
          v22 = MEMORY[0x1E695DF20];
          v23 = &v171;
          v24 = &v170;
LABEL_21:
          v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
          self = selfCopy2;
          selfCopy3 = 0;
          *errorCopy2 = [v19 initWithDomain:v20 code:2 userInfo:v25];
          v15 = v6;
          goto LABEL_117;
        }

LABEL_22:
        selfCopy3 = 0;
        v15 = v6;
        self = selfCopy2;
        goto LABEL_118;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v168 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"launchTimeInMs"];
          v169 = v21;
          v22 = MEMORY[0x1E695DF20];
          v23 = &v169;
          v24 = &v168;
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      [v9 addObject:v14];
    }

    v11 = [v6 countByEnumeratingWithState:&v136 objects:v172 count:16];
  }

  while (v11);
LABEL_15:

  v15 = [dictionaryCopy objectForKeyedSubscript:@"endpointDelayInMs"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v17 = [v15 isEqual:null2];

  v116 = dictionaryCopy;
  if (v17)
  {

    v15 = 0;
LABEL_25:
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v15 = v15;
    v27 = [v15 countByEnumeratingWithState:&v132 objects:v165 count:16];
    if (!v27)
    {
      goto LABEL_34;
    }

    v28 = v27;
    v29 = *v133;
    while (1)
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v133 != v29)
        {
          objc_enumerationMutation(v15);
        }

        v31 = *(*(&v132 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          errorCopy4 = error;
          if (error)
          {
            v37 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v163 = *MEMORY[0x1E696A578];
            v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"endpointDelayInMs"];
            v164 = v117;
            v39 = MEMORY[0x1E695DF20];
            v40 = &v164;
            v41 = &v163;
LABEL_42:
            v42 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
            self = selfCopy2;
            selfCopy3 = 0;
            *errorCopy4 = [v37 initWithDomain:v38 code:2 userInfo:v42];
            v25 = v15;
            dictionaryCopy = v116;
            goto LABEL_116;
          }

LABEL_43:
          selfCopy3 = 0;
          v25 = v15;
          goto LABEL_44;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy4 = error;
          if (error)
          {
            v37 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v161 = *MEMORY[0x1E696A578];
            v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endpointDelayInMs"];
            v162 = v117;
            v39 = MEMORY[0x1E695DF20];
            v40 = &v162;
            v41 = &v161;
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        [v21 addObject:v31];
      }

      v28 = [v15 countByEnumeratingWithState:&v132 objects:v165 count:16];
      if (!v28)
      {
LABEL_34:

        v25 = [dictionaryCopy objectForKeyedSubscript:@"siriResponseTimeInMs"];
        null3 = [MEMORY[0x1E695DFB0] null];
        v33 = [v25 isEqual:null3];

        if (v33)
        {

          v25 = 0;
LABEL_48:
          v117 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v25 = v25;
          v43 = [v25 countByEnumeratingWithState:&v128 objects:v158 count:16];
          v112 = v21;
          if (!v43)
          {
            goto LABEL_57;
          }

          v44 = v43;
          v45 = *v129;
          while (1)
          {
            v46 = v25;
            for (k = 0; k != v44; ++k)
            {
              if (*v129 != v45)
              {
                objc_enumerationMutation(v46);
              }

              v48 = *(*(&v128 + 1) + 8 * k);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                errorCopy6 = error;
                if (error)
                {
                  v58 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v59 = *MEMORY[0x1E698F240];
                  v156 = *MEMORY[0x1E696A578];
                  v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"siriResponseTimeInMs"];
                  v157 = v115;
                  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
                  v61 = v58;
                  v62 = v59;
LABEL_65:
                  v65 = v60;
                  dictionaryCopy = v116;
                  v25 = v46;
                  selfCopy3 = 0;
                  *errorCopy6 = [v61 initWithDomain:v62 code:2 userInfo:?];
                  v42 = v46;
                  self = selfCopy2;
                  goto LABEL_66;
                }

LABEL_67:
                selfCopy3 = 0;
                v25 = v46;
                v42 = v46;
                dictionaryCopy = v116;
                self = selfCopy2;
                v21 = v112;
                goto LABEL_116;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                errorCopy6 = error;
                if (error)
                {
                  v63 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v64 = *MEMORY[0x1E698F240];
                  v154 = *MEMORY[0x1E696A578];
                  v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriResponseTimeInMs"];
                  v155 = v115;
                  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
                  v61 = v63;
                  v62 = v64;
                  goto LABEL_65;
                }

                goto LABEL_67;
              }

              [v117 addObject:v48];
            }

            v25 = v46;
            v44 = [v46 countByEnumeratingWithState:&v128 objects:v158 count:16];
            v21 = v112;
            if (!v44)
            {
LABEL_57:

              dictionaryCopy = v116;
              v42 = [v116 objectForKeyedSubscript:@"timeToUufrInMs"];
              null4 = [MEMORY[0x1E695DFB0] null];
              v50 = [v42 isEqual:null4];

              if (v50)
              {

                v42 = 0;
LABEL_71:
                v115 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v42, "count")}];
                v124 = 0u;
                v125 = 0u;
                v126 = 0u;
                v127 = 0u;
                obj = v42;
                v66 = [obj countByEnumeratingWithState:&v124 objects:v151 count:16];
                if (!v66)
                {
                  goto LABEL_80;
                }

                v67 = v66;
                v68 = *v125;
                while (1)
                {
                  v69 = v25;
                  for (m = 0; m != v67; ++m)
                  {
                    if (*v125 != v68)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v71 = *(*(&v124 + 1) + 8 * m);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      errorCopy8 = error;
                      if (error)
                      {
                        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v79 = *MEMORY[0x1E698F240];
                        v149 = *MEMORY[0x1E696A578];
                        v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"timeToUufrInMs"];
                        v150 = v110;
                        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
                        v81 = v78;
                        v82 = v79;
LABEL_89:
                        v25 = v69;
                        v42 = obj;
                        *errorCopy8 = [v81 initWithDomain:v82 code:2 userInfo:v80];

                        selfCopy3 = 0;
                        v65 = obj;
                        dictionaryCopy = v116;
                        self = selfCopy2;
                        v21 = v112;
                        goto LABEL_114;
                      }

LABEL_90:
                      selfCopy3 = 0;
                      v42 = obj;
                      v65 = obj;
                      dictionaryCopy = v116;
                      self = selfCopy2;
                      v25 = v69;
LABEL_66:
                      v21 = v112;
                      goto LABEL_115;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      errorCopy8 = error;
                      if (error)
                      {
                        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v84 = *MEMORY[0x1E698F240];
                        v147 = *MEMORY[0x1E696A578];
                        v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeToUufrInMs"];
                        v148 = v110;
                        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
                        v81 = v83;
                        v82 = v84;
                        goto LABEL_89;
                      }

                      goto LABEL_90;
                    }

                    [v115 addObject:v71];
                  }

                  v67 = [obj countByEnumeratingWithState:&v124 objects:v151 count:16];
                  dictionaryCopy = v116;
                  v25 = v69;
                  v21 = v112;
                  if (!v67)
                  {
LABEL_80:
                    v42 = obj;

                    v72 = [dictionaryCopy objectForKeyedSubscript:@"timeToFirstWordInMs"];
                    null5 = [MEMORY[0x1E695DFB0] null];
                    v108 = v72;
                    LODWORD(v72) = [v72 isEqual:null5];

                    if (v72)
                    {

                      goto LABEL_95;
                    }

                    if (v108)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (error)
                        {
                          v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v104 = *MEMORY[0x1E698F240];
                          v145 = *MEMORY[0x1E696A578];
                          v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"timeToFirstWordInMs"];
                          v146 = v111;
                          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
                          v106 = v105 = dictionaryCopy;
                          *error = [v103 initWithDomain:v104 code:2 userInfo:v106];
                          v21 = v112;

                          dictionaryCopy = v105;
                          selfCopy3 = 0;
                          self = selfCopy2;
                          v65 = v108;
                        }

                        else
                        {
                          selfCopy3 = 0;
                          self = selfCopy2;
                          v65 = v108;
                        }

                        goto LABEL_115;
                      }

                      v85 = v108;
                    }

                    else
                    {
LABEL_95:
                      v85 = 0;
                    }

                    v110 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v85, "count")}];
                    v120 = 0u;
                    v121 = 0u;
                    v122 = 0u;
                    v123 = 0u;
                    v109 = v85;
                    v86 = [v109 countByEnumeratingWithState:&v120 objects:v144 count:16];
                    if (!v86)
                    {
                      goto LABEL_105;
                    }

                    v87 = v86;
                    v88 = *v121;
LABEL_98:
                    v89 = v25;
                    v90 = 0;
                    while (1)
                    {
                      if (*v121 != v88)
                      {
                        objc_enumerationMutation(v109);
                      }

                      v91 = *(*(&v120 + 1) + 8 * v90);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        break;
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        errorCopy10 = error;
                        v25 = v89;
                        v21 = v112;
                        v42 = obj;
                        if (error)
                        {
                          v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v96 = *MEMORY[0x1E698F240];
                          v140 = *MEMORY[0x1E696A578];
                          v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeToFirstWordInMs"];
                          v141 = v97;
                          v98 = MEMORY[0x1E695DF20];
                          v99 = &v141;
                          v100 = &v140;
LABEL_112:
                          v101 = [v98 dictionaryWithObjects:v99 forKeys:v100 count:1];
                          *errorCopy10 = [v107 initWithDomain:v96 code:2 userInfo:v101];
                        }

                        goto LABEL_113;
                      }

                      [v110 addObject:v91];
                      if (v87 == ++v90)
                      {
                        v87 = [v109 countByEnumeratingWithState:&v120 objects:v144 count:16];
                        dictionaryCopy = v116;
                        v25 = v89;
                        v21 = v112;
                        if (v87)
                        {
                          goto LABEL_98;
                        }

LABEL_105:
                        v65 = v109;

                        self = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)selfCopy2 initWithLaunchTimeInMs:v9 endpointDelayInMs:v21 siriResponseTimeInMs:v117 timeToUufrInMs:v115 timeToFirstWordInMs:v110];
                        selfCopy3 = self;
                        v42 = obj;
LABEL_114:

LABEL_115:
LABEL_116:

LABEL_117:
                        goto LABEL_118;
                      }
                    }

                    errorCopy10 = error;
                    v25 = v89;
                    v21 = v112;
                    v42 = obj;
                    if (error)
                    {
                      v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v96 = *MEMORY[0x1E698F240];
                      v142 = *MEMORY[0x1E696A578];
                      v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"timeToFirstWordInMs"];
                      v143 = v97;
                      v98 = MEMORY[0x1E695DF20];
                      v99 = &v143;
                      v100 = &v142;
                      goto LABEL_112;
                    }

LABEL_113:
                    v65 = v109;

                    selfCopy3 = 0;
                    dictionaryCopy = v116;
                    self = selfCopy2;
                    goto LABEL_114;
                  }
                }
              }

              if (!v42)
              {
                goto LABEL_71;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_71;
              }

              if (error)
              {
                obja = objc_alloc(MEMORY[0x1E696ABC0]);
                v92 = *MEMORY[0x1E698F240];
                v152 = *MEMORY[0x1E696A578];
                v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"timeToUufrInMs"];
                v153 = v115;
                v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                v94 = [obja initWithDomain:v92 code:2 userInfo:v93];
                selfCopy3 = 0;
                *error = v94;
                v65 = v93;
                self = selfCopy2;
                goto LABEL_115;
              }

              selfCopy3 = 0;
LABEL_84:
              self = selfCopy2;
              goto LABEL_116;
            }
          }
        }

        if (!v25)
        {
          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_48;
        }

        if (error)
        {
          v74 = objc_alloc(MEMORY[0x1E696ABC0]);
          v75 = *MEMORY[0x1E698F240];
          v159 = *MEMORY[0x1E696A578];
          v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"siriResponseTimeInMs"];
          v160 = v117;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
          v76 = [v74 initWithDomain:v75 code:2 userInfo:v42];
          selfCopy3 = 0;
          *error = v76;
          goto LABEL_84;
        }

        selfCopy3 = 0;
LABEL_44:
        self = selfCopy2;
        goto LABEL_117;
      }
    }
  }

  if (!v15)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_25;
  }

  self = selfCopy2;
  if (error)
  {
    v51 = objc_alloc(MEMORY[0x1E696ABC0]);
    v52 = dictionaryCopy;
    v53 = *MEMORY[0x1E698F240];
    v166 = *MEMORY[0x1E696A578];
    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"endpointDelayInMs"];
    v167 = v54;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
    v56 = v53;
    dictionaryCopy = v52;
    selfCopy3 = 0;
    *error = [v51 initWithDomain:v56 code:2 userInfo:v55];
    v25 = v55;
    v21 = v54;
    goto LABEL_117;
  }

  selfCopy3 = 0;
LABEL_118:

LABEL_119:
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v55 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = self->_launchTimeInMs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v46 + 1) + 8 * v9) floatValue];
        PBDataWriterWriteFloatField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = self->_endpointDelayInMs;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v42 + 1) + 8 * v14) floatValue];
        PBDataWriterWriteFloatField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v12);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = self->_siriResponseTimeInMs;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      v19 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v38 + 1) + 8 * v19) floatValue];
        PBDataWriterWriteFloatField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_timeToUufrInMs;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v34 + 1) + 8 * v24) floatValue];
        PBDataWriterWriteFloatField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
    }

    while (v22);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = self->_timeToFirstWordInMs;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      v29 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v30 + 1) + 8 * v29) floatValue];
        PBDataWriterWriteFloatField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
    }

    while (v27);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v66.receiver = self;
  v66.super_class = BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples;
  v5 = [(BMEventBase *)&v66 init];
  if (!v5)
  {
LABEL_59:
    v63 = v5;
    goto LABEL_62;
  }

  v65 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v67) = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (v67 & 0x7F) << v11;
      if ((v67 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      if (v12++ >= 9)
      {
        v18 = 0;
        goto LABEL_17;
      }
    }

    v18 = [fromCopy hasError] ? 0 : v13;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v18 & 7) == 4)
    {
      break;
    }

    v19 = v18 >> 3;
    if ((v18 >> 3) <= 2)
    {
      if (v19 == 1)
      {
        v36 = MEMORY[0x1E696AD98];
        v67 = 0;
        v37 = [fromCopy position] + 4;
        if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 4, v38 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        LODWORD(v39) = v67;
        v47 = [v36 numberWithFloat:v39];
        if (!v47)
        {
LABEL_60:

          goto LABEL_61;
        }

        v42 = v47;
        v43 = v65;
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_40;
        }

        v24 = MEMORY[0x1E696AD98];
        v67 = 0;
        v25 = [fromCopy position] + 4;
        if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 4, v26 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        LODWORD(v27) = v67;
        v51 = [v24 numberWithFloat:v27];
        if (!v51)
        {
          goto LABEL_60;
        }

        v42 = v51;
        v43 = v6;
      }

LABEL_57:
      [v43 addObject:v42];
    }

    else
    {
      switch(v19)
      {
        case 3:
          v28 = MEMORY[0x1E696AD98];
          v67 = 0;
          v29 = [fromCopy position] + 4;
          if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 4, v30 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          LODWORD(v31) = v67;
          v41 = [v28 numberWithFloat:v31];
          if (!v41)
          {
            goto LABEL_60;
          }

          v42 = v41;
          v43 = v7;
          goto LABEL_57;
        case 4:
          v32 = MEMORY[0x1E696AD98];
          v67 = 0;
          v33 = [fromCopy position] + 4;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 4, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          LODWORD(v35) = v67;
          v45 = [v32 numberWithFloat:v35];
          if (!v45)
          {
            goto LABEL_60;
          }

          v42 = v45;
          v43 = v8;
          goto LABEL_57;
        case 5:
          v20 = MEMORY[0x1E696AD98];
          v67 = 0;
          v21 = [fromCopy position] + 4;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 4, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          LODWORD(v23) = v67;
          v49 = [v20 numberWithFloat:v23];
          if (!v49)
          {
            goto LABEL_60;
          }

          v42 = v49;
          v43 = v9;
          goto LABEL_57;
      }

LABEL_40:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  v52 = [v65 copy];
  launchTimeInMs = v5->_launchTimeInMs;
  v5->_launchTimeInMs = v52;

  v54 = [v6 copy];
  endpointDelayInMs = v5->_endpointDelayInMs;
  v5->_endpointDelayInMs = v54;

  v56 = [v7 copy];
  siriResponseTimeInMs = v5->_siriResponseTimeInMs;
  v5->_siriResponseTimeInMs = v56;

  v58 = [v8 copy];
  timeToUufrInMs = v5->_timeToUufrInMs;
  v5->_timeToUufrInMs = v58;

  v60 = [v9 copy];
  timeToFirstWordInMs = v5->_timeToFirstWordInMs;
  v5->_timeToFirstWordInMs = v60;

  hasError = [fromCopy hasError];
  if ((hasError & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_61:
  v63 = 0;
LABEL_62:

  return v63;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  launchTimeInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self launchTimeInMs];
  endpointDelayInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self endpointDelayInMs];
  siriResponseTimeInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self siriResponseTimeInMs];
  timeToUufrInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToUufrInMs];
  timeToFirstWordInMs = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self timeToFirstWordInMs];
  v9 = [v3 initWithFormat:@"BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples with launchTimeInMs: %@, endpointDelayInMs: %@, siriResponseTimeInMs: %@, timeToUufrInMs: %@, timeToFirstWordInMs: %@", launchTimeInMs, endpointDelayInMs, siriResponseTimeInMs, timeToUufrInMs, timeToFirstWordInMs];

  return v9;
}

- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples)initWithLaunchTimeInMs:(id)ms endpointDelayInMs:(id)inMs siriResponseTimeInMs:(id)timeInMs timeToUufrInMs:(id)uufrInMs timeToFirstWordInMs:(id)wordInMs
{
  msCopy = ms;
  inMsCopy = inMs;
  timeInMsCopy = timeInMs;
  uufrInMsCopy = uufrInMs;
  wordInMsCopy = wordInMs;
  v20.receiver = self;
  v20.super_class = BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_launchTimeInMs, ms);
    objc_storeStrong(&v17->_endpointDelayInMs, inMs);
    objc_storeStrong(&v17->_siriResponseTimeInMs, timeInMs);
    objc_storeStrong(&v17->_timeToUufrInMs, uufrInMs);
    objc_storeStrong(&v17->_timeToFirstWordInMs, wordInMs);
  }

  return v17;
}

+ (id)protoFields
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"launchTimeInMs" number:1 type:1 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endpointDelayInMs" number:2 type:1 subMessageClass:{0, v2}];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriResponseTimeInMs" number:3 type:1 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeToUufrInMs" number:4 type:1 subMessageClass:0];
  v9[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeToFirstWordInMs" number:5 type:1 subMessageClass:0];
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)columns
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"launchTimeInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_289];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"endpointDelayInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_291];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"siriResponseTimeInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_293];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeToUufrInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_295_54277];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeToFirstWordInMs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_297];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _timeToFirstWordInMsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _timeToUufrInMsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _siriResponseTimeInMsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _endpointDelayInMsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __80__BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _launchTimeInMsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end