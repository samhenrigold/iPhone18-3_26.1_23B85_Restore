@interface ENScanInstance
- (ENScanInstance)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ENScanInstance

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  xdict = objectCopy;
  if (self->_minimumAttenuation)
  {
    xpc_dictionary_set_uint64(objectCopy, "minAttn", self->_minimumAttenuation);
    objectCopy = xdict;
  }

  if (self->_typicalAttenuation)
  {
    xpc_dictionary_set_uint64(xdict, "typAttn", self->_typicalAttenuation);
    objectCopy = xdict;
  }

  secondsSinceLastScan = self->_secondsSinceLastScan;
  if (secondsSinceLastScan)
  {
    xpc_dictionary_set_int64(xdict, "secsLS", secondsSinceLastScan);
    objectCopy = xdict;
  }
}

- (id)description
{
  v12 = 0;
  NSAppendPrintF_safe(&v12, "ENScanInstance");
  v3 = v12;
  v11 = v3;
  NSAppendPrintF_safe(&v11, ", MinAttn %d", self->_minimumAttenuation);
  v4 = v11;

  v10 = v4;
  NSAppendPrintF_safe(&v10, ", TypAttn %d", self->_typicalAttenuation);
  v5 = v10;

  v9 = v5;
  NSAppendPrintF_safe(&v9, ", SecondsSinceLastScan %d", self->_secondsSinceLastScan);
  v6 = v9;
  v7 = v9;

  return v6;
}

- (ENScanInstance)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ENScanInstance *)self init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_19;
    }

    ENErrorF(2, "super init failed");
LABEL_18:
    *error = v13 = 0;
    goto LABEL_13;
  }

  if (MEMORY[0x2383EE9C0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_19;
    }

    ENErrorF(2, "XPC non-dict");
    goto LABEL_18;
  }

  v15 = 0;
  OUTLINED_FUNCTION_1();
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_minimumAttenuation = v15;
  }

  else if (v8 == 5)
  {
    goto LABEL_19;
  }

  v15 = 0;
  OUTLINED_FUNCTION_1();
  v9 = CUXPCDecodeUInt64RangedEx();
  if (v9 == 6)
  {
    v7->_typicalAttenuation = v15;
  }

  else if (v9 == 5)
  {
    goto LABEL_19;
  }

  v15 = 0;
  v12 = OUTLINED_FUNCTION_4(v9, "secsLS", v10, v11, &v15);
  if (v12 != 6)
  {
    if (v12 != 5)
    {
      goto LABEL_12;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_13;
  }

  v7->_secondsSinceLastScan = v15;
LABEL_12:
  v13 = v7;
LABEL_13:

  return v13;
}

@end