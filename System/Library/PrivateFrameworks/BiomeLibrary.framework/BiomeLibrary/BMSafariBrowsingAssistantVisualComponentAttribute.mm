@interface BMSafariBrowsingAssistantVisualComponentAttribute
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantVisualComponentAttribute)initWithComponentType:(int)type cardType:(int)cardType entityType:(int)entityType readerViewSectionType:(int)sectionType sparkleTrigger:(id)trigger;
- (BMSafariBrowsingAssistantVisualComponentAttribute)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_sparkleTriggerJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantVisualComponentAttribute

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    componentType = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self componentType];
    if (componentType == [v5 componentType] && (v7 = -[BMSafariBrowsingAssistantVisualComponentAttribute cardType](self, "cardType"), v7 == objc_msgSend(v5, "cardType")) && (v8 = -[BMSafariBrowsingAssistantVisualComponentAttribute entityType](self, "entityType"), v8 == objc_msgSend(v5, "entityType")) && (v9 = -[BMSafariBrowsingAssistantVisualComponentAttribute readerViewSectionType](self, "readerViewSectionType"), v9 == objc_msgSend(v5, "readerViewSectionType")))
    {
      sparkleTrigger = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self sparkleTrigger];
      sparkleTrigger2 = [v5 sparkleTrigger];
      if (sparkleTrigger == sparkleTrigger2)
      {
        v14 = 1;
      }

      else
      {
        sparkleTrigger3 = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self sparkleTrigger];
        sparkleTrigger4 = [v5 sparkleTrigger];
        v14 = [sparkleTrigger3 isEqual:sparkleTrigger4];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)jsonDictionary
{
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantVisualComponentAttribute componentType](self, "componentType")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantVisualComponentAttribute cardType](self, "cardType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantVisualComponentAttribute entityType](self, "entityType")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantVisualComponentAttribute readerViewSectionType](self, "readerViewSectionType")}];
  _sparkleTriggerJSONArray = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self _sparkleTriggerJSONArray];
  v17 = @"componentType";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15 = null;
  v22[0] = null;
  v18 = @"cardType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null2;
  v19 = @"entityType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = null3;
  v20 = @"readerViewSectionType";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null4;
  v21 = @"sparkleTrigger";
  null5 = _sparkleTriggerJSONArray;
  if (!_sparkleTriggerJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v17 count:{5, v15}];
  if (_sparkleTriggerJSONArray)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:

  return v13;
}

- (id)_sparkleTriggerJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sparkleTrigger = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self sparkleTrigger];
  v5 = [sparkleTrigger countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(sparkleTrigger);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [sparkleTrigger countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSafariBrowsingAssistantVisualComponentAttribute)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v96[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"componentType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"cardType"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            v38 = 0;
            goto LABEL_63;
          }

          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = v10;
          v53 = *MEMORY[0x1E698F240];
          v93 = *MEMORY[0x1E696A578];
          v54 = p_isa;
          v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"cardType"];
          v94 = v77;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v56 = v53;
          v10 = v52;
          v75 = v55;
          v38 = 0;
          p_isa = 0;
          *v54 = [v51 initWithDomain:v56 code:2 userInfo:?];
          goto LABEL_62;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantCardTypeFromString(v10)];
      }

      v76 = v11;
    }

    else
    {
      v76 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"entityType"];
    v74 = p_isa;
    v75 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            v77 = 0;
            goto LABEL_61;
          }

          v57 = v10;
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = *MEMORY[0x1E698F240];
          v91 = *MEMORY[0x1E696A578];
          v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"entityType"];
          v92 = v60;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
          v61 = v58;
          v10 = v57;
          v29 = v60;
          v62 = [v61 initWithDomain:v59 code:2 userInfo:v16];
          v77 = 0;
          p_isa = 0;
          *v74 = v62;
LABEL_60:

LABEL_61:
          v38 = v76;
LABEL_62:

          goto LABEL_63;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantEntityTypeFromString(v13)];
      }

      v77 = v14;
    }

    else
    {
      v77 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"readerViewSectionType"];
    v72 = v15;
    v73 = v10;
    if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            v29 = 0;
            goto LABEL_60;
          }

          v63 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = p_isa;
          v65 = *MEMORY[0x1E698F240];
          v89 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"readerViewSectionType"];
          v90 = v18;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
          v66 = [v63 initWithDomain:v65 code:2 userInfo:v21];
          p_isa = 0;
          *v64 = v66;
          v29 = 0;
          goto LABEL_58;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantReaderViewSectionTypeFromString(v16)];
      }

      v71 = v17;
    }

    else
    {
      v71 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"sparkleTrigger"];
    null = [MEMORY[0x1E695DFB0] null];
    v20 = [v18 isEqual:null];

    if (v20)
    {
      v67 = v8;
      v68 = v7;
      selfCopy2 = self;
      v70 = dictionaryCopy;

      v18 = 0;
    }

    else
    {
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v74)
          {
            p_isa = 0;
            v29 = v71;
            v16 = v72;
            goto LABEL_59;
          }

          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = v7;
          v42 = *MEMORY[0x1E698F240];
          v87 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"sparkleTrigger"];
          v88 = v21;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          v44 = v42;
          v7 = v41;
          *v74 = [v40 initWithDomain:v44 code:2 userInfo:v43];

          p_isa = 0;
          v29 = v71;
          v16 = v72;
LABEL_58:

LABEL_59:
          v10 = v73;
          goto LABEL_60;
        }
      }

      v67 = v8;
      v68 = v7;
      selfCopy2 = self;
      v70 = dictionaryCopy;
    }

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v18 = v18;
    v22 = [v18 countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v79;
LABEL_40:
      v25 = 0;
      while (1)
      {
        if (*v79 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v78 + 1) + 8 * v25);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            self = selfCopy2;
            dictionaryCopy = v70;
            v29 = v71;
            if (v74)
            {
              v36 = objc_alloc(MEMORY[0x1E696ABC0]);
              v37 = *MEMORY[0x1E698F240];
              v82 = *MEMORY[0x1E696A578];
              v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"sparkleTrigger"];
              v83 = v32;
              v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
              v34 = v36;
              v35 = v37;
LABEL_55:
              *v74 = [v34 initWithDomain:v35 code:2 userInfo:v33];
            }

            goto LABEL_56;
          }

          v27 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantSparkleTriggerFromString(v26)];
        }

        v28 = v27;
        [v21 addObject:v27];

        if (v23 == ++v25)
        {
          v23 = [v18 countByEnumeratingWithState:&v78 objects:v86 count:16];
          if (v23)
          {
            goto LABEL_40;
          }

          goto LABEL_50;
        }
      }

      self = selfCopy2;
      dictionaryCopy = v70;
      v29 = v71;
      if (v74)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"sparkleTrigger"];
        v85 = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v34 = v30;
        v35 = v31;
        goto LABEL_55;
      }

LABEL_56:

      p_isa = 0;
      v8 = v67;
      v7 = v68;
      goto LABEL_57;
    }

LABEL_50:

    v8 = v67;
    v29 = v71;
    self = -[BMSafariBrowsingAssistantVisualComponentAttribute initWithComponentType:cardType:entityType:readerViewSectionType:sparkleTrigger:](selfCopy2, "initWithComponentType:cardType:entityType:readerViewSectionType:sparkleTrigger:", [v67 intValue], objc_msgSend(v76, "intValue"), objc_msgSend(v77, "intValue"), objc_msgSend(v71, "intValue"), v21);
    p_isa = &self->super.super.isa;
    dictionaryCopy = v70;
    v7 = v68;
LABEL_57:
    v16 = v72;
    goto LABEL_58;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantComponentTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!p_isa)
  {
    v8 = 0;
    goto LABEL_64;
  }

  v45 = objc_alloc(MEMORY[0x1E696ABC0]);
  v46 = *MEMORY[0x1E698F240];
  v95 = *MEMORY[0x1E696A578];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"componentType"];
  v96[0] = v38;
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
  v48 = v46;
  v10 = v47;
  v49 = [v45 initWithDomain:v48 code:2 userInfo:v47];
  v8 = 0;
  v50 = p_isa;
  p_isa = 0;
  *v50 = v49;
LABEL_63:

LABEL_64:
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantVisualComponentAttribute *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_sparkleTrigger;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v55.receiver = self;
  v55.super_class = BMSafariBrowsingAssistantVisualComponentAttribute;
  v5 = [(BMEventBase *)&v55 init];
  if (!v5)
  {
    goto LABEL_96;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_94;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v56 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v56 & 0x7F) << v8;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_94;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 == 3)
      {
        v29 = 0;
        v30 = 0;
        v19 = 0;
        while (1)
        {
          v56 = 0;
          v31 = [fromCopy position] + 1;
          if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (v56 & 0x7F) << v29;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v23 = v30++ > 8;
          if (v23)
          {
            goto LABEL_73;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v19 > 4)
        {
LABEL_73:
          LODWORD(v19) = 0;
        }

        v46 = 28;
        goto LABEL_92;
      }

      if (v16 != 5)
      {
        if (v16 == 4)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            v56 = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v56 & 0x7F) << v17;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v23 = v18++ > 8;
            if (v23)
            {
              goto LABEL_86;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 2)
          {
LABEL_86:
            LODWORD(v19) = 0;
          }

          v46 = 32;
LABEL_92:
          *(&v5->super.super.isa + v46) = v19;
          goto LABEL_93;
        }

        goto LABEL_69;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = MEMORY[0x1E696AD98];
      while (1)
      {
        v56 = 0;
        v38 = [fromCopy position] + 1;
        if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v36 |= (v56 & 0x7F) << v34;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v23 = v35++ > 8;
        if (v23)
        {
          goto LABEL_77;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v36 > 5)
      {
LABEL_77:
        v36 = 0;
      }

      v47 = [v37 numberWithUnsignedInt:v36];
      if (!v47)
      {
LABEL_98:

        goto LABEL_95;
      }

      v48 = v47;
      [v6 addObject:v47];

LABEL_93:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_94;
      }
    }

    if (v16 == 1)
    {
      v41 = 0;
      v42 = 0;
      v19 = 0;
      while (1)
      {
        v56 = 0;
        v43 = [fromCopy position] + 1;
        if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v19 |= (v56 & 0x7F) << v41;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v41 += 7;
        v23 = v42++ > 8;
        if (v23)
        {
          goto LABEL_82;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v19 > 3)
      {
LABEL_82:
        LODWORD(v19) = 0;
      }

      v46 = 20;
      goto LABEL_92;
    }

    if (v16 == 2)
    {
      v24 = 0;
      v25 = 0;
      v19 = 0;
      while (1)
      {
        v56 = 0;
        v26 = [fromCopy position] + 1;
        if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v19 |= (v56 & 0x7F) << v24;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v23 = v25++ > 8;
        if (v23)
        {
          goto LABEL_90;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v19 > 2)
      {
LABEL_90:
        LODWORD(v19) = 0;
      }

      v46 = 24;
      goto LABEL_92;
    }

LABEL_69:
    if (!PBReaderSkipValueWithTag())
    {
      goto LABEL_98;
    }

    goto LABEL_93;
  }

LABEL_94:
  v50 = [v6 copy];
  sparkleTrigger = v5->_sparkleTrigger;
  v5->_sparkleTrigger = v50;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_95:
    v53 = 0;
  }

  else
  {
LABEL_96:
    v53 = v5;
  }

  return v53;
}

- (NSString)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  sparkleTrigger = [(BMSafariBrowsingAssistantVisualComponentAttribute *)self sparkleTrigger];
  v5 = [sparkleTrigger countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(sparkleTrigger);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMSafariBrowsingAssistantSparkleTriggerAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [sparkleTrigger countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = BMSafariBrowsingAssistantComponentTypeAsString([(BMSafariBrowsingAssistantVisualComponentAttribute *)self componentType]);
  v13 = BMSafariBrowsingAssistantCardTypeAsString([(BMSafariBrowsingAssistantVisualComponentAttribute *)self cardType]);
  v14 = BMSafariBrowsingAssistantEntityTypeAsString([(BMSafariBrowsingAssistantVisualComponentAttribute *)self entityType]);
  v15 = BMSafariBrowsingAssistantReaderViewSectionTypeAsString([(BMSafariBrowsingAssistantVisualComponentAttribute *)self readerViewSectionType]);
  v16 = [v11 initWithFormat:@"BMSafariBrowsingAssistantVisualComponentAttribute with componentType: %@, cardType: %@, entityType: %@, readerViewSectionType: %@, sparkleTrigger: %@", v12, v13, v14, v15, v3];

  return v16;
}

- (BMSafariBrowsingAssistantVisualComponentAttribute)initWithComponentType:(int)type cardType:(int)cardType entityType:(int)entityType readerViewSectionType:(int)sectionType sparkleTrigger:(id)trigger
{
  triggerCopy = trigger;
  v16.receiver = self;
  v16.super_class = BMSafariBrowsingAssistantVisualComponentAttribute;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    v14->_componentType = type;
    v14->_cardType = cardType;
    v14->_entityType = entityType;
    v14->_readerViewSectionType = sectionType;
    objc_storeStrong(&v14->_sparkleTrigger, trigger);
  }

  return v14;
}

+ (id)protoFields
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"componentType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cardType" number:2 type:4 subMessageClass:{0, v2}];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entityType" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"readerViewSectionType" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sparkleTrigger" number:5 type:4 subMessageClass:0];
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)columns
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"componentType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cardType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entityType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"readerViewSectionType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"sparkleTrigger_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_582];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

id __60__BMSafariBrowsingAssistantVisualComponentAttribute_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _sparkleTriggerJSONArray];
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

    v8 = [[BMSafariBrowsingAssistantVisualComponentAttribute alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end