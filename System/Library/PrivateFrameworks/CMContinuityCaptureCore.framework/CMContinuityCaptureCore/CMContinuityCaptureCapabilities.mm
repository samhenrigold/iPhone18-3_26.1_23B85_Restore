@interface CMContinuityCaptureCapabilities
+ (id)capabilitiesForCurrentDevice;
+ (void)capabilitiesForCurrentDevice;
- (CMContinuityCaptureCapabilities)initWithCapabilitiesVersion:(id *)version devicesCapabilities:(id)capabilities userDisabled:(BOOL)disabled;
- (CMContinuityCaptureCapabilities)initWithDictionaryRepresentation:(id)representation;
- (NSString)debugDescription;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation CMContinuityCaptureCapabilities

+ (id)capabilitiesForCurrentDevice
{
  BoolAnswer = AVGestaltGetBoolAnswer();
  UserPreferenceDisabled = FigContinuityCaptureGetUserPreferenceDisabled();
  if (BoolAnswer)
  {
    if (UserPreferenceDisabled)
    {
      +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
    }

    else
    {
      if (GestaltGetDeviceClass() != 3 || (_os_feature_enabled_impl() & 1) != 0)
      {
        v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v5 = [CMContinuityCaptureDeviceCapabilities capabilitiesForEntityType:?];
        if (v5)
        {
          [v4 addObject:?];
          v6 = [CMContinuityCaptureDeviceCapabilities capabilitiesForEntityType:?];
          if (v6)
          {
            [v4 addObject:?];
          }

          else
          {
            v7 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              LOWORD(v11) = 0;
              _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_INFO, "ContinuityCaptureEntityTypeDeskcamVideo not available on this device", &v11, 2u);
            }
          }

          v8 = [CMContinuityCaptureDeviceCapabilities capabilitiesForEntityType:?];
          [v4 addObject:?];
        }

        else
        {
          +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
          v8 = 0;
          v6 = 0;
        }

        goto LABEL_12;
      }

      +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
    }

    v8 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
LABEL_12:
    v9 = [objc_alloc(objc_opt_class()) initWithCapabilitiesVersion:3 devicesCapabilities:304 userDisabled:1];

    goto LABEL_13;
  }

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_INFO, "Device does not support Continuity Capture", &v11, 2u);
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (CMContinuityCaptureCapabilities)initWithCapabilitiesVersion:(id *)version devicesCapabilities:(id)capabilities userDisabled:(BOOL)disabled
{
  capabilitiesCopy = capabilities;
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureCapabilities;
  v9 = [(CMContinuityCaptureCapabilities *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v11 = *&version->var0;
    *(v9 + 3) = version->var2;
    *(v9 + 8) = v11;
    v12 = [capabilitiesCopy copy];
    devicesCapabilities = v10->_devicesCapabilities;
    v10->_devicesCapabilities = v12;

    v10->_userDisabled = disabled;
  }

  return v10;
}

- (CMContinuityCaptureCapabilities)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [representationCopy objectForKeyedSubscript:?];
  v7 = [representationCopy objectForKeyedSubscript:?];
  v8 = [representationCopy objectForKeyedSubscript:?];
  v30 = v8;
  if (v6)
  {
    v9 = v8;
    integerValue = [v6 integerValue];
    integerValue3 = 0;
    if (v7)
    {
      integerValue2 = 0;
      if (v9)
      {
        integerValue2 = [v7 integerValue];
        integerValue3 = [v9 integerValue];
      }
    }

    else
    {
      integerValue2 = 0;
    }

    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:integerValue, integerValue2, integerValue3];
      v12 = v32 = integerValue3;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:3, 304, 1];
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_INFO, "Remote Device Version %@, Current Device version %@", buf, 0x16u);

      integerValue3 = v32;
    }
  }

  else
  {
    integerValue3 = 0;
    integerValue2 = 0;
    integerValue = 0;
  }

  v14 = [representationCopy objectForKeyedSubscript:?];
  [v14 BOOLValue];

  v15 = [representationCopy objectForKeyedSubscript:?];
  v16 = v15;
  if (v15)
  {
    v33 = integerValue3;
    v27 = v7;
    v28 = v6;
    selfCopy = self;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      while (2)
      {
        for (i = 0; i != v19; i = (i + 1))
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          v23 = [[CMContinuityCaptureDeviceCapabilities alloc] initWithDictionaryRepresentation:?];
          if (!v23)
          {
            [(CMContinuityCaptureCapabilities *)v22 initWithDictionaryRepresentation:v17];
            selfCopy2 = 0;
            self = selfCopy;
            goto LABEL_21;
          }

          v24 = v23;
          [v5 addObject:?];
        }

        v19 = [v17 countByEnumeratingWithState:? objects:? count:?];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    *buf = integerValue;
    *&buf[8] = integerValue2;
    *&buf[16] = v33;
    self = [CMContinuityCaptureCapabilities initWithCapabilitiesVersion:selfCopy devicesCapabilities:"initWithCapabilitiesVersion:devicesCapabilities:userDisabled:" userDisabled:?];
    selfCopy2 = self;
LABEL_21:
    v7 = v27;
    v6 = v28;
  }

  else
  {
    [CMContinuityCaptureCapabilities initWithDictionaryRepresentation:];
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [dictionary setObject:? forKeyedSubscript:?];

  array = [MEMORY[0x277CBEB18] array];
  v9 = self->_devicesCapabilities;
  v10 = [NSArray countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v9);
        }

        dictionaryRepresentation = [*(8 * i) dictionaryRepresentation];
        [array addObject:?];
      }

      v11 = [NSArray countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v11);
  }

  [dictionary setObject:? forKeyedSubscript:?];

  return dictionary;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:self->_capabilitiesVersion.major, self->_capabilitiesVersion.minor, self->_capabilitiesVersion.patch];
  v5 = [v3 stringWithFormat:v4, self->_userDisabled];

  if ([(NSArray *)self->_devicesCapabilities count])
  {
    [v5 appendString:?];
  }

  v6 = self->_devicesCapabilities;
  v7 = [NSArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(8 * i) debugDescription];
        [v5 appendFormat:v11];
      }

      v8 = [NSArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v8);
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureCapabilities *)self debugDescription];
  v7 = [v3 stringWithFormat:v5, self, v6];

  return v7;
}

+ (void)capabilitiesForCurrentDevice
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 2u);
  }
}

- (void)initWithDictionaryRepresentation:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v4))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)initWithDictionaryRepresentation:.cold.2()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_1_4(v1, v2, v3, v4, v5);
  }
}

@end