@interface ASDTPMActionNumericPropertyAnalyticsEvent
- (ASDTNumericProperty)numericProperty;
- (ASDTPMActionNumericPropertyAnalyticsEvent)initWithConfig:(id)config forSequencer:(id)sequencer;
- (id)eventData;
- (void)eventData;
- (void)numericProperty;
@end

@implementation ASDTPMActionNumericPropertyAnalyticsEvent

- (ASDTPMActionNumericPropertyAnalyticsEvent)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  v48.receiver = self;
  v48.super_class = ASDTPMActionNumericPropertyAnalyticsEvent;
  v8 = [(ASDTPMActionAnalyticsEvent *)&v48 initWithConfig:configCopy forSequencer:sequencer];
  if (!v8)
  {
LABEL_46:
    propertyAddress = v8;
    goto LABEL_47;
  }

  asdtPropertyAddress = [configCopy asdtPropertyAddress];
  [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 setPropertyAddress:asdtPropertyAddress];

  propertyAddress = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];

  if (propertyAddress)
  {
    asdtPMActionAnalyticsEventField = [configCopy asdtPMActionAnalyticsEventField];
    [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 setFieldName:asdtPMActionAnalyticsEventField];

    fieldName = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 fieldName];

    if (fieldName)
    {
      asdtName = [configCopy asdtName];

      if (!asdtName)
      {
        v43 = MEMORY[0x277CCACA8];
        propertyAddress2 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v46 = [propertyAddress2 selector] >> 29;
        if (v46)
        {
          propertyAddress3 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if ([propertyAddress3 selector] >> 24 > 0x7E)
          {
            v45 = 0;
            v41 = 32;
          }

          else
          {
            propertyAddress4 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v41 = [propertyAddress4 selector] >> 24;
            v45 = 1;
          }
        }

        else
        {
          v45 = 0;
          v41 = 32;
        }

        propertyAddress5 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v42 = [propertyAddress5 selector] & 0xE00000;
        if (v42)
        {
          propertyAddress6 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if (([propertyAddress6 selector] >> 16) > 0x7Eu)
          {
            v40 = 0;
            v37 = 32;
          }

          else
          {
            propertyAddress7 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v37 = ([propertyAddress7 selector] >> 16);
            v40 = 1;
          }
        }

        else
        {
          v40 = 0;
          v37 = 32;
        }

        propertyAddress8 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v38 = [propertyAddress8 selector] & 0xE000;
        if (v38)
        {
          propertyAddress9 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if (([propertyAddress9 selector] >> 8) > 0x7Eu)
          {
            v36 = 0;
            v35 = 32;
          }

          else
          {
            propertyAddress10 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v35 = ([propertyAddress10 selector] >> 8);
            v36 = 1;
          }
        }

        else
        {
          v36 = 0;
          v35 = 32;
        }

        propertyAddress11 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v18 = [propertyAddress11 selector] & 0xE0;
        if (v18)
        {
          propertyAddress12 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if ([propertyAddress12 selector] > 0x7Eu)
          {
            v20 = 0;
            selector = 32;
          }

          else
          {
            propertyAddress13 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            selector = [propertyAddress13 selector];
            v20 = 1;
          }
        }

        else
        {
          v20 = 0;
          selector = 32;
        }

        propertyAddress14 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        element = [propertyAddress14 element];
        propertyAddress15 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v24 = [v43 stringWithFormat:@"NumericPropertyAnalyticsEvent: S:%c%c%c%c E:%u S:%x", v41, v37, v35, selector, element, objc_msgSend(propertyAddress15, "scope")];
        [(ASDTPMAction *)v8 setName:v24];

        if (v20)
        {
        }

        if (v18)
        {
        }

        if (v36)
        {
        }

        if (v38)
        {
        }

        if (v40)
        {
        }

        if (v42)
        {
        }

        if (v45)
        {
        }

        if (v46)
        {
        }
      }

      name = [(ASDTPMDevice *)v8 name];
      v26 = [ASDTCondition conditionWithName:name];
      [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 setLock:v26];

      goto LABEL_46;
    }

    v16 = ASDTBaseLogType(v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMActionNumericPropertyAnalyticsEvent initWithConfig:v8 forSequencer:?];
    }

    propertyAddress = 0;
  }

LABEL_47:

  return propertyAddress;
}

- (ASDTNumericProperty)numericProperty
{
  lock = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self lock];
  [lock lock];

  WeakRetained = objc_loadWeakRetained(&self->_numericProperty);
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    parentSequencer = [(ASDTPMDevice *)self parentSequencer];
    parentDevice = [parentSequencer parentDevice];
    propertyAddress = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self propertyAddress];
    v9 = [parentDevice customPropertyForAddress:propertyAddress];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) != 0 && (isKindOfClass = [v9 conformsToProtocol:&unk_285364BA8], isKindOfClass))
    {
      objc_storeWeak(&self->_numericProperty, v9);
    }

    else
    {
      v12 = ASDTBaseLogType(isKindOfClass, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
      }
    }

    v5 = objc_loadWeakRetained(&self->_numericProperty);
  }

  lock2 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self lock];
  [lock2 unlock];

  v14 = v5;

  return v14;
}

- (id)eventData
{
  v18[1] = *MEMORY[0x277D85DE8];
  numericProperty = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
  propertyValue = [numericProperty propertyValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    numericProperty2 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
    numericType = [numericProperty2 numericType];

    fieldName = propertyValue;
    v8 = [fieldName length];
    v9 = [MEMORY[0x277CCABB0] asdtDataSizeForNumericType:numericType];
    if (v8 < v9)
    {
      v11 = ASDTBaseLogType(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(ASDTPMActionNumericPropertyAnalyticsEvent *)self eventData];
      }

      v12 = 0;
      propertyValue = fieldName;
      goto LABEL_9;
    }

    v13 = MEMORY[0x277CCABB0];
    bytes = [fieldName bytes];
    numericProperty3 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
    propertyValue = [v13 asdtNumberFromData:bytes withNumericType:{objc_msgSend(numericProperty3, "numericType")}];
  }

  if (propertyValue)
  {
    fieldName = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self fieldName];
    v17 = fieldName;
    v18[0] = propertyValue;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
LABEL_9:

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v6 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)numericProperty
{
  name = [self name];
  propertyAddress = [self propertyAddress];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)eventData
{
  name = [self name];
  [a2 length];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

@end