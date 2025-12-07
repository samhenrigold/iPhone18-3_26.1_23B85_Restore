@interface CBPairingInfo
- (CBPairingInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBPairingInfo

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  CUXPCEncodeObject();
  if (self->_error)
  {
    CUXPCEncodeNSError();
  }

  flags = self->_flags;
  if (flags)
  {
    xpc_dictionary_set_uint64(objectCopy, "prFl", flags);
  }

  pin = self->_pin;
  xdict = objectCopy;
  uTF8String = [(NSString *)pin UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "prPN", uTF8String);
  }

  pairingType = self->_pairingType;
  if (pairingType)
  {
    xpc_dictionary_set_int64(xdict, "prTy", pairingType);
  }
}

- (id)description
{
  v14 = 0;
  v3 = [objc_opt_class() description];
  device = self->_device;
  pin = self->_pin;
  v6 = CUPrintFlags32();
  pairingType = self->_pairingType;
  if (pairingType > 5)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1E811FC30[pairingType];
  }

  v9 = CUPrintNSError();
  NSAppendPrintF_safe(&v14, "%@: device %@, PIN %@, Flags %@, Type %s, Error %@", v3, device, pin, v6, v8, v9);
  v10 = v14;

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"?";
  }

  v12 = v11;

  return v11;
}

- (CBPairingInfo)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3_4();
      *v5 = CBErrorF(-6756, "%@ init failed", v21, v22, v23, v24, v25, v26, v27);
    }

    goto LABEL_20;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v27);
      *v5 = v19 = 0;
      goto LABEL_14;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_20;
  }

  v14 = CUXPCDecodeNSError();
  v15 = 0;
  if (!v14)
  {
    goto LABEL_15;
  }

  objc_storeStrong((v7 + 24), 0);
  v28 = 0;
  v17 = OUTLINED_FUNCTION_5(v4, "prFl", 0, v16, &v28);
  if (v17 == 6)
  {
    *(v7 + 8) = v28;
  }

  else if (v17 == 5)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_15;
  }

  v28 = 0;
  v18 = CUXPCDecodeSInt64RangedEx();
  if (v18 != 6)
  {
    if (v18 != 5)
    {
      goto LABEL_12;
    }

LABEL_15:
    v19 = 0;
    goto LABEL_13;
  }

  *(v7 + 32) = v28;
LABEL_12:
  v19 = v7;
LABEL_13:

LABEL_14:
  return v19;
}

@end