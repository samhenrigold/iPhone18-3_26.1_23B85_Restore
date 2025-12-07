@interface RWIProtocolDOMAccessibilityProperties
- (BOOL)busy;
- (BOOL)disabled;
- (BOOL)exists;
- (BOOL)expanded;
- (BOOL)focused;
- (BOOL)hidden;
- (BOOL)ignored;
- (BOOL)ignoredByDefault;
- (BOOL)isPopUpButton;
- (BOOL)liveRegionAtomic;
- (BOOL)pressed;
- (BOOL)readonly;
- (BOOL)required;
- (BOOL)selected;
- (NSArray)childNodeIds;
- (NSArray)controlledNodeIds;
- (NSArray)flowedNodeIds;
- (NSArray)liveRegionRelevant;
- (NSArray)ownedNodeIds;
- (NSArray)selectedChildNodeIds;
- (NSString)label;
- (NSString)role;
- (RWIProtocolDOMAccessibilityProperties)initWithExists:(BOOL)exists label:(id)label nodeId:(int)id role:(id)role;
- (double)headingLevel;
- (double)hierarchyLevel;
- (int)activeDescendantNodeId;
- (int)mouseEventNodeId;
- (int)nodeId;
- (int)parentNodeId;
- (int64_t)checked;
- (int64_t)current;
- (int64_t)invalid;
- (int64_t)liveRegionStatus;
- (int64_t)switchState;
- (void)setActiveDescendantNodeId:(int)id;
- (void)setBusy:(BOOL)busy;
- (void)setChecked:(int64_t)checked;
- (void)setChildNodeIds:(id)ids;
- (void)setControlledNodeIds:(id)ids;
- (void)setCurrent:(int64_t)current;
- (void)setDisabled:(BOOL)disabled;
- (void)setExists:(BOOL)exists;
- (void)setExpanded:(BOOL)expanded;
- (void)setFlowedNodeIds:(id)ids;
- (void)setFocused:(BOOL)focused;
- (void)setHeadingLevel:(double)level;
- (void)setHidden:(BOOL)hidden;
- (void)setHierarchyLevel:(double)level;
- (void)setIgnored:(BOOL)ignored;
- (void)setIgnoredByDefault:(BOOL)default;
- (void)setInvalid:(int64_t)invalid;
- (void)setIsPopUpButton:(BOOL)button;
- (void)setLabel:(id)label;
- (void)setLiveRegionAtomic:(BOOL)atomic;
- (void)setLiveRegionRelevant:(id)relevant;
- (void)setLiveRegionStatus:(int64_t)status;
- (void)setMouseEventNodeId:(int)id;
- (void)setNodeId:(int)id;
- (void)setOwnedNodeIds:(id)ids;
- (void)setParentNodeId:(int)id;
- (void)setPressed:(BOOL)pressed;
- (void)setReadonly:(BOOL)readonly;
- (void)setRequired:(BOOL)required;
- (void)setRole:(id)role;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedChildNodeIds:(id)ids;
- (void)setSwitchState:(int64_t)state;
@end

@implementation RWIProtocolDOMAccessibilityProperties

- (RWIProtocolDOMAccessibilityProperties)initWithExists:(BOOL)exists label:(id)label nodeId:(int)id role:(id)role
{
  v7 = *&id;
  existsCopy = exists;
  labelCopy = label;
  roleCopy = role;
  v15.receiver = self;
  v15.super_class = RWIProtocolDOMAccessibilityProperties;
  v12 = [(RWIProtocolJSONObject *)&v15 init];
  if (v12)
  {
    if (!labelCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"label"}];
    }

    if (!roleCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"role"}];
    }

    [(RWIProtocolDOMAccessibilityProperties *)v12 setExists:existsCopy];
    [(RWIProtocolDOMAccessibilityProperties *)v12 setLabel:labelCopy];
    [(RWIProtocolDOMAccessibilityProperties *)v12 setNodeId:v7];
    [(RWIProtocolDOMAccessibilityProperties *)v12 setRole:roleCopy];
    v13 = v12;
  }

  return v12;
}

- (void)setActiveDescendantNodeId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"activeDescendantNodeId"];
}

- (int)activeDescendantNodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"activeDescendantNodeId"];
}

- (void)setBusy:(BOOL)busy
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:busy forKey:@"busy"];
}

- (BOOL)busy
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"busy"];
}

- (void)setChecked:(int64_t)checked
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
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"checked"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)checked
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"checked"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesChecked>(WTF::String const&)::mappings;
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

- (void)setChildNodeIds:(id)ids
{
  Inspector::toJSONIntegerArray(ids, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"childNodeIds"];
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

- (NSArray)childNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"childNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setControlledNodeIds:(id)ids
{
  Inspector::toJSONIntegerArray(ids, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"controlledNodeIds"];
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

- (NSArray)controlledNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"controlledNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setCurrent:(int64_t)current
{
  Inspector::toProtocolString();
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
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"current"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)current
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"current"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesCurrent>(WTF::String const&)::mappings;
  v6 = 168;
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

- (void)setDisabled:(BOOL)disabled
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:disabled forKey:@"disabled"];
}

- (BOOL)disabled
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"disabled"];
}

- (void)setHeadingLevel:(double)level
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"headingLevel" forKey:level];
}

- (double)headingLevel
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"headingLevel"];
  return result;
}

- (void)setHierarchyLevel:(double)level
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"hierarchyLevel" forKey:level];
}

- (double)hierarchyLevel
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"hierarchyLevel"];
  return result;
}

- (void)setIsPopUpButton:(BOOL)button
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:button forKey:@"isPopUpButton"];
}

- (BOOL)isPopUpButton
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isPopUpButton"];
}

- (void)setExists:(BOOL)exists
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:exists forKey:@"exists"];
}

- (BOOL)exists
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"exists"];
}

- (void)setExpanded:(BOOL)expanded
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:expanded forKey:@"expanded"];
}

- (BOOL)expanded
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"expanded"];
}

- (void)setFlowedNodeIds:(id)ids
{
  Inspector::toJSONIntegerArray(ids, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"flowedNodeIds"];
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

- (NSArray)flowedNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"flowedNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setFocused:(BOOL)focused
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:focused forKey:@"focused"];
}

- (BOOL)focused
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"focused"];
}

- (void)setIgnored:(BOOL)ignored
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:ignored forKey:@"ignored"];
}

- (BOOL)ignored
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"ignored"];
}

- (void)setIgnoredByDefault:(BOOL)default
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:default forKey:@"ignoredByDefault"];
}

- (BOOL)ignoredByDefault
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"ignoredByDefault"];
}

- (void)setInvalid:(int64_t)invalid
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
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"invalid"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)invalid
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"invalid"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesInvalid>(WTF::String const&)::mappings;
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

- (void)setHidden:(BOOL)hidden
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:hidden forKey:@"hidden"];
}

- (BOOL)hidden
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"hidden"];
}

- (void)setLabel:(id)label
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setString:label forKey:@"label"];
}

- (NSString)label
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"label"];

  return v2;
}

- (void)setLiveRegionAtomic:(BOOL)atomic
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:atomic forKey:@"liveRegionAtomic"];
}

- (BOOL)liveRegionAtomic
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"liveRegionAtomic"];
}

- (void)setLiveRegionRelevant:(id)relevant
{
  Inspector::toJSONStringArray(relevant, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"liveRegionRelevant"];
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

- (NSArray)liveRegionRelevant
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"liveRegionRelevant"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setLiveRegionStatus:(int64_t)status
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
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"liveRegionStatus"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)liveRegionStatus
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"liveRegionStatus"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesLiveRegionStatus>(WTF::String const&)::mappings;
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

- (void)setMouseEventNodeId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"mouseEventNodeId"];
}

- (int)mouseEventNodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"mouseEventNodeId"];
}

- (void)setNodeId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"nodeId"];
}

- (int)nodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeId"];
}

- (void)setOwnedNodeIds:(id)ids
{
  Inspector::toJSONIntegerArray(ids, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"ownedNodeIds"];
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

- (NSArray)ownedNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"ownedNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setParentNodeId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"parentNodeId"];
}

- (int)parentNodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"parentNodeId"];
}

- (void)setPressed:(BOOL)pressed
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:pressed forKey:@"pressed"];
}

- (BOOL)pressed
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"pressed"];
}

- (void)setReadonly:(BOOL)readonly
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:readonly forKey:@"readonly"];
}

- (BOOL)readonly
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"readonly"];
}

- (void)setRequired:(BOOL)required
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:required forKey:@"required"];
}

- (BOOL)required
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"required"];
}

- (void)setRole:(id)role
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setString:role forKey:@"role"];
}

- (NSString)role
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"role"];

  return v2;
}

- (void)setSelected:(BOOL)selected
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setBool:selected forKey:@"selected"];
}

- (BOOL)selected
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"selected"];
}

- (void)setSelectedChildNodeIds:(id)ids
{
  Inspector::toJSONIntegerArray(ids, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"selectedChildNodeIds"];
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

- (NSArray)selectedChildNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"selectedChildNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setSwitchState:(int64_t)state
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
  v6.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v6 setString:v7 forKey:@"switchState"];
  [RWIProtocolDOMNode setPseudoType:?];
}

- (int64_t)switchState
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"switchState"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesSwitchState>(WTF::String const&)::mappings;
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

@end