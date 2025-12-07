@interface CMIOExtensionPropertyState
+ (CMIOExtensionPropertyState)propertyStateWithValue:(id)value;
+ (CMIOExtensionPropertyState)propertyStateWithValue:(id)value attributes:(CMIOExtensionPropertyAttributes *)attributes;
+ (id)copyPropertyStatesFromXPCDictionary:(id)dictionary;
+ (id)copyXPCDictionaryFromPropertyStates:(id)states;
+ (id)copyXPCDictionaryFromPropertyValues:(id)values;
- (BOOL)isEqual:(id)equal;
- (CMIOExtensionPropertyState)initWithCoder:(id)coder;
- (CMIOExtensionPropertyState)initWithValue:(id)value attributes:(CMIOExtensionPropertyAttributes *)attributes;
- (CMIOExtensionPropertyState)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCDictionary;
- (id)description;
- (void)copyXPCDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMIOExtensionPropertyState

+ (CMIOExtensionPropertyState)propertyStateWithValue:(id)value
{
  v3 = [objc_alloc(objc_opt_class()) initWithValue:value];

  return v3;
}

+ (CMIOExtensionPropertyState)propertyStateWithValue:(id)value attributes:(CMIOExtensionPropertyAttributes *)attributes
{
  v4 = [objc_alloc(objc_opt_class()) initWithValue:value attributes:attributes];

  return v4;
}

- (CMIOExtensionPropertyState)initWithValue:(id)value attributes:(CMIOExtensionPropertyAttributes *)attributes
{
  v15.receiver = self;
  v15.super_class = CMIOExtensionPropertyState;
  v6 = [(CMIOExtensionPropertyState *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_objectType = 0;
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectType = 4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objectType = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objectType = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objectType = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objectType = 6;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objectType = 7;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objectType = 8;
                }

                else
                {
                  v9 = CFGetTypeID(value);
                  if (v9 != CVPixelBufferGetTypeID())
                  {

                    v12 = MEMORY[0x277CBEAD8];
                    v13 = *MEMORY[0x277CBE660];
                    v14 = @"value argument must be a NSString or a NSData or a NSNumber or a CMIOExtensionStreamFormat";
                    goto LABEL_30;
                  }

                  objectType = 9;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    objectType = 1;
  }

  v7->_objectType = objectType;
  if (attributes)
  {
    if ([(CMIOExtensionPropertyAttributes *)attributes objectType]== 1)
    {
      objectType = v7->_objectType;
      goto LABEL_24;
    }

    objectType = [(CMIOExtensionPropertyAttributes *)attributes objectType];
    if (objectType == v7->_objectType)
    {
      goto LABEL_24;
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE660];
    v14 = @"value argument must be the same type";
LABEL_30:
    [v12 raise:v13 format:v14];
    return 0;
  }

LABEL_24:
  if (objectType == 9)
  {
    v10 = value;
  }

  else
  {
    v10 = [value copy];
  }

  v7->_value = v10;
  v7->_attributes = attributes;
  v7->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionPropertyState: value %@, attributes %@>", v7->_value, v7->_attributes];
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionPropertyState;
  [(CMIOExtensionPropertyState *)&v3 dealloc];
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
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  value = self->_value;
  if (value == [equal value] || (v6 = objc_msgSend(self->_value, "isEqual:", objc_msgSend(equal, "value"))) != 0)
  {
    attributes = self->_attributes;
    if (attributes != [equal attributes])
    {
      v8 = self->_attributes;
      attributes = [equal attributes];

      LOBYTE(v6) = [(CMIOExtensionPropertyAttributes *)v8 isEqual:attributes];
      return v6;
    }

LABEL_9:
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMIOExtensionPropertyState allocWithZone:zone];
  value = self->_value;
  attributes = self->_attributes;

  return [(CMIOExtensionPropertyState *)v4 initWithValue:value attributes:attributes];
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  if (value)
  {
    [coder encodeObject:value forKey:@"value"];
  }

  if (self->_attributes)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (CMIOExtensionPropertyState)initWithCoder:(id)coder
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"value"}];
  v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];

  return [(CMIOExtensionPropertyState *)self initWithValue:v11 attributes:v12];
}

- (id)copyXPCDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "type", self->_objectType);
  attributes = self->_attributes;
  if (attributes)
  {
    copyXPCDictionary = [(CMIOExtensionPropertyAttributes *)attributes copyXPCDictionary];
    if (copyXPCDictionary)
    {
      v7 = copyXPCDictionary;
      xpc_dictionary_set_value(v3, "attributes", copyXPCDictionary);
      xpc_release(v7);
    }

    else
    {
      v8 = CMIOLog(0, v6);
      if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionPropertyState copyXPCDictionary];
      }
    }
  }

  objectType = self->_objectType;
  if (objectType > 4)
  {
    if (objectType <= 6)
    {
      if (objectType != 5)
      {
        value = self->_value;
        if (value)
        {
          v28 = cmio_XPCMessageSetCFDictionary(v3, "value", value);
          if (v28)
          {
            v30 = CMIOLog(v28, v29);
            if (v30)
            {
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState copyXPCDictionary];
              }
            }
          }
        }

        return v3;
      }

      v35 = self->_value;
      if (!v35)
      {
        return v3;
      }

      copyXPCDictionary2 = [v35 copyXPCDictionary];
      if (!copyXPCDictionary2)
      {
        v38 = CMIOLog(0, v37);
        if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionPropertyState copyXPCDictionary];
        }

        return v3;
      }
    }

    else
    {
      if (objectType == 7)
      {
        v39 = self->_value;
        if (v39)
        {
          if ([v39 count])
          {
            v40 = cmio_XPCMessageSetCFArray(v3, "value", v39);
            if (v40)
            {
              v42 = CMIOLog(v40, v41);
              if (v42)
              {
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  [CMIOExtensionPropertyState copyXPCDictionary];
                }
              }
            }
          }
        }

        return v3;
      }

      if (objectType != 8)
      {
        if (objectType != 9)
        {
          goto LABEL_58;
        }

        v14 = self->_value;
        if (!v14)
        {
          return v3;
        }

        empty = xpc_dictionary_create_empty();
        if (!empty)
        {
          v46 = CMIOLog(0, v16);
          if (v46 && os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState copyXPCDictionary];
          }

          return v3;
        }

        v17 = empty;
        IOSurface = CVPixelBufferGetIOSurface(v14);
        if (!IOSurface)
        {
          v48 = CMIOLog(0, v19);
          if (v48 && os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState copyXPCDictionary];
          }

          goto LABEL_57;
        }

        XPCObject = IOSurfaceCreateXPCObject(IOSurface);
        xpc_dictionary_set_value(v17, "surface", XPCObject);
        xpc_release(XPCObject);
        v21 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], v14, 1u);
        if (v21)
        {
          v22 = v21;
          cmio_XPCMessageSetCFDictionary(v17, "attachments", v21);
          CFRelease(v22);
        }

LABEL_56:
        xpc_dictionary_set_value(v3, "value", v17);
LABEL_57:
        xpc_release(v17);
        return v3;
      }

      v43 = self->_value;
      if (!v43)
      {
        return v3;
      }

      copyXPCDictionary2 = [v43 copyXPCDictionary];
      if (!copyXPCDictionary2)
      {
        v47 = CMIOLog(0, v44);
        if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionPropertyState copyXPCDictionary];
        }

        return v3;
      }
    }

    v17 = copyXPCDictionary2;
    goto LABEL_56;
  }

  if (objectType <= 2)
  {
    if (objectType < 2)
    {
      return v3;
    }

    if (objectType == 2)
    {
      v10 = self->_value;
      if (v10)
      {
        v11 = cmio_XPCMessageSetCFData(v3, "value", v10);
        if (v11)
        {
          v13 = CMIOLog(v11, v12);
          if (v13)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyState copyXPCDictionary];
            }
          }
        }
      }

      return v3;
    }

LABEL_58:
    xpc_release(v3);
    return 0;
  }

  if (objectType == 3)
  {
    v31 = self->_value;
    if (v31)
    {
      v32 = cmio_XPCMessageSetCFNumber(v3, "value", v31);
      if (v32)
      {
        v34 = CMIOLog(v32, v33);
        if (v34)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState copyXPCDictionary];
          }
        }
      }
    }
  }

  else
  {
    v23 = self->_value;
    if (v23)
    {
      v24 = cmio_XPCMessageSetCFString(v3, "value", v23);
      if (v24)
      {
        v26 = CMIOLog(v24, v25);
        if (v26)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState copyXPCDictionary];
          }
        }
      }
    }
  }

  return v3;
}

- (CMIOExtensionPropertyState)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v51 = 0;
    uint64 = xpc_dictionary_get_uint64(dictionary, "type");
    dictionary = xpc_dictionary_get_dictionary(dictionary, "attributes");
    if (dictionary)
    {
      dictionary = [[CMIOExtensionPropertyAttributes alloc] initWithXPCDictionary:dictionary];
      if (!dictionary)
      {
        v8 = CMIOLog(0, v7);
        dictionary = v8;
        if (v8)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState initWithXPCDictionary:];
          }

          dictionary = 0;
        }
      }
    }

    if (uint64 > 5)
    {
      if (uint64 <= 7)
      {
        if (uint64 == 6)
        {
          v34 = cmio_XPCMessageCopyCFDictionary(dictionary, "value", &v51);
          if (v34)
          {
            v36 = CMIOLog(v34, v35);
            if (v36)
            {
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState initWithXPCDictionary:];
              }
            }
          }
        }

        else
        {
          v13 = cmio_XPCMessageCopyCFArray(dictionary, "value", &v51);
          if (v13)
          {
            v15 = CMIOLog(v13, v14);
            if (v15)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState initWithXPCDictionary:];
              }
            }
          }
        }

        goto LABEL_50;
      }

      if (uint64 != 8)
      {
        if (uint64 == 9)
        {
          value = xpc_dictionary_get_value(dictionary, "value");
          if (value)
          {
            v22 = value;
            v23 = xpc_dictionary_get_value(value, "surface");
            if (v23)
            {
              v25 = IOSurfaceLookupFromXPCObject(v23);
              if (v25)
              {
                v27 = v25;
                pixelBufferOut = 0;
                v28 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v25, 0, &pixelBufferOut);
                CFRelease(v27);
                v30 = pixelBufferOut;
                if (v28 || !pixelBufferOut)
                {
                  if (pixelBufferOut)
                  {
                    CFRelease(pixelBufferOut);
                  }

                  v48 = CMIOLog(v30, v29);
                  if (v48 && os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    [CMIOExtensionPropertyState initWithXPCDictionary:];
                  }
                }

                else
                {
                  v51 = pixelBufferOut;
                  theAttachments = 0;
                  cmio_XPCMessageCopyCFDictionary(v22, "attachments", &theAttachments);
                  if (theAttachments)
                  {
                    CMSetAttachments(pixelBufferOut, theAttachments, 1u);
                    CFRelease(theAttachments);
                  }
                }
              }

              else
              {
                v47 = CMIOLog(0, v26);
                if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  [CMIOExtensionPropertyState initWithXPCDictionary:];
                }
              }
            }

            else
            {
              v46 = CMIOLog(0, v24);
              if (v46 && os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState initWithXPCDictionary:];
              }
            }
          }

          else
          {
            v45 = CMIOLog(0, v21);
            if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyState initWithXPCDictionary:];
            }
          }
        }

        goto LABEL_50;
      }

      v40 = xpc_dictionary_get_value(dictionary, "value");
      if (!v40)
      {
        v43 = CMIOLog(0, v41);
        if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionPropertyState initWithXPCDictionary:];
        }

        goto LABEL_50;
      }

      v18 = v40;
      v19 = CMIOExtensionStreamCustomClockConfiguration;
    }

    else
    {
      if (uint64 <= 3)
      {
        if (uint64 == 2)
        {
          v31 = cmio_XPCMessageCopyCFData(dictionary, "value", &v51);
          if (v31)
          {
            v33 = CMIOLog(v31, v32);
            if (v33)
            {
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState initWithXPCDictionary:];
              }
            }
          }
        }

        else if (uint64 == 3)
        {
          v9 = cmio_XPCMessageCopyCFNumber(dictionary, "value", &v51);
          if (v9)
          {
            v11 = CMIOLog(v9, v10);
            if (v11)
            {
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState initWithXPCDictionary:];
              }
            }
          }
        }

        goto LABEL_50;
      }

      if (uint64 == 4)
      {
        v37 = cmio_XPCMessageCopyCFString(dictionary, "value", &v51);
        if (v37)
        {
          v39 = CMIOLog(v37, v38);
          if (v39)
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyState initWithXPCDictionary:];
            }
          }
        }

        goto LABEL_50;
      }

      v16 = xpc_dictionary_get_value(dictionary, "value");
      if (!v16)
      {
        v44 = CMIOLog(0, v17);
        if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionPropertyState initWithXPCDictionary:];
        }

        goto LABEL_50;
      }

      v18 = v16;
      v19 = CMIOExtensionStreamFormat;
    }

    v51 = [[v19 alloc] initWithXPCDictionary:v18];
LABEL_50:
    v12 = [(CMIOExtensionPropertyState *)self initWithValue:v51 attributes:dictionary];

    return v12;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
  return 0;
}

+ (id)copyXPCDictionaryFromPropertyStates:(id)states
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyStates___block_invoke;
  v6[3] = &unk_27885BF70;
  v6[4] = v4;
  [states enumerateKeysAndObjectsUsingBlock:v6];
  return v4;
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyStates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a3 copyXPCDictionary];
  if (v5)
  {
    v7 = v5;
    xpc_dictionary_set_value(*(a1 + 32), [a2 UTF8String], v5);

    xpc_release(v7);
  }

  else
  {
    v8 = CMIOLog(0, v6);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyStates___block_invoke_cold_1();
    }
  }
}

+ (id)copyXPCDictionaryFromPropertyValues:(id)values
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke;
  v6[3] = &unk_27885B850;
  v6[4] = v4;
  [values enumerateKeysAndObjectsUsingBlock:v6];
  return v4;
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [[CMIOExtensionPropertyState alloc] initWithValue:a3];
  if (v5)
  {
    v7 = v5;
    v8 = [(CMIOExtensionPropertyState *)v5 copyXPCDictionary];
    if (v8)
    {
      v10 = v8;
      xpc_dictionary_set_value(*(a1 + 32), [a2 UTF8String], v8);
      xpc_release(v10);
    }

    else
    {
      v12 = CMIOLog(0, v9);
      if (v12)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    v11 = CMIOLog(0, v6);
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke_cold_2();
    }
  }
}

+ (id)copyPropertyStatesFromXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __66__CMIOExtensionPropertyState_copyPropertyStatesFromXPCDictionary___block_invoke;
    applier[3] = &unk_27885BF98;
    applier[4] = v4;
    xpc_dictionary_apply(dictionary, applier);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
    return 0;
  }

  return v4;
}

uint64_t __66__CMIOExtensionPropertyState_copyPropertyStatesFromXPCDictionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[CMIOExtensionPropertyState alloc] initWithXPCDictionary:a3];
  if (v5)
  {
    v7 = v5;
    [*(a1 + 32) setObject:v5 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", a2)}];
  }

  else
  {
    v8 = CMIOLog(0, v6);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionPropertyState_copyPropertyStatesFromXPCDictionary___block_invoke_cold_1();
    }
  }

  return 1;
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
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
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
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
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
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithXPCDictionary:.cold.9()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)initWithXPCDictionary:.cold.10()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithXPCDictionary:.cold.11()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithXPCDictionary:.cold.12()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyStates___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __66__CMIOExtensionPropertyState_copyPropertyStatesFromXPCDictionary___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end