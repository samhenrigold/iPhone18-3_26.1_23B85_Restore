@interface BMLocationMicroLocationVisit
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLocationMicroLocationVisit)initWithDomain:(id)domain maxProbabilityMicroLocationIdentifier:(id)identifier maxProbability:(id)probability probabilityVector:(id)vector isStable:(id)stable numDevicesVector:(id)devicesVector;
- (BMLocationMicroLocationVisit)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_numDevicesVectorJSONArray;
- (id)_probabilityVectorJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLocationMicroLocationVisit

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxProbabilityMicroLocationIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxProbability" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"probabilityVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_42606];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isStable" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numDevicesVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_193];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    domain = [(BMLocationMicroLocationVisit *)self domain];
    domain2 = [v5 domain];
    v8 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMLocationMicroLocationVisit *)self domain];
      domain4 = [v5 domain];
      v11 = [domain3 isEqual:domain4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    maxProbabilityMicroLocationIdentifier = [(BMLocationMicroLocationVisit *)self maxProbabilityMicroLocationIdentifier];
    maxProbabilityMicroLocationIdentifier2 = [v5 maxProbabilityMicroLocationIdentifier];
    v15 = maxProbabilityMicroLocationIdentifier2;
    if (maxProbabilityMicroLocationIdentifier == maxProbabilityMicroLocationIdentifier2)
    {
    }

    else
    {
      maxProbabilityMicroLocationIdentifier3 = [(BMLocationMicroLocationVisit *)self maxProbabilityMicroLocationIdentifier];
      maxProbabilityMicroLocationIdentifier4 = [v5 maxProbabilityMicroLocationIdentifier];
      v18 = [maxProbabilityMicroLocationIdentifier3 isEqual:maxProbabilityMicroLocationIdentifier4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    if (-[BMLocationMicroLocationVisit hasMaxProbability](self, "hasMaxProbability") || [v5 hasMaxProbability])
    {
      if (![(BMLocationMicroLocationVisit *)self hasMaxProbability])
      {
        goto LABEL_25;
      }

      if (![v5 hasMaxProbability])
      {
        goto LABEL_25;
      }

      [(BMLocationMicroLocationVisit *)self maxProbability];
      v20 = v19;
      [v5 maxProbability];
      if (v20 != v21)
      {
        goto LABEL_25;
      }
    }

    probabilityVector = [(BMLocationMicroLocationVisit *)self probabilityVector];
    probabilityVector2 = [v5 probabilityVector];
    v24 = probabilityVector2;
    if (probabilityVector == probabilityVector2)
    {
    }

    else
    {
      probabilityVector3 = [(BMLocationMicroLocationVisit *)self probabilityVector];
      probabilityVector4 = [v5 probabilityVector];
      v27 = [probabilityVector3 isEqual:probabilityVector4];

      if (!v27)
      {
        goto LABEL_25;
      }
    }

    if (!-[BMLocationMicroLocationVisit hasIsStable](self, "hasIsStable") && ![v5 hasIsStable] || -[BMLocationMicroLocationVisit hasIsStable](self, "hasIsStable") && objc_msgSend(v5, "hasIsStable") && (v28 = -[BMLocationMicroLocationVisit isStable](self, "isStable"), v28 == objc_msgSend(v5, "isStable")))
    {
      numDevicesVector = [(BMLocationMicroLocationVisit *)self numDevicesVector];
      numDevicesVector2 = [v5 numDevicesVector];
      if (numDevicesVector == numDevicesVector2)
      {
        v12 = 1;
      }

      else
      {
        numDevicesVector3 = [(BMLocationMicroLocationVisit *)self numDevicesVector];
        numDevicesVector4 = [v5 numDevicesVector];
        v12 = [numDevicesVector3 isEqual:numDevicesVector4];
      }

      goto LABEL_26;
    }

LABEL_25:
    v12 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  domain = [(BMLocationMicroLocationVisit *)self domain];
  maxProbabilityMicroLocationIdentifier = [(BMLocationMicroLocationVisit *)self maxProbabilityMicroLocationIdentifier];
  if (![(BMLocationMicroLocationVisit *)self hasMaxProbability]|| ([(BMLocationMicroLocationVisit *)self maxProbability], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMLocationMicroLocationVisit *)self maxProbability];
    v6 = MEMORY[0x1E696AD98];
    [(BMLocationMicroLocationVisit *)self maxProbability];
    v7 = [v6 numberWithDouble:?];
  }

  _probabilityVectorJSONArray = [(BMLocationMicroLocationVisit *)self _probabilityVectorJSONArray];
  if ([(BMLocationMicroLocationVisit *)self hasIsStable])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocationMicroLocationVisit isStable](self, "isStable")}];
  }

  else
  {
    v9 = 0;
  }

  _numDevicesVectorJSONArray = [(BMLocationMicroLocationVisit *)self _numDevicesVectorJSONArray];
  v23[0] = @"domain";
  null = domain;
  if (!domain)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v21 = maxProbabilityMicroLocationIdentifier;
  v24[0] = null;
  v23[1] = @"maxProbabilityMicroLocationIdentifier";
  null2 = maxProbabilityMicroLocationIdentifier;
  if (!maxProbabilityMicroLocationIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  v23[2] = @"maxProbability";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = domain;
  v24[2] = null3;
  v23[3] = @"probabilityVector";
  null4 = _probabilityVectorJSONArray;
  if (!_probabilityVectorJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23[4] = @"isStable";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v23[5] = @"numDevicesVector";
  null6 = _numDevicesVectorJSONArray;
  if (!_numDevicesVectorJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = null6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (_numDevicesVectorJSONArray)
  {
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_31:

    if (_probabilityVectorJSONArray)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_22:
  if (_probabilityVectorJSONArray)
  {
    goto LABEL_23;
  }

LABEL_32:

LABEL_23:
  if (!v7)
  {
  }

  if (v21)
  {
    if (v22)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (v22)
    {
      goto LABEL_27;
    }
  }

LABEL_27:

  return v17;
}

- (id)_numDevicesVectorJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  numDevicesVector = [(BMLocationMicroLocationVisit *)self numDevicesVector];
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
  probabilityVector = [(BMLocationMicroLocationVisit *)self probabilityVector];
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

- (BMLocationMicroLocationVisit)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v125[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v124 = *MEMORY[0x1E696A578];
        errorCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
        v125[0] = errorCopy;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:&v124 count:1];
        v31 = v28;
        v8 = v30;
        v7 = 0;
        selfCopy3 = 0;
        *error = [v27 initWithDomain:v31 code:2 userInfo:v30];
        goto LABEL_98;
      }

      v7 = 0;
      selfCopy3 = 0;
      goto LABEL_99;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"maxProbabilityMicroLocationIdentifier"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy = error;
      if (error)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = v8;
        v35 = *MEMORY[0x1E698F240];
        v122 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"maxProbabilityMicroLocationIdentifier"];
        v123 = v23;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        v37 = v35;
        v8 = v34;
        v90 = v36;
        errorCopy = 0;
        selfCopy3 = 0;
        *error = [v33 initWithDomain:v37 code:2 userInfo:?];
        goto LABEL_97;
      }

      selfCopy3 = 0;
      goto LABEL_98;
    }

    v89 = v8;
  }

  else
  {
    v89 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"maxProbability"];
  v87 = v6;
  v88 = v7;
  v90 = v9;
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = v8;
        v40 = *MEMORY[0x1E698F240];
        v120 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxProbability"];
        v121 = v11;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        v42 = v40;
        v8 = v39;
        v93 = v41;
        v23 = 0;
        selfCopy3 = 0;
        *error = [v38 initWithDomain:v42 code:2 userInfo:?];
        errorCopy = v89;

        goto LABEL_96;
      }

      v23 = 0;
      selfCopy3 = 0;
      errorCopy = v89;
      goto LABEL_97;
    }

    v86 = v10;
  }

  else
  {
    v86 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"probabilityVector"];
  null = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:null];

  v84 = v8;
  v85 = dictionaryCopy;
  if (v13)
  {
    selfCopy2 = self;

    v11 = 0;
  }

  else
  {
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy3 = 0;
          errorCopy = v89;
          v23 = v86;
          goto LABEL_96;
        }

        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v118 = *MEMORY[0x1E696A578];
        v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"probabilityVector"];
        v119 = v92;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
        selfCopy3 = 0;
        *error = [v51 initWithDomain:v52 code:2 userInfo:v50];
        goto LABEL_71;
      }
    }

    selfCopy2 = self;
  }

  v92 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v11 = v11;
  v14 = [v11 countByEnumeratingWithState:&v100 objects:v117 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v101;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v101 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v100 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (error)
          {
            errorCopy3 = error;
            v44 = objc_alloc(MEMORY[0x1E696ABC0]);
            v45 = *MEMORY[0x1E698F240];
            v115 = *MEMORY[0x1E696A578];
            v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"probabilityVector"];
            v116 = v19;
            v46 = MEMORY[0x1E695DF20];
            v47 = &v116;
            v48 = &v115;
            goto LABEL_46;
          }

LABEL_70:
          selfCopy3 = 0;
          v50 = v11;
          dictionaryCopy = v85;
          self = selfCopy2;
LABEL_71:
          errorCopy = v89;
          v23 = v86;
          goto LABEL_94;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy3 = error;
          if (!error)
          {
            goto LABEL_70;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v113 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"probabilityVector"];
          v114 = v19;
          v46 = MEMORY[0x1E695DF20];
          v47 = &v114;
          v48 = &v113;
LABEL_46:
          v24 = [v46 dictionaryWithObjects:v47 forKeys:v48 count:1];
          selfCopy3 = 0;
          *errorCopy3 = [v44 initWithDomain:v45 code:2 userInfo:v24];
LABEL_50:
          v50 = v11;
          dictionaryCopy = v85;
          v23 = v86;
          self = selfCopy2;
LABEL_51:
          errorCopy = v89;
          goto LABEL_92;
        }

        v19 = v18;
        v20 = [BMLocationMicroLocationVisitProbabilityPerLocation alloc];
        v99 = 0;
        v21 = [(BMLocationMicroLocationVisitProbabilityPerLocation *)v20 initWithJSONDictionary:v19 error:&v99];
        v22 = v99;
        if (v22)
        {
          v24 = v22;
          if (error)
          {
            v49 = v22;
            *error = v24;
          }

          selfCopy3 = 0;
          goto LABEL_50;
        }

        [v92 addObject:v21];
      }

      v15 = [v11 countByEnumeratingWithState:&v100 objects:v117 count:16];
    }

    while (v15);
  }

  dictionaryCopy = v85;
  v19 = [v85 objectForKeyedSubscript:@"isStable"];
  v23 = v86;
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v50 = 0;
        selfCopy3 = 0;
        self = selfCopy2;
        errorCopy = v89;
        goto LABEL_93;
      }

      v83 = objc_alloc(MEMORY[0x1E696ABC0]);
      v66 = *MEMORY[0x1E698F240];
      v111 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isStable"];
      v112 = v24;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      v67 = [v83 initWithDomain:v66 code:2 userInfo:v54];
      v50 = 0;
      selfCopy3 = 0;
      *error = v67;
      self = selfCopy2;
      goto LABEL_80;
    }

    v79 = v19;
  }

  else
  {
    v79 = 0;
  }

  v24 = [v85 objectForKeyedSubscript:@"numDevicesVector"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v26 = [v24 isEqual:null2];

  if (v26)
  {

    v24 = 0;
LABEL_58:
    v50 = v79;
    goto LABEL_59;
  }

  if (!v24)
  {
    goto LABEL_58;
  }

  objc_opt_class();
  v50 = v79;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    self = selfCopy2;
    if (!error)
    {
      selfCopy3 = 0;
      goto LABEL_51;
    }

    v81 = objc_alloc(MEMORY[0x1E696ABC0]);
    v53 = *MEMORY[0x1E698F240];
    v109 = *MEMORY[0x1E696A578];
    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"numDevicesVector"];
    v110 = v54;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v56 = v53;
    v50 = v79;
    *error = [v81 initWithDomain:v56 code:2 userInfo:v55];

    selfCopy3 = 0;
LABEL_80:
    errorCopy = v89;
    goto LABEL_91;
  }

LABEL_59:
  v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v24 = v24;
  v57 = [v24 countByEnumeratingWithState:&v95 objects:v108 count:16];
  if (!v57)
  {
    goto LABEL_69;
  }

  v58 = v57;
  v59 = *v96;
  v82 = v54;
  while (2)
  {
    for (j = 0; j != v58; ++j)
    {
      if (*v96 != v59)
      {
        objc_enumerationMutation(v24);
      }

      v61 = *(*(&v95 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionaryCopy = v85;
        self = selfCopy2;
        errorCopy = v89;
        errorCopy5 = error;
        if (error)
        {
          v69 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = selfCopy2;
          v71 = *MEMORY[0x1E698F240];
          v106 = *MEMORY[0x1E696A578];
          v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"numDevicesVector"];
          v107 = v62;
          v72 = MEMORY[0x1E695DF20];
          v73 = &v107;
          v74 = &v106;
LABEL_85:
          v75 = [v72 dictionaryWithObjects:v73 forKeys:v74 count:1];
          v76 = v71;
          self = v70;
          errorCopy = v89;
          *errorCopy5 = [v69 initWithDomain:v76 code:2 userInfo:v75];
LABEL_89:
        }

LABEL_90:

        selfCopy3 = 0;
        v23 = v86;
        v50 = v79;
        v54 = v82;
        goto LABEL_91;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dictionaryCopy = v85;
        self = selfCopy2;
        errorCopy = v89;
        errorCopy5 = error;
        if (error)
        {
          v69 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = selfCopy2;
          v71 = *MEMORY[0x1E698F240];
          v104 = *MEMORY[0x1E696A578];
          v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numDevicesVector"];
          v105 = v62;
          v72 = MEMORY[0x1E695DF20];
          v73 = &v105;
          v74 = &v104;
          goto LABEL_85;
        }

        goto LABEL_90;
      }

      v62 = v61;
      v63 = [BMLocationMicroLocationVisitNumDevicesPerTechnology alloc];
      v94 = 0;
      v64 = [(BMLocationMicroLocationVisitNumDevicesPerTechnology *)v63 initWithJSONDictionary:v62 error:&v94];
      v65 = v94;
      if (v65)
      {
        v75 = v65;
        if (error)
        {
          v77 = v65;
          *error = v75;
        }

        dictionaryCopy = v85;
        self = selfCopy2;
        errorCopy = v89;
        goto LABEL_89;
      }

      [v82 addObject:v64];
    }

    v58 = [v24 countByEnumeratingWithState:&v95 objects:v108 count:16];
    v23 = v86;
    v50 = v79;
    v54 = v82;
    if (v58)
    {
      continue;
    }

    break;
  }

LABEL_69:

  errorCopy = v89;
  self = [(BMLocationMicroLocationVisit *)selfCopy2 initWithDomain:v88 maxProbabilityMicroLocationIdentifier:v89 maxProbability:v23 probabilityVector:v92 isStable:v50 numDevicesVector:v54];
  selfCopy3 = self;
  dictionaryCopy = v85;
LABEL_91:

LABEL_92:
LABEL_93:

LABEL_94:
  v8 = v84;

LABEL_96:
  v6 = v87;
  v7 = v88;
LABEL_97:

LABEL_98:
LABEL_99:

  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocationMicroLocationVisit *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_maxProbabilityMicroLocationIdentifier)
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

  if (self->_hasIsStable)
  {
    PBDataWriterWriteBOOLField();
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
  v43.receiver = self;
  v43.super_class = BMLocationMicroLocationVisit;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_56;
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
        LOBYTE(v44) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (LOBYTE(v44) & 0x7F) << v9;
        if ((LOBYTE(v44) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
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
            v44 = 0.0;
            v45 = 0;
            if (!PBReaderPlaceMark() || (v25 = [[BMLocationMicroLocationVisitProbabilityPerLocation alloc] initByReadFrom:fromCopy]) == 0)
            {
LABEL_58:

              goto LABEL_55;
            }

            v21 = v25;
            v22 = v6;
            goto LABEL_35;
          case 5:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v5->_hasIsStable = 1;
            while (1)
            {
              LOBYTE(v44) = 0;
              v30 = [fromCopy position] + 1;
              if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v29 |= (LOBYTE(v44) & 0x7F) << v27;
              if ((LOBYTE(v44) & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v15 = v28++ >= 9;
              if (v15)
              {
                LOBYTE(v33) = 0;
                goto LABEL_50;
              }
            }

            v33 = (v29 != 0) & ~[fromCopy hasError];
LABEL_50:
            v5->_isStable = v33;
            goto LABEL_53;
          case 6:
            v44 = 0.0;
            v45 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_58;
            }

            v20 = [[BMLocationMicroLocationVisitNumDevicesPerTechnology alloc] initByReadFrom:fromCopy];
            if (!v20)
            {
              goto LABEL_58;
            }

            v21 = v20;
            v22 = v7;
LABEL_35:
            [v22 addObject:v21];
            PBReaderRecallMark();

            goto LABEL_53;
        }
      }

      else
      {
        switch(v17)
        {
          case 1:
            v23 = PBReaderReadString();
            v24 = 24;
LABEL_39:
            v26 = *(&v5->super.super.isa + v24);
            *(&v5->super.super.isa + v24) = v23;

            goto LABEL_53;
          case 2:
            v23 = PBReaderReadString();
            v24 = 32;
            goto LABEL_39;
          case 3:
            v5->_hasMaxProbability = 1;
            v44 = 0.0;
            v18 = [fromCopy position] + 8;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_maxProbability = v44;
            goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_53:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v36 = [v6 copy];
  probabilityVector = v5->_probabilityVector;
  v5->_probabilityVector = v36;

  v38 = [v7 copy];
  numDevicesVector = v5->_numDevicesVector;
  v5->_numDevicesVector = v38;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_55:
    v41 = 0;
  }

  else
  {
LABEL_56:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  domain = [(BMLocationMicroLocationVisit *)self domain];
  maxProbabilityMicroLocationIdentifier = [(BMLocationMicroLocationVisit *)self maxProbabilityMicroLocationIdentifier];
  v6 = MEMORY[0x1E696AD98];
  [(BMLocationMicroLocationVisit *)self maxProbability];
  v7 = [v6 numberWithDouble:?];
  probabilityVector = [(BMLocationMicroLocationVisit *)self probabilityVector];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocationMicroLocationVisit isStable](self, "isStable")}];
  numDevicesVector = [(BMLocationMicroLocationVisit *)self numDevicesVector];
  v11 = [v3 initWithFormat:@"BMLocationMicroLocationVisit with domain: %@, maxProbabilityMicroLocationIdentifier: %@, maxProbability: %@, probabilityVector: %@, isStable: %@, numDevicesVector: %@", domain, maxProbabilityMicroLocationIdentifier, v7, probabilityVector, v9, numDevicesVector];

  return v11;
}

- (BMLocationMicroLocationVisit)initWithDomain:(id)domain maxProbabilityMicroLocationIdentifier:(id)identifier maxProbability:(id)probability probabilityVector:(id)vector isStable:(id)stable numDevicesVector:(id)devicesVector
{
  domainCopy = domain;
  identifierCopy = identifier;
  probabilityCopy = probability;
  vectorCopy = vector;
  stableCopy = stable;
  devicesVectorCopy = devicesVector;
  v24.receiver = self;
  v24.super_class = BMLocationMicroLocationVisit;
  v20 = [(BMEventBase *)&v24 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_domain, domain);
    objc_storeStrong(&v20->_maxProbabilityMicroLocationIdentifier, identifier);
    if (probabilityCopy)
    {
      v20->_hasMaxProbability = 1;
      [probabilityCopy doubleValue];
    }

    else
    {
      v20->_hasMaxProbability = 0;
      v21 = -1.0;
    }

    v20->_maxProbability = v21;
    objc_storeStrong(&v20->_probabilityVector, vector);
    if (stableCopy)
    {
      v20->_hasIsStable = 1;
      v20->_isStable = [stableCopy BOOLValue];
    }

    else
    {
      v20->_hasIsStable = 0;
      v20->_isStable = 0;
    }

    objc_storeStrong(&v20->_numDevicesVector, devicesVector);
  }

  return v20;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:1 type:13 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxProbabilityMicroLocationIdentifier" number:2 type:13 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxProbability" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"probabilityVector" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isStable" number:5 type:12 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numDevicesVector" number:6 type:14 subMessageClass:objc_opt_class()];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __39__BMLocationMicroLocationVisit_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _numDevicesVectorJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __39__BMLocationMicroLocationVisit_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _probabilityVectorJSONArray];
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

    v8 = [[BMLocationMicroLocationVisit alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end