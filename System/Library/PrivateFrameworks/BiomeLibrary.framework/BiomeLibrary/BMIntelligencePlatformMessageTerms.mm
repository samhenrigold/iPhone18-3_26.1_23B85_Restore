@interface BMIntelligencePlatformMessageTerms
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligencePlatformMessageTerms)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMIntelligencePlatformMessageTerms)initWithProtoVersion:(id)version bundleID:(id)d domain:(id)domain spotlightIdentifier:(id)identifier timestamp:(id)timestamp sender:(id)sender recipients:(id)recipients termCount:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)_recipientsJSONArray;
- (id)_termCountJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligencePlatformMessageTerms

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"protoVersion" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spotlightIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sender" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"recipients_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_244_31355];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"termCount_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_246_31356];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMIntelligencePlatformMessageTerms hasProtoVersion](self, "hasProtoVersion") || [v5 hasProtoVersion])
    {
      if (![(BMIntelligencePlatformMessageTerms *)self hasProtoVersion])
      {
        goto LABEL_30;
      }

      if (![v5 hasProtoVersion])
      {
        goto LABEL_30;
      }

      protoVersion = [(BMIntelligencePlatformMessageTerms *)self protoVersion];
      if (protoVersion != [v5 protoVersion])
      {
        goto LABEL_30;
      }
    }

    bundleID = [(BMIntelligencePlatformMessageTerms *)self bundleID];
    bundleID2 = [v5 bundleID];
    v9 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMIntelligencePlatformMessageTerms *)self bundleID];
      bundleID4 = [v5 bundleID];
      v12 = [bundleID3 isEqual:bundleID4];

      if (!v12)
      {
        goto LABEL_30;
      }
    }

    domain = [(BMIntelligencePlatformMessageTerms *)self domain];
    domain2 = [v5 domain];
    v16 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMIntelligencePlatformMessageTerms *)self domain];
      domain4 = [v5 domain];
      v19 = [domain3 isEqual:domain4];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    spotlightIdentifier = [(BMIntelligencePlatformMessageTerms *)self spotlightIdentifier];
    spotlightIdentifier2 = [v5 spotlightIdentifier];
    v22 = spotlightIdentifier2;
    if (spotlightIdentifier == spotlightIdentifier2)
    {
    }

    else
    {
      spotlightIdentifier3 = [(BMIntelligencePlatformMessageTerms *)self spotlightIdentifier];
      spotlightIdentifier4 = [v5 spotlightIdentifier];
      v25 = [spotlightIdentifier3 isEqual:spotlightIdentifier4];

      if (!v25)
      {
        goto LABEL_30;
      }
    }

    timestamp = [(BMIntelligencePlatformMessageTerms *)self timestamp];
    timestamp2 = [v5 timestamp];
    v28 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMIntelligencePlatformMessageTerms *)self timestamp];
      timestamp4 = [v5 timestamp];
      v31 = [timestamp3 isEqual:timestamp4];

      if (!v31)
      {
        goto LABEL_30;
      }
    }

    sender = [(BMIntelligencePlatformMessageTerms *)self sender];
    sender2 = [v5 sender];
    v34 = sender2;
    if (sender == sender2)
    {
    }

    else
    {
      sender3 = [(BMIntelligencePlatformMessageTerms *)self sender];
      sender4 = [v5 sender];
      v37 = [sender3 isEqual:sender4];

      if (!v37)
      {
        goto LABEL_30;
      }
    }

    recipients = [(BMIntelligencePlatformMessageTerms *)self recipients];
    recipients2 = [v5 recipients];
    v40 = recipients2;
    if (recipients == recipients2)
    {
    }

    else
    {
      recipients3 = [(BMIntelligencePlatformMessageTerms *)self recipients];
      recipients4 = [v5 recipients];
      v43 = [recipients3 isEqual:recipients4];

      if (!v43)
      {
LABEL_30:
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    termCount = [(BMIntelligencePlatformMessageTerms *)self termCount];
    termCount2 = [v5 termCount];
    if (termCount == termCount2)
    {
      v13 = 1;
    }

    else
    {
      termCount3 = [(BMIntelligencePlatformMessageTerms *)self termCount];
      termCount4 = [v5 termCount];
      v13 = [termCount3 isEqual:termCount4];
    }

    goto LABEL_31;
  }

  v13 = 0;
LABEL_32:

  return v13;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v32[8] = *MEMORY[0x1E69E9840];
  if ([(BMIntelligencePlatformMessageTerms *)self hasProtoVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformMessageTerms protoVersion](self, "protoVersion")}];
  }

  else
  {
    v3 = 0;
  }

  bundleID = [(BMIntelligencePlatformMessageTerms *)self bundleID];
  domain = [(BMIntelligencePlatformMessageTerms *)self domain];
  spotlightIdentifier = [(BMIntelligencePlatformMessageTerms *)self spotlightIdentifier];
  timestamp = [(BMIntelligencePlatformMessageTerms *)self timestamp];
  if (timestamp)
  {
    v8 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMIntelligencePlatformMessageTerms *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  sender = [(BMIntelligencePlatformMessageTerms *)self sender];
  _recipientsJSONArray = [(BMIntelligencePlatformMessageTerms *)self _recipientsJSONArray];
  _termCountJSONArray = [(BMIntelligencePlatformMessageTerms *)self _termCountJSONArray];
  v31[0] = @"protoVersion";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null;
  v32[0] = null;
  v31[1] = @"bundleID";
  null2 = bundleID;
  if (!bundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null2;
  v32[1] = null2;
  v31[2] = @"domain";
  null3 = domain;
  if (!domain)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v3;
  v24 = null3;
  v32[2] = null3;
  v31[3] = @"spotlightIdentifier";
  null4 = spotlightIdentifier;
  if (!spotlightIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = bundleID;
  v32[3] = null4;
  v31[4] = @"timestamp";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = domain;
  v32[4] = null5;
  v31[5] = @"sender";
  null6 = sender;
  if (!sender)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = spotlightIdentifier;
  v32[5] = null6;
  v31[6] = @"recipients";
  null7 = _recipientsJSONArray;
  if (!_recipientsJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = null7;
  v31[7] = @"termCount";
  null8 = _termCountJSONArray;
  if (!_termCountJSONArray)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = null8;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:8];
  if (_termCountJSONArray)
  {
    if (_recipientsJSONArray)
    {
      goto LABEL_25;
    }

LABEL_37:

    if (sender)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  if (!_recipientsJSONArray)
  {
    goto LABEL_37;
  }

LABEL_25:
  if (sender)
  {
    goto LABEL_26;
  }

LABEL_38:

LABEL_26:
  if (!v10)
  {
  }

  if (!v20)
  {
  }

  if (v28)
  {
    if (v29)
    {
      goto LABEL_32;
    }

LABEL_40:

    if (v30)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

  if (!v29)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (v30)
  {
    goto LABEL_33;
  }

LABEL_41:

LABEL_33:

  return v27;
}

- (id)_termCountJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  termCount = [(BMIntelligencePlatformMessageTerms *)self termCount];
  v5 = [termCount countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(termCount);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [termCount countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_recipientsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  recipients = [(BMIntelligencePlatformMessageTerms *)self recipients];
  v5 = [recipients countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(recipients);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [recipients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMIntelligencePlatformMessageTerms)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v189[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"protoVersion"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v188 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"protoVersion"];
        v189[0] = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v189 forKeys:&v188 count:1];
        v26 = v22;
        v9 = v25;
        v27 = [v26 initWithDomain:v23 code:2 userInfo:v25];
        v8 = 0;
        errorCopy = error;
        error = 0;
        *errorCopy = v27;
        goto LABEL_113;
      }

      v8 = 0;
      goto LABEL_114;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v29 = v9;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v186 = *MEMORY[0x1E696A578];
        v32 = v8;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v133 = objc_opt_class();
        v34 = v33;
        v8 = v32;
        v35 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v133, @"bundleID"];
        v187 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        v37 = v30;
        v9 = v29;
        v38 = v31;
        v10 = v36;
        v39 = [v37 initWithDomain:v38 code:2 userInfo:v36];
        v24 = 0;
        errorCopy2 = error;
        error = 0;
        *errorCopy2 = v39;
        goto LABEL_112;
      }

      v24 = 0;
      goto LABEL_113;
    }

    v152 = v9;
  }

  else
  {
    v152 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
  errorCopy11 = self;
  v154 = v10;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v41 = v9;
        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v184 = *MEMORY[0x1E696A578];
        v44 = v8;
        v45 = objc_alloc(MEMORY[0x1E696AEC0]);
        v134 = objc_opt_class();
        v46 = v45;
        v8 = v44;
        v11 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v134, @"domain"];
        v185 = v11;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
        v48 = v42;
        v9 = v41;
        v49 = v43;
        v10 = v154;
        v151 = v47;
        v50 = [v48 initWithDomain:v49 code:2 userInfo:?];
        v35 = 0;
        errorCopy3 = error;
        error = 0;
        *errorCopy3 = v50;
        v24 = v152;
        goto LABEL_111;
      }

      v35 = 0;
      v24 = v152;
      goto LABEL_112;
    }

    v148 = v10;
  }

  else
  {
    v148 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"spotlightIdentifier"];
  v151 = v11;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v24 = v152;
          v35 = v148;
          goto LABEL_111;
        }

        v52 = v9;
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = *MEMORY[0x1E698F240];
        v182 = *MEMORY[0x1E696A578];
        v55 = v8;
        v56 = objc_alloc(MEMORY[0x1E696AEC0]);
        v135 = objc_opt_class();
        v57 = v56;
        v8 = v55;
        v58 = [v57 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v135, @"spotlightIdentifier"];
        v183 = v58;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
        v60 = v53;
        v9 = v52;
        v61 = v58;
        v62 = v54;
        v10 = v154;
        v147 = v59;
        v63 = [v60 initWithDomain:v62 code:2 userInfo:?];
        v11 = 0;
        errorCopy4 = error;
        error = 0;
        *errorCopy4 = v63;
        goto LABEL_35;
      }

      v11 = v11;
    }
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  v147 = v12;
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = MEMORY[0x1E695DF00];
        v15 = v13;
        v16 = v9;
        v17 = v15;
        v18 = [v14 alloc];
        [v17 doubleValue];
        v20 = v19;

        v9 = v16;
        v21 = [v18 initWithTimeIntervalSince1970:v20];
LABEL_26:
        v143 = v21;
        goto LABEL_38;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v143 = [v65 dateFromString:v13];

        goto LABEL_38;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v13;
        goto LABEL_26;
      }

      if (error)
      {
        v122 = v9;
        v123 = objc_alloc(MEMORY[0x1E696ABC0]);
        v124 = *MEMORY[0x1E698F240];
        v180 = *MEMORY[0x1E696A578];
        v125 = v8;
        v126 = objc_alloc(MEMORY[0x1E696AEC0]);
        v136 = objc_opt_class();
        v127 = v126;
        v8 = v125;
        v144 = [v127 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v136, @"timestamp"];
        v181 = v144;
        v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
        v129 = v123;
        v9 = v122;
        v130 = v124;
        v10 = v154;
        v145 = v128;
        v131 = [v129 initWithDomain:v130 code:2 userInfo:?];
        v61 = 0;
        errorCopy5 = error;
        error = 0;
        *errorCopy5 = v131;
        v24 = v152;
        v35 = v148;
        goto LABEL_109;
      }

      v61 = 0;
LABEL_35:
      v24 = v152;
      v35 = v148;
      goto LABEL_110;
    }
  }

  v143 = 0;
LABEL_38:
  v66 = [dictionaryCopy objectForKeyedSubscript:@"sender"];
  v141 = v9;
  v142 = v8;
  v145 = v66;
  if (v66 && (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v87 = objc_alloc(MEMORY[0x1E696ABC0]);
        v88 = v7;
        v89 = *MEMORY[0x1E698F240];
        v178 = *MEMORY[0x1E696A578];
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sender"];
        v179 = v68;
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
        v90 = v87;
        v10 = v154;
        v91 = v89;
        v7 = v88;
        v92 = [v90 initWithDomain:v91 code:2 userInfo:v71];
        v144 = 0;
        errorCopy6 = error;
        error = 0;
        *errorCopy6 = v92;
        v24 = v152;
        v35 = v148;
        v61 = v143;
        goto LABEL_107;
      }

      v144 = 0;
      v24 = v152;
      v35 = v148;
      v61 = v143;
      goto LABEL_109;
    }

    v144 = v67;
  }

  else
  {
    v144 = 0;
  }

  v68 = [dictionaryCopy objectForKeyedSubscript:@"recipients"];
  null = [MEMORY[0x1E695DFB0] null];
  v70 = [v68 isEqual:null];

  v140 = v11;
  if (v70)
  {
    v139 = dictionaryCopy;

    v68 = 0;
  }

  else
  {
    if (v68)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v24 = v152;
          v10 = v154;
          v35 = v148;
          v61 = v143;
          goto LABEL_108;
        }

        v108 = objc_alloc(MEMORY[0x1E696ABC0]);
        v109 = *MEMORY[0x1E698F240];
        v176 = *MEMORY[0x1E696A578];
        v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"recipients"];
        v177 = v71;
        v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
        v110 = [v108 initWithDomain:v109 code:2 userInfo:v77];
        errorCopy7 = error;
        error = 0;
        *errorCopy7 = v110;
        goto LABEL_85;
      }
    }

    v139 = dictionaryCopy;
  }

  v71 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v68, "count")}];
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v68 = v68;
  v72 = [v68 countByEnumeratingWithState:&v160 objects:v175 count:16];
  errorCopy8 = error;
  if (!v72)
  {
    goto LABEL_55;
  }

  v73 = v72;
  v74 = *v161;
  v137 = v7;
  do
  {
    for (i = 0; i != v73; ++i)
    {
      if (*v161 != v74)
      {
        objc_enumerationMutation(v68);
      }

      v76 = *(*(&v160 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (error)
        {
          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
          v81 = *MEMORY[0x1E698F240];
          v173 = *MEMORY[0x1E696A578];
          v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"recipients"];
          v174 = v149;
          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
          v83 = v80;
          v84 = v81;
LABEL_63:
          dictionaryCopy = v139;
          v24 = v152;
          v61 = v143;
          *error = [v83 initWithDomain:v84 code:2 userInfo:v82];

          error = 0;
          v77 = v68;
          v7 = v137;
          v10 = v154;
          v35 = v148;
          goto LABEL_105;
        }

LABEL_64:
        v77 = v68;
        v7 = v137;
        dictionaryCopy = v139;
LABEL_85:
        v24 = v152;
        v10 = v154;
LABEL_86:
        v35 = v148;
        v61 = v143;
        goto LABEL_106;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v85 = objc_alloc(MEMORY[0x1E696ABC0]);
          v86 = *MEMORY[0x1E698F240];
          v171 = *MEMORY[0x1E696A578];
          v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recipients"];
          v172 = v149;
          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
          v83 = v85;
          v84 = v86;
          error = errorCopy8;
          goto LABEL_63;
        }

        goto LABEL_64;
      }

      [v71 addObject:v76];
    }

    v73 = [v68 countByEnumeratingWithState:&v160 objects:v175 count:16];
    v7 = v137;
  }

  while (v73);
LABEL_55:

  v77 = [v139 objectForKeyedSubscript:@"termCount"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v79 = [v77 isEqual:null2];

  if (v79)
  {

    v77 = 0;
    goto LABEL_71;
  }

  if (v77)
  {
    objc_opt_class();
    v10 = v154;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v94 = objc_alloc(MEMORY[0x1E696ABC0]);
        v95 = *MEMORY[0x1E698F240];
        v169 = *MEMORY[0x1E696A578];
        v150 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"termCount"];
        v170 = v150;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
        v97 = v96 = v7;
        v98 = v95;
        v10 = v154;
        *error = [v94 initWithDomain:v98 code:2 userInfo:v97];

        v7 = v96;
        error = 0;
        dictionaryCopy = v139;
        v24 = v152;
        v35 = v148;
        v61 = v143;

        goto LABEL_106;
      }

      dictionaryCopy = v139;
      v24 = v152;
      goto LABEL_86;
    }
  }

  else
  {
LABEL_71:
    v10 = v154;
  }

  v149 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v77, "count")}];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v77 = v77;
  v99 = [v77 countByEnumeratingWithState:&v156 objects:v168 count:16];
  if (!v99)
  {
    goto LABEL_82;
  }

  v100 = v99;
  v101 = *v157;
  v138 = v7;
  while (2)
  {
    v102 = 0;
    while (2)
    {
      if (*v157 != v101)
      {
        objc_enumerationMutation(v77);
      }

      v103 = *(*(&v156 + 1) + 8 * v102);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionaryCopy = v139;
        v24 = v152;
        v35 = v148;
        v61 = v143;
        if (error)
        {
          v112 = objc_alloc(MEMORY[0x1E696ABC0]);
          v113 = *MEMORY[0x1E698F240];
          v166 = *MEMORY[0x1E696A578];
          errorCopy10 = error;
          v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"termCount"];
          v167 = v104;
          v115 = MEMORY[0x1E695DF20];
          v116 = &v167;
          v117 = &v166;
LABEL_99:
          v118 = [v115 dictionaryWithObjects:v116 forKeys:v117 count:1];
          v119 = v112;
          v35 = v148;
          *errorCopy10 = [v119 initWithDomain:v113 code:2 userInfo:v118];
LABEL_103:
          v61 = v143;

          v10 = v154;
        }

LABEL_104:

        error = 0;
        v7 = v138;
        goto LABEL_105;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dictionaryCopy = v139;
        v24 = v152;
        v35 = v148;
        v61 = v143;
        if (error)
        {
          v112 = objc_alloc(MEMORY[0x1E696ABC0]);
          v113 = *MEMORY[0x1E698F240];
          v164 = *MEMORY[0x1E696A578];
          errorCopy10 = error;
          v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"termCount"];
          v165 = v104;
          v115 = MEMORY[0x1E695DF20];
          v116 = &v165;
          v117 = &v164;
          goto LABEL_99;
        }

        goto LABEL_104;
      }

      v104 = v103;
      v105 = [BMIntelligencePlatformMessageTermsTermCount alloc];
      v155 = 0;
      v106 = [(BMIntelligencePlatformMessageTermsTermCount *)v105 initWithJSONDictionary:v104 error:&v155];
      v107 = v155;
      if (v107)
      {
        v118 = v107;
        if (errorCopy8)
        {
          v120 = v107;
          *errorCopy8 = v118;
        }

        dictionaryCopy = v139;
        v24 = v152;
        v35 = v148;
        goto LABEL_103;
      }

      [v149 addObject:v106];

      ++v102;
      v10 = v154;
      error = errorCopy8;
      if (v100 != v102)
      {
        continue;
      }

      break;
    }

    v100 = [v77 countByEnumeratingWithState:&v156 objects:v168 count:16];
    v7 = v138;
    if (v100)
    {
      continue;
    }

    break;
  }

LABEL_82:

  v35 = v148;
  v24 = v152;
  v61 = v143;
  error = [(BMIntelligencePlatformMessageTerms *)errorCopy11 initWithProtoVersion:v142 bundleID:v152 domain:v148 spotlightIdentifier:v140 timestamp:v143 sender:v144 recipients:v71 termCount:v149];
  errorCopy11 = error;
  dictionaryCopy = v139;
LABEL_105:

LABEL_106:
  v11 = v140;
LABEL_107:

  v8 = v142;
LABEL_108:

  v9 = v141;
LABEL_109:

LABEL_110:
LABEL_111:

  self = errorCopy11;
LABEL_112:

LABEL_113:
LABEL_114:

  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformMessageTerms *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasProtoVersion)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_timestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_sender)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_recipients;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_termCount;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * j);
        PBDataWriterPlaceMark();
        [v15 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMIntelligencePlatformMessageTerms;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_63;
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
        LOBYTE(v43[0]) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v43[0] & 0x7F) << v9;
        if ((v43[0] & 0x80) == 0)
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
      if ((v16 >> 3) > 4)
      {
        if (v17 > 6)
        {
          if (v17 == 7)
          {
            v32 = PBReaderReadString();
            if (!v32)
            {
              goto LABEL_65;
            }

            v21 = v32;
            [v6 addObject:v32];
LABEL_51:

            goto LABEL_60;
          }

          if (v17 == 8)
          {
            v43[0] = 0;
            v43[1] = 0;
            if (!PBReaderPlaceMark() || (v20 = [[BMIntelligencePlatformMessageTermsTermCount alloc] initByReadFrom:fromCopy]) == 0)
            {
LABEL_65:

              goto LABEL_62;
            }

            v21 = v20;
            [v7 addObject:v20];
            PBReaderRecallMark();
            goto LABEL_51;
          }
        }

        else
        {
          if (v17 == 5)
          {
            v5->_hasRaw_timestamp = 1;
            v43[0] = 0;
            v29 = [fromCopy position] + 8;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 8, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v43 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            *&v5->_raw_timestamp = v43[0];
            goto LABEL_60;
          }

          if (v17 == 6)
          {
            v18 = PBReaderReadString();
            v19 = 72;
            goto LABEL_48;
          }
        }
      }

      else if (v17 > 2)
      {
        if (v17 == 3)
        {
          v18 = PBReaderReadString();
          v19 = 56;
          goto LABEL_48;
        }

        if (v17 == 4)
        {
          v18 = PBReaderReadString();
          v19 = 64;
          goto LABEL_48;
        }
      }

      else
      {
        if (v17 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v5->_hasProtoVersion = 1;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v25 = [fromCopy position] + 1;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v24 |= (v43[0] & 0x7F) << v22;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v15 = v23++ >= 9;
            if (v15)
            {
              v28 = 0;
              goto LABEL_57;
            }
          }

          if ([fromCopy hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_57:
          v5->_protoVersion = v28;
          goto LABEL_60;
        }

        if (v17 == 2)
        {
          v18 = PBReaderReadString();
          v19 = 48;
LABEL_48:
          v31 = *(&v5->super.super.isa + v19);
          *(&v5->super.super.isa + v19) = v18;

          goto LABEL_60;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_60:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v35 = [v6 copy];
  recipients = v5->_recipients;
  v5->_recipients = v35;

  v37 = [v7 copy];
  termCount = v5->_termCount;
  v5->_termCount = v37;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_62:
    v40 = 0;
  }

  else
  {
LABEL_63:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformMessageTerms protoVersion](self, "protoVersion")}];
  bundleID = [(BMIntelligencePlatformMessageTerms *)self bundleID];
  domain = [(BMIntelligencePlatformMessageTerms *)self domain];
  spotlightIdentifier = [(BMIntelligencePlatformMessageTerms *)self spotlightIdentifier];
  timestamp = [(BMIntelligencePlatformMessageTerms *)self timestamp];
  sender = [(BMIntelligencePlatformMessageTerms *)self sender];
  recipients = [(BMIntelligencePlatformMessageTerms *)self recipients];
  termCount = [(BMIntelligencePlatformMessageTerms *)self termCount];
  v12 = [v3 initWithFormat:@"BMIntelligencePlatformMessageTerms with protoVersion: %@, bundleID: %@, domain: %@, spotlightIdentifier: %@, timestamp: %@, sender: %@, recipients: %@, termCount: %@", v4, bundleID, domain, spotlightIdentifier, timestamp, sender, recipients, termCount];

  return v12;
}

- (BMIntelligencePlatformMessageTerms)initWithProtoVersion:(id)version bundleID:(id)d domain:(id)domain spotlightIdentifier:(id)identifier timestamp:(id)timestamp sender:(id)sender recipients:(id)recipients termCount:(id)self0
{
  versionCopy = version;
  dCopy = d;
  domainCopy = domain;
  identifierCopy = identifier;
  timestampCopy = timestamp;
  senderCopy = sender;
  recipientsCopy = recipients;
  countCopy = count;
  v28.receiver = self;
  v28.super_class = BMIntelligencePlatformMessageTerms;
  v19 = [(BMEventBase *)&v28 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (versionCopy)
    {
      v19->_hasProtoVersion = 1;
      intValue = [versionCopy intValue];
    }

    else
    {
      v19->_hasProtoVersion = 0;
      intValue = -1;
    }

    v19->_protoVersion = intValue;
    objc_storeStrong(&v19->_bundleID, d);
    objc_storeStrong(&v19->_domain, domain);
    objc_storeStrong(&v19->_spotlightIdentifier, identifier);
    if (timestampCopy)
    {
      v19->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v19->_hasRaw_timestamp = 0;
      v21 = -1.0;
    }

    v19->_raw_timestamp = v21;
    objc_storeStrong(&v19->_sender, sender);
    objc_storeStrong(&v19->_recipients, recipients);
    objc_storeStrong(&v19->_termCount, count);
  }

  return v19;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"protoVersion" number:1 type:2 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spotlightIdentifier" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:5 type:0 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sender" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recipients" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"termCount" number:8 type:14 subMessageClass:objc_opt_class()];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

id __45__BMIntelligencePlatformMessageTerms_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _termCountJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMIntelligencePlatformMessageTerms_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _recipientsJSONArray];
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

    v8 = [[BMIntelligencePlatformMessageTerms alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end