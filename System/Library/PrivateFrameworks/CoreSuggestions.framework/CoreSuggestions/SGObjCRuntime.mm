@interface SGObjCRuntime
+ (unint64_t)_arityForBlockAtIndex:(unint64_t)index inSelector:(SEL)selector instanceMethod:(BOOL)method ofProtocol:(id)protocol seenProtocols:(id)protocols foundSelector:(BOOL *)foundSelector;
+ (unint64_t)arityForBlockAtIndex:(unint64_t)index inSelector:(SEL)selector instanceMethod:(BOOL)method ofProtocol:(id)protocol;
@end

@implementation SGObjCRuntime

+ (unint64_t)_arityForBlockAtIndex:(unint64_t)index inSelector:(SEL)selector instanceMethod:(BOOL)method ofProtocol:(id)protocol seenProtocols:(id)protocols foundSelector:(BOOL *)foundSelector
{
  methodCopy = method;
  protocolCopy = protocol;
  protocolsCopy = protocols;
  v16 = objc_autoreleasePoolPush();
  MethodTypeEncoding = _protocol_getMethodTypeEncoding();
  if (MethodTypeEncoding)
  {
LABEL_4:
    *foundSelector = 1;
    v19 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodTypeEncoding];
    v20 = [v19 _signatureForBlockAtArgumentIndex:index];
    v21 = v20;
    if (v20)
    {
      numberOfArguments = [v20 numberOfArguments];
    }

    else
    {
      numberOfArguments = 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_8;
  }

  v18 = _protocol_getMethodTypeEncoding();
  if (v18)
  {
    MethodTypeEncoding = v18;
    goto LABEL_4;
  }

  v27 = v16;
  outCount = 0;
  v24 = protocol_copyProtocolList(protocolCopy, &outCount);
  if (outCount)
  {
    selfCopy = self;
    v25 = 0;
    numberOfArguments = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:protocol_getName(v24[v25])];
      if (([protocolsCopy containsObject:v26] & 1) == 0)
      {
        [protocolsCopy addObject:v26];
        numberOfArguments = [selfCopy _arityForBlockAtIndex:index inSelector:selector instanceMethod:methodCopy ofProtocol:v24[v25] seenProtocols:protocolsCopy foundSelector:foundSelector];
        if (*foundSelector)
        {
          break;
        }
      }

      if (++v25 >= outCount)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    numberOfArguments = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_17:
  free(v24);
  v16 = v27;
LABEL_8:
  objc_autoreleasePoolPop(v16);

  return numberOfArguments;
}

+ (unint64_t)arityForBlockAtIndex:(unint64_t)index inSelector:(SEL)selector instanceMethod:(BOOL)method ofProtocol:(id)protocol
{
  methodCopy = method;
  v14 = 0;
  protocolCopy = protocol;
  v11 = objc_opt_new();
  v12 = [self _arityForBlockAtIndex:index inSelector:selector instanceMethod:methodCopy ofProtocol:protocolCopy seenProtocols:v11 foundSelector:&v14];

  return v12;
}

@end