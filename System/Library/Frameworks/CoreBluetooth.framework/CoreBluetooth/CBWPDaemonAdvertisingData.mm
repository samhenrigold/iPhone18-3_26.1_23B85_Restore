@interface CBWPDaemonAdvertisingData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
@end

@implementation CBWPDaemonAdvertisingData

- (id)descriptionWithLevel:(int)level
{
  v37 = 0;
  v4 = CUPrintFlags32();
  NSAppendPrintF_safe(&v37, "instance: %@", v4);
  v5 = v37;

  v36 = v5;
  LOWORD(v6) = self->_advInterval;
  NSAppendPrintF_safe(&v36, ", interval: %.2f ms", v6 * 0.625);
  v7 = v36;

  mfgData = self->_mfgData;
  if (mfgData)
  {
    v35 = v7;
    v9 = mfgData;
    v10 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v35, ", mfgData: %@", v10);
    v11 = v35;

    v7 = v11;
  }

  advDataPerType = self->_advDataPerType;
  if (advDataPerType)
  {
    v34 = v7;
    v13 = advDataPerType;
    v14 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v34, ", advDataPerType: %@", v14);
    v15 = v34;

    v7 = v15;
  }

  listOfClients = self->_listOfClients;
  if (listOfClients)
  {
    v33 = v7;
    v17 = listOfClients;
    v18 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v33, ", clients: %@", v18);
    v19 = v33;

    v7 = v19;
  }

  if (self->_enableAdvertisingWithPowerAssertion)
  {
    v32 = v7;
    NSAppendPrintF_safe(&v32, ", power assertion: %d", 1);
    v24 = v32;

    v7 = v24;
    if (!self->_enableEPAForAdvertisement)
    {
LABEL_9:
      if (!self->_enableObjectLocatorResponseOnAdvertisingInstance)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if (!self->_enableEPAForAdvertisement)
  {
    goto LABEL_9;
  }

  v31 = v7;
  NSAppendPrintF_safe(&v31, ", enable EPA: %d", 1);
  v25 = v31;

  v7 = v25;
  if (!self->_enableObjectLocatorResponseOnAdvertisingInstance)
  {
LABEL_10:
    if (!self->_stopOnAdvertisingAddressChange)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v30 = v7;
  NSAppendPrintF_safe(&v30, ", object locator: %d", 1);
  v26 = v30;

  v7 = v26;
  if (!self->_stopOnAdvertisingAddressChange)
  {
LABEL_11:
    wiProxUpdateTimestamp = self->_wiProxUpdateTimestamp;
    if (!wiProxUpdateTimestamp)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  v29 = v7;
  NSAppendPrintF_safe(&v29, ", stop on address change: %d", 1);
  v27 = v29;

  v7 = v27;
  wiProxUpdateTimestamp = self->_wiProxUpdateTimestamp;
  if (wiProxUpdateTimestamp)
  {
LABEL_12:
    v28 = v7;
    v21 = wiProxUpdateTimestamp;
    NSAppendPrintF_safe(&v28, ", update timestamp: %@", v21);
    v22 = v28;

    v7 = v22;
  }

LABEL_13:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_13;
  }

  if (equalCopy == self)
  {
    v21 = 1;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    advInstanceType = [(CBWPDaemonAdvertisingData *)self advInstanceType];
    if (advInstanceType == -[CBWPDaemonAdvertisingData advInstanceType](v6, "advInstanceType") && (v8 = -[CBWPDaemonAdvertisingData advInterval](self, "advInterval"), v8 == -[CBWPDaemonAdvertisingData advInterval](v6, "advInterval")) && (-[CBWPDaemonAdvertisingData advDataPerType](self, "advDataPerType"), v9 = objc_claimAutoreleasedReturnValue(), -[CBWPDaemonAdvertisingData advDataPerType](v6, "advDataPerType"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqualToDictionary:v10], v10, v9, v11) && (v12 = -[CBWPDaemonAdvertisingData enableObjectLocatorResponseOnAdvertisingInstance](self, "enableObjectLocatorResponseOnAdvertisingInstance"), v12 == -[CBWPDaemonAdvertisingData enableObjectLocatorResponseOnAdvertisingInstance](v6, "enableObjectLocatorResponseOnAdvertisingInstance")) && (v13 = -[CBWPDaemonAdvertisingData stopOnAdvertisingAddressChange](self, "stopOnAdvertisingAddressChange"), v13 == -[CBWPDaemonAdvertisingData stopOnAdvertisingAddressChange](v6, "stopOnAdvertisingAddressChange")) && (v14 = -[CBWPDaemonAdvertisingData enableAdvertisingWithPowerAssertion](self, "enableAdvertisingWithPowerAssertion"), v14 == -[CBWPDaemonAdvertisingData enableAdvertisingWithPowerAssertion](v6, "enableAdvertisingWithPowerAssertion")) && (v15 = -[CBWPDaemonAdvertisingData enableEPAForAdvertisement](self, "enableEPAForAdvertisement"), v15 == -[CBWPDaemonAdvertisingData enableEPAForAdvertisement](v6, "enableEPAForAdvertisement")) && (-[CBWPDaemonAdvertisingData listOfClients](self, "listOfClients"), v16 = objc_claimAutoreleasedReturnValue(), -[CBWPDaemonAdvertisingData listOfClients](v6, "listOfClients"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToArray:", v17), v17, v16, v18))
    {
      mfgData = [(CBWPDaemonAdvertisingData *)self mfgData];
      mfgData2 = [(CBWPDaemonAdvertisingData *)v6 mfgData];
      v21 = [mfgData isEqualToData:mfgData2];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
LABEL_13:
    v21 = 0;
  }

LABEL_17:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    [v5 setAdvInstanceType:{-[CBWPDaemonAdvertisingData advInstanceType](self, "advInstanceType")}];
    [v5 setAdvInterval:{-[CBWPDaemonAdvertisingData advInterval](self, "advInterval")}];
    advDataPerType = [(CBWPDaemonAdvertisingData *)self advDataPerType];
    v7 = [advDataPerType copyWithZone:zone];
    [v5 setAdvDataPerType:v7];

    [v5 setEnableObjectLocatorResponseOnAdvertisingInstance:{-[CBWPDaemonAdvertisingData enableObjectLocatorResponseOnAdvertisingInstance](self, "enableObjectLocatorResponseOnAdvertisingInstance")}];
    [v5 setStopOnAdvertisingAddressChange:{-[CBWPDaemonAdvertisingData stopOnAdvertisingAddressChange](self, "stopOnAdvertisingAddressChange")}];
    [v5 setEnableAdvertisingWithPowerAssertion:{-[CBWPDaemonAdvertisingData enableAdvertisingWithPowerAssertion](self, "enableAdvertisingWithPowerAssertion")}];
    [v5 setEnableEPAForAdvertisement:{-[CBWPDaemonAdvertisingData enableEPAForAdvertisement](self, "enableEPAForAdvertisement")}];
    wiProxUpdateTimestamp = [(CBWPDaemonAdvertisingData *)self wiProxUpdateTimestamp];
    v9 = [wiProxUpdateTimestamp copyWithZone:zone];
    [v5 setWiProxUpdateTimestamp:v9];

    mfgData = [(CBWPDaemonAdvertisingData *)self mfgData];
    v11 = [mfgData copyWithZone:zone];
    [v5 setMfgData:v11];

    listOfClients = [(CBWPDaemonAdvertisingData *)self listOfClients];
    v13 = [listOfClients copyWithZone:zone];
    [v5 setListOfClients:v13];
  }

  return v5;
}

@end