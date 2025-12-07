@interface MCMXPCMessageWithIdentifierBase
- (MCMXPCMessageWithIdentifierBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageWithIdentifierBase

- (MCMXPCMessageWithIdentifierBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v18 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = MCMXPCMessageWithIdentifierBase;
  v10 = [(MCMXPCMessageBase *)&v17 initWithXPCObject:objectCopy context:contextCopy error:error];
  if (v10)
  {
    clientIdentity = [contextCopy clientIdentity];
    codeSignInfo = [clientIdentity codeSignInfo];
    identifier = [codeSignInfo identifier];
    v14 = [(MCMXPCMessageBase *)v10 identifierFromXPCObject:objectCopy elseClientIdentifier:identifier];
    identifier = v10->_identifier;
    v10->_identifier = v14;
  }

  return v10;
}

@end