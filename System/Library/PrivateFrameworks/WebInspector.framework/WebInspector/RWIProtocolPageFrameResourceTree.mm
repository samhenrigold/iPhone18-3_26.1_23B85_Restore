@interface RWIProtocolPageFrameResourceTree
- (NSArray)childFrames;
- (NSArray)resources;
- (RWIProtocolPageFrame)frame;
- (RWIProtocolPageFrameResourceTree)initWithFrame:(id)frame resources:(id)resources;
- (void)setChildFrames:(id)frames;
- (void)setFrame:(id)frame;
- (void)setResources:(id)resources;
@end

@implementation RWIProtocolPageFrameResourceTree

- (RWIProtocolPageFrameResourceTree)initWithFrame:(id)frame resources:(id)resources
{
  v27 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  resourcesCopy = resources;
  v25.receiver = self;
  v25.super_class = RWIProtocolPageFrameResourceTree;
  v6 = [(RWIProtocolJSONObject *)&v25 init];
  if (v6)
  {
    if (!frameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"frame"}];
    }

    if (!resourcesCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"resources"}];
    }

    v18 = v6;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = resourcesCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = *v22;
      v10 = *MEMORY[0x277CBE660];
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = MEMORY[0x277CBEAD8];
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            [v13 raise:v10 format:{@"array should contain objects of type '%@', found bad value: %@", v15, v12}];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    v6 = v18;
    [(RWIProtocolPageFrameResourceTree *)v18 setFrame:frameCopy];
    [(RWIProtocolPageFrameResourceTree *)v18 setResources:v7];
    v16 = v18;
  }

  return v6;
}

- (void)setFrame:(id)frame
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v3 setObject:frame forKey:@"frame"];
}

- (RWIProtocolPageFrame)frame
{
  v14.receiver = self;
  v14.super_class = RWIProtocolPageFrameResourceTree;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"frame"];
  if (v3)
  {
    v4 = [RWIProtocolPageFrame alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolPageFrameResourceTree;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"frame"];
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

- (void)setChildFrames:(id)frames
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
  v14.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"childFrames"];
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

- (NSArray)childFrames
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"childFrames"];
  v2 = Inspector::toObjCArray<RWIProtocolPageFrameResourceTree>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setResources:(id)resources
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = resources;
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
  v14.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"resources"];
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

- (NSArray)resources
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"resources"];
  v2 = Inspector::toObjCArray<RWIProtocolPageFrameResource>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

@end