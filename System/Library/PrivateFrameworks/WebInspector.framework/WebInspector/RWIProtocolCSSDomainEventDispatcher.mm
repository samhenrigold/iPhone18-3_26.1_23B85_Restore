@interface RWIProtocolCSSDomainEventDispatcher
- (RWIProtocolCSSDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (_DWORD)mediaQueryResultChanged;
- (void)mediaQueryResultChanged;
- (void)nodeLayoutFlagsChangedWithNodeId:(int)id layoutFlags:(id *)flags;
- (void)styleSheetAddedWithHeader:(id)header;
- (void)styleSheetChangedWithStyleSheetId:(id)id;
- (void)styleSheetRemovedWithStyleSheetId:(id)id;
@end

@implementation RWIProtocolCSSDomainEventDispatcher

- (RWIProtocolCSSDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolCSSDomainEventDispatcher;
  result = [(RWIProtocolCSSDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)mediaQueryResultChanged
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

- (void)styleSheetChangedWithStyleSheetId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v24 = @"styleSheetId";
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

- (void)styleSheetAddedWithHeader:(id)header
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!header)
  {
    v38 = @"header";
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
  if (header)
  {
    objc_msgSend_toJSONObject(header);
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

- (void)styleSheetRemovedWithStyleSheetId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v24 = @"styleSheetId";
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

- (void)nodeLayoutFlagsChangedWithNodeId:(int)id layoutFlags:(id *)flags
{
  v5 = *&id;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  if (flags && !*flags)
  {
    v44 = @"layoutFlags";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v50, v6);
  v8 = v50;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v49 = v51[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v48 = v51[0];
  WTF::JSONImpl::ObjectBase::setString(v8, &v49, &v48);
  v9 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v48);
  WTF::JSONImpl::Object::create(&v49, v9);
  v10 = v49;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v51[0];
  WTF::JSONImpl::ObjectBase::setInteger(v10, &v47, v5);
  v12 = v47;
  v47 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  if (flags)
  {
    v13 = v49;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v47 = v51[0];
    Inspector::toJSONStringArray(*flags, &v45);
    v14 = v45;
    v45 = 0;
    v46 = v14;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v13 + 16), &v47, &v46, v51);
    if (v52 == 1)
    {
      v22 = *(v13 + 36);
      if (v22 == *(v13 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v13 + 24, &v47);
      }

      else
      {
        v23 = *(v13 + 24);
        v24 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
        }

        v25 = *(v13 + 36);
        *(v23 + 8 * v22) = v24;
        *(v13 + 36) = v25 + 1;
      }
    }

    v26 = v46;
    v46 = 0;
    if (v26)
    {
      Inspector::toJSONObjectArray(v26, v15, v16, v17, v18, v19, v20, v21, v44, v45);
    }

    v27 = v45;
    v45 = 0;
    if (v27)
    {
      if (*v27 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v27;
      }
    }

    v28 = v47;
    v47 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v15);
    }
  }

  v29 = v50;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v49;
  v49 = 0;
  v46 = v30;
  v47 = v51[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v29 + 2, &v47, &v46, v51);
  if (v52 == 1)
  {
    v38 = *(v29 + 9);
    if (v38 == *(v29 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v29 + 24, &v47);
    }

    else
    {
      v39 = *(v29 + 3);
      v40 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
      }

      v41 = *(v29 + 9);
      *(v39 + 8 * v38) = v40;
      *(v29 + 9) = v41 + 1;
    }
  }

  v42 = v46;
  v46 = 0;
  if (v42)
  {
    Inspector::toJSONObjectArray(v42, v31, v32, v33, v34, v35, v36, v37, v44, v45);
  }

  v43 = v47;
  v47 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v31);
  }

  WTF::JSONImpl::Value::toJSONString(v51, v50);
  Inspector::FrontendRouter::sendEvent(v7, v51);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v51];
}

- (_DWORD)mediaQueryResultChanged
{
  v1 = OUTLINED_FUNCTION_0_3(self);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_1(v1);
    if (v4)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

- (_DWORD)styleSheetChangedWithStyleSheetId:(uint64_t *)a1 .cold.6(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_5(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_1(v1);
    if (v4)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  v5 = OUTLINED_FUNCTION_5_0();
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v5;
    }
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

@end