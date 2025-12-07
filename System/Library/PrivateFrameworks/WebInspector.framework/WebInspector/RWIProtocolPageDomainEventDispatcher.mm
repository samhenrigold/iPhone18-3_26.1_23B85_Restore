@interface RWIProtocolPageDomainEventDispatcher
- (RWIProtocolPageDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (void)defaultUserPreferencesDidChangeWithPreferences:(id)preferences;
- (void)domContentEventFiredWithTimestamp:(double)timestamp;
- (void)frameClearedScheduledNavigationWithFrameId:(id)id;
- (void)frameDetachedWithFrameId:(id)id;
- (void)frameNavigatedWithFrame:(id)frame;
- (void)frameScheduledNavigationWithFrameId:(id)id delay:(double)delay;
- (void)frameStartedLoadingWithFrameId:(id)id;
- (void)frameStoppedLoadingWithFrameId:(id)id;
- (void)loadEventFiredWithTimestamp:(double)timestamp;
@end

@implementation RWIProtocolPageDomainEventDispatcher

- (RWIProtocolPageDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolPageDomainEventDispatcher;
  result = [(RWIProtocolPageDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)domContentEventFiredWithTimestamp:(double)timestamp
{
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
  WTF::JSONImpl::ObjectBase::setDouble(v7, &v24, timestamp);
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

- (void)loadEventFiredWithTimestamp:(double)timestamp
{
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
  WTF::JSONImpl::ObjectBase::setDouble(v7, &v24, timestamp);
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

- (void)frameNavigatedWithFrame:(id)frame
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!frame)
  {
    v38 = @"frame";
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
  if (frame)
  {
    objc_msgSend_toJSONObject(frame);
    v9 = v39;
  }

  else
  {
    v9 = 0;
  }

  v40 = 0;
  v41 = v9;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v8 + 16), &v42, &v41, v46);
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
    Inspector::toJSONObjectArray(v21, v10, v11, v12, v13, v14, v15, v16, v38, 0);
  }

  if (v40)
  {
    if (*v40 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v40;
    }
  }

  v22 = v42;
  v42 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v10);
  }

  v23 = v45;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v24 = v44;
  v44 = 0;
  v41 = v24;
  v42 = v46[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v23 + 2, &v42, &v41, v46);
  if (v47 == 1)
  {
    v32 = *(v23 + 9);
    if (v32 == *(v23 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v23 + 24, &v42);
    }

    else
    {
      v33 = *(v23 + 3);
      v34 = v42;
      if (v42)
      {
        atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
      }

      v35 = *(v23 + 9);
      *(v33 + 8 * v32) = v34;
      *(v23 + 9) = v35 + 1;
    }
  }

  v36 = v41;
  v41 = 0;
  if (v36)
  {
    Inspector::toJSONObjectArray(v36, v25, v26, v27, v28, v29, v30, v31, v38, 0);
  }

  v37 = v42;
  v42 = 0;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v25);
  }

  WTF::JSONImpl::Value::toJSONString(v46, v45);
  Inspector::FrontendRouter::sendEvent(v5, v46);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v46];
}

- (void)frameDetachedWithFrameId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v24 = @"frameId";
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v30, v4);
  v6 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v31[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v31[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v29, &v28);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v28);
  WTF::JSONImpl::Object::create(&v29, v7);
  v8 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  MEMORY[0x2743DB520](&v26, id);
  WTF::JSONImpl::ObjectBase::setString(v8, &v27, &v26);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v26);
  v9 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  v10 = v29;
  v29 = 0;
  v25 = v10;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v9 + 2, &v27, &v25, v31);
  if (v32 == 1)
  {
    v18 = *(v9 + 9);
    if (v18 == *(v9 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v27);
    }

    else
    {
      v19 = *(v9 + 3);
      v20 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v21 = *(v9 + 9);
      *(v19 + 8 * v18) = v20;
      *(v9 + 9) = v21 + 1;
    }
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
    Inspector::toJSONObjectArray(v22, v11, v12, v13, v14, v15, v16, v17, v24, v25);
  }

  v23 = v27;
  v27 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v11);
  }

  WTF::JSONImpl::Value::toJSONString(v31, v30);
  Inspector::FrontendRouter::sendEvent(v5, v31);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v31];
}

- (void)frameStartedLoadingWithFrameId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v24 = @"frameId";
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v30, v4);
  v6 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v31[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v31[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v29, &v28);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v28);
  WTF::JSONImpl::Object::create(&v29, v7);
  v8 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  MEMORY[0x2743DB520](&v26, id);
  WTF::JSONImpl::ObjectBase::setString(v8, &v27, &v26);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v26);
  v9 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  v10 = v29;
  v29 = 0;
  v25 = v10;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v9 + 2, &v27, &v25, v31);
  if (v32 == 1)
  {
    v18 = *(v9 + 9);
    if (v18 == *(v9 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v27);
    }

    else
    {
      v19 = *(v9 + 3);
      v20 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v21 = *(v9 + 9);
      *(v19 + 8 * v18) = v20;
      *(v9 + 9) = v21 + 1;
    }
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
    Inspector::toJSONObjectArray(v22, v11, v12, v13, v14, v15, v16, v17, v24, v25);
  }

  v23 = v27;
  v27 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v11);
  }

  WTF::JSONImpl::Value::toJSONString(v31, v30);
  Inspector::FrontendRouter::sendEvent(v5, v31);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v31];
}

- (void)frameStoppedLoadingWithFrameId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v24 = @"frameId";
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v30, v4);
  v6 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v31[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v31[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v29, &v28);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v28);
  WTF::JSONImpl::Object::create(&v29, v7);
  v8 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  MEMORY[0x2743DB520](&v26, id);
  WTF::JSONImpl::ObjectBase::setString(v8, &v27, &v26);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v26);
  v9 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  v10 = v29;
  v29 = 0;
  v25 = v10;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v9 + 2, &v27, &v25, v31);
  if (v32 == 1)
  {
    v18 = *(v9 + 9);
    if (v18 == *(v9 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v27);
    }

    else
    {
      v19 = *(v9 + 3);
      v20 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v21 = *(v9 + 9);
      *(v19 + 8 * v18) = v20;
      *(v9 + 9) = v21 + 1;
    }
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
    Inspector::toJSONObjectArray(v22, v11, v12, v13, v14, v15, v16, v17, v24, v25);
  }

  v23 = v27;
  v27 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v11);
  }

  WTF::JSONImpl::Value::toJSONString(v31, v30);
  Inspector::FrontendRouter::sendEvent(v5, v31);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v31];
}

- (void)frameScheduledNavigationWithFrameId:(id)id delay:(double)delay
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  if (!id)
  {
    v27 = @"frameId";
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
  MEMORY[0x2743DB520](&v29, id);
  WTF::JSONImpl::ObjectBase::setString(v10, &v30, &v29);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v29);
  v11 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  WTF::JSONImpl::ObjectBase::setDouble(v11, &v30, delay);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v30);
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

- (void)frameClearedScheduledNavigationWithFrameId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v24 = @"frameId";
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v30, v4);
  v6 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v31[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v31[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v29, &v28);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v28);
  WTF::JSONImpl::Object::create(&v29, v7);
  v8 = v29;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  MEMORY[0x2743DB520](&v26, id);
  WTF::JSONImpl::ObjectBase::setString(v8, &v27, &v26);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v26);
  v9 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v31[0];
  v10 = v29;
  v29 = 0;
  v25 = v10;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v9 + 2, &v27, &v25, v31);
  if (v32 == 1)
  {
    v18 = *(v9 + 9);
    if (v18 == *(v9 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v27);
    }

    else
    {
      v19 = *(v9 + 3);
      v20 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v21 = *(v9 + 9);
      *(v19 + 8 * v18) = v20;
      *(v9 + 9) = v21 + 1;
    }
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
    Inspector::toJSONObjectArray(v22, v11, v12, v13, v14, v15, v16, v17, v24, v25);
  }

  v23 = v27;
  v27 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v11);
  }

  WTF::JSONImpl::Value::toJSONString(v31, v30);
  Inspector::FrontendRouter::sendEvent(v5, v31);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v31];
}

- (void)defaultUserPreferencesDidChangeWithPreferences:(id)preferences
{
  v61 = *MEMORY[0x277D85DE8];
  v47 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  if (!preferences)
  {
    v45 = @"preferences";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = [preferences countByEnumeratingWithState:&v54 objects:v60 count:16];
  v5 = v4;
  if (v4)
  {
    v6 = *v55;
    v7 = *MEMORY[0x277CBE660];
    do
    {
      v8 = 0;
      do
      {
        if (*v55 != v6)
        {
          objc_enumerationMutation(preferences);
        }

        v9 = *(*(&v54 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = MEMORY[0x277CBEAD8];
          v11 = objc_opt_class();
          v45 = NSStringFromClass(v11);
          v46 = v9;
          [v10 raise:v7 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }

        v8 = (v8 + 1);
      }

      while (v5 != v8);
      v4 = [preferences countByEnumeratingWithState:&v54 objects:v60 count:16];
      v5 = v4;
    }

    while (v4);
  }

  WTF::JSONImpl::Object::create(&v53, v4);
  v12 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = v58[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v58[0];
  WTF::JSONImpl::ObjectBase::setString(v12, &v52, &v51);
  v13 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v51);
  WTF::JSONImpl::Object::create(&v52, v13);
  v14 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v58[0];
  Inspector::toJSONObjectArray(preferences, &v48);
  v15 = v48;
  v48 = 0;
  v49 = v15;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v14 + 16), &v50, &v49, v58);
  if (v59 == 1)
  {
    v23 = *(v14 + 36);
    if (v23 == *(v14 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v14 + 24, &v50);
    }

    else
    {
      v24 = *(v14 + 24);
      v25 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v26 = *(v14 + 36);
      *(v24 + 8 * v23) = v25;
      *(v14 + 36) = v26 + 1;
    }
  }

  v27 = v49;
  v49 = 0;
  if (v27)
  {
    Inspector::toJSONObjectArray(v27, v16, v17, v18, v19, v20, v21, v22, v45, v46);
  }

  v28 = v48;
  v48 = 0;
  if (v28)
  {
    if (*v28 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v28;
    }
  }

  v29 = v50;
  v50 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v16);
  }

  v30 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v52;
  v52 = 0;
  v49 = v31;
  v50 = v58[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v30 + 2, &v50, &v49, v58);
  if (v59 == 1)
  {
    v39 = *(v30 + 9);
    if (v39 == *(v30 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v30 + 24, &v50);
    }

    else
    {
      v40 = *(v30 + 3);
      v41 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v42 = *(v30 + 9);
      *(v40 + 8 * v39) = v41;
      *(v30 + 9) = v42 + 1;
    }
  }

  v43 = v49;
  v49 = 0;
  if (v43)
  {
    Inspector::toJSONObjectArray(v43, v32, v33, v34, v35, v36, v37, v38, v45, v46);
  }

  v44 = v50;
  v50 = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v32);
  }

  WTF::JSONImpl::Value::toJSONString(v58, v53);
  Inspector::FrontendRouter::sendEvent(v47, v58);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v58];
}

@end