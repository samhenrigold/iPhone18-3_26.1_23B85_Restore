@interface BMMicroLocationLocalization
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMicroLocationLocalization)initWithAbsoluteTimeStamp:(id)stamp clientBundleID:(id)d maxProbabilityLabel:(id)label maxProbability:(id)probability probabilityVector:(id)vector numDevicesVector:(id)devicesVector;
- (BMMicroLocationLocalization)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimeStamp;
- (NSString)description;
- (id)_numDevicesVectorJSONArray;
- (id)_probabilityVectorJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMicroLocationLocalization

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimeStamp = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
    absoluteTimeStamp2 = [v5 absoluteTimeStamp];
    v8 = absoluteTimeStamp2;
    if (absoluteTimeStamp == absoluteTimeStamp2)
    {
    }

    else
    {
      absoluteTimeStamp3 = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
      absoluteTimeStamp4 = [v5 absoluteTimeStamp];
      v11 = [absoluteTimeStamp3 isEqual:absoluteTimeStamp4];

      if (!v11)
      {
        goto LABEL_22;
      }
    }

    clientBundleID = [(BMMicroLocationLocalization *)self clientBundleID];
    clientBundleID2 = [v5 clientBundleID];
    v15 = clientBundleID2;
    if (clientBundleID == clientBundleID2)
    {
    }

    else
    {
      clientBundleID3 = [(BMMicroLocationLocalization *)self clientBundleID];
      clientBundleID4 = [v5 clientBundleID];
      v18 = [clientBundleID3 isEqual:clientBundleID4];

      if (!v18)
      {
        goto LABEL_22;
      }
    }

    maxProbabilityLabel = [(BMMicroLocationLocalization *)self maxProbabilityLabel];
    maxProbabilityLabel2 = [v5 maxProbabilityLabel];
    v21 = maxProbabilityLabel2;
    if (maxProbabilityLabel == maxProbabilityLabel2)
    {
    }

    else
    {
      maxProbabilityLabel3 = [(BMMicroLocationLocalization *)self maxProbabilityLabel];
      maxProbabilityLabel4 = [v5 maxProbabilityLabel];
      v24 = [maxProbabilityLabel3 isEqual:maxProbabilityLabel4];

      if (!v24)
      {
        goto LABEL_22;
      }
    }

    if (-[BMMicroLocationLocalization hasMaxProbability](self, "hasMaxProbability") || [v5 hasMaxProbability])
    {
      if (![(BMMicroLocationLocalization *)self hasMaxProbability])
      {
        goto LABEL_22;
      }

      if (![v5 hasMaxProbability])
      {
        goto LABEL_22;
      }

      [(BMMicroLocationLocalization *)self maxProbability];
      v26 = v25;
      [v5 maxProbability];
      if (v26 != v27)
      {
        goto LABEL_22;
      }
    }

    probabilityVector = [(BMMicroLocationLocalization *)self probabilityVector];
    probabilityVector2 = [v5 probabilityVector];
    v30 = probabilityVector2;
    if (probabilityVector == probabilityVector2)
    {
    }

    else
    {
      probabilityVector3 = [(BMMicroLocationLocalization *)self probabilityVector];
      probabilityVector4 = [v5 probabilityVector];
      v33 = [probabilityVector3 isEqual:probabilityVector4];

      if (!v33)
      {
LABEL_22:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    numDevicesVector = [(BMMicroLocationLocalization *)self numDevicesVector];
    numDevicesVector2 = [v5 numDevicesVector];
    if (numDevicesVector == numDevicesVector2)
    {
      v12 = 1;
    }

    else
    {
      numDevicesVector3 = [(BMMicroLocationLocalization *)self numDevicesVector];
      numDevicesVector4 = [v5 numDevicesVector];
      v12 = [numDevicesVector3 isEqual:numDevicesVector4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (NSDate)absoluteTimeStamp
{
  if (self->_hasRaw_absoluteTimeStamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimeStamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v27[6] = *MEMORY[0x1E69E9840];
  absoluteTimeStamp = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
  if (absoluteTimeStamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimeStamp2 = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
    [absoluteTimeStamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  clientBundleID = [(BMMicroLocationLocalization *)self clientBundleID];
  maxProbabilityLabel = [(BMMicroLocationLocalization *)self maxProbabilityLabel];
  if (![(BMMicroLocationLocalization *)self hasMaxProbability]|| ([(BMMicroLocationLocalization *)self maxProbability], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMMicroLocationLocalization *)self maxProbability];
    v10 = MEMORY[0x1E696AD98];
    [(BMMicroLocationLocalization *)self maxProbability];
    v11 = [v10 numberWithDouble:?];
  }

  _probabilityVectorJSONArray = [(BMMicroLocationLocalization *)self _probabilityVectorJSONArray];
  _numDevicesVectorJSONArray = [(BMMicroLocationLocalization *)self _numDevicesVectorJSONArray];
  v26[0] = @"absoluteTimeStamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v27[0] = null;
  v26[1] = @"clientBundleID";
  null2 = clientBundleID;
  if (!clientBundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null2;
  v27[1] = null2;
  v26[2] = @"maxProbabilityLabel";
  null3 = maxProbabilityLabel;
  if (!maxProbabilityLabel)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v6;
  v27[2] = null3;
  v26[3] = @"maxProbability";
  null4 = v11;
  if (!v11)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = null4;
  v26[4] = @"probabilityVector";
  null5 = _probabilityVectorJSONArray;
  if (!_probabilityVectorJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null5;
  v26[5] = @"numDevicesVector";
  null6 = _numDevicesVectorJSONArray;
  if (!_numDevicesVectorJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = null6;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:{6, v22}];
  if (_numDevicesVectorJSONArray)
  {
    if (_probabilityVectorJSONArray)
    {
      goto LABEL_22;
    }

LABEL_30:

    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!_probabilityVectorJSONArray)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (v11)
  {
    goto LABEL_23;
  }

LABEL_31:

LABEL_23:
  if (maxProbabilityLabel)
  {
    if (clientBundleID)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v25)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!clientBundleID)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v25)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:

  return v20;
}

- (id)_numDevicesVectorJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  numDevicesVector = [(BMMicroLocationLocalization *)self numDevicesVector];
  v5 = [numDevicesVector countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(numDevicesVector);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [numDevicesVector countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_probabilityVectorJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  probabilityVector = [(BMMicroLocationLocalization *)self probabilityVector];
  v5 = [probabilityVector countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(probabilityVector);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [probabilityVector countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMicroLocationLocalization)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v147[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimeStamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v7 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = v6;
        v85 = *MEMORY[0x1E698F240];
        v146 = *MEMORY[0x1E696A578];
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimeStamp"];
        v147[0] = v44;
        v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:&v146 count:1];
        v87 = v85;
        v6 = v84;
        v114 = v86;
        v88 = [v83 initWithDomain:v87 code:2 userInfo:?];
        v7 = 0;
        selfCopy4 = 0;
        *error = v88;
        goto LABEL_99;
      }

      v7 = 0;
      selfCopy4 = 0;
      goto LABEL_100;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"clientBundleID"];
  v114 = v15;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v35 = v7;
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = v6;
        v38 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v40 = objc_alloc(MEMORY[0x1E696AEC0]);
        v102 = objc_opt_class();
        v41 = v40;
        self = selfCopy;
        v112 = [v41 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v102, @"clientBundleID"];
        v145 = v112;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v42 = v36;
        v7 = v35;
        v43 = v38;
        v6 = v37;
        v44 = 0;
        selfCopy4 = 0;
        *error = [v42 initWithDomain:v43 code:2 userInfo:v17];
        goto LABEL_98;
      }

      v44 = 0;
      selfCopy4 = 0;
      goto LABEL_99;
    }

    v111 = v16;
  }

  else
  {
    v111 = 0;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"maxProbabilityLabel"];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v46 = v7;
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = v6;
        v49 = *MEMORY[0x1E698F240];
        v142 = *MEMORY[0x1E696A578];
        selfCopy2 = self;
        v51 = objc_alloc(MEMORY[0x1E696AEC0]);
        v103 = objc_opt_class();
        v52 = v51;
        self = selfCopy2;
        v110 = [v52 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v103, @"maxProbabilityLabel"];
        v143 = v110;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
        v53 = v47;
        v7 = v46;
        v54 = v49;
        v6 = v48;
        v112 = 0;
        selfCopy4 = 0;
        *error = [v53 initWithDomain:v54 code:2 userInfo:v19];
        v44 = v111;
        goto LABEL_97;
      }

      v112 = 0;
      selfCopy4 = 0;
      v44 = v111;
      goto LABEL_98;
    }

    v112 = v17;
  }

  else
  {
    v112 = 0;
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"maxProbability"];
  v107 = v6;
  selfCopy3 = self;
  v109 = v18;
  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v55 = v7;
        v56 = objc_alloc(MEMORY[0x1E696ABC0]);
        v57 = *MEMORY[0x1E698F240];
        v140 = *MEMORY[0x1E696A578];
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxProbability"];
        v141 = v20;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
        v59 = v56;
        v7 = v55;
        v115 = v58;
        v60 = [v59 initWithDomain:v57 code:2 userInfo:?];
        v110 = 0;
        selfCopy4 = 0;
        *error = v60;
        v44 = v111;
        goto LABEL_95;
      }

      v110 = 0;
      selfCopy4 = 0;
      v44 = v111;
      v19 = v18;
      goto LABEL_97;
    }

    v105 = v7;
    v110 = v18;
  }

  else
  {
    v105 = v7;
    v110 = 0;
  }

  v19 = v18;
  v20 = [dictionaryCopy objectForKeyedSubscript:@"probabilityVector"];
  null = [MEMORY[0x1E695DFB0] null];
  v22 = [v20 isEqual:null];

  v106 = dictionaryCopy;
  if (v22)
  {
    v104 = v17;

    v20 = 0;
  }

  else
  {
    if (v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
          v81 = *MEMORY[0x1E698F240];
          v138 = *MEMORY[0x1E696A578];
          v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"probabilityVector"];
          v139 = v115;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
          v82 = [v80 initWithDomain:v81 code:2 userInfo:v32];
          selfCopy4 = 0;
          *error = v82;
          self = selfCopy3;
          v7 = v105;
          v44 = v111;
          goto LABEL_94;
        }

        selfCopy4 = 0;
        self = selfCopy3;
        v7 = v105;
        v44 = v111;
        goto LABEL_96;
      }
    }

    v104 = v17;
  }

  v115 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v20, "count")}];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v20 = v20;
  v23 = [v20 countByEnumeratingWithState:&v122 objects:v137 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v123;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v123 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v122 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          errorCopy2 = error;
          if (error)
          {
            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E698F240];
            v135 = *MEMORY[0x1E696A578];
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"probabilityVector"];
            v136 = v28;
            v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
            v65 = v62;
            v66 = v63;
            goto LABEL_51;
          }

LABEL_74:
          selfCopy4 = 0;
          v32 = v20;
          dictionaryCopy = v106;
          self = selfCopy3;
LABEL_75:
          v7 = v105;
          v44 = v111;
          goto LABEL_93;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy2 = error;
          if (!error)
          {
            goto LABEL_74;
          }

          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v133 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"probabilityVector"];
          v134 = v28;
          v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
          v65 = v67;
          v66 = v68;
LABEL_51:
          *errorCopy2 = [v65 initWithDomain:v66 code:2 userInfo:v64];

LABEL_55:
          selfCopy4 = 0;
          v32 = v20;
          dictionaryCopy = v106;
          self = selfCopy3;
LABEL_56:
          v7 = v105;
          v44 = v111;
          goto LABEL_92;
        }

        v28 = v27;
        v29 = [BMMicroLocationLocalizationProbabilityPerLabel alloc];
        v121 = 0;
        v30 = [(BMMicroLocationLocalizationProbabilityPerLabel *)v29 initWithJSONDictionary:v28 error:&v121];
        v31 = v121;
        if (v31)
        {
          v69 = v31;
          if (error)
          {
            v70 = v31;
            *error = v69;
          }

          goto LABEL_55;
        }

        [v115 addObject:v30];
      }

      v24 = [v20 countByEnumeratingWithState:&v122 objects:v137 count:16];
    }

    while (v24);
  }

  dictionaryCopy = v106;
  v32 = [v106 objectForKeyedSubscript:@"numDevicesVector"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v34 = [v32 isEqual:null2];

  if (v34)
  {

    v32 = 0;
    self = selfCopy3;
  }

  else
  {
    self = selfCopy3;
    if (v32)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy4 = 0;
          goto LABEL_75;
        }

        v99 = objc_alloc(MEMORY[0x1E696ABC0]);
        v100 = *MEMORY[0x1E698F240];
        v131 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"numDevicesVector"];
        v132 = v28;
        v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
        *error = [v99 initWithDomain:v100 code:2 userInfo:v101];

        selfCopy4 = 0;
        goto LABEL_56;
      }
    }
  }

  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v32 = v32;
  v71 = [v32 countByEnumeratingWithState:&v117 objects:v130 count:16];
  if (!v71)
  {
    goto LABEL_69;
  }

  v72 = v71;
  v73 = *v118;
  while (2)
  {
    for (j = 0; j != v72; ++j)
    {
      if (*v118 != v73)
      {
        objc_enumerationMutation(v32);
      }

      v75 = *(*(&v117 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionaryCopy = v106;
        self = selfCopy3;
        v44 = v111;
        errorCopy4 = error;
        if (error)
        {
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v128 = *MEMORY[0x1E696A578];
          v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"numDevicesVector"];
          v129 = v76;
          v92 = MEMORY[0x1E695DF20];
          v93 = &v129;
          v94 = &v128;
LABEL_86:
          v95 = [v92 dictionaryWithObjects:v93 forKeys:v94 count:1];
          v96 = v91;
          dictionaryCopy = v106;
          *errorCopy4 = [v90 initWithDomain:v96 code:2 userInfo:v95];
LABEL_90:
        }

LABEL_91:

        selfCopy4 = 0;
        v7 = v105;
        goto LABEL_92;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dictionaryCopy = v106;
        self = selfCopy3;
        v44 = v111;
        errorCopy4 = error;
        if (error)
        {
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v126 = *MEMORY[0x1E696A578];
          v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numDevicesVector"];
          v127 = v76;
          v92 = MEMORY[0x1E695DF20];
          v93 = &v127;
          v94 = &v126;
          goto LABEL_86;
        }

        goto LABEL_91;
      }

      v76 = v75;
      v77 = [BMMicroLocationLocalizationNumDevicesPerTechnology alloc];
      v116 = 0;
      v78 = [(BMMicroLocationLocalizationNumDevicesPerTechnology *)v77 initWithJSONDictionary:v76 error:&v116];
      v79 = v116;
      if (v79)
      {
        v95 = v79;
        if (error)
        {
          v97 = v79;
          *error = v95;
        }

        dictionaryCopy = v106;
        self = selfCopy3;
        v44 = v111;
        goto LABEL_90;
      }

      [v28 addObject:v78];
    }

    v72 = [v32 countByEnumeratingWithState:&v117 objects:v130 count:16];
    self = selfCopy3;
    if (v72)
    {
      continue;
    }

    break;
  }

LABEL_69:

  v7 = v105;
  v44 = v111;
  self = [(BMMicroLocationLocalization *)self initWithAbsoluteTimeStamp:v105 clientBundleID:v111 maxProbabilityLabel:v112 maxProbability:v110 probabilityVector:v115 numDevicesVector:v28];
  selfCopy4 = self;
  dictionaryCopy = v106;
LABEL_92:

LABEL_93:
  v17 = v104;
LABEL_94:

LABEL_95:
  v19 = v109;
LABEL_96:

  v6 = v107;
LABEL_97:

LABEL_98:
LABEL_99:

LABEL_100:
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMicroLocationLocalization *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_absoluteTimeStamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_clientBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_maxProbabilityLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMaxProbability)
  {
    PBDataWriterWriteDoubleField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_probabilityVector;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v21 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_numDevicesVector;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        v21 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{toCopy, v17}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v13);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v41.receiver = self;
  v41.super_class = BMMicroLocationLocalization;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_51;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v42 & 0x7F) << v9;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 3)
      {
        switch(v17)
        {
          case 4:
            v5->_hasMaxProbability = 1;
            v42 = 0;
            v25 = [fromCopy position] + 8;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v30 = v42;
            v31 = 56;
            goto LABEL_47;
          case 5:
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || (v28 = [[BMMicroLocationLocalizationProbabilityPerLabel alloc] initByReadFrom:fromCopy]) == 0)
            {
LABEL_53:

              goto LABEL_50;
            }

            v21 = v28;
            v22 = v6;
            goto LABEL_42;
          case 6:
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v20 = [[BMMicroLocationLocalizationNumDevicesPerTechnology alloc] initByReadFrom:fromCopy];
            if (!v20)
            {
              goto LABEL_53;
            }

            v21 = v20;
            v22 = v7;
LABEL_42:
            [v22 addObject:v21];
            PBReaderRecallMark();

            goto LABEL_48;
        }
      }

      else
      {
        switch(v17)
        {
          case 1:
            v5->_hasRaw_absoluteTimeStamp = 1;
            v42 = 0;
            v23 = [fromCopy position] + 8;
            if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v30 = v42;
            v31 = 24;
LABEL_47:
            *(&v5->super.super.isa + v31) = v30;
            goto LABEL_48;
          case 2:
            v18 = PBReaderReadString();
            v19 = 40;
            goto LABEL_38;
          case 3:
            v18 = PBReaderReadString();
            v19 = 48;
LABEL_38:
            v27 = *(&v5->super.super.isa + v19);
            *(&v5->super.super.isa + v19) = v18;

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_48:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v34 = [v6 copy];
  probabilityVector = v5->_probabilityVector;
  v5->_probabilityVector = v34;

  v36 = [v7 copy];
  numDevicesVector = v5->_numDevicesVector;
  v5->_numDevicesVector = v36;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_50:
    v39 = 0;
  }

  else
  {
LABEL_51:
    v39 = v5;
  }

  return v39;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimeStamp = [(BMMicroLocationLocalization *)self absoluteTimeStamp];
  clientBundleID = [(BMMicroLocationLocalization *)self clientBundleID];
  maxProbabilityLabel = [(BMMicroLocationLocalization *)self maxProbabilityLabel];
  v7 = MEMORY[0x1E696AD98];
  [(BMMicroLocationLocalization *)self maxProbability];
  v8 = [v7 numberWithDouble:?];
  probabilityVector = [(BMMicroLocationLocalization *)self probabilityVector];
  numDevicesVector = [(BMMicroLocationLocalization *)self numDevicesVector];
  v11 = [v3 initWithFormat:@"BMMicroLocationLocalization with absoluteTimeStamp: %@, clientBundleID: %@, maxProbabilityLabel: %@, maxProbability: %@, probabilityVector: %@, numDevicesVector: %@", absoluteTimeStamp, clientBundleID, maxProbabilityLabel, v8, probabilityVector, numDevicesVector];

  return v11;
}

- (BMMicroLocationLocalization)initWithAbsoluteTimeStamp:(id)stamp clientBundleID:(id)d maxProbabilityLabel:(id)label maxProbability:(id)probability probabilityVector:(id)vector numDevicesVector:(id)devicesVector
{
  stampCopy = stamp;
  dCopy = d;
  labelCopy = label;
  probabilityCopy = probability;
  vectorCopy = vector;
  devicesVectorCopy = devicesVector;
  v24.receiver = self;
  v24.super_class = BMMicroLocationLocalization;
  v19 = [(BMEventBase *)&v24 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (stampCopy)
    {
      v19->_hasRaw_absoluteTimeStamp = 1;
      [stampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v19->_hasRaw_absoluteTimeStamp = 0;
      v20 = -1.0;
    }

    v19->_raw_absoluteTimeStamp = v20;
    objc_storeStrong(&v19->_clientBundleID, d);
    objc_storeStrong(&v19->_maxProbabilityLabel, label);
    if (probabilityCopy)
    {
      v19->_hasMaxProbability = 1;
      [probabilityCopy doubleValue];
    }

    else
    {
      v19->_hasMaxProbability = 0;
      v21 = -1.0;
    }

    v19->_maxProbability = v21;
    objc_storeStrong(&v19->_probabilityVector, vector);
    objc_storeStrong(&v19->_numDevicesVector, devicesVector);
  }

  return v19;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimeStamp" number:1 type:0 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientBundleID" number:2 type:13 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxProbabilityLabel" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxProbability" number:4 type:0 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"probabilityVector" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numDevicesVector" number:6 type:14 subMessageClass:objc_opt_class()];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimeStamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientBundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxProbabilityLabel" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxProbability" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"probabilityVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_40712];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numDevicesVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_199_40713];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __38__BMMicroLocationLocalization_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _numDevicesVectorJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __38__BMMicroLocationLocalization_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _probabilityVectorJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMMicroLocationLocalization alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[9] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end