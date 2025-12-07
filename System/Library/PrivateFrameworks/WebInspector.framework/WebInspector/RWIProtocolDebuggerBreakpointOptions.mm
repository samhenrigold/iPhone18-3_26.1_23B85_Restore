@interface RWIProtocolDebuggerBreakpointOptions
- (BOOL)autoContinue;
- (NSArray)actions;
- (NSString)condition;
- (int)ignoreCount;
- (void)setActions:(id)actions;
- (void)setAutoContinue:(BOOL)continue;
- (void)setCondition:(id)condition;
- (void)setIgnoreCount:(int)count;
@end

@implementation RWIProtocolDebuggerBreakpointOptions

- (void)setCondition:(id)condition
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointOptions;
  [(RWIProtocolJSONObject *)&v3 setString:condition forKey:@"condition"];
}

- (NSString)condition
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerBreakpointOptions;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"condition"];

  return v2;
}

- (void)setActions:(id)actions
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = actions;
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
  v14.super_class = RWIProtocolDebuggerBreakpointOptions;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"actions"];
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

- (NSArray)actions
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerBreakpointOptions;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"actions"];
  v2 = Inspector::toObjCArray<RWIProtocolDebuggerBreakpointAction>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setAutoContinue:(BOOL)continue
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointOptions;
  [(RWIProtocolJSONObject *)&v3 setBool:continue forKey:@"autoContinue"];
}

- (BOOL)autoContinue
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointOptions;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"autoContinue"];
}

- (void)setIgnoreCount:(int)count
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointOptions;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&count forKey:@"ignoreCount"];
}

- (int)ignoreCount
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointOptions;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"ignoreCount"];
}

@end