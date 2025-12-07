@interface GEOXPCMessage
- (id)_prepareMessage;
@end

@implementation GEOXPCMessage

- (id)_prepareMessage
{
  if ([(GEOXPCMessage *)self conformsToProtocol:&unk_1EFA2BBF8]&& [(GEOXPCMessage *)self isValid])
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    GEOEncodeModernXPCMessage(self, v3);
    messageName = [objc_opt_class() messageName];
    xpc_dictionary_set_string(v3, "message", [messageName UTF8String]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end