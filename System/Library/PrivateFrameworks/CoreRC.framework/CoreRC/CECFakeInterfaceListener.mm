@interface CECFakeInterfaceListener
- (BOOL)createDeviceProvider:(id *)provider andFakeInterface:(id *)interface withPhysicalAddress:(unsigned __int16)address andLogicalAddress:(unsigned __int8)logicalAddress;
- (BOOL)interface:(id)interface pingTo:(unsigned __int8)to acknowledged:(BOOL *)acknowledged error:(id *)error;
- (BOOL)interface:(id)interface sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error;
- (BOOL)interface:(id)interface setAddressMask:(unsigned __int16)mask error:(id *)error;
- (id)fakeAddInterfaceWithProperties:(id)properties;
- (void)scheduleWithDispatchQueue:(id)queue;
- (void)unscheduleFromDispatchQueue:(id)queue;
@end

@implementation CECFakeInterfaceListener

- (id)fakeAddInterfaceWithProperties:(id)properties
{
  v4 = [[CECFakeInterface alloc] initWithInterfaceListener:self properties:properties];
  if (v4)
  {
    [(CoreRCInterfaceListener *)self addInterface:v4];
  }

  return v4;
}

- (void)scheduleWithDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCInterface, "[CECFakeInterfaceListener scheduleWithDispatchQueue:]", 40, "%s queue=%@ ## %@\n", "[CECFakeInterfaceListener scheduleWithDispatchQueue:]", queue, self);
  }
}

- (void)unscheduleFromDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCInterface, "[CECFakeInterfaceListener unscheduleFromDispatchQueue:]", 40, "%s queue=%@ ## %@\n", "[CECFakeInterfaceListener unscheduleFromDispatchQueue:]", queue, self);
  }
}

- (BOOL)interface:(id)interface setAddressMask:(unsigned __int16)mask error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CoreRCInterfaceListener *)self interfaces:interface];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v17;
  v11 = 1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v6);
      }

      addressMask = [*(*(&v16 + 1) + 8 * i) addressMask];
      v11 &= (v9 & addressMask) == 0;
      v9 |= addressMask;
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v8);
  if (error)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    v11 = 0;
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:3 userInfo:0];
  }

  return v11;
}

- (BOOL)interface:(id)interface sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = frame->blocks[0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CoreRCInterfaceListener *)self interfaces];
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 1 << (v8 & 0xF);
    v13 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        snoopingMode = [v15 snoopingMode];
        addressMask = [v15 addressMask];
        if (v15 != interface)
        {
          v18 = addressMask & v12;
          if ((addressMask & v12) != 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = snoopingMode;
          }

          if (v19 == 1)
          {
            v27 = *frame->blocks;
            v28 = *(frame + 4);
            [v15 receivedFrame:&v27];
          }

          if (v18)
          {
            ++v11;
          }
        }
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (error && !v11)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:2 userInfo:0];
  }

  return v11 != 0;
}

- (BOOL)interface:(id)interface pingTo:(unsigned __int8)to acknowledged:(BOOL *)acknowledged error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(CoreRCInterfaceListener *)self interfaces:interface];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v10)
  {
    v12 = 0;
    if (!acknowledged)
    {
      return 1;
    }

    goto LABEL_11;
  }

  v11 = v10;
  v12 = 0;
  v13 = 1 << to;
  v14 = *v19;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v18 + 1) + 8 * i);
      if (v16 != interface)
      {
        v12 |= (v13 & [v16 addressMask]) != 0;
      }
    }

    v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v11);
  if (acknowledged)
  {
LABEL_11:
    *acknowledged = v12 & 1;
  }

  return 1;
}

- (BOOL)createDeviceProvider:(id *)provider andFakeInterface:(id *)interface withPhysicalAddress:(unsigned __int16)address andLogicalAddress:(unsigned __int8)logicalAddress
{
  logicalAddressCopy = logicalAddress;
  addressCopy = address;
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  if (logicalAddress > 7)
  {
    if (logicalAddress > 10)
    {
      if ((logicalAddress - 12) < 3)
      {
        v11 = [CECFakeInterface defaultPropertiesWithPhysicalAddress:address];
        LOBYTE(v18) = 0;
        v12 = [CoreCECDeviceBasicAttributes deviceAttributesWithPrimaryType:0 otherTypes:0 features:537639 rcProfile:0 vendorID:4346 version:6 active:v18 options:0];
        goto LABEL_19;
      }

      if (logicalAddress != 11)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (logicalAddress == 8)
    {
LABEL_22:
      v20 = xmmword_2473D5430;
      v11 = +[CECFakeInterface defaultPlaybackDeviceProperties];
      LOBYTE(v18) = 0;
      v13 = [CoreCECDeviceBasicAttributes deviceAttributesWithPrimaryType:2 otherTypes:0 features:537703 rcProfile:CoreCECDeviceSourceRCProfileWithSupportedMenuCommands(&v20 vendorID:2) version:4346 active:6 options:v18, 0];
      v14 = 1 << logicalAddressCopy;
      if (!v11)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

    if (logicalAddress == 9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = [CECFakeInterface defaultPropertiesWithPhysicalAddress:address];
    LOBYTE(v18) = 0;
    v12 = [CoreCECDeviceBasicAttributes deviceAttributesWithPrimaryType:6 otherTypes:0 features:537639 rcProfile:0 vendorID:4346 version:6 active:v18 options:0];
    goto LABEL_19;
  }

  if (logicalAddress <= 3)
  {
    if ((logicalAddress - 1) >= 2)
    {
      if (!logicalAddress)
      {
        v20 = xmmword_2473D5440;
        v21 = 45;
        v11 = +[CECFakeInterface defaultTVProperties];
        LOBYTE(v18) = 0;
        v13 = [CoreCECDeviceBasicAttributes deviceAttributesWithPrimaryType:7 otherTypes:0 features:537639 rcProfile:CoreCECDeviceSourceRCProfileWithSupportedMenuCommands(&v20 vendorID:3) version:4346 active:6 options:v18, 0];
        LOWORD(v14) = -32767;
        if (!v11)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      if (logicalAddress != 3)
      {
LABEL_24:
        if (gLogCategory_CoreRCInterface <= 60)
        {
          if (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize())
          {
            [CECFakeInterfaceListener createDeviceProvider:logicalAddressCopy andFakeInterface:? withPhysicalAddress:? andLogicalAddress:?];
          }

          goto LABEL_37;
        }

LABEL_41:
        LOBYTE(v16) = 0;
        return v16;
      }

      goto LABEL_17;
    }

LABEL_18:
    v11 = [CECFakeInterface defaultPropertiesWithPhysicalAddress:address];
    LOBYTE(v18) = 0;
    v12 = [CoreCECDeviceBasicAttributes deviceAttributesWithPrimaryType:4 otherTypes:0 features:537639 rcProfile:0 vendorID:4346 version:6 active:v18 options:0];
LABEL_19:
    v13 = v12;
    LOWORD(v14) = (1 << logicalAddressCopy) | 0x8000;
    if (!v11)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  if ((logicalAddress - 6) < 2)
  {
    goto LABEL_17;
  }

  if (logicalAddress == 4)
  {
    goto LABEL_22;
  }

  if (logicalAddress != 5)
  {
    goto LABEL_24;
  }

  v20 = xmmword_2473D5440;
  v21 = 45;
  v11 = +[CECFakeInterface defaultAudioSystemProperties];
  LOBYTE(v18) = 0;
  v13 = [CoreCECDeviceBasicAttributes deviceAttributesWithPrimaryType:1 otherTypes:0 features:1668135 rcProfile:CoreCECDeviceSourceRCProfileWithSupportedMenuCommands(&v20 vendorID:3) version:4346 active:6 options:v18, 0];
  LOWORD(v14) = 32;
  if (!v11)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (!v13)
  {
    goto LABEL_37;
  }

  v15 = [(CECFakeInterfaceListener *)self fakeAddInterfaceWithProperties:v11];
  if ([v15 setAddressMask:v14 error:&v19])
  {
    v16 = [objc_msgSend(v15 "delegate")];
    if (v15 && v16)
    {
      *interface = v15;
      *provider = v16;
      LOBYTE(v16) = 1;
      return v16;
    }
  }

  else
  {
    if (gLogCategory_CoreRCInterface > 40)
    {
      goto LABEL_41;
    }

    if (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize())
    {
      [CECFakeInterfaceListener createDeviceProvider:? andFakeInterface:? withPhysicalAddress:? andLogicalAddress:?];
    }
  }

LABEL_37:
  if (gLogCategory_CoreRCInterface > 40)
  {
    goto LABEL_41;
  }

  if (gLogCategory_CoreRCInterface != -1 || (LODWORD(v16) = _LogCategory_Initialize(), v16))
  {
    [CECFakeInterfaceListener createDeviceProvider:logicalAddressCopy andFakeInterface:? withPhysicalAddress:? andLogicalAddress:?];
    goto LABEL_41;
  }

  return v16;
}

@end