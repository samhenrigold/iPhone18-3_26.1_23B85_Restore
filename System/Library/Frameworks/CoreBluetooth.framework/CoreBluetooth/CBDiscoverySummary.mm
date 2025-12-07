@interface CBDiscoverySummary
- (CBDiscoverySummary)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBDiscoverySummary

- (void)encodeWithXPCObject:(id)object
{
  scanTime = self->_scanTime;
  if (scanTime != 0.0)
  {
    xpc_dictionary_set_double(object, "scTm", scanTime);
  }
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 12;
  }

  v11 = v3;
  if ((level & 0x8000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v10 = 0;
    v4 = [objc_opt_class() description];
    CUAppendF(&v10, &v11, "%@", v4);
    v5 = v10;
  }

  v9 = v5;
  v6 = CUPrintDurationDouble();
  CUAppendF(&v9, &v11, "scanTime: %@", v6);
  v7 = v9;

  return v7;
}

- (CBDiscoverySummary)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = CBDiscoverySummary;
  v7 = [(CBDiscoverySummary *)&v24 init];
  if (!v7)
  {
    if (error)
    {
      v16 = [objc_opt_class() description];
      *error = CBErrorF(-6756, "%@ super init failed", v17, v18, v19, v20, v21, v22, v16);
    }

    goto LABEL_10;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (error)
    {
      CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v23);
      *error = v14 = 0;
      goto LABEL_5;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_10;
  }

  v14 = v7;
LABEL_5:

  return v14;
}

@end