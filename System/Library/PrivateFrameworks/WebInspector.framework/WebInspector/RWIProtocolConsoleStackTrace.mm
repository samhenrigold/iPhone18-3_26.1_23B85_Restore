@interface RWIProtocolConsoleStackTrace
- (BOOL)topCallFrameIsBoundary;
- (BOOL)truncated;
- (NSArray)callFrames;
- (RWIProtocolConsoleStackTrace)initWithCallFrames:(id)frames;
- (RWIProtocolConsoleStackTrace)parentStackTrace;
- (void)setCallFrames:(id)frames;
- (void)setParentStackTrace:(id)trace;
- (void)setTopCallFrameIsBoundary:(BOOL)boundary;
- (void)setTruncated:(BOOL)truncated;
@end

@implementation RWIProtocolConsoleStackTrace

- (RWIProtocolConsoleStackTrace)initWithCallFrames:(id)frames
{
  v24 = *MEMORY[0x277D85DE8];
  framesCopy = frames;
  v22.receiver = self;
  v22.super_class = RWIProtocolConsoleStackTrace;
  v4 = [(RWIProtocolJSONObject *)&v22 init];
  if (v4)
  {
    if (!framesCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"callFrames"}];
    }

    v16 = v4;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = framesCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = *v19;
      v8 = *MEMORY[0x277CBE660];
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = MEMORY[0x277CBEAD8];
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            [v11 raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@", v13, v10}];
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v6);
    }

    v4 = v16;
    [(RWIProtocolConsoleStackTrace *)v16 setCallFrames:v5];
    v14 = v16;
  }

  return v4;
}

- (void)setCallFrames:(id)frames
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = frames;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", v10, v7}];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  Inspector::toJSONObjectArray(obj, &v15);
  v14.receiver = self;
  v14.super_class = RWIProtocolConsoleStackTrace;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"callFrames"];
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v11;
    }
  }
}

- (NSArray)callFrames
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleStackTrace;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"callFrames"];
  v2 = Inspector::toObjCArray<RWIProtocolConsoleCallFrame>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setTopCallFrameIsBoundary:(BOOL)boundary
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleStackTrace;
  [(RWIProtocolJSONObject *)&v3 setBool:boundary forKey:@"topCallFrameIsBoundary"];
}

- (BOOL)topCallFrameIsBoundary
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleStackTrace;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"topCallFrameIsBoundary"];
}

- (void)setTruncated:(BOOL)truncated
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleStackTrace;
  [(RWIProtocolJSONObject *)&v3 setBool:truncated forKey:@"truncated"];
}

- (BOOL)truncated
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleStackTrace;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"truncated"];
}

- (void)setParentStackTrace:(id)trace
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleStackTrace;
  [(RWIProtocolJSONObject *)&v3 setObject:trace forKey:@"parentStackTrace"];
}

- (RWIProtocolConsoleStackTrace)parentStackTrace
{
  v14.receiver = self;
  v14.super_class = RWIProtocolConsoleStackTrace;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"parentStackTrace"];
  if (v3)
  {
    v4 = [RWIProtocolConsoleStackTrace alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolConsoleStackTrace;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"parentStackTrace"];
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