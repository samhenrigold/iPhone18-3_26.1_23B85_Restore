@interface CoreRCManagerProvider
- (BOOL)setExtendedProperty:(id)property forKey:(id)key ofDevice:(id)device error:(id *)error;
- (BOOL)setProperty:(id)property forKey:(id)key ofBus:(id)bus error:(id *)error;
- (CoreRCManagerProvider)initWithSerialQueue:(id)queue withoutPlugins:(BOOL)plugins;
- (id)addDeviceWithBus:(id)bus logicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress attributes:(id)attributes message:(id)message reason:(unint64_t)reason;
- (id)addDeviceWithBus:(id)bus transportProperties:(id)properties error:(id *)error;
- (id)createRCOverrideFromPaths:(id)paths;
- (id)extendedPropertyForKey:(id)key ofDevice:(id)device error:(id *)error;
- (id)propertyForKey:(id)key ofBus:(id)bus error:(id *)error;
- (void)dealloc;
- (void)initCECOverrides;
- (void)initOverrides;
- (void)interfaceController:(id)controller didAddInterface:(id)interface;
- (void)interfaceController:(id)controller didRemoveInterface:(id)interface;
@end

@implementation CoreRCManagerProvider

- (void)initCECOverrides
{
  v3 = objc_alloc_init(CoreCECStandardOverride);

  [(CoreRCManagerProvider *)self setStandardOverride:v3];
}

- (id)addDeviceWithBus:(id)bus logicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress attributes:(id)attributes message:(id)message reason:(unint64_t)reason
{
  physicalAddressCopy = physicalAddress;
  addressCopy = address;
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  pluginOverrides = [(CoreRCManagerProvider *)self pluginOverrides];
  v13 = [(NSArray *)pluginOverrides countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v13)
  {
    return [(CoreCECOverride *)[(CoreRCManagerProvider *)self standardOverride] addDeviceWithBus:bus logicalAddress:addressCopy physicalAddress:physicalAddressCopy attributes:attributes message:message reason:reason];
  }

  v14 = v13;
  v15 = *v23;
LABEL_3:
  v16 = 0;
  while (1)
  {
    if (*v23 != v15)
    {
      objc_enumerationMutation(pluginOverrides);
    }

    v17 = *(*(&v22 + 1) + 8 * v16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [v17 addDeviceWithBus:bus logicalAddress:addressCopy physicalAddress:physicalAddressCopy attributes:attributes message:message reason:reason];
      if (result)
      {
        return result;
      }
    }

    if (v14 == ++v16)
    {
      v14 = [(NSArray *)pluginOverrides countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        goto LABEL_3;
      }

      return [(CoreCECOverride *)[(CoreRCManagerProvider *)self standardOverride] addDeviceWithBus:bus logicalAddress:addressCopy physicalAddress:physicalAddressCopy attributes:attributes message:message reason:reason];
    }
  }
}

- (CoreRCManagerProvider)initWithSerialQueue:(id)queue withoutPlugins:(BOOL)plugins
{
  v9.receiver = self;
  v9.super_class = CoreRCManagerProvider;
  v5 = [(CoreRCManager *)&v9 initWithSerialQueue:queue];
  v6 = v5;
  if (v5)
  {
    if (!plugins)
    {
      [(CoreRCManagerProvider *)v5 initOverrides];
    }

    [(CoreRCManagerProvider *)v6 initCECOverrides];
    v7 = objc_opt_new();
    v6->_interfaceController = v7;
    [(CoreRCInterfaceController *)v7 setDelegate:v6];
    [(CoreRCInterfaceController *)v6->_interfaceController startOnQueue:[(CoreRCManager *)v6 serialQueue]];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreRCManagerProvider;
  [(CoreRCManager *)&v3 dealloc];
}

- (BOOL)setProperty:(id)property forKey:(id)key ofBus:(id)bus error:(id *)error
{
  v12 = 0;
  v9 = [(CoreRCManager *)self managedBusEquivalentTo:bus];
  if (v9)
  {
    result = [v9 setProperty:property forKey:key error:&v12];
    if (!error)
    {
      return result;
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
    result = 0;
    if (!error)
    {
      return result;
    }
  }

  if (!result)
  {
    *error = v12;
  }

  return result;
}

- (id)propertyForKey:(id)key ofBus:(id)bus error:(id *)error
{
  v10 = 0;
  v7 = [(CoreRCManager *)self managedBusEquivalentTo:bus];
  if (v7)
  {
    result = [v7 propertyForKey:key error:&v10];
    if (!error)
    {
      return result;
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v8 forKey:? ofBus:? error:?];
    result = 0;
    if (!error)
    {
      return result;
    }
  }

  if (!result)
  {
    *error = v10;
  }

  return result;
}

- (BOOL)setExtendedProperty:(id)property forKey:(id)key ofDevice:(id)device error:(id *)error
{
  v12 = 0;
  v9 = [(CoreRCManager *)self managedDeviceEquivalentTo:device];
  if (v9)
  {
    result = [v9 setExtendedProperty:property forKey:key error:&v12];
    if (!error)
    {
      return result;
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
    result = 0;
    if (!error)
    {
      return result;
    }
  }

  if (!result)
  {
    *error = v12;
  }

  return result;
}

- (id)extendedPropertyForKey:(id)key ofDevice:(id)device error:(id *)error
{
  v10 = 0;
  v7 = [(CoreRCManager *)self managedDeviceEquivalentTo:device];
  if (v7)
  {
    result = [v7 extendedPropertyForKey:key error:&v10];
    if (!error)
    {
      return result;
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v8 forKey:? ofBus:? error:?];
    result = 0;
    if (!error)
    {
      return result;
    }
  }

  if (!result)
  {
    *error = v10;
  }

  return result;
}

- (void)interfaceController:(id)controller didAddInterface:(id)interface
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = off_278EA2670;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = off_278EA26B8;
LABEL_5:
    v7 = [objc_alloc(*v6) initWithInterface:interface];
    if (v7)
    {
      v8 = v7;
      [(CoreRCManager *)self addBus:v7];
    }

    return;
  }

  if (gLogCategory_CoreRCManager <= 60 && (gLogCategory_CoreRCManager != -1 || _LogCategory_Initialize()))
  {
    [CoreRCManagerProvider interfaceController:interface didAddInterface:?];
  }
}

- (void)interfaceController:(id)controller didRemoveInterface:(id)interface
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    delegate = [interface delegate];
    if (delegate)
    {

      [(CoreRCManager *)self removeBus:delegate];
    }
  }

  else if (gLogCategory_CoreRCManager <= 60 && (gLogCategory_CoreRCManager != -1 || _LogCategory_Initialize()))
  {
    [CoreRCManagerProvider interfaceController:interface didRemoveInterface:?];
  }
}

- (id)createRCOverrideFromPaths:(id)paths
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = paths;
  v5 = [paths countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [MEMORY[0x277CCA8D8] bundleWithPath:v9];
        principalClass = [v10 principalClass];
        v12 = objc_alloc_init(principalClass);
        if (v12)
        {
          [v4 addObject:v12];
        }

        if (gLogCategory_CoreRCManager <= 10 && (gLogCategory_CoreRCManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCManager, "[CoreRCManagerProvider createRCOverrideFromPaths:]", 10, "path %@ bundle %@ principalClass %@ override %@\n", v9, v10, principalClass, v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)initOverrides
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 0xAuLL, 0);
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_msgSend(*(*(&v20 + 1) + 8 * i) stringByAppendingPathComponent:{@"CoreRC", "stringByAppendingPathComponent:", @"CECOverridePlugins"}];
        [v3 addObjectsFromArray:{-[CoreRCManagerProvider createRCOverrideFromPaths:](self, "createRCOverrideFromPaths:", objc_msgSend(MEMORY[0x277CCA8D8], "pathsForResourcesOfType:inDirectory:", @"plugin", v9))}];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 0xAuLL, 0);
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [objc_msgSend(*(*(&v16 + 1) + 8 * j) stringByAppendingPathComponent:{@"CoreRC", v16), "stringByAppendingPathComponent:", @"IROverridePlugins"}];
        [v3 addObjectsFromArray:{-[CoreRCManagerProvider createRCOverrideFromPaths:](self, "createRCOverrideFromPaths:", objc_msgSend(MEMORY[0x277CCA8D8], "pathsForResourcesOfType:inDirectory:", @"plugin", v15))}];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  [v3 addObjectsFromArray:{-[CoreRCManagerProvider createRCOverrideFromPaths:](self, "createRCOverrideFromPaths:", objc_msgSend(MEMORY[0x277CCA8D8], "pathsForResourcesOfType:inDirectory:", @"plugin", objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "builtInPlugInsPath"), "stringByAppendingPathComponent:", @"CECOverridePlugins"}];
  [v3 addObjectsFromArray:{-[CoreRCManagerProvider createRCOverrideFromPaths:](self, "createRCOverrideFromPaths:", objc_msgSend(MEMORY[0x277CCA8D8], "pathsForResourcesOfType:inDirectory:", @"plugin", objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "builtInPlugInsPath"), "stringByAppendingPathComponent:", @"IROverridePlugins"}];
  [(CoreRCManagerProvider *)self setPluginOverrides:v3];
  if (gLogCategory_CoreRCManager <= 10 && (gLogCategory_CoreRCManager != -1 || _LogCategory_Initialize()))
  {
    [(CoreRCManagerProvider *)self initOverrides];
  }
}

- (id)addDeviceWithBus:(id)bus transportProperties:(id)properties error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  pluginOverrides = [(CoreRCManagerProvider *)self pluginOverrides];
  v9 = [(NSArray *)pluginOverrides countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(pluginOverrides);
      }

      v13 = *(*(&v18 + 1) + 8 * v12);
      v17 = 0;
      result = [v13 addDeviceWithBus:bus transportProperties:properties error:&v17];
      if (result)
      {
        break;
      }

      if (gLogCategory_CoreRCManager <= 90 && (gLogCategory_CoreRCManager != -1 || _LogCategory_Initialize()))
      {
        [CoreRCManagerProvider addDeviceWithBus:v13 transportProperties:? error:?];
      }

      if (v10 == ++v12)
      {
        v15 = [(NSArray *)pluginOverrides countByEnumeratingWithState:&v18 objects:v22 count:16];
        v10 = v15;
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    if (error)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
      result = 0;
      *error = v16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setProperty:(void *)a1 forKey:(const char *)a2 ofBus:error:.cold.1(void *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_0_0(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

@end