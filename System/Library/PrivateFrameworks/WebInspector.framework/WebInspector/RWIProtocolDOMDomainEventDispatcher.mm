@interface RWIProtocolDOMDomainEventDispatcher
- (RWIProtocolDOMDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (void)attributeModifiedWithNodeId:(int)id name:(id)name value:(id)value;
- (void)attributeRemovedWithNodeId:(int)id name:(id)name;
- (void)characterDataModifiedWithNodeId:(int)id characterData:(id)data;
- (void)childNodeCountUpdatedWithNodeId:(int)id childNodeCount:(int)count;
- (void)childNodeInsertedWithParentNodeId:(int)id previousNodeId:(int)nodeId node:(id)node;
- (void)childNodeRemovedWithParentNodeId:(int)id nodeId:(int)nodeId;
- (void)customElementStateChangedWithNodeId:(int)id customElementState:(int64_t)state;
- (void)didAddEventListenerWithNodeId:(int)id;
- (void)didFireEventWithNodeId:(int)id eventName:(id)name timestamp:(double)timestamp data:(id *)data;
- (void)documentUpdated;
- (void)inlineStyleInvalidatedWithNodeIds:(id)ids;
- (void)inspectWithNodeId:(int)id;
- (void)powerEfficientPlaybackStateChangedWithNodeId:(int)id timestamp:(double)timestamp isPowerEfficient:(BOOL)efficient;
- (void)pseudoElementAddedWithParentId:(int)id pseudoElement:(id)element;
- (void)pseudoElementRemovedWithParentId:(int)id pseudoElementId:(int)elementId;
- (void)setChildNodesWithParentId:(int)id nodes:(id)nodes;
- (void)shadowRootPoppedWithHostId:(int)id rootId:(int)rootId;
- (void)shadowRootPushedWithHostId:(int)id root:(id)root;
- (void)willDestroyDOMNodeWithNodeId:(int)id;
- (void)willRemoveEventListenerWithNodeId:(int)id;
@end

@implementation RWIProtocolDOMDomainEventDispatcher

- (RWIProtocolDOMDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMDomainEventDispatcher;
  result = [(RWIProtocolDOMDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)documentUpdated
{
  v2 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v6, v2);
  v3 = v6;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v7;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = v7;
  WTF::JSONImpl::ObjectBase::setString(v3, &v5, &v4);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v4);
  WTF::JSONImpl::Value::toJSONString(&v7, v6);
  Inspector::FrontendRouter::sendEvent(v2, &v7);
  [(RWIProtocolCSSDomainEventDispatcher *)&v7 mediaQueryResultChanged];
}

- (void)inspectWithNodeId:(int)id
{
  v3 = *&id;
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v27, v4);
  v5 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v26 = v28[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v28[0];
  WTF::JSONImpl::ObjectBase::setString(v5, &v26, &v25);
  v6 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v25);
  WTF::JSONImpl::Object::create(&v26, v6);
  v7 = v26;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v24 = v28[0];
  WTF::JSONImpl::ObjectBase::setInteger(v7, &v24, v3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v24);
  v8 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v26;
  v26 = 0;
  v23 = v9;
  v24 = v28[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v8 + 2, &v24, &v23, v28);
  if (v29 == 1)
  {
    v17 = *(v8 + 9);
    if (v17 == *(v8 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v24);
    }

    else
    {
      v18 = *(v8 + 3);
      v19 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      }

      v20 = *(v8 + 9);
      *(v18 + 8 * v17) = v19;
      *(v8 + 9) = v20 + 1;
    }
  }

  v21 = v23;
  v23 = 0;
  if (v21)
  {
    Inspector::toJSONObjectArray(v21, v10, v11, v12, v13, v14, v15, v16, v23, v24);
  }

  v22 = v24;
  v24 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v10);
  }

  WTF::JSONImpl::Value::toJSONString(v28, v27);
  Inspector::FrontendRouter::sendEvent(v4, v28);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v28];
}

- (void)setChildNodesWithParentId:(int)id nodes:(id)nodes
{
  v50[0] = id;
  v63 = *MEMORY[0x277D85DE8];
  v49 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  if (!nodes)
  {
    v47 = @"nodes";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v5 = [nodes countByEnumeratingWithState:&v56 objects:v62 count:16];
  v6 = v5;
  if (v5)
  {
    v7 = *v57;
    v8 = *MEMORY[0x277CBE660];
    do
    {
      v9 = 0;
      do
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(nodes);
        }

        v10 = *(*(&v56 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = MEMORY[0x277CBEAD8];
          v12 = objc_opt_class();
          v47 = NSStringFromClass(v12);
          v48 = v10;
          [v11 raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }

        v9 = (v9 + 1);
      }

      while (v6 != v9);
      v5 = [nodes countByEnumeratingWithState:&v56 objects:v62 count:16];
      v6 = v5;
    }

    while (v5);
  }

  WTF::JSONImpl::Object::create(&v55, v5);
  v13 = v55;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v60[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v53 = v60[0];
  WTF::JSONImpl::ObjectBase::setString(v13, &v54, &v53);
  v14 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v53);
  WTF::JSONImpl::Object::create(&v54, v14);
  v15 = v54;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = v60[0];
  WTF::JSONImpl::ObjectBase::setInteger(v15, &v52, v50[0]);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v52);
  v16 = v54;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = v60[0];
  Inspector::toJSONObjectArray(nodes, &v50[1]);
  v17 = *&v50[1];
  *&v50[1] = 0;
  v51 = v17;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v16 + 16), &v52, &v51, v60);
  if (v61 == 1)
  {
    v25 = *(v16 + 36);
    if (v25 == *(v16 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v16 + 24, &v52);
    }

    else
    {
      v26 = *(v16 + 24);
      v27 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
      }

      v28 = *(v16 + 36);
      *(v26 + 8 * v25) = v27;
      *(v16 + 36) = v28 + 1;
    }
  }

  v29 = v51;
  v51 = 0;
  if (v29)
  {
    Inspector::toJSONObjectArray(v29, v18, v19, v20, v21, v22, v23, v24, v47, v48);
  }

  v30 = *&v50[1];
  *&v50[1] = 0;
  if (v30)
  {
    if (*v30 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v30;
    }
  }

  v31 = v52;
  v52 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v18);
  }

  v32 = v55;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v54;
  v54 = 0;
  v51 = v33;
  v52 = v60[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v32 + 2, &v52, &v51, v60);
  if (v61 == 1)
  {
    v41 = *(v32 + 9);
    if (v41 == *(v32 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v32 + 24, &v52);
    }

    else
    {
      v42 = *(v32 + 3);
      v43 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
      }

      v44 = *(v32 + 9);
      *(v42 + 8 * v41) = v43;
      *(v32 + 9) = v44 + 1;
    }
  }

  v45 = v51;
  v51 = 0;
  if (v45)
  {
    Inspector::toJSONObjectArray(v45, v34, v35, v36, v37, v38, v39, v40, v47, v48);
  }

  v46 = v52;
  v52 = 0;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v34);
  }

  WTF::JSONImpl::Value::toJSONString(v60, v55);
  Inspector::FrontendRouter::sendEvent(v49, v60);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v60];
}

- (void)attributeModifiedWithNodeId:(int)id name:(id)name value:(id)value
{
  v7 = *&id;
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (!name)
  {
    v31 = @"name";
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!value)
  {
    v31 = @"value";
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v39, v8);
  v11 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v40[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v40[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v38, &v37);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v37);
  WTF::JSONImpl::Object::create(&v38, v12);
  v13 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::ObjectBase::setInteger(v13, &v36, v7);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v36);
  v14 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  MEMORY[0x2743DB520](&v35, name);
  WTF::JSONImpl::ObjectBase::setString(v14, &v36, &v35);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v35);
  v15 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  MEMORY[0x2743DB520](&v34, value);
  WTF::JSONImpl::ObjectBase::setString(v15, &v36, &v34);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v34);
  v16 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  v17 = v38;
  v38 = 0;
  v33 = v17;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v16 + 2, &v36, &v33, v40);
  if (v41 == 1)
  {
    v25 = *(v16 + 9);
    if (v25 == *(v16 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v16 + 24, &v36);
    }

    else
    {
      v26 = *(v16 + 3);
      v27 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v28 = *(v16 + 9);
      *(v26 + 8 * v25) = v27;
      *(v16 + 9) = v28 + 1;
    }
  }

  v29 = v33;
  v33 = 0;
  if (v29)
  {
    Inspector::toJSONObjectArray(v29, v18, v19, v20, v21, v22, v23, v24, v31, v32);
  }

  v30 = v36;
  v36 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v18);
  }

  WTF::JSONImpl::Value::toJSONString(v40, v39);
  Inspector::FrontendRouter::sendEvent(v9, v40);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v40];
}

- (void)attributeRemovedWithNodeId:(int)id name:(id)name
{
  v5 = *&id;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  if (!name)
  {
    v27 = @"name";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v33, v6);
  v8 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32 = v34[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v34[0];
  WTF::JSONImpl::ObjectBase::setString(v8, &v32, &v31);
  v9 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v31);
  WTF::JSONImpl::Object::create(&v32, v9);
  v10 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  WTF::JSONImpl::ObjectBase::setInteger(v10, &v30, v5);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v30);
  v11 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  MEMORY[0x2743DB520](&v29, name);
  WTF::JSONImpl::ObjectBase::setString(v11, &v30, &v29);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v29);
  v12 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  v13 = v32;
  v32 = 0;
  v28 = v13;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v12 + 2, &v30, &v28, v34);
  if (v35 == 1)
  {
    v21 = *(v12 + 9);
    if (v21 == *(v12 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v30);
    }

    else
    {
      v22 = *(v12 + 3);
      v23 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      }

      v24 = *(v12 + 9);
      *(v22 + 8 * v21) = v23;
      *(v12 + 9) = v24 + 1;
    }
  }

  v25 = v28;
  v28 = 0;
  if (v25)
  {
    Inspector::toJSONObjectArray(v25, v14, v15, v16, v17, v18, v19, v20, v27, v28);
  }

  v26 = v30;
  v30 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v14);
  }

  WTF::JSONImpl::Value::toJSONString(v34, v33);
  Inspector::FrontendRouter::sendEvent(v7, v34);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v34];
}

- (void)inlineStyleInvalidatedWithNodeIds:(id)ids
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!ids)
  {
    v39 = @"nodeIds";
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v45, v4);
  v6 = v45;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v44 = v46[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v43 = v46[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v44, &v43);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v43);
  WTF::JSONImpl::Object::create(&v44, v7);
  v8 = v44;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v42 = v46[0];
  Inspector::toJSONIntegerArray(ids, &v40);
  v9 = v40;
  v40 = 0;
  v41 = v9;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v8 + 16), &v42, &v41, v46);
  if (v47 == 1)
  {
    v17 = *(v8 + 36);
    if (v17 == *(v8 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v42);
    }

    else
    {
      v18 = *(v8 + 24);
      v19 = v42;
      if (v42)
      {
        atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
      }

      v20 = *(v8 + 36);
      *(v18 + 8 * v17) = v19;
      *(v8 + 36) = v20 + 1;
    }
  }

  v21 = v41;
  v41 = 0;
  if (v21)
  {
    Inspector::toJSONObjectArray(v21, v10, v11, v12, v13, v14, v15, v16, v39, v40);
  }

  v22 = v40;
  v40 = 0;
  if (v22)
  {
    if (*v22 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v22;
    }
  }

  v23 = v42;
  v42 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v10);
  }

  v24 = v45;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v44;
  v44 = 0;
  v41 = v25;
  v42 = v46[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v24 + 2, &v42, &v41, v46);
  if (v47 == 1)
  {
    v33 = *(v24 + 9);
    if (v33 == *(v24 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v24 + 24, &v42);
    }

    else
    {
      v34 = *(v24 + 3);
      v35 = v42;
      if (v42)
      {
        atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
      }

      v36 = *(v24 + 9);
      *(v34 + 8 * v33) = v35;
      *(v24 + 9) = v36 + 1;
    }
  }

  v37 = v41;
  v41 = 0;
  if (v37)
  {
    Inspector::toJSONObjectArray(v37, v26, v27, v28, v29, v30, v31, v32, v39, v40);
  }

  v38 = v42;
  v42 = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v26);
  }

  WTF::JSONImpl::Value::toJSONString(v46, v45);
  Inspector::FrontendRouter::sendEvent(v5, v46);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v46];
}

- (void)characterDataModifiedWithNodeId:(int)id characterData:(id)data
{
  v5 = *&id;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  if (!data)
  {
    v27 = @"characterData";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v33, v6);
  v8 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32 = v34[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v34[0];
  WTF::JSONImpl::ObjectBase::setString(v8, &v32, &v31);
  v9 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v31);
  WTF::JSONImpl::Object::create(&v32, v9);
  v10 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  WTF::JSONImpl::ObjectBase::setInteger(v10, &v30, v5);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v30);
  v11 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  MEMORY[0x2743DB520](&v29, data);
  WTF::JSONImpl::ObjectBase::setString(v11, &v30, &v29);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v29);
  v12 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  v13 = v32;
  v32 = 0;
  v28 = v13;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v12 + 2, &v30, &v28, v34);
  if (v35 == 1)
  {
    v21 = *(v12 + 9);
    if (v21 == *(v12 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v30);
    }

    else
    {
      v22 = *(v12 + 3);
      v23 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      }

      v24 = *(v12 + 9);
      *(v22 + 8 * v21) = v23;
      *(v12 + 9) = v24 + 1;
    }
  }

  v25 = v28;
  v28 = 0;
  if (v25)
  {
    Inspector::toJSONObjectArray(v25, v14, v15, v16, v17, v18, v19, v20, v27, v28);
  }

  v26 = v30;
  v30 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v14);
  }

  WTF::JSONImpl::Value::toJSONString(v34, v33);
  Inspector::FrontendRouter::sendEvent(v7, v34);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v34];
}

- (void)childNodeCountUpdatedWithNodeId:(int)id childNodeCount:(int)count
{
  v4 = *&count;
  v5 = *&id;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v30, v6);
  v7 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v31[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v31[0];
  WTF::JSONImpl::ObjectBase::setString(v7, &v29, &v28);
  v8 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v28);
  WTF::JSONImpl::Object::create(&v29, v8);
  v9 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  WTF::JSONImpl::ObjectBase::setInteger(v9, &v27, v5);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v27);
  v10 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  WTF::JSONImpl::ObjectBase::setInteger(v10, &v27, v4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v27);
  v11 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v12 = v29;
  v29 = 0;
  v26 = v12;
  v27 = v31[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v11 + 2, &v27, &v26, v31);
  if (v32 == 1)
  {
    v20 = *(v11 + 9);
    if (v20 == *(v11 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v11 + 24, &v27);
    }

    else
    {
      v21 = *(v11 + 3);
      v22 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v23 = *(v11 + 9);
      *(v21 + 8 * v20) = v22;
      *(v11 + 9) = v23 + 1;
    }
  }

  v24 = v26;
  v26 = 0;
  if (v24)
  {
    Inspector::toJSONObjectArray(v24, v13, v14, v15, v16, v17, v18, v19, v26, v27);
  }

  v25 = v27;
  v27 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v13);
  }

  WTF::JSONImpl::Value::toJSONString(v31, v30);
  Inspector::FrontendRouter::sendEvent(v6, v31);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v31];
}

- (void)childNodeInsertedWithParentNodeId:(int)id previousNodeId:(int)nodeId node:(id)node
{
  v6 = *&nodeId;
  v7 = *&id;
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  if (!node)
  {
    v44 = @"node";
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v51, v8);
  v10 = v51;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v52[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v49 = v52[0];
  WTF::JSONImpl::ObjectBase::setString(v10, &v50, &v49);
  v11 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v49);
  WTF::JSONImpl::Object::create(&v50, v11);
  v12 = v50;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v48 = v52[0];
  WTF::JSONImpl::ObjectBase::setInteger(v12, &v48, v7);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v48);
  v13 = v50;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v48 = v52[0];
  WTF::JSONImpl::ObjectBase::setInteger(v13, &v48, v6);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v48);
  v14 = v50;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v48 = v52[0];
  if (node)
  {
    objc_msgSend_toJSONObject(node);
    v15 = v45;
  }

  else
  {
    v15 = 0;
  }

  v46 = 0;
  v47 = v15;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v14 + 16), &v48, &v47, v52);
  if (v53 == 1)
  {
    v23 = *(v14 + 36);
    if (v23 == *(v14 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v14 + 24, &v48);
    }

    else
    {
      v24 = *(v14 + 24);
      v25 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
      }

      v26 = *(v14 + 36);
      *(v24 + 8 * v23) = v25;
      *(v14 + 36) = v26 + 1;
    }
  }

  v27 = v47;
  v47 = 0;
  if (v27)
  {
    Inspector::toJSONObjectArray(v27, v16, v17, v18, v19, v20, v21, v22, v44, 0);
  }

  if (v46)
  {
    if (*v46 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v46;
    }
  }

  v28 = v48;
  v48 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v16);
  }

  v29 = v51;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v50;
  v50 = 0;
  v47 = v30;
  v48 = v52[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v29 + 2, &v48, &v47, v52);
  if (v53 == 1)
  {
    v38 = *(v29 + 9);
    if (v38 == *(v29 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v29 + 24, &v48);
    }

    else
    {
      v39 = *(v29 + 3);
      v40 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
      }

      v41 = *(v29 + 9);
      *(v39 + 8 * v38) = v40;
      *(v29 + 9) = v41 + 1;
    }
  }

  v42 = v47;
  v47 = 0;
  if (v42)
  {
    Inspector::toJSONObjectArray(v42, v31, v32, v33, v34, v35, v36, v37, v44, 0);
  }

  v43 = v48;
  v48 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v31);
  }

  WTF::JSONImpl::Value::toJSONString(v52, v51);
  Inspector::FrontendRouter::sendEvent(v9, v52);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v52];
}

- (void)childNodeRemovedWithParentNodeId:(int)id nodeId:(int)nodeId
{
  v4 = *&nodeId;
  v5 = *&id;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v30, v6);
  v7 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v31[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v31[0];
  WTF::JSONImpl::ObjectBase::setString(v7, &v29, &v28);
  v8 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v28);
  WTF::JSONImpl::Object::create(&v29, v8);
  v9 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  WTF::JSONImpl::ObjectBase::setInteger(v9, &v27, v5);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v27);
  v10 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  WTF::JSONImpl::ObjectBase::setInteger(v10, &v27, v4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v27);
  v11 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v12 = v29;
  v29 = 0;
  v26 = v12;
  v27 = v31[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v11 + 2, &v27, &v26, v31);
  if (v32 == 1)
  {
    v20 = *(v11 + 9);
    if (v20 == *(v11 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v11 + 24, &v27);
    }

    else
    {
      v21 = *(v11 + 3);
      v22 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v23 = *(v11 + 9);
      *(v21 + 8 * v20) = v22;
      *(v11 + 9) = v23 + 1;
    }
  }

  v24 = v26;
  v26 = 0;
  if (v24)
  {
    Inspector::toJSONObjectArray(v24, v13, v14, v15, v16, v17, v18, v19, v26, v27);
  }

  v25 = v27;
  v27 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v13);
  }

  WTF::JSONImpl::Value::toJSONString(v31, v30);
  Inspector::FrontendRouter::sendEvent(v6, v31);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v31];
}

- (void)willDestroyDOMNodeWithNodeId:(int)id
{
  v3 = *&id;
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v27, v4);
  v5 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v26 = v28[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v28[0];
  WTF::JSONImpl::ObjectBase::setString(v5, &v26, &v25);
  v6 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v25);
  WTF::JSONImpl::Object::create(&v26, v6);
  v7 = v26;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v24 = v28[0];
  WTF::JSONImpl::ObjectBase::setInteger(v7, &v24, v3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v24);
  v8 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v26;
  v26 = 0;
  v23 = v9;
  v24 = v28[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v8 + 2, &v24, &v23, v28);
  if (v29 == 1)
  {
    v17 = *(v8 + 9);
    if (v17 == *(v8 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v24);
    }

    else
    {
      v18 = *(v8 + 3);
      v19 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      }

      v20 = *(v8 + 9);
      *(v18 + 8 * v17) = v19;
      *(v8 + 9) = v20 + 1;
    }
  }

  v21 = v23;
  v23 = 0;
  if (v21)
  {
    Inspector::toJSONObjectArray(v21, v10, v11, v12, v13, v14, v15, v16, v23, v24);
  }

  v22 = v24;
  v24 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v10);
  }

  WTF::JSONImpl::Value::toJSONString(v28, v27);
  Inspector::FrontendRouter::sendEvent(v4, v28);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v28];
}

- (void)shadowRootPushedWithHostId:(int)id root:(id)root
{
  v5 = *&id;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  if (!root)
  {
    v41 = @"root";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v48, v6);
  v8 = v48;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v49[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v46 = v49[0];
  WTF::JSONImpl::ObjectBase::setString(v8, &v47, &v46);
  v9 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v46);
  WTF::JSONImpl::Object::create(&v47, v9);
  v10 = v47;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v45 = v49[0];
  WTF::JSONImpl::ObjectBase::setInteger(v10, &v45, v5);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v45);
  v11 = v47;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v45 = v49[0];
  if (root)
  {
    objc_msgSend_toJSONObject(root);
    v12 = v42;
  }

  else
  {
    v12 = 0;
  }

  v43 = 0;
  v44 = v12;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v11 + 16), &v45, &v44, v49);
  if (v50 == 1)
  {
    v20 = *(v11 + 36);
    if (v20 == *(v11 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v11 + 24, &v45);
    }

    else
    {
      v21 = *(v11 + 24);
      v22 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
      }

      v23 = *(v11 + 36);
      *(v21 + 8 * v20) = v22;
      *(v11 + 36) = v23 + 1;
    }
  }

  v24 = v44;
  v44 = 0;
  if (v24)
  {
    Inspector::toJSONObjectArray(v24, v13, v14, v15, v16, v17, v18, v19, v41, 0);
  }

  if (v43)
  {
    if (*v43 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v43;
    }
  }

  v25 = v45;
  v45 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v13);
  }

  v26 = v48;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v47;
  v47 = 0;
  v44 = v27;
  v45 = v49[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v26 + 2, &v45, &v44, v49);
  if (v50 == 1)
  {
    v35 = *(v26 + 9);
    if (v35 == *(v26 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v26 + 24, &v45);
    }

    else
    {
      v36 = *(v26 + 3);
      v37 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
      }

      v38 = *(v26 + 9);
      *(v36 + 8 * v35) = v37;
      *(v26 + 9) = v38 + 1;
    }
  }

  v39 = v44;
  v44 = 0;
  if (v39)
  {
    Inspector::toJSONObjectArray(v39, v28, v29, v30, v31, v32, v33, v34, v41, 0);
  }

  v40 = v45;
  v45 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v28);
  }

  WTF::JSONImpl::Value::toJSONString(v49, v48);
  Inspector::FrontendRouter::sendEvent(v7, v49);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v49];
}

- (void)shadowRootPoppedWithHostId:(int)id rootId:(int)rootId
{
  v4 = *&rootId;
  v5 = *&id;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v30, v6);
  v7 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v31[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v31[0];
  WTF::JSONImpl::ObjectBase::setString(v7, &v29, &v28);
  v8 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v28);
  WTF::JSONImpl::Object::create(&v29, v8);
  v9 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  WTF::JSONImpl::ObjectBase::setInteger(v9, &v27, v5);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v27);
  v10 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  WTF::JSONImpl::ObjectBase::setInteger(v10, &v27, v4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v27);
  v11 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v12 = v29;
  v29 = 0;
  v26 = v12;
  v27 = v31[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v11 + 2, &v27, &v26, v31);
  if (v32 == 1)
  {
    v20 = *(v11 + 9);
    if (v20 == *(v11 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v11 + 24, &v27);
    }

    else
    {
      v21 = *(v11 + 3);
      v22 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v23 = *(v11 + 9);
      *(v21 + 8 * v20) = v22;
      *(v11 + 9) = v23 + 1;
    }
  }

  v24 = v26;
  v26 = 0;
  if (v24)
  {
    Inspector::toJSONObjectArray(v24, v13, v14, v15, v16, v17, v18, v19, v26, v27);
  }

  v25 = v27;
  v27 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v13);
  }

  WTF::JSONImpl::Value::toJSONString(v31, v30);
  Inspector::FrontendRouter::sendEvent(v6, v31);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v31];
}

- (void)customElementStateChangedWithNodeId:(int)id customElementState:(int64_t)state
{
  v4 = *&id;
  v5 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v35, v5);
  v6 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v34 = v36[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v36[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v34, &v33);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v33);
  WTF::JSONImpl::Object::create(&v34, v7);
  v8 = v34;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32 = v36[0];
  WTF::JSONImpl::ObjectBase::setInteger(v8, &v32, v4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v32);
  v9 = v34;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32 = v36[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if (v29)
  {
    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v30, v29);
    if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v10);
    }
  }

  else
  {
    v30 = &stru_2882B1C88;
    v26 = &stru_2882B1C88;
  }

  MEMORY[0x2743DB520](&v31, v30);
  WTF::JSONImpl::ObjectBase::setString(v9, &v32, &v31);
  [RWIProtocolConsoleDomainEventDispatcher messagesClearedWithReason:?];
  v11 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32 = v36[0];
  v12 = v34;
  v34 = 0;
  v28 = v12;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v11 + 2, &v32, &v28, v36);
  if (v37 == 1)
  {
    v20 = *(v11 + 9);
    if (v20 == *(v11 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v11 + 24, &v32);
    }

    else
    {
      v21 = *(v11 + 3);
      v22 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
      }

      v23 = *(v11 + 9);
      *(v21 + 8 * v20) = v22;
      *(v11 + 9) = v23 + 1;
    }
  }

  v24 = v28;
  v28 = 0;
  if (v24)
  {
    Inspector::toJSONObjectArray(v24, v13, v14, v15, v16, v17, v18, v19, v27, v28);
  }

  v25 = v32;
  v32 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v13);
  }

  WTF::JSONImpl::Value::toJSONString(v36, v35);
  Inspector::FrontendRouter::sendEvent(v5, v36);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v36];
}

- (void)pseudoElementAddedWithParentId:(int)id pseudoElement:(id)element
{
  v5 = *&id;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  if (!element)
  {
    v41 = @"pseudoElement";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v48, v6);
  v8 = v48;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v49[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v46 = v49[0];
  WTF::JSONImpl::ObjectBase::setString(v8, &v47, &v46);
  v9 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v46);
  WTF::JSONImpl::Object::create(&v47, v9);
  v10 = v47;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v45 = v49[0];
  WTF::JSONImpl::ObjectBase::setInteger(v10, &v45, v5);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v45);
  v11 = v47;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v45 = v49[0];
  if (element)
  {
    objc_msgSend_toJSONObject(element);
    v12 = v42;
  }

  else
  {
    v12 = 0;
  }

  v43 = 0;
  v44 = v12;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v11 + 16), &v45, &v44, v49);
  if (v50 == 1)
  {
    v20 = *(v11 + 36);
    if (v20 == *(v11 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v11 + 24, &v45);
    }

    else
    {
      v21 = *(v11 + 24);
      v22 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
      }

      v23 = *(v11 + 36);
      *(v21 + 8 * v20) = v22;
      *(v11 + 36) = v23 + 1;
    }
  }

  v24 = v44;
  v44 = 0;
  if (v24)
  {
    Inspector::toJSONObjectArray(v24, v13, v14, v15, v16, v17, v18, v19, v41, 0);
  }

  if (v43)
  {
    if (*v43 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v43;
    }
  }

  v25 = v45;
  v45 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v13);
  }

  v26 = v48;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v47;
  v47 = 0;
  v44 = v27;
  v45 = v49[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v26 + 2, &v45, &v44, v49);
  if (v50 == 1)
  {
    v35 = *(v26 + 9);
    if (v35 == *(v26 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v26 + 24, &v45);
    }

    else
    {
      v36 = *(v26 + 3);
      v37 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
      }

      v38 = *(v26 + 9);
      *(v36 + 8 * v35) = v37;
      *(v26 + 9) = v38 + 1;
    }
  }

  v39 = v44;
  v44 = 0;
  if (v39)
  {
    Inspector::toJSONObjectArray(v39, v28, v29, v30, v31, v32, v33, v34, v41, 0);
  }

  v40 = v45;
  v45 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v28);
  }

  WTF::JSONImpl::Value::toJSONString(v49, v48);
  Inspector::FrontendRouter::sendEvent(v7, v49);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v49];
}

- (void)pseudoElementRemovedWithParentId:(int)id pseudoElementId:(int)elementId
{
  v4 = *&elementId;
  v5 = *&id;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v30, v6);
  v7 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v31[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v31[0];
  WTF::JSONImpl::ObjectBase::setString(v7, &v29, &v28);
  v8 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v28);
  WTF::JSONImpl::Object::create(&v29, v8);
  v9 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  WTF::JSONImpl::ObjectBase::setInteger(v9, &v27, v5);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v27);
  v10 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  WTF::JSONImpl::ObjectBase::setInteger(v10, &v27, v4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v27);
  v11 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v12 = v29;
  v29 = 0;
  v26 = v12;
  v27 = v31[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v11 + 2, &v27, &v26, v31);
  if (v32 == 1)
  {
    v20 = *(v11 + 9);
    if (v20 == *(v11 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v11 + 24, &v27);
    }

    else
    {
      v21 = *(v11 + 3);
      v22 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v23 = *(v11 + 9);
      *(v21 + 8 * v20) = v22;
      *(v11 + 9) = v23 + 1;
    }
  }

  v24 = v26;
  v26 = 0;
  if (v24)
  {
    Inspector::toJSONObjectArray(v24, v13, v14, v15, v16, v17, v18, v19, v26, v27);
  }

  v25 = v27;
  v27 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v13);
  }

  WTF::JSONImpl::Value::toJSONString(v31, v30);
  Inspector::FrontendRouter::sendEvent(v6, v31);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v31];
}

- (void)didAddEventListenerWithNodeId:(int)id
{
  v3 = *&id;
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v27, v4);
  v5 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v26 = v28[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v28[0];
  WTF::JSONImpl::ObjectBase::setString(v5, &v26, &v25);
  v6 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v25);
  WTF::JSONImpl::Object::create(&v26, v6);
  v7 = v26;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v24 = v28[0];
  WTF::JSONImpl::ObjectBase::setInteger(v7, &v24, v3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v24);
  v8 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v26;
  v26 = 0;
  v23 = v9;
  v24 = v28[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v8 + 2, &v24, &v23, v28);
  if (v29 == 1)
  {
    v17 = *(v8 + 9);
    if (v17 == *(v8 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v24);
    }

    else
    {
      v18 = *(v8 + 3);
      v19 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      }

      v20 = *(v8 + 9);
      *(v18 + 8 * v17) = v19;
      *(v8 + 9) = v20 + 1;
    }
  }

  v21 = v23;
  v23 = 0;
  if (v21)
  {
    Inspector::toJSONObjectArray(v21, v10, v11, v12, v13, v14, v15, v16, v23, v24);
  }

  v22 = v24;
  v24 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v10);
  }

  WTF::JSONImpl::Value::toJSONString(v28, v27);
  Inspector::FrontendRouter::sendEvent(v4, v28);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v28];
}

- (void)willRemoveEventListenerWithNodeId:(int)id
{
  v3 = *&id;
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v27, v4);
  v5 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v26 = v28[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v28[0];
  WTF::JSONImpl::ObjectBase::setString(v5, &v26, &v25);
  v6 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v25);
  WTF::JSONImpl::Object::create(&v26, v6);
  v7 = v26;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v24 = v28[0];
  WTF::JSONImpl::ObjectBase::setInteger(v7, &v24, v3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v24);
  v8 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v26;
  v26 = 0;
  v23 = v9;
  v24 = v28[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v8 + 2, &v24, &v23, v28);
  if (v29 == 1)
  {
    v17 = *(v8 + 9);
    if (v17 == *(v8 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v24);
    }

    else
    {
      v18 = *(v8 + 3);
      v19 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      }

      v20 = *(v8 + 9);
      *(v18 + 8 * v17) = v19;
      *(v8 + 9) = v20 + 1;
    }
  }

  v21 = v23;
  v23 = 0;
  if (v21)
  {
    Inspector::toJSONObjectArray(v21, v10, v11, v12, v13, v14, v15, v16, v23, v24);
  }

  v22 = v24;
  v24 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v10);
  }

  WTF::JSONImpl::Value::toJSONString(v28, v27);
  Inspector::FrontendRouter::sendEvent(v4, v28);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v28];
}

- (void)didFireEventWithNodeId:(int)id eventName:(id)name timestamp:(double)timestamp data:(id *)data
{
  v9 = *&id;
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  if (!name)
  {
    v49 = @"eventName";
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (data && !*data)
  {
    v49 = @"data";
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v57, v10);
  v12 = v57;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v56 = v58[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v55 = v58[0];
  WTF::JSONImpl::ObjectBase::setString(v12, &v56, &v55);
  v13 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v55);
  WTF::JSONImpl::Object::create(&v56, v13);
  v14 = v56;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v58[0];
  WTF::JSONImpl::ObjectBase::setInteger(v14, &v54, v9);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v54);
  v15 = v56;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v58[0];
  MEMORY[0x2743DB520](&v53, name);
  WTF::JSONImpl::ObjectBase::setString(v15, &v54, &v53);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v53);
  v16 = v56;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v58[0];
  WTF::JSONImpl::ObjectBase::setDouble(v16, &v54, timestamp);
  v18 = v54;
  v54 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  if (data)
  {
    v19 = v56;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v54 = v58[0];
    if (*data)
    {
      objc_msgSend_toJSONObject(*data);
      v20 = v51;
    }

    else
    {
      v20 = 0;
    }

    v52 = v20;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v19 + 16), &v54, &v52, v58);
    if (v59 == 1)
    {
      v28 = *(v19 + 36);
      if (v28 == *(v19 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v19 + 24, &v54);
      }

      else
      {
        v29 = *(v19 + 24);
        v30 = v54;
        if (v54)
        {
          atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
        }

        v31 = *(v19 + 36);
        *(v29 + 8 * v28) = v30;
        *(v19 + 36) = v31 + 1;
      }
    }

    v32 = v52;
    v52 = 0;
    if (v32)
    {
      Inspector::toJSONObjectArray(v32, v21, v22, v23, v24, v25, v26, v27, v49, v50);
    }

    v33 = v54;
    v54 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v21);
    }
  }

  v34 = v57;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v58[0];
  v35 = v56;
  v56 = 0;
  v52 = v35;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v34 + 2, &v54, &v52, v58);
  if (v59 == 1)
  {
    v43 = *(v34 + 9);
    if (v43 == *(v34 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v34 + 24, &v54);
    }

    else
    {
      v44 = *(v34 + 3);
      v45 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
      }

      v46 = *(v34 + 9);
      *(v44 + 8 * v43) = v45;
      *(v34 + 9) = v46 + 1;
    }
  }

  v47 = v52;
  v52 = 0;
  if (v47)
  {
    Inspector::toJSONObjectArray(v47, v36, v37, v38, v39, v40, v41, v42, v49, v50);
  }

  v48 = v54;
  v54 = 0;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, v36);
  }

  WTF::JSONImpl::Value::toJSONString(v58, v57);
  Inspector::FrontendRouter::sendEvent(v11, v58);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v58];
}

- (void)powerEfficientPlaybackStateChangedWithNodeId:(int)id timestamp:(double)timestamp isPowerEfficient:(BOOL)efficient
{
  efficientCopy = efficient;
  v7 = *&id;
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v33, v8);
  v9 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32 = v34[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v34[0];
  WTF::JSONImpl::ObjectBase::setString(v9, &v32, &v31);
  v10 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v31);
  WTF::JSONImpl::Object::create(&v32, v10);
  v11 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  WTF::JSONImpl::ObjectBase::setInteger(v11, &v30, v7);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v30);
  v12 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  WTF::JSONImpl::ObjectBase::setDouble(v12, &v30, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v30);
  v13 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  WTF::JSONImpl::ObjectBase::setBoolean(v13, &v30, efficientCopy);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v30);
  v14 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v15 = v32;
  v32 = 0;
  v29 = v15;
  v30 = v34[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v14 + 2, &v30, &v29, v34);
  if (v35 == 1)
  {
    v23 = *(v14 + 9);
    if (v23 == *(v14 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v14 + 24, &v30);
    }

    else
    {
      v24 = *(v14 + 3);
      v25 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      }

      v26 = *(v14 + 9);
      *(v24 + 8 * v23) = v25;
      *(v14 + 9) = v26 + 1;
    }
  }

  v27 = v29;
  v29 = 0;
  if (v27)
  {
    Inspector::toJSONObjectArray(v27, v16, v17, v18, v19, v20, v21, v22, v29, v30);
  }

  v28 = v30;
  v30 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v16);
  }

  WTF::JSONImpl::Value::toJSONString(v34, v33);
  Inspector::FrontendRouter::sendEvent(v8, v34);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v34];
}

@end