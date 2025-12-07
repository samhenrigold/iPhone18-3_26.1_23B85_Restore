@interface DABluetoothPairingInfo
- (DABluetoothPairingInfo)initWithBluetoothIdentifier:(id)identifier pairedCTKD:(BOOL)d appConfirmsAuth:(BOOL)auth pairingRequired:(BOOL)required;
- (DABluetoothPairingInfo)initWithBluetoothIdentifier:(id)identifier pairingType:(int64_t)type;
- (DABluetoothPairingInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DABluetoothPairingInfo

- (DABluetoothPairingInfo)initWithBluetoothIdentifier:(id)identifier pairingType:(int64_t)type
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = DABluetoothPairingInfo;
  v8 = [(DABluetoothPairingInfo *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_accept = 0;
    objc_storeStrong(&v8->_bluetoothIdentifier, identifier);
    passkey = v9->_passkey;
    v9->_pairingType = type;
    v9->_passkey = 0;

    v11 = v9;
  }

  return v9;
}

- (DABluetoothPairingInfo)initWithBluetoothIdentifier:(id)identifier pairedCTKD:(BOOL)d appConfirmsAuth:(BOOL)auth pairingRequired:(BOOL)required
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = DABluetoothPairingInfo;
  v12 = [(DABluetoothPairingInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_accept = 0;
    objc_storeStrong(&v12->_bluetoothIdentifier, identifier);
    passkey = v13->_passkey;
    v13->_pairingType = 0;
    v13->_passkey = 0;

    v13->_pairedWithCTKD = d;
    v13->_appConfirmsAuth = auth;
    v13->_pairingRequired = required;
    v15 = v13;
  }

  return v13;
}

- (void)encodeWithXPCObject:(id)object
{
  v11 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = objectCopy;
  if (self->_accept)
  {
    xpc_dictionary_set_BOOL(objectCopy, "btPA", 1);
  }

  intValue = [(NSNumber *)self->_passkey intValue];
  if (intValue)
  {
    xpc_dictionary_set_int64(v5, "btPk", intValue);
  }

  pairingType = self->_pairingType;
  if (pairingType)
  {
    xpc_dictionary_set_int64(v5, "btPT", pairingType);
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v9 = v5;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v9, "devi", uuid);
  }

  if (self->_pairedWithCTKD)
  {
    xpc_dictionary_set_BOOL(v5, "btPC", 1);
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

  v25 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v24 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v24, &v25, "%@", v5);
    v6 = v24;
  }

  v23 = v6;
  CUAppendF(&v23, &v25, "Bluetooth identifier %@", self->_bluetoothIdentifier);
  v7 = v23;

  v22 = v7;
  pairingType = self->_pairingType;
  if (pairingType <= 19)
  {
    if (!pairingType)
    {
      v9 = @"DABluetoothPairingTypeInvalid";
      goto LABEL_19;
    }

    if (pairingType == 10)
    {
      v9 = @"DABluetoothPairingTypeJustWorks";
      goto LABEL_19;
    }
  }

  else
  {
    switch(pairingType)
    {
      case 20:
        v9 = @"DABluetoothPairingTypePasskeyDisplay";
        goto LABEL_19;
      case 30:
        v9 = @"DABluetoothPairingTypePasskeyEntry";
        goto LABEL_19;
      case 40:
        v9 = @"DABluetoothPairingTypeNumericComparison";
        goto LABEL_19;
    }
  }

  v9 = @"?";
LABEL_19:
  CUAppendF(&v22, &v25, "pairingType %@", v9);
  v10 = v22;

  v21 = v10;
  CUAppendF(&v21, &v25, "pairingPasskey %@", self->_passkey);
  v11 = v21;

  v20 = v11;
  if (self->_accept)
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  CUAppendF(&v20, &v25, "accept %s", v12);
  v13 = v20;

  if (self->_pairedWithCTKD)
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  v19 = v13;
  CUAppendF(&v19, &v25, "pairedWithCTKD %s", v14);
  v15 = v19;

  v16 = &stru_285B4C350;
  if (v15)
  {
    v16 = v15;
  }

  v17 = v16;

  return v17;
}

- (DABluetoothPairingInfo)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (!self || !CUXPCDecodeBool() || CUXPCDecodeSInt64RangedEx() == 5)
  {
    goto LABEL_11;
  }

  v6 = CUXPCDecodeSInt64RangedEx();
  if (v6 == 6)
  {
    self->_pairingType = 0;
  }

  else if (v6 == 5)
  {
LABEL_11:
    selfCopy = 0;
    goto LABEL_10;
  }

  if (!CUXPCDecodeNSUUID() || !CUXPCDecodeBool())
  {
    goto LABEL_11;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
  passkey = self->_passkey;
  self->_passkey = v7;

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

@end