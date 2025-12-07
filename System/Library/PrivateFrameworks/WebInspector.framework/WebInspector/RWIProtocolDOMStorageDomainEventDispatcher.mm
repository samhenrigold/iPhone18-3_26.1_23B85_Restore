@interface RWIProtocolDOMStorageDomainEventDispatcher
- (RWIProtocolDOMStorageDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (void)domStorageItemAddedWithStorageId:(id)id key:(id)key newValue:(id)value;
- (void)domStorageItemRemovedWithStorageId:(id)id key:(id)key;
- (void)domStorageItemUpdatedWithStorageId:(id)id key:(id)key oldValue:(id)value newValue:(id)newValue;
- (void)domStorageItemsClearedWithStorageId:(id)id;
@end

@implementation RWIProtocolDOMStorageDomainEventDispatcher

- (RWIProtocolDOMStorageDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMStorageDomainEventDispatcher;
  result = [(RWIProtocolDOMStorageDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)domStorageItemsClearedWithStorageId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v38 = @"storageId";
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
  if (id)
  {
    objc_msgSend_toJSONObject(id);
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

- (void)domStorageItemRemovedWithStorageId:(id)id key:(id)key
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  v8 = MEMORY[0x277CBE660];
  if (!id)
  {
    v43 = @"storageId";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!key)
  {
    v43 = @"key";
    v6 = [MEMORY[0x277CBEAD8] raise:*v8 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v49, v6);
  v9 = v49;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v48 = v50[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v50[0];
  WTF::JSONImpl::ObjectBase::setString(v9, &v48, &v47);
  v10 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v47);
  WTF::JSONImpl::Object::create(&v48, v10);
  v11 = v48;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v46 = v50[0];
  if (id)
  {
    objc_msgSend_toJSONObject(id);
    v12 = v44;
  }

  else
  {
    v12 = 0;
  }

  v44 = 0;
  v45 = v12;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v11 + 16), &v46, &v45, v50);
  if (v51 == 1)
  {
    v20 = *(v11 + 36);
    if (v20 == *(v11 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v11 + 24, &v46);
    }

    else
    {
      v21 = *(v11 + 24);
      v22 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
      }

      v23 = *(v11 + 36);
      *(v21 + 8 * v20) = v22;
      *(v11 + 36) = v23 + 1;
    }
  }

  v24 = v45;
  v45 = 0;
  if (v24)
  {
    Inspector::toJSONObjectArray(v24, v13, v14, v15, v16, v17, v18, v19, v43, v44);
  }

  v25 = v44;
  v44 = 0;
  if (v25)
  {
    if (*v25 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v25;
    }
  }

  v26 = v46;
  v46 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v13);
  }

  v27 = v48;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v46 = v50[0];
  MEMORY[0x2743DB520](&v45, key);
  WTF::JSONImpl::ObjectBase::setString(v27, &v46, &v45);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v45);
  v28 = v49;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v46 = v50[0];
  v29 = v48;
  v48 = 0;
  v44 = v29;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v28 + 2, &v46, &v44, v50);
  if (v51 == 1)
  {
    v37 = *(v28 + 9);
    if (v37 == *(v28 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v28 + 24, &v46);
    }

    else
    {
      v38 = *(v28 + 3);
      v39 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
      }

      v40 = *(v28 + 9);
      *(v38 + 8 * v37) = v39;
      *(v28 + 9) = v40 + 1;
    }
  }

  v41 = v44;
  v44 = 0;
  if (v41)
  {
    Inspector::toJSONObjectArray(v41, v30, v31, v32, v33, v34, v35, v36, v43, v44);
  }

  v42 = v46;
  v46 = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v30);
  }

  WTF::JSONImpl::Value::toJSONString(v50, v49);
  Inspector::FrontendRouter::sendEvent(v7, v50);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v50];
}

- (void)domStorageItemAddedWithStorageId:(id)id key:(id)key newValue:(id)value
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (id)
  {
    if (key)
    {
LABEL_3:
      if (value)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v46 = @"storageId";
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
    if (key)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:{@"required parameter '%@' cannot be nil", @"key"}];
  if (!value)
  {
LABEL_4:
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:{@"required parameter '%@' cannot be nil", @"newValue"}];
  }

LABEL_5:
  WTF::JSONImpl::Object::create(&v54, v8);
  v11 = v54;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v53 = v55[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = v55[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v53, &v52);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v52);
  WTF::JSONImpl::Object::create(&v53, v12);
  v13 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  if (id)
  {
    objc_msgSend_toJSONObject(id);
    v14 = v49;
  }

  else
  {
    v14 = 0;
  }

  v49 = 0;
  v50 = v14;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v13 + 16), &v51, &v50, v55);
  if (v56 == 1)
  {
    v22 = *(v13 + 36);
    if (v22 == *(v13 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v13 + 24, &v51);
    }

    else
    {
      v23 = *(v13 + 24);
      v24 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
      }

      v25 = *(v13 + 36);
      *(v23 + 8 * v22) = v24;
      *(v13 + 36) = v25 + 1;
    }
  }

  v26 = v50;
  v50 = 0;
  if (v26)
  {
    Inspector::toJSONObjectArray(v26, v15, v16, v17, v18, v19, v20, v21, v46, v47);
  }

  v27 = v49;
  v49 = 0;
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

  v28 = v51;
  v51 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v15);
  }

  v29 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  MEMORY[0x2743DB520](&v50, key);
  WTF::JSONImpl::ObjectBase::setString(v29, &v51, &v50);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v50);
  v30 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  MEMORY[0x2743DB520](&v49, value);
  WTF::JSONImpl::ObjectBase::setString(v30, &v51, &v49);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v49);
  v31 = v54;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  v32 = v53;
  v53 = 0;
  v48 = v32;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v31 + 2, &v51, &v48, v55);
  if (v56 == 1)
  {
    v40 = *(v31 + 9);
    if (v40 == *(v31 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v31 + 24, &v51);
    }

    else
    {
      v41 = *(v31 + 3);
      v42 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
      }

      v43 = *(v31 + 9);
      *(v41 + 8 * v40) = v42;
      *(v31 + 9) = v43 + 1;
    }
  }

  v44 = v48;
  v48 = 0;
  if (v44)
  {
    Inspector::toJSONObjectArray(v44, v33, v34, v35, v36, v37, v38, v39, v46, v47);
  }

  v45 = v51;
  v51 = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v33);
  }

  WTF::JSONImpl::Value::toJSONString(v55, v54);
  Inspector::FrontendRouter::sendEvent(v9, v55);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v55];
}

- (void)domStorageItemUpdatedWithStorageId:(id)id key:(id)key oldValue:(id)value newValue:(id)newValue
{
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  v12 = MEMORY[0x277CBE660];
  if (id)
  {
    if (key)
    {
LABEL_3:
      if (!value)
      {
        goto LABEL_4;
      }

LABEL_8:
      if (newValue)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v49 = @"storageId";
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
    if (key)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:{@"required parameter '%@' cannot be nil", @"key"}];
  if (value)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:{@"required parameter '%@' cannot be nil", @"oldValue"}];
  if (!newValue)
  {
LABEL_9:
    v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:{@"required parameter '%@' cannot be nil", @"newValue"}];
  }

LABEL_10:
  WTF::JSONImpl::Object::create(&v57, v10);
  v13 = v57;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v56 = v58[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v55 = v58[0];
  WTF::JSONImpl::ObjectBase::setString(v13, &v56, &v55);
  v14 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v55);
  WTF::JSONImpl::Object::create(&v56, v14);
  v15 = v56;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v58[0];
  if (id)
  {
    objc_msgSend_toJSONObject(id);
    v16 = v52;
  }

  else
  {
    v16 = 0;
  }

  v52 = 0;
  v53 = v16;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v15 + 16), &v54, &v53, v58);
  if (v59 == 1)
  {
    v24 = *(v15 + 36);
    if (v24 == *(v15 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v54);
    }

    else
    {
      v25 = *(v15 + 24);
      v26 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
      }

      v27 = *(v15 + 36);
      *(v25 + 8 * v24) = v26;
      *(v15 + 36) = v27 + 1;
    }
  }

  v28 = v53;
  v53 = 0;
  if (v28)
  {
    Inspector::toJSONObjectArray(v28, v17, v18, v19, v20, v21, v22, v23, v49, v50);
  }

  v29 = v52;
  v52 = 0;
  if (v29)
  {
    if (*v29 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v29;
    }
  }

  v30 = v54;
  v54 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v17);
  }

  v31 = v56;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v58[0];
  MEMORY[0x2743DB520](&v53, key);
  WTF::JSONImpl::ObjectBase::setString(v31, &v54, &v53);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v53);
  v32 = v56;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v58[0];
  MEMORY[0x2743DB520](&v52, value);
  WTF::JSONImpl::ObjectBase::setString(v32, &v54, &v52);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v52);
  v33 = v56;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v58[0];
  MEMORY[0x2743DB520](&v51, newValue);
  WTF::JSONImpl::ObjectBase::setString(v33, &v54, &v51);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v51);
  v34 = v57;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v58[0];
  v35 = v56;
  v56 = 0;
  v50 = v35;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v34 + 2, &v54, &v50, v58);
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

  v47 = v50;
  v50 = 0;
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

@end