@interface CMIOExtensionStreamFormat
+ (CMIOExtensionStreamFormat)streamFormatWithFormatDescription:(CMFormatDescriptionRef)formatDescription maxFrameDuration:(CMTime *)maxFrameDuration minFrameDuration:(CMTime *)minFrameDuration validFrameDurations:(NSArray *)validFrameDurations;
+ (id)copyFormatsFromXPCArray:(id)array;
+ (id)copyXPCArrayFromFormats:(id)formats;
- (BOOL)isEqual:(id)equal;
- (CMIOExtensionStreamFormat)initWithCoder:(id)coder;
- (CMIOExtensionStreamFormat)initWithFormatDescription:(CMFormatDescriptionRef)formatDescription maxFrameDuration:(CMTime *)maxFrameDuration minFrameDuration:(CMTime *)minFrameDuration validFrameDurations:(NSArray *)validFrameDurations;
- (CMIOExtensionStreamFormat)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCDictionary;
- (id)description;
- (void)copyXPCDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMIOExtensionStreamFormat

+ (CMIOExtensionStreamFormat)streamFormatWithFormatDescription:(CMFormatDescriptionRef)formatDescription maxFrameDuration:(CMTime *)maxFrameDuration minFrameDuration:(CMTime *)minFrameDuration validFrameDurations:(NSArray *)validFrameDurations
{
  v10 = objc_alloc(objc_opt_class());
  v13 = *maxFrameDuration;
  v12 = *minFrameDuration;
  return [v10 initWithFormatDescription:formatDescription maxFrameDuration:&v13 minFrameDuration:&v12 validFrameDurations:validFrameDurations];
}

- (CMIOExtensionStreamFormat)initWithFormatDescription:(CMFormatDescriptionRef)formatDescription maxFrameDuration:(CMTime *)maxFrameDuration minFrameDuration:(CMTime *)minFrameDuration validFrameDurations:(NSArray *)validFrameDurations
{
  v24.receiver = self;
  v24.super_class = CMIOExtensionStreamFormat;
  v10 = [(CMIOExtensionStreamFormat *)&v24 init];
  v12 = v10;
  if (v10)
  {
    if (formatDescription)
    {
      v10->_formatDescription = CFRetain(formatDescription);
      epoch = minFrameDuration->epoch;
      *&v12->_minFrameDuration.value = *&minFrameDuration->value;
      v12->_minFrameDuration.epoch = epoch;
      v14 = *&maxFrameDuration->value;
      v12->_maxFrameDuration.epoch = maxFrameDuration->epoch;
      *&v12->_maxFrameDuration.value = v14;
      v12->_validFrameDurations = validFrameDurations;
      if ((v12->_minFrameDuration.flags & 1) != 0 && v12->_minFrameDuration.value && (v12->_maxFrameDuration.flags & 1) != 0 && v12->_maxFrameDuration.value)
      {
        v15 = objc_alloc(MEMORY[0x277CCACA8]);
        v16 = v12->_formatDescription;
        time = v12->_minFrameDuration;
        v17 = (CMTimeGetSeconds(&time) * 1000.0);
        time = v12->_maxFrameDuration;
        v18 = [v15 initWithFormat:@"<CMIOExtensionStreamFormat: format %@, min %ld ms, max %ld ms>", v16, v17, (CMTimeGetSeconds(&time) * 1000.0)];
      }

      else
      {
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionStreamFormat: format %@>", v12->_formatDescription, v21, v22];
      }

      v12->_description = v18;
    }

    else
    {
      v19 = CMIOLog(v10, v11);
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionStreamFormat initWithFormatDescription:maxFrameDuration:minFrameDuration:validFrameDurations:];
      }

      return 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  v4.receiver = self;
  v4.super_class = CMIOExtensionStreamFormat;
  [(CMIOExtensionStreamFormat *)&v4 dealloc];
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
    LOBYTE(v7) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_13:
      LOBYTE(v7) = 0;
      return v7;
    }

    v7 = CMFormatDescriptionEqual(self->_formatDescription, [equal formatDescription]);
    if (v7)
    {
      if (equal)
      {
        objc_msgSend_minFrameDuration(equal);
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      minFrameDuration = self->_minFrameDuration;
      if (CMTimeCompare(&minFrameDuration, &time2))
      {
        goto LABEL_13;
      }

      if (equal)
      {
        objc_msgSend_maxFrameDuration(equal);
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      minFrameDuration = self->_maxFrameDuration;
      if (CMTimeCompare(&minFrameDuration, &time2))
      {
        goto LABEL_13;
      }

      validFrameDurations = self->_validFrameDurations;
      if (validFrameDurations == [equal validFrameDurations])
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        LOBYTE(v7) = -[NSArray isEqual:](self->_validFrameDurations, "isEqual:", [equal validFrameDurations]);
      }
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMIOExtensionStreamFormat allocWithZone:zone];
  formatDescription = self->_formatDescription;
  validFrameDurations = self->_validFrameDurations;
  maxFrameDuration = self->_maxFrameDuration;
  minFrameDuration = self->_minFrameDuration;
  return [(CMIOExtensionStreamFormat *)v4 initWithFormatDescription:formatDescription maxFrameDuration:&maxFrameDuration minFrameDuration:&minFrameDuration validFrameDurations:validFrameDurations];
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  copyXPCDictionary = [(CMIOExtensionStreamFormat *)self copyXPCDictionary];
  if (copyXPCDictionary)
  {
    v7 = copyXPCDictionary;
    [coder encodeXPCObject:copyXPCDictionary forKey:@"streamFormat"];

    xpc_release(v7);
  }

  else
  {
    v8 = CMIOLog(0, v6);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionStreamFormat encodeWithCoder:];
    }
  }
}

- (CMIOExtensionStreamFormat)initWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  v5 = [coder decodeXPCObjectOfType:MEMORY[0x277D86468] forKey:@"streamFormat"];
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ nil xpc object", self}];
  }

  return [(CMIOExtensionStreamFormat *)self initWithXPCDictionary:v5];
}

- (id)copyXPCDictionary
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  if (CMFormatDescriptionGetMediaType(self->_formatDescription) == 1836415096)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(self->_formatDescription);
    Extensions = CMFormatDescriptionGetExtensions(self->_formatDescription);
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, "muxtype", MediaSubType);
    if (Extensions)
    {
      Value = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC03E0]);
      if (Value)
      {
        v30 = 0;
        v29 = 0u;
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = 0u;
        v24 = 0u;
        v23 = 0u;
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 1061109567;
        CFStringGetCString(Value, &v17, 200, 0x8000100u);
        xpc_dictionary_set_string(v6, "vendor", &v17);
      }

      v8 = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC0310]);
      if (v8)
      {
        v30 = 0;
        v29 = 0u;
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = 0u;
        v24 = 0u;
        v23 = 0u;
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 1061109567;
        CFStringGetCString(v8, &v17, 200, 0x8000100u);
        xpc_dictionary_set_string(v6, "name", &v17);
      }
    }

    xpc_dictionary_set_value(v3, "muxFormatDescription", v6);
    xpc_release(v6);
  }

  else
  {
    v9 = FigXPCMessageSetFormatDescription();
    if (v9)
    {
      v11 = CMIOLog(v9, v10);
      if (v11)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionStreamFormat copyXPCDictionary];
        }
      }
    }
  }

  xpc_dictionary_set_data(v3, "minFrameDuration", &self->_minFrameDuration, 0x18uLL);
  xpc_dictionary_set_data(v3, "maxFrameDuration", &self->_maxFrameDuration, 0x18uLL);
  validFrameDurations = self->_validFrameDurations;
  if (validFrameDurations)
  {
    v13 = cmio_XPCMessageSetCFArray(v3, "validFrameDurations", validFrameDurations);
    if (v13)
    {
      v15 = CMIOLog(v13, v14);
      if (v15)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionStreamFormat copyXPCDictionary];
        }
      }
    }
  }

  return v3;
}

- (CMIOExtensionStreamFormat)initWithXPCDictionary:(id)dictionary
{
  if (!dictionary)
  {

    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE660];
    v15 = @"nil xpc dictionary";
LABEL_16:
    [v13 raise:v14 format:v15];
    return 0;
  }

  formatDescriptionOut = 0;
  v37 = *MEMORY[0x277CC0898];
  v38 = *(MEMORY[0x277CC0898] + 16);
  v35 = v37;
  v36 = v38;
  length = 24;
  cf = 0;
  data = xpc_dictionary_get_data(dictionary, "minFrameDuration", &length);
  if (data)
  {
    v37 = *data;
    v38 = data[2];
  }

  v6 = xpc_dictionary_get_data(dictionary, "maxFrameDuration", &length);
  if (v6)
  {
    v35 = *v6;
    v36 = v6[2];
  }

  v7 = cmio_XPCMessageCopyCFArray(dictionary, "validFrameDurations", &cf);
  if (v7)
  {
    v9 = CMIOLog(v7, v8);
    if (v9)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionStreamFormat initWithXPCDictionary:];
      }
    }
  }

  v10 = FigXPCMessageCopyFormatDescription();
  if (v10)
  {
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionStreamFormat initWithXPCDictionary:];
    }

    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE660];
    v15 = @"nil formatDescription";
    goto LABEL_16;
  }

  value = xpc_dictionary_get_value(dictionary, "muxFormatDescription");
  if (value)
  {
    v19 = value;
    int64 = xpc_dictionary_get_int64(value, "muxtype");
    v21 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    string = xpc_dictionary_get_string(v19, "vendor");
    if (string)
    {
      v24 = string;
    }

    else
    {
      v24 = "?";
    }

    v25 = CFStringCreateWithCString(v21, v24, 0x8000100u);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC03E0], v25);
    CFRelease(v25);
    v26 = xpc_dictionary_get_string(v19, "name");
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = "?";
    }

    v28 = CFStringCreateWithCString(v21, v27, 0x8000100u);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC0310], v28);
    CFRelease(v28);
    CMMuxedFormatDescriptionCreate(v21, int64, Mutable, &formatDescriptionOut);
    CFRelease(Mutable);
  }

  v31 = v35;
  v32 = v36;
  v29 = v37;
  v30 = v38;
  v16 = [(CMIOExtensionStreamFormat *)self initWithFormatDescription:formatDescriptionOut maxFrameDuration:&v31 minFrameDuration:&v29 validFrameDurations:cf];
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

+ (id)copyXPCArrayFromFormats:(id)formats
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = xpc_array_create(0, 0);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [formats countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(formats);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v15 = CMIOLog(isKindOfClass, v11);
          if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            +[CMIOExtensionStreamFormat copyXPCArrayFromFormats:];
          }

          return v4;
        }

        copyXPCDictionary = [v9 copyXPCDictionary];
        if (!copyXPCDictionary)
        {
          v16 = CMIOLog(0, v13);
          if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            +[CMIOExtensionStreamFormat copyXPCArrayFromFormats:];
          }

          return v4;
        }

        v14 = copyXPCDictionary;
        xpc_array_append_value(v4, copyXPCDictionary);
        xpc_release(v14);
      }

      v6 = [formats countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

+ (id)copyFormatsFromXPCArray:(id)array
{
  if (!array)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc array"];
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __53__CMIOExtensionStreamFormat_copyFormatsFromXPCArray___block_invoke;
  applier[3] = &unk_27885BFC0;
  applier[4] = v4;
  if (!xpc_array_apply(array, applier))
  {

    return 0;
  }

  return v4;
}

BOOL __53__CMIOExtensionStreamFormat_copyFormatsFromXPCArray___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[CMIOExtensionStreamFormat alloc] initWithXPCDictionary:a3];
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    v6 = CMIOLog(0, v4);
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__CMIOExtensionStreamFormat_copyFormatsFromXPCArray___block_invoke_cold_1();
    }
  }

  return v5 != 0;
}

- (void)initWithFormatDescription:maxFrameDuration:minFrameDuration:validFrameDurations:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)encodeWithCoder:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
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

+ (void)copyXPCArrayFromFormats:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)copyXPCArrayFromFormats:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __53__CMIOExtensionStreamFormat_copyFormatsFromXPCArray___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end