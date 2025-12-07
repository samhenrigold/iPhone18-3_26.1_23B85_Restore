@interface ASPickerDisplaySettings
+ (ASPickerDisplaySettings)defaultSettings;
- (ASPickerDisplaySettings)initWithCoder:(id)coder;
- (ASPickerDisplaySettings)initWithXPCObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ASPickerDisplaySettings

+ (ASPickerDisplaySettings)defaultSettings
{
  v2 = objc_alloc_init(ASPickerDisplaySettings);
  [(ASPickerDisplaySettings *)v2 setDiscoveryTimeout:30.0];

  return v2;
}

- (ASPickerDisplaySettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"dTm"])
  {
    [coderCopy decodeDoubleForKey:@"dTm"];
    self->_discoveryTimeout = v5;
  }

  v6 = coderCopy;
  if ([v6 containsValueForKey:@"pSOp"])
  {
    self->_options = [v6 decodeIntegerForKey:@"pSOp"];
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = coderCopy;
  if (self->_discoveryTimeout != 0.0)
  {
    [coderCopy encodeDouble:@"dTm" forKey:?];
    coderCopy = v6;
  }

  options = self->_options;
  if (options)
  {
    [v6 encodeInteger:options forKey:@"pSOp"];
    coderCopy = v6;
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  discoveryTimeout = self->_discoveryTimeout;
  xdict = objectCopy;
  if (discoveryTimeout != 0.0)
  {
    xpc_dictionary_set_double(objectCopy, "dTm", discoveryTimeout);
    objectCopy = xdict;
  }

  options = self->_options;
  if (options)
  {
    xpc_dictionary_set_uint64(xdict, "pSOp", options);
    objectCopy = xdict;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = *&self->_discoveryTimeout;
  *(result + 2) = self->_options;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v6 = equalCopy;
    v8 = [(ASPickerDisplaySettings *)v6 isMemberOfClass:objc_opt_class()]&& ([(ASPickerDisplaySettings *)v6 discoveryTimeout], v7 == self->_discoveryTimeout) && [(ASPickerDisplaySettings *)v6 options]== self->_options;
  }

  return v8;
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

  v18 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v17 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v17, &v18, "%@", v5);
    v6 = v17;
  }

  discoveryTimeout = self->_discoveryTimeout;
  if (discoveryTimeout != 0.0)
  {
    v8 = @"?";
    if (discoveryTimeout == INFINITY)
    {
      v8 = @"Unbounded";
    }

    v16 = v6;
    if (discoveryTimeout == 360.0)
    {
      v8 = @"Long";
    }

    if (discoveryTimeout == 180.0)
    {
      v8 = @"Medium";
    }

    if (discoveryTimeout == 60.0)
    {
      v8 = @"Short";
    }

    CUAppendF(&v16, &v18, "timeout '%@'", v8);
    v9 = v16;

    v6 = v9;
  }

  if (self->_options)
  {
    v15 = v6;
    v10 = CUPrintFlags64();
    CUAppendF(&v15, &v18, "setup %@", v10);
    v11 = v15;

    v6 = v11;
  }

  v12 = &stru_28499D698;
  if (v6)
  {
    v12 = v6;
  }

  v13 = v12;

  return v13;
}

- (ASPickerDisplaySettings)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ASPickerDisplaySettings *)self init];
  if (!v7)
  {
    if (error)
    {
      v11 = [objc_opt_class() description];
      *error = ASErrorF(-6756, "%@ init failed", v11);
    }

    goto LABEL_13;
  }

  if (MEMORY[0x2383B4C90](objectCopy) != MEMORY[0x277D86468])
  {
    if (error)
    {
      ASErrorF(-6756, "XPC non-dict");
      *error = v9 = 0;
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_13;
  }

  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 != 6)
  {
    if (v8 != 5)
    {
      goto LABEL_7;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_8;
  }

  v7->_options = 0;
LABEL_7:
  v9 = v7;
LABEL_8:

  return v9;
}

@end