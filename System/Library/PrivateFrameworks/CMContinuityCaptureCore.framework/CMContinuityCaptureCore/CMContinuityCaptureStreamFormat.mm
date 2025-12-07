@interface CMContinuityCaptureStreamFormat
- (CMContinuityCaptureStreamFormat)initWithCoder:(id)coder;
- (CMContinuityCaptureStreamFormat)initWithDictionaryRepresentation:(id)representation;
- (CMContinuityCaptureStreamFormat)initWithName:(id)name width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format minFrameRate:(unsigned int)rate maxFrameRate:(unsigned int)frameRate entity:(int64_t)entity minimumSupportedVersion:(id *)self0;
- (NSString)debugDescription;
- (NSString)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMContinuityCaptureStreamFormat

- (CMContinuityCaptureStreamFormat)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v4 = [coderCopy decodeObjectOfClass:? forKey:?];
  v10 = [coderCopy decodeInt64ForKey:?];
  [coderCopy decodeInt64ForKey:?];
  [coderCopy decodeInt64ForKey:?];
  [coderCopy decodeInt32ForKey:?];
  [coderCopy decodeInt32ForKey:?];
  [coderCopy decodeInt32ForKey:?];
  v5 = [coderCopy decodeInt64ForKey:?];
  v6 = [coderCopy decodeInt64ForKey:?];
  v7 = [coderCopy decodeInt64ForKey:?];

  v12[0] = v5;
  v12[1] = v6;
  v12[2] = v7;
  v8 = [CMContinuityCaptureStreamFormat initWithName:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" width:v10 height:v12 pixelFormat:? minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];

  return v8;
}

- (CMContinuityCaptureStreamFormat)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:?];
  if (!v5)
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    goto LABEL_26;
  }

  v6 = [representationCopy objectForKeyedSubscript:?];
  if (!v6)
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    goto LABEL_26;
  }

  v7 = v6;
  integerValue = [v6 integerValue];
  v9 = [representationCopy objectForKeyedSubscript:?];
  if (!v9)
  {
    [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
LABEL_26:
    selfCopy2 = 0;
    goto LABEL_14;
  }

  v10 = v9;
  [v9 integerValue];
  v11 = [representationCopy objectForKeyedSubscript:?];
  selfCopy2 = v11;
  if (!v11)
  {
    [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:v10];
    goto LABEL_14;
  }

  [(CMContinuityCaptureStreamFormat *)v11 integerValue];
  v13 = [representationCopy objectForKeyedSubscript:?];
  if (!v13)
  {
    [(CMContinuityCaptureStreamFormat *)selfCopy2 initWithDictionaryRepresentation:v10];
    goto LABEL_26;
  }

  v14 = v13;
  [v13 intValue];
  v15 = [representationCopy objectForKeyedSubscript:?];
  if (!v15)
  {
    [(CMContinuityCaptureStreamFormat *)v14 initWithDictionaryRepresentation:selfCopy2, v10];
    goto LABEL_26;
  }

  v16 = v15;
  v30 = integerValue;
  v33 = selfCopy2;
  [v15 intValue];
  v17 = [representationCopy objectForKeyedSubscript:?];
  if (!v17)
  {
    v26 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    goto LABEL_26;
  }

  v18 = v17;
  v31 = v10;
  v32 = v5;
  [v17 intValue];
  v19 = [representationCopy objectForKeyedSubscript:?];

  if (!v19)
  {
    intValue = 0;
    v21 = 1;
    goto LABEL_13;
  }

  v20 = [representationCopy objectForKeyedSubscript:?];
  LODWORD(v21) = [v20 intValue];
  v22 = [representationCopy objectForKeyedSubscript:?];

  if (!v22)
  {
    v27 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    selfCopy2 = 0;
    goto LABEL_33;
  }

  selfCopy = self;
  LODWORD(v19) = [v22 intValue];
  v23 = [representationCopy objectForKeyedSubscript:?];

  if (!v23)
  {
    v28 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureStreamFormat initWithDictionaryRepresentation:];
    }

    selfCopy2 = 0;
    self = selfCopy;
LABEL_33:
    v5 = v32;
    goto LABEL_14;
  }

  v21 = v21;
  v19 = v19;
  intValue = [v23 intValue];

  self = selfCopy;
LABEL_13:
  v34[0] = v21;
  v34[1] = v19;
  v34[2] = intValue;
  v5 = v32;
  self = [CMContinuityCaptureStreamFormat initWithName:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" width:v30 height:v34 pixelFormat:? minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];

  selfCopy2 = self;
LABEL_14:

  return selfCopy2;
}

- (id)dictionaryRepresentation
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v2;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = CMContinuityCaptureStringFromOSType(self->_pixelFormat);
  width = self->_width;
  height = self->_height;
  entity = self->_entity;
  minFrameRate = self->_minFrameRate;
  maxFrameRate = self->_maxFrameRate;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:self->_minimumSupportedVersion.major, self->_minimumSupportedVersion.minor, self->_minimumSupportedVersion.patch];
  v11 = [v3 stringWithFormat:v4, width, height, minFrameRate, maxFrameRate, entity, v10];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureStreamFormat *)self debugDescription];
  v7 = [v3 stringWithFormat:v5, self, v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(CMContinuityCaptureStreamFormat *)self name];
  [coderCopy encodeObject:? forKey:?];

  [(CMContinuityCaptureStreamFormat *)self entity];
  [coderCopy encodeInt64:? forKey:?];
  [(CMContinuityCaptureStreamFormat *)self width];
  [coderCopy encodeInt64:? forKey:?];
  [(CMContinuityCaptureStreamFormat *)self height];
  [coderCopy encodeInt64:? forKey:?];
  [(CMContinuityCaptureStreamFormat *)self pixelFormat];
  [coderCopy encodeInt32:? forKey:?];
  [(CMContinuityCaptureStreamFormat *)self minFrameRate];
  [coderCopy encodeInt32:? forKey:?];
  [(CMContinuityCaptureStreamFormat *)self maxFrameRate];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
}

- (CMContinuityCaptureStreamFormat)initWithName:(id)name width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format minFrameRate:(unsigned int)rate maxFrameRate:(unsigned int)frameRate entity:(int64_t)entity minimumSupportedVersion:(id *)self0
{
  nameCopy = name;
  v35.receiver = self;
  v35.super_class = CMContinuityCaptureStreamFormat;
  v18 = [(CMContinuityCaptureStreamFormat *)&v35 init];
  v19 = v18;
  formatDescriptionOut = 0;
  if (v18)
  {
    v18->_entity = entity;
    objc_storeStrong(&v18->_name, name);
    v19->_width = width;
    v19->_height = height;
    v19->_pixelFormat = format;
    v19->_minFrameRate = rate;
    v19->_maxFrameRate = frameRate;
    v20 = *&version->var0;
    v19->_minimumSupportedVersion.patch = version->var2;
    *&v19->_minimumSupportedVersion.major = v20;
    name = v19->_name;
    v32 = *MEMORY[0x277CC0310];
    nameCopy2 = name;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v23 = CMVideoFormatDescriptionCreate(0, v19->_pixelFormat, v19->_width, v19->_height, v22, &formatDescriptionOut);
    if (v23 || !formatDescriptionOut)
    {
      v27 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 138412546;
        v29 = v19;
        v30 = 1024;
        v31 = v23;
        _os_log_error_impl(&dword_242545000, v27, OS_LOG_TYPE_ERROR, "%@ CMVideoFormatDescriptionCreate error %x", &v28, 0x12u);
      }

      v25 = 0;
    }

    else
    {
      formatDescription = v19->_formatDescription;
      v19->_formatDescription = formatDescriptionOut;

      v25 = v19;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)initWithDictionaryRepresentation:(void *)a3 .cold.4(void *a1, void *a2, void *a3)
{
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    OUTLINED_FUNCTION_1_4(&dword_242545000, v6, v7, "missing CMContinuityCaptureStreamFormatKey_MinFrameRate", v8);
  }
}

- (void)initWithDictionaryRepresentation:(void *)a1 .cold.5(void *a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    OUTLINED_FUNCTION_1_4(&dword_242545000, v4, v5, "missing CMContinuityCaptureStreamFormatKey_PixelFormat", v6);
  }
}

- (void)initWithDictionaryRepresentation:(void *)a1 .cold.6(void *a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    OUTLINED_FUNCTION_1_4(&dword_242545000, v2, v3, "missing CMContinuityCaptureStreamFormatKey_Height", v4);
  }
}

- (void)initWithDictionaryRepresentation:.cold.7()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    OUTLINED_FUNCTION_1_4(&dword_242545000, v0, v1, "missing CMContinuityCaptureStreamFormatKey_Width", v2);
  }
}

@end