@interface CBUserNotificationRequest
- (CBUserNotificationRequest)initWithCoder:(id)coder;
- (CBUserNotificationRequest)initWithDictionary:(id)dictionary error:(id *)error;
- (CBUserNotificationRequest)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBUserNotificationRequest

- (CBUserNotificationRequest)initWithCoder:(id)coder
{
  v11[8] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v11[4] = objc_opt_class();
  v11[5] = objc_opt_class();
  v11[6] = objc_opt_class();
  v11[7] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:8];
  v7 = [v4 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"unRe"];

  v9 = [(CBUserNotificationRequest *)self initWithDictionary:v8 error:0];
  return v9;
}

- (CBUserNotificationRequest)initWithDictionary:(id)dictionary error:(id *)error
{
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    self = [(CBUserNotificationRequest *)self initWithXPCObject:v12 error:error];
    selfCopy = self;
  }

  else if (error)
  {
    CBErrorF(-6700, "CBUserNotificationRequest convert XPC dict failed", v6, v7, v8, v9, v10, v11, v15);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(CBUserNotificationRequest *)self encodeWithXPCObject:v3];
  v4 = CUXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(CBUserNotificationRequest *)self dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [coderCopy encodeObject:dictionaryRepresentation forKey:@"unRe"];
  }
}

- (void)encodeWithXPCObject:(id)object
{
  xdict = object;
  CUXPCEncodeObject();
  event = self->_event;
  if (event)
  {
    xpc_dictionary_set_uint64(xdict, "unEv", event);
  }
}

- (id)description
{
  v11 = 0;
  v3 = [objc_opt_class() description];
  v4 = v3;
  event = self->_event;
  if (event > 2)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1E811FC60[event];
  }

  NSAppendPrintF_safe(&v11, "%@: device %@, event %s", v3, self->_device, v6);
  v7 = v11;

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"?";
  }

  v9 = v8;

  return v8;
}

- (CBUserNotificationRequest)initWithXPCObject:(id)object error:(id *)error
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

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_13;
  }

  v14 = OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_5(v14, v15, v16, v17, v18);
  if (v19 != 6)
  {
    if (v19 != 5)
    {
      goto LABEL_7;
    }

LABEL_13:
    v6 = 0;
    goto LABEL_8;
  }

  v7[2] = 0;
LABEL_7:
  v6 = v7;
LABEL_8:

  return v6;
}

@end