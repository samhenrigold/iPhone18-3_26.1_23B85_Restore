@interface SPProtoSerializer
+ (id)arrayWithSPPlist:(id)plist;
+ (id)dataWithObject:(id)object;
+ (id)dictionaryWithSPPlist:(id)plist;
+ (id)numberWithSPProtoSockPuppetObject:(id)object;
+ (id)objectWithData:(id)data;
+ (id)protoSPObjectWithArray:(id)array forKey:(id)key;
+ (id)protoSPObjectWithData:(id)data forKey:(id)key;
+ (id)protoSPObjectWithDictionary:(id)dictionary forKey:(id)key;
+ (id)protoSPObjectWithNumber:(id)number forKey:(id)key;
+ (id)protoSPObjectWithObject:(id)object forKey:(id)key;
+ (id)protoSPObjectWithString:(id)string forKey:(id)key;
+ (id)spPlistWithArray:(id)array;
+ (id)spPlistWithDictionary:(id)dictionary;
@end

@implementation SPProtoSerializer

+ (id)dataWithObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [SPCacheMessage toProto:objectCopy];
    v5 = objc_alloc_init(SPProtoSockPuppetObject);
    [(SPProtoSockPuppetObject *)v5 setType:1];
    [(SPProtoSockPuppetObject *)v5 setCacheMessage:v4];
    data = [(SPProtoSockPuppetObject *)v5 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

+ (id)objectWithData:(id)data
{
  dataCopy = data;
  v4 = [[SPProtoSockPuppetObject alloc] initWithData:dataCopy];

  if ([(SPProtoSockPuppetObject *)v4 type]== 1)
  {
    cacheMessage = [(SPProtoSockPuppetObject *)v4 cacheMessage];
    v6 = [SPCacheMessage fromProto:cacheMessage];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)protoSPObjectWithNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  keyCopy = key;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  [(SPProtoSockPuppetObject *)v7 setKey:keyCopy];

  [(SPProtoSockPuppetObject *)v7 setType:5];
  objCType = [numberCopy objCType];
  v9 = *objCType;
  if (v9 <= 0x65)
  {
    if (*objCType <= 0x62u)
    {
      if (v9 == 66)
      {
        if (!objCType[1])
        {
          [(SPProtoSockPuppetObject *)v7 setSubtype:6];
          -[SPProtoSockPuppetObject setNBOOL:](v7, "setNBOOL:", [numberCopy BOOLValue]);
          goto LABEL_31;
        }
      }

      else if (v9 == 81 && !objCType[1])
      {
        [(SPProtoSockPuppetObject *)v7 setSubtype:8];
        -[SPProtoSockPuppetObject setNuint64:](v7, "setNuint64:", [numberCopy unsignedIntegerValue]);
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (v9 != 99)
    {
      if (v9 == 100 && !objCType[1])
      {
        [(SPProtoSockPuppetObject *)v7 setSubtype:14];
        [numberCopy doubleValue];
        [(SPProtoSockPuppetObject *)v7 setNdouble:?];
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (!objCType[1])
    {
      [(SPProtoSockPuppetObject *)v7 setSubtype:9];
      charValue = [numberCopy charValue];
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (*objCType > 0x70u)
  {
    if (v9 == 113)
    {
      if (!objCType[1])
      {
        [(SPProtoSockPuppetObject *)v7 setSubtype:7];
        integerValue = [numberCopy integerValue];
        goto LABEL_29;
      }
    }

    else if (v9 == 115 && !objCType[1])
    {
      [(SPProtoSockPuppetObject *)v7 setSubtype:10];
      charValue = [numberCopy shortValue];
LABEL_26:
      [(SPProtoSockPuppetObject *)v7 setNint32:charValue];
      goto LABEL_31;
    }

LABEL_28:
    [(SPProtoSockPuppetObject *)v7 setSubtype:15];
    integerValue = [numberCopy longLongValue];
LABEL_29:
    intValue = integerValue;
    goto LABEL_30;
  }

  if (v9 == 102)
  {
    if (!objCType[1])
    {
      [(SPProtoSockPuppetObject *)v7 setSubtype:13];
      [numberCopy floatValue];
      [(SPProtoSockPuppetObject *)v7 setNfloat:?];
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v9 != 105 || objCType[1])
  {
    goto LABEL_28;
  }

  [(SPProtoSockPuppetObject *)v7 setSubtype:11];
  intValue = [numberCopy intValue];
LABEL_30:
  [(SPProtoSockPuppetObject *)v7 setNint64:intValue];
LABEL_31:

  return v7;
}

+ (id)numberWithSPProtoSockPuppetObject:(id)object
{
  objectCopy = object;
  subtype = [objectCopy subtype];
  v5 = MEMORY[0x277CCABB0];
  if (subtype > 10)
  {
    if (subtype <= 12)
    {
      goto LABEL_12;
    }

    if (subtype == 13)
    {
      [objectCopy nfloat];
      v6 = [v5 numberWithFloat:?];
      goto LABEL_13;
    }

    if (subtype != 14)
    {
LABEL_12:
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(objectCopy, "nint64")}];
      goto LABEL_13;
    }

    [objectCopy ndouble];
    v6 = [v5 numberWithDouble:?];
  }

  else
  {
    if (subtype > 7)
    {
      if (subtype == 8)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(objectCopy, "nuint64")}];
      }

      else
      {
        if (subtype == 9)
        {
          [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(objectCopy, "nint32")}];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(objectCopy, "nint32")}];
        }
        v6 = ;
      }

      goto LABEL_13;
    }

    if (subtype != 6)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objectCopy, "nBOOL")}];
  }

LABEL_13:
  v7 = v6;

  return v7;
}

+ (id)protoSPObjectWithString:(id)string forKey:(id)key
{
  keyCopy = key;
  stringCopy = string;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (keyCopy)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:keyCopy];
  }

  [(SPProtoSockPuppetObject *)v8 setType:2];
  [(SPProtoSockPuppetObject *)v8 setText:stringCopy];

  return v8;
}

+ (id)protoSPObjectWithData:(id)data forKey:(id)key
{
  keyCopy = key;
  dataCopy = data;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (keyCopy)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:keyCopy];
  }

  [(SPProtoSockPuppetObject *)v8 setType:4];
  [(SPProtoSockPuppetObject *)v8 setObject:dataCopy];

  return v8;
}

+ (id)protoSPObjectWithObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (keyCopy)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:keyCopy];
  }

  [(SPProtoSockPuppetObject *)v8 setType:3];
  [(SPProtoSockPuppetObject *)v8 setObject:objectCopy];

  return v8;
}

+ (id)protoSPObjectWithDictionary:(id)dictionary forKey:(id)key
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (keyCopy)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:keyCopy];
  }

  [(SPProtoSockPuppetObject *)v8 setType:16];
  v9 = [SPProtoSerializer spPlistWithDictionary:dictionaryCopy];

  data = [v9 data];
  [(SPProtoSockPuppetObject *)v8 setObject:data];

  return v8;
}

+ (id)protoSPObjectWithArray:(id)array forKey:(id)key
{
  keyCopy = key;
  arrayCopy = array;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (keyCopy)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:keyCopy];
  }

  [(SPProtoSockPuppetObject *)v8 setType:17];
  v9 = [SPProtoSerializer spPlistWithArray:arrayCopy];

  data = [v9 data];
  [(SPProtoSockPuppetObject *)v8 setObject:data];

  return v8;
}

+ (id)spPlistWithArray:(id)array
{
  v45 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = objc_alloc_init(SPProtoSockPuppetPlist);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v34;
    *&v7 = 136446722;
    v27 = v7;
    v28 = v5;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [SPProtoSerializer protoSPObjectWithString:v11 forKey:0];
LABEL_16:
          v13 = v12;
          [(SPProtoSockPuppetPlist *)v4 addObject:v12, v27];
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [SPProtoSerializer protoSPObjectWithNumber:v11 forKey:0];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [SPProtoSerializer protoSPObjectWithData:v11 forKey:0];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [SPProtoSerializer protoSPObjectWithDictionary:v11 forKey:0];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [SPProtoSerializer protoSPObjectWithArray:v11 forKey:0];
          goto LABEL_16;
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        if (__allowedClasses_onceToken != -1)
        {
          +[SPProtoSerializer spPlistWithArray:];
        }

        v14 = __allowedClasses___allowedClasses;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v43 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          v18 = *v30;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v17 |= objc_opt_isKindOfClass();
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v43 count:16];
          }

          while (v16);

          v5 = v28;
          if (v17)
          {
            goto LABEL_34;
          }
        }

        else
        {
        }

        v21 = wk_default_log(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          *buf = v27;
          v38 = "+[SPProtoSerializer spPlistWithArray:]";
          v39 = 1024;
          v40 = 208;
          v41 = 2114;
          v42 = v23;
          v24 = v23;
          _os_log_error_impl(&dword_23B338000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%d: obj is of class %{public}@ which is not an allowed class", buf, 0x1Cu);
        }

LABEL_34:
        v13 = spUtils_serializeObject(v11);
        v22 = [SPProtoSerializer protoSPObjectWithObject:v13 forKey:0];
        [(SPProtoSockPuppetPlist *)v4 addObject:v22];

LABEL_17:
        ++v10;
      }

      while (v10 != v8);
      v25 = [v5 countByEnumeratingWithState:&v33 objects:v44 count:16];
      v8 = v25;
    }

    while (v25);
  }

  return v4;
}

+ (id)spPlistWithDictionary:(id)dictionary
{
  v47 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SPProtoSockPuppetPlist);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v36;
    *&v7 = 136446722;
    v28 = v7;
    v29 = *v36;
    v30 = v4;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        v12 = [v5 objectForKeyedSubscript:{v11, v28}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [SPProtoSerializer protoSPObjectWithString:v12 forKey:v11];
LABEL_16:
          v14 = v13;
          [(SPProtoSockPuppetPlist *)v4 addObject:v13];
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [SPProtoSerializer protoSPObjectWithNumber:v12 forKey:v11];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [SPProtoSerializer protoSPObjectWithData:v12 forKey:v11];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [SPProtoSerializer protoSPObjectWithDictionary:v12 forKey:v11];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [SPProtoSerializer protoSPObjectWithArray:v12 forKey:v11];
          goto LABEL_16;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        if (__allowedClasses_onceToken != -1)
        {
          +[SPProtoSerializer spPlistWithArray:];
        }

        v15 = __allowedClasses___allowedClasses;
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v45 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v32;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v18 |= objc_opt_isKindOfClass();
            }

            v17 = [v15 countByEnumeratingWithState:&v31 objects:v45 count:16];
          }

          while (v17);

          v9 = v29;
          v4 = v30;
          if (v18)
          {
            goto LABEL_34;
          }
        }

        else
        {
        }

        v22 = wk_default_log(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = objc_opt_class();
          *buf = v28;
          v40 = "+[SPProtoSerializer spPlistWithDictionary:]";
          v41 = 1024;
          v42 = 254;
          v43 = 2114;
          v44 = v24;
          v25 = v24;
          _os_log_error_impl(&dword_23B338000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%d: obj is of class %{public}@ which is not an allowed class", buf, 0x1Cu);
        }

LABEL_34:
        v14 = spUtils_serializeObject(v12);
        v23 = [SPProtoSerializer protoSPObjectWithObject:v14 forKey:v11];
        [(SPProtoSockPuppetPlist *)v4 addObject:v23];

LABEL_17:
        ++v10;
      }

      while (v10 != v8);
      v26 = [v5 countByEnumeratingWithState:&v35 objects:v46 count:16];
      v8 = v26;
    }

    while (v26);
  }

  return v4;
}

+ (id)dictionaryWithSPPlist:(id)plist
{
  v34 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([plistCopy objectsCount])
  {
    v6 = 0;
    *&v5 = 136446466;
    v32 = v5;
    do
    {
      v7 = [plistCopy objectAtIndex:{v6, v32, *buf, *&buf[8], v34}];
      if ([v7 type] == 2)
      {
        text = [v7 text];

        if (text)
        {
          text2 = [v7 text];
LABEL_11:
          object5 = text2;
          v14 = [v7 key];
          [dictionary setObject:object5 forKey:v14];
LABEL_12:

          goto LABEL_14;
        }

        object5 = wk_default_log(v9);
        if (os_log_type_enabled(object5, OS_LOG_TYPE_ERROR))
        {
          *buf = v32;
          *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
          *&buf[12] = 1024;
          *&buf[14] = 271;
          v25 = object5;
          v26 = "%{public}s:%d: SPProtoSerializerTypeString, text field is empty";
          goto LABEL_36;
        }
      }

      else
      {
        if ([v7 type] == 5)
        {
          text2 = [SPProtoSerializer numberWithSPProtoSockPuppetObject:v7];
          goto LABEL_11;
        }

        if ([v7 type] == 4)
        {
          object = [v7 object];

          if (object)
          {
            text2 = [v7 object];
            goto LABEL_11;
          }

          object5 = wk_default_log(v12);
          if (os_log_type_enabled(object5, OS_LOG_TYPE_ERROR))
          {
            *buf = v32;
            *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
            *&buf[12] = 1024;
            *&buf[14] = 279;
            v25 = object5;
            v26 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
LABEL_36:
            _os_log_error_impl(&dword_23B338000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x12u);
          }
        }

        else if ([v7 type] == 17)
        {
          object2 = [v7 object];

          if (object2)
          {
            v17 = [SPProtoSockPuppetPlist alloc];
            object3 = [v7 object];
            object5 = [(SPProtoSockPuppetPlist *)v17 initWithData:object3];

            v14 = [SPProtoSerializer arrayWithSPPlist:object5];
            v19 = [v7 key];
            [dictionary setObject:v14 forKey:v19];

            goto LABEL_12;
          }

          object5 = wk_default_log(v16);
          if (os_log_type_enabled(object5, OS_LOG_TYPE_ERROR))
          {
            *buf = v32;
            *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
            *&buf[12] = 1024;
            *&buf[14] = 287;
            v25 = object5;
            v26 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
            goto LABEL_36;
          }
        }

        else
        {
          if ([v7 type] != 16)
          {
            if ([v7 type] != 3)
            {
              goto LABEL_15;
            }

            object4 = [v7 object];

            if (!object4)
            {
              object5 = wk_default_log(v28);
              if (!os_log_type_enabled(object5, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_14;
              }

              *buf = v32;
              *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
              *&buf[12] = 1024;
              *&buf[14] = 301;
              v25 = object5;
              v26 = "%{public}s:%d: SPProtoSerializerTypeObject, object field is empty";
              goto LABEL_36;
            }

            object5 = [v7 object];
            if (__allowedClasses_onceToken != -1)
            {
              +[SPProtoSerializer spPlistWithArray:];
            }

            v24 = spUtils_deserializeObject(object5, __allowedClasses___allowedClasses);
            goto LABEL_30;
          }

          object6 = [v7 object];

          if (object6)
          {
            v22 = [SPProtoSockPuppetPlist alloc];
            object7 = [v7 object];
            object5 = [(SPProtoSockPuppetPlist *)v22 initWithData:object7];

            v24 = [SPProtoSerializer dictionaryWithSPPlist:object5];
LABEL_30:
            v29 = v24;
            v30 = [v7 key];
            [dictionary setObject:v29 forKey:v30];

            goto LABEL_14;
          }

          object5 = wk_default_log(v21);
          if (os_log_type_enabled(object5, OS_LOG_TYPE_ERROR))
          {
            *buf = v32;
            *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
            *&buf[12] = 1024;
            *&buf[14] = 295;
            v25 = object5;
            v26 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
            goto LABEL_36;
          }
        }
      }

LABEL_14:

LABEL_15:
      ++v6;
    }

    while (v6 < [plistCopy objectsCount]);
  }

  return dictionary;
}

+ (id)arrayWithSPPlist:(id)plist
{
  v31 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  array = [MEMORY[0x277CBEB18] array];
  if ([plistCopy objectsCount])
  {
    v6 = 0;
    *&v5 = 136446466;
    v29 = v5;
    while (1)
    {
      v7 = [plistCopy objectAtIndex:{v6, v29, *buf, *&buf[8], v31}];
      if ([v7 type] == 2)
      {
        break;
      }

      if ([v7 type] == 5)
      {
        object2 = [SPProtoSerializer numberWithSPProtoSockPuppetObject:v7];
        goto LABEL_11;
      }

      if ([v7 type] == 4)
      {
        object = [v7 object];

        if (!object)
        {
          object8 = wk_default_log(v12);
          if (!os_log_type_enabled(object8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          *buf = v29;
          *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
          *&buf[12] = 1024;
          *&buf[14] = 326;
          v14 = object8;
          v15 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
          goto LABEL_14;
        }

        object2 = [v7 object];
        goto LABEL_11;
      }

      if ([v7 type] == 17)
      {
        object3 = [v7 object];

        if (object3)
        {
          v18 = [SPProtoSockPuppetPlist alloc];
          object4 = [v7 object];
          object8 = [(SPProtoSockPuppetPlist *)v18 initWithData:object4];

          v20 = [SPProtoSerializer arrayWithSPPlist:object8];
          goto LABEL_28;
        }

        object8 = wk_default_log(v17);
        if (!os_log_type_enabled(object8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = v29;
        *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
        *&buf[12] = 1024;
        *&buf[14] = 334;
        v14 = object8;
        v15 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
        goto LABEL_14;
      }

      if ([v7 type] == 16)
      {
        object5 = [v7 object];

        if (object5)
        {
          v23 = [SPProtoSockPuppetPlist alloc];
          object6 = [v7 object];
          object8 = [(SPProtoSockPuppetPlist *)v23 initWithData:object6];

          v20 = [SPProtoSerializer dictionaryWithSPPlist:object8];
          goto LABEL_28;
        }

        object8 = wk_default_log(v22);
        if (!os_log_type_enabled(object8, OS_LOG_TYPE_ERROR))
        {
LABEL_34:

          goto LABEL_35;
        }

        *buf = v29;
        *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
        *&buf[12] = 1024;
        *&buf[14] = 342;
        v14 = object8;
        v15 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
        goto LABEL_14;
      }

      if ([v7 type] == 3)
      {
        object7 = [v7 object];

        if (object7)
        {
          object8 = [v7 object];
          if (__allowedClasses_onceToken != -1)
          {
            +[SPProtoSerializer spPlistWithArray:];
          }

          v20 = spUtils_deserializeObject(object8, __allowedClasses___allowedClasses);
LABEL_28:
          v27 = v20;
          [array addObject:v20];

          goto LABEL_34;
        }

        object8 = wk_default_log(v26);
        if (!os_log_type_enabled(object8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = v29;
        *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
        *&buf[12] = 1024;
        *&buf[14] = 348;
        v14 = object8;
        v15 = "%{public}s:%d: SPProtoSerializerTypeObject, object field is empty";
LABEL_14:
        _os_log_error_impl(&dword_23B338000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
        goto LABEL_34;
      }

LABEL_35:

      if (++v6 >= [plistCopy objectsCount])
      {
        goto LABEL_38;
      }
    }

    text = [v7 text];

    if (!text)
    {
      object8 = wk_default_log(v9);
      if (!os_log_type_enabled(object8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = v29;
      *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
      *&buf[12] = 1024;
      *&buf[14] = 318;
      v14 = object8;
      v15 = "%{public}s:%d: SPProtoSerializerTypeString, text field is empty";
      goto LABEL_14;
    }

    object2 = [v7 text];
LABEL_11:
    object8 = object2;
    [array addObject:object2];
    goto LABEL_34;
  }

LABEL_38:

  return array;
}

@end