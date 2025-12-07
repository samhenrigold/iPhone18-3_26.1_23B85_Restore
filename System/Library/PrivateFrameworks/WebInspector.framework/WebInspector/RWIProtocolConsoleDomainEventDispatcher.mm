@interface RWIProtocolConsoleDomainEventDispatcher
- (RWIProtocolConsoleDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (void)heapSnapshotWithTimestamp:(double)timestamp snapshotData:(id)data title:(id *)title;
- (void)messageAddedWithMessage:(id)message;
- (void)messageRepeatCountUpdatedWithCount:(int)count timestamp:(double *)timestamp;
- (void)messagesClearedWithReason:(int64_t)reason;
@end

@implementation RWIProtocolConsoleDomainEventDispatcher

- (RWIProtocolConsoleDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolConsoleDomainEventDispatcher;
  result = [(RWIProtocolConsoleDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)messageAddedWithMessage:(id)message
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!message)
  {
    v38 = @"message";
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
  if (message)
  {
    objc_msgSend_toJSONObject(message);
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

- (void)messageRepeatCountUpdatedWithCount:(int)count timestamp:(double *)timestamp
{
  v5 = *&count;
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v32, v6);
  v7 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v33[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v33[0];
  WTF::JSONImpl::ObjectBase::setString(v7, &v31, &v30);
  v8 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v30);
  WTF::JSONImpl::Object::create(&v31, v8);
  v9 = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v33[0];
  WTF::JSONImpl::ObjectBase::setInteger(v9, &v29, v5);
  if (![RWIProtocolConsoleDomainEventDispatcher messageRepeatCountUpdatedWithCount:? timestamp:?])
  {
    v10 = v31;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v28 = v33[0];
    WTF::JSONImpl::ObjectBase::setDouble(v10, &v28, *timestamp);
    Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v28);
  }

  v11 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v12 = v31;
  v31 = 0;
  v26 = v12;
  v27 = v33[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v11 + 2, &v27, &v26, v33);
  if (v34 == 1)
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

  WTF::JSONImpl::Value::toJSONString(v33, v32);
  Inspector::FrontendRouter::sendEvent(v6, v33);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v33];
}

- (void)messagesClearedWithReason:(int64_t)reason
{
  v3 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v32, v3);
  v4 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v33[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v33[0];
  WTF::JSONImpl::ObjectBase::setString(v4, &v31, &v30);
  v5 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v30);
  WTF::JSONImpl::Object::create(&v31, v5);
  v6 = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v33[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if (v26)
  {
    atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v27, v26);
    if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v7);
    }
  }

  else
  {
    v27 = &stru_2882B1C88;
    v23 = &stru_2882B1C88;
  }

  MEMORY[0x2743DB520](&v28, v27);
  WTF::JSONImpl::ObjectBase::setString(v6, &v29, &v28);
  [RWIProtocolConsoleDomainEventDispatcher messagesClearedWithReason:?];
  v8 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v33[0];
  v9 = v31;
  v31 = 0;
  v25 = v9;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v8 + 2, &v29, &v25, v33);
  if (v34 == 1)
  {
    v17 = *(v8 + 9);
    if (v17 == *(v8 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v29);
    }

    else
    {
      v18 = *(v8 + 3);
      v19 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      }

      v20 = *(v8 + 9);
      *(v18 + 8 * v17) = v19;
      *(v8 + 9) = v20 + 1;
    }
  }

  v21 = v25;
  v25 = 0;
  if (v21)
  {
    Inspector::toJSONObjectArray(v21, v10, v11, v12, v13, v14, v15, v16, v24, v25);
  }

  v22 = v29;
  v29 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v10);
  }

  WTF::JSONImpl::Value::toJSONString(v33, v32);
  Inspector::FrontendRouter::sendEvent(v3, v33);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v33];
}

- (void)heapSnapshotWithTimestamp:(double)timestamp snapshotData:(id)data title:(id *)title
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  if (!data)
  {
    v30 = @"snapshotData";
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (title && !*title)
  {
    v30 = @"title";
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v40, v8);
  v10 = v40;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v41[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v41[0];
  WTF::JSONImpl::ObjectBase::setString(v10, &v39, &v38);
  v11 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v38);
  WTF::JSONImpl::Object::create(&v39, v11);
  v12 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v41[0];
  WTF::JSONImpl::ObjectBase::setDouble(v12, &v37, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v37);
  v13 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v41[0];
  MEMORY[0x2743DB520](&v36, data);
  WTF::JSONImpl::ObjectBase::setString(v13, &v37, &v36);
  if (([RWIProtocolConsoleDomainEventDispatcher heapSnapshotWithTimestamp:&v37 snapshotData:title == 0 title:?]& 1) == 0)
  {
    v14 = v39;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v35 = v41[0];
    MEMORY[0x2743DB520](&v34, *title);
    WTF::JSONImpl::ObjectBase::setString(v14, &v35, &v34);
    ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v34);
  }

  v15 = v40;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v16 = v39;
  v39 = 0;
  v32 = v16;
  v33 = v41[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v15 + 2, &v33, &v32, v41);
  if (v42 == 1)
  {
    v24 = *(v15 + 9);
    if (v24 == *(v15 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v33);
    }

    else
    {
      v25 = *(v15 + 3);
      v26 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v27 = *(v15 + 9);
      *(v25 + 8 * v24) = v26;
      *(v15 + 9) = v27 + 1;
    }
  }

  v28 = v32;
  v32 = 0;
  if (v28)
  {
    Inspector::toJSONObjectArray(v28, v17, v18, v19, v20, v21, v22, v23, v30, v31);
  }

  v29 = v33;
  v33 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v17);
  }

  WTF::JSONImpl::Value::toJSONString(v41, v40);
  Inspector::FrontendRouter::sendEvent(v9, v41);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v41];
}

- (BOOL)messageRepeatCountUpdatedWithCount:(uint64_t *)a1 timestamp:.cold.2(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1_1(v2);
    if (v5)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  return v1 == 0;
}

- (atomic_uint)messagesClearedWithReason:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_1(v1);
    if (v4)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  OUTLINED_FUNCTION_6();
  if (v5)
  {
  }

  v6 = OUTLINED_FUNCTION_5_0();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_1_1(v6);
    if (v4)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v4)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

- (uint64_t)heapSnapshotWithTimestamp:(atomic_uint *)a1 snapshotData:(uint64_t)a2 title:(char)a3 .cold.3(atomic_uint **a1, uint64_t a2, char a3)
{
  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_1(v5);
    if (v8)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  v9 = OUTLINED_FUNCTION_5_0();
  if (v9)
  {
    v10 = OUTLINED_FUNCTION_1_1(v9);
    if (v8)
    {
      WTF::StringImpl::destroy(v10, v11);
    }
  }

  return a3 & 1;
}

@end