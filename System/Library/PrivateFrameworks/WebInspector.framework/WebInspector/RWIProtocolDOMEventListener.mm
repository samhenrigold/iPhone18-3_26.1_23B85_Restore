@interface RWIProtocolDOMEventListener
- (BOOL)disabled;
- (BOOL)hasBreakpoint;
- (BOOL)isAttribute;
- (BOOL)onWindow;
- (BOOL)once;
- (BOOL)passive;
- (BOOL)useCapture;
- (NSString)handlerName;
- (NSString)type;
- (RWIProtocolDOMEventListener)initWithEventListenerId:(int)id type:(id)type useCapture:(BOOL)capture isAttribute:(BOOL)attribute;
- (RWIProtocolDebuggerLocation)location;
- (int)eventListenerId;
- (int)nodeId;
- (void)setDisabled:(BOOL)disabled;
- (void)setEventListenerId:(int)id;
- (void)setHandlerName:(id)name;
- (void)setHasBreakpoint:(BOOL)breakpoint;
- (void)setIsAttribute:(BOOL)attribute;
- (void)setLocation:(id)location;
- (void)setNodeId:(int)id;
- (void)setOnWindow:(BOOL)window;
- (void)setOnce:(BOOL)once;
- (void)setPassive:(BOOL)passive;
- (void)setType:(id)type;
- (void)setUseCapture:(BOOL)capture;
@end

@implementation RWIProtocolDOMEventListener

- (RWIProtocolDOMEventListener)initWithEventListenerId:(int)id type:(id)type useCapture:(BOOL)capture isAttribute:(BOOL)attribute
{
  attributeCopy = attribute;
  captureCopy = capture;
  v8 = *&id;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMEventListener;
  v11 = [(RWIProtocolJSONObject *)&v14 init];
  if (v11)
  {
    if (!typeCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"type"}];
    }

    [(RWIProtocolDOMEventListener *)v11 setEventListenerId:v8];
    [(RWIProtocolDOMEventListener *)v11 setType:typeCopy];
    [(RWIProtocolDOMEventListener *)v11 setUseCapture:captureCopy];
    [(RWIProtocolDOMEventListener *)v11 setIsAttribute:attributeCopy];
    v12 = v11;
  }

  return v11;
}

- (void)setEventListenerId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"eventListenerId"];
}

- (int)eventListenerId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"eventListenerId"];
}

- (void)setType:(id)type
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setString:type forKey:@"type"];
}

- (NSString)type
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMEventListener;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"type"];

  return v2;
}

- (void)setUseCapture:(BOOL)capture
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setBool:capture forKey:@"useCapture"];
}

- (BOOL)useCapture
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"useCapture"];
}

- (void)setIsAttribute:(BOOL)attribute
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setBool:attribute forKey:@"isAttribute"];
}

- (BOOL)isAttribute
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isAttribute"];
}

- (void)setNodeId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"nodeId"];
}

- (int)nodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeId"];
}

- (void)setOnWindow:(BOOL)window
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setBool:window forKey:@"onWindow"];
}

- (BOOL)onWindow
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"onWindow"];
}

- (void)setLocation:(id)location
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setObject:location forKey:@"location"];
}

- (RWIProtocolDebuggerLocation)location
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMEventListener;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"location"];
  if (v3)
  {
    v4 = [RWIProtocolDebuggerLocation alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMEventListener;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"location"];
    objc_msgSend_toJSONObject(v5);
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHandlerName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"handlerName"];
}

- (NSString)handlerName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMEventListener;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"handlerName"];

  return v2;
}

- (void)setPassive:(BOOL)passive
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setBool:passive forKey:@"passive"];
}

- (BOOL)passive
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"passive"];
}

- (void)setOnce:(BOOL)once
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setBool:once forKey:@"once"];
}

- (BOOL)once
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"once"];
}

- (void)setDisabled:(BOOL)disabled
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setBool:disabled forKey:@"disabled"];
}

- (BOOL)disabled
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"disabled"];
}

- (void)setHasBreakpoint:(BOOL)breakpoint
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setBool:breakpoint forKey:@"hasBreakpoint"];
}

- (BOOL)hasBreakpoint
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"hasBreakpoint"];
}

@end