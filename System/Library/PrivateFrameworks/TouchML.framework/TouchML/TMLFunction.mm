@interface TMLFunction
+ (id)decode:(const ProtobufCMessage *)decode;
- (TMLFunction)initWithName:(id)name body:(id)body;
- (void)encode:(ProtobufCMessage *)encode;
@end

@implementation TMLFunction

- (TMLFunction)initWithName:(id)name body:(id)body
{
  nameCopy = name;
  bodyCopy = body;
  v14.receiver = self;
  v14.super_class = TMLFunction;
  v8 = [(TMLFunction *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    functionName = v8->_functionName;
    v8->_functionName = v9;

    v11 = [bodyCopy copy];
    functionBody = v8->_functionBody;
    v8->_functionBody = v11;
  }

  return v8;
}

- (void)encode:(ProtobufCMessage *)encode
{
  uTF8String = [(NSString *)self->_functionName UTF8String];
  encode[1].var0 = strdup(uTF8String);
  *&encode[1].var1 = strdup([(NSString *)self->_functionBody UTF8String]);
}

+ (id)decode:(const ProtobufCMessage *)decode
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:decode[1].var0];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:*&decode[1].var1];
  v7 = [[self alloc] initWithName:v5 body:v6];

  return v7;
}

@end