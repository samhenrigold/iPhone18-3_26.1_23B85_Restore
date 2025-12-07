@interface BMSpanEventSubEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSpanEventSubEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSpanEventSubEvent)initWithName:(id)name privatizedTimeStamp:(id)stamp details:(id)details attributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_attributesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSpanEventSubEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(BMSpanEventSubEvent *)self name];
    name2 = [v5 name];
    v8 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMSpanEventSubEvent *)self name];
      name4 = [v5 name];
      v11 = [name3 isEqual:name4];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    if (-[BMSpanEventSubEvent hasPrivatizedTimeStamp](self, "hasPrivatizedTimeStamp") || [v5 hasPrivatizedTimeStamp])
    {
      if (![(BMSpanEventSubEvent *)self hasPrivatizedTimeStamp])
      {
        goto LABEL_14;
      }

      if (![v5 hasPrivatizedTimeStamp])
      {
        goto LABEL_14;
      }

      privatizedTimeStamp = [(BMSpanEventSubEvent *)self privatizedTimeStamp];
      if (privatizedTimeStamp != [v5 privatizedTimeStamp])
      {
        goto LABEL_14;
      }
    }

    details = [(BMSpanEventSubEvent *)self details];
    details2 = [v5 details];
    v16 = details2;
    if (details == details2)
    {
    }

    else
    {
      details3 = [(BMSpanEventSubEvent *)self details];
      details4 = [v5 details];
      v19 = [details3 isEqual:details4];

      if (!v19)
      {
LABEL_14:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    attributes = [(BMSpanEventSubEvent *)self attributes];
    attributes2 = [v5 attributes];
    if (attributes == attributes2)
    {
      v12 = 1;
    }

    else
    {
      attributes3 = [(BMSpanEventSubEvent *)self attributes];
      attributes4 = [v5 attributes];
      v12 = [attributes3 isEqual:attributes4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v14[4] = *MEMORY[0x1E69E9840];
  name = [(BMSpanEventSubEvent *)self name];
  if ([(BMSpanEventSubEvent *)self hasPrivatizedTimeStamp])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEventSubEvent privatizedTimeStamp](self, "privatizedTimeStamp")}];
  }

  else
  {
    v4 = 0;
  }

  details = [(BMSpanEventSubEvent *)self details];
  _attributesJSONArray = [(BMSpanEventSubEvent *)self _attributesJSONArray];
  v13[0] = @"name";
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"privatizedTimeStamp";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"details";
  null3 = details;
  if (!details)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v13[3] = @"attributes";
  null4 = _attributesJSONArray;
  if (!_attributesJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (_attributesJSONArray)
  {
    if (details)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (details)
    {
LABEL_14:
      if (v4)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (name)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (name)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:

  return v11;
}

- (id)_attributesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attributes = [(BMSpanEventSubEvent *)self attributes];
  v5 = [attributes countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(attributes);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [attributes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSpanEventSubEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v78[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v77 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v78[0] = v10;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
        v8 = 0;
        selfCopy3 = 0;
        *error = [v27 initWithDomain:v28 code:2 userInfo:v9];
        goto LABEL_52;
      }

      v8 = 0;
      selfCopy3 = 0;
      goto LABEL_53;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"privatizedTimeStamp"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        errorCopy = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"privatizedTimeStamp"];
        errorCopy2 = error;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v75 count:1];
        v33 = v29;
        v12 = v32;
        selfCopy3 = 0;
        *errorCopy = [v33 initWithDomain:v30 code:2 userInfo:v32];
        v10 = 0;
        goto LABEL_51;
      }

      v10 = 0;
      selfCopy3 = 0;
      goto LABEL_52;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"details"];
  v59 = v7;
  v60 = v10;
  v57 = v11;
  v58 = v9;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
        v36 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"details"];
        v74 = v13;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v37 = [v34 initWithDomain:v36 code:2 userInfo:v16];
        error = 0;
        selfCopy3 = 0;
        *errorCopy3 = v37;
LABEL_48:
        v10 = v60;
        goto LABEL_49;
      }

      selfCopy3 = 0;
      goto LABEL_51;
    }

    v56 = v12;
  }

  else
  {
    v56 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
  null = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 isEqual:null];

  if (v15)
  {
    errorCopy5 = error;
    v54 = v8;
    selfCopy2 = self;

    v13 = 0;
  }

  else
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v71 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"attributes"];
          v72 = v16;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
          v51 = v50 = error;
          *v50 = [v48 initWithDomain:v49 code:2 userInfo:v51];
          v10 = v60;

          selfCopy3 = 0;
          error = v56;
          goto LABEL_49;
        }

        selfCopy3 = 0;
        error = v56;
        goto LABEL_50;
      }
    }

    errorCopy5 = error;
    v54 = v8;
    selfCopy2 = self;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v13 = v13;
  v17 = [v13 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = *v63;
  v52 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v63 != v19)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v62 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionaryCopy = v52;
        v38 = errorCopy5;
        self = selfCopy2;
        error = v56;
        if (errorCopy5)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v68 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"attributes"];
          v69 = v22;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v69;
          v43 = &v68;
LABEL_42:
          v44 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:1];
          v45 = v39;
          error = v56;
          *v38 = [v45 initWithDomain:v40 code:2 userInfo:v44];
LABEL_46:
        }

LABEL_47:

        selfCopy3 = 0;
        v8 = v54;
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dictionaryCopy = v52;
        v38 = errorCopy5;
        self = selfCopy2;
        error = v56;
        if (errorCopy5)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v66 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"attributes"];
          v67 = v22;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v67;
          v43 = &v66;
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v22 = v21;
      v23 = [BMSpanEventAttribute alloc];
      v61 = 0;
      v24 = [(BMSpanEventAttribute *)v23 initWithJSONDictionary:v22 error:&v61];
      v25 = v61;
      if (v25)
      {
        v44 = v25;
        if (errorCopy5)
        {
          v46 = v25;
          *errorCopy5 = v44;
        }

        dictionaryCopy = v52;
        self = selfCopy2;
        error = v56;
        goto LABEL_46;
      }

      [v16 addObject:v24];
    }

    v18 = [v13 countByEnumeratingWithState:&v62 objects:v70 count:16];
    dictionaryCopy = v52;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v8 = v54;
  error = v56;
  self = [(BMSpanEventSubEvent *)selfCopy2 initWithName:v54 privatizedTimeStamp:v10 details:v56 attributes:v16];
  selfCopy3 = self;
LABEL_49:

LABEL_50:
  v9 = v58;
  v7 = v59;
  v12 = v57;
LABEL_51:

LABEL_52:
LABEL_53:

  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSpanEventSubEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPrivatizedTimeStamp)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_details)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_attributes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMSpanEventSubEvent;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_47;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_45;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v36[0] & 0x7F) << v8;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_45;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 == 3)
      {
        v26 = PBReaderReadString();
        v27 = 40;
        goto LABEL_39;
      }

      if (v16 != 4)
      {
        goto LABEL_35;
      }

      v36[0] = 0;
      v36[1] = 0;
      if (!PBReaderPlaceMark() || (v24 = [[BMSpanEventAttribute alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_49:

        goto LABEL_46;
      }

      v25 = v24;
      [v6 addObject:v24];
      PBReaderRecallMark();

LABEL_44:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_45;
      }
    }

    if (v16 == 1)
    {
      v26 = PBReaderReadString();
      v27 = 32;
LABEL_39:
      v28 = *(&v5->super.super.isa + v27);
      *(&v5->super.super.isa + v27) = v26;

      goto LABEL_44;
    }

    if (v16 == 2)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v5->_hasPrivatizedTimeStamp = 1;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v20 = [fromCopy position] + 1;
        if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v19 |= (v36[0] & 0x7F) << v17;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v14 = v18++ >= 9;
        if (v14)
        {
          v23 = 0;
          goto LABEL_43;
        }
      }

      if ([fromCopy hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_43:
      v5->_privatizedTimeStamp = v23;
      goto LABEL_44;
    }

LABEL_35:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_45:
  v30 = [v6 copy];
  attributes = v5->_attributes;
  v5->_attributes = v30;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_46:
    v33 = 0;
  }

  else
  {
LABEL_47:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [(BMSpanEventSubEvent *)self name];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEventSubEvent privatizedTimeStamp](self, "privatizedTimeStamp")}];
  details = [(BMSpanEventSubEvent *)self details];
  attributes = [(BMSpanEventSubEvent *)self attributes];
  v8 = [v3 initWithFormat:@"BMSpanEventSubEvent with name: %@, privatizedTimeStamp: %@, details: %@, attributes: %@", name, v5, details, attributes];

  return v8;
}

- (BMSpanEventSubEvent)initWithName:(id)name privatizedTimeStamp:(id)stamp details:(id)details attributes:(id)attributes
{
  nameCopy = name;
  stampCopy = stamp;
  detailsCopy = details;
  attributesCopy = attributes;
  v18.receiver = self;
  v18.super_class = BMSpanEventSubEvent;
  v15 = [(BMEventBase *)&v18 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_name, name);
    if (stampCopy)
    {
      v15->_hasPrivatizedTimeStamp = 1;
      unsignedIntValue = [stampCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v15->_hasPrivatizedTimeStamp = 0;
    }

    v15->_privatizedTimeStamp = unsignedIntValue;
    objc_storeStrong(&v15->_details, details);
    objc_storeStrong(&v15->_attributes, attributes);
  }

  return v15;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedTimeStamp" number:2 type:4 subMessageClass:0];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"details" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attributes" number:4 type:14 subMessageClass:objc_opt_class()];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedTimeStamp" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"details" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attributes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_241];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

id __30__BMSpanEventSubEvent_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _attributesJSONArray];
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

    v8 = [[BMSpanEventSubEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end