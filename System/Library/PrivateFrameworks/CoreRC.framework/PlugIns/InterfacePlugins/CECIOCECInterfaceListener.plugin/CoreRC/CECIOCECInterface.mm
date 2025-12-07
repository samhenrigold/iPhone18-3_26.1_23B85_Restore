@interface CECIOCECInterface
+ (id)interfaceWithIOCECInterface:(__IOCECInterface *)interface listener:(id)listener;
- ($D1819ED0CAECE69E625AEC8AD7BCEE3A)attributes;
- (BOOL)errorIsNack:(id)nack;
- (BOOL)sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error;
- (BOOL)setHardwareAddressMask:(unsigned __int16)mask error:(id *)error;
- (CECIOCECInterface)initWithIOCECInterface:(__IOCECInterface *)interface listener:(id)listener;
- (id)properties;
- (void)_close;
- (void)_interfaceTerminated:(__IOCECInterface *)terminated;
- (void)_open;
- (void)_updateStatusWithEDID:(id *)d HPD:(BOOL)pD hibernate:(BOOL)hibernate;
- (void)dealloc;
- (void)scheduleWithDispatchQueue:(id)queue;
- (void)setAttributes:(id *)attributes;
- (void)unscheduleFromDispatchQueue:(id)queue;
@end

@implementation CECIOCECInterface

+ (id)interfaceWithIOCECInterface:(__IOCECInterface *)interface listener:(id)listener
{
  v4 = [[CECIOCECInterface alloc] initWithIOCECInterface:interface listener:listener];

  return v4;
}

- (CECIOCECInterface)initWithIOCECInterface:(__IOCECInterface *)interface listener:(id)listener
{
  if (gLogCategory_CoreRCInterface <= 50 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_1F54();
  }

  v10.receiver = self;
  v10.super_class = CECIOCECInterface;
  v7 = [(CECIOCECInterface *)&v10 init];
  if (v7)
  {
    listenerCopy = listener;
    v7->_listener = listenerCopy;
    if (listenerCopy && (v7->_iocecInterface = interface) != 0)
    {
      CFRetain(interface);
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  if (gLogCategory_CoreRCInterface <= 50 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_1F94();
  }

  [(CECIOCECInterface *)self setDelegate:0];
  if (self->_iocecInterface)
  {
    [(CECIOCECInterface *)self _close];
    CFRelease(self->_iocecInterface);
    self->_iocecInterface = 0;
  }

  self->_listener = 0;
  v3.receiver = self;
  v3.super_class = CECIOCECInterface;
  [(CECIOCECInterface *)&v3 dealloc];
}

- (void)_open
{
  serialQueue = [(CECIOCECInterface *)self serialQueue];
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_1FD4();
  }

  if (!self->_isOpen && self->_iocecInterface && serialQueue != 0)
  {
    v5 = IOCECInterfaceOpenReceiveQueue();
    if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
    {
      v9 = "[CECIOCECInterface _open]";
      v10 = v5;
      selfCopy = self;
      LogPrintF();
    }

    if (!v5)
    {
      IOCECInterfaceRegisterTerminatedCallback();
      IOCECInterfaceRegisterReceiveCallback();
      IOCECInterfaceRegisterStatusCallback();
      [(CECIOCECInterface *)self setReceiveWorkloop:dispatch_workloop_create_inactive("IOCECInterface - Receive Workloop")];
      if ([(CECIOCECInterface *)self receiveWorkloop])
      {
        [(CECIOCECInterface *)self receiveWorkloop];
        dispatch_workloop_set_scheduler_priority();
        dispatch_activate([(CECIOCECInterface *)self receiveWorkloop]);
        [(CECIOCECInterface *)self receiveWorkloop];
        IOCECInterfaceScheduleWithDispatchQueue();
        self->_isOpen = 1;
        v6 = v12;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v7 = sub_11A4;
        goto LABEL_17;
      }

      sub_2034();
    }

    v6 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v7 = sub_12C4;
LABEL_17:
    v6[2] = v7;
    v6[3] = &unk_41A8;
    v6[4] = self;
    [(CECIOCECInterface *)self dispatchAsyncHighPriority:selfCopy, v9, v10];
  }
}

- (void)_close
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_2144();
  }

  if (self->_isOpen)
  {
    if ([(CECIOCECInterface *)self receiveWorkloop])
    {
      [(CECIOCECInterface *)self receiveWorkloop];
      IOCECInterfaceUnscheduleFromDispatchQueue();
      IOCECInterfaceRegisterStatusCallback();
      IOCECInterfaceRegisterReceiveCallback();
      IOCECInterfaceRegisterTerminatedCallback();
    }

    IOCECInterfaceCloseReceiveQueue();
    v3.receiver = self;
    v3.super_class = CECIOCECInterface;
    [(CECIOCECInterface *)&v3 setAddressMask:0 error:0];
    self->_isOpen = 0;

    [(CECIOCECInterface *)self setReceiveWorkloop:0];
  }
}

- (BOOL)errorIsNack:(id)nack
{
  if (nack)
  {
    v4 = [objc_msgSend(nack "domain")];
    if (v4)
    {
      LOBYTE(v4) = [nack code] == -535724032;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error
{
  v7 = -536870206;
  __dst = 0uLL;
  v12 = 0;
  if (self->_isOpen)
  {
    v8 = *(frame + 16);
    if ((v8 & 0x1Fu) - 17 >= 0xFFFFFFF0)
    {
      memcpy(&__dst, frame, v8 & 0x1F);
      v12 = v12 & 0xF0 | (v8 - 1) & 0xF;
      v7 = IOCECInterfaceSendFrame();
      if (!v7)
      {
        return 1;
      }
    }
  }

  else
  {
    v7 = -536870195;
  }

  if (!error)
  {
    return 0;
  }

  v10 = [NSError errorWithDomain:NSMachErrorDomain code:v7 userInfo:0];
  result = 0;
  *error = v10;
  return result;
}

- (id)properties
{
  v3 = objc_alloc_init(CECEDIDAttributes);
  [v3 setAddress:self->_attributes.address];
  [v3 setVendorID:self->_attributes.vendorID];
  [v3 setProductID:self->_attributes.productID];
  [v3 setWeek:self->_attributes.week];
  [v3 setYear:self->_attributes.year];
  [v3 setModelName:{+[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", self->_attributes.modelName, 1)}];
  [v3 setUuid:{+[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", self->_attributes.uuid, 1)}];
  hpd = self->_hpd;
  v8[0] = kCECInterfacePropertyIsValid;
  v8[1] = kCECInterfacePropertyHasLink;
  if (hpd)
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  v9[0] = &__kCFBooleanTrue;
  v9[1] = v5;
  v8[2] = kCECInterfacePropertyPhysicalAddress;
  v6 = [NSNumber numberWithUnsignedInteger:self->_attributes.address];
  v8[3] = kCECInterfacePropertyEDIDAttributes;
  v9[2] = v6;
  v9[3] = v3;
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
}

- (void)_updateStatusWithEDID:(id *)d HPD:(BOOL)pD hibernate:(BOOL)hibernate
{
  hibernateCopy = hibernate;
  pDCopy = pD;
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    var5 = d->var5;
    var6 = d->var6;
    v15 = hibernateCopy;
    var1 = d->var1;
    var0 = d->var0;
    v14 = pDCopy;
    selfCopy = self;
    v12 = "[CECIOCECInterface _updateStatusWithEDID:HPD:hibernate:]";
    LogPrintF();
  }

  v9 = *&d->var6[6];
  v19[2] = *&d->var5[22];
  v19[3] = v9;
  v19[4] = *&d->var6[22];
  v10 = *&d->var5[6];
  v19[0] = *&d->var0;
  v19[1] = v10;
  [(CECIOCECInterface *)self setAttributes:v19, selfCopy, v12, var0, v14, v15, var1, var5, var6];
  [(CECIOCECInterface *)self setHpd:pDCopy];
  if ([(CECIOCECInterface *)self hibernate]!= hibernateCopy)
  {
    [(CECIOCECInterface *)self setHibernate:hibernateCopy];
    [(CECIOCECInterface *)self hibernationChanged:hibernateCopy];
  }

  [(CECIOCECInterface *)self didChangeProperties];
}

- ($D1819ED0CAECE69E625AEC8AD7BCEE3A)attributes
{
  v3 = *&self[1].var4;
  *&retstr->var5[22] = *&self->var6[30];
  *&retstr->var6[6] = v3;
  *&retstr->var6[22] = *&self[1].var5[14];
  v4 = *&self->var6[14];
  *&retstr->var0 = *&self->var5[30];
  *&retstr->var5[6] = v4;
  return self;
}

- (void)setAttributes:(id *)attributes
{
  *&self->_attributes.address = *&attributes->var0;
  v3 = *&attributes->var6[22];
  v5 = *&attributes->var5[6];
  v4 = *&attributes->var5[22];
  *&self->_attributes.uuid[6] = *&attributes->var6[6];
  *&self->_attributes.uuid[22] = v3;
  *&self->_attributes.modelName[6] = v5;
  *&self->_attributes.modelName[22] = v4;
}

- (BOOL)setHardwareAddressMask:(unsigned __int16)mask error:(id *)error
{
  if (self->_isOpen)
  {
    v5 = IOCECInterfaceSetLogicalAddressMask();
  }

  else
  {
    v5 = -536870195;
  }

  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v5 && error)
  {
    *error = [NSError errorWithDomain:NSMachErrorDomain code:v5 userInfo:0];
  }

  return v5 == 0;
}

- (void)_interfaceTerminated:(__IOCECInterface *)terminated
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (self->_iocecInterface == terminated)
  {
    listener = self->_listener;

    [(CoreRCInterfaceListener *)listener removeInterface:self];
  }
}

- (void)scheduleWithDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v6 = "[CECIOCECInterface scheduleWithDispatchQueue:]";
    queueCopy = queue;
    selfCopy = self;
    LogPrintF();
  }

  if (![(CECIOCECInterface *)self serialQueue:selfCopy])
  {
    [(CECIOCECInterface *)self setSerialQueue:queue];

    [(CECIOCECInterface *)self _open];
  }
}

- (void)unscheduleFromDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v6 = "[CECIOCECInterface unscheduleFromDispatchQueue:]";
    queueCopy = queue;
    selfCopy = self;
    LogPrintF();
  }

  if ([(CECIOCECInterface *)self serialQueue:selfCopy]== queue)
  {
    [(CECIOCECInterface *)self _close];

    [(CECIOCECInterface *)self setSerialQueue:0];
  }
}

@end