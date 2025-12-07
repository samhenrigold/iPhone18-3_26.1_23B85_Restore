@interface TMLSignalHandlerFunction
+ (id)decode:(const ProtobufCMessage *)decode;
- (TMLSignalHandlerFunction)initWithSignalName:(id)name functionName:(id)functionName body:(id)body;
- (void)encode:(ProtobufCMessage *)encode;
@end

@implementation TMLSignalHandlerFunction

- (TMLSignalHandlerFunction)initWithSignalName:(id)name functionName:(id)functionName body:(id)body
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = TMLSignalHandlerFunction;
  v9 = [(TMLFunction *)&v13 initWithName:functionName body:body];
  if (v9)
  {
    v10 = [nameCopy copy];
    signalName = v9->_signalName;
    v9->_signalName = v10;
  }

  return v9;
}

- (void)encode:(ProtobufCMessage *)encode
{
  uTF8String = [(NSString *)self->_signalName UTF8String];
  encode[1].var0 = strdup(uTF8String);
  functionName = [(TMLFunction *)self functionName];
  *&encode[1].var1 = strdup([functionName UTF8String]);

  functionBody = [(TMLFunction *)self functionBody];
  v7 = functionBody;
  encode[1].var2 = strdup([functionBody UTF8String]);
}

+ (id)decode:(const ProtobufCMessage *)decode
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:decode[1].var0];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:*&decode[1].var1];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:decode[1].var2];
  v8 = [[self alloc] initWithSignalName:v5 functionName:v6 body:v7];

  return v8;
}

@end