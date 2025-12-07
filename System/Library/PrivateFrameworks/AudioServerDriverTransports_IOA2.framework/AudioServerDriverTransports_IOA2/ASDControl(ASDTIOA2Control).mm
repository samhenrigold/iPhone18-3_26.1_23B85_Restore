@interface ASDControl(ASDTIOA2Control)
- (BOOL)asdtAddControlProperties:()ASDTIOA2Control;
- (void)asdtRemoveControlProperties;
- (void)asdtSendControlPropertyChangeNotificationAtIndex:()ASDTIOA2Control;
@end

@implementation ASDControl(ASDTIOA2Control)

- (BOOL)asdtAddControlProperties:()ASDTIOA2Control
{
  v66 = *MEMORY[0x277D85DE8];
  v47 = a3;
  selfCopy = self;
  v5 = MEMORY[0x277CBEB18];
  v48 = selfCopy;
  properties = [selfCopy properties];
  v49 = [v5 arrayWithCapacity:{objc_msgSend(properties, "count") + 1}];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  properties2 = [v48 properties];
  v8 = [properties2 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v8)
  {
    v9 = *v55;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(properties2);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = MEMORY[0x277CCABB0];
          address = [v11 address];
          v14 = [v12 numberWithUnsignedInt:{objc_msgSend(address, "selector")}];
          [v49 addObject:v14];
        }

        else
        {
          [v49 addObject:&unk_2853578A0];
        }
      }

      v8 = [properties2 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v8);
  }

  if ([v49 isEqual:v47])
  {
    v15 = 1;
    goto LABEL_44;
  }

  [v48 asdtRemoveControlProperties];
  propertySelectorInfo = [v48 propertySelectorInfo];
  if (![propertySelectorInfo count] || !objc_msgSend(v47, "count"))
  {
    v15 = 1;
    goto LABEL_43;
  }

  v16 = [v47 count];
  v17 = [propertySelectorInfo count];
  if (v16 != v17)
  {
    log = ASDTIOA2LogType(v17, v18);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = [v47 count];
      v44 = [propertySelectorInfo count];
      *buf = 138412802;
      v60 = v42;
      v61 = 1024;
      v62 = v43;
      v63 = 1024;
      v64 = v44;
      _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@: Invalid property selector count in registry: found %u, expected %u", buf, 0x18u);
    }

    v15 = 0;
    goto LABEL_42;
  }

  log = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v47, "count")}];
  for (j = 0; ; ++j)
  {
    v20 = [v47 count];
    v15 = v20 <= j;
    if (v20 <= j)
    {
      v29 = [log copy];
      [v48 setProperties:v29];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      properties3 = [v48 properties];
      v31 = [properties3 countByEnumeratingWithState:&v50 objects:v58 count:16];
      v32 = v31;
      if (v31)
      {
        v33 = *v51;
        do
        {
          v34 = 0;
          do
          {
            if (*v51 != v33)
            {
              objc_enumerationMutation(properties3);
            }

            v35 = *(*(&v50 + 1) + 8 * v34);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              ioa2Device = [v48 ioa2Device];
              [ioa2Device addCustomProperty:v35];
            }

            ++v34;
          }

          while (v32 != v34);
          v32 = [properties3 countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v32);
      }

      goto LABEL_41;
    }

    v21 = [v47 objectAtIndexedSubscript:j];
    unsignedIntValue = [v21 unsignedIntValue];

    if (unsignedIntValue)
    {
      break;
    }

    properties3 = [MEMORY[0x277CBEB68] null];
    [log addObject:properties3];
LABEL_23:
  }

  properties3 = [propertySelectorInfo objectAtIndexedSubscript:j];
  v23 = [properties3 objectForKeyedSubscript:@"selector"];
  unsignedIntValue2 = [v23 unsignedIntValue];

  v25 = [properties3 objectForKeyedSubscript:@"dataType"];
  unsignedIntValue3 = [v25 unsignedIntValue];

  v28 = [MEMORY[0x277CEFB80] forControl:v48 controlSelector:unsignedIntValue2 propertySelector:unsignedIntValue propertyDataType:unsignedIntValue3];
  if (v28)
  {
    [log addObject:v28];

    goto LABEL_23;
  }

  v37 = ASDTIOA2LogType(0, v27);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    [(ASDControl(ASDTIOA2Control) *)v39 asdtAddControlProperties:unsignedIntValue, buf, v37];
  }

LABEL_41:
LABEL_42:

LABEL_43:
LABEL_44:

  return v15;
}

- (void)asdtRemoveControlProperties
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  properties = [selfCopy properties];
  v3 = [properties countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(properties);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ioa2Device = [selfCopy ioa2Device];
          [ioa2Device removeCustomProperty:v6];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [properties countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  [selfCopy setProperties:0];
}

- (void)asdtSendControlPropertyChangeNotificationAtIndex:()ASDTIOA2Control
{
  properties = [self properties];
  v5 = [properties objectAtIndex:a3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 sendPropertyChangeNotification];
  }
}

- (void)asdtAddControlProperties:()ASDTIOA2Control .cold.1(void *a1, unsigned int a2, uint8_t *buf, os_log_t log)
{
  v5 = HIBYTE(a2);
  if ((a2 - 0x20000000) >> 24 >= 0x5F)
  {
    v5 = 32;
  }

  v6 = BYTE2(a2);
  if (BYTE2(a2) - 32 >= 0x5F)
  {
    v6 = 32;
  }

  v7 = BYTE1(a2);
  if (BYTE1(a2) - 32 >= 0x5F)
  {
    v7 = 32;
  }

  *buf = 138413314;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  *(buf + 9) = 1024;
  *(buf + 5) = v6;
  *(buf + 12) = 1024;
  *(buf + 26) = v7;
  if (a2 - 32 >= 0x5F)
  {
    v8 = 32;
  }

  else
  {
    v8 = a2;
  }

  *(buf + 15) = 1024;
  *(buf + 8) = v8;
  _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@: Failed creating custom property for selector '%c%c%c%c'.", buf, 0x24u);
}

@end