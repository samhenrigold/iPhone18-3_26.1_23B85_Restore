@interface BMIntelligencePlatformFeatureStoreFeatureValue
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligencePlatformFeatureStoreFeatureValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMIntelligencePlatformFeatureStoreFeatureValue)initWithValue_sequence:(id)value_sequence value_sequence_shape:(id)value_sequence_shape value_dictionary:(id)value_dictionary value:(id)value;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_value_dictionaryJSONArray;
- (id)_value_sequenceJSONArray;
- (id)_value_sequence_shapeJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligencePlatformFeatureStoreFeatureValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    value_sequence = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence];
    value_sequence2 = [v5 value_sequence];
    v8 = value_sequence2;
    if (value_sequence == value_sequence2)
    {
    }

    else
    {
      value_sequence3 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence];
      value_sequence4 = [v5 value_sequence];
      v11 = [value_sequence3 isEqual:value_sequence4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    value_sequence_shape = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence_shape];
    value_sequence_shape2 = [v5 value_sequence_shape];
    v15 = value_sequence_shape2;
    if (value_sequence_shape == value_sequence_shape2)
    {
    }

    else
    {
      value_sequence_shape3 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence_shape];
      value_sequence_shape4 = [v5 value_sequence_shape];
      v18 = [value_sequence_shape3 isEqual:value_sequence_shape4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    value_dictionary = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_dictionary];
    value_dictionary2 = [v5 value_dictionary];
    v21 = value_dictionary2;
    if (value_dictionary == value_dictionary2)
    {
    }

    else
    {
      value_dictionary3 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_dictionary];
      value_dictionary4 = [v5 value_dictionary];
      v24 = [value_dictionary3 isEqual:value_dictionary4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    value = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value];
    value2 = [v5 value];
    if (value == value2)
    {
      v12 = 1;
    }

    else
    {
      value3 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value];
      value4 = [v5 value];
      v12 = [value3 isEqual:value4];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  _value_sequenceJSONArray = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self _value_sequenceJSONArray];
  _value_sequence_shapeJSONArray = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self _value_sequence_shapeJSONArray];
  _value_dictionaryJSONArray = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self _value_dictionaryJSONArray];
  value = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value];
  jsonDictionary = [value jsonDictionary];

  v14[0] = @"value_sequence";
  null = _value_sequenceJSONArray;
  if (!_value_sequenceJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"value_sequence_shape";
  null2 = _value_sequence_shapeJSONArray;
  if (!_value_sequence_shapeJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"value_dictionary";
  null3 = _value_dictionaryJSONArray;
  if (!_value_dictionaryJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"value";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (jsonDictionary)
  {
    if (_value_dictionaryJSONArray)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (_value_dictionaryJSONArray)
    {
LABEL_11:
      if (_value_sequence_shapeJSONArray)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (_value_sequenceJSONArray)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!_value_sequence_shapeJSONArray)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (_value_sequenceJSONArray)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:

  return v12;
}

- (id)_value_dictionaryJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  value_dictionary = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_dictionary];
  v5 = [value_dictionary countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(value_dictionary);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [value_dictionary countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_value_sequence_shapeJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  value_sequence_shape = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence_shape];
  v5 = [value_sequence_shape countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(value_sequence_shape);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [value_sequence_shape countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_value_sequenceJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  value_sequence = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence];
  v5 = [value_sequence countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(value_sequence);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [value_sequence countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMIntelligencePlatformFeatureStoreFeatureValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v117[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"value_sequence"];
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
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v116 = *MEMORY[0x1E696A578];
          v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"value_sequence"];
          v117[0] = v79;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:&v116 count:1];
          v28 = 0;
          *error = [v37 initWithDomain:v38 code:2 userInfo:v18];
          goto LABEL_83;
        }

        v28 = 0;
        goto LABEL_84;
      }
    }

    selfCopy2 = self;
  }

  v79 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v6 = v6;
  v9 = [v6 countByEnumeratingWithState:&v91 objects:v115 count:16];
  v78 = dictionaryCopy;
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v92;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v92 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v91 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v22 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v113 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"value_sequence"];
          v114 = v14;
          v24 = MEMORY[0x1E695DF20];
          v25 = &v114;
          v26 = &v113;
          goto LABEL_22;
        }

LABEL_42:
        v28 = 0;
        v18 = v6;
        dictionaryCopy = v78;
        self = selfCopy2;
        goto LABEL_83;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (!error)
        {
          goto LABEL_42;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v111 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value_sequence"];
        v112 = v14;
        v24 = MEMORY[0x1E695DF20];
        v25 = &v112;
        v26 = &v111;
LABEL_22:
        v27 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
        v28 = 0;
        *errorCopy2 = [v22 initWithDomain:v23 code:2 userInfo:v27];
LABEL_26:
        v18 = v6;
        goto LABEL_80;
      }

      v14 = v13;
      v15 = [BMIntelligencePlatformFeatureStoreFeatureValueBasicValue alloc];
      v90 = 0;
      v16 = [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)v15 initWithJSONDictionary:v14 error:&v90];
      v17 = v90;
      if (v17)
      {
        v27 = v17;
        if (error)
        {
          v29 = v17;
          *error = v27;
        }

        v28 = 0;
        goto LABEL_26;
      }

      [v79 addObject:v16];
    }

    v10 = [v6 countByEnumeratingWithState:&v91 objects:v115 count:16];
    dictionaryCopy = v78;
  }

  while (v10);
LABEL_16:

  v18 = [dictionaryCopy objectForKeyedSubscript:@"value_sequence_shape"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:null2];

  if (v20)
  {

    v18 = 0;
    goto LABEL_29;
  }

  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_29:
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v18 = v18;
    v30 = [v18 countByEnumeratingWithState:&v86 objects:v108 count:16];
    if (!v30)
    {
LABEL_38:

      v27 = [v78 objectForKeyedSubscript:@"value_dictionary"];
      null3 = [MEMORY[0x1E695DFB0] null];
      v36 = [v27 isEqual:null3];

      if (v36)
      {

        v27 = 0;
      }

      else if (v27)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v67 = objc_alloc(MEMORY[0x1E696ABC0]);
            v68 = *MEMORY[0x1E698F240];
            v102 = *MEMORY[0x1E696A578];
            v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"value_dictionary"];
            v103 = v75;
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
            v28 = 0;
            *error = [v67 initWithDomain:v68 code:2 userInfo:v45];
            goto LABEL_79;
          }

          v28 = 0;
          goto LABEL_80;
        }
      }

      v75 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v27, "count")}];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v27 = v27;
      v46 = [v27 countByEnumeratingWithState:&v82 objects:v101 count:16];
      if (!v46)
      {
        goto LABEL_62;
      }

      v47 = v46;
      v73 = *v83;
LABEL_54:
      v48 = 0;
      while (1)
      {
        if (*v83 != v73)
        {
          objc_enumerationMutation(v27);
        }

        v49 = *(*(&v82 + 1) + 8 * v48);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy4 = error;
          if (error)
          {
            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = *MEMORY[0x1E698F240];
            v97 = *MEMORY[0x1E696A578];
            v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value_dictionary"];
            v98 = v50;
            v60 = MEMORY[0x1E695DF20];
            v61 = &v98;
            v62 = &v97;
            goto LABEL_73;
          }

          goto LABEL_87;
        }

        v50 = v49;
        v51 = [BMIntelligencePlatformFeatureStoreFeatureValueNamedValue alloc];
        v81 = 0;
        v52 = [(BMIntelligencePlatformFeatureStoreFeatureValueNamedValue *)v51 initWithJSONDictionary:v50 error:&v81];
        v53 = v81;
        if (v53)
        {
          v64 = v53;
          if (error)
          {
            v65 = v53;
            *error = v64;
          }

          goto LABEL_77;
        }

        [v75 addObject:v52];

        if (v47 == ++v48)
        {
          v47 = [v27 countByEnumeratingWithState:&v82 objects:v101 count:16];
          if (v47)
          {
            goto LABEL_54;
          }

LABEL_62:

          v45 = [v78 objectForKeyedSubscript:@"value"];
          if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v50 = 0;
            goto LABEL_65;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v69 = v45;
            v80 = 0;
            v50 = [[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue alloc] initWithJSONDictionary:v69 error:&v80];
            v70 = v80;
            if (v70)
            {
              if (error)
              {
                v70 = v70;
                *error = v70;
              }

              v28 = 0;
              v45 = v69;
            }

            else
            {

LABEL_65:
              v28 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)selfCopy2 initWithValue_sequence:v79 value_sequence_shape:v14 value_dictionary:v75 value:v50];
              selfCopy2 = v28;
            }

LABEL_78:
          }

          else
          {
            if (error)
            {
              v74 = objc_alloc(MEMORY[0x1E696ABC0]);
              v71 = *MEMORY[0x1E698F240];
              v95 = *MEMORY[0x1E696A578];
              v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value"];
              v96 = v50;
              v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              *error = [v74 initWithDomain:v71 code:2 userInfo:v72];

              v28 = 0;
              goto LABEL_78;
            }

            v28 = 0;
          }

LABEL_79:

LABEL_80:
          self = selfCopy2;
LABEL_81:

          goto LABEL_82;
        }
      }

      errorCopy4 = error;
      if (error)
      {
        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v59 = *MEMORY[0x1E698F240];
        v99 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"value_dictionary"];
        v100 = v50;
        v60 = MEMORY[0x1E695DF20];
        v61 = &v100;
        v62 = &v99;
LABEL_73:
        v63 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:1];
        *errorCopy4 = [v58 initWithDomain:v59 code:2 userInfo:v63];

LABEL_77:
        v28 = 0;
        v45 = v27;
        goto LABEL_78;
      }

LABEL_87:
      v28 = 0;
      v45 = v27;
      goto LABEL_79;
    }

    v31 = v30;
    v32 = *v87;
LABEL_31:
    v33 = 0;
    while (1)
    {
      if (*v87 != v32)
      {
        objc_enumerationMutation(v18);
      }

      v34 = *(*(&v86 + 1) + 8 * v33);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy6 = error;
        if (error)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v104 = *MEMORY[0x1E696A578];
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"value_sequence_shape"];
          v105 = v75;
          v42 = MEMORY[0x1E695DF20];
          v43 = &v105;
          v44 = &v104;
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      [v14 addObject:v34];
      if (v31 == ++v33)
      {
        v31 = [v18 countByEnumeratingWithState:&v86 objects:v108 count:16];
        if (!v31)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }
    }

    errorCopy6 = error;
    if (error)
    {
      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E698F240];
      v106 = *MEMORY[0x1E696A578];
      v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"value_sequence_shape"];
      v107 = v75;
      v42 = MEMORY[0x1E695DF20];
      v43 = &v107;
      v44 = &v106;
LABEL_47:
      v45 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
      v28 = 0;
      *errorCopy6 = [v40 initWithDomain:v41 code:2 userInfo:v45];
      v27 = v18;
      goto LABEL_79;
    }

LABEL_48:
    v28 = 0;
    v27 = v18;
    goto LABEL_80;
  }

  self = selfCopy2;
  if (error)
  {
    v54 = objc_alloc(MEMORY[0x1E696ABC0]);
    v55 = *MEMORY[0x1E698F240];
    v109 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"value_sequence_shape"];
    v110 = v14;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v56 = [v54 initWithDomain:v55 code:2 userInfo:v27];
    v28 = 0;
    *error = v56;
    goto LABEL_81;
  }

  v28 = 0;
LABEL_82:
  dictionaryCopy = v78;
LABEL_83:

LABEL_84:
  return v28;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformFeatureStoreFeatureValue *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v38 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = self->_value_sequence;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v30 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = self->_value_sequence_shape;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v26 + 1) + 8 * v15) intValue];
        PBDataWriterWriteInt32Field();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = self->_value_dictionary;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v22 + 1) + 8 * v20);
        v30 = 0;
        PBDataWriterPlaceMark();
        [v21 writeTo:{toCopy, v22}];
        PBDataWriterRecallMark();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v35 count:16];
    }

    while (v18);
  }

  if (self->_value)
  {
    v30 = 0;
    PBDataWriterPlaceMark();
    [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self->_value writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v49.receiver = self;
  v49.super_class = BMIntelligencePlatformFeatureStoreFeatureValue;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    v10 = off_1E6E85000;
    v48 = v8;
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_52;
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        LOBYTE(v50) = 0;
        v14 = [fromCopy position] + 1;
        if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v13 |= (v50 & 0x7F) << v11;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v11 += 7;
        v17 = v12++ >= 9;
        if (v17)
        {
          v18 = 0;
          goto LABEL_17;
        }
      }

      v18 = [fromCopy hasError] ? 0 : v13;
LABEL_17:
      if (([fromCopy hasError] & 1) != 0 || (v18 & 7) == 4)
      {
        goto LABEL_52;
      }

      v19 = v18 >> 3;
      if ((v18 >> 3) <= 2)
      {
        break;
      }

      if (v19 == 3)
      {
        v50 = 0;
        v51 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_54;
        }

        v36 = [[BMIntelligencePlatformFeatureStoreFeatureValueNamedValue alloc] initByReadFrom:fromCopy];
        if (!v36)
        {
          goto LABEL_54;
        }

        v34 = v36;
        v35 = v8;
LABEL_44:
        [v35 addObject:v34];
        PBReaderRecallMark();
LABEL_50:

        goto LABEL_51;
      }

      if (v19 != 4)
      {
        goto LABEL_36;
      }

      v50 = 0;
      v51 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_54;
      }

      v31 = [objc_alloc(v10[116]) initByReadFrom:fromCopy];
      if (!v31)
      {
        goto LABEL_54;
      }

      value = v5->_value;
      v5->_value = v31;

      PBReaderRecallMark();
LABEL_51:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_52;
      }
    }

    if (v19 == 1)
    {
      v50 = 0;
      v51 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_54;
      }

      v33 = [objc_alloc(v10[116]) initByReadFrom:fromCopy];
      if (!v33)
      {
        goto LABEL_54;
      }

      v34 = v33;
      v35 = v6;
      goto LABEL_44;
    }

    if (v19 == 2)
    {
      v20 = v7;
      v21 = v6;
      v22 = v10;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = MEMORY[0x1E696AD98];
      while (1)
      {
        LOBYTE(v50) = 0;
        v27 = [fromCopy position] + 1;
        if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v25 |= (v50 & 0x7F) << v23;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v17 = v24++ >= 9;
        if (v17)
        {
          v30 = 0;
          goto LABEL_48;
        }
      }

      if ([fromCopy hasError])
      {
        v30 = 0;
      }

      else
      {
        v30 = v25;
      }

LABEL_48:
      v37 = [v26 numberWithInt:v30];
      v10 = v22;
      v6 = v21;
      v7 = v20;
      v8 = v48;
      if (!v37)
      {
LABEL_54:

        goto LABEL_55;
      }

      v34 = v37;
      [v7 addObject:v37];
      goto LABEL_50;
    }

LABEL_36:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_52:
  v39 = [v6 copy];
  value_sequence = v5->_value_sequence;
  v5->_value_sequence = v39;

  v41 = [v7 copy];
  value_sequence_shape = v5->_value_sequence_shape;
  v5->_value_sequence_shape = v41;

  v43 = [v8 copy];
  value_dictionary = v5->_value_dictionary;
  v5->_value_dictionary = v43;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_55:
    v46 = 0;
  }

  else
  {
LABEL_53:
    v46 = v5;
  }

  return v46;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  value_sequence = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence];
  value_sequence_shape = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence_shape];
  value_dictionary = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_dictionary];
  value = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value];
  v8 = [v3 initWithFormat:@"BMIntelligencePlatformFeatureStoreFeatureValue with value_sequence: %@, value_sequence_shape: %@, value_dictionary: %@, value: %@", value_sequence, value_sequence_shape, value_dictionary, value];

  return v8;
}

- (BMIntelligencePlatformFeatureStoreFeatureValue)initWithValue_sequence:(id)value_sequence value_sequence_shape:(id)value_sequence_shape value_dictionary:(id)value_dictionary value:(id)value
{
  value_sequenceCopy = value_sequence;
  value_sequence_shapeCopy = value_sequence_shape;
  value_dictionaryCopy = value_dictionary;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = BMIntelligencePlatformFeatureStoreFeatureValue;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_value_sequence, value_sequence);
    objc_storeStrong(&v15->_value_sequence_shape, value_sequence_shape);
    objc_storeStrong(&v15->_value_dictionary, value_dictionary);
    objc_storeStrong(&v15->_value, value);
  }

  return v15;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value_sequence" number:1 type:14 subMessageClass:objc_opt_class()];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value_sequence_shape" number:2 type:2 subMessageClass:0];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value_dictionary" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:4 type:14 subMessageClass:objc_opt_class()];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_sequence_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_226];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_sequence_shape_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_228];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_dictionary_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_230];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_232];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

id __57__BMIntelligencePlatformFeatureStoreFeatureValue_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 value];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __57__BMIntelligencePlatformFeatureStoreFeatureValue_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _value_dictionaryJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __57__BMIntelligencePlatformFeatureStoreFeatureValue_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _value_sequence_shapeJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __57__BMIntelligencePlatformFeatureStoreFeatureValue_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _value_sequenceJSONArray];
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

    v8 = [[BMIntelligencePlatformFeatureStoreFeatureValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end