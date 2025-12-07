@interface ASDObject
- (ASDObject)init;
- (ASDObject)initWithPlugin:(id)plugin;
- (ASDObject)owner;
- (ASDPlugin)plugin;
- (ASDPropertyChangedDelegate)propertyChangedDelegate;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (NSArray)customProperties;
- (id)customPropertyWithAddress:(const AudioObjectPropertyAddress *)address;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (int)addPassthroughPropertyWithUnderlyingObject:(id)object andPropertyAddress:(AudioObjectPropertyAddress)address;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (void)addCustomProperty:(id)property;
- (void)dealloc;
- (void)removeCustomProperty:(id)property;
- (void)setupDiagnosticStateDumpHandlerWithTreeWalk:(BOOL)walk;
@end

@implementation ASDObject

- (ASDPlugin)plugin
{
  WeakRetained = objc_loadWeakRetained(&self->_plugin);

  return WeakRetained;
}

uint64_t __29__ASDObject_customProperties__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 8)];

  return MEMORY[0x2821F96F8]();
}

- (ASDPropertyChangedDelegate)propertyChangedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_propertyChangedDelegate);

  return WeakRetained;
}

- (NSArray)customProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  customPropertyQueue = self->_customPropertyQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__ASDObject_customProperties__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(customPropertyQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (ASDObject)init
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(ASDObject *)self initWithPlugin:0];
  }

  else
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDObject init]"];
    [v4 raise:v5 format:{@"Do not call %@", v6}];

    return 0;
  }
}

- (ASDObject)initWithPlugin:(id)plugin
{
  pluginCopy = plugin;
  v14.receiver = self;
  v14.super_class = ASDObject;
  v5 = [(ASDObject *)&v14 init];
  if (v5)
  {
    [pluginCopy addCAObject:v5];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v6 bundleIdentifier];
    objc_storeWeak(&v5->_propertyChangedDelegate, pluginCopy);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    customProperties = v5->_customProperties;
    v5->_customProperties = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.object.%u.customProperties", bundleIdentifier, -[ASDObject objectID](v5, "objectID")];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    customPropertyQueue = v5->_customPropertyQueue;
    v5->_customPropertyQueue = v11;
  }

  return v5;
}

- (id)customPropertyWithAddress:(const AudioObjectPropertyAddress *)address
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  customProperties = [(ASDObject *)self customProperties];
  v5 = [customProperties countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(customProperties);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        mSelector = address->mSelector;
        if (mSelector == [v9 selector])
        {
          mScope = address->mScope;
          if (mScope == [v9 scope])
          {
            mElement = address->mElement;
            if (mElement == [v9 element])
            {
              v13 = v9;
              goto LABEL_13;
            }
          }
        }
      }

      v6 = [customProperties countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (property)
  {
    mSelector = property->mSelector;
    if (property->mSelector <= 1668641651)
    {
      v4 = mSelector == 1650682995;
      v5 = 1668047219;
    }

    else
    {
      if (mSelector == 1668641652)
      {
        customPropertyQueue = self->_customPropertyQueue;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __25__ASDObject_hasProperty___block_invoke;
        v11[3] = &unk_278CE3E28;
        v11[4] = self;
        v11[5] = &v12;
        dispatch_sync(customPropertyQueue, v11);
        goto LABEL_12;
      }

      v4 = mSelector == 1937007734;
      v5 = 1870098020;
    }

    if (v4 || mSelector == v5)
    {
      v15 = 1;
    }

    else
    {
      v10 = [(ASDObject *)self customPropertyWithAddress:?];
      *(v13 + 24) = v10 != 0;
    }
  }

LABEL_12:
  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v7;
}

void *__25__ASDObject_hasProperty___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (!settable)
  {
    return 0;
  }

  mSelector = settable->mSelector;
  if (settable->mSelector <= 1668641651)
  {
    v4 = mSelector == 1650682995;
    v5 = 1668047219;
  }

  else
  {
    v4 = mSelector == 1668641652 || mSelector == 1870098020;
    v5 = 1937007734;
  }

  if (v4 || mSelector == v5)
  {
    return 0;
  }

  v7 = [(ASDObject *)self customPropertyWithAddress:?];
  isSettable = [v7 isSettable];

  return isSettable;
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (!property)
  {
    goto LABEL_14;
  }

  v6 = *&size;
  mSelector = property->mSelector;
  if (property->mSelector <= 1668641651)
  {
    if (mSelector == 1650682995)
    {
LABEL_9:
      v19 = 4;
      goto LABEL_14;
    }

    v8 = 1668047219;
  }

  else
  {
    if (mSelector == 1668641652)
    {
      customPropertyQueue = self->_customPropertyQueue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __68__ASDObject_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke;
      v15[3] = &unk_278CE3E28;
      v15[4] = self;
      v15[5] = &v16;
      dispatch_sync(customPropertyQueue, v15);
      goto LABEL_14;
    }

    if (mSelector == 1870098020)
    {
      goto LABEL_14;
    }

    v8 = 1937007734;
  }

  if (mSelector == v8)
  {
    goto LABEL_9;
  }

  v10 = [(ASDObject *)self customPropertyWithAddress:?];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 dataSizeWithQualifierSize:v6 andQualifierData:data];
    *(v17 + 6) = v12;
  }

LABEL_14:
  v13 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v13;
}

void *__68__ASDObject_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = 12 * result;
  return result;
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v8 = 0;
  v39 = *MEMORY[0x277D85DE8];
  if (!property || !dataSize || !andData)
  {
    return v8;
  }

  v11 = *&client;
  v13 = *&size;
  mSelector = property->mSelector;
  if (property->mSelector > 1668641651)
  {
    switch(mSelector)
    {
      case 0x63757374u:
        v19 = *dataSize;
        if (*dataSize >= 0xC)
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          obj = [(ASDObject *)self customProperties];
          v23 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = 0;
            v26 = *v35;
            v32 = v19 / 0xCuLL;
            v27 = v32 - 1;
            while (2)
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v35 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v34 + 1) + 8 * i);
                v30 = andData + 12 * v25;
                *v30 = [v29 selector];
                v30[1] = [v29 propertyDataType];
                v30[2] = [v29 qualifierDataType];
                if (v27 == v25)
                {
                  v25 = v32;
                  goto LABEL_37;
                }

                ++v25;
              }

              v24 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v25 = 0;
          }

LABEL_37:

          v20 = 12 * v25;
        }

        else
        {
          v20 = 0;
        }

        *dataSize = v20;
        return 1;
      case 0x6F776E64u:
        *dataSize = 0;
        return 1;
      case 0x73746476u:
        if (*dataSize >= 4)
        {
          *dataSize = 4;
          WeakRetained = objc_loadWeakRetained(&self->_owner);

          if (WeakRetained)
          {
            owner = [(ASDObject *)self owner];
            *andData = [owner objectID];

            return 1;
          }
        }

        return 0;
    }

    goto LABEL_22;
  }

  if (mSelector == 1650682995)
  {
    if (*dataSize >= 4)
    {
      *dataSize = 4;
      baseClass = [(ASDObject *)self baseClass];
      goto LABEL_20;
    }

    return 0;
  }

  if (mSelector == 1668047219)
  {
    if (*dataSize >= 4)
    {
      *dataSize = 4;
      baseClass = [(ASDObject *)self objectClass];
LABEL_20:
      *andData = baseClass;
      return 1;
    }

    return 0;
  }

LABEL_22:
  v21 = [(ASDObject *)self customPropertyWithAddress:?];
  v22 = v21;
  if (v21)
  {
    v8 = [v21 getPropertyWithQualifierSize:v13 qualifierData:data dataSize:dataSize andData:andData forClient:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  if (!property)
  {
    return 0;
  }

  v8 = *&client;
  v10 = *&dataSize;
  v12 = *&size;
  v13 = 0;
  mSelector = property->mSelector;
  if (property->mSelector <= 1668641651)
  {
    v15 = mSelector == 1650682995;
    v16 = 1668047219;
  }

  else
  {
    v15 = mSelector == 1668641652 || mSelector == 1870098020;
    v16 = 1937007734;
  }

  if (!v15 && mSelector != v16)
  {
    v19 = [(ASDObject *)self customPropertyWithAddress:?];
    if ([v19 isSettable])
    {
      v13 = [v19 setPropertyWithQualifierSize:v12 qualifierData:data dataSize:v10 andData:andData forClient:v8];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)addCustomProperty:(id)property
{
  propertyCopy = property;
  v6 = propertyCopy;
  if (propertyCopy)
  {
    if (![propertyCopy selector])
    {
      [ASDObject addCustomProperty:];
    }

    owner = [v6 owner];

    if (owner)
    {
      [ASDObject addCustomProperty:];
    }

    if ([v6 propertyDataType] != 1667658612 && objc_msgSend(v6, "propertyDataType") != 1886155636 && objc_msgSend(v6, "propertyDataType") != 1918990199)
    {
      [ASDObject addCustomProperty:];
    }

    if ([v6 qualifierDataType] != 1667658612 && objc_msgSend(v6, "qualifierDataType") != 1886155636 && objc_msgSend(v6, "qualifierDataType") != 1918990199 && objc_msgSend(v6, "qualifierDataType"))
    {
      [ASDObject addCustomProperty:];
    }

    [v6 setOwner:self];
    customPropertyQueue = self->_customPropertyQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__ASDObject_addCustomProperty___block_invoke;
    block[3] = &unk_278CE3EA0;
    block[4] = self;
    v13 = v6;
    v14 = a2;
    dispatch_sync(customPropertyQueue, block);
    v11 = 0;
    v10 = 0x676C6F6263757374;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v10 forObject:self];
  }
}

uint64_t __31__ASDObject_addCustomProperty___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) containsObject:*(a1 + 40)])
  {
    __31__ASDObject_addCustomProperty___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);

  return [v3 addObject:v2];
}

- (void)removeCustomProperty:(id)property
{
  propertyCopy = property;
  v6 = propertyCopy;
  if (propertyCopy)
  {
    customPropertyQueue = self->_customPropertyQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__ASDObject_removeCustomProperty___block_invoke;
    block[3] = &unk_278CE3EA0;
    block[4] = self;
    v8 = propertyCopy;
    v13 = v8;
    v14 = a2;
    dispatch_sync(customPropertyQueue, block);
    [v8 setOwner:0];
    v11 = 0;
    v10 = 0x676C6F6263757374;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v10 forObject:self];
  }
}

uint64_t __34__ASDObject_removeCustomProperty___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 8) containsObject:*(a1 + 40)] & 1) == 0)
  {
    __34__ASDObject_removeCustomProperty___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);

  return [v3 removeObject:v2];
}

- (void)setupDiagnosticStateDumpHandlerWithTreeWalk:(BOOL)walk
{
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(0, 0);
  objc_copyWeak(&v6, &location);
  walkCopy = walk;
  self->_stateDumpHandler = os_state_add_handler();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

_DWORD *__57__ASDObject_setupDiagnosticStateDumpHandlerWithTreeWalk___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (*(a2 + 16) == 3)
  {
    v6 = [WeakRetained diagnosticDescriptionWithIndent:&stru_2853456D8 walkTree:*(a1 + 40)];
    v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 length];
      v10 = malloc_type_calloc(1uLL, v9 + 200, 0x1000040BEF03554uLL);
      if (v10)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [v5 driverClassName];
        v13 = [v11 stringWithFormat:@"AudioServerDriver %@ State:", v12];

        *v10 = 1;
        v10[1] = v9;
        [v13 UTF8String];
        __strlcpy_chk();
        memcpy(v10 + 50, [v8 bytes], v9);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  v5 = MEMORY[0x277CCAB68];
  indentCopy = indent;
  string = [v5 string];
  driverClassName = [(ASDObject *)self driverClassName];
  [string appendFormat:@"%@+%s\n", indentCopy, objc_msgSend(driverClassName, "UTF8String")];

  [string appendFormat:@"%@|    Object ID: %u\n", indentCopy, -[ASDObject objectID](self, "objectID")];
  baseClass = [(ASDObject *)self baseClass];
  LODWORD(v10) = baseClass >> 24;
  if (((baseClass >> 24) - 32) >= 0x5F)
  {
    v10 = 32;
  }

  else
  {
    v10 = v10;
  }

  LODWORD(v11) = baseClass << 8 >> 24;
  if ((v11 - 32) >= 0x5F)
  {
    v11 = 32;
  }

  else
  {
    v11 = v11;
  }

  LODWORD(v12) = baseClass >> 8;
  if ((v12 - 32) >= 0x5F)
  {
    v12 = 32;
  }

  else
  {
    v12 = v12;
  }

  if ((baseClass - 32) >= 0x5F)
  {
    v13 = 32;
  }

  else
  {
    v13 = baseClass;
  }

  [string appendFormat:@"%@|    Base Class: %c%c%c%c\n", indentCopy, v10, v11, v12, v13];
  objectClass = [(ASDObject *)self objectClass];
  LODWORD(v15) = objectClass >> 24;
  if (((objectClass >> 24) - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  LODWORD(v16) = objectClass << 8 >> 24;
  if ((v16 - 32) >= 0x5F)
  {
    v16 = 32;
  }

  else
  {
    v16 = v16;
  }

  LODWORD(v17) = objectClass >> 8;
  if ((v17 - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = v17;
  }

  if ((objectClass - 32) >= 0x5F)
  {
    v18 = 32;
  }

  else
  {
    v18 = objectClass;
  }

  [string appendFormat:@"%@|    Object Class: %c%c%c%c\n", indentCopy, v15, v16, v17, v18];
  owner = [(ASDObject *)self owner];
  [string appendFormat:@"%@|    Owner ID: %u\n", indentCopy, objc_msgSend(owner, "objectID")];

  return string;
}

- (void)dealloc
{
  if (self->_stateDumpHandler)
  {
    os_state_remove_handler();
  }

  WeakRetained = objc_loadWeakRetained(&self->_plugin);
  [WeakRetained removeCAObject:self];

  v4.receiver = self;
  v4.super_class = ASDObject;
  [(ASDObject *)&v4 dealloc];
}

- (int)addPassthroughPropertyWithUnderlyingObject:(id)object andPropertyAddress:(AudioObjectPropertyAddress)address
{
  addressCopy = address;
  objectCopy = object;
  if ([objectCopy hasProperty:&addressCopy])
  {
    v6 = [ASDPassthroughProperty alloc];
    v7 = [(ASDPassthroughProperty *)v6 initWithUnderlyingObject:objectCopy andPropertyAddress:*&addressCopy.mSelector, addressCopy.mElement];
    if (v7)
    {
      [(ASDObject *)self addCustomProperty:v7];
      v8 = 0;
    }

    else
    {
      v8 = 1852797029;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASDObject addPassthroughPropertyWithUnderlyingObject:? andPropertyAddress:?];
      }
    }
  }

  else
  {
    v8 = 2003332927;
  }

  return v8;
}

- (ASDObject)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)addCustomProperty:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addCustomProperty:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addCustomProperty:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addCustomProperty:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __31__ASDObject_addCustomProperty___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 48) object:*v0 file:@"ASDObject.m" lineNumber:347 description:@"Custom property already exists."];
}

void __34__ASDObject_removeCustomProperty___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 48) object:*v0 file:@"ASDObject.m" lineNumber:365 description:@"Custom property doesn't exist."];
}

- (void)addPassthroughPropertyWithUnderlyingObject:(int *)a1 andPropertyAddress:.cold.1(int *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *a1 >> 24;
  if ((v2 - 32) >= 0x5F)
  {
    v2 = 32;
  }

  v3 = v1 << 8 >> 24;
  if ((v3 - 32) >= 0x5F)
  {
    v3 = 32;
  }

  v4 = v1 >> 8;
  if ((v4 - 32) >= 0x5F)
  {
    v4 = 32;
  }

  v1 = v1;
  v5[0] = 67109888;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  if ((v1 - 32) >= 0x5F)
  {
    v1 = 32;
  }

  v10 = 1024;
  v11 = v1;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to add passthrough property '%c%c%c%c'", v5, 0x1Au);
}

@end