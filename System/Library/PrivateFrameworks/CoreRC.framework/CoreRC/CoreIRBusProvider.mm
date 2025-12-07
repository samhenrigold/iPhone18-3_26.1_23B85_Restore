@interface CoreIRBusProvider
+ (NSSet)deviceDictClasses;
- (BOOL)addMappingsFromRemote:(id)remote toLearningSession:(id)session;
- (BOOL)deleteDevicePrefsWithUUID:(id)d UUIDKey:(id)key;
- (BOOL)mergePersistentMappingsFromSession:(id)session ofDevice:(id)device;
- (BOOL)recreateDevices;
- (BOOL)saveDevicePrefsWithDict:(id)dict error:(id *)error;
- (BOOL)setPairedAppleRemote:(id)remote error:(id *)error;
- (BOOL)setPrefsPropertyForUUID:(id)d UUIDKey:(id)key object:(id)object key:(id)a6;
- (BOOL)setProperty:(id)property forKey:(id)key error:(id *)error;
- (BOOL)updatePersistentValue:(id)value forProperty:(id)property ofDevice:(id)device;
- (CoreIRBusProvider)initWithInterface:(id)interface;
- (id)_addAppleRemoteWithDeviceUID:(unsigned __int8)d;
- (id)_addDeviceWithType:(unint64_t)type matching:(id)matching transportProperties:(id)properties error:(id *)error;
- (id)_findAppleRemoteWithUID:(unsigned __int8)d;
- (id)addDeviceWithType:(unint64_t)type matching:(id)matching error:(id *)error;
- (id)addDeviceWithType:(unint64_t)type matching:(id)matching learningSession:(id)session error:(id *)error;
- (id)appleIRDeviceWithUID:(unsigned __int8)d create:(BOOL)create;
- (id)copyDevicePrefs:(id *)prefs;
- (id)copyPrefsPropertyForUUID:(id)d UUIDKey:(id)key key:(id)a5;
- (id)getExistingDeviceWithType:(unint64_t)type matching:(id)matching;
- (id)propertyForKey:(id)key error:(id *)error;
- (id)thirdPartyRemotes;
- (uint64_t)updateAllowHibernation;
- (uint64_t)updateLearnedProtocols;
- (void)_recreatePairedDeviceFromDefaults:(id)defaults key:(id)key;
- (void)_removeMappingForCommand:(unint64_t)command from:(id)from;
- (void)dealloc;
- (void)didAddDevice:(id)device;
- (void)didRemoveDevice:(id)device;
- (void)interface:(id)interface receivedCommand:(id)command;
- (void)migrateOldRemotes;
- (void)setManager:(id)manager;
- (void)updateAllowHibernation;
- (void)updateLearnedProtocols;
- (void)willAddToManager:(id)manager;
- (void)willRemoveDevice:(id)device;
@end

@implementation CoreIRBusProvider

- (CoreIRBusProvider)initWithInterface:(id)interface
{
  v8.receiver = self;
  v8.super_class = CoreIRBusProvider;
  v4 = [(CoreIRBus *)&v8 init];
  if (v4)
  {
    interfaceCopy = interface;
    v4->_interface = interfaceCopy;
    if (interfaceCopy && ([(IRInterface *)interfaceCopy setDelegate:v4], v6 = [[CoreIRDeviceProvider alloc] initWithBus:v4 local:1], (v4->_localDevice = v6) != 0))
    {
      [(CoreIRDevice *)v4->_localDevice setIsTransmitter:[(IRInterface *)v4->_interface isTxInterface]];
      [(CoreIRDevice *)v4->_localDevice setIsReceiver:[(IRInterface *)v4->_interface isRxInterface]];
      if ([(IRInterface *)v4->_interface buttons])
      {
        -[CoreIRDevice setButtons:](v4->_localDevice, "setButtons:", [MEMORY[0x277CBEA60] arrayWithArray:{-[IRInterface buttons](v4->_interface, "buttons")}]);
      }

      v4->_stateHandler = os_state_add_handler();
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

_DWORD *__39__CoreIRBusProvider_initWithInterface___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  v10 = 0;
  v2 = [*(a1 + 32) copyDevicePrefs:&v10];
  v3 = v2;
  if (v2)
  {
    v4 = v10 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"%@", v2), "dataUsingEncoding:", 4];
    v7 = v10;
    if (!v10 || gLogCategory_CoreRCBus > 90)
    {
      goto LABEL_13;
    }

    if (gLogCategory_CoreRCBus == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v7 = v10;
    }

    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider initWithInterface:]_block_invoke", 90, "Failed to serialize preference dictionary: %@\n", v7);
LABEL_13:
    v8 = [v6 length];
    v5 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
    __strlcpy_chk();
    *v5 = 1;
    v5[1] = v8;
    [v6 getBytes:v5 + 50 length:v8];

    return v5;
  }

  return 0;
}

+ (NSSet)deviceDictClasses
{
  result = deviceDictClasses__deviceDictClasses;
  if (!deviceDictClasses__deviceDictClasses)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    result = [v3 initWithObjects:{v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
    deviceDictClasses__deviceDictClasses = result;
  }

  return result;
}

- (void)dealloc
{
  [(IRInterface *)self->_interface setDelegate:0];

  v3.receiver = self;
  v3.super_class = CoreIRBusProvider;
  [(CoreIRBus *)&v3 dealloc];
}

- (void)setManager:(id)manager
{
  if (manager)
  {
    v4.receiver = self;
    v4.super_class = CoreIRBusProvider;
    [(CoreRCBus *)&v4 setManager:?];
    [(CoreRCBus *)self addDevice:self->_localDevice];
  }

  else
  {
    [(CoreRCBus *)self removeDevice:self->_localDevice];
    v4.receiver = self;
    v4.super_class = CoreIRBusProvider;
    [(CoreRCBus *)&v4 setManager:0];
  }
}

- (void)willAddToManager:(id)manager
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider willAddToManager:?];
  }

  [(CoreIRBusProvider *)self recreateDevices];
  if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
  {
    [(CoreIRBusProvider *)self migrateOldRemotes];
  }

  v5.receiver = self;
  v5.super_class = CoreIRBusProvider;
  [(CoreRCBus *)&v5 willAddToManager:manager];
}

- (BOOL)setProperty:(id)property forKey:(id)key error:(id *)error
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider setProperty:forKey:error:]", 10, "%@ setProperty for key - %@\n", self, key);
  }

  interface = [(CoreIRBusProvider *)self interface];

  return [(CoreRCInterface *)interface setProperty:property forKey:key error:error];
}

- (id)propertyForKey:(id)key error:(id *)error
{
  v8 = 0;
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider propertyForKey:error:]", 10, "%@ getProperty for key - %@\n", self, key);
  }

  result = [(CoreRCInterface *)[(CoreIRBusProvider *)self interface] propertyForKey:key error:&v8];
  if (error)
  {
    if (!result)
    {
      *error = v8;
    }
  }

  return result;
}

- (void)didRemoveDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = CoreIRBusProvider;
  [(CoreRCBus *)&v5 didRemoveDevice:?];
  if ([device is3rdPartyRemote])
  {
    [(CoreIRBusProvider *)self updateLearnedProtocols];
  }

  [(CoreIRBusProvider *)self updateAllowHibernation];
}

- (void)updateAllowHibernation
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if ([(IRInterface *)[(CoreIRBusProvider *)self interface] canWakeFor3rdPartyIR]|| (v11 = 0u, v12 = 0u, v9 = 0u, v10 = 0u, v3 = [(CoreRCBus *)self devices], (v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16]) == 0))
  {
    v7 = 1;
  }

  else
  {
    v5 = v4;
    v6 = *v10;
    LODWORD(v7) = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 = ([*(*(&v9 + 1) + 8 * i) is3rdPartyRemote] ^ 1) & v7;
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider updateAllowHibernation]", 10, "%@ shouldAllowHibernation: %d\n", self, v7);
  }

  if (![(CoreRCBus *)self setAllowHibernation:v7 error:&v13])
  {
    [(CoreIRBusProvider *)v7 updateAllowHibernation];
  }
}

- (void)updateLearnedProtocols
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  devices = [(CoreRCBus *)self devices];
  v4 = [(NSSet *)devices countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 is3rdPartyRemote])
        {
          v6 = [v9 protocolMask] | v6;
        }
      }

      v5 = [(NSSet *)devices countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ([(IRInterface *)[(CoreIRBusProvider *)self interface] setLearnedProtocolMask:v6 error:&v14])
  {
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [(CoreIRBusProvider *)self updateLearnedProtocols];
    }
  }

  else
  {
    [(CoreIRBusProvider *)gLogCategory_CoreRCBus updateLearnedProtocols:&v14];
  }
}

- (id)thirdPartyRemotes
{
  devices = [(CoreRCBus *)self devices];

  return [(NSSet *)devices objectsPassingTest:&__block_literal_global];
}

void *__38__CoreIRBusProvider_thirdPartyRemotes__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isAppleRemote])
  {
    return 0;
  }

  result = [a2 isTransmitter];
  if (result)
  {
    return ([a2 isLocalDevice] ^ 1);
  }

  return result;
}

- (id)addDeviceWithType:(unint64_t)type matching:(id)matching learningSession:(id)session error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v20 = 0;
  v23 = @"CoreIRDLearntDevicePropertyMatching";
  v24[0] = matching;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider addDeviceWithType:matching:learningSession:error:]", 50, "%@ deviceType = %d matchingDict %@ session = %@\n", self, type, matching, session);
  }

  if (session && [session mappings])
  {
    v12 = [(CoreIRBusProvider *)self _addDeviceWithType:type matching:matching transportProperties:v11 error:&v20];
    if (v12)
    {
      v13 = v12;
      if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        [CoreIRBusProvider addDeviceWithType:session matching:? learningSession:? error:?];
      }

      if ([v13 setMappingWithSession:session error:&v20])
      {
        if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface]&& [(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
        {
          v14 = 17;
        }

        else if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface])
        {
          v14 = 1;
        }

        else if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
        {
          v14 = 16;
        }

        else
        {
          v14 = 0;
        }

        mappings = [session mappings];
        v16 = MEMORY[0x277CBEB38];
        v22[0] = [v13 uniqueID];
        v22[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
        v22[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
        v22[3] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(session, "reason")}];
        v22[4] = mappings;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];
        v21[0] = @"CoreIRDevicePrefDictUUID";
        v21[1] = @"CoreIRDevicePrefDictInterfaceType";
        v21[2] = @"CoreIRDevicePrefDictType";
        v21[3] = @"CoreIRDevicePrefDictReason";
        v21[4] = @"CoreIRDevicePrefDictMappings";
        v18 = [v16 dictionaryWithObjects:v17 forKeys:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v21, 5)}];
        [v18 addEntriesFromDictionary:v11];
        [v18 addEntriesFromDictionary:{objc_msgSend(v13, "persistentProperties")}];
        [(CoreIRBusProvider *)self saveDevicePrefsWithDict:v18 error:error];
        [(CoreRCBus *)self addDevice:v13];
        return v13;
      }
    }
  }

  else
  {
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
  }

  v13 = 0;
  if (error)
  {
    *error = v20;
  }

  return v13;
}

- (id)_addDeviceWithType:(unint64_t)type matching:(id)matching transportProperties:(id)properties error:(id *)error
{
  v14 = 0;
  v9 = [-[CoreRCBus manager](self "manager")];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 isLocalDevice] & 1) == 0)
    {
      [v10 setMatchingDict:matching];
      [v10 setIsTransmitter:type & 1];
      [v10 setIsReceiver:(type >> 4) & 1];
      goto LABEL_5;
    }

    v12 = -6734;
  }

  else
  {
    v12 = -6728;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
  v14 = v13;
  v10 = 0;
  if (error)
  {
    *error = v13;
  }

LABEL_5:
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider _addDeviceWithType:matching:transportProperties:error:]", 40, "_addDeviceWithType device: %@ matchingDict: %@ error: %@\n", v10, matching, v14);
  }

  return v10;
}

- (id)getExistingDeviceWithType:(unint64_t)type matching:(id)matching
{
  typeCopy = type;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  devices = [(CoreRCBus *)self devices];
  v7 = [(NSSet *)devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(devices);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ((([v11 isTransmitter] ^ typeCopy) & 1) == 0 && ((typeCopy & 0x10) == 0) != objc_msgSend(v11, "isReceiver") && objc_msgSend(objc_msgSend(v11, "matchingDict"), "isEqual:", matching))
        {
          if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
          {
            [CoreIRBusProvider getExistingDeviceWithType:v11 matching:?];
          }

          return v11;
        }
      }

      v8 = [(NSSet *)devices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (BOOL)addMappingsFromRemote:(id)remote toLearningSession:(id)session
{
  remoteCopy = remote;
  v43 = *MEMORY[0x277D85DE8];
  v5 = [remote objectForKey:@"buttons"];
  if (!v5)
  {
    v32 = 4294960579;
LABEL_35:
    if (gLogCategory_CoreRCBus <= 90)
    {
      if (gLogCategory_CoreRCBus == -1)
      {
        v31 = _LogCategory_Initialize();
        if (!v31)
        {
          return v31;
        }
      }

      LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider addMappingsFromRemote:toLearningSession:]", 90, "Error %d migrating remote data: %@\n", v32, remoteCopy);
    }

    LOBYTE(v31) = 0;
    return v31;
  }

  v6 = v5;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    v34 = remoteCopy;
    v35 = *v39;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [objc_msgSend(v11 objectForKey:{@"protocolID", "unsignedIntValue"}];
        if (v12 == 8)
        {
LABEL_28:
          v32 = 4294960579;
          goto LABEL_34;
        }

        v13 = v12;
        v14 = [objc_msgSend(v11 objectForKey:{@"usagePage", "unsignedIntValue"}];
        v15 = [objc_msgSend(v11 objectForKey:{@"usageCode", "unsignedIntValue"}];
        v37 = 0;
        if (CoreRCCommandFromLegacyHIDUsage(&v37, v14, v15))
        {
          v16 = [v11 objectForKey:@"commandPattern"];
          if (!v16)
          {
            goto LABEL_28;
          }

          v17 = v16;
          v18 = [v16 count];
          if (!v18)
          {
            goto LABEL_28;
          }

          v19 = v18;
          v20 = v8;
          v21 = malloc_type_calloc(8uLL, v18, 0x97E07DE9uLL);
          if (!v21)
          {
            goto LABEL_33;
          }

          v22 = v21;
          for (j = 0; j != v19; ++j)
          {
            v22[j] = [objc_msgSend(v17 objectAtIndex:{j), "unsignedLongLongValue"}];
          }

          v24 = [v11 objectForKey:@"repeatPattern"];
          if (!v24 || (v25 = v24, (v26 = [v24 count]) == 0))
          {
            v32 = 4294960579;
            goto LABEL_31;
          }

          v27 = v26;
          v28 = malloc_type_calloc(8uLL, v26, 0x947B01E1uLL);
          if (!v28)
          {
            v32 = 4294960568;
LABEL_31:
            free(v22);
LABEL_34:
            remoteCopy = v34;
            goto LABEL_35;
          }

          v29 = v28;
          for (k = 0; k != v27; ++k)
          {
            v29[k] = [objc_msgSend(v25 objectAtIndex:{k), "unsignedLongLongValue"}];
          }

          if (([session addMappingWithProtocolID:v13 options:0 commandToMap:v37 commands:v22 commandCount:v19 repeats:v29 repeatCount:v27] & 1) == 0)
          {
            free(v22);
            free(v29);
LABEL_33:
            v32 = 4294960568;
            goto LABEL_34;
          }

          free(v22);
          free(v29);
          v9 = v35;
          v8 = v20;
        }

        else if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider addMappingsFromRemote:toLearningSession:]", 90, "Learned old-format remote unknown button:%x,%x\n", v14, v15);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v31) = 1;
  return v31;
}

- (void)_recreatePairedDeviceFromDefaults:(id)defaults key:(id)key
{
  v5 = [defaults objectForKey:key];
  if (v5)
  {
    v6 = v5;
    v8 = 0;
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreIRBusProvider _recreatePairedDeviceFromDefaults:key:];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = -[CoreIRBusProvider _addAppleRemoteWithDeviceUID:](self, "_addAppleRemoteWithDeviceUID:", [v6 unsignedCharValue]);
      if (v7)
      {
        if (![(CoreIRBusProvider *)self setPairedAppleRemote:v7 error:&v8])
        {
          [CoreIRBusProvider _recreatePairedDeviceFromDefaults:? key:?];
        }
      }
    }
  }
}

- (void)willRemoveDevice:(id)device
{
  -[CoreIRBusProvider deleteDevicePrefsWithUUID:UUIDKey:](self, "deleteDevicePrefsWithUUID:UUIDKey:", [device uniqueID], @"CoreIRDevicePrefDictUUID");
  v5.receiver = self;
  v5.super_class = CoreIRBusProvider;
  [(CoreIRBus *)&v5 willRemoveDevice:device];
}

- (BOOL)saveDevicePrefsWithDict:(id)dict error:(id *)error
{
  dictCopy = dict;
  v73 = *MEMORY[0x277D85DE8];
  v52 = 0;
  if (!dict)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
    LODWORD(v13) = 0;
    v21 = 0;
LABEL_61:
    v10 = 0;
    v8 = 0;
LABEL_62:
    v52 = v22;
    if (!v22)
    {
      goto LABEL_48;
    }

    goto LABEL_31;
  }

  v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v5)
  {
    v7 = objc_opt_new();
    goto LABEL_6;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6756 userInfo:0];
    LODWORD(v13) = 0;
    v21 = 0;
    LODWORD(dictCopy) = 0;
    goto LABEL_61;
  }

  v7 = [v6 mutableCopy];
LABEL_6:
  v8 = v7;
  if (!v7 || (v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dictCopy requiringSecureCoding:1 error:&v52]) == 0)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6728 userInfo:0];
    LODWORD(v13) = 0;
    v21 = 0;
    LODWORD(dictCopy) = 0;
    v10 = 0;
    goto LABEL_62;
  }

  v10 = v9;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v48 objects:v72 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    dictCopy = 0;
    v14 = *v49;
    while (2)
    {
      v15 = v8;
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v15);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_29;
        }

        if ([v17 length] > v13)
        {
          v13 = [v17 length];
        }

        v18 = [v17 length];
        v19 = __CFADD__(dictCopy, v18);
        dictCopy += v18;
        if (v19)
        {
LABEL_29:
          [CoreIRBusProvider saveDevicePrefsWithDict:? error:?];
          v21 = 0;
          v8 = v15;
          goto LABEL_30;
        }
      }

      v8 = v15;
      v12 = [v15 countByEnumeratingWithState:&v48 objects:v72 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
    dictCopy = 0;
  }

  if ([v10 length] > v13)
  {
    LODWORD(v13) = [v10 length];
  }

  v20 = [v10 length];
  v19 = __CFADD__(dictCopy, v20);
  dictCopy += v20;
  if (v19 || dictCopy > 0xE1000)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6751 userInfo:0];
    v21 = 0;
    goto LABEL_62;
  }

  [v8 addObject:v10];
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [(CoreIRBusProvider *)v10 saveDevicePrefsWithDict:dictCopy error:v8];
  }

  v21 = 1;
LABEL_30:
  v22 = v52;
  if (v52)
  {
LABEL_31:
    if ([v22 code] == -6751 || objc_msgSend(v52, "code") == -6717)
    {
      v39 = v21;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v23 = [(CoreRCBus *)self devices:v10];
      v24 = [(NSSet *)v23 countByEnumeratingWithState:&v44 objects:v71 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = 0;
        v27 = 0;
        v41 = 0;
        v43 = 0;
        v28 = *v45;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v45 != v28)
            {
              objc_enumerationMutation(v23);
            }

            v30 = *(*(&v44 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 += [v30 isReceiver];
              v27 += [v30 isTransmitter];
              if ([v30 is3rdPartyRemote])
              {
                ++v43;
              }

              else
              {
                v41 += [v30 isAppleRemote];
              }
            }
          }

          v25 = [(NSSet *)v23 countByEnumeratingWithState:&v44 objects:v71 count:16];
        }

        while (v25);
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v41 = 0;
        v43 = 0;
      }

      v8 = v38;
      v21 = v39;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        code = [v52 code];
        v35 = [v37 length];
        v36 = [v38 count];
        *buf = 67111168;
        v54 = code;
        v55 = 1024;
        v56 = v35;
        v57 = 1024;
        v58 = v13;
        v59 = 1024;
        v60 = v36;
        v61 = 1024;
        v62 = dictCopy;
        v63 = 1024;
        v64 = v26;
        v65 = 1024;
        v66 = v27;
        v67 = 1024;
        v68 = v43;
        v21 = v39;
        v69 = 1024;
        v70 = v41;
        _os_log_fault_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "CoreRC saveDevicePrefsWithDict failed:0x%x newEntrySize:%u maxEntrySize:%u numEntries:%u totalSize:%u numRx:%u numTx:%u num3rdParty:%u numApple:%u", buf, 0x38u);
      }
    }
  }

LABEL_48:

  if (error)
  {
    v31 = v21;
  }

  else
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    v32 = v52;
    if (!v52)
    {
      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6700 userInfo:0];
    }

    *error = v32;
  }

  return v21;
}

- (BOOL)deleteDevicePrefsWithUUID:(id)d UUIDKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  if (!key)
  {
    goto LABEL_33;
  }

  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider deleteDevicePrefsWithUUID:d UUIDKey:?];
  }

  v6 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v6)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v6 mutableCopy];
    if (v6 && +[CoreIRBusProvider deviceDictClasses])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * v10);
            v16 = 0;
            v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:+[CoreIRBusProvider deviceDictClasses](CoreIRBusProvider fromData:"deviceDictClasses") error:{v11, &v16}];
            if (v12)
            {
              v13 = [v12 objectForKeyedSubscript:key];
              if (v13 && [d isEqual:v13])
              {
                [v6 removeObject:v11];
                [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
                [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
                if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
                {
                  [CoreIRBusProvider deleteDevicePrefsWithUUID:UUIDKey:];
                }

                return 1;
              }
            }

            else
            {
              [CoreIRBusProvider deleteDevicePrefsWithUUID:? UUIDKey:?];
            }

            ++v10;
          }

          while (v8 != v10);
          v14 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v8 = v14;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        [CoreIRBusProvider deleteDevicePrefsWithUUID:d UUIDKey:?];
      }
    }
  }

  else
  {
LABEL_33:
    v6 = 0;
  }

LABEL_25:
  [(CoreIRBusProvider *)d deleteDevicePrefsWithUUID:v6 UUIDKey:&v16];
  return v16;
}

- (BOOL)setPrefsPropertyForUUID:(id)d UUIDKey:(id)key object:(id)object key:(id)a6
{
  v7 = 0;
  v31 = *MEMORY[0x277D85DE8];
  if (d && key && object && a6)
  {
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:]", 10, "Looking for IR Device with UUID %@ to set value %@ for key %@\n", [d UUIDString], object, a6);
    }

    v7 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v7 mutableCopy];
        if (v7 && +[CoreIRBusProvider deviceDictClasses])
        {
          objectCopy = object;
          v24 = a6;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v27;
            while (2)
            {
              v14 = 0;
              do
              {
                if (*v27 != v13)
                {
                  objc_enumerationMutation(v7);
                }

                v15 = *(*(&v26 + 1) + 8 * v14);
                v25 = 0;
                v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:+[CoreIRBusProvider deviceDictClasses](CoreIRBusProvider fromData:"deviceDictClasses") error:{v15, &v25}];
                if (v16)
                {
                  v17 = v16;
                  v18 = [v16 objectForKeyedSubscript:key];
                  if (v18 && [d isEqual:v18])
                  {
                    [v7 removeObject:v15];
                    [v17 setObject:objectCopy forKey:v24];
                    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v25];
                    if (!v21)
                    {
                      [CoreIRBusProvider setPrefsPropertyForUUID:v7 UUIDKey:? object:? key:?];
                      goto LABEL_29;
                    }

                    [v7 addObject:v21];
                    [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
                    [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
                    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
                    {
                      [CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:];
                    }

                    LOBYTE(v20) = 1;
                    return v20;
                  }
                }

                else
                {
                  [CoreIRBusProvider setPrefsPropertyForUUID:? UUIDKey:? object:? key:?];
                }

                ++v14;
              }

              while (v12 != v14);
              v19 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
              v12 = v19;
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
          {
            [CoreIRBusProvider setPrefsPropertyForUUID:d UUIDKey:? object:? key:?];
          }
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

LABEL_29:
  if (gLogCategory_CoreRCBus > 60)
  {
    goto LABEL_33;
  }

  if (gLogCategory_CoreRCBus != -1 || (v20 = _LogCategory_Initialize()) != 0)
  {
    [CoreIRBusProvider setPrefsPropertyForUUID:d UUIDKey:? object:? key:?];
LABEL_33:
    LOBYTE(v20) = 0;
  }

  return v20;
}

- (id)copyPrefsPropertyForUUID:(id)d UUIDKey:(id)key key:(id)a5
{
  v6 = 0;
  v24 = *MEMORY[0x277D85DE8];
  if (!d || !key || !a5)
  {
    goto LABEL_17;
  }

  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider copyPrefsPropertyForUUID:d UUIDKey:a5 key:?];
  }

  v10 = [(CoreIRBusProvider *)self copyDevicePrefs:0];
  v6 = v10;
  if (v10 && (v21 = 0u, v22 = 0u, v19 = 0u, v20 = 0u, (v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16]) != 0))
  {
    v12 = v11;
    v13 = *v20;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v20 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v19 + 1) + 8 * v14);
      v16 = [v15 objectForKeyedSubscript:key];
      if (v16)
      {
        if ([d isEqual:v16])
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    v17 = [v15 objectForKeyedSubscript:a5];

    if (v17)
    {
      return v17;
    }
  }

  else
  {
LABEL_17:
  }

  if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider copyPrefsPropertyForUUID:d UUIDKey:? key:?];
  }

  return 0;
}

- (BOOL)updatePersistentValue:(id)value forProperty:(id)property ofDevice:(id)device
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider updatePersistentValue:device forProperty:? ofDevice:?];
    if (property)
    {
      goto LABEL_5;
    }

LABEL_11:
    [CoreIRBusProvider updatePersistentValue:device forProperty:&v10 ofDevice:?];
    return v10;
  }

  if (!property)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (!value || !device || !-[CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:](self, "setPrefsPropertyForUUID:UUIDKey:object:key:", [device uniqueID], @"CoreIRDevicePrefDictUUID", value, property))
  {
    goto LABEL_11;
  }

  return 1;
}

- (BOOL)mergePersistentMappingsFromSession:(id)session ofDevice:(id)device
{
  v24 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusProvider mergePersistentMappingsFromSession:device ofDevice:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mappings = [session mappings];
    if (device)
    {
      v8 = mappings;
      if (mappings)
      {
        v9 = -[CoreIRBusProvider copyPrefsPropertyForUUID:UUIDKey:key:](self, "copyPrefsPropertyForUUID:UUIDKey:key:", [device uniqueID], @"CoreIRDevicePrefDictUUID", @"CoreIRDevicePrefDictMappings");
        if (v9)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v13 = *v20;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v8);
                }

                v15 = *(*(&v19 + 1) + 8 * i);
                -[CoreIRBusProvider _removeMappingForCommand:from:](self, "_removeMappingForCommand:from:", [objc_msgSend(v15 objectForKeyedSubscript:{@"CoreIRLearningSessionCommand", "unsignedIntegerValue"}], v9);
                if ([objc_msgSend(v15 objectForKeyedSubscript:{@"CoreIRLearningSessionCommand", "unsignedIntegerValue"}] == 46)
                {
                  [(CoreIRBusProvider *)self _removeMappingForCommand:67 from:v9];
                  [(CoreIRBusProvider *)self _removeMappingForCommand:47 from:v9];
                  v12 = 1;
                }
              }

              v11 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
            }

            while (v11);
            if (v12)
            {
              [(CoreIRBusProvider *)self _removeMappingForCommand:67 from:v8];
              [(CoreIRBusProvider *)self _removeMappingForCommand:47 from:v8];
            }
          }

          [v9 addObjectsFromArray:v8];
          v8 = v9;
        }

        v16 = -[CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:](self, "setPrefsPropertyForUUID:UUIDKey:object:key:", [device uniqueID], @"CoreIRDevicePrefDictUUID", v8, @"CoreIRDevicePrefDictMappings");

        if (v16)
        {
          LOBYTE(v17) = 1;
          return v17;
        }
      }
    }
  }

  if (gLogCategory_CoreRCBus > 90)
  {
LABEL_27:
    LOBYTE(v17) = 0;
    return v17;
  }

  if (gLogCategory_CoreRCBus != -1 || (v17 = _LogCategory_Initialize()) != 0)
  {
    [CoreIRBusProvider mergePersistentMappingsFromSession:device ofDevice:?];
    goto LABEL_27;
  }

  return v17;
}

- (void)interface:(id)interface receivedCommand:(id)command
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider interface:receivedCommand:]", 10, "%@ RX %@\n", self, command);
  }

  localDevice = self->_localDevice;

  [(CoreIRDeviceProvider *)localDevice handleIRCommand:command];
}

- (id)appleIRDeviceWithUID:(unsigned __int8)d create:(BOOL)create
{
  createCopy = create;
  dCopy = d;
  result = [(CoreIRBusProvider *)self _findAppleRemoteWithUID:?];
  if (!result && createCopy)
  {

    return [(CoreIRBusProvider *)self _addAppleRemoteWithDeviceUID:dCopy];
  }

  return result;
}

- (id)_findAppleRemoteWithUID:(unsigned __int8)d
{
  devices = [(CoreRCBus *)self devices];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__CoreIRBusProvider__findAppleRemoteWithUID___block_invoke;
  v8[3] = &__block_descriptor_33_e12_B24__0_8_B16l;
  dCopy = d;
  v6 = [(NSSet *)devices objectsPassingTest:v8];
  if ([(NSSet *)v6 count]>= 2 && gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [(CoreIRBusProvider *)d _findAppleRemoteWithUID:?];
  }

  return [(NSSet *)v6 anyObject];
}

- (void)didAddDevice:(id)device
{
  v6 = 0;
  v5.receiver = self;
  v5.super_class = CoreIRBusProvider;
  [(CoreRCBus *)&v5 didAddDevice:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([device is3rdPartyRemote])
    {
      [(CoreIRBusProvider *)self updateLearnedProtocols];
      if (![(IRInterface *)[(CoreIRBusProvider *)self interface] canWakeFor3rdPartyIR]&& ![(CoreRCBus *)self setAllowHibernation:0 error:&v6]&& gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider didAddDevice:]", 90, "%@ setAllowHibernation:NO failed; error=%@\n", self, v6);
      }
    }
  }
}

- (id)addDeviceWithType:(unint64_t)type matching:(id)matching error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v21 = @"CoreIRTransportPropertyMatching";
  v22[0] = matching;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider addDeviceWithType:matching:error:]", 10, "%@ matchingDict %@\n", self, matching);
  }

  v10 = [(CoreIRBusProvider *)self getExistingDeviceWithType:type matching:matching];
  if (v10)
  {
    return v10;
  }

  v11 = [(CoreIRBusProvider *)self _addDeviceWithType:type matching:matching transportProperties:v9 error:&v18];
  if (v11)
  {
    v12 = v11;
    if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface]&& [(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
    {
      v13 = 17;
    }

    else if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface])
    {
      v13 = 1;
    }

    else if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface])
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    v14 = MEMORY[0x277CBEB38];
    v20[0] = [v12 uniqueID];
    v20[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    v20[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    v19[0] = @"CoreIRDevicePrefDictUUID";
    v19[1] = @"CoreIRDevicePrefDictInterfaceType";
    v19[2] = @"CoreIRDevicePrefDictType";
    v16 = [v14 dictionaryWithObjects:v15 forKeys:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v19, 3)}];
    [v16 addEntriesFromDictionary:v9];
    [v16 addEntriesFromDictionary:{objc_msgSend(v12, "persistentProperties")}];
    [(CoreIRBusProvider *)self saveDevicePrefsWithDict:v16 error:error];
    [(CoreRCBus *)self addDevice:v12];
  }

  else
  {
    v12 = 0;
    if (error)
    {
      *error = v18;
    }
  }

  return v12;
}

- (id)_addAppleRemoteWithDeviceUID:(unsigned __int8)d
{
  dCopy = d;
  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider _addAppleRemoteWithDeviceUID:]", 50, "%@ deviceUID = %d\n", self, dCopy);
  }

  v5 = [[AppleIRDeviceProvider alloc] initWithBus:self deviceUID:dCopy];
  if (v5)
  {
    [(CoreRCBus *)self addDevice:v5];
  }

  return v5;
}

- (void)migrateOldRemotes
{
  v40[17] = *MEMORY[0x277D85DE8];
  v40[0] = 0;
  OUTLINED_FUNCTION_1_1();
  if (v5 ^ v6 | v4 && (v3 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider migrateOldRemotes]", 10, "Looking for old-format saved remotes (IR Devices)\n");
  }

  v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleTVIR"];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_69;
  }

  if ([v7 BOOLForKey:@"HasMigrated"])
  {
    v18 = 0;
    v32 = 0;
    v38 = 0;
    goto LABEL_61;
  }

  [(CoreIRBusProvider *)self _recreatePairedDeviceFromDefaults:v8 key:@"pairedDeviceUID"];
  obj = [v8 arrayForKey:@"remotes"];
  if (obj)
  {
    if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider migrateOldRemotes]", 40, "Found old-format saved remotes, attempting to migrate: %@\n", obj);
    }

    v38 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    v16 = OUTLINED_FUNCTION_3_0(v38, v9, v10, v11, v12, v13, v14, v15);
    if (v16)
    {
      v17 = v16;
      v37 = v8;
      v18 = 0;
      v19 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (MEMORY[0] != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(8 * i);
          OUTLINED_FUNCTION_1_1();
          if (v5 ^ v6 | v4 && (v22 != -1 || OUTLINED_FUNCTION_2_1()))
          {
            LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider migrateOldRemotes]", 10, "Remote Dictionary: %@\n", v21);
          }

          v23 = [v21 valueForKey:@"name"];
          if (v23)
          {
            v31 = v23;
            v32 = [[CoreIRLearningSessionProvider alloc] initWithReason:1];
            if (!v32)
            {
              v35 = -6728;
              goto LABEL_55;
            }

            if ([(CoreIRBusProvider *)self addMappingsFromRemote:v21 toLearningSession:v32])
            {
              if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || OUTLINED_FUNCTION_2_1()))
              {
                LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider migrateOldRemotes]", 10, "Available mappings %@\n", [(CoreIRLearningSessionProvider *)v32 mappings]);
              }

              v33 = [(CoreIRBusProvider *)self addDeviceWithType:1 matching:v38 learningSession:v32 error:v40];
              if (!v33)
              {
                v35 = -6700;
LABEL_55:
                v40[0] = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v35 userInfo:0];
LABEL_56:
                v8 = v37;
                goto LABEL_57;
              }

              v34 = v33;

              v23 = [v34 setOSDName:v31 error:0];
            }

            else
            {
              if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider migrateOldRemotes]", 90, "Invalid mappings, skipping\n");
              }

              if (!v18)
              {
                v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v18 addObject:v31];
            }
          }

          else if (gLogCategory_CoreRCBus <= 90)
          {
            if (gLogCategory_CoreRCBus != -1 || (v23 = _LogCategory_Initialize(), v23))
            {
              v23 = LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider migrateOldRemotes]", 90, "Invalid remote name, skipping\n");
            }
          }
        }

        v17 = OUTLINED_FUNCTION_3_0(v23, v24, v25, v26, v27, v28, v29, v30);
        if (v17)
        {
          continue;
        }

        break;
      }

      if (!v18)
      {
        v32 = 0;
        goto LABEL_56;
      }

      v8 = v37;
      [v37 setObject:v18 forKey:@"UnmigratableRemoteNames"];
      [v37 synchronize];
      if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider migrateOldRemotes]", 90, "Unable to migrate remotes: %@\n", v18);
      }
    }

    else
    {
      v18 = 0;
    }

    v32 = 0;
  }

  else
  {
LABEL_69:
    v18 = 0;
    v32 = 0;
    v38 = 0;
  }

LABEL_57:
  [v8 setBool:1 forKey:@"HasMigrated"];
  [v8 synchronize];
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider migrateOldRemotes]", 40, "Set remote migration flag\n");
  }

LABEL_61:

  v36 = v40[0];
  if (v40[0] && gLogCategory_CoreRCBus <= 90)
  {
    if (gLogCategory_CoreRCBus != -1)
    {
LABEL_64:
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider migrateOldRemotes]", 90, "migrateOldRemotes error: %@\n", v36);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v36 = v40[0];
      goto LABEL_64;
    }
  }
}

- (BOOL)recreateDevices
{
  v45 = *MEMORY[0x277D85DE8];
  v39 = 0;
  -[CoreIRBusProvider _recreatePairedDeviceFromDefaults:key:](self, "_recreatePairedDeviceFromDefaults:key:", [MEMORY[0x277CBEBD0] standardUserDefaults], @"CoreIRAppleRemotePrefPairedUID");
  if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider recreateDevices]", 50, "Looking for saved IR devices for this bus: %@ Rx:%d Tx:%d\n", self, [(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface], [(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface]);
  }

  v3 = [(CoreIRBusProvider *)self copyDevicePrefs:&v39];
  v4 = v3;
  if (v3)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v36;
      obj = v4;
LABEL_8:
      v8 = 0;
      while (1)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        if (gLogCategory_CoreRCBus <= 50 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider recreateDevices]", 50, "Device Dictionary: %@\n", v9);
        }

        v10 = [objc_msgSend(v9 objectForKey:{@"CoreIRDevicePrefDictInterfaceType", "unsignedIntegerValue"}];
        if ([(IRInterface *)[(CoreIRBusProvider *)self interface] isTxInterface]&& (v10 & 0xFFFFFFFFFFFFFFEFLL) == 1 || [(IRInterface *)[(CoreIRBusProvider *)self interface] isRxInterface]&& (v10 & 0xFFFFFFFFFFFFFFFELL) == 0x10)
        {
          [objc_msgSend(v9 objectForKey:{@"CoreIRDevicePrefDictType", "unsignedIntegerValue"}];
          v11 = [v9 objectForKey:@"CoreIRTransportPropertyMatching"];
          if (!v11)
          {
            v17 = [v9 objectForKey:@"CoreIRDLearntDevicePropertyMatching"];
            if (!v17)
            {
              goto LABEL_48;
            }

            v18 = v17;
            v40 = @"CoreIRDLearntDevicePropertyMatching";
            v41 = v17;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            OUTLINED_FUNCTION_1_1();
            if (v15 ^ v16 | v14 && (v19 != -1 || OUTLINED_FUNCTION_2_1()))
            {
              LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider recreateDevices]", 10, "%@ matchingDict %@\n", self, v18);
            }

            v22 = [OUTLINED_FUNCTION_0_2() _addDeviceWithType:? matching:? transportProperties:? error:?];
            if (!v22)
            {
LABEL_50:
              v28 = 0;
              goto LABEL_51;
            }

            v21 = v22;
            v23 = -[CoreIRLearningSession initWithReason:]([CoreIRLearningSessionProvider alloc], "initWithReason:", [objc_msgSend(v9 objectForKey:{@"CoreIRDevicePrefDictReason", "unsignedIntegerValue"}]);
            if (!v23)
            {
              v29 = MEMORY[0x277CCA9B8];
              v30 = *MEMORY[0x277CCA590];
              v31 = -6728;
              goto LABEL_49;
            }

            v24 = v23;
            -[CoreIRLearningSessionProvider setMappings:](v23, "setMappings:", [v9 objectForKey:@"CoreIRDevicePrefDictMappings"]);
            OUTLINED_FUNCTION_1_1();
            if (v15 ^ v16 | v14 && (v25 != -1 || OUTLINED_FUNCTION_2_1()))
            {
              LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider recreateDevices]", 10, "Available mappings %@\n", [(CoreIRLearningSessionProvider *)v24 mappings]);
            }

            v26 = [v21 setMappingWithSession:v24 error:&v39];

            if ((v26 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_43;
          }

          v12 = v11;
          v42 = @"CoreIRTransportPropertyMatching";
          v43 = v11;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          OUTLINED_FUNCTION_1_1();
          if (v15 ^ v16 | v14 && (v13 != -1 || OUTLINED_FUNCTION_2_1()))
          {
            LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider recreateDevices]", 10, "%@ matchingDict %@\n", self, v12);
          }

          v20 = [OUTLINED_FUNCTION_0_2() getExistingDeviceWithType:? matching:?];
          if (!v20)
          {
            v21 = [OUTLINED_FUNCTION_0_2() _addDeviceWithType:? matching:? transportProperties:? error:?];
            if (!v21)
            {
              goto LABEL_50;
            }

LABEL_43:
            [v21 setPersistentProperties:v9];
            v27 = [v9 objectForKeyedSubscript:@"CoreIRDevicePrefDictUUID"];
            if (!v27)
            {
LABEL_48:
              v29 = MEMORY[0x277CCA9B8];
              v30 = *MEMORY[0x277CCA590];
              v31 = -6700;
LABEL_49:
              v28 = 0;
              v39 = [v29 errorWithDomain:v30 code:v31 userInfo:0];
LABEL_51:
              v4 = obj;
              goto LABEL_52;
            }

            [v21 setUniqueID:v27];
            [(CoreRCBus *)self addDevice:v21];
            goto LABEL_45;
          }

          [(CoreIRBusProvider *)self willRemoveDevice:v20];
        }

LABEL_45:
        if (v6 == ++v8)
        {
          v4 = obj;
          v6 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v6)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }

  v28 = 1;
LABEL_52:
  [v4 removeAllObjects];

  v32 = v39;
  if (v39 && gLogCategory_CoreRCBus <= 90)
  {
    if (gLogCategory_CoreRCBus == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v28;
      }

      v32 = v39;
    }

    LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider recreateDevices]", 90, "recreateDevices error: %@\n", v32);
  }

  return v28;
}

- (id)copyDevicePrefs:(id *)prefs
{
  v25[17] = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  v4 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v4)
  {
    v6 = 0;
LABEL_19:
    v19 = 50;
    goto LABEL_20;
  }

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (+[CoreIRBusProvider deviceDictClasses])
    {
      v6 = objc_opt_new();
      v10 = OUTLINED_FUNCTION_4_0(v6, v7, v8, v9);
      if (v10)
      {
        v11 = v10;
        v12 = MEMORY[0];
        do
        {
          v13 = 0;
          do
          {
            if (MEMORY[0] != v12)
            {
              objc_enumerationMutation(v5);
            }

            v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:+[CoreIRBusProvider deviceDictClasses](CoreIRBusProvider fromData:"deviceDictClasses") error:{*(8 * v13), v25}];
            if (v14)
            {
              v14 = [v6 addObject:v14];
            }

            else if (gLogCategory_CoreRCBus <= 90)
            {
              if (gLogCategory_CoreRCBus != -1 || (v14 = _LogCategory_Initialize(), v14))
              {
                v14 = LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider copyDevicePrefs:]", 90, "error: %@\n", [v25[0] localizedDescription]);
              }
            }

            ++v13;
          }

          while (v11 != v13);
          v18 = OUTLINED_FUNCTION_4_0(v14, v15, v16, v17);
          v11 = v18;
        }

        while (v18);
      }

      goto LABEL_19;
    }

    v22 = -6728;
  }

  else
  {
    v22 = -6756;
  }

  v23 = *MEMORY[0x277CCA590];
  v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v22 userInfo:0];
  v25[0] = v24;
  if (prefs)
  {
    if (!v24)
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:v23 code:-6700 userInfo:0];
    }

    v6 = 0;
    *prefs = v24;
  }

  else
  {
    v6 = 0;
  }

  v19 = 90;
LABEL_20:
  if (v19 >= gLogCategory_CoreRCBus && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v20 = [v6 count];
    LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider copyDevicePrefs:]", v19, "Loading CoreIRDevice CFPreferences: %u devices status: %d\n", v20, [v25[0] code]);
  }

  return v6;
}

- (void)_removeMappingForCommand:(unint64_t)command from:(id)from
{
  if (command)
  {
    v10 = OUTLINED_FUNCTION_5_0(self, a2, command, from, v4, v5, v6, v7, 0, 0, 0, 0, 0, 0, 0, 0, v31);
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(from);
          }

          v14 = *(v24 + 8 * i);
          v15 = [objc_msgSend(v14 objectForKeyedSubscript:{@"CoreIRLearningSessionCommand", "unsignedIntegerValue"}];
          if (v15 == command)
          {
            [from removeObject:v14];
            return;
          }
        }

        v11 = OUTLINED_FUNCTION_5_0(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v32);
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (BOOL)setPairedAppleRemote:(id)remote error:(id *)error
{
  if ([(CoreIRBus *)self pairedAppleRemote]== remote)
  {
    if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider setPairedAppleRemote:error:]", 40, "redundant call, inAppleRemote=%@\n", remote);
    }

    LOBYTE(v9) = 1;
  }

  else
  {
    interface = [(CoreIRBusProvider *)self interface];
    if (remote)
    {
      remoteCopy = remote;
    }

    else
    {
      remoteCopy = [(CoreIRBus *)self pairedAppleRemote];
    }

    v9 = [(IRInterface *)interface setPairState:remote != 0 forDeviceUID:[(CoreIRDevice *)remoteCopy deviceUID] error:error];
    if (v9)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v11 = [standardUserDefaults objectForKey:@"CoreIRAppleRemotePrefPairedUID"];
      if (remote)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(remote, "deviceUID")}];
      }

      else
      {
        v12 = 0;
      }

      if (v11 != v12 && ([v11 isEqual:v12] & 1) == 0)
      {
        if (remote)
        {
          [standardUserDefaults setObject:v12 forKey:@"CoreIRAppleRemotePrefPairedUID"];
        }

        else
        {
          [standardUserDefaults removeObjectForKey:@"CoreIRAppleRemotePrefPairedUID"];
        }
      }

      [standardUserDefaults synchronize];
      v14.receiver = self;
      v14.super_class = CoreIRBusProvider;
      LOBYTE(v9) = [(CoreIRBus *)&v14 setPairedAppleRemote:remote error:error];
    }
  }

  return v9;
}

- (uint64_t)updateAllowHibernation
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    v5 = result;
    if (gLogCategory_CoreRCBus != -1)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider updateAllowHibernation]", 90, "%@ setAllowHibernation:%d failed; error=%@\n", a3, v5 & 1, *a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider updateAllowHibernation]", 90, "%@ setAllowHibernation:%d failed; error=%@\n", a3, v5 & 1, *a2);
    }
  }

  return result;
}

- (uint64_t)updateLearnedProtocols
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider updateLearnedProtocols]", 90, "%@ setLearnedProtocolMask:0x%x failed; error=%@\n", [a2 interface], a4, *a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider updateLearnedProtocols]", 90, "%@ setLearnedProtocolMask:0x%x failed; error=%@\n", [a2 interface], a4, *a3);
    }
  }

  return result;
}

- (void)addDeviceWithType:(void *)a1 matching:learningSession:error:.cold.2(void *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
  *a1 = result;
  return result;
}

- (void)_recreatePairedDeviceFromDefaults:(void *)result key:.cold.2(void *result)
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    v1 = result;
    if (gLogCategory_CoreRCBus != -1)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider _recreatePairedDeviceFromDefaults:key:]", 90, "re-pairing failed: %@\n", *v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider _recreatePairedDeviceFromDefaults:key:]", 90, "re-pairing failed: %@\n", *v1);
    }
  }

  return result;
}

- (void)saveDevicePrefsWithDict:(void *)a1 error:.cold.1(void *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6717 userInfo:0];
  *a1 = result;
  return result;
}

- (id)deleteDevicePrefsWithUUID:(id *)result UUIDKey:.cold.3(id *result)
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    v1 = result;
    if (gLogCategory_CoreRCBus != -1)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider deleteDevicePrefsWithUUID:UUIDKey:]", 90, "error: %@\n", [*v1 localizedDescription]);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider deleteDevicePrefsWithUUID:UUIDKey:]", 90, "error: %@\n", [*v1 localizedDescription]);
    }
  }

  return result;
}

- (void)deleteDevicePrefsWithUUID:(_BYTE *)a3 UUIDKey:.cold.5(void *a1, void *a2, _BYTE *a3)
{
  if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider deleteDevicePrefsWithUUID:UUIDKey:]", 60, "Problem deleting IR Device %@ from preferences\n", [a1 UUIDString]);
  }

  *a3 = 0;
}

- (void)setPrefsPropertyForUUID:(id *)a1 UUIDKey:(void *)a2 object:key:.cold.2(id *a1, void *a2)
{
  if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:]", 90, "error: %@\n", [*a1 localizedDescription]);
  }
}

- (id)setPrefsPropertyForUUID:(id *)result UUIDKey:object:key:.cold.3(id *result)
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    v1 = result;
    if (gLogCategory_CoreRCBus != -1)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:]", 90, "error: %@\n", [*v1 localizedDescription]);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "-[CoreIRBusProvider setPrefsPropertyForUUID:UUIDKey:object:key:]", 90, "error: %@\n", [*v1 localizedDescription]);
    }
  }

  return result;
}

- (uint64_t)updatePersistentValue:(uint64_t)result forProperty:(_BYTE *)a2 ofDevice:.cold.2(uint64_t result, _BYTE *a2)
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    v3 = result;
    if (gLogCategory_CoreRCBus != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_CoreRCBus, "[CoreIRBusProvider updatePersistentValue:forProperty:ofDevice:]", 90, "Failed to update preferences for device %@\n", v3);
    }
  }

  *a2 = 0;
  return result;
}

@end