@interface CECInterface
- (BOOL)allocateCECAddress:(unsigned __int8 *)address forDeviceType:(unsigned __int8)type error:(id *)error;
- (BOOL)deallocateCECAddress:(unsigned __int8)address error:(id *)error;
- (BOOL)pingTo:(unsigned __int8)to acknowledged:(BOOL *)acknowledged error:(id *)error;
- (BOOL)sendFrame:(CECFrame *)frame error:(id *)error;
- (BOOL)sendMessage:(id)message withRetryCount:(unsigned __int8)count error:(id *)error;
- (BOOL)setAddressMask:(unsigned __int16)mask error:(id *)error;
- (BOOL)setSnoopingMode:(BOOL)snoopingMode error:(id *)error;
- (CECInterface)init;
- (NSDictionary)properties;
- (void)didChangeProperties;
- (void)receivedFrame:(CECFrame *)frame;
- (void)setLastReceivedFrame:(CECFrame *)frame;
@end

@implementation CECInterface

- (CECInterface)init
{
  v3.receiver = self;
  v3.super_class = CECInterface;
  result = [(CECInterface *)&v3 init];
  if (result)
  {
    result->_addressMask = 0x8000;
  }

  return result;
}

- (BOOL)setAddressMask:(unsigned __int16)mask error:(id *)error
{
  maskCopy = mask;
  result = [(CECInterface *)self setHardwareAddressMask:mask error:error];
  if (!result)
  {
    maskCopy &= self->_addressMask;
  }

  self->_addressMask = maskCopy;
  return result;
}

- (BOOL)setSnoopingMode:(BOOL)snoopingMode error:(id *)error
{
  self->_snoopingMode = snoopingMode;
  if (gLogCategory_CoreRCInterface <= 90)
  {
    if (gLogCategory_CoreRCInterface == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 1;
      }

      snoopingMode = self->_snoopingMode;
    }

    v4 = "Disabled";
    if (snoopingMode)
    {
      v4 = "Enabled";
    }

    LogPrintF(&gLogCategory_CoreRCInterface, "[CECInterface setSnoopingMode:error:]", 90, "CEC Snooping Mode %s\n", v4);
  }

  return 1;
}

- (BOOL)sendFrame:(CECFrame *)frame error:(id *)error
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *frame;
  return [(CECInterface *)self sendFrame:&v5 withRetryCount:2 error:error];
}

- (void)receivedFrame:(CECFrame *)frame
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__CECInterface_receivedFrame___block_invoke;
  v3[3] = &unk_278EA33C0;
  v3[4] = self;
  v4 = *frame;
  [(CoreRCInterface *)self dispatchAsyncHighPriority:v3];
}

char *__30__CECInterface_receivedFrame___block_invoke(char *result)
{
  v1 = result;
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(result + 4);
  if (*(v2 + 32))
  {
    v3 = *(v2 + 40);
    v8 = *(v1 + 40);
    v4 = *(v1 + 14);
LABEL_6:
    LODWORD(v9) = v4;
    return [v3 interface:v8 receivedFrame:{v9, v10}];
  }

  v5 = result + 40;
  v6 = result[40] & 0xF;
  if (v6 == 15 || ((*(v2 + 34) >> v6) & 1) != 0)
  {
    v7 = *(result + 14);
    *(v2 + 48) = *v5;
    *(v2 + 64) = v7;
    v3 = *(*(result + 4) + 40);
    v8 = *v5;
    v4 = *(v1 + 14);
    goto LABEL_6;
  }

  if (gLogCategory_CoreRCInterface <= 90)
  {
    if (gLogCategory_CoreRCInterface != -1)
    {
      return __30__CECInterface_receivedFrame___block_invoke_cold_1(v1, (v1 + 40));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __30__CECInterface_receivedFrame___block_invoke_cold_1(v1, (v1 + 40));
    }
  }

  return result;
}

- (NSDictionary)properties
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"kCECInterfacePropertyIsValid";
  v3[1] = @"kCECInterfacePropertyHasLink";
  v4[0] = MEMORY[0x277CBEC38];
  v4[1] = MEMORY[0x277CBEC28];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
}

- (void)didChangeProperties
{
  delegate = [(CECInterface *)self delegate];

  [(CECInterfaceDelegate *)delegate interfacePropertiesChanged:self];
}

- (BOOL)pingTo:(unsigned __int8)to acknowledged:(BOOL *)acknowledged error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (acknowledged)
  {
    v12[0] = to | (16 * to);
    memset(&v12[1], 0, 15);
    v8 = 1;
    v12[16] = 1;
    v13 = 0;
    v14 = 0;
    v9 = [(CECInterface *)self sendFrame:v12 withRetryCount:2 error:&v11];
    *acknowledged = v9;
    if (v9)
    {
      return v8;
    }

    v8 = [(CECInterface *)self errorIsNack:v11];
    if (!error)
    {
      return v8;
    }
  }

  else
  {
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
    v8 = 0;
    if (!error)
    {
      return v8;
    }
  }

  if (!v8)
  {
    v8 = 0;
    *error = v11;
  }

  return v8;
}

- (BOOL)allocateCECAddress:(unsigned __int8 *)address forDeviceType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  v20 = 0;
  if (gLogCategory_CoreRCInterface > 10 || gLogCategory_CoreRCInterface == -1 && !_LogCategory_Initialize())
  {
    if (address)
    {
      goto LABEL_5;
    }

LABEL_25:
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
    goto LABEL_26;
  }

  [CECInterface allocateCECAddress:typeCopy forDeviceType:? error:?];
  if (!address)
  {
    goto LABEL_25;
  }

LABEL_5:
  v9 = [-[NSDictionary objectForKeyedSubscript:](-[CECInterface properties](self "properties")];
  addressMask = [(CECInterface *)self addressMask];
  v11 = addressMask;
  v12 = *address;
  if (v12 == 15)
  {
    v13 = 15;
    v12 = CECAddressPreferredForDevice(typeCopy, v9, 15);
    *address = v12;
    if (v12 == 15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = addressMask & ~(1 << v12);
  }

  LOBYTE(v14) = v12;
  do
  {
    v19 = 0;
    if ((v11 >> v14))
    {
      v17 = [(CECInterface *)typeCopy allocateCECAddress:v11 forDeviceType:v14 error:?];
      return [(CECInterface *)v17 delegate];
    }

    if (![(CECInterface *)self pingTo:v14 acknowledged:&v19 error:&v20])
    {
      goto LABEL_26;
    }

    if ((v19 & 1) == 0)
    {
      v13 = *address;
      goto LABEL_18;
    }

    v14 = CECAddressPreferredForDevice(typeCopy, v9, *address);
    *address = v14;
  }

  while (v12 != v14);
  if (gLogCategory_CoreRCInterface <= 60 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CECInterface allocateCECAddress:typeCopy forDeviceType:? error:?];
  }

  v13 = 15;
  *address = 15;
LABEL_18:
  v15 = v11 | (1 << v13);
  if (![(CECInterface *)self setAddressMask:v15 error:&v20])
  {
LABEL_26:
    [CECInterface allocateCECAddress:error forDeviceType:&v20 error:&v21];
    return v21;
  }

  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCInterface, "[CECInterface allocateCECAddress:forDeviceType:error:]", 40, "allocated address %d (addressMask %04x) for device type %d\n", *address, v15, typeCopy);
  }

  return 1;
}

- (void)setLastReceivedFrame:(CECFrame *)frame
{
  v3 = *(frame + 4);
  *self->_lastReceivedFrame.blocks = *frame->blocks;
  *(&self->_lastReceivedFrame + 4) = v3;
}

- (BOOL)sendMessage:(id)message withRetryCount:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  v11 = *MEMORY[0x277D85DE8];
  if (message)
  {
    objc_msgSend_frame(message, a2);
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
  }

  return [(CECInterface *)self sendFrame:v9 withRetryCount:countCopy error:error];
}

- (BOOL)deallocateCECAddress:(unsigned __int8)address error:(id *)error
{
  addressCopy = address;
  v12 = 0;
  addressMask = [(CECInterface *)self addressMask];
  if (addressCopy == 15 || ((1 << addressCopy) & addressMask) == 0)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
    LOBYTE(v9) = 0;
    v12 = v10;
    if (error)
    {
LABEL_10:
      *error = v12;
    }
  }

  else
  {
    v8 = addressMask & ~(1 << addressCopy);
    v9 = [(CECInterface *)self setAddressMask:v8 error:&v12];
    if (v9)
    {
      if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_CoreRCInterface, "[CECInterface deallocateCECAddress:error:]", 10, "deallocated address %d, new address mask %04x\n", addressCopy, v8);
      }

      LOBYTE(v9) = 1;
    }

    if (error)
    {
      goto LABEL_10;
    }
  }

  return v9;
}

- (uint64_t)allocateCECAddress:(uint64_t)a3 forDeviceType:(uint64_t)a4 error:.cold.2(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4)
{
  [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"Two devices with the same logical address addressMask: 0x%04x, *outCECAddress: 0x%04x, inDeviceType: %s, %@ bus: %@, devices on bus:%@", a3, a4, CECDeviceTypeString(a1), a2, objc_msgSend(a2, "delegate"), objc_msgSend(objc_msgSend(a2, "delegate"), "devices")), "UTF8String"];
  v4 = abort_with_reason();
  return [CECInterface allocateCECAddress:v4 forDeviceType:? error:?];
}

- (void)allocateCECAddress:(void *)result forDeviceType:(void *)a2 error:(_BYTE *)a3 .cold.5(void *result, void *a2, _BYTE *a3)
{
  v5 = result;
  if (gLogCategory_CoreRCInterface <= 90)
  {
    if (gLogCategory_CoreRCInterface != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_CoreRCInterface, "[CECInterface allocateCECAddress:forDeviceType:error:]", 90, "error: %@\n", *a2);
    }
  }

  if (v5)
  {
    *v5 = *a2;
  }

  *a3 = 0;
  return result;
}

@end