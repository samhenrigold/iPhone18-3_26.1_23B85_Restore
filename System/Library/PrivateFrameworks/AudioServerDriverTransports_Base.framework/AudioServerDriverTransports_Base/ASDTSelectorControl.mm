@interface ASDTSelectorControl
- (ASDTSelectorControl)initWithConfig:(id)config withDevice:(id)device;
@end

@implementation ASDTSelectorControl

- (ASDTSelectorControl)initWithConfig:(id)config withDevice:(id)device
{
  v40 = *MEMORY[0x277D85DE8];
  configCopy = config;
  deviceCopy = device;
  v38 = 0;
  if (![configCopy asdtControlClassID:&v38])
  {
LABEL_24:
    selfCopy = 0;
    goto LABEL_25;
  }

  asdtIsSettable = [configCopy asdtIsSettable];
  asdtElement = [configCopy asdtElement];
  asdtScope = [configCopy asdtScope];
  plugin = [deviceCopy plugin];
  v37.receiver = self;
  v37.super_class = ASDTSelectorControl;
  self = [(ASDSelectorControl *)&v37 initWithIsSettable:asdtIsSettable forElement:asdtElement inScope:asdtScope withPlugin:plugin andObjectClassID:v38];

  if (!self)
  {
    goto LABEL_14;
  }

  asdtSelectorControlItems = [configCopy asdtSelectorControlItems];
  if (![asdtSelectorControlItems count])
  {
    v28 = ASDTBaseLogType(0, v13);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ASDTSelectorControl initWithConfig:deviceCopy withDevice:?];
    }

LABEL_23:
    goto LABEL_24;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  asdtSelectorControlItems = asdtSelectorControlItems;
  v14 = [asdtSelectorControlItems countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  v16 = *v34;
  v31 = deviceCopy;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v34 != v16)
      {
        objc_enumerationMutation(asdtSelectorControlItems);
      }

      v18 = *(*(&v33 + 1) + 8 * i);
      asdtName = [v18 asdtName];
      asdtSelectorControlItemKind = [v18 asdtSelectorControlItemKind];
      asdtSelectorControlItemSelected = [v18 asdtSelectorControlItemSelected];
      v32 = 0;
      v22 = [v18 asdtSelectorControlItemValue:&v32];
      if ((v22 & 1) == 0)
      {
        v29 = ASDTBaseLogType(v22, v23);
        deviceCopy = v31;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [ASDTSelectorControl initWithConfig:v31 withDevice:?];
        }

        goto LABEL_22;
      }

      v24 = [MEMORY[0x277CEFB70] withValue:v32 name:asdtName andKind:asdtSelectorControlItemKind selected:asdtSelectorControlItemSelected];
      if (!v24)
      {
        v29 = ASDTBaseLogType(0, v25);
        deviceCopy = v31;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [ASDTSelectorControl initWithConfig:v31 withDevice:?];
        }

LABEL_22:

        goto LABEL_23;
      }

      v26 = v24;
      [(ASDSelectorControl *)self addValue:v24];
    }

    v15 = [asdtSelectorControlItems countByEnumeratingWithState:&v33 objects:v39 count:16];
    deviceCopy = v31;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_13:

LABEL_14:
  self = self;
  selfCopy = self;
LABEL_25:

  return selfCopy;
}

- (void)initWithConfig:(void *)a1 withDevice:.cold.1(void *a1)
{
  v1 = [a1 deviceUID];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Selector control items must include a value.", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithConfig:(void *)a1 withDevice:.cold.2(void *a1)
{
  v1 = [a1 deviceUID];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Memory allocation error for selector value.", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithConfig:(void *)a1 withDevice:.cold.3(void *a1)
{
  v1 = [a1 deviceUID];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Selector control must contain items.", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end