@interface ASDTCustomProperty
+ (id)consolidatePList:(id)list;
+ (id)customPropertyForConfig:(id)config;
- (ASDTCustomProperty)initWithConfig:(id)config propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType;
- (BOOL)checkAndSetPropertyValue:(id)value;
- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (NSData)dataNoCopy;
- (NSString)name;
- (id)propertyName;
- (id)propertyValue;
- (int)checkPropertyValue:(id)value;
- (unsigned)dataSizeWithQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (void)cachePropertyValue:(id)value;
- (void)doCachePropertyValue:(id)value;
- (void)releasePropertyValueCache;
- (void)setUseCache:(BOOL)cache;
@end

@implementation ASDTCustomProperty

+ (id)customPropertyForConfig:(id)config
{
  configCopy = config;
  asdtSubclass = [configCopy asdtSubclass];
  v5 = [asdtSubclass isSubclassOfClass:objc_opt_class()];
  if (v5 && (v5 = [asdtSubclass conformsToProtocol:&unk_2853557D8], (v5 & 1) != 0))
  {
    v7 = [[asdtSubclass alloc] initWithConfig:configCopy];
  }

  else
  {
    v8 = ASDTBaseLogType(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ASDTCustomProperty customPropertyForConfig:configCopy];
    }

    v7 = 0;
  }

  return v7;
}

- (ASDTCustomProperty)initWithConfig:(id)config propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType
{
  v5 = *&dataType;
  v6 = *&type;
  configCopy = config;
  asdtPropertyAddress = [configCopy asdtPropertyAddress];
  if (asdtPropertyAddress)
  {
    v13.receiver = self;
    v13.super_class = ASDTCustomProperty;
    v10 = [(ASDCustomProperty *)&v13 initWithAddress:asdtPropertyAddress propertyDataType:v6 qualifierDataType:v5];
    if (v10)
    {
      -[ASDCustomProperty setSettable:](v10, "setSettable:", [configCopy asdtIsSettable]);
      -[ASDTCustomProperty setCacheMode:](v10, "setCacheMode:", [configCopy asdtPropertyCacheMode]);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)propertyName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(ASDCustomProperty *)self selector]>> 29 && [(ASDCustomProperty *)self selector]>> 24 <= 0x7E)
  {
    v6 = [(ASDCustomProperty *)self selector]>> 24;
  }

  else
  {
    v6 = 32;
  }

  if (([(ASDCustomProperty *)self selector]& 0xE00000) != 0 && ([(ASDCustomProperty *)self selector]>> 16) <= 0x7Eu)
  {
    v7 = ([(ASDCustomProperty *)self selector]>> 16);
  }

  else
  {
    v7 = 32;
  }

  if (([(ASDCustomProperty *)self selector]& 0xE000) != 0 && ([(ASDCustomProperty *)self selector]>> 8) <= 0x7Eu)
  {
    v8 = ([(ASDCustomProperty *)self selector]>> 8);
  }

  else
  {
    v8 = 32;
  }

  if (([(ASDCustomProperty *)self selector]& 0xE0) != 0 && [(ASDCustomProperty *)self selector]<= 0x7Eu)
  {
    selector = [(ASDCustomProperty *)self selector];
  }

  else
  {
    selector = 32;
  }

  v10 = [v3 stringWithFormat:@"%@(%c%c%c%c)", v5, v6, v7, v8, selector];

  return v10;
}

- (NSString)name
{
  name = self->_name;
  if (!name)
  {
    propertyName = [(ASDTCustomProperty *)self propertyName];
    v5 = self->_name;
    self->_name = propertyName;

    name = self->_name;
  }

  return name;
}

- (unsigned)dataSizeWithQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  v5 = [(ASDCustomProperty *)self propertyDataType:*&size];
  result = 8;
  if (v5 != 1667658612 && v5 != 1886155636)
  {
    if (v5 == 1918990199)
    {

      return [(ASDTCustomProperty *)self propertyValueSize];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v11 = [(ASDCustomProperty *)self propertyDataType:*&size];
  propertyValue = [(ASDTCustomProperty *)self propertyValue];
  v14 = propertyValue;
  if (!propertyValue)
  {
    goto LABEL_10;
  }

  switch(v11)
  {
    case 0x63667374u:
      goto LABEL_5;
    case 0x72617777u:
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v20 = ASDTBaseLogType(isKindOfClass, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [ASDTCustomProperty getPropertyWithQualifierSize:qualifierData:dataSize:andData:forClient:];
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [ASDTCustomProperty getPropertyWithQualifierSize:a2 qualifierData:self dataSize:? andData:? forClient:?];
        }
      }

      v21 = v14;
      v22 = [v21 length];
      if (dataSize && *dataSize >= v22)
      {
        if (v22)
        {
          *dataSize = v22;
          memcpy(andData, [v21 bytes], v22);
          v16 = 1;
          goto LABEL_23;
        }
      }

      else
      {
        v24 = ASDTBaseLogType(v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [ASDTCustomProperty getPropertyWithQualifierSize:qualifierData:dataSize:andData:forClient:];
        }
      }

      v16 = 0;
LABEL_23:

      goto LABEL_11;
    case 0x706C7374u:
LABEL_5:
      if (dataSize && *dataSize > 7)
      {
        *andData = CFRetain(propertyValue);
        *dataSize = 8;
        v16 = 1;
        goto LABEL_11;
      }

      v15 = ASDTBaseLogType(propertyValue, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ASDTCustomProperty getPropertyWithQualifierSize:qualifierData:dataSize:andData:forClient:];
      }

      break;
  }

LABEL_10:
  v16 = 0;
LABEL_11:

  return v16;
}

- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  v10 = [(ASDCustomProperty *)self propertyDataType:*&size];
  isSettable = [(ASDCustomProperty *)self isSettable];
  if ((isSettable & 1) == 0)
  {
    DeepCopy = ASDTBaseLogType(isSettable, v12);
    if (os_log_type_enabled(DeepCopy, OS_LOG_TYPE_ERROR))
    {
      [ASDTCustomProperty setPropertyWithQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
    }

    goto LABEL_13;
  }

  switch(v10)
  {
    case 0x63667374u:
      goto LABEL_5;
    case 0x72617777u:
      DeepCopy = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:andData length:dataSize freeWhenDone:0];
      [(ASDTCustomProperty *)self setDataNoCopy:DeepCopy];
      goto LABEL_21;
    case 0x706C7374u:
LABEL_5:
      if (dataSize != 8)
      {
        DeepCopy = ASDTBaseLogType(isSettable, v12);
        if (os_log_type_enabled(DeepCopy, OS_LOG_TYPE_ERROR))
        {
          [ASDTCustomProperty setPropertyWithQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
        }

        goto LABEL_13;
      }

      v13 = *andData;
      if (!*andData)
      {
        DeepCopy = ASDTBaseLogType(isSettable, v12);
        if (os_log_type_enabled(DeepCopy, OS_LOG_TYPE_ERROR))
        {
          [ASDTCustomProperty setPropertyWithQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
        }

        goto LABEL_13;
      }

      if ([(ASDTCustomProperty *)self plistDeepCopyOnSet])
      {
        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], *andData, 0);
        if (!DeepCopy)
        {
          DeepCopy = ASDTBaseLogType(0, v14);
          if (os_log_type_enabled(DeepCopy, OS_LOG_TYPE_ERROR))
          {
            [ASDTCustomProperty setPropertyWithQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
          }

LABEL_13:
          v16 = 0;
LABEL_22:

          return v16;
        }
      }

      else
      {
        DeepCopy = v13;
      }

LABEL_21:
      v16 = [(ASDTCustomProperty *)self checkAndSetPropertyValue:DeepCopy];
      goto LABEL_22;
  }

  return 0;
}

- (int)checkPropertyValue:(id)value
{
  valueCopy = value;
  propertyDataType = [(ASDCustomProperty *)self propertyDataType];
  if (propertyDataType == 1667658612 || propertyDataType == 1918990199)
  {
    goto LABEL_9;
  }

  if (propertyDataType != 1886155636)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_9:
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_10;
            }

LABEL_13:
            v7 = 2;
            goto LABEL_18;
          }
        }
      }
    }
  }

LABEL_10:
  v7 = 0;
  if ([(ASDTCustomProperty *)self propertyValueWasCached])
  {
    propertyValue = self->_propertyValue;
    if (!(valueCopy | propertyValue) || valueCopy && propertyValue && ([propertyValue isEqual:valueCopy] & 1) != 0)
    {
      v7 = 1;
    }
  }

LABEL_18:

  return v7;
}

- (void)doCachePropertyValue:(id)value
{
  valueCopy = value;
  [(ASDTCustomProperty *)self setPropertyValueWasCached:1];
  propertyValue = self->_propertyValue;
  self->_propertyValue = valueCopy;
}

- (void)cachePropertyValue:(id)value
{
  valueCopy = value;
  if ([(ASDTCustomProperty *)self cacheMode]== 2 || [(ASDTCustomProperty *)self cacheMode]== 1 && [(ASDTCustomProperty *)self useCache])
  {
    if (valueCopy)
    {
      dataNoCopy = [(ASDTCustomProperty *)self dataNoCopy];

      if (dataNoCopy == valueCopy)
      {
        v6 = [MEMORY[0x277CBEA90] dataWithData:valueCopy];

        if (!v6)
        {
          v9 = ASDTBaseLogType(v7, v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [ASDTCustomProperty cachePropertyValue:?];
          }
        }

        [(ASDTCustomProperty *)self setDataNoCopy:0];
        valueCopy = v6;
      }
    }

    [(ASDTCustomProperty *)self doCachePropertyValue:valueCopy];
  }
}

- (void)releasePropertyValueCache
{
  if ([(ASDTCustomProperty *)self propertyValueWasCached])
  {
    propertyValue = self->_propertyValue;
    self->_propertyValue = 0;

    [(ASDTCustomProperty *)self setPropertyValueWasCached:0];
  }
}

- (BOOL)checkAndSetPropertyValue:(id)value
{
  valueCopy = value;
  v5 = [(ASDTCustomProperty *)self checkPropertyValue:valueCopy];
  if (v5 == 1)
  {
    goto LABEL_14;
  }

  if (v5 == 3)
  {
    v7 = ASDTBaseLogType(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ASDTCustomProperty checkAndSetPropertyValue:];
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    v9 = NSStringFromSelector(sel_value);
    [(ASDTCustomProperty *)self willChangeValueForKey:v9];

    v10 = NSStringFromSelector(sel_propertyValue);
    [(ASDTCustomProperty *)self willChangeValueForKey:v10];

    LODWORD(v10) = [(ASDTCustomProperty *)self storePropertyValue:valueCopy];
    v11 = NSStringFromSelector(sel_value);
    [(ASDTCustomProperty *)self didChangeValueForKey:v11];

    v12 = NSStringFromSelector(sel_propertyValue);
    [(ASDTCustomProperty *)self didChangeValueForKey:v12];

    if (!v10)
    {
      goto LABEL_9;
    }

    propertyChangeBlock = [(ASDTCustomProperty *)self propertyChangeBlock];
    v14 = propertyChangeBlock;
    if (propertyChangeBlock)
    {
      (*(propertyChangeBlock + 16))(propertyChangeBlock, valueCopy);
    }

    [(ASDCustomProperty *)self sendPropertyChangeNotification];

LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  v7 = ASDTBaseLogType(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ASDTCustomProperty checkAndSetPropertyValue:];
  }

LABEL_8:

LABEL_9:
  v8 = 0;
LABEL_15:

  return v8;
}

- (id)propertyValue
{
  cacheMode = [(ASDTCustomProperty *)self cacheMode];
  if (cacheMode == 1)
  {
    if (![(ASDTCustomProperty *)self useCache])
    {
      goto LABEL_3;
    }
  }

  else if (!cacheMode)
  {
LABEL_3:
    retrievePropertyValue = [(ASDTCustomProperty *)self retrievePropertyValue];
LABEL_7:
    retrievePropertyValue2 = retrievePropertyValue;
    goto LABEL_9;
  }

  if ([(ASDTCustomProperty *)self propertyValueWasCached])
  {
    retrievePropertyValue = [(ASDTCustomProperty *)self cachedPropertyValue];
    goto LABEL_7;
  }

  retrievePropertyValue2 = [(ASDTCustomProperty *)self retrievePropertyValue];
  [(ASDTCustomProperty *)self cachePropertyValue:retrievePropertyValue2];
LABEL_9:

  return retrievePropertyValue2;
}

- (void)setUseCache:(BOOL)cache
{
  cacheCopy = cache;
  if ([(ASDTCustomProperty *)self cacheMode]== 1)
  {
    if (cacheCopy)
    {
      retrievePropertyValue = [(ASDTCustomProperty *)self retrievePropertyValue];
      [(ASDTCustomProperty *)self doCachePropertyValue:retrievePropertyValue];
    }

    else
    {
      [(ASDTCustomProperty *)self releasePropertyValueCache];
    }
  }

  self->_useCache = cacheCopy;
}

+ (id)consolidatePList:(id)list
{
  v71 = *MEMORY[0x277D85DE8];
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    listCopy = listCopy;
    if ([listCopy count])
    {
      v5 = [listCopy objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [MEMORY[0x277CBEB28] dataWithCapacity:{-[NSObject count](listCopy, "count") * -[NSObject length](v6, "length")}];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v8 = listCopy;
        v9 = [v8 countByEnumeratingWithState:&v63 objects:v70 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = v5;
          v12 = *v64;
          while (2)
          {
            v13 = 0;
            v14 = v6;
            do
            {
              if (*v64 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v6 = *(*(&v63 + 1) + 8 * v13);

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if ((isKindOfClass & 1) == 0)
              {
                v36 = ASDTBaseLogType(isKindOfClass, v16);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  +[ASDTCustomProperty consolidatePList:];
                }

                v5 = v11;
                goto LABEL_61;
              }

              [v7 appendData:v6];
              ++v13;
              v14 = v6;
            }

            while (v10 != v13);
            v10 = [v8 countByEnumeratingWithState:&v63 objects:v70 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }

          v17 = v6;
          v5 = v11;
        }

        else
        {
          v17 = v6;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v6 = listCopy;
          v37 = [v6 countByEnumeratingWithState:&v51 objects:v67 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v52;
            while (2)
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v52 != v39)
                {
                  objc_enumerationMutation(v6);
                }

                objc_opt_class();
                v41 = objc_opt_isKindOfClass();
                if ((v41 & 1) == 0)
                {
                  v7 = ASDTBaseLogType(v41, v42);
                  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                  {
                    +[ASDTCustomProperty consolidatePList:];
                  }

LABEL_61:

                  goto LABEL_62;
                }
              }

              v38 = [v6 countByEnumeratingWithState:&v51 objects:v67 count:16];
              if (v38)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_53;
        }

        v17 = v5;
        v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](listCopy, "count") * -[NSObject count](v17, "count")}];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v22 = listCopy;
        v23 = [v22 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v60;
          v49 = v22;
          v50 = v5;
          v46 = *v60;
          while (2)
          {
            v26 = 0;
            v47 = v24;
            do
            {
              if (*v60 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v48 = v26;
              v6 = *(*(&v59 + 1) + 8 * v26);

              objc_opt_class();
              v27 = objc_opt_isKindOfClass();
              if ((v27 & 1) == 0)
              {
                v17 = ASDTBaseLogType(v27, v28);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  +[ASDTCustomProperty consolidatePList:];
                }

LABEL_60:

                goto LABEL_61;
              }

              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v17 = v6;
              v29 = [v17 countByEnumeratingWithState:&v55 objects:v68 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v56;
                while (2)
                {
                  for (j = 0; j != v30; ++j)
                  {
                    if (*v56 != v31)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v33 = *(*(&v55 + 1) + 8 * j);
                    objc_opt_class();
                    v34 = objc_opt_isKindOfClass();
                    if ((v34 & 1) == 0)
                    {
                      v44 = ASDTBaseLogType(v34, v35);
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        +[ASDTCustomProperty consolidatePList:];
                      }

                      v22 = v49;
                      v5 = v50;
                      goto LABEL_60;
                    }

                    [v7 addObject:v33];
                  }

                  v30 = [v17 countByEnumeratingWithState:&v55 objects:v68 count:16];
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }
              }

              v26 = v48 + 1;
              v22 = v49;
              v5 = v50;
              v25 = v46;
            }

            while (v48 + 1 != v47);
            v24 = [v49 countByEnumeratingWithState:&v59 objects:v69 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = v7;
LABEL_53:

      listCopy = v6;
LABEL_54:
      listCopy = listCopy;
      v43 = listCopy;
      goto LABEL_64;
    }

    v21 = ASDTBaseLogType(0, v4);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[ASDTCustomProperty consolidatePList:];
    }

LABEL_62:
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_54;
    }

    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      goto LABEL_54;
    }

    v20 = ASDTBaseLogType(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ASDTCustomProperty consolidatePList:listCopy];
    }
  }

  v43 = 0;
LABEL_64:

  return v43;
}

- (NSData)dataNoCopy
{
  WeakRetained = objc_loadWeakRetained(&self->_dataNoCopy);

  return WeakRetained;
}

+ (void)customPropertyForConfig:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 objectForKeyedSubscript:@"Subclass"];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)getPropertyWithQualifierSize:(uint64_t)a1 qualifierData:(uint64_t)a2 dataSize:andData:forClient:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDTCustomProperty.m" lineNumber:133 description:@"inPropertyValue must be an NSData object"];
}

- (void)getPropertyWithQualifierSize:qualifierData:dataSize:andData:forClient:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [v0 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)setPropertyWithQualifierSize:(void *)a1 qualifierData:dataSize:andData:forClient:.cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setPropertyWithQualifierSize:(void *)a1 qualifierData:dataSize:andData:forClient:.cold.2(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)setPropertyWithQualifierSize:(void *)a1 qualifierData:dataSize:andData:forClient:.cold.3(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setPropertyWithQualifierSize:(void *)a1 qualifierData:dataSize:andData:forClient:.cold.4(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)cachePropertyValue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)checkAndSetPropertyValue:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [v0 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)checkAndSetPropertyValue:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v7 = [v0 name];
  v1 = objc_opt_class();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)consolidatePList:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end