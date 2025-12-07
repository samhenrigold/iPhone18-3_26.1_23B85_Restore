@interface CBDeviceRequest
- (CBDeviceRequest)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBDeviceRequest

- (id)description
{
  v12 = 0;
  v3 = [objc_opt_class() description];
  v4 = CUPrintFlags32();
  NSAppendPrintF_safe(&v12, "%@, RF %@", v3, v4);
  v5 = v12;

  timeoutSeconds = self->_timeoutSeconds;
  if (timeoutSeconds != 0.0)
  {
    v11 = v5;
    NSAppendPrintF_safe(&v11, ", TO %.3f", timeoutSeconds);
    v7 = v11;

    v5 = v7;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = @"?";
  }

  v9 = v8;

  return v8;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  requestFlags = self->_requestFlags;
  xdict = objectCopy;
  if (requestFlags)
  {
    xpc_dictionary_set_uint64(objectCopy, "dvRF", requestFlags);
    objectCopy = xdict;
  }

  timeoutSeconds = self->_timeoutSeconds;
  if (timeoutSeconds != 0.0)
  {
    xpc_dictionary_set_double(xdict, "timO", timeoutSeconds);
    objectCopy = xdict;
  }
}

- (CBDeviceRequest)initWithXPCObject:(id)object error:(id *)error
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
      *v5 = CBErrorF(-6756, "%@ init failed", v21, v22, v23, v24, v25, v26, v28);
    }

    goto LABEL_13;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v27 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v28);
      OUTLINED_FUNCTION_16(v27);
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v14 = OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_5(v14, v15, v16, v17, v18);
  if (v19 == 6)
  {
    v7[2] = 0;
    goto LABEL_6;
  }

  if (v19 == 5)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_13;
  }

  v6 = v7;
LABEL_8:

  return v6;
}

@end