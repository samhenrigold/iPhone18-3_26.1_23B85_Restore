@interface AppleHPMUserClient
- (AppleHPMUserClient)init;
- (int)createUserClientForService:(unsigned int)service;
- (int)iecsAtomicCommand:(unsigned __int8)command cmdBuffer:(void *)buffer dataBuffer:(void *)dataBuffer extDataBuffer:(void *)extDataBuffer returnDataBuffer:(void *)returnDataBuffer returnExtDataBuffer:(void *)returnExtDataBuffer inputDataLength:(unsigned __int16)length returnDataBufferLength:(unsigned __int16)self0 timeoutInSeconds:(unint64_t)self1 forDevice:(unint64_t)self2 flags:(unsigned int)self3;
- (int)iecsCommand:(unsigned int)command forDevice:(unint64_t)device flags:(unsigned int)flags;
- (int)iecsReadCommandForDevice:(unint64_t)device withAddress:(unsigned __int8)address buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags andOutReadLength:(unint64_t *)readLength;
- (int)iecsWriteCommandForDevice:(unint64_t)device withAddress:(unsigned __int8)address buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags;
- (int)receiveVDMAttentionForDevice:(unint64_t)device buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags outSOP:(int *)p outSequence:(char *)sequence outLength:(unint64_t *)outLength;
- (int)receiveVDMForDevice:(unint64_t)device buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags outSOP:(int *)p outSequence:(char *)sequence outLength:(unint64_t *)outLength;
- (int)sendVDMForDevice:(unint64_t)device sop:(int)sop buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags;
- (void)dealloc;
- (void)destroyUserClient;
@end

@implementation AppleHPMUserClient

- (AppleHPMUserClient)init
{
  v3.receiver = self;
  v3.super_class = AppleHPMUserClient;
  return [(AppleHPMUserClient *)&v3 init];
}

- (void)dealloc
{
  [(AppleHPMUserClient *)self destroyUserClient];
  v3.receiver = self;
  v3.super_class = AppleHPMUserClient;
  [(AppleHPMUserClient *)&v3 dealloc];
}

- (int)createUserClientForService:(unsigned int)service
{
  v4 = -536870212;
  [(AppleHPMUserClient *)self setService:*&service];
  v15 = 0;
  if (![(AppleHPMUserClient *)self service])
  {
    return -536870160;
  }

  v5 = [IOKitUtilities uint32ForRegistryEntry:[(AppleHPMUserClient *)self service] andKey:@"RID" outValue:&v15];
  if (v5)
  {
    return v5;
  }

  *theScore = 0;
  if (![IOKitUtilities uint64ForRegistryEntry:[(AppleHPMUserClient *)self service] andKey:@"Route String" outValue:theScore])
  {
    [(AppleHPMUserClient *)self setRouteString:*theScore];
  }

  [(AppleHPMUserClient *)self setRouterID:v15];
  theScore[0] = 0;
  service = [(AppleHPMUserClient *)self service];
  v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x12u, 0xA1u, 0xDCu, 0xCFu, 0xCFu, 0x7Au, 0x47u, 0x75u, 0xBEu, 0xE5u, 0x9Cu, 0x43u, 0x19u, 0xF4u, 0xCDu, 0x2Bu);
  v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v5 = IOCreatePlugInInterfaceForService(service, v7, v8, &self->_cfPlugInInterface, theScore);
  if (v5)
  {
    return v5;
  }

  cfPlugInInterface = self->_cfPlugInInterface;
  QueryInterface = (*cfPlugInInterface)->QueryInterface;
  v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xC1u, 0x3Au, 0xCDu, 0xD9u, 0x20u, 0x9Eu, 0x4Bu, 1u, 0xB7u, 0xBEu, 0xE0u, 0x5Cu, 0xD8u, 0x83u, 0xC7u, 0xB1u);
  v13 = CFUUIDGetUUIDBytes(v12);
  if (!(QueryInterface)(cfPlugInInterface, *&v13.byte0, *&v13.byte8, &self->_deviceInterface))
  {
    v4 = 0;
    self->_userClientActive = 1;
  }

  return v4;
}

- (void)destroyUserClient
{
  self->_userClientActive = 0;
  deviceInterface = self->_deviceInterface;
  if (deviceInterface)
  {
    (*(*deviceInterface + 3))(deviceInterface, a2);
    self->_deviceInterface = 0;
  }

  cfPlugInInterface = self->_cfPlugInInterface;
  if (cfPlugInInterface)
  {
    IODestroyPlugInInterface(cfPlugInInterface);
    self->_cfPlugInInterface = 0;
  }
}

- (int)iecsReadCommandForDevice:(unint64_t)device withAddress:(unsigned __int8)address buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags andOutReadLength:(unint64_t *)readLength
{
  if (self->_userClientActive)
  {
    return (*(*self->_deviceInterface + 5))(self->_deviceInterface, device, address, buffer, length, *&flags, readLength);
  }

  else
  {
    return -536870184;
  }
}

- (int)iecsWriteCommandForDevice:(unint64_t)device withAddress:(unsigned __int8)address buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags
{
  if (self->_userClientActive)
  {
    return (*(*self->_deviceInterface + 6))(self->_deviceInterface, device, address, buffer, length, *&flags);
  }

  else
  {
    return -536870184;
  }
}

- (int)iecsCommand:(unsigned int)command forDevice:(unint64_t)device flags:(unsigned int)flags
{
  if (self->_userClientActive)
  {
    return (*(*self->_deviceInterface + 7))(self->_deviceInterface, device, *&command, *&flags);
  }

  else
  {
    return -536870184;
  }
}

- (int)sendVDMForDevice:(unint64_t)device sop:(int)sop buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags
{
  if (self->_userClientActive)
  {
    return (*(*self->_deviceInterface + 8))(self->_deviceInterface, device, *&sop, buffer, length, *&flags);
  }

  else
  {
    return -536870184;
  }
}

- (int)receiveVDMForDevice:(unint64_t)device buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags outSOP:(int *)p outSequence:(char *)sequence outLength:(unint64_t *)outLength
{
  if (self->_userClientActive)
  {
    return (*(*self->_deviceInterface + 9))(self->_deviceInterface, device, buffer, length, *&flags, p, sequence, outLength);
  }

  else
  {
    return -536870184;
  }
}

- (int)receiveVDMAttentionForDevice:(unint64_t)device buffer:(void *)buffer length:(unint64_t)length flags:(unsigned int)flags outSOP:(int *)p outSequence:(char *)sequence outLength:(unint64_t *)outLength
{
  if (self->_userClientActive)
  {
    return (*(*self->_deviceInterface + 10))(self->_deviceInterface, device, buffer, length, *&flags, p, sequence, outLength);
  }

  else
  {
    return -536870184;
  }
}

- (int)iecsAtomicCommand:(unsigned __int8)command cmdBuffer:(void *)buffer dataBuffer:(void *)dataBuffer extDataBuffer:(void *)extDataBuffer returnDataBuffer:(void *)returnDataBuffer returnExtDataBuffer:(void *)returnExtDataBuffer inputDataLength:(unsigned __int16)length returnDataBufferLength:(unsigned __int16)self0 timeoutInSeconds:(unint64_t)self1 forDevice:(unint64_t)self2 flags:(unsigned int)self3
{
  if (self->_userClientActive)
  {
    return (*(*self->_deviceInterface + 13))(self->_deviceInterface, command, buffer, dataBuffer, extDataBuffer, returnDataBuffer, returnExtDataBuffer, length);
  }

  else
  {
    return -536870184;
  }
}

@end