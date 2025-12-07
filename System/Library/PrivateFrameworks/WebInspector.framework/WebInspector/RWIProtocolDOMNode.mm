@interface RWIProtocolDOMNode
- (NSArray)attributes;
- (NSArray)children;
- (NSArray)layoutFlags;
- (NSArray)pseudoElements;
- (NSArray)shadowRoots;
- (NSString)baseURL;
- (NSString)contentSecurityPolicyHash;
- (NSString)documentURL;
- (NSString)frameId;
- (NSString)localName;
- (NSString)name;
- (NSString)nodeName;
- (NSString)nodeValue;
- (NSString)publicId;
- (NSString)systemId;
- (NSString)value;
- (NSString)xmlVersion;
- (RWIProtocolDOMNode)contentDocument;
- (RWIProtocolDOMNode)initWithNodeId:(int)id nodeType:(int)type nodeName:(id)name localName:(id)localName nodeValue:(id)value;
- (RWIProtocolDOMNode)templateContent;
- (int)childNodeCount;
- (int)nodeId;
- (int)nodeType;
- (int64_t)customElementState;
- (int64_t)pseudoType;
- (int64_t)shadowRootType;
- (void)setAttributes:(id)attributes;
- (void)setBaseURL:(id)l;
- (void)setChildNodeCount:(int)count;
- (void)setChildren:(id)children;
- (void)setContentDocument:(id)document;
- (void)setContentSecurityPolicyHash:(id)hash;
- (void)setCustomElementState:(int64_t)state;
- (void)setDocumentURL:(id)l;
- (void)setFrameId:(id)id;
- (void)setLayoutFlags:(id)flags;
- (void)setLocalName:(id)name;
- (void)setName:(id)name;
- (void)setNodeId:(int)id;
- (void)setNodeName:(id)name;
- (void)setNodeType:(int)type;
- (void)setNodeValue:(id)value;
- (void)setPseudoElements:(id)elements;
- (void)setPseudoType:(int64_t)type;
- (void)setPublicId:(id)id;
- (void)setShadowRootType:(int64_t)type;
- (void)setShadowRoots:(id)roots;
- (void)setSystemId:(id)id;
- (void)setTemplateContent:(id)content;
- (void)setValue:(id)value;
- (void)setXmlVersion:(id)version;
@end

@implementation RWIProtocolDOMNode

- (RWIProtocolDOMNode)initWithNodeId:(int)id nodeType:(int)type nodeName:(id)name localName:(id)localName nodeValue:(id)value
{
  v9 = *&type;
  v10 = *&id;
  nameCopy = name;
  localNameCopy = localName;
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = RWIProtocolDOMNode;
  v15 = [(RWIProtocolJSONObject *)&v18 init];
  if (v15)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"nodeName"}];
    }

    if (!localNameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"localName"}];
    }

    if (!valueCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"nodeValue"}];
    }

    [(RWIProtocolDOMNode *)v15 setNodeId:v10];
    [(RWIProtocolDOMNode *)v15 setNodeType:v9];
    [(RWIProtocolDOMNode *)v15 setNodeName:nameCopy];
    [(RWIProtocolDOMNode *)v15 setLocalName:localNameCopy];
    [(RWIProtocolDOMNode *)v15 setNodeValue:valueCopy];
    v16 = v15;
  }

  return v15;
}

- (void)setNodeId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"nodeId"];
}

- (int)nodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeId"];
}

- (void)setNodeType:(int)type
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&type forKey:@"nodeType"];
}

- (int)nodeType
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeType"];
}

- (void)setNodeName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"nodeName"];
}

- (NSString)nodeName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"nodeName"];

  return v2;
}

- (void)setLocalName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"localName"];
}

- (NSString)localName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"localName"];

  return v2;
}

- (void)setNodeValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:value forKey:@"nodeValue"];
}

- (NSString)nodeValue
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"nodeValue"];

  return v2;
}

- (void)setFrameId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"frameId"];
}

- (NSString)frameId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"frameId"];

  return v2;
}

- (void)setChildNodeCount:(int)count
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&count forKey:@"childNodeCount"];
}

- (int)childNodeCount
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"childNodeCount"];
}

- (void)setChildren:(id)children
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = children;
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
  v14.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"children"];
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

- (NSArray)children
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"children"];
  v2 = Inspector::toObjCArray<RWIProtocolDOMNode>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setAttributes:(id)attributes
{
  Inspector::toJSONStringArray(attributes, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"attributes"];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }
}

- (NSArray)attributes
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"attributes"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setDocumentURL:(id)l
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:l forKey:@"documentURL"];
}

- (NSString)documentURL
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"documentURL"];

  return v2;
}

- (void)setBaseURL:(id)l
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:l forKey:@"baseURL"];
}

- (NSString)baseURL
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"baseURL"];

  return v2;
}

- (void)setPublicId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"publicId"];
}

- (NSString)publicId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"publicId"];

  return v2;
}

- (void)setSystemId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"systemId"];
}

- (NSString)systemId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"systemId"];

  return v2;
}

- (void)setXmlVersion:(id)version
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:version forKey:@"xmlVersion"];
}

- (NSString)xmlVersion
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"xmlVersion"];

  return v2;
}

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:value forKey:@"value"];
}

- (NSString)value
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"value"];

  return v2;
}

- (void)setPseudoType:(int64_t)type
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v7, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v7 = &stru_2882B1C88;
  }

  v6.receiver = self;
  v6.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v6 setString:v7 forKey:@"pseudoType"];
  [RWIProtocolDOMNode setPseudoType:?];
}

- (int64_t)pseudoType
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"pseudoType"];
  MEMORY[0x2743DB520](&v9, v2);
  if (v9)
  {
    v3 = *(v9 + 8);
    v4 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
  }

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMPseudoType>(WTF::String const&)::mappings;
  v6 = 48;
  do
  {
    if (WTF::operator==(v3, v4, *v5, v5[1]))
    {
      goto LABEL_8;
    }

    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  do
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_8:
    ;
  }

  while (!v6);
  [(RWIProtocolCSSStyleSheetHeader *)v5 origin];
  return v10;
}

- (void)setShadowRootType:(int64_t)type
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v7, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  else
  {
    v7 = &stru_2882B1C88;
  }

  v5.receiver = self;
  v5.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"shadowRootType"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)shadowRootType
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"shadowRootType"];
  MEMORY[0x2743DB520](&v9, v2);
  if (v9)
  {
    v3 = *(v9 + 8);
    v4 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
  }

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMShadowRootType>(WTF::String const&)::mappings;
  v6 = 72;
  do
  {
    if (WTF::operator==(v3, v4, *v5, v5[1]))
    {
      goto LABEL_8;
    }

    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  do
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_8:
    ;
  }

  while (!v6);
  [(RWIProtocolCSSStyleSheetHeader *)v5 origin];
  return v10;
}

- (void)setCustomElementState:(int64_t)state
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v7, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  else
  {
    v7 = &stru_2882B1C88;
  }

  v5.receiver = self;
  v5.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"customElementState"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)customElementState
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"customElementState"];
  MEMORY[0x2743DB520](&v9, v2);
  if (v9)
  {
    v3 = *(v9 + 8);
    v4 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
  }

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMCustomElementState>(WTF::String const&)::mappings;
  v6 = 96;
  do
  {
    if (WTF::operator==(v3, v4, *v5, v5[1]))
    {
      goto LABEL_8;
    }

    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  do
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_8:
    ;
  }

  while (!v6);
  [(RWIProtocolCSSStyleSheetHeader *)v5 origin];
  return v10;
}

- (void)setContentDocument:(id)document
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setObject:document forKey:@"contentDocument"];
}

- (RWIProtocolDOMNode)contentDocument
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMNode;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"contentDocument"];
  if (v3)
  {
    v4 = [RWIProtocolDOMNode alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMNode;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"contentDocument"];
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

- (void)setShadowRoots:(id)roots
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = roots;
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
  v14.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"shadowRoots"];
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

- (NSArray)shadowRoots
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"shadowRoots"];
  v2 = Inspector::toObjCArray<RWIProtocolDOMNode>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setTemplateContent:(id)content
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setObject:content forKey:@"templateContent"];
}

- (RWIProtocolDOMNode)templateContent
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMNode;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"templateContent"];
  if (v3)
  {
    v4 = [RWIProtocolDOMNode alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMNode;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"templateContent"];
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

- (void)setPseudoElements:(id)elements
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = elements;
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
  v14.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v14 setJSONArray:&v15 forKey:@"pseudoElements"];
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

- (NSArray)pseudoElements
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"pseudoElements"];
  v2 = Inspector::toObjCArray<RWIProtocolDOMNode>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setContentSecurityPolicyHash:(id)hash
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:hash forKey:@"contentSecurityPolicyHash"];
}

- (NSString)contentSecurityPolicyHash
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"contentSecurityPolicyHash"];

  return v2;
}

- (void)setLayoutFlags:(id)flags
{
  Inspector::toJSONStringArray(flags, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"layoutFlags"];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }
}

- (NSArray)layoutFlags
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"layoutFlags"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setPseudoType:(void *)a1 .cold.1(void **a1)
{
  OUTLINED_FUNCTION_5_1(a1);

  if ((v2 & 1) == 0 && atomic_fetch_add_explicit(v1, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v1, v4);
  }
}

@end