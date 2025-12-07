@interface SKEventCaptiveNetworkPresent
- (SKEventCaptiveNetworkPresent)initWithCaptiveURL:(id)l interfaceIdentifier:(id)identifier ssid:(id)ssid;
- (id)descriptionWithLevel:(int)level;
@end

@implementation SKEventCaptiveNetworkPresent

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v18 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v17 = 0;
    v5 = [objc_opt_class() description];
    CUAppendF(&v17, &v18, "%@", v5);
    v6 = v17;
  }

  v16 = v6;
  CUAppendF(&v16, &v18, "SSID '%@'", self->_captiveSSID);
  v7 = v16;

  v15 = v7;
  CUAppendF(&v15, &v18, "URL '%@'", self->_captiveURL);
  v8 = v15;

  captiveInterfaceIdentifier = self->_captiveInterfaceIdentifier;
  v14 = v8;
  CUAppendF(&v14, &v18, "interface '%@'", captiveInterfaceIdentifier);
  v9 = v14;

  v10 = &stru_2877689A8;
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

- (SKEventCaptiveNetworkPresent)initWithCaptiveURL:(id)l interfaceIdentifier:(id)identifier ssid:(id)ssid
{
  lCopy = l;
  identifierCopy = identifier;
  ssidCopy = ssid;
  v11 = [(SKEvent *)self initWithEventType:200];
  if (v11)
  {
    v12 = [identifierCopy copy];
    captiveInterfaceIdentifier = v11->_captiveInterfaceIdentifier;
    v11->_captiveInterfaceIdentifier = v12;

    v14 = [ssidCopy copy];
    captiveSSID = v11->_captiveSSID;
    v11->_captiveSSID = v14;

    v16 = [lCopy copy];
    captiveURL = v11->_captiveURL;
    v11->_captiveURL = v16;

    v18 = v11;
  }

  return v11;
}

@end