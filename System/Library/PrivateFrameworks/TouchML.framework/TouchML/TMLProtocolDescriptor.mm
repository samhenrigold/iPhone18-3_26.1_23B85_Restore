@interface TMLProtocolDescriptor
+ (id)decode:(const ProtobufCMessage *)decode;
- (BOOL)isEqual:(id)equal;
- (Protocol)objcProtocol;
- (TMLProtocolDescriptor)initWithName:(id)name implementsProtocols:(id)protocols;
- (void)addSignal:(id)signal;
- (void)encode:(ProtobufCMessage *)encode;
@end

@implementation TMLProtocolDescriptor

- (TMLProtocolDescriptor)initWithName:(id)name implementsProtocols:(id)protocols
{
  nameCopy = name;
  protocolsCopy = protocols;
  v16.receiver = self;
  v16.super_class = TMLProtocolDescriptor;
  v8 = [(TMLProtocolDescriptor *)&v16 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    protocolName = v8->_protocolName;
    v8->_protocolName = v9;

    v11 = [protocolsCopy copy];
    implementsProtocols = v8->_implementsProtocols;
    v8->_implementsProtocols = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    signals = v8->_signals;
    v8->_signals = v13;
  }

  return v8;
}

- (void)addSignal:(id)signal
{
  signals = self->_signals;
  signalCopy = signal;
  signalName = [signalCopy signalName];
  [(NSMutableDictionary *)signals setObject:signalCopy forKey:signalName];
}

- (Protocol)objcProtocol
{
  objcProtocol = self->_objcProtocol;
  if (!objcProtocol)
  {
    v4 = [(NSString *)self->_objcProtocolName length];
    v5 = 40;
    if (!v4)
    {
      v5 = 8;
    }

    objcProtocol = NSProtocolFromString(*(&self->super.isa + v5));
    v6 = self->_objcProtocol;
    self->_objcProtocol = objcProtocol;
  }

  return objcProtocol;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      protocolName = self->_protocolName;
      protocolName = [(TMLProtocolDescriptor *)v6 protocolName];
      if (![(NSString *)protocolName isEqualToString:protocolName])
      {
        v12 = 0;
LABEL_13:

        goto LABEL_14;
      }

      implementsProtocols = self->_implementsProtocols;
      implementsProtocols = [(TMLProtocolDescriptor *)v6 implementsProtocols];
      if (implementsProtocols == implementsProtocols || (v11 = self->_implementsProtocols, [(TMLProtocolDescriptor *)v6 implementsProtocols], v3 = objc_claimAutoreleasedReturnValue(), [(NSSet *)v11 isEqualToSet:v3]))
      {
        signals = self->_signals;
        signals = [(TMLProtocolDescriptor *)v6 signals];
        v12 = [(NSMutableDictionary *)signals isEqualToDictionary:signals];

        if (implementsProtocols == implementsProtocols)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_12;
    }

    v12 = 0;
  }

LABEL_14:

  return v12;
}

- (void)encode:(ProtobufCMessage *)encode
{
  uTF8String = [(NSString *)self->_protocolName UTF8String];
  encode[1].var0 = strdup(uTF8String);
  allObjects = [(NSSet *)self->_implementsProtocols allObjects];
  v7 = [allObjects count];
  *&encode[1].var1 = v7;
  if (v7)
  {
    v7 = malloc_type_malloc(8 * v7, 0x10040436913F5uLL);
  }

  encode[1].var2 = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_26F1C55A0;
  v12[3] = &unk_279DC7D10;
  v12[4] = encode;
  [allObjects enumerateObjectsUsingBlock:v12];
  objcProtocolName = self->_objcProtocolName;
  if (objcProtocolName)
  {
    objcProtocolName = strdup([(ProtobufCMessageDescriptor *)objcProtocolName UTF8String]);
  }

  encode[2].var0 = objcProtocolName;
  allValues = [(NSMutableDictionary *)self->_signals allValues];
  v10 = [allValues count];
  *&encode[2].var1 = v10;
  if (v10)
  {
    v10 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
  }

  encode[2].var2 = v10;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F1C55F0;
  v11[3] = &unk_279DC7D30;
  v11[4] = encode;
  [allValues enumerateObjectsUsingBlock:v11];
}

+ (id)decode:(const ProtobufCMessage *)decode
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:decode[1].var0];
  if (*&decode[1].var1)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:*&decode[1].var1];
  }

  else
  {
    v6 = 0;
  }

  if (*&decode[1].var1)
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(decode[1].var2 + v7)];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < *&decode[1].var1);
  }

  v9 = [self alloc];
  v10 = [v6 copy];
  v11 = [v9 initWithName:v5 implementsProtocols:v10];

  if (decode[2].var0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v11 setObjcProtocolName:v12];
  }

  if (*&decode[2].var1)
  {
    v13 = 0;
    do
    {
      v14 = [objc_opt_class() decode:*(decode[2].var2 + v13)];
      [v11 addSignal:v14];

      ++v13;
    }

    while (v13 < *&decode[2].var1);
  }

  return v11;
}

@end