@interface CCSerializedSetItem
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCSerializedSetItem)initWithItemType:(id)type sharedIdentifier:(id)identifier localInstanceIdentifiers:(id)identifiers content:(id)content localMetaContent:(id)metaContent remoteDeviceIndices:(id)indices error:(id *)error;
- (CCSerializedSetItem)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSArray)localMetaContent;
- (NSData)content;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCSerializedSetItem

- (CCSerializedSetItem)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v101 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v97 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"itemType"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"sharedIdentifier"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"localInstanceIdentifiers"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v96 = v8;
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v13 & 1) == 0)
      {
        CCSetError();
        v23 = 0;
LABEL_68:

        v8 = v14;
        goto LABEL_69;
      }

      errorCopy = error;
      v73 = v10;
      v75 = v9;
      v77 = objc_opt_new();
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v92 objects:v100 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v93;
        while (2)
        {
          v19 = 0;
          v20 = v14;
          do
          {
            if (*v93 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v92 + 1) + 8 * v19);
            objc_opt_class();
            v91[1] = v20;
            v22 = CCValidateIsInstanceOfExpectedClass();
            v14 = v20;

            if (!v22)
            {
              CCSetError();

              v23 = 0;
              v12 = v15;
              v10 = v73;
              v9 = v75;
              goto LABEL_68;
            }

            [v77 appendInt64Value:{objc_msgSend(v21, "longLongValue")}];
            ++v19;
            v20 = v14;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v92 objects:v100 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v8 = v14;
      v10 = v73;
      v9 = v75;
      error = errorCopy;
    }

    else
    {
      v77 = 0;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91[0] = 0;
      v25 = [MEMORY[0x1E6993A00] contentMessageForItemType:objc_msgSend(v9 jsonDictionary:"unsignedIntValue") error:{v24, v91}];
      v26 = v91[0];
      v27 = v26;
      if (v25 && !v26)
      {
        data = [v25 data];

        v24 = data;
LABEL_23:

LABEL_24:
        v31 = [dictionaryCopy objectForKeyedSubscript:@"localMetaContent"];
        v74 = v10;
        if (v31)
        {
          v32 = v31;
          objc_opt_class();
          v89 = v8;
          v33 = CCValidateIsInstanceOfExpectedClass();
          v34 = v8;

          if ((v33 & 1) == 0)
          {
            CCSetError();
            v23 = 0;
            v54 = v32;
LABEL_66:

            v8 = v34;
            v10 = v74;
            goto LABEL_67;
          }

          v63 = v24;
          errorCopy2 = error;
          v69 = dictionaryCopy;
          v76 = v9;
          v35 = objc_opt_new();
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          obj = v32;
          v36 = [obj countByEnumeratingWithState:&v85 objects:v99 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v86;
            while (2)
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v86 != v38)
                {
                  objc_enumerationMutation(obj);
                }

                v40 = *(*(&v85 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v41 = MEMORY[0x1E6993A00];
                  unsignedIntValue = [v76 unsignedIntValue];
                  v84 = 0;
                  v43 = [v41 metaContentMessageForItemType:unsignedIntValue jsonDictionary:v40 error:&v84];
                  v44 = v84;
                  if (v43)
                  {
                    v45 = v44 == 0;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if (!v45)
                  {
                    v61 = v44;
                    CCSetError();

LABEL_63:
                    v23 = 0;
                    v54 = obj;
                    dictionaryCopy = v69;
                    v9 = v76;
                    v24 = v63;
                    goto LABEL_66;
                  }

                  data2 = [v43 data];
                  [v35 addObject:data2];
                }

                else
                {
                  objc_opt_class();
                  v83 = v34;
                  v47 = CCValidateIsInstanceOfExpectedClass();
                  v48 = v34;

                  if ((v47 & 1) == 0)
                  {
                    CCSetError();
                    v34 = v48;
                    goto LABEL_63;
                  }

                  [v35 addObject:v40];
                  v34 = v48;
                }
              }

              v37 = [obj countByEnumeratingWithState:&v85 objects:v99 count:16];
              if (v37)
              {
                continue;
              }

              break;
            }
          }

          v65 = v35;

          v8 = v34;
          error = errorCopy2;
          dictionaryCopy = v69;
          v9 = v76;
          v24 = v63;
        }

        else
        {
          v65 = 0;
        }

        v49 = [dictionaryCopy objectForKeyedSubscript:@"remoteDeviceIndices"];
        if (v49)
        {
          v50 = v49;
          objc_opt_class();
          v82 = v8;
          v51 = CCValidateIsInstanceOfExpectedClass();
          v34 = v8;

          if ((v51 & 1) == 0)
          {
            CCSetError();
            v23 = 0;
            v54 = v65;
            goto LABEL_65;
          }

          v64 = v24;
          errorCopy3 = error;
          v70 = dictionaryCopy;
          obja = self;
          v52 = objc_opt_new();
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v50 = v50;
          v53 = [v50 countByEnumeratingWithState:&v78 objects:v98 count:16];
          v54 = v65;
          if (v53)
          {
            v55 = v53;
            v56 = *v79;
            while (2)
            {
              v57 = 0;
              v58 = v34;
              do
              {
                if (*v79 != v56)
                {
                  objc_enumerationMutation(v50);
                }

                v59 = *(*(&v78 + 1) + 8 * v57);
                objc_opt_class();
                v60 = CCValidateIsInstanceOfExpectedClass();
                v34 = v58;

                if (!v60)
                {
                  CCSetError();

                  v23 = 0;
                  dictionaryCopy = v70;
                  self = obja;
                  v24 = v64;
                  v54 = v65;
                  goto LABEL_65;
                }

                [v52 appendUInt32Value:{objc_msgSend(v59, "unsignedIntValue")}];
                ++v57;
                v58 = v34;
              }

              while (v55 != v57);
              v55 = [v50 countByEnumeratingWithState:&v78 objects:v98 count:16];
              v54 = v65;
              if (v55)
              {
                continue;
              }

              break;
            }
          }

          dictionaryCopy = v70;
          self = obja;
          error = errorCopy3;
          v24 = v64;
        }

        else
        {
          v52 = 0;
          v34 = v8;
          v54 = v65;
        }

        v23 = [[CCSerializedSetItem alloc] initWithItemType:v9 sharedIdentifier:v74 localInstanceIdentifiers:v77 content:v24 localMetaContent:v54 remoteDeviceIndices:v52 error:error];
        v50 = v52;
LABEL_65:

        goto LABEL_66;
      }

      CCSetError();

      v23 = 0;
    }

    else
    {
      if (!v24)
      {
        goto LABEL_24;
      }

      objc_opt_class();
      v90 = v8;
      v29 = CCValidateIsInstanceOfExpectedClass();
      v30 = v8;

      if (v29)
      {
        v25 = v24;
        v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v24 options:0];
        v8 = v30;
        goto LABEL_23;
      }

      CCSetError();
      v23 = 0;
      v8 = v30;
    }

LABEL_67:

    v14 = v8;
    v12 = v77;
    goto LABEL_68;
  }

  CCSetError();
  v23 = 0;
LABEL_69:

  return v23;
}

- (id)jsonDictionary
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_hasItemType)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSerializedSetItem itemType](self, "itemType")}];
    [v3 setObject:v4 forKeyedSubscript:@"itemType"];
  }

  if (self->_hasSharedIdentifier)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCSerializedSetItem sharedIdentifier](self, "sharedIdentifier")}];
    [v3 setObject:v5 forKeyedSubscript:@"sharedIdentifier"];
  }

  if (self->_localInstanceIdentifiers)
  {
    v6 = objc_opt_new();
    localInstanceIdentifiers = [(CCSerializedSetItem *)self localInstanceIdentifiers];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __37__CCSerializedSetItem_jsonDictionary__block_invoke;
    v36[3] = &unk_1E73E8EF0;
    v37 = v6;
    v8 = v6;
    [localInstanceIdentifiers enumerateInt64ValuesWithBlock:v36];

    [v3 setObject:v8 forKeyedSubscript:@"localInstanceIdentifiers"];
  }

  if (self->_content)
  {
    v9 = MEMORY[0x1E6993A00];
    itemType = [(CCSerializedSetItem *)self itemType];
    content = [(CCSerializedSetItem *)self content];
    v12 = [v9 contentMessageForItemType:itemType data:content error:0];

    if (v12)
    {
      jsonDictionary = [v12 jsonDictionary];
      [v3 setObject:jsonDictionary forKeyedSubscript:@"content"];
    }

    else
    {
      jsonDictionary = [(CCSerializedSetItem *)self content];
      v14 = [jsonDictionary base64EncodedStringWithOptions:0];
      [v3 setObject:v14 forKeyedSubscript:@"content"];
    }
  }

  if (self->_localMetaContent)
  {
    v15 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    localMetaContent = [(CCSerializedSetItem *)self localMetaContent];
    v17 = [localMetaContent countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(localMetaContent);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          v22 = [MEMORY[0x1E6993A00] metaContentMessageForItemType:-[CCSerializedSetItem itemType](self data:"itemType") error:{v21, 0}];
          v23 = v22;
          if (v22)
          {
            [v22 jsonDictionary];
          }

          else
          {
            [v21 base64EncodedStringWithOptions:0];
          }
          v24 = ;
          [v15 addObject:v24];
        }

        v18 = [localMetaContent countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"localMetaContent"];
  }

  if (self->_remoteDeviceIndices)
  {
    v25 = objc_opt_new();
    remoteDeviceIndices = [(CCSerializedSetItem *)self remoteDeviceIndices];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __37__CCSerializedSetItem_jsonDictionary__block_invoke_2;
    v30[3] = &unk_1E73E8EA0;
    v31 = v25;
    v27 = v25;
    [remoteDeviceIndices enumerateUInt32ValuesWithBlock:v30];

    [v3 setObject:v27 forKeyedSubscript:@"remoteDeviceIndices"];
  }

  v28 = [v3 copy];

  return v28;
}

void __37__CCSerializedSetItem_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __37__CCSerializedSetItem_jsonDictionary__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasItemType)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] uint32Value:self->_itemType];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_hasSharedIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 int64Value:self->_sharedIdentifier];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_localInstanceIdentifiers)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedInt64Value:self->_localInstanceIdentifiers];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_content)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 bytesValue:self->_content];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_localMetaContent)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedBytesValue:self->_localMetaContent];
    blockCopy[2](blockCopy, v10);
  }

  v11 = blockCopy;
  if (self->_remoteDeviceIndices)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedUInt32Value:self->_remoteDeviceIndices];
    blockCopy[2](blockCopy, v12);

    v11 = blockCopy;
  }
}

- (NSArray)localMetaContent
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_localMetaContent copyItems:1];

  return v2;
}

- (NSData)content
{
  v2 = [(NSData *)self->_content copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  if (*&v7[*MEMORY[0x1E6993AB8]] < *&v7[*MEMORY[0x1E6993AB0]])
  {
    v10 = 0;
    v59 = 0;
    v60 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E6993AA8];
    v13 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v7[*v12])
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == 0;
      }

      if (!v14)
      {
        goto LABEL_70;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = *v8;
        v19 = *&v7[v18];
        if (v19 == -1 || v19 >= *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v13] + v19);
        *&v7[v18] = v19 + 1;
        v17 |= (v20 & 0x7F) << v15;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v15 += 7;
        v21 = v16++ >= 9;
        if (v21)
        {
          v22 = 0;
          if (*&v7[*v12])
          {
            goto LABEL_69;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v12] = 1;
LABEL_17:
      v23 = *&v7[*v12];
      if (v23)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

      if (v23)
      {
        goto LABEL_69;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) <= 3)
      {
        switch(v24)
        {
          case 1:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            while (1)
            {
              v29 = *v8;
              v30 = *&v7[v29];
              if (v30 == -1 || v30 >= *&v7[*v9])
              {
                break;
              }

              v31 = *(*&v7[*v13] + v30);
              *&v7[v29] = v30 + 1;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_58;
              }

              v26 += 7;
              v21 = v27++ >= 9;
              if (v21)
              {
                LODWORD(v28) = 0;
                goto LABEL_60;
              }
            }

            *&v7[*v12] = 1;
LABEL_58:
            if (*&v7[*v12])
            {
              LODWORD(v28) = 0;
            }

LABEL_60:
            v10 = 0;
            self->_itemType = v28;
            v45 = 16;
            break;
          case 2:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            while (1)
            {
              v41 = *v8;
              v42 = *&v7[v41];
              if (v42 == -1 || v42 >= *&v7[*v9])
              {
                break;
              }

              v43 = *(*&v7[*v13] + v42);
              *&v7[v41] = v42 + 1;
              v40 |= (v43 & 0x7F) << v38;
              if ((v43 & 0x80) == 0)
              {
                goto LABEL_62;
              }

              v38 += 7;
              v21 = v39++ >= 9;
              if (v21)
              {
                v40 = 0;
                goto LABEL_64;
              }
            }

            *&v7[*v12] = 1;
LABEL_62:
            if (*&v7[*v12])
            {
              v40 = 0;
            }

LABEL_64:
            v10 = 0;
            self->_sharedIdentifier = v40;
            v45 = 17;
            break;
          case 3:
            if (!v11)
            {
              v11 = objc_opt_new();
            }

            CCPBReaderAppendRepeatedInt64FieldValues();
LABEL_56:
            v10 = 0;
            v12 = MEMORY[0x1E6993AA8];
            goto LABEL_66;
          default:
            goto LABEL_42;
        }

        *(&self->super.super.isa + v45) = 1;
LABEL_66:
        if (*&v7[*v8] < *&v7[*v9])
        {
          continue;
        }

        goto LABEL_70;
      }

      break;
    }

    switch(v24)
    {
      case 4:
        v32 = CCPBReaderReadData();
        content = self->_content;
        self->_content = v32;

        v12 = MEMORY[0x1E6993AA8];
        v10 = 0;
        goto LABEL_66;
      case 5:
        v44 = CCPBReaderReadDataNoCopy();
        if (!v60)
        {
          v60 = objc_opt_new();
        }

        if (v44)
        {
          [v60 addObject:v44];
        }

        goto LABEL_56;
      case 6:
        v25 = v59;
        if (!v59)
        {
          v25 = objc_opt_new();
        }

        v59 = v25;
        CCPBReaderAppendRepeatedUInt32FieldValues();
        goto LABEL_56;
    }

LABEL_42:
    if ((CCPBReaderSkipValueWithTag() & 1) == 0)
    {
      v34 = objc_opt_class();
      NSStringFromClass(v34);
      errorCopy = error;
      v35 = v11;
      v37 = v36 = dataCopy;
      v10 = CCSkipFieldErrorForMessage();

      v12 = MEMORY[0x1E6993AA8];
      dataCopy = v36;
      v11 = v35;
      error = errorCopy;
      goto LABEL_66;
    }

    goto LABEL_56;
  }

  v11 = 0;
  v59 = 0;
  v60 = 0;
LABEL_69:
  v10 = 0;
LABEL_70:
  v46 = [v11 copy];
  localInstanceIdentifiers = self->_localInstanceIdentifiers;
  self->_localInstanceIdentifiers = v46;

  v48 = [v60 copy];
  localMetaContent = self->_localMetaContent;
  self->_localMetaContent = v48;

  v50 = [v59 copy];
  remoteDeviceIndices = self->_remoteDeviceIndices;
  self->_remoteDeviceIndices = v50;

  if (v10)
  {
    CCSetError();
  }

  else
  {
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v56 = 1;
      goto LABEL_75;
    }

    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    CCInvalidBufferErrorForMessage();
    v55 = v54 = dataCopy;
    CCSetError();

    dataCopy = v54;
  }

  v56 = 0;
LABEL_75:

  return v56;
}

- (CCSerializedSetItem)initWithItemType:(id)type sharedIdentifier:(id)identifier localInstanceIdentifiers:(id)identifiers content:(id)content localMetaContent:(id)metaContent remoteDeviceIndices:(id)indices error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  contentCopy = content;
  metaContentCopy = metaContent;
  indicesCopy = indices;
  v20 = objc_opt_new();
  if (typeCopy)
  {
    objc_opt_class();
    v50 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v22 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    [typeCopy unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    if (!identifierCopy)
    {
LABEL_4:
      v23 = v22;
      if (identifiersCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v22 = 0;
    if (!identifierCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v49 = v22;
  v26 = CCValidateIsInstanceOfExpectedClass();
  v23 = v22;

  if (!v26)
  {
LABEL_30:
    CCSetError();
    selfCopy3 = 0;
    v22 = v23;
    goto LABEL_34;
  }

  [identifierCopy longLongValue];
  CCPBDataWriterWriteInt64Field();
  if (identifiersCopy)
  {
LABEL_5:
    objc_opt_class();
    v48 = v23;
    v24 = CCValidateIsInstanceOfExpectedClass();
    v22 = v23;

    if (v24)
    {
      selfCopy2 = self;
      CCPBDataWriterWriteRepeatedInt64Field();
      goto LABEL_12;
    }

LABEL_7:
    CCSetError();
    selfCopy3 = 0;
LABEL_34:
    v35 = indicesCopy;
    goto LABEL_35;
  }

LABEL_11:
  selfCopy2 = self;
  v22 = v23;
LABEL_12:
  if (contentCopy)
  {
    objc_opt_class();
    v47 = v22;
    v27 = CCValidateIsInstanceOfExpectedClass();
    v28 = v22;

    if (!v27)
    {
      CCSetError();
      selfCopy3 = 0;
      v22 = v28;
LABEL_33:
      self = selfCopy2;
      goto LABEL_34;
    }

    CCPBDataWriterWriteDataField();
    if (!metaContentCopy)
    {
LABEL_15:
      v22 = v28;
      self = selfCopy2;
      goto LABEL_26;
    }
  }

  else
  {
    v28 = v22;
    if (!metaContentCopy)
    {
      goto LABEL_15;
    }
  }

  objc_opt_class();
  v46 = v28;
  v29 = CCValidateArrayValues();
  v22 = v28;

  if (!v29)
  {
    CCSetError();
    selfCopy3 = 0;
    goto LABEL_33;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = metaContentCopy;
  v30 = metaContentCopy;
  v31 = [v30 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v43;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v30);
        }

        CCPBDataWriterWriteDataField();
      }

      v32 = [v30 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v32);
  }

  metaContentCopy = v39;
  self = selfCopy2;
LABEL_26:
  v35 = indicesCopy;
  if (indicesCopy)
  {
    objc_opt_class();
    v36 = CCValidateIsInstanceOfExpectedClass();
    v23 = v22;

    if (v36)
    {
      CCPBDataWriterWriteRepeatedUInt32Field();
      v22 = v23;
      v35 = indicesCopy;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

LABEL_29:
  immutableData = [v20 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy3 = self;
LABEL_35:

  return selfCopy3;
}

@end