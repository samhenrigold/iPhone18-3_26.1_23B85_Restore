@interface DAEvent
+ (id)allocInitWithXPCObject:(id)object error:(id *)error;
- (DAEvent)initWithCoder:(id)coder;
- (DAEvent)initWithEventType:(int64_t)type;
- (DAEvent)initWithEventType:(int64_t)type error:(id)error;
- (DAEvent)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAEvent

- (DAEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DAEvent;
  v5 = [(DAEvent *)&v10 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    if ([v7 containsValueForKey:@"evTy"])
    {
      v5->_eventType = [v7 decodeIntegerForKey:@"evTy"];
    }

    v8 = v5;
  }

  else
  {
    [DAEvent initWithCoder:];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  error = self->_error;
  v7 = coderCopy;
  if (error)
  {
    [coderCopy encodeObject:error forKey:@"errr"];
    coderCopy = v7;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    [v7 encodeInteger:eventType forKey:@"evTy"];
    coderCopy = v7;
  }
}

- (void)encodeWithXPCObject:(id)object
{
  xdict = object;
  CUXPCEncodeNSError();
  eventType = self->_eventType;
  if (eventType)
  {
    xpc_dictionary_set_int64(xdict, "evTy", eventType);
  }
}

- (DAEvent)initWithEventType:(int64_t)type
{
  v4 = [(DAEvent *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = type;
    v6 = v4;
  }

  return v5;
}

- (DAEvent)initWithEventType:(int64_t)type error:(id)error
{
  errorCopy = error;
  v8 = [(DAEvent *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, error);
    v9->_eventType = type;
    v10 = v9;
  }

  return v9;
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

  v20 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v19 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v19, &v20, "%@", v5);
    v6 = v19;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    v18 = v6;
    v8 = DAEventTypeToString(eventType);
    CUAppendF(&v18, &v20, "type %@", v8);
    v9 = v18;

    v6 = v9;
  }

  error = self->_error;
  if (error)
  {
    v17 = v6;
    v11 = error;
    v12 = CUPrintNSError();
    CUAppendF(&v17, &v20, "error %@", v12);
    v13 = v17;

    v6 = v13;
  }

  v14 = &stru_285B4C350;
  if (v6)
  {
    v14 = v6;
  }

  v15 = v14;

  return v15;
}

+ (id)allocInitWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v6 = CUXPCDecodeSInt64RangedEx();
  if (v6 == 6)
  {
    JUMPOUT(0);
  }

  if (v6 != 5 && error)
  {
    v7 = OUTLINED_FUNCTION_8();
    *error = DAErrorF(v7, v8, 0);
  }

  return 0;
}

- (DAEvent)initWithXPCObject:(id)object error:(id *)error
{
  v6 = OUTLINED_FUNCTION_4_0(self, a2, object);
  v14.receiver = v4;
  v14.super_class = DAEvent;
  v7 = [(DAEvent *)&v14 init];
  if (!v7)
  {
    if (v5)
    {
      v13 = objc_opt_class();
      v11 = OUTLINED_FUNCTION_8();
      DAErrorF(v11, v12, v13);
      *v5 = v9 = 0;
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (!CUXPCDecodeNSError())
  {
    goto LABEL_10;
  }

  v15 = 0;
  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 != 6)
  {
    if (v8 != 5)
    {
      goto LABEL_6;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_7;
  }

  v7->_eventType = v15;
LABEL_6:
  v9 = v7;
LABEL_7:

  return v9;
}

- (void)initWithCoder:.cold.1()
{
  v4 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_8();
  v3 = DAErrorF(v1, v2, v4);
  OUTLINED_FUNCTION_3_0(v3);
}

@end