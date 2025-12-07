@interface CoreCECBusProvider
- (BOOL)_sendMessage:(id)message toDevice:(id)device withRetryCount:(unsigned __int8)count error:(id *)error;
- (BOOL)areMultipleCECBusses;
- (BOOL)injectRXMessage:(id)message error:(id *)error;
- (BOOL)injectTXMessage:(id)message error:(id *)error;
- (BOOL)pollingOperation:(id)operation shouldSkipAddress:(unsigned __int8)address;
- (BOOL)receivedMessage:(id)message;
- (BOOL)refreshDevicesWithInitiator:(id)initiator error:(id *)error;
- (BOOL)sendMessage:(id)message withRetryCount:(unsigned __int8)count error:(id *)error;
- (BOOL)setProperty:(id)property forKey:(id)key error:(id *)error;
- (CoreCECBusProvider)initWithBus:(id)bus;
- (CoreCECBusProvider)initWithCoder:(id)coder;
- (CoreCECBusProvider)initWithInterface:(id)interface;
- (CoreCECBusProvider)initWithLinkState:(BOOL)state physicalAddress:(unsigned __int16)address;
- (NSString)description;
- (id)_cecErrorWithError:(id)error fromInterface:(id)interface;
- (id)addDeviceWithAttributes:(id)attributes error:(id *)error;
- (id)addDeviceWithLogicalAddress:(unsigned __int8)address message:(id)message reason:(unint64_t)reason;
- (id)addDeviceWithLogicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress attributes:(id)attributes message:(id)message reason:(unint64_t)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)destinationConfirmedForMessage:(id)message;
- (id)destinationExpectedForMessage:(id)message;
- (id)propertyForKey:(id)key error:(id *)error;
- (uint64_t)updateAllowHibernation;
- (unsigned)allocateCECAddressForDeviceType:(unint64_t)type withCECAddress:(unsigned __int8)address error:(id *)error;
- (void)_changeActiveSourceFrom:(id)from to:(id)to;
- (void)dealloc;
- (void)didChangeLinkState:(BOOL)state physicalAddress:(unsigned __int16)address;
- (void)interface:(id)interface hibernationChanged:(BOOL)changed;
- (void)interface:(id)interface receivedFrame:(CECFrame *)frame;
- (void)interfacePropertiesChanged:(id)changed;
- (void)makeDeviceInactiveSource:(id)source;
- (void)pollingOperation:(id)operation deviceNotRespondingAtAddress:(unsigned __int8)address;
- (void)pollingOperation:(id)operation encounteredError:(id)error forMessage:(id)message;
- (void)pollingOperationCompleted:(id)completed;
- (void)reallocateAllCECAddresses:(id)addresses;
- (void)setActiveSource:(id)source;
- (void)setLinkState:(BOOL)state physicalAddress:(unsigned __int16)address;
- (void)setOsdNameASCII:(CECOSDName)i;
- (void)setStreamPath:(unsigned __int16)path;
- (void)setSystemAudioModeStatus:(unint64_t)status;
- (void)setTvLanguageCodeASCII:(CECLanguage)i;
- (void)updateAllowHibernation;
- (void)willRemoveDevice:(id)device;
@end

@implementation CoreCECBusProvider

- (CoreCECBusProvider)initWithLinkState:(BOOL)state physicalAddress:(unsigned __int16)address
{
  v7.receiver = self;
  v7.super_class = CoreCECBusProvider;
  v5 = [(CoreCECBus *)&v7 initWithLinkState:state physicalAddress:address];
  if (v5)
  {
    v5->_deferLossOfLink = [objc_msgSend(MEMORY[0x277CBEBD0] "cecUserDefaults")];
    v5->_realHasLink = state;
  }

  return v5;
}

- (CoreCECBusProvider)initWithBus:(id)bus
{
  v5.receiver = self;
  v5.super_class = CoreCECBusProvider;
  v3 = [(CoreCECBus *)&v5 initWithBus:bus];
  if (v3)
  {
    v3->_deferLossOfLink = [objc_msgSend(MEMORY[0x277CBEBD0] "cecUserDefaults")];
    v3->_realHasLink = 0;
  }

  return v3;
}

- (CoreCECBusProvider)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CoreCECBusProvider;
  v3 = [(CoreCECBus *)&v5 initWithCoder:coder];
  if (v3)
  {
    v3->_deferLossOfLink = [objc_msgSend(MEMORY[0x277CBEBD0] "cecUserDefaults")];
    v3->_realHasLink = 0;
  }

  return v3;
}

- (CoreCECBusProvider)initWithInterface:(id)interface
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  if (![objc_msgSend(interface "properties")])
  {

    return 0;
  }

  v5 = v11;
  if (!v11)
  {
    v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "cecUserDefaults")];
    v11 = v5;
    if (gLogCategory_CoreRCBus > 40)
    {
      goto LABEL_8;
    }

    if (gLogCategory_CoreRCBus == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      LODWORD(v5) = v11;
    }

    v13[0] = CECPhysicalAddressStringWithAddress(v5);
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider initWithInterface:]", 40, "Last known physical address: %s", v13);
LABEL_7:
    v5 = v11;
LABEL_8:
    if (!v5)
    {
      v5 = 0xFFFFLL;
      v11 = -1;
    }
  }

  if (gLogCategory_CoreRCBus <= 40)
  {
    if (gLogCategory_CoreRCBus != -1 || (v6 = _LogCategory_Initialize(), v5 = v11, v6))
    {
      v12 = CECPhysicalAddressStringWithAddress(v5);
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider initWithInterface:]", 40, "initWithInterface with physical address: %s", &v12);
      v5 = v11;
    }
  }

  v7 = [(CoreCECBusProvider *)self initWithLinkState:v10 physicalAddress:v5];
  if (v7)
  {
    -[CoreCECBus setEdidAttributes:](v7, "setEdidAttributes:", [objc_msgSend(interface "properties")]);
    interfaceCopy = interface;
    v7->_interface = interfaceCopy;
    [(CECInterface *)interfaceCopy setDelegate:v7];
  }

  return v7;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = CoreCECBusProvider;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreCECBus description](&v6, sel_description)}];
  [v3 appendFormat:@" HPD: %u;", self->_realHasLink];
  if (self->_deferLossOfLink)
  {
    v4 = "Y";
  }

  else
  {
    v4 = "N";
  }

  [v3 appendFormat:@" defersHPDLoss: %s;", v4];
  return v3;
}

- (void)dealloc
{
  [(CECBusPollingOperation *)self->_pollingOperation setDelegate:0];
  [(CECBusPollingOperation *)self->_pollingOperation stopPolling];

  [(CECInterface *)self->_interface setDelegate:0];
  v3.receiver = self;
  v3.super_class = CoreCECBusProvider;
  [(CoreCECBus *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CoreCECBusProvider;
  return [(CoreRCBus *)&v4 copyWithZone:zone];
}

- (BOOL)setProperty:(id)property forKey:(id)key error:(id *)error
{
  interface = [(CoreCECBusProvider *)self interface];

  return [(CoreRCInterface *)interface setProperty:property forKey:key error:error];
}

- (id)propertyForKey:(id)key error:(id *)error
{
  interface = [(CoreCECBusProvider *)self interface];

  return [(CoreRCInterface *)interface propertyForKey:key error:error];
}

- (unsigned)allocateCECAddressForDeviceType:(unint64_t)type withCECAddress:(unsigned __int8)address error:(id *)error
{
  addressCopy = address;
  v10 = 0;
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider allocateCECAddressForDeviceType:type withCECAddress:? error:?];
  }

  if (self->_interface)
  {
    v9 = 0;
    if (CECDeviceTypeForCoreCECDeviceType(&v9, type))
    {
      [(CECInterface *)self->_interface allocateCECAddress:&addressCopy forDeviceType:v9 error:&v10];
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else
    {
      [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
      if (!error)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider allocateCECAddressForDeviceType:withCECAddress:error:];
  }

  addressCopy = 15;
  if (error)
  {
LABEL_12:
    *error = v10;
  }

LABEL_13:
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider allocateCECAddressForDeviceType:&v10 withCECAddress:? error:?];
  }

  return addressCopy;
}

- (id)addDeviceWithLogicalAddress:(unsigned __int8)address message:(id)message reason:(unint64_t)reason
{
  addressCopy = address;
  result = [(CoreCECBus *)self deviceOnBusWithLogicalAddress:?];
  if (!result)
  {
    v20 = -1;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    v10 = -1;
    if (!reason)
    {
      if ([message messageType] == 132)
      {
        if (([message parseReportPhysicalAddress:&v20 deviceType:&v19] & 1) == 0 && gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
        {
          [CoreCECBusProvider addDeviceWithLogicalAddress:message:reason:];
        }
      }

      else if ([message messageType] == 166)
      {
        v15 = 0;
        v14 = 0;
        v13 = 0;
        [message parseReportFeatures:&v15 + 1 deviceTypes:&v15 rcProfile:&v14 features:&v13];
        CoreCECDeviceFeaturesMaskForCECDeviceFeaturesMask(&v18, v13);
        CoreCECDeviceTypesMaskForCECAllDeviceTypesMask(&v17, v15);
        CoreCECRCProfileForCECRCProfile(&v16, &v14);
        v10 = HIBYTE(v15);
      }
    }

    if (addressCopy)
    {
      v11 = v20;
      v12 = v19;
    }

    else
    {
      v11 = 0;
      v12 = 7;
      v19 = 7;
      v20 = 0;
    }

    return [(CoreCECBusProvider *)self addDeviceWithLogicalAddress:addressCopy physicalAddress:v11 attributes:[CoreCECDeviceBasicAttributes deviceAttributesWithPrimaryType:v17 otherTypes:v18 features:v16 rcProfile:-1 vendorID:v10 version:?], message, reason];
  }

  return result;
}

- (void)setLinkState:(BOOL)state physicalAddress:(unsigned __int16)address
{
  if (self->_realHasLink != state)
  {
    addressCopy = address;
    self->_realHasLink = state;
    if ([(CoreCECBusProvider *)self areMultipleCECBusses])
    {
      if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        [CoreCECBusProvider setLinkState:self physicalAddress:?];
      }
    }

    else if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreCECBusProvider setLinkState:? physicalAddress:?];
    }

    if (self->_deferLossOfLink)
    {
      if (self->_realHasLink)
      {
        v8.receiver = self;
        v8.super_class = CoreCECBusProvider;
        [(CoreCECBus *)&v8 setLinkState:0 physicalAddress:addressCopy];
        [(CoreCECBus *)&v7 setLinkState:1 physicalAddress:addressCopy, v6.receiver, v6.super_class, self, CoreCECBusProvider];
      }
    }

    else
    {
      [(CoreCECBus *)&v6 setLinkState:self->_realHasLink physicalAddress:addressCopy, self, CoreCECBusProvider, v7.receiver, v7.super_class];
    }
  }
}

- (void)didChangeLinkState:(BOOL)state physicalAddress:(unsigned __int16)address
{
  v6.receiver = self;
  v6.super_class = CoreCECBusProvider;
  [(CoreCECBus *)&v6 didChangeLinkState:state physicalAddress:address];
  if (!state)
  {
    [(CoreRCBus *)self removeAllExternalDevices];
    [(CoreCECBusProvider *)self reallocateAllCECAddresses:[(CoreCECBusProvider *)self interface]];
  }
}

- (BOOL)refreshDevicesWithInitiator:(id)initiator error:(id *)error
{
  if (gLogCategory_CoreRCBus > 10 || gLogCategory_CoreRCBus == -1 && !_LogCategory_Initialize())
  {
    if (initiator)
    {
      goto LABEL_5;
    }

LABEL_14:
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
    v8 = v10;
    if (!error)
    {
      return v8 == 0;
    }

    goto LABEL_11;
  }

  [CoreCECBusProvider refreshDevicesWithInitiator:initiator error:?];
  if (!initiator)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (![(CoreCECBusProvider *)self pollingOperation])
  {
    v7 = -[CECBusPollingOperation initWithInterface:initiator:queue:]([CECBusPollingOperation alloc], "initWithInterface:initiator:queue:", -[CoreCECBusProvider interface](self, "interface"), [initiator logicalAddress], objc_msgSend(-[CoreRCBus manager](self, "manager"), "serialQueue"));
    [(CECBusPollingOperation *)v7 setDelegate:self];
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreCECBusProvider refreshDevicesWithInitiator:error:];
    }

    [(CECBusPollingOperation *)v7 startPolling];
    [(CoreCECBusProvider *)self setPollingOperation:v7];
  }

  v8 = 0;
  if (error)
  {
LABEL_11:
    *error = v8;
  }

  return v8 == 0;
}

- (BOOL)pollingOperation:(id)operation shouldSkipAddress:(unsigned __int8)address
{
  v5 = [(CoreCECBus *)self deviceOnBusWithLogicalAddress:address];
  if (v5)
  {
    isLocalDevice = [v5 isLocalDevice];
  }

  else
  {
    isLocalDevice = 0;
  }

  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider pollingOperation:address shouldSkipAddress:isLocalDevice];
  }

  return isLocalDevice;
}

- (void)pollingOperation:(id)operation deviceNotRespondingAtAddress:(unsigned __int8)address
{
  v5 = [(CoreCECBus *)self deviceOnBusWithLogicalAddress:address];
  if (v5)
  {
    v6 = v5;
    if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreCECBusProvider pollingOperation:v6 deviceNotRespondingAtAddress:?];
    }

    [(CoreRCBus *)self removeDevice:v6];
  }
}

- (void)pollingOperation:(id)operation encounteredError:(id)error forMessage:(id)message
{
  if (![(CECInterface *)[(CoreCECBusProvider *)self interface] errorIsNack:error]&& gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider pollingOperation:encounteredError:forMessage:]", 60, "message: %@ error: %@\n", message, error);
  }
}

- (void)pollingOperationCompleted:(id)completed
{
  [(CECBusPollingOperation *)[(CoreCECBusProvider *)self pollingOperation] setDelegate:0];

  [(CoreCECBusProvider *)self setPollingOperation:0];
}

- (void)_changeActiveSourceFrom:(id)from to:(id)to
{
  [from setIsActiveSource:0];
  [to setIsActiveSource:1];
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider _changeActiveSourceFrom:to:]", 40, "Active source changed from %@ to %@\n", from, to);
  }

  [(CoreCECBus *)self didChangeActiveSourceFrom:from to:to];
}

- (void)setStreamPath:(unsigned __int16)path
{
  pathCopy = path;
  if ([(CoreCECBus *)self streamPath]!= path)
  {
    activeSource = [(CoreCECBus *)self activeSource];
    v6.receiver = self;
    v6.super_class = CoreCECBusProvider;
    [(CoreCECBus *)&v6 setStreamPath:pathCopy];
    [(CoreCECBus *)self didUpdateProperties:&unk_28593C138];
    if (activeSource)
    {
      if ([(CoreCECDevice *)activeSource physicalAddress]!= pathCopy)
      {
        [(CoreCECBusProvider *)self _changeActiveSourceFrom:activeSource to:0];
      }
    }
  }
}

- (void)setOsdNameASCII:(CECOSDName)i
{
  v4.receiver = self;
  v4.super_class = CoreCECBusProvider;
  [(CoreCECBus *)&v4 setOsdNameASCII:*&i.length, *&i.characters[7] & 0xFFFFFFFFFFFFFFLL];
  [(CoreCECBus *)self didUpdateProperties:&unk_28593C150];
}

- (void)setTvLanguageCodeASCII:(CECLanguage)i
{
  v4.receiver = self;
  v4.super_class = CoreCECBusProvider;
  [(CoreCECBus *)&v4 setTvLanguageCodeASCII:*i.characters & 0xFFFFFFLL];
  [(CoreCECBus *)self didUpdateProperties:&unk_28593C168];
}

- (void)setSystemAudioModeStatus:(unint64_t)status
{
  if ([(CoreCECBus *)self systemAudioModeStatus]!= status)
  {
    v5.receiver = self;
    v5.super_class = CoreCECBusProvider;
    [(CoreCECBus *)&v5 setSystemAudioModeStatus:status];
    [(CoreCECBus *)self didUpdateProperties:&unk_28593C180];
  }
}

- (void)setActiveSource:(id)source
{
  activeSource = [(CoreCECBus *)self activeSource];
  if (source)
  {
    physicalAddress = [source physicalAddress];
  }

  else
  {
    physicalAddress = 0xFFFFLL;
  }

  if ([(CoreCECBus *)self streamPath]!= physicalAddress)
  {
    v7.receiver = self;
    v7.super_class = CoreCECBusProvider;
    [(CoreCECBus *)&v7 setStreamPath:physicalAddress];
    [(CoreCECBus *)self didUpdateProperties:&unk_28593C198];
  }

  if (activeSource != source)
  {
    [(CoreCECBusProvider *)self _changeActiveSourceFrom:activeSource to:source];
  }
}

- (void)makeDeviceInactiveSource:(id)source
{
  if ([(CoreCECBus *)self activeSource]== source)
  {
    if ([(CoreCECBus *)self streamPath]!= 0xFFFF)
    {
      v5.receiver = self;
      v5.super_class = CoreCECBusProvider;
      [(CoreCECBus *)&v5 setStreamPath:0xFFFFLL];
      [(CoreCECBus *)self didUpdateProperties:&unk_28593C1B0];
    }

    [(CoreCECBusProvider *)self _changeActiveSourceFrom:source to:0];
  }
}

- (void)updateAllowHibernation
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [(CoreRCBus *)self devices];
  v4 = [(NSSet *)devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isLocalDevice])
        {
          v7 &= [v9 powerStatus] == 2;
        }
      }

      v5 = [(NSSet *)devices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider updateAllowHibernation]", 10, "%@ shouldAllowHibernation: %d\n", self, v7 & 1);
  }

  v10 = 0;
  if (![(CoreRCBus *)self setAllowHibernation:v7 & 1 error:&v10])
  {
    [(CoreCECBusProvider *)v7 & 1 updateAllowHibernation];
  }
}

- (id)_cecErrorWithError:(id)error fromInterface:(id)interface
{
  if (!error)
  {
    v7 = MEMORY[0x277CCA9B8];
    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6700 userInfo:0];
    goto LABEL_7;
  }

  errorCopy = error;
  v6 = [interface errorIsNack:?];
  v7 = MEMORY[0x277CCA9B8];
  if (!v6)
  {
LABEL_7:
    v10 = [v7 cecIOErrorWithUnderlyingError:errorCopy];
    [v10 sendCECErrorAnalyticsWithContext:{-[CoreCECBus analyticsContext](self, "analyticsContext")}];
    return v10;
  }

  v8 = MEMORY[0x277CCA9B8];

  return [v8 cecAcknowledgementErrorWithUnderlyingError:errorCopy];
}

- (BOOL)_sendMessage:(id)message toDevice:(id)device withRetryCount:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  v17 = 0;
  interface = [(CoreCECBusProvider *)self interface];
  if (!interface)
  {
    [CoreCECBusProvider _sendMessage:? toDevice:? withRetryCount:? error:?];
    goto LABEL_27;
  }

  v12 = interface;
  isLocalDevice = [device isLocalDevice];
  if ((isLocalDevice & 1) == 0 && ![(CECInterface *)v12 sendMessage:message withRetryCount:countCopy error:&v17])
  {
    v16 = [(CoreCECBusProvider *)self _cecErrorWithError:v17 fromInterface:v12];
LABEL_28:
    v14 = 0;
    if (error)
    {
      *error = v16;
    }

    return v14;
  }

  if ([(CoreCECBusProvider *)self areMultipleCECBusses])
  {
    if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreCECBusProvider _sendMessage:message toDevice:? withRetryCount:? error:?];
    }
  }

  else if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider _sendMessage:message toDevice:? withRetryCount:? error:?];
  }

  if (!-[CECInterface hasMultipleLogicalAddresses](v12, "hasMultipleLogicalAddresses") || ([message isBroadcast] & 1) == 0 && !objc_msgSend(device, "isLocalDevice"))
  {
    if (!isLocalDevice)
    {
      return 1;
    }

    [CoreCECBusProvider _sendMessage:? toDevice:? withRetryCount:? error:?];
    goto LABEL_27;
  }

  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider _sendMessage:message toDevice:? withRetryCount:? error:?];
  }

  v14 = 1;
  [message setLoopback:1];
  if (![(CoreCECBusProvider *)self receivedMessage:message])
  {
    [CoreCECBusProvider _sendMessage:? toDevice:? withRetryCount:? error:?];
LABEL_27:
    v16 = v18;
    goto LABEL_28;
  }

  return v14;
}

- (BOOL)sendMessage:(id)message withRetryCount:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  messageCopy = message;
  v9 = -[CoreCECBus deviceOnBusWithLogicalAddress:](self, "deviceOnBusWithLogicalAddress:", [message initiator]);
  v22 = 0;
  isBroadcast = [messageCopy isBroadcast];
  if (!messageCopy)
  {
    [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
    v18 = 0;
    goto LABEL_38;
  }

  v11 = isBroadcast;
  if (isBroadcast)
  {
    v12 = 0;
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v13 = -[CoreCECBus deviceOnBusWithLogicalAddress:](self, "deviceOnBusWithLogicalAddress:", [messageCopy destination]);
  if (v13)
  {
    v12 = v13;
    goto LABEL_6;
  }

  v12 = [(CoreCECBusProvider *)self destinationExpectedForMessage:messageCopy];
  v14 = v12 != 0;
LABEL_7:
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v15 = "NO";
    if (v11)
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    if (v14)
    {
      v15 = "YES";
    }

    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider sendMessage:withRetryCount:error:]", 10, "%@ sendMessage: broadcast=%s speculativelyAddedDevice=%s toDevice=%@ fromDevice=%@\n", self, v16, v15, v12, v9);
  }

  if (v12)
  {
    messageCopy = [v12 filterMessage:messageCopy fromDevice:v9];
    if (!messageCopy)
    {
      if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider sendMessage:withRetryCount:error:]", 10, "%@ sendMessage: dropped message due to filtering, toDevice=%@\n", self, v12);
      }

      v18 = 0;
      goto LABEL_33;
    }
  }

  v17 = [(CoreCECBusProvider *)self _sendMessage:messageCopy toDevice:v12 withRetryCount:countCopy error:&v22];
  if (v22)
  {
    v18 = [v22 copy];
  }

  else
  {
    v18 = 0;
  }

  [(CoreCECBus *)self didSendTXMessage:messageCopy error:v18];
  if (v17)
  {
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v11;
    }

    if ((v19 & 1) == 0)
    {
      v12 = [(CoreCECBusProvider *)self destinationConfirmedForMessage:messageCopy];
      if (v12)
      {
        if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider sendMessage:withRetryCount:error:]", 10, "%@ sendMessage: -destinationConfirmedForMessage: added toDevice=%@\n", self, v12);
        }
      }
    }

    [v12 didReceiveMessage:messageCopy fromDevice:v9];
LABEL_33:
    v20 = 1;
    goto LABEL_34;
  }

  if (v14)
  {
    [(CoreRCBus *)self removeDevice:v12];
  }

LABEL_38:
  v20 = 0;
  if (error)
  {
    *error = v22;
  }

LABEL_34:

  return v20;
}

- (BOOL)areMultipleCECBusses
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  manager = [-[CoreRCBus manager](self manager];
  v3 = [manager countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(manager);
        }

        objc_opt_class();
        v5 += objc_opt_isKindOfClass() & 1;
      }

      v4 = [manager countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
    LOBYTE(v3) = v5 > 1u;
  }

  return v3;
}

- (BOOL)injectTXMessage:(id)message error:(id *)error
{
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider injectTXMessage:message error:?];
  }

  v7 = [(CoreCECBusProvider *)self sendMessage:message error:error];
  if ([(CoreCECBusProvider *)self areMultipleCECBusses])
  {
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [CoreCECBusProvider injectTXMessage:message error:?];
    }
  }

  else if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider injectTXMessage:message error:?];
  }

  return v7;
}

- (BOOL)injectRXMessage:(id)message error:(id *)error
{
  error = [(CoreCECBusProvider *)self receivedMessage:message, error];
  if ([(CoreCECBusProvider *)self areMultipleCECBusses])
  {
    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECBusProvider *)error injectRXMessage:message error:?];
    }
  }

  else if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider injectRXMessage:error:]", 10, "status: [%d] injectRXMessage: [%@] to ATV \n", error, message);
  }

  return error;
}

- (void)interface:(id)interface hibernationChanged:(BOOL)changed
{
  changedCopy = changed;
  v17 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider interface:hibernationChanged:]", 40, "%@ interface hibernationChanged: %d\n", self, changedCopy);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  devices = [(CoreRCBus *)self devices];
  v7 = [(NSSet *)devices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(devices);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 isLocalDevice])
        {
          [v11 hibernationChanged:changedCopy];
        }
      }

      v8 = [(NSSet *)devices countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)reallocateAllCECAddresses:(id)addresses
{
  v29 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusProvider reallocateAllCECAddresses:?];
  }

  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  devices = [(CoreRCBus *)self devices];
  v5 = [(NSSet *)devices countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if ([v9 isLocalDevice])
        {
          v10 = -[CoreCECBusProvider allocateCECAddressForDeviceType:withCECAddress:error:](self, "allocateCECAddressForDeviceType:withCECAddress:error:", [v9 deviceType], objc_msgSend(v9, "logicalAddress"), &v26);
          [v9 setSendFromAddress:v10];
          [v9 setLogicalAddress:v10];
          [v9 setPhysicalAddress:{-[CoreCECBus physicalAddress](self, "physicalAddress")}];
          if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider reallocateAllCECAddresses:]", 10, "%@ interface reallocateAllCECAddresses reallocated error: %@ %@\n", self, v26, v9);
          }
        }
      }

      v6 = [(NSSet *)devices countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  devices2 = [(CoreRCBus *)self devices];
  v12 = [(NSSet *)devices2 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(devices2);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        if ([v16 isLocalDevice])
        {
          if ([v16 logicalAddress] != 15)
          {
            [v16 broadcastPresence];
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __48__CoreCECBusProvider_reallocateAllCECAddresses___block_invoke;
            v17[3] = &unk_278EA3400;
            v17[4] = v16;
            [v16 dispatchAsyncLowPriority:v17];
          }
        }
      }

      v13 = [(NSSet *)devices2 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v13);
  }
}

- (id)addDeviceWithLogicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress attributes:(id)attributes message:(id)message reason:(unint64_t)reason
{
  physicalAddressCopy = physicalAddress;
  addressCopy = address;
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithLogicalAddress:physicalAddress:attributes:message:reason:]", 10, "self.manager addDeviceWithBus physicalAddress: %08x\n", physicalAddressCopy);
  }

  v13 = [-[CoreRCBus manager](self "manager")];
  v14 = v13;
  if (reason != 3 && !v13)
  {
    v14 = [[CoreCECDeviceProvider alloc] initWithBus:self local:reason == 2 logicalAddress:addressCopy physicalAddress:physicalAddressCopy attributes:attributes];
  }

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 15;
      switch(reason)
      {
        case 0uLL:
          destination = [message destination];
          goto LABEL_15;
        case 1uLL:
          goto LABEL_21;
        case 2uLL:
          isLocalDevice = [(CoreRCDevice *)v14 isLocalDevice];
          v15 = addressCopy;
          if (!isLocalDevice)
          {
            return v14;
          }

          goto LABEL_21;
        case 3uLL:
        case 4uLL:
          destination = [message initiator];
LABEL_15:
          v15 = destination;
          goto LABEL_21;
        default:
          if (gLogCategory_CoreRCManager <= 90 && (gLogCategory_CoreRCManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_CoreRCManager, "[CoreCECBusProvider addDeviceWithLogicalAddress:physicalAddress:attributes:message:reason:]", 90, "Unknown reason for addDeviceWithBus.");
          }

          v15 = 15;
LABEL_21:
          [(CoreCECDeviceProvider *)v14 setSendFromAddress:v15];
          [(CoreRCBus *)self addDevice:v14];
          if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithLogicalAddress:physicalAddress:attributes:message:reason:]", 10, "Created CEC Device on CEC Bus %@\nDevices: %@\n", self, [(CoreRCBus *)self devices]);
          }

          break;
      }
    }
  }

  return v14;
}

- (id)addDeviceWithAttributes:(id)attributes error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  v42 = 0;
  OUTLINED_FUNCTION_0_7();
  if (v23 ^ v24 | v22 && (v6 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 40, "Add device with attributes %@\n", attributes);
  }

  if (![attributes deviceType])
  {
    v33 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA590];
    v35 = -6705;
LABEL_123:
    v12 = 0;
    v42 = [v33 errorWithDomain:v34 code:v35 userInfo:0];
    goto LABEL_89;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  selfCopy = self;
  devices = [(CoreRCBus *)self devices];
  v8 = [(NSSet *)devices countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
LABEL_9:
    v11 = 0;
    while (1)
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(devices);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 10, "device: %@\n", v12);
      }

      if ([v12 isLocalDevice])
      {
        deviceType = [v12 deviceType];
        if (deviceType == [attributes deviceType])
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [(NSSet *)devices countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_28;
      }
    }

    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 10, "matchingDevice: %@\n", v12);
    }

    if ([v12 logicalAddress] == 15 && (objc_msgSend(attributes, "options") & 1) == 0)
    {
      if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 60, "Device exists but has Unregistered address, not returning device\n");
      }

      goto LABEL_122;
    }

    if (v12)
    {
      goto LABEL_89;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_0_7();
  if (v23 ^ v24 | v22 && (v14 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 40, "No matching device found, creating new device\n");
  }

  v15 = -[CoreCECBusProvider allocateCECAddressForDeviceType:withCECAddress:error:](selfCopy, "allocateCECAddressForDeviceType:withCECAddress:error:", [attributes deviceType], 15, &v42);
  if (v15 == 15 && ([attributes options] & 1) == 0)
  {
    if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 60, "Unable to allocate logical address\n");
    }

LABEL_122:
    v33 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA590];
    v35 = -6761;
    goto LABEL_123;
  }

  v16 = [(CoreCECBus *)selfCopy deviceOnBusWithLogicalAddress:v15];
  if (v16)
  {
    v17 = v16;
    if (gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 60, "Removing stale external device from bus %@\n", v17);
    }

    [OUTLINED_FUNCTION_2_6() removeDevice:?];
  }

  v12 = [(CoreCECBusProvider *)selfCopy addDeviceWithLogicalAddress:v15 physicalAddress:[(CoreCECBus *)selfCopy physicalAddress] attributes:attributes message:0 reason:2];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 10, "Allocated new matchingDevice: %@\n", v12);
  }

  if (!v12)
  {
    if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 90, "CEC device allocation failed\n");
    }

    [(CECInterface *)selfCopy->_interface deallocateCECAddress:v15 error:0];
    v33 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA590];
    v35 = -6728;
    goto LABEL_123;
  }

  if (([attributes options] & 2) != 0 && (objc_msgSend(v12, "setSystemAudioControlEnabled:error:", 1, &v42) & 1) == 0)
  {
    if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "-[CoreCECBusProvider addDeviceWithAttributes:error:]", 90, "bundled setSystemAudioControlEnabled: failed: %@\n", [v42 localizedDescription]);
    }

    goto LABEL_120;
  }

  if (([attributes options] & 4) != 0 && (objc_msgSend(v12, "setAudioReturnChannelControlEnabled:error:", 1, &v42) & 1) == 0)
  {
    if (gLogCategory_CoreRCBus <= 90 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "-[CoreCECBusProvider addDeviceWithAttributes:error:]", 90, "bundled setAudioReturnChannelControlEnabled: failed: %@\n", [v42 localizedDescription]);
    }

LABEL_120:
    [OUTLINED_FUNCTION_2_6() removeDevice:?];
    v12 = 0;
    goto LABEL_89;
  }

  [v12 broadcastPresence];
  if ([(CoreCECBus *)selfCopy activeSource])
  {
    if (![attributes isActiveSource])
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_0_7();
    if (!(v23 ^ v24 | v22) || v18 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_82;
    }

    activeSource = [(CoreCECBus *)selfCopy activeSource];
    v45 = CECPhysicalAddressStringWithAddress([(CoreCECBus *)selfCopy streamPath]);
    v20 = &v45;
LABEL_69:
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 40, "Another device is already active source: %@, streamPath: %s\n", activeSource, v20);
LABEL_82:
    [v12 setIsActiveSource:0];
    [OUTLINED_FUNCTION_2_6() notifyDelegateDeviceUpdated:?];
    goto LABEL_89;
  }

  if (-[CoreCECBus streamPath](selfCopy, "streamPath") == 0xFFFF || (v21 = -[CoreCECBus streamPath](selfCopy, "streamPath"), v21 != [v12 physicalAddress]))
  {
    streamPath = [(CoreCECBus *)selfCopy streamPath];
    isActiveSource = [attributes isActiveSource];
    if (streamPath != 0xFFFF)
    {
      if (!isActiveSource)
      {
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_0_7();
      if (!(v23 ^ v24 | v22) || v29 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_82;
      }

      activeSource = [(CoreCECBus *)selfCopy activeSource];
      v43 = CECPhysicalAddressStringWithAddress([(CoreCECBus *)selfCopy streamPath]);
      v20 = &v43;
      goto LABEL_69;
    }

    if (!isActiveSource)
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_0_7();
    if (v23 ^ v24 | v22 && (v30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 40, "Tracking initially active source (stream path unknown): %@\n", v12);
    }

    goto LABEL_88;
  }

  [attributes isActiveSource];
  OUTLINED_FUNCTION_0_7();
  if (v26)
  {
    if (v23 ^ v24 | v22 && (v25 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 40, "Tracking initially active source: %@\n", v12);
    }

LABEL_88:
    [OUTLINED_FUNCTION_2_6() setActiveSource:?];
    goto LABEL_89;
  }

  if (v23 ^ v24 | v22 && (v25 != -1 || _LogCategory_Initialize()))
  {
    v44 = CECPhysicalAddressStringWithAddress([(CoreCECBus *)selfCopy streamPath]);
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 40, "Set stream path happened before adding the device, take active source now: %s", &v44);
  }

  [v12 handleDeviceSelected];
LABEL_89:
  if (error)
  {
    *error = v42;
  }

  OUTLINED_FUNCTION_0_7();
  if (v23 ^ v24 | v22 && (v31 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider addDeviceWithAttributes:error:]", 40, "addDeviceWithAttributes device: %@ error: %@\n", v12, v42);
  }

  return v12;
}

- (void)willRemoveDevice:(id)device
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([device isLocalDevice])
    {
      logicalAddress = [device logicalAddress];
      if (logicalAddress != 15)
      {
        v7 = 0;
        if (![(CECInterface *)self->_interface deallocateCECAddress:logicalAddress error:&v7]&& gLogCategory_CoreRCBus <= 60 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider willRemoveDevice:]", 60, "failed to deallocate logical address: device=%@ error=%@\n", device, v7);
        }
      }
    }
  }

  v6.receiver = self;
  v6.super_class = CoreCECBusProvider;
  [(CoreRCBus *)&v6 willRemoveDevice:device];
}

- (id)destinationConfirmedForMessage:(id)message
{
  if ([message isBroadcast])
  {
    return 0;
  }

  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "-[CoreCECBusProvider destinationConfirmedForMessage:]", 10, "%@ confirmed that a device exists at LA=%u\n", self, [message destination]);
  }

  [message destination];
  v5 = OUTLINED_FUNCTION_1_5();

  return [v5 addDeviceWithLogicalAddress:? message:? reason:?];
}

- (id)destinationExpectedForMessage:(id)message
{
  if ([message isBroadcast])
  {
    return 0;
  }

  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCBus, "-[CoreCECBusProvider destinationExpectedForMessage:]", 10, "%@ deems possible that a device exists at LA=%u\n", self, [message destination]);
  }

  [message destination];
  v5 = OUTLINED_FUNCTION_1_5();

  return [v5 addDeviceWithLogicalAddress:? message:? reason:?];
}

- (void)interface:(id)interface receivedFrame:(CECFrame *)frame
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = [CECMessage alloc];
  v9 = *frame;
  v7 = [(CECMessage *)v6 initWithFrame:&v9];
  if (v7)
  {
    v8 = v7;
    if ([(CoreCECBusProvider *)self areMultipleCECBusses])
    {
      if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider interface:receivedFrame:]", 40, "RX: %@   [%@]\n", v8, [(NSUUID *)[(CoreRCBus *)self uniqueID] UUIDString]);
      }
    }

    else if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider interface:receivedFrame:]", 40, "RX: %@\n", v8);
    }

    [(CoreCECBusProvider *)self receivedMessage:v8];
  }
}

- (BOOL)receivedMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  [message initiator];
  v5 = [OUTLINED_FUNCTION_1_5() addDeviceWithLogicalAddress:? message:? reason:?];
  if (v5)
  {
    v6 = v5;
    if ([message isBroadcast])
    {
      v7 = 0;
    }

    else
    {
      [message destination];
      v5 = [OUTLINED_FUNCTION_1_5() addDeviceWithLogicalAddress:? message:? reason:?];
      v7 = v5;
      if (!v5)
      {
        return v5;
      }
    }

    if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider receivedMessage:]", 10, "CECBus %@ did receive message from %@ to %@\n", self, v6, v7);
    }

    [(CoreCECBus *)self didReceiveRXMessage:message];
    if (v7 && ![v7 isLocalDevice])
    {
      [v6 trackMessage:message toDevice:v7];
      [v7 trackMessage:message fromDevice:v6];
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = [v6 filterMessage:message toDevice:v7];
      if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider receivedMessage:]", 10, "filtered message: %@\n", v8);
      }

      if (v8)
      {
        if (v7)
        {
          [v7 handleMessage:v8 fromDevice:v6 broadcast:0];
        }

        else
        {
          initiator = [v8 initiator];
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          devices = [(CoreRCBus *)self devices];
          v11 = [(NSSet *)devices countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(devices);
                }

                v15 = *(*(&v17 + 1) + 8 * i);
                if ([v15 isLocalDevice] && objc_msgSend(v15, "logicalAddress") != initiator)
                {
                  [v15 handleMessage:v8 fromDevice:v6 broadcast:1];
                }
              }

              v12 = [(NSSet *)devices countByEnumeratingWithState:&v17 objects:v21 count:16];
            }

            while (v12);
          }
        }
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)interfacePropertiesChanged:(id)changed
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = -1;
  v13 = 0;
  if (self->_interface == changed && [objc_msgSend(changed "properties")])
  {
    v5 = v14;
    physicalAddress = [(CoreCECBus *)self physicalAddress];
    v7 = v14;
    if (v14 != 0xFFFF && v7 != [objc_msgSend(MEMORY[0x277CBEBD0] "cecUserDefaults")])
    {
      if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        v15[0] = CECPhysicalAddressStringWithAddress(v14);
        LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider interfacePropertiesChanged:]", 40, "Storing physical address: %s", v15);
      }

      cecUserDefaults = [MEMORY[0x277CBEBD0] cecUserDefaults];
      [cecUserDefaults setLastKnownPhysicalAddress:v14];
    }

    -[CoreCECBus setEdidAttributes:](self, "setEdidAttributes:", [objc_msgSend(changed "properties")]);
    [(CoreCECBusProvider *)self setLinkState:v13 physicalAddress:v14];
    activeSource = [(CoreCECBus *)self activeSource];
    if (activeSource)
    {
      if (v5 != physicalAddress)
      {
        v10 = activeSource;
        v11 = v14;
        if (v11 == [(CoreCECDevice *)activeSource physicalAddress])
        {
          v12 = v14;
          if (v12 != [(CoreCECBus *)self streamPath])
          {
            if (gLogCategory_CoreRCBus <= 40 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider interfacePropertiesChanged:]", 40, "Plugged into a different HDMI port and are no longer active source\n");
            }

            [(CoreCECBusProvider *)self _changeActiveSourceFrom:v10 to:0];
          }
        }
      }
    }
  }
}

- (uint64_t)refreshDevicesWithInitiator:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider refreshDevicesWithInitiator:error:]", 10, "%@ refreshDevices: %@ with initiator %@ %@\n", v4, a1, v5, a2);
}

- (uint64_t)pollingOperation:(unsigned __int8)a1 shouldSkipAddress:(char)a2 .cold.1(unsigned __int8 a1, char a2)
{
  v2 = "NO";
  if (a2)
  {
    v2 = "YES";
  }

  return LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider pollingOperation:shouldSkipAddress:]", 10, "should skip address %u? %s\n", a1, v2);
}

- (uint64_t)updateAllowHibernation
{
  if (gLogCategory_CoreRCBus <= 90)
  {
    v5 = result;
    if (gLogCategory_CoreRCBus != -1)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider updateAllowHibernation]", 90, "%@ setAllowHibernation:%d failed; error=%@\n", a3, v5 & 1, *a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_CoreRCBus, "[CoreCECBusProvider updateAllowHibernation]", 90, "%@ setAllowHibernation:%d failed; error=%@\n", a3, v5 & 1, *a2);
    }
  }

  return result;
}

- (void)_sendMessage:(void *)a1 toDevice:withRetryCount:error:.cold.3(void *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6761 userInfo:0];
  *a1 = result;
  return result;
}

- (void)_sendMessage:(void *)a1 toDevice:withRetryCount:error:.cold.5(void *a1)
{
  result = [MEMORY[0x277CCA9B8] cecAcknowledgementErrorWithUnderlyingError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", *MEMORY[0x277CCA590], -6758, 0)}];
  *a1 = result;
  return result;
}

- (void)_sendMessage:(void *)a1 toDevice:withRetryCount:error:.cold.6(void *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6718 userInfo:0];
  *a1 = result;
  return result;
}

@end