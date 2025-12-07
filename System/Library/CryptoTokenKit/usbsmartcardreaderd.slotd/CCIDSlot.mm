@interface CCIDSlot
- (BOOL)PPSForProtocol:(unint64_t)protocol withFIndexDindex:(id)dindex andSPU:(id)u;
- (BOOL)allowAlternativeFiDi;
- (BOOL)engine:(id)engine powerDownWithEject:(BOOL)eject;
- (BOOL)simulateCardReinsertion;
- (CCIDSlot)initWithDevice:(id)device slotName:(id)name slotNumber:(unsigned __int8)number pipeIn:(id)in pipeOut:(id)out;
- (id)changePINSecure:(id)secure error:(id *)error;
- (id)coldResetCard;
- (id)engine:(id)engine escape:(id)escape;
- (id)engine:(id)engine runUserInteraction:(id)interaction error:(id *)error;
- (id)engine:(id)engine transmit:(id)transmit;
- (id)engineResetCard:(id)card;
- (id)escapeCommand:(id)command;
- (id)findSuitableFDIndexes:(id)indexes;
- (id)findSuitableFIndexDIndex:(id)index;
- (id)getCardsNeedsBaseFiDi;
- (id)getClockFrequencies;
- (id)getDataRates;
- (id)getParameters;
- (id)receiveMessageWitMaxPayload:(unint64_t)payload sequenceNumber:(unsigned __int8)number duplicateMessage:(unsigned __int8)message timeout:(id)timeout;
- (id)resetParameters;
- (id)setParameters:(id)parameters;
- (id)transmitAndReceive:(id)receive maxPayload:(unint64_t)payload sequence:(id)sequence outTimeout:(id)timeout inTimeout:(id)inTimeout transmitted:(id)transmitted;
- (id)verifyPINSecure:(id)secure error:(id *)error;
- (id)warmResetCard;
- (unint64_t)engine:(id)engine setProtocol:(unint64_t)protocol;
- (unint64_t)setProtocol:(unint64_t)protocol;
- (unint64_t)setProtocol_v1:(unint64_t)protocol_v1;
- (unint64_t)setProtocol_v2:(unint64_t)protocol_v2;
- (unsigned)PPSVersion;
- (void)abort:(unsigned __int8)abort;
- (void)cardNeedsBaseFiDi:(id)di;
- (void)cardNotify:(BOOL)notify;
- (void)didWakeUpOnEngine:(id)engine;
- (void)sendAnalyticsFailure:(unsigned __int8)failure;
- (void)setDataRateAndClockFrequency:(id)frequency;
- (void)willSleepOnEngine:(id)engine;
@end

@implementation CCIDSlot

- (CCIDSlot)initWithDevice:(id)device slotName:(id)name slotNumber:(unsigned __int8)number pipeIn:(id)in pipeOut:(id)out
{
  numberCopy = number;
  inCopy = in;
  outCopy = out;
  v26.receiver = self;
  v26.super_class = CCIDSlot;
  v15 = [(Slot *)&v26 initWithDevice:device slotName:name slotNumber:numberCopy];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_8;
  }

  getCardsNeedsBaseFiDi = [(CCIDSlot *)v15 getCardsNeedsBaseFiDi];
  cardsNeedsBaseFiDi = v16->_cardsNeedsBaseFiDi;
  v16->_cardsNeedsBaseFiDi = getCardsNeedsBaseFiDi;

  v16->_allowAlternativeFiDi = [(CCIDSlot *)v16 allowAlternativeFiDi];
  v16->_PPSVersion = [(CCIDSlot *)v16 PPSVersion];
  objc_storeStrong(&v16->_pipeIn, in);
  objc_storeStrong(&v16->_pipeOut, out);
  v19 = [CCIDMessageView create:101];
  v20 = [(CCIDSlot *)v16 transmitAndReceive:v19 maxPayload:10 transmitted:0];

  if ([v20 messageType] == 129)
  {
    status = [v20 status];
    if ([status bmCommandStatus])
    {
      bError = [v20 bError];

      if (bError != -2)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    status2 = [v20 status];
    -[CCIDSlot physicalCardNotify:](v16, "physicalCardNotify:", [status2 bmICCStatus] != 2);

LABEL_8:
    v23 = v16;
    goto LABEL_9;
  }

LABEL_5:

  v23 = 0;
LABEL_9:

  return v23;
}

- (void)cardNotify:(BOOL)notify
{
  v5.receiver = self;
  v5.super_class = CCIDSlot;
  [(Slot *)&v5 physicalCardNotify:notify];
  if (![(Slot *)self cardPresent])
  {
    lastATR = self->_lastATR;
    self->_lastATR = 0;
  }
}

- (void)sendAnalyticsFailure:(unsigned __int8)failure
{
  if (failure > 5u)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1000247A0[failure];
  }

  v4 = v3;
  AnalyticsSendEventLazy();
}

- (id)warmResetCard
{
  v3 = sub_100002620(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000146FC();
  }

  v4 = [CCIDMessageView create:98];
  v5 = v4;
  if (self->_lastICCClass == 4)
  {
    lastICCClass = 3;
  }

  else
  {
    lastICCClass = self->_lastICCClass;
  }

  [v4 setBPowerSelect:lastICCClass];
  v7 = [(CCIDSlot *)self transmitAndReceive:v5 maxPayload:33 transmitted:0];
  messageType = [v7 messageType];
  if (messageType == 128 && ([v7 status], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "bmCommandStatus"), v9, !v10))
  {
    v16 = [TKSmartCardATR alloc];
    aPayload = [v7 aPayload];
    v18 = [v16 initWithBytes:aPayload];
    lastATR = self->_lastATR;
    self->_lastATR = v18;

    p_super = sub_100002620(v20);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      sub_100014774(&self->_lastATR);
    }
  }

  else
  {
    v11 = sub_100002620(messageType);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100014738();
    }

    [(CCIDSlot *)self sendAnalyticsFailure:0];
    p_super = &self->_lastATR->super;
    self->_lastATR = 0;
  }

  v13 = self->_lastATR;
  v14 = v13;

  return v13;
}

- (id)coldResetCard
{
  v3 = sub_100002620(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100014830();
  }

  v4 = [CCIDMessageView create:98];
  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  automaticICCActivation = [cCIDDescriptor automaticICCActivation];

  if (automaticICCActivation)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    if ([cCIDDescriptor2 bVoltageSupport])
    {

      v8 = 1;
      v9 = 1;
      v10 = 1;
    }

    else
    {
      device3 = [(Slot *)self device];
      cCIDDescriptor3 = [device3 CCIDDescriptor];
      bVoltageSupport = [cCIDDescriptor3 bVoltageSupport];
      if ((bVoltageSupport & 2) != 0)
      {
        v9 = bVoltageSupport & 2;
      }

      else
      {
        device4 = [(Slot *)self device];
        cCIDDescriptor4 = [device4 CCIDDescriptor];
        v9 = [cCIDDescriptor4 bVoltageSupport] & 4;
      }

      v8 = v9;
      if (v9 == 4)
      {
        v10 = 3;
      }

      else
      {
        v10 = v9;
      }
    }
  }

  [v4 setBPowerSelect:v10];
  v18 = [(CCIDSlot *)self transmitAndReceive:v4 maxPayload:33 transmitted:0];
  messageType = [v18 messageType];
  v20 = messageType;
  v21 = sub_100002620(messageType);
  v22 = v21;
  if (v20 != 128)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100014738();
    }

    selfCopy2 = self;
    v30 = 0;
    goto LABEL_24;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_10001486C(v18);
  }

  device5 = [(Slot *)self device];
  cCIDDescriptor5 = [device5 CCIDDescriptor];
  if ([cCIDDescriptor5 automaticICCActivation])
  {
    status = [v18 status];
    bmICCStatus = [status bmICCStatus];

    if (bmICCStatus)
    {
      v28 = sub_100002620(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100014910();
      }

      selfCopy2 = self;
      v30 = 1;
LABEL_24:
      [(CCIDSlot *)selfCopy2 sendAnalyticsFailure:v30];
      v31 = 0;
      goto LABEL_72;
    }
  }

  else
  {
  }

  status2 = [v18 status];
  bmCommandStatus = [status2 bmCommandStatus];

  if (bmCommandStatus)
  {
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v36 = [TKSmartCardATR alloc];
    aPayload = [v18 aPayload];
    v35 = [v36 initWithBytes:aPayload];

    v38 = [v35 interfaceGroupForProtocol:0x8000];
    v39 = [v38 TA];

    if (v39)
    {
      unsignedIntValue = [v39 unsignedIntValue];
      v34 = unsignedIntValue & 7;
      v41 = sub_100002620(unsignedIntValue);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        sub_10001494C();
      }
    }

    else
    {
      v34 = 0;
    }
  }

  device6 = [(Slot *)self device];
  cCIDDescriptor6 = [device6 CCIDDescriptor];
  automaticICCVoltageSelection = [cCIDDescriptor6 automaticICCVoltageSelection];

  if (automaticICCVoltageSelection)
  {
    status3 = [v18 status];
    bmCommandStatus2 = [status3 bmCommandStatus];

    if (!bmCommandStatus2)
    {
      goto LABEL_70;
    }

    v48 = sub_100002620(v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_100014BE4();
    }

    [(CCIDSlot *)self sendAnalyticsFailure:1];
    v31 = 0;
    goto LABEL_71;
  }

  if (v34)
  {
    v49 = v9 == 0;
    LOBYTE(v9) = 0;
    if (v49 || (v34 & v8) != 0)
    {
      goto LABEL_70;
    }

    device7 = [(Slot *)self device];
    cCIDDescriptor7 = [device7 CCIDDescriptor];
    v52 = [cCIDDescriptor7 bVoltageSupport] & v34;

    v54 = v52 & 4;
    if ((v52 & 2) != 0)
    {
      v54 = 2;
    }

    if (v52)
    {
      v9 = 1;
    }

    else
    {
      v9 = v54;
    }

    v55 = sub_100002620(v53);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      sub_1000149BC();
    }
  }

  else
  {
    device8 = [(Slot *)self device];
    cCIDDescriptor8 = [device8 CCIDDescriptor];
    v9 &= [cCIDDescriptor8 bVoltageSupport];

    v55 = sub_100002620(v58);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      sub_100014A2C();
    }
  }

  if (!v9)
  {
    goto LABEL_70;
  }

  v59 = 4;
  while (1)
  {
    if ((v59 & v9) == 0)
    {
      goto LABEL_64;
    }

    v60 = [CCIDMessageView create:99];
    v61 = [(CCIDSlot *)self transmitAndReceive:v60 maxPayload:10 transmitted:0];

    messageType2 = [v61 messageType];
    if (messageType2 != 129)
    {
      break;
    }

    status4 = [v61 status];
    bmCommandStatus3 = [status4 bmCommandStatus];

    if (bmCommandStatus3)
    {
      break;
    }

    [NSThread sleepForTimeInterval:0.01];
    v65 = [CCIDMessageView create:98];
    v66 = v65;
    if (v59 == 4)
    {
      v67 = 3;
    }

    else
    {
      v67 = v9;
    }

    [v65 setBPowerSelect:v67];
    v18 = [(CCIDSlot *)self transmitAndReceive:v66 maxPayload:33 transmitted:0];

    messageType3 = [v18 messageType];
    if (messageType3 == 128)
    {
      status5 = [v18 status];
      bmCommandStatus4 = [status5 bmCommandStatus];

      if (!bmCommandStatus4)
      {
        v74 = [TKSmartCardATR alloc];
        aPayload2 = [v18 aPayload];
        v35 = [v74 initWithBytes:aPayload2];

        v77 = sub_100002620(v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          sub_100014B40(v35);
        }

        goto LABEL_69;
      }
    }

    v71 = sub_100002620(messageType3);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_100014AE0(&v78, v66);
    }

LABEL_64:
    v72 = v59 >= 2;
    v59 >>= 1;
    if (!v72)
    {
      v35 = 0;
      goto LABEL_70;
    }
  }

  v66 = sub_100002620(messageType2);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    sub_100014AA4();
  }

  v35 = 0;
  v18 = v61;
LABEL_69:

LABEL_70:
  objc_storeStrong(&self->_lastATR, v35);
  self->_lastICCClass = v9;
  v31 = self->_lastATR;
LABEL_71:

LABEL_72:

  return v31;
}

- (id)engineResetCard:(id)card
{
  cardCopy = card;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100002ED4;
  v13 = sub_100002EE4;
  v14 = 0;
  synchronize = [(Slot *)self synchronize];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002EEC;
  v8[3] = &unk_100024560;
  v8[4] = self;
  v8[5] = &v9;
  [synchronize sync:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)getDataRates
{
  v3 = sub_100002620(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100014C98(self);
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  bNumDataRatesSupported = [cCIDDescriptor bNumDataRatesSupported];

  if (bNumDataRatesSupported)
  {
    v32 = 0;
    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    v9 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", 4 * [cCIDDescriptor2 bNumDataRatesSupported]);

    device3 = [(Slot *)self device];
    interface = [device3 interface];
    v12 = *([interface interfaceDescriptor] + 8);
    v13 = [v9 length];

    device4 = [(Slot *)self device];
    interface2 = [device4 interface];
    v31 = 0;
    LODWORD(v13) = [interface2 sendDeviceRequest:(v12 << 32) | (v13 << 48) | 0x3A1 data:v9 bytesTransferred:&v32 error:&v31];
    v16 = v31;

    if (v13)
    {
      device5 = [(Slot *)self device];
      cCIDDescriptor3 = [device5 CCIDDescriptor];
      v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cCIDDescriptor3 bNumDataRatesSupported]);

      device6 = [(Slot *)self device];
      cCIDDescriptor4 = [device6 CCIDDescriptor];
      bNumDataRatesSupported2 = [cCIDDescriptor4 bNumDataRatesSupported];

      if (bNumDataRatesSupported2)
      {
        v24 = 0;
        do
        {
          v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *([v9 bytes] + v24));
          [v20 addObject:v25];

          ++v24;
          device7 = [(Slot *)self device];
          cCIDDescriptor5 = [device7 CCIDDescriptor];
          bNumDataRatesSupported3 = [cCIDDescriptor5 bNumDataRatesSupported];
        }

        while (v24 < bNumDataRatesSupported3);
      }

      v29 = [v20 sortedArrayUsingComparator:&stru_1000245A0];
    }

    else
    {
      v20 = sub_100002620(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100014D40();
      }

      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)getClockFrequencies
{
  v3 = sub_100002620(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100014DB0(self);
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  bNumClockSupported = [cCIDDescriptor bNumClockSupported];

  if (bNumClockSupported)
  {
    v32 = 0;
    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    v9 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", 4 * [cCIDDescriptor2 bNumClockSupported]);

    device3 = [(Slot *)self device];
    interface = [device3 interface];
    v12 = *([interface interfaceDescriptor] + 8);
    v13 = [v9 length];

    device4 = [(Slot *)self device];
    interface2 = [device4 interface];
    v31 = 0;
    LODWORD(v13) = [interface2 sendDeviceRequest:(v12 << 32) | (v13 << 48) | 0x2A1 data:v9 bytesTransferred:&v32 error:&v31];
    v16 = v31;

    if (v13)
    {
      device5 = [(Slot *)self device];
      cCIDDescriptor3 = [device5 CCIDDescriptor];
      v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cCIDDescriptor3 bNumDataRatesSupported]);

      device6 = [(Slot *)self device];
      cCIDDescriptor4 = [device6 CCIDDescriptor];
      bNumClockSupported2 = [cCIDDescriptor4 bNumClockSupported];

      if (bNumClockSupported2)
      {
        v24 = 0;
        do
        {
          v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *([v9 bytes] + v24));
          [v20 addObject:v25];

          ++v24;
          device7 = [(Slot *)self device];
          cCIDDescriptor5 = [device7 CCIDDescriptor];
          bNumClockSupported3 = [cCIDDescriptor5 bNumClockSupported];
        }

        while (v24 < bNumClockSupported3);
      }

      v29 = [v20 sortedArrayUsingComparator:&stru_1000245C0];
    }

    else
    {
      v20 = sub_100002620(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100014D40();
      }

      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)abort:(unsigned __int8)abort
{
  abortCopy = abort;
  v5 = sub_100002620(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100014E58(abortCopy, self);
  }

  v16 = 0;
  slotNumber = [(Slot *)self slotNumber];
  device = [(Slot *)self device];
  interface = [device interface];
  v9 = *([interface interfaceDescriptor] + 8);

  device2 = [(Slot *)self device];
  interface2 = [device2 interface];
  v15 = 0;
  LOBYTE(interface) = [interface2 sendDeviceRequest:(abortCopy << 24) | (slotNumber << 16) | (v9 << 32) | 0x121 data:0 bytesTransferred:&v16 error:&v15];
  v12 = v15;

  if ((interface & 1) == 0)
  {
    v14 = sub_100002620(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100014D40();
    }
  }
}

- (BOOL)engine:(id)engine powerDownWithEject:(BOOL)eject
{
  engineCopy = engine;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  synchronize = [(Slot *)self synchronize];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003828;
  v10[3] = &unk_1000245E8;
  ejectCopy = eject;
  v10[4] = self;
  v10[5] = &v12;
  [synchronize sync:v10];

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)getParameters
{
  v3 = [CCIDMessageView create:108];
  v4 = [(CCIDSlot *)self transmitAndReceive:v3 maxPayload:+[ProtocolT1DataView transmitted:"length"], 0];

  messageType = [v4 messageType];
  if (messageType == 130 && ([v4 status], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "bmCommandStatus"), v6, !v7))
  {
    aPayload = [v4 aPayload];
    v12 = [aPayload length];
    v13 = off_100024348;
    v14 = +[ProtocolT0DataView length];

    if (v12 == v14 || ([v4 aPayload], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v13 = off_100024350, v17 = +[ProtocolT1DataView length](ProtocolT1DataView, "length"), v15, v16 == v17))
    {
      v19 = *v13;
      aPayload2 = [v4 aPayload];
      v9 = [(__objc2_class *)v19 createWithData:aPayload2];
    }

    else
    {
      v9 = 0;
    }

    v8 = sub_100002620(v18);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100014FF4();
    }
  }

  else
  {
    v8 = sub_100002620(messageType);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100014F68(self);
    }

    v9 = 0;
  }

  return v9;
}

- (id)setParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = sub_100002620(parametersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100015064(parametersCopy);
  }

  buffer = [parametersCopy buffer];
  v7 = [CCIDMessageView create:97 withPayload:buffer];

  v8 = objc_opt_class();
  [v7 setBProtocolNum:{objc_msgSend(v8, "isEqual:", objc_opt_class())}];
  v9 = [(CCIDSlot *)self transmitAndReceive:v7 maxPayload:0 transmitted:0];
  status = [v9 status];
  bmCommandStatus = [status bmCommandStatus];

  if (bmCommandStatus)
  {
    v13 = sub_100002620(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001511C();
    }

    v14 = 0;
  }

  else
  {
    messageType = [v9 messageType];
    if (messageType == 130)
    {
      aPayload = [v9 aPayload];
      v17 = [aPayload length];
      v18 = off_100024348;
      v19 = +[ProtocolT0DataView length];

      if (v17 == v19 || ([v9 aPayload], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v18 = off_100024350, v22 = +[ProtocolT1DataView length](ProtocolT1DataView, "length"), v20, v21 == v22))
      {
        v24 = *v18;
        aPayload2 = [v9 aPayload];
        v14 = [(__objc2_class *)v24 createWithData:aPayload2];
      }

      else
      {
        v14 = 0;
      }

      v27 = sub_100002620(v23);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_100015194();
      }
    }

    else
    {
      v26 = sub_100002620(messageType);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_100015158();
      }

      v14 = parametersCopy;
    }
  }

  return v14;
}

- (id)resetParameters
{
  v3 = sub_100002620(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100015204();
  }

  v4 = [CCIDMessageView create:109];
  v5 = [(CCIDSlot *)self transmitAndReceive:v4 maxPayload:0 transmitted:0];
  messageType = [v5 messageType];
  if (messageType == 130 && ([v5 status], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "bmCommandStatus"), v7, !v8))
  {
    aPayload = [v5 aPayload];
    v13 = [aPayload length];
    v14 = off_100024348;
    v15 = +[ProtocolT0DataView length];

    if (v13 == v15 || ([v5 aPayload], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v14 = off_100024350, v18 = +[ProtocolT1DataView length](ProtocolT1DataView, "length"), v16, v17 == v18))
    {
      v20 = *v14;
      aPayload2 = [v5 aPayload];
      v10 = [(__objc2_class *)v20 createWithData:aPayload2];
    }

    else
    {
      v10 = 0;
    }

    v9 = sub_100002620(v19);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10001527C();
    }
  }

  else
  {
    v9 = sub_100002620(messageType);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100015240();
    }

    v10 = 0;
  }

  return v10;
}

- (id)escapeCommand:(id)command
{
  commandCopy = command;
  v5 = sub_100002620(commandCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000152EC();
  }

  v6 = [CCIDMessageView create:107 withPayload:commandCopy];
  v7 = [(CCIDSlot *)self transmitAndReceive:v6 maxPayload:0 transmitted:0];
  messageType = [v7 messageType];
  if (messageType == 131 && ([v7 status], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "bmCommandStatus"), v9, !v10))
  {
    aPayload = [v7 aPayload];
  }

  else
  {
    v11 = sub_100002620(messageType);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001535C();
    }

    aPayload = 0;
  }

  return aPayload;
}

- (BOOL)PPSForProtocol:(unint64_t)protocol withFIndexDindex:(id)dindex andSPU:(id)u
{
  dindexCopy = dindex;
  uCopy = u;
  if (protocol == 1 && (v10 = [dindexCopy fIndexDIndex], v10 == 17))
  {
    v11 = sub_100002620(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100015408();
    }

    v12 = 1;
  }

  else
  {
    v13 = +[NSMutableData data];
    v11 = v13;
    v27 = -1;
    if (uCopy)
    {
      v14 = 48;
    }

    else
    {
      v14 = 16;
    }

    if (protocol == 2)
    {
      ++v14;
    }

    v26 = v14;
    [v13 appendBytes:&v27 length:1];
    [v11 appendBytes:&v26 length:1];
    fIndexDIndex = [dindexCopy fIndexDIndex];
    [v11 appendBytes:&fIndexDIndex length:1];
    if (uCopy)
    {
      unsignedCharValue = [uCopy unsignedCharValue];
      [v11 appendBytes:&unsignedCharValue length:1];
    }

    v23 = [RedundancyCheck lrc:v11];
    [v11 appendBytes:&v23 length:1];
    v15 = [NSMutableString stringWithFormat:@"PPSS: 0x%.2x", *[v11 bytes]];
    [v15 appendFormat:@" PPS0: 0x%.2x", *(-[NSObject bytes](v11, "bytes") + 1)];
    if ((*([v11 bytes]+ 1) & 0x10) != 0)
    {
      [v15 appendFormat:@" PPS1: 0x%.2x", *(-[NSObject bytes](v11, "bytes") + 2)];
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    if ((*([v11 bytes]+ 1) & 0x20) != 0)
    {
      [v15 appendFormat:@" PPS2: 0x%.2x", *(-[NSObject bytes](v11, "bytes") + v16++)];
    }

    v17 = sub_100002620([v15 appendFormat:@" PCK: 0x%.2x", *(-[NSObject bytes](v11, "bytes") + v16)]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100015398();
    }

    v18 = [CCIDMessageView create:111 withPayload:v11];
    [v18 setWLevelParameter:0];
    [v18 setBBWI:0];
    v19 = [(CCIDSlot *)self transmitAndReceive:v18 maxPayload:6 transmitted:0];
    status = [v19 status];
    v12 = 0;
    if (![status bmCommandStatus])
    {
      status2 = [v19 status];
      v12 = [status2 bmICCStatus] == 0;
    }
  }

  return v12;
}

- (unint64_t)setProtocol_v1:(unint64_t)protocol_v1
{
  v5 = sub_100002620(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100015444();
  }

  getParameters = [(CCIDSlot *)self getParameters];
  v6 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:1];
  v7 = [v6 TA];

  v8 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:0x8000];
  v9 = [v8 TA];

  if (v9 && (-[Slot device](self, "device"), v10 = objc_claimAutoreleasedReturnValue(), [v10 CCIDDescriptor], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "canSetClockStop"), v11, v10, v12))
  {
    v102 = [v9 unsignedCharValue] >> 6;
  }

  else
  {
    v102 = 0;
  }

  v13 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:1];
  v14 = [v13 TC];

  if (v14)
  {
    unsignedCharValue = [v14 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  v15 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:2];
  v16 = [v15 TC];

  if (v16)
  {
    unsignedCharValue2 = [v16 unsignedCharValue];
  }

  else
  {
    unsignedCharValue2 = 10;
  }

  v17 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v18 = [v17 TA];

  v107 = v14;
  if (v18)
  {
    unsignedCharValue3 = [v18 unsignedCharValue];
  }

  else
  {
    unsignedCharValue3 = 32;
  }

  v20 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v21 = [v20 TB];

  v106 = v16;
  if (v21)
  {
    unsignedCharValue4 = [v21 unsignedCharValue];
  }

  else
  {
    unsignedCharValue4 = 77;
  }

  v22 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v23 = [v22 TC];

  v24 = v23;
  v25 = 16;
  v109 = v21;
  v110 = v18;
  v105 = v24;
  if (v24)
  {
    v25 = [v24 unsignedCharValue] & 1 | 0x10;
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  dwMaxIFSD = [cCIDDescriptor dwMaxIFSD];

  if (unsignedCharValue3 >= dwMaxIFSD)
  {
    v29 = dwMaxIFSD;
  }

  else
  {
    v29 = unsignedCharValue3;
  }

  v100 = v29;
  v30 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:2];
  v31 = [v30 TA];

  v104 = v31;
  if (v31)
  {
    v32 = v7;
    v103 = v9;
    v33 = (1 << [v31 unsignedCharValue]) & 0xF;
    v34 = getParameters;
    goto LABEL_48;
  }

  protocol_v1Copy = protocol_v1;
  device2 = [(Slot *)self device];
  cCIDDescriptor2 = [device2 CCIDDescriptor];
  if ([cCIDDescriptor2 levelOfExchange] != 2)
  {
    device3 = [(Slot *)self device];
    cCIDDescriptor3 = [device3 CCIDDescriptor];
    [cCIDDescriptor3 levelOfExchange];
  }

  v39 = [(CCIDSlot *)self findSuitableFIndexDIndex:v7];
  device4 = [(Slot *)self device];
  cCIDDescriptor4 = [device4 CCIDDescriptor];
  v97 = v7;
  if (([cCIDDescriptor4 automaticPPS]& 1) != 0)
  {
    v34 = getParameters;
LABEL_30:

    goto LABEL_32;
  }

  device5 = [(Slot *)self device];
  [device5 CCIDDescriptor];
  v44 = v43 = v9;
  automaticParametersNegotation = [v44 automaticParametersNegotation];

  v9 = v43;
  v34 = getParameters;
  if ((automaticParametersNegotation & 1) == 0)
  {
    v50 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:0x8000];
    cCIDDescriptor4 = [v50 TB];

    if (cCIDDescriptor4)
    {
      v51 = protocol_v1Copy;
      v49 = v97;
      if (([cCIDDescriptor4 unsignedCharValue]& 0x80) != 0 && ([cCIDDescriptor4 unsignedCharValue]& 0x7F) != 0)
      {
        device4 = [NSNumber numberWithInt:[cCIDDescriptor4 unsignedCharValue]& 0x7F];
      }

      else
      {
        device4 = 0;
      }
    }

    else
    {
      device4 = 0;
      v51 = protocol_v1Copy;
      v49 = v97;
    }

    v92 = [(CCIDSlot *)self PPSForProtocol:v51 withFIndexDindex:v39 andSPU:device4];
    if ((v92 & 1) == 0)
    {
      v93 = sub_100002620(v92);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        sub_1000154B4(v39);
      }

      bytes = [(TKSmartCardATR *)self->_lastATR bytes];
      hexString = [bytes hexString];
      [(CCIDSlot *)self cardNeedsBaseFiDi:hexString];

      goto LABEL_80;
    }

    goto LABEL_30;
  }

LABEL_32:
  device6 = [(Slot *)self device];
  cCIDDescriptor5 = [device6 CCIDDescriptor];
  automaticParametersNegotation2 = [cCIDDescriptor5 automaticParametersNegotation];

  if ((automaticParametersNegotation2 & 1) == 0)
  {
    v49 = v97;
    if (protocol_v1Copy == 1)
    {
      device4 = objc_opt_new();
      [device4 setBmFindexDindex:{-[NSObject fIndexDIndex](v39, "fIndexDIndex")}];
      [device4 setBClockStop:v102];
      [device4 setBmTCCKS:0];
      [device4 setBGuardTime:unsignedCharValue];
      [device4 setBWaitingInteger:unsignedCharValue2];
    }

    else if (protocol_v1Copy == 2)
    {
      device4 = objc_opt_new();
      [device4 setBmFindexDindex:{-[NSObject fIndexDIndex](v39, "fIndexDIndex")}];
      [device4 setBClockStop:v102];
      [device4 setBmTCCKS:v25];
      [device4 setBGuardTime:unsignedCharValue];
      [device4 setBmWaitingIntegers:unsignedCharValue4];
      [device4 setBIFSC:v100];
      [device4 setBNadValue:0];
    }

    else
    {
      device4 = 0;
    }

    v52 = [(CCIDSlot *)self setParameters:device4];

    if (v52)
    {
      v32 = v97;
      v103 = v9;
      v54 = objc_opt_class();
      if ([v54 isEqual:objc_opt_class()])
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      v34 = v52;
      goto LABEL_47;
    }

    cCIDDescriptor4 = sub_100002620(v53);
    if (os_log_type_enabled(cCIDDescriptor4, OS_LOG_TYPE_ERROR))
    {
      sub_100015534();
    }

    v34 = 0;
LABEL_80:
    v68 = v106;

    v66 = 0;
    v60 = v109;
    v65 = v110;
    goto LABEL_63;
  }

  v103 = v9;
  v33 = protocol_v1Copy;
  v32 = v97;
LABEL_47:

LABEL_48:
  device7 = [(Slot *)self device];
  cCIDDescriptor6 = [device7 CCIDDescriptor];
  if (([cCIDDescriptor6 automaticICCClockFrequency] & 1) == 0)
  {

    v60 = v109;
    goto LABEL_52;
  }

  device8 = [(Slot *)self device];
  cCIDDescriptor7 = [device8 CCIDDescriptor];
  automaticBaudRateChange = [cCIDDescriptor7 automaticBaudRateChange];

  v60 = v109;
  if ((automaticBaudRateChange & 1) == 0)
  {
LABEL_52:
    v61 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [v34 bmFindexDindex]);
    [(CCIDSlot *)self setDataRateAndClockFrequency:v61];
  }

  device9 = [(Slot *)self device];
  cCIDDescriptor8 = [device9 CCIDDescriptor];
  levelOfExchange = [cCIDDescriptor8 levelOfExchange];

  if (levelOfExchange != 1)
  {
    v76 = [[APDUMapping alloc] initWithTransmitter:self];
    mapping = self->_mapping;
    self->_mapping = v76;
    v9 = v103;
    v68 = v106;
    v65 = v110;
    v66 = v33;
    goto LABEL_60;
  }

  v65 = v110;
  if (v33 != 1)
  {
    bmTCCKS = [v34 bmTCCKS];
    v78 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [v34 bmFindexDindex]);
    if (!v78)
    {
      v39 = sub_100002620(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1000155A4();
      }

      v66 = 0;
      v9 = v103;
      v68 = v106;
      v49 = v32;
      goto LABEL_63;
    }

    mapping = v78;
    v79 = ldexp(1.0, unsignedCharValue4 >> 4) * 960.0 * 372.0;
    v80 = (v79 / (1000 * [(APDUMapping *)mapping fMax]) + 11.0);
    v81 = [(APDUMapping *)mapping Fi];
    *&v79 = (v81 / [(APDUMapping *)mapping Di]);
    *&v79 = (1.0 / (1000 * [(APDUMapping *)mapping fMax])) * *&v79;
    v82 = [T1TPDUMapping alloc];
    device10 = [(Slot *)self device];
    cCIDDescriptor9 = [device10 CCIDDescriptor];
    automaticIFSD = [cCIDDescriptor9 automaticIFSD];
    *&v86 = *&v79 * v80;
    v87 = v82;
    v65 = v110;
    v88 = [(T1TPDUMapping *)v87 initWithTransmitter:self autoIfs:automaticIFSD ifs:v100 redundancyCode:bmTCCKS & 1 bwt:v86];
    v89 = self->_mapping;
    self->_mapping = v88;

    v66 = v33;
    v60 = v109;
    v9 = v103;
    v68 = v106;
LABEL_60:
    v49 = v32;
LABEL_61:

    v39 = sub_100002620(v90);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      sub_100015614();
    }

    goto LABEL_63;
  }

  v66 = 1;
  v67 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [v34 bmFindexDindex]);
  v68 = v106;
  v49 = v32;
  if (v67)
  {
    mapping = v67;
    v70 = [(APDUMapping *)v67 Fi];
    v71 = (v70 / (1000 * [(APDUMapping *)mapping fMax])) * unsignedCharValue2;
    v72 = [APDUMapping alloc];
    *&v73 = v71;
    v74 = [(APDUMapping *)v72 initWithTransmitter:self wt:v73];
    v75 = self->_mapping;
    self->_mapping = v74;

    v9 = v103;
    goto LABEL_61;
  }

  v39 = sub_100002620(0);
  v9 = v103;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    sub_100015684();
  }

  v66 = 0;
LABEL_63:

  return v66;
}

- (unint64_t)setProtocol_v2:(unint64_t)protocol_v2
{
  v5 = sub_100002620(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100015444();
  }

  getParameters = [(CCIDSlot *)self getParameters];
  v7 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:1];
  v8 = [v7 TA];

  v9 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:0x8000];
  v10 = [v9 TA];

  if (v10 && (-[Slot device](self, "device"), v11 = objc_claimAutoreleasedReturnValue(), [v11 CCIDDescriptor], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "canSetClockStop"), v12, v11, v13))
  {
    v111 = [v10 unsignedCharValue] >> 6;
  }

  else
  {
    v111 = 0;
  }

  v14 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:1];
  v15 = [v14 TC];

  if (v15)
  {
    unsignedCharValue = [v15 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  v16 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:2];
  v17 = [v16 TC];

  if (v17)
  {
    unsignedCharValue2 = [v17 unsignedCharValue];
  }

  else
  {
    unsignedCharValue2 = 10;
  }

  v18 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v19 = [v18 TA];

  v101 = v19;
  v102 = v17;
  if (v19)
  {
    unsignedCharValue3 = [v19 unsignedCharValue];
  }

  else
  {
    unsignedCharValue3 = 32;
  }

  v21 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v22 = [v21 TB];

  v100 = v22;
  if (v22)
  {
    unsignedCharValue4 = [v22 unsignedCharValue];
  }

  else
  {
    unsignedCharValue4 = 77;
  }

  v23 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:2];
  v24 = [v23 TC];

  v104 = v10;
  v99 = v24;
  if (v24)
  {
    v105 = [v24 unsignedCharValue] & 1 | 0x10;
  }

  else
  {
    v105 = 16;
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  dwMaxIFSD = [cCIDDescriptor dwMaxIFSD];

  if (unsignedCharValue3 >= dwMaxIFSD)
  {
    v28 = dwMaxIFSD;
  }

  else
  {
    v28 = unsignedCharValue3;
  }

  v107 = v28;
  v29 = [(TKSmartCardATR *)self->_lastATR interfaceGroupAtIndex:2];
  v30 = [v29 TA];

  v103 = v15;
  v98 = v30;
  if (v30)
  {
    unsignedCharValue5 = [v30 unsignedCharValue];
    protocol_v2Copy = (1 << (unsignedCharValue5 & 0xF));
    v33 = sub_100002620(unsignedCharValue5);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_1000156F4();
    }

    goto LABEL_73;
  }

  [(CCIDSlot *)self findSuitableFDIndexes:v8];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v118 = 0u;
  v113 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
  if (!v113)
  {
    protocol_v2 = 0;
LABEL_72:
    protocol_v2Copy = protocol_v2;
    v33 = obj;

LABEL_73:
    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    if ([cCIDDescriptor2 automaticICCClockFrequency])
    {
      device3 = [(Slot *)self device];
      cCIDDescriptor3 = [device3 CCIDDescriptor];
      automaticBaudRateChange = [cCIDDescriptor3 automaticBaudRateChange];

      if (automaticBaudRateChange)
      {
LABEL_78:
        device4 = [(Slot *)self device];
        cCIDDescriptor4 = [device4 CCIDDescriptor];
        levelOfExchange = [cCIDDescriptor4 levelOfExchange];

        if (levelOfExchange == 1)
        {
          if (protocol_v2Copy == 1)
          {
            v71 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [getParameters bmFindexDindex]);
            if (v71)
            {
              v72 = v71;
              v73 = [(APDUMapping *)v71 Fi];
              v74 = (v73 / (1000 * [(APDUMapping *)v72 fMax])) * unsignedCharValue2;
              v75 = [APDUMapping alloc];
              *&v76 = v74;
              v77 = [(APDUMapping *)v75 initWithTransmitter:self wt:v76];
              mapping = self->_mapping;
              self->_mapping = v77;

              goto LABEL_85;
            }

            v60 = sub_100002620(0);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              sub_100015684();
            }

LABEL_93:
            protocol_v2Copy = 0;
LABEL_87:
            v59 = v103;
            goto LABEL_88;
          }

          bmTCCKS = [getParameters bmTCCKS];
          v81 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [getParameters bmFindexDindex]);
          if (!v81)
          {
            v60 = sub_100002620(0);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              sub_1000155A4();
            }

            goto LABEL_93;
          }

          v72 = v81;
          v82 = ldexp(1.0, unsignedCharValue4 >> 4) * 960.0 * 372.0;
          v114 = bmTCCKS;
          v83 = v8;
          v84 = getParameters;
          v85 = (v82 / (1000 * [(APDUMapping *)v72 fMax]) + 11.0);
          v86 = [(APDUMapping *)v72 Fi];
          *&v82 = (v86 / [(APDUMapping *)v72 Di]);
          *&v82 = (1.0 / (1000 * [(APDUMapping *)v72 fMax])) * *&v82;
          v87 = [T1TPDUMapping alloc];
          device5 = [(Slot *)self device];
          cCIDDescriptor5 = [device5 CCIDDescriptor];
          automaticIFSD = [cCIDDescriptor5 automaticIFSD];
          v91 = v85;
          getParameters = v84;
          v8 = v83;
          *&v92 = *&v82 * v91;
          v93 = [(T1TPDUMapping *)v87 initWithTransmitter:self autoIfs:automaticIFSD ifs:v107 redundancyCode:v114 & 1 bwt:v92];
          v94 = self->_mapping;
          self->_mapping = v93;
        }

        else
        {
          v79 = [[APDUMapping alloc] initWithTransmitter:self];
          v72 = self->_mapping;
          self->_mapping = v79;
        }

LABEL_85:

        v60 = sub_100002620(v95);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          sub_100015614();
        }

        goto LABEL_87;
      }
    }

    else
    {
    }

    v67 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [getParameters bmFindexDindex]);
    [(CCIDSlot *)self setDataRateAndClockFrequency:v67];

    goto LABEL_78;
  }

  v97 = v8;
  v112 = *v116;
LABEL_30:
  v34 = 0;
  while (1)
  {
    if (*v116 != v112)
    {
      objc_enumerationMutation(obj);
    }

    v35 = *(*(&v115 + 1) + 8 * v34);
    device6 = [(Slot *)self device];
    cCIDDescriptor6 = [device6 CCIDDescriptor];
    if ([cCIDDescriptor6 automaticPPS])
    {
      break;
    }

    device7 = [(Slot *)self device];
    [device7 CCIDDescriptor];
    protocol_v2Copy2 = protocol_v2;
    v41 = v40 = getParameters;
    automaticParametersNegotation = [v41 automaticParametersNegotation];

    getParameters = v40;
    protocol_v2 = protocol_v2Copy2;

    if (automaticParametersNegotation)
    {
      goto LABEL_36;
    }

    v51 = [(TKSmartCardATR *)self->_lastATR interfaceGroupForProtocol:0x8000];
    cCIDDescriptor6 = [v51 TB];

    if (cCIDDescriptor6 && ([cCIDDescriptor6 unsignedCharValue] & 0x80) != 0 && (objc_msgSend(cCIDDescriptor6, "unsignedCharValue") & 0x7F) != 0)
    {
      device6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [cCIDDescriptor6 unsignedCharValue] & 0x7F);
    }

    else
    {
      device6 = 0;
    }

    v52 = [(CCIDSlot *)self PPSForProtocol:protocol_v2Copy2 withFIndexDindex:v35 andSPU:device6];
    v53 = v52;
    v54 = sub_100002620(v52);
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
    if (v53)
    {
      if (v55)
      {
        *buf = 138543362;
        v120 = v35;
        _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "card accepted FIndexDIndex: %{public}@", buf, 0xCu);
      }

      break;
    }

    if (v55)
    {
      *buf = 138543362;
      v120 = v35;
      _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "card rejected FIndexDIndex: %{public}@", buf, 0xCu);
    }

    warmResetCard = [(CCIDSlot *)self warmResetCard];
LABEL_46:

    if (v113 == ++v34)
    {
      v57 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
      v113 = v57;
      if (!v57)
      {
        protocol_v2 = 0;
LABEL_71:
        v8 = v97;
        goto LABEL_72;
      }

      goto LABEL_30;
    }
  }

LABEL_36:
  device8 = [(Slot *)self device];
  cCIDDescriptor7 = [device8 CCIDDescriptor];
  automaticParametersNegotation2 = [cCIDDescriptor7 automaticParametersNegotation];

  if ((automaticParametersNegotation2 & 1) == 0)
  {
    if (protocol_v2 == 1)
    {
      device6 = objc_opt_new();
      [device6 setBmFindexDindex:{objc_msgSend(v35, "fIndexDIndex")}];
      [device6 setBClockStop:v111];
      [device6 setBmTCCKS:0];
      [device6 setBGuardTime:unsignedCharValue];
      [device6 setBWaitingInteger:unsignedCharValue2];
    }

    else if (protocol_v2 == 2)
    {
      device6 = objc_opt_new();
      [device6 setBmFindexDindex:{objc_msgSend(v35, "fIndexDIndex")}];
      [device6 setBClockStop:v111];
      [device6 setBmTCCKS:v105];
      [device6 setBGuardTime:unsignedCharValue];
      [device6 setBmWaitingIntegers:unsignedCharValue4];
      [device6 setBIFSC:v107];
      [device6 setBNadValue:0];
    }

    else
    {
      device6 = 0;
    }

    v47 = [(CCIDSlot *)self setParameters:device6];

    if (v47)
    {
      v61 = objc_opt_class();
      if ([v61 isEqual:objc_opt_class()])
      {
        protocol_v2 = 2;
      }

      else
      {
        protocol_v2 = 1;
      }

      getParameters = v47;
      goto LABEL_71;
    }

    v49 = sub_100002620(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v120 = device6;
      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "failed to set parameters: %{public}@", buf, 0xCu);
    }

    warmResetCard2 = [(CCIDSlot *)self warmResetCard];
    getParameters = 0;
    goto LABEL_46;
  }

  if (protocol_v2)
  {
    goto LABEL_71;
  }

  v58 = sub_100002620(v46);
  v8 = v97;
  v59 = v103;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    sub_100015730();
  }

  v60 = obj;
  protocol_v2Copy = 0;
LABEL_88:

  return protocol_v2Copy;
}

- (unint64_t)setProtocol:(unint64_t)protocol
{
  if (self->_PPSVersion == 1)
  {
    return [(CCIDSlot *)self setProtocol_v1:protocol];
  }

  else
  {
    return [(CCIDSlot *)self setProtocol_v2:protocol];
  }
}

- (void)setDataRateAndClockFrequency:(id)frequency
{
  frequencyCopy = frequency;
  getClockFrequencies = [(CCIDSlot *)self getClockFrequencies];
  selfCopy = self;
  [(CCIDSlot *)self getDataRates];
  v41 = v40 = getClockFrequencies;
  v53 = 0;
  if (getClockFrequencies)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v6 = getClockFrequencies;
    v7 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v48;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v48 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          unsignedIntValue = [v11 unsignedIntValue];
          if (unsignedIntValue <= [frequencyCopy fMax])
          {
            unsignedIntValue2 = [v11 unsignedIntValue];
            device = [(Slot *)selfCopy device];
            cCIDDescriptor = [device CCIDDescriptor];
            dwMaximumClock = [cCIDDescriptor dwMaximumClock];

            if (unsignedIntValue2 <= dwMaximumClock)
            {
              unsignedIntValue3 = [v11 unsignedIntValue];
              v18 = unsignedIntValue3;
              LODWORD(v53) = unsignedIntValue3;
              v19 = sub_100002620(unsignedIntValue3);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                sub_10001576C(v18);
              }

              goto LABEL_15;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    getClockFrequencies = v40;
  }

  if (v41)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v20 = v41;
    v21 = [v20 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      while (2)
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v43 + 1) + 8 * j);
          unsignedIntValue4 = [v25 unsignedIntValue];
          if (unsignedIntValue4 <= [frequencyCopy bpsMax])
          {
            unsignedIntValue5 = [v25 unsignedIntValue];
            device2 = [(Slot *)selfCopy device];
            cCIDDescriptor2 = [device2 CCIDDescriptor];
            dwMaxDataRate = [cCIDDescriptor2 dwMaxDataRate];

            if (unsignedIntValue5 <= dwMaxDataRate)
            {
              unsignedIntValue6 = [v25 unsignedIntValue];
              v32 = unsignedIntValue6;
              HIDWORD(v53) = unsignedIntValue6;
              v33 = sub_100002620(unsignedIntValue6);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                sub_1000157E8(v32);
              }

              goto LABEL_30;
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    getClockFrequencies = v40;
  }

  v34 = [NSData dataWithBytes:&v53 length:8];
  v35 = [CCIDMessageView create:115 withPayload:v34];
  v36 = [(CCIDSlot *)selfCopy transmitAndReceive:v35 maxPayload:0 sequence:&off_100026F40 outTimeout:0 inTimeout:0 transmitted:0];
  messageType = [v36 messageType];
  if (messageType != 132)
  {
    goto LABEL_34;
  }

  status = [v36 status];
  if (![status bmCommandStatus])
  {
LABEL_36:

    goto LABEL_37;
  }

  bError = [v36 bError];

  if (bError != -2)
  {
LABEL_34:
    status = sub_100002620(messageType);
    if (os_log_type_enabled(status, OS_LOG_TYPE_ERROR))
    {
      sub_100015864();
    }

    goto LABEL_36;
  }

LABEL_37:
}

- (unint64_t)engine:(id)engine setProtocol:(unint64_t)protocol
{
  engineCopy = engine;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronize = [(Slot *)self synchronize];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005E74;
  v10[3] = &unk_100024610;
  v10[5] = &v11;
  v10[6] = protocol;
  v10[4] = self;
  [synchronize sync:v10];

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)engine:(id)engine transmit:(id)transmit
{
  engineCopy = engine;
  transmitCopy = transmit;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100002ED4;
  v19 = sub_100002EE4;
  v20 = 0;
  synchronize = [(Slot *)self synchronize];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000612C;
  v12[3] = &unk_100024638;
  v12[4] = self;
  v14 = &v15;
  v9 = transmitCopy;
  v13 = v9;
  [synchronize sync:v12];

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)engine:(id)engine escape:(id)escape
{
  engineCopy = engine;
  escapeCopy = escape;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100002ED4;
  v19 = sub_100002EE4;
  v20 = 0;
  synchronize = [(Slot *)self synchronize];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006334;
  v12[3] = &unk_100024660;
  v14 = &v15;
  v12[4] = self;
  v9 = escapeCopy;
  v13 = v9;
  [synchronize sync:v12];

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)willSleepOnEngine:(id)engine
{
  synchronize = [(Slot *)self synchronize];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006424;
  v5[3] = &unk_1000244F0;
  v5[4] = self;
  [synchronize sync:v5];
}

- (void)didWakeUpOnEngine:(id)engine
{
  synchronize = [(Slot *)self synchronize];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006500;
  v5[3] = &unk_1000244F0;
  v5[4] = self;
  [synchronize sync:v5];
}

- (id)engine:(id)engine runUserInteraction:(id)interaction error:(id *)error
{
  engineCopy = engine;
  interactionCopy = interaction;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100002ED4;
  v22 = sub_100002EE4;
  v23 = 0;
  synchronize = [(Slot *)self synchronize];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100006768;
  v14[3] = &unk_100024688;
  v14[4] = self;
  v11 = interactionCopy;
  v15 = v11;
  v16 = &v18;
  errorCopy = error;
  [synchronize sync:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (BOOL)simulateCardReinsertion
{
  objc_initWeak(&location, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  synchronize = [(Slot *)self synchronize];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006AB0;
  v11[3] = &unk_1000246B0;
  objc_copyWeak(&v12, &location);
  v11[4] = &v13;
  [synchronize sync:v11];

  if (*(v14 + 24) == 1)
  {
    v4 = dispatch_time(0, 1000000000);
    synchronize2 = [(Slot *)self synchronize];
    queue = [synchronize2 queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006B58;
    v9[3] = &unk_1000246D8;
    objc_copyWeak(&v10, &location);
    dispatch_after(v4, queue, v9);

    objc_destroyWeak(&v10);
    v7 = *(v14 + 24);
  }

  else
  {
    v7 = 0;
  }

  objc_destroyWeak(&v12);
  _Block_object_dispose(&v13, 8);
  objc_destroyWeak(&location);
  return v7 & 1;
}

- (id)verifyPINSecure:(id)secure error:(id *)error
{
  secureCopy = secure;
  v7 = sub_100002620(secureCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100015C88();
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  bPINSupport = [cCIDDescriptor bPINSupport];

  if (bPINSupport)
  {
    v12 = [PINVerificationDataView createWithInteraction:secureCopy error:error];
    if (v12)
    {
      mapping = self->_mapping;
      aPDU = [secureCopy APDU];
      v15 = [(APDUMapping *)mapping secure:v12 APDU:aPDU];

      goto LABEL_11;
    }
  }

  else
  {
    if (error)
    {
      v11 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
      *error = v11;
    }

    v12 = sub_100002620(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100015CC4();
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)changePINSecure:(id)secure error:(id *)error
{
  secureCopy = secure;
  v7 = sub_100002620(secureCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100015D00();
  }

  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  bPINSupport = [cCIDDescriptor bPINSupport];

  if ((bPINSupport & 2) != 0)
  {
    v12 = [PINModificationDataView createWithInteraction:secureCopy error:error];
    if (v12)
    {
      mapping = self->_mapping;
      aPDU = [secureCopy APDU];
      v15 = [(APDUMapping *)mapping secure:v12 APDU:aPDU];

      goto LABEL_11;
    }
  }

  else
  {
    if (error)
    {
      v11 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:0];
      *error = v11;
    }

    v12 = sub_100002620(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100015D3C();
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)findSuitableFIndexDIndex:(id)index
{
  indexCopy = index;
  v5 = indexCopy;
  if (indexCopy)
  {
    v6 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [indexCopy unsignedCharValue]);
    v7 = sub_100002620(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100015D78();
    }

    v44 = +[NSMutableArray array];
    device = [(Slot *)self device];
    cCIDDescriptor = [device CCIDDescriptor];
    dwMaximumClock = [cCIDDescriptor dwMaximumClock];

    device2 = [(Slot *)self device];
    cCIDDescriptor2 = [device2 CCIDDescriptor];
    dwMaxDataRate = [cCIDDescriptor2 dwMaxDataRate];

    v14 = sub_100002620(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100015DE8(dwMaximumClock);
    }

    bytes = [(TKSmartCardATR *)self->_lastATR bytes];
    hexString = [bytes hexString];
    v17 = [(CCIDSlot *)self tryAlternativeFiDi:hexString];

    if (v17)
    {
      v39 = v5;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = +[CCIDFiAndDi FIndexes];
      v42 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v42)
      {
        v41 = *v55;
        do
        {
          v18 = 0;
          do
          {
            if (*v55 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v43 = v18;
            v19 = *(*(&v54 + 1) + 8 * v18);
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v20 = +[CCIDFiAndDi DIndexes];
            v21 = [v20 countByEnumeratingWithState:&v50 objects:v61 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v51;
              do
              {
                for (i = 0; i != v22; i = i + 1)
                {
                  if (*v51 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = -[CCIDFiAndDi initWithFIndex:DIndex:]([CCIDFiAndDi alloc], "initWithFIndex:DIndex:", [v19 unsignedCharValue], objc_msgSend(*(*(&v50 + 1) + 8 * i), "unsignedCharValue"));
                  fIndex = [(CCIDFiAndDi *)v25 fIndex];
                  if (fIndex == [v6 fIndex])
                  {
                    bpsMax = [(CCIDFiAndDi *)v25 bpsMax];
                    if (bpsMax <= [v6 bpsMax] && -[CCIDFiAndDi baseBps](v25, "baseBps") <= dwMaxDataRate)
                    {
                      [v44 addObject:v25];
                    }
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v50 objects:v61 count:16];
              }

              while (v22);
            }

            v18 = v43 + 1;
          }

          while ((v43 + 1) != v42);
          v42 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v42);
      }

      v5 = v39;
      if ([v44 count])
      {
        v28 = [v44 sortedArrayUsingComparator:&stru_100024718];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v29 = [v28 countByEnumeratingWithState:&v46 objects:v60 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v47;
          do
          {
            v32 = 0;
            do
            {
              if (*v47 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v46 + 1) + 8 * v32);
              v34 = sub_100002620(v29);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v59 = v33;
                _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "suitable FIndexDIndex: %{public}@", buf, 0xCu);
              }

              v32 = v32 + 1;
            }

            while (v30 != v32);
            v29 = [v28 countByEnumeratingWithState:&v46 objects:v60 count:16];
            v30 = v29;
          }

          while (v29);
        }

        firstObject = [v28 firstObject];

        v5 = v39;
LABEL_40:

        if (firstObject)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    else if ([v6 bpsMax] <= dwMaxDataRate && objc_msgSend(v6, "fMax") <= dwMaximumClock)
    {
      firstObject = v6;
      goto LABEL_40;
    }
  }

LABEL_41:
  v36 = [CCIDFiAndDi createWithFIndexDIndex:17];
  firstObject = v36;
LABEL_42:
  v37 = sub_100002620(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    sub_100015E68();
  }

  return firstObject;
}

- (id)findSuitableFDIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = indexesCopy;
  if (!indexesCopy)
  {
    goto LABEL_37;
  }

  v34 = indexesCopy;
  v6 = +[CCIDFiAndDi createWithFIndexDIndex:](CCIDFiAndDi, "createWithFIndexDIndex:", [indexesCopy unsignedCharValue]);
  v7 = sub_100002620(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100015D78();
  }

  v39 = +[NSMutableArray array];
  device = [(Slot *)self device];
  cCIDDescriptor = [device CCIDDescriptor];
  dwMaximumClock = [cCIDDescriptor dwMaximumClock];

  device2 = [(Slot *)self device];
  cCIDDescriptor2 = [device2 CCIDDescriptor];
  dwMaxDataRate = [cCIDDescriptor2 dwMaxDataRate];

  v14 = sub_100002620(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100015DE8(dwMaximumClock);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = +[CCIDFiAndDi FIndexes];
  v37 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v37)
  {
    v36 = *v50;
    do
    {
      v15 = 0;
      do
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v15;
        v16 = *(*(&v49 + 1) + 8 * v15);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v17 = +[CCIDFiAndDi DIndexes];
        v18 = [v17 countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v46;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v46 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = -[CCIDFiAndDi initWithFIndex:DIndex:]([CCIDFiAndDi alloc], "initWithFIndex:DIndex:", [v16 unsignedCharValue], objc_msgSend(*(*(&v45 + 1) + 8 * i), "unsignedCharValue"));
              fMax = [(CCIDFiAndDi *)v22 fMax];
              if (fMax <= [v6 fMax])
              {
                bpsMax = [(CCIDFiAndDi *)v22 bpsMax];
                if (bpsMax <= [v6 bpsMax] && -[CCIDFiAndDi baseBps](v22, "baseBps") <= dwMaxDataRate)
                {
                  [v39 addObject:v22];
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v45 objects:v57 count:16];
          }

          while (v19);
        }

        v15 = v38 + 1;
      }

      while ((v38 + 1) != v37);
      v37 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v37);
  }

  if (![v39 count])
  {

    v5 = v34;
LABEL_37:
    v32 = [CCIDFiAndDi createWithFIndexDIndex:17];
    v53 = v32;
    v25 = [NSArray arrayWithObjects:&v53 count:1];

    goto LABEL_38;
  }

  v25 = [v39 sortedArrayUsingComparator:&stru_100024738];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v42;
    do
    {
      v29 = 0;
      do
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v41 + 1) + 8 * v29);
        v31 = sub_100002620(v26);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v55 = v30;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "suitable FIndexDIndex: %{public}@", buf, 0xCu);
        }

        v29 = v29 + 1;
      }

      while (v27 != v29);
      v26 = [v25 countByEnumeratingWithState:&v41 objects:v56 count:16];
      v27 = v26;
    }

    while (v26);
  }

  v5 = v34;
  if (!v25)
  {
    goto LABEL_37;
  }

LABEL_38:

  return v25;
}

- (id)receiveMessageWitMaxPayload:(unint64_t)payload sequenceNumber:(unsigned __int8)number duplicateMessage:(unsigned __int8)message timeout:(id)timeout
{
  messageCopy = message;
  numberCopy = number;
  timeoutCopy = timeout;
  v11 = +[NSDate date];
  v12 = +[NSDate date];
  [v12 timeIntervalSinceDate:v11];
  v14 = v13;

  if (v14 >= 60.0)
  {
LABEL_19:
    v40 = sub_100002620(v15);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_100016058(v11);
    }

    [(CCIDSlot *)self sendAnalyticsFailure:3];
  }

  else
  {
    *&v16 = 67109632;
    v48 = v16;
    while (1)
    {
      pipeIn = self->_pipeIn;
      device = [(Slot *)self device];
      cCIDDescriptor = [device CCIDDescriptor];
      v20 = -[IOUSBHostPipe receive:timeout:](pipeIn, "receive:timeout:", [cCIDDescriptor dwMaxCCIDMessageLength], timeoutCopy);

      v21 = [v20 length];
      v22 = +[CCIDMessageView length];
      if (v21 < v22)
      {
        break;
      }

      v23 = [v20 length];
      v24 = +[CCIDMessageView length];
      if (v23 > v24 + payload)
      {
        v25 = sub_100002620(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_100015ED8(v58, v20);
        }
      }

      v26 = [CCIDMessageView createWithData:v20];
      bSlot = [v26 bSlot];
      slotNumber = [(Slot *)self slotNumber];
      if (bSlot != slotNumber)
      {
        v43 = sub_100002620(slotNumber);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_100015F38();
        }

        selfCopy2 = self;
        v45 = 4;
LABEL_32:
        [(CCIDSlot *)selfCopy2 sendAnalyticsFailure:v45];
        v41 = 0;
LABEL_34:

        goto LABEL_35;
      }

      bSeq = [v26 bSeq];
      if (bSeq == numberCopy || messageCopy > 0x1F)
      {
        bSeq2 = [v26 bSeq];
        if (bSeq2 != numberCopy)
        {
          v46 = sub_100002620(bSeq2);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_100015FA8();
          }

          selfCopy2 = self;
          v45 = 5;
          goto LABEL_32;
        }

        v49 = v20;
        v33 = v11;
        v34 = timeoutCopy;
        status = [v26 status];
        bmCommandStatus = [status bmCommandStatus];

        if (bmCommandStatus != 128)
        {
          v41 = v26;
          timeoutCopy = v34;
          v11 = v33;
          v20 = v49;
          goto LABEL_34;
        }

        v30 = sub_100002620([(APDUMapping *)self->_mapping waitingTime:1]);
        timeoutCopy = v34;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_100016018(&v50, v51, v30);
        }

        v11 = v33;
        v20 = v49;
      }

      else
      {
        ++messageCopy;
        v30 = sub_100002620(bSeq);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          bSeq3 = [v26 bSeq];
          *buf = v48;
          v53 = bSeq3;
          v54 = 1024;
          v55 = numberCopy;
          v56 = 1024;
          v57 = messageCopy;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Duplicate message detected (%u, %u, %u)!", buf, 0x14u);
        }
      }

      v37 = +[NSDate date];
      [v37 timeIntervalSinceDate:v11];
      v39 = v38;

      if (v39 >= 60.0)
      {
        goto LABEL_19;
      }
    }

    v42 = sub_100002620(v22);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_100016100();
    }

    [(CCIDSlot *)self sendAnalyticsFailure:3];
  }

  v41 = 0;
LABEL_35:

  return v41;
}

- (id)transmitAndReceive:(id)receive maxPayload:(unint64_t)payload sequence:(id)sequence outTimeout:(id)timeout inTimeout:(id)inTimeout transmitted:(id)transmitted
{
  receiveCopy = receive;
  sequenceCopy = sequence;
  timeoutCopy = timeout;
  inTimeoutCopy = inTimeout;
  transmittedCopy = transmitted;
  device = [(Slot *)self device];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100007EE4;
  v27[3] = &unk_100024760;
  v32 = transmittedCopy;
  payloadCopy = payload;
  v27[4] = self;
  v28 = receiveCopy;
  v29 = sequenceCopy;
  v30 = timeoutCopy;
  v31 = inTimeoutCopy;
  v20 = inTimeoutCopy;
  v21 = transmittedCopy;
  v22 = timeoutCopy;
  v23 = sequenceCopy;
  v24 = receiveCopy;
  v25 = [device deviceAccessBlock:v27];

  return v25;
}

- (BOOL)allowAlternativeFiDi
{
  v2 = CFPreferencesCopyValue(@"AllowAlternativeFiDi", @"com.apple.security.smartcard", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)getCardsNeedsBaseFiDi
{
  v2 = CFPreferencesCopyValue(@"CardsNeedsBaseFiDi", @"com.apple.security.smartcard", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = +[NSMutableArray array];
  }

  v4 = v3;

  return v4;
}

- (void)cardNeedsBaseFiDi:(id)di
{
  diCopy = di;
  if (diCopy)
  {
    getCardsNeedsBaseFiDi = [(CCIDSlot *)self getCardsNeedsBaseFiDi];
    cardsNeedsBaseFiDi = self->_cardsNeedsBaseFiDi;
    self->_cardsNeedsBaseFiDi = getCardsNeedsBaseFiDi;

    if (([(NSMutableArray *)self->_cardsNeedsBaseFiDi containsObject:diCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_cardsNeedsBaseFiDi addObject:diCopy];
      [(CCIDSlot *)self setDeviceAndCardBaseFiDi:self->_cardsNeedsBaseFiDi];
    }
  }
}

- (unsigned)PPSVersion
{
  v2 = CFPreferencesCopyValue(@"PPSVersion", @"com.apple.security.smartcard", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

@end