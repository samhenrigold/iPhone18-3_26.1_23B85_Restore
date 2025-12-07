@interface MCMXPCMessageWithKeyBase
- (MCMXPCMessageWithKeyBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageWithKeyBase

- (MCMXPCMessageWithKeyBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v15 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = MCMXPCMessageWithKeyBase;
  v9 = [(MCMXPCMessageWithConcreteContainerBase *)&v14 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:objectCopy key:"Key"];
    key = v10->_key;
    v10->_key = v11;
  }

  return v10;
}

@end