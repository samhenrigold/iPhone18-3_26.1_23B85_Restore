@interface RWIProtocolNetworkWebSocketResponse
- (NSString)statusText;
- (RWIProtocolNetworkHeaders)headers;
- (RWIProtocolNetworkWebSocketResponse)initWithStatus:(int)status statusText:(id)text headers:(id)headers;
- (int)status;
- (void)setHeaders:(id)headers;
- (void)setStatus:(int)status;
- (void)setStatusText:(id)text;
@end

@implementation RWIProtocolNetworkWebSocketResponse

- (RWIProtocolNetworkWebSocketResponse)initWithStatus:(int)status statusText:(id)text headers:(id)headers
{
  v6 = *&status;
  textCopy = text;
  headersCopy = headers;
  v13.receiver = self;
  v13.super_class = RWIProtocolNetworkWebSocketResponse;
  v10 = [(RWIProtocolJSONObject *)&v13 init];
  if (v10)
  {
    if (!textCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"statusText"}];
    }

    if (!headersCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"headers"}];
    }

    [(RWIProtocolNetworkWebSocketResponse *)v10 setStatus:v6];
    [(RWIProtocolNetworkWebSocketResponse *)v10 setStatusText:textCopy];
    [(RWIProtocolNetworkWebSocketResponse *)v10 setHeaders:headersCopy];
    v11 = v10;
  }

  return v10;
}

- (void)setStatus:(int)status
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketResponse;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&status forKey:@"status"];
}

- (int)status
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketResponse;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"status"];
}

- (void)setStatusText:(id)text
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketResponse;
  [(RWIProtocolJSONObject *)&v3 setString:text forKey:@"statusText"];
}

- (NSString)statusText
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkWebSocketResponse;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"statusText"];

  return v2;
}

- (void)setHeaders:(id)headers
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketResponse;
  [(RWIProtocolJSONObject *)&v3 setObject:headers forKey:@"headers"];
}

- (RWIProtocolNetworkHeaders)headers
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkWebSocketResponse;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"headers"];
  if (v3)
  {
    v4 = [RWIProtocolNetworkHeaders alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkWebSocketResponse;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"headers"];
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

@end