@interface RWIProtocolDebuggerLocation
- (NSString)scriptId;
- (RWIProtocolDebuggerLocation)initWithScriptId:(id)id lineNumber:(int)number;
- (int)columnNumber;
- (int)lineNumber;
- (void)setColumnNumber:(int)number;
- (void)setLineNumber:(int)number;
- (void)setScriptId:(id)id;
@end

@implementation RWIProtocolDebuggerLocation

- (RWIProtocolDebuggerLocation)initWithScriptId:(id)id lineNumber:(int)number
{
  v4 = *&number;
  idCopy = id;
  v10.receiver = self;
  v10.super_class = RWIProtocolDebuggerLocation;
  v7 = [(RWIProtocolJSONObject *)&v10 init];
  if (v7)
  {
    if (!idCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"scriptId"}];
    }

    [(RWIProtocolDebuggerLocation *)v7 setScriptId:idCopy];
    [(RWIProtocolDebuggerLocation *)v7 setLineNumber:v4];
    v8 = v7;
  }

  return v7;
}

- (void)setScriptId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerLocation;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"scriptId"];
}

- (NSString)scriptId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerLocation;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"scriptId"];

  return v2;
}

- (void)setLineNumber:(int)number
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerLocation;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&number forKey:@"lineNumber"];
}

- (int)lineNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerLocation;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"lineNumber"];
}

- (void)setColumnNumber:(int)number
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerLocation;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&number forKey:@"columnNumber"];
}

- (int)columnNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerLocation;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"columnNumber"];
}

@end