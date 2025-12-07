@interface NRDevicePropertyDiff
+ (id)packPropertyValue:(id)value;
+ (id)unpackPropertyValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (NRDevicePropertyDiff)initWithCoder:(id)coder;
- (NRDevicePropertyDiff)initWithProtobuf:(id)protobuf;
- (NRDevicePropertyDiff)initWithValue:(id)value;
- (NRPBDevicePropertyDiff)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDevicePropertyDiff

- (NRDevicePropertyDiff)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = NRDevicePropertyDiff;
  v6 = [(NRDevicePropertyDiff *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

- (NRDevicePropertyDiff)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [(NRDevicePropertyDiff *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    if (protobufCopy)
    {
      v7 = protobufCopy[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v6 unpackPropertyValue:v8];
    value = v5->_value;
    v5->_value = v9;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_value name:@"property value" owner:v5];
  }

  return v5;
}

- (NRPBDevicePropertyDiff)protobuf
{
  v3 = objc_opt_new();
  v4 = [objc_opt_class() packPropertyValue:self->_value];
  [(NRPBDevicePropertyDiff *)v3 setValue:v4];

  return v3;
}

- (NRDevicePropertyDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NRDevicePropertyDiff *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = +[NRMutableDeviceProperty enclosedClassTypes];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:0x1F5B7C860];
    value = v5->_value;
    v5->_value = v11;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_value name:@"property value" owner:v5];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBDevicePropertyDiff alloc] initWithData:v6];
  v9 = [(NRDevicePropertyDiff *)v5 initWithProtobuf:v8];

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(NRDevicePropertyDiff *)self protobuf];
  data = [protobuf data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  value = self->_value;
  if (value == equalCopy->_value)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [value isEqual:?];
  }

LABEL_7:

  return v6;
}

- (id)description
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [NRTextFormattingUtilities dateFormatter:self->_value];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    value = self->_value;
    if (isKindOfClass)
    {
      [value UUIDString];
    }

    else
    {
      [value description];
    }
    v3 = ;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NRDevicePropertyDiff allocWithZone:?]];
  objc_storeStrong(&v4->_value, self->_value);
  return v4;
}

+ (id)packPropertyValue:(id)value
{
  v89 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v5 = objc_alloc_init(NRPBPropertyValue);
  if (!valueCopy)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696ACC8];
    nr_filteredError = [valueCopy nr_filteredError];
    v8 = [v6 nr_secureArchivedDataWithRootObject:nr_filteredError];

    if (v8)
    {
      [(NRPBPropertyValue *)v5 setDataValue:v8];
      [(NRPBPropertyValue *)v5 setIsError:1];
    }

    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_6:

    v5 = 0;
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = valueCopy;
    v8 = objc_alloc_init(NRPBNumber);
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;

    [(NRPBNumber *)v8 setDoubleValue:v11];
    [(NRPBPropertyValue *)v5 setNumberValue:v8];
    [(NRPBPropertyValue *)v5 setIsDate:1];
LABEL_67:

    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valueCopy;
    v12 = objc_alloc_init(NRPBNumber);
    objCType = [(NRPBNumber *)v8 objCType];
    if (*objCType == 105 && !objCType[1])
    {
      intValue = [(NRPBNumber *)v8 intValue];
      v30 = v12;
LABEL_48:
      [(NRPBNumber *)v30 setInt32Value:intValue];
LABEL_64:
      if (!v12)
      {
        goto LABEL_67;
      }

      [(NRPBPropertyValue *)v5 setNumberValue:v12];
      goto LABEL_66;
    }

    objCType2 = [(NRPBNumber *)v8 objCType];
    if (*objCType2 == 73 && !objCType2[1])
    {
      unsignedIntValue = [(NRPBNumber *)v8 unsignedIntValue];
      v32 = v12;
LABEL_50:
      [(NRPBNumber *)v32 setInt32Value:unsignedIntValue];
LABEL_63:
      [(NRPBNumber *)v12 setIsUnsigned:1];
      goto LABEL_64;
    }

    objCType3 = [(NRPBNumber *)v8 objCType];
    if (*objCType3 == 113 && !objCType3[1])
    {
      [(NRPBNumber *)v12 setInt64Value:[(NRPBNumber *)v8 longLongValue]];
      goto LABEL_64;
    }

    objCType4 = [(NRPBNumber *)v8 objCType];
    if (*objCType4 == 81 && !objCType4[1])
    {
      [(NRPBNumber *)v12 setInt64Value:[(NRPBNumber *)v8 unsignedLongLongValue]];
      goto LABEL_63;
    }

    objCType5 = [(NRPBNumber *)v8 objCType];
    if (*objCType5 == 115 && !objCType5[1])
    {
      [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 shortValue]];
      v33 = v12;
      v34 = 1;
    }

    else
    {
      objCType6 = [(NRPBNumber *)v8 objCType];
      if (*objCType6 == 83 && !objCType6[1])
      {
        [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 unsignedShortValue]];
        v35 = v12;
        v36 = 1;
        goto LABEL_62;
      }

      objCType7 = [(NRPBNumber *)v8 objCType];
      if (*objCType7 != 99 || objCType7[1])
      {
        objCType8 = [(NRPBNumber *)v8 objCType];
        if (*objCType8 != 67 || objCType8[1])
        {
          objCType9 = [(NRPBNumber *)v8 objCType];
          if (*objCType9 != 113 || objCType9[1])
          {
            objCType10 = [(NRPBNumber *)v8 objCType];
            if (*objCType10 != 81 || objCType10[1])
            {
              objCType11 = [(NRPBNumber *)v8 objCType];
              if (*objCType11 == 66 && !objCType11[1])
              {
                [(NRPBNumber *)v12 setBoolValue:[(NRPBNumber *)v8 BOOLValue]];
              }

              else
              {
                objCType12 = [(NRPBNumber *)v8 objCType];
                if (*objCType12 == 102 && !objCType12[1])
                {
                  [(NRPBNumber *)v8 floatValue];
                  [(NRPBNumber *)v12 setFloatValue:?];
                }

                else
                {
                  objCType13 = [(NRPBNumber *)v8 objCType];
                  if (*objCType13 != 100 || objCType13[1])
                  {
                    goto LABEL_66;
                  }

                  [(NRPBNumber *)v8 doubleValue];
                  [(NRPBNumber *)v12 setDoubleValue:?];
                }
              }

              goto LABEL_64;
            }

            unsignedIntValue = [(NRPBNumber *)v8 unsignedIntegerValue];
            v32 = v12;
            goto LABEL_50;
          }

          intValue = [(NRPBNumber *)v8 integerValue];
          v30 = v12;
          goto LABEL_48;
        }

        [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 unsignedCharValue]];
        v35 = v12;
        v36 = 0;
LABEL_62:
        [(NRPBNumber *)v35 setIsShortOrChar:v36];
        goto LABEL_63;
      }

      [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 charValue]];
      v33 = v12;
      v34 = 0;
    }

    [(NRPBNumber *)v33 setIsShortOrChar:v34];
    goto LABEL_64;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valueCopy;
    v12 = objc_alloc_init(NRPBSize);
    if (!strcmp([(NRPBNumber *)v8 objCType], "{CGSize=dd}"))
    {
      [(NRPBNumber *)v8 sizeValue];
      *&v26 = v26;
      [(NRPBNumber *)v12 setWidth:v26];
      [(NRPBNumber *)v8 sizeValue];
      *&v28 = v27;
      [(NRPBNumber *)v12 setHeight:v28];
      if (!v12)
      {
        goto LABEL_67;
      }

      [(NRPBPropertyValue *)v5 setSizeValue:v12];
    }

LABEL_66:

    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NRPBPropertyValue *)v5 setStringValue:valueCopy];
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NRPBPropertyValue *)v5 setIsSecurePropertyValue:1];
      [valueCopy data];
    }

    else
    {
      [MEMORY[0x1E695DEF0] fromUUID:valueCopy];
    }
    v8 = ;
    [(NRPBPropertyValue *)v5 setUUIDValue:v8];
    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NRPBPropertyValue *)v5 setDataValue:valueCopy];
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = valueCopy;
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NRPBPropertyValue *)v5 setArrayValues:v39];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    data = v38;
    v41 = [data countByEnumeratingWithState:&v82 objects:v88 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v83;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v83 != v43)
          {
            objc_enumerationMutation(data);
          }

          v45 = [self packPropertyValue:*(*(&v82 + 1) + 8 * i)];
          if (v45)
          {
            arrayValues = [(NRPBPropertyValue *)v5 arrayValues];
            [arrayValues addObject:v45];
          }
        }

        v42 = [data countByEnumeratingWithState:&v82 objects:v88 count:16];
      }

      while (v42);
    }

LABEL_100:
    arrayValues2 = [(NRPBPropertyValue *)v5 arrayValues];
    v57 = [arrayValues2 count];

    if (!v57)
    {
      [(NRPBPropertyValue *)v5 setArrayValues:0];
    }

    goto LABEL_102;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = valueCopy;
    [(NRPBPropertyValue *)v5 setIsMiniUUIDSet:1];
    data = [v47 data];

    [(NRPBPropertyValue *)v5 setDataValue:data];
LABEL_102:

    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v48 = valueCopy;
    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NRPBPropertyValue *)v5 setArrayValues:v49];

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    data = v48;
    v50 = [data countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v79;
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v79 != v52)
          {
            objc_enumerationMutation(data);
          }

          v54 = [self packPropertyValue:*(*(&v78 + 1) + 8 * j)];
          if (v54)
          {
            arrayValues3 = [(NRPBPropertyValue *)v5 arrayValues];
            [arrayValues3 addObject:v54];
          }
        }

        v51 = [data countByEnumeratingWithState:&v78 objects:v87 count:16];
      }

      while (v51);
    }

    [(NRPBPropertyValue *)v5 setIsSet:1];
    goto LABEL_100;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v58 = valueCopy;
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NRPBPropertyValue *)v5 setArrayValues:v59];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = [v58 allKeys];
  v60 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
  v72 = v58;
  if (v60)
  {
    v61 = v60;
    v62 = *v75;
    do
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v75 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v74 + 1) + 8 * k);
        v65 = [v58 objectForKeyedSubscript:{v64, v72}];
        v66 = [self packPropertyValue:v64];
        if (v66)
        {
          v67 = [self packPropertyValue:v65];
          v68 = v67;
          if (v67)
          {
            [v67 setDictionaryKey:v66];
            arrayValues4 = [(NRPBPropertyValue *)v5 arrayValues];
            [arrayValues4 addObject:v68];

            v58 = v72;
          }
        }
      }

      v61 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v61);
  }

  arrayValues5 = [(NRPBPropertyValue *)v5 arrayValues];
  v71 = [arrayValues5 count];

  if (!v71)
  {
    [(NRPBPropertyValue *)v5 setArrayValues:0];
  }

LABEL_68:

  return v5;
}

+ (id)unpackPropertyValue:(id)value
{
  v100 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  numberValue = [valueCopy numberValue];

  if (numberValue)
  {
    numberValue2 = [valueCopy numberValue];
    hasInt32Value = [numberValue2 hasInt32Value];

    numberValue3 = [valueCopy numberValue];
    v9 = numberValue3;
    if (hasInt32Value)
    {
      hasIsShortOrChar = [numberValue3 hasIsShortOrChar];

      numberValue4 = [valueCopy numberValue];
      v12 = numberValue4;
      if (hasIsShortOrChar)
      {
        isShortOrChar = [numberValue4 isShortOrChar];

        numberValue5 = [valueCopy numberValue];
        isUnsigned = [numberValue5 isUnsigned];

        v16 = MEMORY[0x1E696AD98];
        numberValue6 = [valueCopy numberValue];
        int32Value = [numberValue6 int32Value];
        if (isShortOrChar)
        {
          if (isUnsigned)
          {
            [v16 numberWithUnsignedShort:int32Value];
          }

          else
          {
            [v16 numberWithShort:int32Value];
          }
        }

        else if (isUnsigned)
        {
          [v16 numberWithUnsignedChar:int32Value];
        }

        else
        {
          [v16 numberWithChar:int32Value];
        }
      }

      else
      {
        isUnsigned2 = [numberValue4 isUnsigned];

        v35 = MEMORY[0x1E696AD98];
        numberValue6 = [valueCopy numberValue];
        int32Value2 = [numberValue6 int32Value];
        if (isUnsigned2)
        {
          [v35 numberWithUnsignedInt:int32Value2];
        }

        else
        {
          [v35 numberWithInt:int32Value2];
        }
      }
    }

    else
    {
      hasInt64Value = [numberValue3 hasInt64Value];

      numberValue7 = [valueCopy numberValue];
      v30 = numberValue7;
      if (!hasInt64Value)
      {
        hasFloatValue = [numberValue7 hasFloatValue];

        if (hasFloatValue)
        {
          v38 = MEMORY[0x1E696AD98];
          numberValue6 = [valueCopy numberValue];
          [numberValue6 floatValue];
          v39 = [v38 numberWithFloat:?];
        }

        else
        {
          numberValue8 = [valueCopy numberValue];
          hasDoubleValue = [numberValue8 hasDoubleValue];

          if (hasDoubleValue)
          {
            v44 = MEMORY[0x1E696AD98];
            numberValue6 = [valueCopy numberValue];
            [numberValue6 doubleValue];
            v39 = [v44 numberWithDouble:?];
          }

          else
          {
            numberValue9 = [valueCopy numberValue];
            hasBoolValue = [numberValue9 hasBoolValue];

            if (!hasBoolValue)
            {
              sizeValue2 = 0;
LABEL_35:
              if ([valueCopy isDate])
              {
                v51 = MEMORY[0x1E695DF00];
                [sizeValue2 doubleValue];
                toUUID = [v51 dateWithTimeIntervalSinceReferenceDate:?];
              }

              else
              {
                toUUID = sizeValue2;
              }

              goto LABEL_38;
            }

            v50 = MEMORY[0x1E696AD98];
            numberValue6 = [valueCopy numberValue];
            v39 = [v50 numberWithBool:{objc_msgSend(numberValue6, "BOOLValue")}];
          }
        }

LABEL_34:
        sizeValue2 = v39;

        goto LABEL_35;
      }

      isUnsigned3 = [numberValue7 isUnsigned];

      v32 = MEMORY[0x1E696AD98];
      numberValue6 = [valueCopy numberValue];
      int64Value = [numberValue6 int64Value];
      if (isUnsigned3)
      {
        [v32 numberWithUnsignedLongLong:int64Value];
      }

      else
      {
        [v32 numberWithLongLong:int64Value];
      }
    }
    v39 = ;
    goto LABEL_34;
  }

  sizeValue = [valueCopy sizeValue];

  if (sizeValue)
  {
    v20 = MEMORY[0x1E696B098];
    sizeValue2 = [valueCopy sizeValue];
    [sizeValue2 width];
    v23 = v22;
    sizeValue3 = [valueCopy sizeValue];
    [sizeValue3 height];
    v26 = [v20 valueWithSize:{v23, v25}];
LABEL_9:
    v27 = v26;

LABEL_39:
    goto LABEL_40;
  }

  stringValue = [valueCopy stringValue];

  if (stringValue)
  {
    stringValue2 = [valueCopy stringValue];
    goto LABEL_19;
  }

  uUIDValue = [valueCopy uUIDValue];

  if (uUIDValue)
  {
    if (![valueCopy isSecurePropertyValue])
    {
      sizeValue2 = [valueCopy uUIDValue];
      toUUID = [sizeValue2 toUUID];
      goto LABEL_38;
    }

    v46 = [NRSecureDevicePropertyID alloc];
    uUIDValue2 = [valueCopy uUIDValue];
LABEL_46:
    sizeValue2 = uUIDValue2;
    toUUID = [(NRSecureDevicePropertyID *)v46 initWithData:uUIDValue2];
LABEL_38:
    v27 = toUUID;
    goto LABEL_39;
  }

  dataValue = [valueCopy dataValue];

  if (dataValue)
  {
    if (![valueCopy isMiniUUIDSet])
    {
      if ([valueCopy isError])
      {
        v72 = MEMORY[0x1E696ACD0];
        sizeValue2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        sizeValue3 = [valueCopy dataValue];
        v26 = [v72 nr_secureUnarchiveObjectOfClasses:sizeValue2 withData:sizeValue3];
        goto LABEL_9;
      }

      stringValue2 = [valueCopy dataValue];
LABEL_19:
      v27 = stringValue2;
      goto LABEL_40;
    }

    v46 = [NRMiniUUIDSet alloc];
    uUIDValue2 = [valueCopy dataValue];
    goto LABEL_46;
  }

  arrayValues = [valueCopy arrayValues];
  if (!arrayValues || (v56 = arrayValues, [valueCopy arrayValues], v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "count"), v57, v56, !v58))
  {
    v27 = 0;
    goto LABEL_40;
  }

  arrayValues2 = [valueCopy arrayValues];
  firstObject = [arrayValues2 firstObject];

  dictionaryKey = [firstObject dictionaryKey];

  if (!dictionaryKey)
  {
    if ([valueCopy isSet])
    {
      v62 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      arrayValues3 = [valueCopy arrayValues];
      v74 = [arrayValues3 countByEnumeratingWithState:&v85 objects:v97 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v86;
        do
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v86 != v76)
            {
              objc_enumerationMutation(arrayValues3);
            }

            v78 = [self unpackPropertyValue:*(*(&v85 + 1) + 8 * i)];
            if (v78)
            {
              [v62 addObject:v78];
            }
          }

          v75 = [arrayValues3 countByEnumeratingWithState:&v85 objects:v97 count:16];
        }

        while (v75);
      }
    }

    else
    {
      v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      arrayValues3 = [valueCopy arrayValues];
      v79 = [arrayValues3 countByEnumeratingWithState:&v89 objects:v98 count:16];
      if (v79)
      {
        v80 = v79;
        v81 = *v90;
        do
        {
          for (j = 0; j != v80; ++j)
          {
            if (*v90 != v81)
            {
              objc_enumerationMutation(arrayValues3);
            }

            v83 = [self unpackPropertyValue:*(*(&v89 + 1) + 8 * j)];
            if (v83)
            {
              [v62 addObject:v83];
            }
          }

          v80 = [arrayValues3 countByEnumeratingWithState:&v89 objects:v98 count:16];
        }

        while (v80);
      }
    }

    if (![v62 count])
    {
      v27 = 0;
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v84 = firstObject;
  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  arrayValues4 = [valueCopy arrayValues];
  v64 = [arrayValues4 countByEnumeratingWithState:&v93 objects:v99 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v94;
    do
    {
      for (k = 0; k != v65; ++k)
      {
        if (*v94 != v66)
        {
          objc_enumerationMutation(arrayValues4);
        }

        v68 = *(*(&v93 + 1) + 8 * k);
        dictionaryKey2 = [v68 dictionaryKey];
        v70 = [self unpackPropertyValue:dictionaryKey2];

        v71 = [self unpackPropertyValue:v68];
        if (v70)
        {
          if (v71)
          {
            [v62 setObject:v71 forKey:v70];
          }

          else
          {
            [v62 removeObjectForKey:v70];
          }
        }
      }

      v65 = [arrayValues4 countByEnumeratingWithState:&v93 objects:v99 count:16];
    }

    while (v65);
  }

  if ([v62 count])
  {
    firstObject = v84;
LABEL_91:
    v27 = [v62 copy];
    goto LABEL_92;
  }

  v27 = 0;
  firstObject = v84;
LABEL_92:

LABEL_40:

  return v27;
}

@end