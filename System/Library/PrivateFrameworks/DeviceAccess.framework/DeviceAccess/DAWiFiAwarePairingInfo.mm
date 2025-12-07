@interface DAWiFiAwarePairingInfo
- (DAWiFiAwarePairingInfo)initWithWiFiAwareIdentifier:(unint64_t)identifier pairingType:(int64_t)type;
- (DAWiFiAwarePairingInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAWiFiAwarePairingInfo

- (DAWiFiAwarePairingInfo)initWithWiFiAwareIdentifier:(unint64_t)identifier pairingType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = DAWiFiAwarePairingInfo;
  v6 = [(DAWiFiAwarePairingInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_accept = 0;
    v6->_wifiAwareIdentifier = identifier;
    v6->_pairingType = type;
    passkey = v6->_passkey;
    v6->_passkey = 0;

    v9 = v7;
  }

  return v7;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (self->_accept)
  {
    xpc_dictionary_set_BOOL(objectCopy, "wFPA", 1);
  }

  passkey = self->_passkey;
  xdict = v5;
  uTF8String = [(NSString *)passkey UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "wFPk", uTF8String);
  }

  pairingType = self->_pairingType;
  if (pairingType)
  {
    xpc_dictionary_set_int64(xdict, "wFPT", pairingType);
  }

  wifiAwareIdentifier = self->_wifiAwareIdentifier;
  if (wifiAwareIdentifier)
  {
    xpc_dictionary_set_uint64(xdict, "wFPi", wifiAwareIdentifier);
  }
}

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

  v22 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v21 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v21, &v22, "%@", v5);
    v6 = v21;
  }

  v20 = v6;
  CUAppendF(&v20, &v22, "WiFiAware identifier %llu", self->_wifiAwareIdentifier);
  v7 = v20;

  v19 = v7;
  pairingType = self->_pairingType;
  if (pairingType <= 19)
  {
    if (!pairingType)
    {
      v9 = @"DAWiFiAwarePairingTypeInvalid";
      goto LABEL_19;
    }

    if (pairingType == 10)
    {
      v9 = @"DAWiFiAwarePairingTypeJustWorks";
      goto LABEL_19;
    }
  }

  else
  {
    switch(pairingType)
    {
      case 20:
        v9 = @"DAWiFiAwarePairingTypePasskeyDisplay";
        goto LABEL_19;
      case 30:
        v9 = @"DAWiFiAwarePairingTypePasskeyEntry";
        goto LABEL_19;
      case 40:
        v9 = @"DAWiFiAwarePairingTypeNumericComparison";
        goto LABEL_19;
    }
  }

  v9 = @"?";
LABEL_19:
  CUAppendF(&v19, &v22, "pairingType %@", v9);
  v10 = v19;

  v18 = v10;
  CUAppendF(&v18, &v22, "pairingPasskey %@", self->_passkey);
  v11 = v18;

  v17 = v11;
  if (self->_accept)
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  CUAppendF(&v17, &v22, "accept %s", v12);
  v13 = v17;

  v14 = &stru_285B4C350;
  if (v13)
  {
    v14 = v13;
  }

  v15 = v14;

  return v15;
}

- (DAWiFiAwarePairingInfo)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (!self || !CUXPCDecodeBool() || !CUXPCDecodeNSString())
  {
    goto LABEL_12;
  }

  v6 = CUXPCDecodeSInt64RangedEx();
  if (v6 == 6)
  {
    self->_pairingType = 0;
  }

  else if (v6 == 5)
  {
    goto LABEL_12;
  }

  v7 = CUXPCDecodeUInt64RangedEx();
  if (v7 != 6)
  {
    if (v7 != 5)
    {
      goto LABEL_10;
    }

LABEL_12:
    selfCopy = 0;
    goto LABEL_11;
  }

  self->_wifiAwareIdentifier = 0;
LABEL_10:
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

@end