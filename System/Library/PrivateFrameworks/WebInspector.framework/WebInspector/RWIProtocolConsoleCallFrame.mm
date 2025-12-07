@interface RWIProtocolConsoleCallFrame
- (NSString)functionName;
- (NSString)scriptId;
- (NSString)url;
- (RWIProtocolConsoleCallFrame)initWithFunctionName:(id)name url:(id)url scriptId:(id)id lineNumber:(int)number columnNumber:(int)columnNumber;
- (int)columnNumber;
- (int)lineNumber;
- (void)setColumnNumber:(int)number;
- (void)setFunctionName:(id)name;
- (void)setLineNumber:(int)number;
- (void)setScriptId:(id)id;
- (void)setUrl:(id)url;
@end

@implementation RWIProtocolConsoleCallFrame

- (RWIProtocolConsoleCallFrame)initWithFunctionName:(id)name url:(id)url scriptId:(id)id lineNumber:(int)number columnNumber:(int)columnNumber
{
  v7 = *&columnNumber;
  v8 = *&number;
  nameCopy = name;
  urlCopy = url;
  idCopy = id;
  v18.receiver = self;
  v18.super_class = RWIProtocolConsoleCallFrame;
  v15 = [(RWIProtocolJSONObject *)&v18 init];
  if (v15)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"functionName"}];
    }

    if (!urlCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"url"}];
    }

    if (!idCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"scriptId"}];
    }

    [(RWIProtocolConsoleCallFrame *)v15 setFunctionName:nameCopy];
    [(RWIProtocolConsoleCallFrame *)v15 setUrl:urlCopy];
    [(RWIProtocolConsoleCallFrame *)v15 setScriptId:idCopy];
    [(RWIProtocolConsoleCallFrame *)v15 setLineNumber:v8];
    [(RWIProtocolConsoleCallFrame *)v15 setColumnNumber:v7];
    v16 = v15;
  }

  return v15;
}

- (void)setFunctionName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"functionName"];
}

- (NSString)functionName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"functionName"];

  return v2;
}

- (void)setUrl:(id)url
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:url forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setScriptId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"scriptId"];
}

- (NSString)scriptId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"scriptId"];

  return v2;
}

- (void)setLineNumber:(int)number
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&number forKey:@"lineNumber"];
}

- (int)lineNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"lineNumber"];
}

- (void)setColumnNumber:(int)number
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&number forKey:@"columnNumber"];
}

- (int)columnNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"columnNumber"];
}

@end