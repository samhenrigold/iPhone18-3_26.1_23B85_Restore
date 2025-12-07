@interface BMTrustKitTKModelMessages
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTrustKitTKModelMessages)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMTrustKitTKModelMessages)initWithSignatureId:(id)id uafVersion:(id)version recordZone:(id)zone triggeredRules:(id)rules nemesisErrors:(id)errors filteringTriggeredRules:(id)triggeredRules filteringNemesisErrors:(id)nemesisErrors locale:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_filteringNemesisErrorsJSONArray;
- (id)_filteringTriggeredRulesJSONArray;
- (id)_nemesisErrorsJSONArray;
- (id)_triggeredRulesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTrustKitTKModelMessages

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    signatureId = [(BMTrustKitTKModelMessages *)self signatureId];
    signatureId2 = [v5 signatureId];
    v8 = signatureId2;
    if (signatureId == signatureId2)
    {
    }

    else
    {
      signatureId3 = [(BMTrustKitTKModelMessages *)self signatureId];
      signatureId4 = [v5 signatureId];
      v11 = [signatureId3 isEqual:signatureId4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    uafVersion = [(BMTrustKitTKModelMessages *)self uafVersion];
    uafVersion2 = [v5 uafVersion];
    v15 = uafVersion2;
    if (uafVersion == uafVersion2)
    {
    }

    else
    {
      uafVersion3 = [(BMTrustKitTKModelMessages *)self uafVersion];
      uafVersion4 = [v5 uafVersion];
      v18 = [uafVersion3 isEqual:uafVersion4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    recordZone = [(BMTrustKitTKModelMessages *)self recordZone];
    recordZone2 = [v5 recordZone];
    v21 = recordZone2;
    if (recordZone == recordZone2)
    {
    }

    else
    {
      recordZone3 = [(BMTrustKitTKModelMessages *)self recordZone];
      recordZone4 = [v5 recordZone];
      v24 = [recordZone3 isEqual:recordZone4];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    triggeredRules = [(BMTrustKitTKModelMessages *)self triggeredRules];
    triggeredRules2 = [v5 triggeredRules];
    v27 = triggeredRules2;
    if (triggeredRules == triggeredRules2)
    {
    }

    else
    {
      triggeredRules3 = [(BMTrustKitTKModelMessages *)self triggeredRules];
      triggeredRules4 = [v5 triggeredRules];
      v30 = [triggeredRules3 isEqual:triggeredRules4];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    nemesisErrors = [(BMTrustKitTKModelMessages *)self nemesisErrors];
    nemesisErrors2 = [v5 nemesisErrors];
    v33 = nemesisErrors2;
    if (nemesisErrors == nemesisErrors2)
    {
    }

    else
    {
      nemesisErrors3 = [(BMTrustKitTKModelMessages *)self nemesisErrors];
      nemesisErrors4 = [v5 nemesisErrors];
      v36 = [nemesisErrors3 isEqual:nemesisErrors4];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    filteringTriggeredRules = [(BMTrustKitTKModelMessages *)self filteringTriggeredRules];
    filteringTriggeredRules2 = [v5 filteringTriggeredRules];
    v39 = filteringTriggeredRules2;
    if (filteringTriggeredRules == filteringTriggeredRules2)
    {
    }

    else
    {
      filteringTriggeredRules3 = [(BMTrustKitTKModelMessages *)self filteringTriggeredRules];
      filteringTriggeredRules4 = [v5 filteringTriggeredRules];
      v42 = [filteringTriggeredRules3 isEqual:filteringTriggeredRules4];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    filteringNemesisErrors = [(BMTrustKitTKModelMessages *)self filteringNemesisErrors];
    filteringNemesisErrors2 = [v5 filteringNemesisErrors];
    v45 = filteringNemesisErrors2;
    if (filteringNemesisErrors == filteringNemesisErrors2)
    {
    }

    else
    {
      filteringNemesisErrors3 = [(BMTrustKitTKModelMessages *)self filteringNemesisErrors];
      filteringNemesisErrors4 = [v5 filteringNemesisErrors];
      v48 = [filteringNemesisErrors3 isEqual:filteringNemesisErrors4];

      if (!v48)
      {
LABEL_29:
        v12 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    locale = [(BMTrustKitTKModelMessages *)self locale];
    locale2 = [v5 locale];
    if (locale == locale2)
    {
      v12 = 1;
    }

    else
    {
      locale3 = [(BMTrustKitTKModelMessages *)self locale];
      locale4 = [v5 locale];
      v12 = [locale3 isEqual:locale4];
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (id)jsonDictionary
{
  v28[8] = *MEMORY[0x1E69E9840];
  signatureId = [(BMTrustKitTKModelMessages *)self signatureId];
  uafVersion = [(BMTrustKitTKModelMessages *)self uafVersion];
  recordZone = [(BMTrustKitTKModelMessages *)self recordZone];
  _triggeredRulesJSONArray = [(BMTrustKitTKModelMessages *)self _triggeredRulesJSONArray];
  _nemesisErrorsJSONArray = [(BMTrustKitTKModelMessages *)self _nemesisErrorsJSONArray];
  _filteringTriggeredRulesJSONArray = [(BMTrustKitTKModelMessages *)self _filteringTriggeredRulesJSONArray];
  _filteringNemesisErrorsJSONArray = [(BMTrustKitTKModelMessages *)self _filteringNemesisErrorsJSONArray];
  locale = [(BMTrustKitTKModelMessages *)self locale];
  v27[0] = @"signatureId";
  null = signatureId;
  if (!signatureId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v28[0] = null;
  v27[1] = @"uafVersion";
  null2 = uafVersion;
  if (!uafVersion)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v28[1] = null2;
  v27[2] = @"recordZone";
  null3 = recordZone;
  if (!recordZone)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = signatureId;
  v20 = null3;
  v28[2] = null3;
  v27[3] = @"triggeredRules";
  null4 = _triggeredRulesJSONArray;
  if (!_triggeredRulesJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = uafVersion;
  v28[3] = null4;
  v27[4] = @"nemesisErrors";
  null5 = _nemesisErrorsJSONArray;
  if (!_nemesisErrorsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = recordZone;
  v28[4] = null5;
  v27[5] = @"filteringTriggeredRules";
  null6 = _filteringTriggeredRulesJSONArray;
  if (!_filteringTriggeredRulesJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null6;
  v27[6] = @"filteringNemesisErrors";
  null7 = _filteringNemesisErrorsJSONArray;
  if (!_filteringNemesisErrorsJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = null7;
  v27[7] = @"locale";
  null8 = locale;
  if (!locale)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = null8;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (locale)
  {
    if (_filteringNemesisErrorsJSONArray)
    {
      goto LABEL_19;
    }

LABEL_31:

    if (_filteringTriggeredRulesJSONArray)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  if (!_filteringNemesisErrorsJSONArray)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (_filteringTriggeredRulesJSONArray)
  {
    goto LABEL_20;
  }

LABEL_32:

LABEL_20:
  if (!_nemesisErrorsJSONArray)
  {
  }

  if (!_triggeredRulesJSONArray)
  {
  }

  if (v24)
  {
    if (v25)
    {
      goto LABEL_26;
    }

LABEL_34:

    if (v26)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  if (!v25)
  {
    goto LABEL_34;
  }

LABEL_26:
  if (v26)
  {
    goto LABEL_27;
  }

LABEL_35:

LABEL_27:

  return v23;
}

- (id)_filteringNemesisErrorsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  filteringNemesisErrors = [(BMTrustKitTKModelMessages *)self filteringNemesisErrors];
  v5 = [filteringNemesisErrors countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(filteringNemesisErrors);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [filteringNemesisErrors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_filteringTriggeredRulesJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  filteringTriggeredRules = [(BMTrustKitTKModelMessages *)self filteringTriggeredRules];
  v5 = [filteringTriggeredRules countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(filteringTriggeredRules);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [filteringTriggeredRules countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_nemesisErrorsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  nemesisErrors = [(BMTrustKitTKModelMessages *)self nemesisErrors];
  v5 = [nemesisErrors countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(nemesisErrors);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [nemesisErrors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_triggeredRulesJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  triggeredRules = [(BMTrustKitTKModelMessages *)self triggeredRules];
  v5 = [triggeredRules countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(triggeredRules);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [triggeredRules countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMTrustKitTKModelMessages)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v186[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"signatureId"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v185 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"signatureId"];
        v186[0] = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v186 forKeys:&v185 count:1];
        v34 = v31;
        v9 = v33;
        v35 = [v30 initWithDomain:v34 code:2 userInfo:v33];
        v8 = 0;
        v36 = p_isa;
        p_isa = 0;
        *v36 = v35;
        goto LABEL_134;
      }

      v8 = 0;
      goto LABEL_135;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"uafVersion"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = v9;
        v41 = *MEMORY[0x1E698F240];
        v183 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v117 = objc_opt_class();
        v44 = v43;
        self = selfCopy;
        v12 = [v44 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v117, @"uafVersion"];
        v184 = v12;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
        v46 = v39;
        v11 = v45;
        v47 = v41;
        v9 = v40;
        v48 = [v46 initWithDomain:v47 code:2 userInfo:v45];
        v32 = 0;
        v49 = p_isa;
        p_isa = 0;
        *v49 = v48;
        goto LABEL_133;
      }

      v32 = 0;
      goto LABEL_134;
    }

    v131 = v9;
  }

  else
  {
    v131 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"recordZone"];
  v128 = v7;
  v129 = v10;
  v130 = v8;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v133 = p_isa;
        v50 = v11;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = v9;
        v53 = *MEMORY[0x1E698F240];
        v181 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recordZone"];
        v182 = v13;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
        v54 = v51;
        v11 = v50;
        v55 = v53;
        v9 = v52;
        v12 = 0;
        p_isa = 0;
        v32 = v131;
        *v133 = [v54 initWithDomain:v55 code:2 userInfo:v16];
        goto LABEL_131;
      }

      v12 = 0;
      v32 = v131;
      goto LABEL_133;
    }

    v127 = v9;
    v12 = v11;
  }

  else
  {
    v127 = v9;
    v12 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"triggeredRules"];
  null = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 isEqual:null];

  if (v15)
  {
    selfCopy3 = self;
    v125 = v12;

    v13 = 0;
  }

  else
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          v9 = v127;
          v32 = v131;
          v11 = v129;
          goto LABEL_132;
        }

        v64 = objc_alloc(MEMORY[0x1E696ABC0]);
        v65 = *MEMORY[0x1E698F240];
        v179 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"triggeredRules"];
        v180 = v16;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
        v66 = [v64 initWithDomain:v65 code:2 userInfo:v22];
        v67 = p_isa;
        p_isa = 0;
        *v67 = v66;
        goto LABEL_60;
      }
    }

    selfCopy3 = self;
    v125 = v12;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v13 = v13;
  v17 = [v13 countByEnumeratingWithState:&v147 objects:v178 count:16];
  v132 = p_isa;
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v17;
  v19 = *v148;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v148 != v19)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v147 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v132)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v176 = *MEMORY[0x1E696A578];
          v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"triggeredRules"];
          v177 = v134;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
          v28 = v25;
          v29 = v26;
LABEL_38:
          obj = v27;
          self = selfCopy3;
          v32 = v131;
          v11 = v129;
          p_isa = 0;
          *v132 = [v28 initWithDomain:v29 code:2 userInfo:?];
          v22 = v13;
          v9 = v127;
          goto LABEL_88;
        }

LABEL_41:
        p_isa = 0;
        v22 = v13;
LABEL_42:
        self = selfCopy3;
        v12 = v125;
LABEL_60:
        v9 = v127;
        v32 = v131;
        v11 = v129;
        goto LABEL_130;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v132)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v174 = *MEMORY[0x1E696A578];
          v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"triggeredRules"];
          v175 = v134;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
          v28 = v37;
          v29 = v38;
          goto LABEL_38;
        }

        goto LABEL_41;
      }

      [v16 addObject:v21];
    }

    v18 = [v13 countByEnumeratingWithState:&v147 objects:v178 count:16];
    p_isa = v132;
  }

  while (v18);
LABEL_26:

  v22 = [dictionaryCopy objectForKeyedSubscript:@"nemesisErrors"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v24 = [v22 isEqual:null2];

  if (!v24)
  {
    if (!v22)
    {
      goto LABEL_47;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_47;
    }

    if (p_isa)
    {
      v83 = objc_alloc(MEMORY[0x1E696ABC0]);
      v84 = *MEMORY[0x1E698F240];
      v172 = *MEMORY[0x1E696A578];
      v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"nemesisErrors"];
      v173 = v134;
      obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
      v85 = [v83 initWithDomain:v84 code:2 userInfo:?];
      v86 = p_isa;
      p_isa = 0;
      *v86 = v85;
      goto LABEL_87;
    }

    goto LABEL_42;
  }

  v22 = 0;
LABEL_47:
  v134 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v22 = v22;
  v56 = [v22 countByEnumeratingWithState:&v143 objects:v171 count:16];
  if (!v56)
  {
    goto LABEL_56;
  }

  v57 = v56;
  v58 = *v144;
  do
  {
    for (j = 0; j != v57; ++j)
    {
      if (*v144 != v58)
      {
        objc_enumerationMutation(v22);
      }

      v60 = *(*(&v143 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v132)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v169 = *MEMORY[0x1E696A578];
          v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"nemesisErrors"];
          v170 = v123;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
          v71 = v68;
          v72 = v69;
LABEL_66:
          v122 = v70;
          v32 = v131;
          v11 = v129;
          p_isa = 0;
          *v132 = [v71 initWithDomain:v72 code:2 userInfo:?];
          obj = v22;
          self = selfCopy3;
          v9 = v127;
          goto LABEL_67;
        }

LABEL_70:
        p_isa = 0;
        obj = v22;
LABEL_87:
        self = selfCopy3;
        v9 = v127;
        v32 = v131;
        v11 = v129;
LABEL_88:
        v12 = v125;
        goto LABEL_129;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v132)
        {
          v73 = objc_alloc(MEMORY[0x1E696ABC0]);
          v74 = *MEMORY[0x1E698F240];
          v167 = *MEMORY[0x1E696A578];
          v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"nemesisErrors"];
          v168 = v123;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
          v71 = v73;
          v72 = v74;
          goto LABEL_66;
        }

        goto LABEL_70;
      }

      [v134 addObject:v60];
    }

    v57 = [v22 countByEnumeratingWithState:&v143 objects:v171 count:16];
  }

  while (v57);
LABEL_56:

  v61 = [dictionaryCopy objectForKeyedSubscript:@"filteringTriggeredRules"];
  null3 = [MEMORY[0x1E695DFB0] null];
  v63 = [v61 isEqual:null3];

  if (!v63)
  {
    v11 = v129;
    v12 = v125;
    if (!v61)
    {
      goto LABEL_74;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_74;
    }

    obj = v61;
    if (!v132)
    {
      p_isa = 0;
      self = selfCopy3;
      v9 = v127;
      v32 = v131;
      goto LABEL_129;
    }

    v101 = objc_alloc(MEMORY[0x1E696ABC0]);
    v102 = *MEMORY[0x1E698F240];
    v165 = *MEMORY[0x1E696A578];
    v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"filteringTriggeredRules"];
    v166 = v123;
    v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
    p_isa = 0;
    *v132 = [v101 initWithDomain:v102 code:2 userInfo:?];
LABEL_111:
    self = selfCopy3;
    v9 = v127;
    v32 = v131;
    goto LABEL_128;
  }

  v61 = 0;
  v11 = v129;
LABEL_74:
  v123 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v61, "count")}];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = v61;
  v75 = [obj countByEnumeratingWithState:&v139 objects:v164 count:16];
  if (!v75)
  {
    goto LABEL_83;
  }

  v76 = v75;
  v77 = *v140;
  do
  {
    for (k = 0; k != v76; ++k)
    {
      if (*v140 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v79 = *(*(&v139 + 1) + 8 * k);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v132)
        {
          v87 = objc_alloc(MEMORY[0x1E696ABC0]);
          v88 = *MEMORY[0x1E698F240];
          v162 = *MEMORY[0x1E696A578];
          v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"filteringTriggeredRules"];
          v163 = v121;
          v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
          v90 = v87;
          v91 = v88;
LABEL_93:
          v119 = v89;
          v32 = v131;
          v11 = v129;
          p_isa = 0;
          *v132 = [v90 initWithDomain:v91 code:2 userInfo:?];
          v9 = v127;
          v122 = obj;
          self = selfCopy3;
          v12 = v125;
          goto LABEL_126;
        }

LABEL_94:
        p_isa = 0;
        v9 = v127;
        v122 = obj;
        self = selfCopy3;
        v32 = v131;
        v11 = v129;
LABEL_67:
        v12 = v125;
        goto LABEL_128;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v132)
        {
          v92 = objc_alloc(MEMORY[0x1E696ABC0]);
          v93 = *MEMORY[0x1E698F240];
          v160 = *MEMORY[0x1E696A578];
          v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"filteringTriggeredRules"];
          v161 = v121;
          v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
          v90 = v92;
          v91 = v93;
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      [v123 addObject:v79];
    }

    v76 = [obj countByEnumeratingWithState:&v139 objects:v164 count:16];
    v11 = v129;
  }

  while (v76);
LABEL_83:

  v80 = [dictionaryCopy objectForKeyedSubscript:@"filteringNemesisErrors"];
  null4 = [MEMORY[0x1E695DFB0] null];
  v82 = [v80 isEqual:null4];

  if (v82)
  {

    v80 = 0;
    goto LABEL_97;
  }

  p_isa = v132;
  if (v80)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v122 = v80;
      v12 = v125;
      if (v132)
      {
        v109 = objc_alloc(MEMORY[0x1E696ABC0]);
        v110 = *MEMORY[0x1E698F240];
        v158 = *MEMORY[0x1E696A578];
        v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"filteringNemesisErrors"];
        v159 = v121;
        v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
        p_isa = 0;
        *v132 = [v109 initWithDomain:v110 code:2 userInfo:v111];
        v108 = v111;
        self = selfCopy3;
        v9 = v127;
        v32 = v131;
        goto LABEL_127;
      }

      goto LABEL_111;
    }
  }

LABEL_97:
  v121 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v80, "count")}];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v122 = v80;
  v94 = [v122 countByEnumeratingWithState:&v135 objects:v157 count:16];
  if (!v94)
  {
    goto LABEL_106;
  }

  v95 = v94;
  v96 = *v136;
  while (2)
  {
    v97 = 0;
    while (2)
    {
      if (*v136 != v96)
      {
        objc_enumerationMutation(v122);
      }

      v98 = *(*(&v135 + 1) + 8 * v97);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v132)
        {
          v103 = objc_alloc(MEMORY[0x1E696ABC0]);
          v104 = *MEMORY[0x1E698F240];
          v155 = *MEMORY[0x1E696A578];
          v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"filteringNemesisErrors"];
          v156 = v118;
          v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
          v106 = v103;
LABEL_116:
          v32 = v131;
          v11 = v129;
          *v132 = [v106 initWithDomain:v104 code:2 userInfo:v105];

          p_isa = 0;
          v119 = v122;
          self = selfCopy3;
          v9 = v127;
          goto LABEL_117;
        }

LABEL_118:
        p_isa = 0;
        v108 = v122;
        self = selfCopy3;
        v12 = v125;
        v9 = v127;
        v32 = v131;
        v11 = v129;
        goto LABEL_127;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v132)
        {
          v107 = objc_alloc(MEMORY[0x1E696ABC0]);
          v104 = *MEMORY[0x1E698F240];
          v153 = *MEMORY[0x1E696A578];
          v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"filteringNemesisErrors"];
          v154 = v118;
          v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
          v106 = v107;
          goto LABEL_116;
        }

        goto LABEL_118;
      }

      [v121 addObject:v98];
      if (v95 != ++v97)
      {
        continue;
      }

      break;
    }

    v95 = [v122 countByEnumeratingWithState:&v135 objects:v157 count:16];
    v11 = v129;
    if (v95)
    {
      continue;
    }

    break;
  }

LABEL_106:

  v99 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
  v118 = v99;
  if (v99)
  {
    v100 = v99;
    objc_opt_class();
    self = selfCopy3;
    v9 = v127;
    if (objc_opt_isKindOfClass())
    {
      v99 = 0;
      goto LABEL_123;
    }

    objc_opt_class();
    v32 = v131;
    if (objc_opt_isKindOfClass())
    {
      v99 = v100;
      goto LABEL_124;
    }

    if (v132)
    {
      v120 = objc_alloc(MEMORY[0x1E696ABC0]);
      v113 = *MEMORY[0x1E698F240];
      v151 = *MEMORY[0x1E696A578];
      v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"locale"];
      v152 = v114;
      v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
      v116 = v113;
      self = selfCopy3;
      v11 = v129;
      *v132 = [v120 initWithDomain:v116 code:2 userInfo:v115];

      v9 = v127;
    }

    v119 = 0;
    p_isa = 0;
LABEL_117:
    v12 = v125;
  }

  else
  {
    self = selfCopy3;
    v9 = v127;
LABEL_123:
    v32 = v131;
LABEL_124:
    v12 = v125;
    v119 = v99;
    self = [(BMTrustKitTKModelMessages *)self initWithSignatureId:v130 uafVersion:v32 recordZone:v125 triggeredRules:v16 nemesisErrors:v134 filteringTriggeredRules:v123 filteringNemesisErrors:v121 locale:v99];
    p_isa = &self->super.super.isa;
  }

LABEL_126:
  v108 = v119;
LABEL_127:

LABEL_128:
LABEL_129:

LABEL_130:
LABEL_131:

  v7 = v128;
LABEL_132:

  v8 = v130;
LABEL_133:

LABEL_134:
LABEL_135:

  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTrustKitTKModelMessages *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_signatureId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uafVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recordZone)
  {
    PBDataWriterWriteStringField();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_triggeredRules;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_nemesisErrors;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_filteringTriggeredRules;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_filteringNemesisErrors;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMTrustKitTKModelMessages;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
LABEL_49:
    v37 = v5;
    goto LABEL_50;
  }

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
      v40 = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (v40 & 0x7F) << v11;
      if ((v40 & 0x80) == 0)
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
    if ((v18 >> 3) > 4)
    {
      if (v19 <= 6)
      {
        if (v19 == 5)
        {
          v26 = PBReaderReadString();
          if (!v26)
          {
            goto LABEL_46;
          }

          v23 = v26;
          v24 = v7;
        }

        else
        {
          if (v19 != 6)
          {
            goto LABEL_45;
          }

          v22 = PBReaderReadString();
          if (!v22)
          {
            goto LABEL_46;
          }

          v23 = v22;
          v24 = v8;
        }

        goto LABEL_43;
      }

      if (v19 == 7)
      {
        v27 = PBReaderReadString();
        if (!v27)
        {
          goto LABEL_46;
        }

        v23 = v27;
        v24 = v9;
        goto LABEL_43;
      }

      if (v19 == 8)
      {
        v20 = PBReaderReadString();
        v21 = 80;
        goto LABEL_40;
      }

LABEL_45:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_46:

        goto LABEL_48;
      }
    }

    else
    {
      if (v19 <= 2)
      {
        if (v19 == 1)
        {
          v20 = PBReaderReadString();
          v21 = 24;
          goto LABEL_40;
        }

        if (v19 == 2)
        {
          v20 = PBReaderReadString();
          v21 = 32;
LABEL_40:
          v23 = *(&v5->super.super.isa + v21);
          *(&v5->super.super.isa + v21) = v20;
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (v19 == 3)
      {
        v20 = PBReaderReadString();
        v21 = 40;
        goto LABEL_40;
      }

      if (v19 != 4)
      {
        goto LABEL_45;
      }

      v25 = PBReaderReadString();
      if (!v25)
      {
        goto LABEL_46;
      }

      v23 = v25;
      v24 = v6;
LABEL_43:
      [v24 addObject:v23];
LABEL_44:
    }
  }

  v28 = [v6 copy];
  triggeredRules = v5->_triggeredRules;
  v5->_triggeredRules = v28;

  v30 = [v7 copy];
  nemesisErrors = v5->_nemesisErrors;
  v5->_nemesisErrors = v30;

  v32 = [v8 copy];
  filteringTriggeredRules = v5->_filteringTriggeredRules;
  v5->_filteringTriggeredRules = v32;

  v34 = [v9 copy];
  filteringNemesisErrors = v5->_filteringNemesisErrors;
  v5->_filteringNemesisErrors = v34;

  hasError = [fromCopy hasError];
  if ((hasError & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_48:
  v37 = 0;
LABEL_50:

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  signatureId = [(BMTrustKitTKModelMessages *)self signatureId];
  uafVersion = [(BMTrustKitTKModelMessages *)self uafVersion];
  recordZone = [(BMTrustKitTKModelMessages *)self recordZone];
  triggeredRules = [(BMTrustKitTKModelMessages *)self triggeredRules];
  nemesisErrors = [(BMTrustKitTKModelMessages *)self nemesisErrors];
  filteringTriggeredRules = [(BMTrustKitTKModelMessages *)self filteringTriggeredRules];
  filteringNemesisErrors = [(BMTrustKitTKModelMessages *)self filteringNemesisErrors];
  locale = [(BMTrustKitTKModelMessages *)self locale];
  v12 = [v3 initWithFormat:@"BMTrustKitTKModelMessages with signatureId: %@, uafVersion: %@, recordZone: %@, triggeredRules: %@, nemesisErrors: %@, filteringTriggeredRules: %@, filteringNemesisErrors: %@, locale: %@", signatureId, uafVersion, recordZone, triggeredRules, nemesisErrors, filteringTriggeredRules, filteringNemesisErrors, locale];

  return v12;
}

- (BMTrustKitTKModelMessages)initWithSignatureId:(id)id uafVersion:(id)version recordZone:(id)zone triggeredRules:(id)rules nemesisErrors:(id)errors filteringTriggeredRules:(id)triggeredRules filteringNemesisErrors:(id)nemesisErrors locale:(id)self0
{
  idCopy = id;
  versionCopy = version;
  zoneCopy = zone;
  rulesCopy = rules;
  errorsCopy = errors;
  triggeredRulesCopy = triggeredRules;
  nemesisErrorsCopy = nemesisErrors;
  localeCopy = locale;
  v27.receiver = self;
  v27.super_class = BMTrustKitTKModelMessages;
  v18 = [(BMEventBase *)&v27 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_signatureId, id);
    objc_storeStrong(&v18->_uafVersion, version);
    objc_storeStrong(&v18->_recordZone, zone);
    objc_storeStrong(&v18->_triggeredRules, rules);
    objc_storeStrong(&v18->_nemesisErrors, errors);
    objc_storeStrong(&v18->_filteringTriggeredRules, triggeredRules);
    objc_storeStrong(&v18->_filteringNemesisErrors, nemesisErrors);
    objc_storeStrong(&v18->_locale, locale);
  }

  return v18;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"signatureId" number:1 type:13 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uafVersion" number:2 type:13 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recordZone" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"triggeredRules" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nemesisErrors" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"filteringTriggeredRules" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"filteringNemesisErrors" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locale" number:8 type:13 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"signatureId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uafVersion" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recordZone" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"triggeredRules_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_112305];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"nemesisErrors_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_58_112306];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"filteringTriggeredRules_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_60_112307];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"filteringNemesisErrors_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_62_112308];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locale" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

id __36__BMTrustKitTKModelMessages_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _filteringNemesisErrorsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMTrustKitTKModelMessages_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _filteringTriggeredRulesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMTrustKitTKModelMessages_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _nemesisErrorsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMTrustKitTKModelMessages_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _triggeredRulesJSONArray];
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

    v8 = [[BMTrustKitTKModelMessages alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end