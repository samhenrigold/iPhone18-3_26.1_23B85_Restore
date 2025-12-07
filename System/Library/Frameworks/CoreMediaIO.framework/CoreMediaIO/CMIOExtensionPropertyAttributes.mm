@interface CMIOExtensionPropertyAttributes
+ (CMIOExtensionPropertyAttributes)propertyAttributesWithMinValue:(id)minValue maxValue:(id)maxValue validValues:(NSArray *)validValues readOnly:(BOOL)readOnly;
+ (CMIOExtensionPropertyAttributes)propertyAttributesWithSharedStreamDefaultValue:(id)value minValue:(id)minValue maxValue:(id)maxValue validValues:(id)values;
+ (CMIOExtensionPropertyAttributes)readOnlyPropertyAttribute;
- (BOOL)isEqual:(id)equal;
- (CMIOExtensionPropertyAttributes)initWithCoder:(id)coder;
- (CMIOExtensionPropertyAttributes)initWithMinValue:(id)minValue maxValue:(id)maxValue validValues:(NSArray *)validValues readOnly:(BOOL)readOnly;
- (CMIOExtensionPropertyAttributes)initWithMinValue:(id)value maxValue:(id)maxValue validValues:(id)values sharedStreamDefaultValue:(id)defaultValue;
- (CMIOExtensionPropertyAttributes)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCDictionary;
- (id)description;
- (void)copyXPCDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMIOExtensionPropertyAttributes

+ (CMIOExtensionPropertyAttributes)propertyAttributesWithMinValue:(id)minValue maxValue:(id)maxValue validValues:(NSArray *)validValues readOnly:(BOOL)readOnly
{
  v6 = [objc_alloc(objc_opt_class()) initWithMinValue:minValue maxValue:maxValue validValues:validValues readOnly:readOnly];

  return v6;
}

+ (CMIOExtensionPropertyAttributes)propertyAttributesWithSharedStreamDefaultValue:(id)value minValue:(id)minValue maxValue:(id)maxValue validValues:(id)values
{
  v6 = [objc_alloc(objc_opt_class()) initWithMinValue:minValue maxValue:maxValue validValues:values sharedStreamDefaultValue:value];

  return v6;
}

- (CMIOExtensionPropertyAttributes)initWithMinValue:(id)value maxValue:(id)maxValue validValues:(id)values sharedStreamDefaultValue:(id)defaultValue
{
  result = [(CMIOExtensionPropertyAttributes *)self initWithMinValue:value maxValue:maxValue validValues:values readOnly:0];
  if (result)
  {
    result->_sharedStreamDefaultValue = defaultValue;
  }

  return result;
}

- (CMIOExtensionPropertyAttributes)initWithMinValue:(id)minValue maxValue:(id)maxValue validValues:(NSArray *)validValues readOnly:(BOOL)readOnly
{
  v24.receiver = self;
  v24.super_class = CMIOExtensionPropertyAttributes;
  v10 = [(CMIOExtensionPropertyAttributes *)&v24 init];
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  v10->_sharedStreamDefaultValue = 0;
  if (minValue)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = 6;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_64;
              }

              v12 = 7;
            }
          }
        }
      }
    }

    objectType = v11->_objectType;
    if (objectType)
    {
      if (objectType != v12)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ value argument must be the same type", v11}];
      }
    }

    else
    {
      v11->_objectType = v12;
    }

    v11->_minValue = [minValue copy];
  }

  if (maxValue)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = 6;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_64;
              }

              v14 = 7;
            }
          }
        }
      }
    }

    v15 = v11->_objectType;
    if (v15)
    {
      if (v15 != v14)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v11->_objectType = v14;
    }

    v11->_maxValue = [maxValue copy];
  }

  if (validValues)
  {
    if (![(NSArray *)validValues count])
    {
LABEL_57:
      v11->_validValues = [(NSArray *)validValues copy];
      goto LABEL_58;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 4;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 2;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 3;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 5;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 6;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 7;
LABEL_52:
      v17 = v11->_objectType;
      if (v17)
      {
        if (v17 != v16)
        {
LABEL_54:

          v18 = MEMORY[0x277CBEAD8];
          v19 = *MEMORY[0x277CBE660];
          v20 = @"value argument must be the same type";
LABEL_55:
          [v18 raise:v19 format:v20];
          return 0;
        }
      }

      else
      {
        v11->_objectType = v16;
      }

      goto LABEL_57;
    }

LABEL_64:

    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE660];
    v20 = @"value argument must be a NSString or a NSData or a NSNumber or a CMIOExtensionStreamFormat or a NSDictionary or a NSArray";
    goto LABEL_55;
  }

LABEL_58:
  if (!v11->_objectType)
  {
    v11->_objectType = 1;
  }

  v11->_readOnly = readOnly;
  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  v22 = 78;
  if (v11->_readOnly)
  {
    v22 = 89;
  }

  v11->_description = [v21 initWithFormat:@"<CMIOExtensionPropertyAttributes: %@:%@:%@:(%c)>", *&v11->_minValue, v11->_validValues, v22];
  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionPropertyAttributes;
  [(CMIOExtensionPropertyAttributes *)&v3 dealloc];
}

+ (CMIOExtensionPropertyAttributes)readOnlyPropertyAttribute
{
  if (readOnlyPropertyAttribute_onceToken != -1)
  {
    +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute];
  }

  return readOnlyPropertyAttribute_gReadOnlyAttribute;
}

CMIOExtensionPropertyAttributes *__60__CMIOExtensionPropertyAttributes_readOnlyPropertyAttribute__block_invoke()
{
  result = [[CMIOExtensionPropertyAttributes alloc] initWithMinValue:0 maxValue:0 validValues:0 readOnly:1];
  readOnlyPropertyAttribute_gReadOnlyAttribute = result;
  return result;
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v17 = v5;
    v18 = v4;
    v19 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      minValue = self->_minValue;
      if (minValue == [equal minValue] || (v12 = objc_msgSend(self->_minValue, "isEqual:", objc_msgSend(equal, "minValue"))) != 0)
      {
        maxValue = self->_maxValue;
        if (maxValue == [equal maxValue] || (v12 = objc_msgSend(self->_maxValue, "isEqual:", objc_msgSend(equal, "maxValue"))) != 0)
        {
          validValues = self->_validValues;
          if (validValues == [equal validValues] || (v12 = -[NSArray isEqual:](self->_validValues, "isEqual:", objc_msgSend(equal, "validValues"))) != 0)
          {
            readOnly = self->_readOnly;
            LOBYTE(v12) = readOnly == [equal isReadOnly];
          }
        }
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMIOExtensionPropertyAttributes allocWithZone:zone];
  minValue = self->_minValue;
  maxValue = self->_maxValue;
  validValues = self->_validValues;
  readOnly = self->_readOnly;

  return [(CMIOExtensionPropertyAttributes *)v4 initWithMinValue:minValue maxValue:maxValue validValues:validValues readOnly:readOnly];
}

- (void)encodeWithCoder:(id)coder
{
  minValue = self->_minValue;
  if (minValue)
  {
    [coder encodeObject:minValue forKey:@"min"];
  }

  maxValue = self->_maxValue;
  if (maxValue)
  {
    [coder encodeObject:maxValue forKey:@"max"];
  }

  validValues = self->_validValues;
  if (validValues)
  {
    [coder encodeObject:validValues forKey:@"validValues"];
  }

  readOnly = self->_readOnly;

  [coder encodeBool:readOnly forKey:@"readonly"];
}

- (CMIOExtensionPropertyAttributes)initWithCoder:(id)coder
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v5 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [coder decodeObjectOfClasses:v11 forKey:@"min"];
  v13 = [coder decodeObjectOfClasses:v11 forKey:@"max"];
  v14 = [coder decodeObjectOfClasses:v11 forKey:@"validValues"];
  v15 = [coder decodeBoolForKey:@"readonly"];

  return [(CMIOExtensionPropertyAttributes *)self initWithMinValue:v12 maxValue:v13 validValues:v14 readOnly:v15];
}

- (id)copyXPCDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "type", self->_objectType);
  xpc_dictionary_set_BOOL(v3, "readonly", self->_readOnly);
  objectType = self->_objectType;
  if (objectType > 3)
  {
    if (objectType > 5)
    {
      if (objectType == 6)
      {
        minValue = self->_minValue;
        if (minValue)
        {
          v46 = cmio_XPCMessageSetCFDictionary(v3, "min", minValue);
          if (v46)
          {
            v48 = CMIOLog(v46, v47);
            if (v48)
            {
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        maxValue = self->_maxValue;
        if (maxValue)
        {
          v50 = cmio_XPCMessageSetCFDictionary(v3, "max", maxValue);
          if (v50)
          {
            v52 = CMIOLog(v50, v51);
            if (v52)
            {
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        validValues = self->_validValues;
        if (validValues)
        {
          v54 = cmio_XPCMessageSetCFArray(v3, "validValues", validValues);
          if (v54)
          {
            v56 = CMIOLog(v54, v55);
            if (v56)
            {
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }
      }

      else
      {
        if (objectType != 7)
        {
          goto LABEL_87;
        }

        v21 = self->_minValue;
        if (v21)
        {
          v22 = cmio_XPCMessageSetCFArray(v3, "min", v21);
          if (v22)
          {
            v24 = CMIOLog(v22, v23);
            if (v24)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        v25 = self->_maxValue;
        if (v25)
        {
          v26 = cmio_XPCMessageSetCFArray(v3, "max", v25);
          if (v26)
          {
            v28 = CMIOLog(v26, v27);
            if (v28)
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        v29 = self->_validValues;
        if (v29)
        {
          v30 = cmio_XPCMessageSetCFArray(v3, "validValues", v29);
          if (v30)
          {
            v32 = CMIOLog(v30, v31);
            if (v32)
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }
      }
    }

    else if (objectType == 4)
    {
      v33 = self->_minValue;
      if (v33)
      {
        v34 = cmio_XPCMessageSetCFString(v3, "min", v33);
        if (v34)
        {
          v36 = CMIOLog(v34, v35);
          if (v36)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyAttributes copyXPCDictionary];
            }
          }
        }
      }

      v37 = self->_maxValue;
      if (v37)
      {
        v38 = cmio_XPCMessageSetCFString(v3, "max", v37);
        if (v38)
        {
          v40 = CMIOLog(v38, v39);
          if (v40)
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyAttributes copyXPCDictionary];
            }
          }
        }
      }

      v41 = self->_validValues;
      if (v41)
      {
        v42 = cmio_XPCMessageSetCFArray(v3, "validValues", v41);
        if (v42)
        {
          v44 = CMIOLog(v42, v43);
          if (v44)
          {
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyAttributes copyXPCDictionary];
            }
          }
        }
      }
    }

    else
    {
      v17 = self->_minValue;
      if (v17)
      {
        copyXPCDictionary = [v17 copyXPCDictionary];
        if (copyXPCDictionary)
        {
          v20 = copyXPCDictionary;
          xpc_dictionary_set_value(v3, "min", copyXPCDictionary);
          xpc_release(v20);
        }

        else
        {
          v69 = CMIOLog(0, v19);
          if (v69 && os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }

      v70 = self->_maxValue;
      if (v70)
      {
        copyXPCDictionary2 = [v70 copyXPCDictionary];
        if (copyXPCDictionary2)
        {
          v73 = copyXPCDictionary2;
          xpc_dictionary_set_value(v3, "max", copyXPCDictionary2);
          xpc_release(v73);
        }

        else
        {
          v74 = CMIOLog(0, v72);
          if (v74 && os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }

      if (self->_validValues)
      {
        v75 = [CMIOExtensionStreamFormat copyXPCArrayFromFormats:?];
        if (v75)
        {
          v76 = v75;
          xpc_dictionary_set_value(v3, "validValues", v75);
          xpc_release(v76);
        }
      }
    }
  }

  else
  {
    if (objectType < 2)
    {
      return v3;
    }

    if (objectType != 2)
    {
      if (objectType == 3)
      {
        v5 = self->_minValue;
        if (v5)
        {
          v6 = cmio_XPCMessageSetCFNumber(v3, "min", v5);
          if (v6)
          {
            v8 = CMIOLog(v6, v7);
            if (v8)
            {
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        v9 = self->_maxValue;
        if (v9)
        {
          v10 = cmio_XPCMessageSetCFNumber(v3, "max", v9);
          if (v10)
          {
            v12 = CMIOLog(v10, v11);
            if (v12)
            {
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        v13 = self->_validValues;
        if (v13)
        {
          v14 = cmio_XPCMessageSetCFArray(v3, "validValues", v13);
          if (v14)
          {
            v16 = CMIOLog(v14, v15);
            if (v16)
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        return v3;
      }

LABEL_87:
      xpc_release(v3);
      return 0;
    }

    v57 = self->_minValue;
    if (v57)
    {
      v58 = cmio_XPCMessageSetCFData(v3, "min", v57);
      if (v58)
      {
        v60 = CMIOLog(v58, v59);
        if (v60)
        {
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }
    }

    v61 = self->_maxValue;
    if (v61)
    {
      v62 = cmio_XPCMessageSetCFData(v3, "max", v61);
      if (v62)
      {
        v64 = CMIOLog(v62, v63);
        if (v64)
        {
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }
    }

    v65 = self->_validValues;
    if (v65)
    {
      v66 = cmio_XPCMessageSetCFArray(v3, "validValues", v65);
      if (v66)
      {
        v68 = CMIOLog(v66, v67);
        if (v68)
        {
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }
    }
  }

  return v3;
}

- (CMIOExtensionPropertyAttributes)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v58 = 0;
    v59 = 0;
    v57 = 0;
    uint64 = xpc_dictionary_get_uint64(dictionary, "type");
    v6 = xpc_dictionary_get_BOOL(dictionary, "readonly");
    if (uint64 > 4)
    {
      switch(uint64)
      {
        case 5:
          value = xpc_dictionary_get_value(dictionary, "min");
          if (value)
          {
            v59 = [[CMIOExtensionStreamFormat alloc] initWithXPCDictionary:value];
          }

          v36 = xpc_dictionary_get_value(dictionary, "max");
          if (v36)
          {
            v58 = [[CMIOExtensionStreamFormat alloc] initWithXPCDictionary:v36];
          }

          v37 = xpc_dictionary_get_value(dictionary, "validValues");
          if (v37)
          {
            v57 = [CMIOExtensionStreamFormat copyFormatsFromXPCArray:v37];
          }

          break;
        case 6:
          v47 = cmio_XPCMessageCopyCFDictionary(dictionary, "min", &v59);
          if (v47)
          {
            v49 = CMIOLog(v47, v48);
            if (v49)
            {
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v50 = cmio_XPCMessageCopyCFDictionary(dictionary, "max", &v58);
          if (v50)
          {
            v52 = CMIOLog(v50, v51);
            if (v52)
            {
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v53 = cmio_XPCMessageCopyCFArray(dictionary, "validValues", &v57);
          if (v53)
          {
            v55 = CMIOLog(v53, v54);
            if (v55)
            {
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
        case 7:
          v17 = cmio_XPCMessageCopyCFArray(dictionary, "min", &v59);
          if (v17)
          {
            v19 = CMIOLog(v17, v18);
            if (v19)
            {
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v20 = cmio_XPCMessageCopyCFArray(dictionary, "max", &v58);
          if (v20)
          {
            v22 = CMIOLog(v20, v21);
            if (v22)
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v23 = cmio_XPCMessageCopyCFArray(dictionary, "validValues", &v57);
          if (v23)
          {
            v25 = CMIOLog(v23, v24);
            if (v25)
            {
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
      }
    }

    else
    {
      switch(uint64)
      {
        case 2:
          v26 = cmio_XPCMessageCopyCFData(dictionary, "min", &v59);
          if (v26)
          {
            v28 = CMIOLog(v26, v27);
            if (v28)
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v29 = cmio_XPCMessageCopyCFData(dictionary, "max", &v58);
          if (v29)
          {
            v31 = CMIOLog(v29, v30);
            if (v31)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v32 = cmio_XPCMessageCopyCFArray(dictionary, "validValues", &v57);
          if (v32)
          {
            v34 = CMIOLog(v32, v33);
            if (v34)
            {
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
        case 3:
          v38 = cmio_XPCMessageCopyCFNumber(dictionary, "min", &v59);
          if (v38)
          {
            v40 = CMIOLog(v38, v39);
            if (v40)
            {
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v41 = cmio_XPCMessageCopyCFNumber(dictionary, "max", &v58);
          if (v41)
          {
            v43 = CMIOLog(v41, v42);
            if (v43)
            {
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v44 = cmio_XPCMessageCopyCFArray(dictionary, "validValues", &v57);
          if (v44)
          {
            v46 = CMIOLog(v44, v45);
            if (v46)
            {
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
        case 4:
          v7 = cmio_XPCMessageCopyCFString(dictionary, "min", &v59);
          if (v7)
          {
            v9 = CMIOLog(v7, v8);
            if (v9)
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v10 = cmio_XPCMessageCopyCFString(dictionary, "max", &v58);
          if (v10)
          {
            v12 = CMIOLog(v10, v11);
            if (v12)
            {
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          v13 = cmio_XPCMessageCopyCFArray(dictionary, "validValues", &v57);
          if (v13)
          {
            v15 = CMIOLog(v13, v14);
            if (v15)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
      }
    }

    v16 = [(CMIOExtensionPropertyAttributes *)self initWithMinValue:v59 maxValue:v58 validValues:v57 readOnly:v6];
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
    return 0;
  }

  return v16;
}

- (void)copyXPCDictionary
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.4()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.5()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.6()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.7()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.8()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.9()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.10()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.11()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.12()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.13()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.14()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.15()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end