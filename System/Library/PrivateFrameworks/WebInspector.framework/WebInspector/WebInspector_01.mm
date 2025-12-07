uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getAttributesEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB2204(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getAttributesEli_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v20 = @"attributes";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  Inspector::toJSONStringArray(a2, &v21);
  v4 = v21;
  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  v17 = v21;
  v21 = 0;
  if (v17)
  {
    if (*v17 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v17;
    }
  }

  v18 = v23;
  v23 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::moveTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher6moveToEliiONSt3__18optionalIiEE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher6moveToEliiONSt3__18optionalIiEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e8_v12__0i8l;
    v12[4] = a1;
    v12[5] = a2;
    LODWORD(v14) = 0;
    if (*(a5 + 4) == 1)
    {
      LODWORD(v14) = *a5;
      v10 = &v14;
    }

    else
    {
      v10 = 0;
    }

    return [*(a1 + 16) moveToWithErrorCallback:v13 successCallback:v12 nodeId:a3 targetNodeId:a4 insertBeforeNodeId:v10];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CB2590(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 56);
  *(v2 - 56) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher6moveToEliiONSt3__18optionalIiEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB261C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher6moveToEliiONSt3__18optionalIiEE_block_invoke_2(WTF::JSONImpl::Object *a1, WTF::JSONImpl::Value *a2)
{
  WTF::JSONImpl::Object::create(v6, a1);
  v3 = v6[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v6[1];
  WTF::JSONImpl::ObjectBase::setInteger(v3, &v5, a2);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(v6);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::undo(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4undoEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4undoEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] undoWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB2844(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4undoEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB28D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4undoEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::redo(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4redoEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4redoEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] redoWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB2AA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4redoEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB2B30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4redoEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::markUndoableState(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17markUndoableStateEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17markUndoableStateEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] markUndoableStateWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB2D04(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17markUndoableStateEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB2D90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17markUndoableStateEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::focus(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher5focusEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher5focusEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] focusWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB2F6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher5focusEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB2FF8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher5focusEli_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setInspectedNode(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16setInspectedNodeEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16setInspectedNodeEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] setInspectedNodeWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB31D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16setInspectedNodeEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB3260(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16setInspectedNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setAllowEditingUserAgentShadowTrees(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher35setAllowEditingUserAgentShadowTreesElb_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher35setAllowEditingUserAgentShadowTreesElb_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] setAllowEditingUserAgentShadowTreesWithErrorCallback:v8 successCallback:v7 allow:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB343C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher35setAllowEditingUserAgentShadowTreesElb_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB34C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher35setAllowEditingUserAgentShadowTreesElb_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getMediaStats(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getMediaStatsEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getMediaStatsEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e34_v16__0__RWIProtocolDOMMediaStats_8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] getMediaStatsWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB36A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getMediaStatsEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB3730(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getMediaStatsEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"mediaStats";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::enable(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher6enableEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher6enableEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] enableWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB3A88(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher6enableEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB3B14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher6enableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::disable(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher7disableEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher7disableEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] disableWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB3CE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher7disableEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB3D74(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher7disableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::getDOMStorageItems(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher18getDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v11[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v11[4] = a1;
    v11[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher18getDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v10[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v10[4] = a1;
    v10[5] = a2;
    v6 = [(RWIProtocolJSONObject *)[RWIProtocolDOMStorageStorageId alloc] initWithJSONObject:a3];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    return [*(a1 + 16) getDOMStorageItemsWithErrorCallback:v11 successCallback:v10 storageId:v7];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v12);
  }
}

void sub_273CB3F74(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher18getDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB4000(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher18getDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v20 = @"entries";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  Inspector::toJSONStringArrayArray(a2, &v21);
  v4 = v21;
  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  v17 = v21;
  v21 = 0;
  if (v17)
  {
    if (*v17 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v17;
    }
  }

  v18 = v23;
  v23 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::setDOMStorageItem(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4, atomic_uint **a5)
{
  if (objc_opt_respondsToSelector())
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher17setDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringESD__block_invoke;
    v27[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v27[4] = a1;
    v27[5] = a2;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher17setDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringESD__block_invoke_2;
    v26[3] = &__block_descriptor_48_e5_v8__0l;
    v26[4] = a1;
    v26[5] = a2;
    v10 = [(RWIProtocolJSONObject *)[RWIProtocolDOMStorageStorageId alloc] initWithJSONObject:a3];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    v13 = *a4;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v28, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v28 = &stru_2882B1C88;
      v24 = &stru_2882B1C88;
    }

    v15 = v28;
    v28 = 0;
    if (v15)
    {
      v16 = v15;
      v17 = v28;
      v28 = 0;
      if (v17)
      {
      }
    }

    v18 = *a5;
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v28, v18);
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v19);
      }
    }

    else
    {
      v28 = &stru_2882B1C88;
      v25 = &stru_2882B1C88;
    }

    v20 = v28;
    v28 = 0;
    if (v20)
    {
      v21 = v20;
      v22 = v28;
      v28 = 0;
      if (v22)
      {
      }
    }

    return [*(a1 + 16) setDOMStorageItemWithErrorCallback:v27 successCallback:v26 storageId:v11 key:v15 value:v20];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v28);
  }
}

void sub_273CB4468(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher17setDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringESD__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB4548(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher17setDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringESD__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::removeDOMStorageItem(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20removeDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke;
    v19[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v19[4] = a1;
    v19[5] = a2;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20removeDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2;
    v18[3] = &__block_descriptor_48_e5_v8__0l;
    v18[4] = a1;
    v18[5] = a2;
    v8 = [(RWIProtocolJSONObject *)[RWIProtocolDOMStorageStorageId alloc] initWithJSONObject:a3];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    v11 = *a4;
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v20, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v20 = &stru_2882B1C88;
      v17 = &stru_2882B1C88;
    }

    v13 = v20;
    v20 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v20;
      v20 = 0;
      if (v15)
      {
      }
    }

    return [*(a1 + 16) removeDOMStorageItemWithErrorCallback:v19 successCallback:v18 storageId:v9 key:v13];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v20);
  }
}

void sub_273CB47BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20removeDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB487C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20removeDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::clearDOMStorageItems(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20clearDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v11[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v11[4] = a1;
    v11[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20clearDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a1;
    v10[5] = a2;
    v6 = [(RWIProtocolJSONObject *)[RWIProtocolDOMStorageStorageId alloc] initWithJSONObject:a3];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    return [*(a1 + 16) clearDOMStorageItemsWithErrorCallback:v11 successCallback:v10 storageId:v7];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v12);
  }
}

void sub_273CB4A7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20clearDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB4B08(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20clearDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::enable(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher6enableEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher6enableEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] enableWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB4CDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher6enableEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB4D68(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher6enableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::disable(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher7disableEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher7disableEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] disableWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB4F3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher7disableEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB4FC8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher7disableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::setExtraHTTPHeaders(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher19setExtraHTTPHeadersElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v11[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v11[4] = a1;
    v11[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher19setExtraHTTPHeadersElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a1;
    v10[5] = a2;
    v6 = [(RWIProtocolJSONObject *)[RWIProtocolNetworkHeaders alloc] initWithJSONObject:a3];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    return [*(a1 + 16) setExtraHTTPHeadersWithErrorCallback:v11 successCallback:v10 headers:v7];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v12);
  }
}

void sub_273CB51C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher19setExtraHTTPHeadersElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB5254(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher19setExtraHTTPHeadersElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::getResponseBody(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15getResponseBodyElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15getResponseBodyElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e21_v20__0__NSString_8B16l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] getResponseBodyWithErrorCallback:v14 successCallback:v13 requestId:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CB549C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15getResponseBodyElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB555C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15getResponseBodyElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2, WTF::JSONImpl::Value *a3)
{
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"body"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v8, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v8);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v8);
  v6 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  WTF::JSONImpl::ObjectBase::setBoolean(v6, &v9, a3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v9);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

_DWORD *WTF::JSONImpl::ObjectBase::setBoolean(WTF::JSONImpl::ObjectBase *this, atomic_uint **a2, WTF::JSONImpl::Value *a3)
{
  WTF::JSONImpl::Value::create(&v10, a3);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(this + 2, a2, &v10, &v11);
  if (v12 == 1)
  {
    v5 = *(this + 9);
    if (v5 == *(this + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(this + 24, a2);
    }

    else
    {
      v6 = *(this + 3);
      v7 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v8 = *(this + 9);
      *(v6 + 8 * v5) = v7;
      *(this + 9) = v8 + 1;
    }
  }

  result = v10;
  v10 = 0;
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

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::setResourceCachingDisabled(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher26setResourceCachingDisabledElb_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher26setResourceCachingDisabledElb_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] setResourceCachingDisabledWithErrorCallback:v8 successCallback:v7 disabled:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB5920(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher26setResourceCachingDisabledElb_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB59AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher26setResourceCachingDisabledElb_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::loadResource(id *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher12loadResourceElRKN3WTF6StringES4__block_invoke;
    v22[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v22[4] = this;
    v22[5] = a2;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher12loadResourceElRKN3WTF6StringES4__block_invoke_2;
    v21[3] = &__block_descriptor_48_e34_v28__0__NSString_8__NSString_16i24l;
    v21[4] = this;
    v21[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v10 = v23;
    v23 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v23;
      v23 = 0;
      if (v12)
      {
      }
    }

    v13 = *a4;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v20 = &stru_2882B1C88;
    }

    v15 = v23;
    v23 = 0;
    if (v15)
    {
      v16 = v15;
      v17 = v23;
      v23 = 0;
      if (v17)
      {
      }
    }

    return [this[2] loadResourceWithErrorCallback:v22 successCallback:v21 frameId:v10 url:v15];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v23);
  }
}

void sub_273CB5C68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher12loadResourceElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB5D48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher12loadResourceElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2, uint64_t a3, WTF::JSONImpl::Value *a4)
{
  WTF::JSONImpl::Object::create(&v14, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"content"}];
  }

  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"mimeType"}];
  }

  v7 = v14;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v13 = v15;
  MEMORY[0x2743DB520](&v12, a2);
  WTF::JSONImpl::ObjectBase::setString(v7, &v13, &v12);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v12);
  v8 = v14;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v13 = v15;
  MEMORY[0x2743DB520](&v11, a3);
  WTF::JSONImpl::ObjectBase::setString(v8, &v13, &v11);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v11);
  v9 = v14;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v13 = v15;
  WTF::JSONImpl::ObjectBase::setInteger(v9, &v13, a4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v13);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v14);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::getSerializedCertificate(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher24getSerializedCertificateElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher24getSerializedCertificateElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] getSerializedCertificateWithErrorCallback:v14 successCallback:v13 requestId:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CB6128(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher24getSerializedCertificateElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB61E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher24getSerializedCertificateElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  WTF::JSONImpl::Object::create(&v6, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"serializedCertificate"}];
  }

  v3 = v6;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v7;
  MEMORY[0x2743DB520](&v7, a2);
  WTF::JSONImpl::ObjectBase::setString(v3, &v5, &v7);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v7);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v6);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::resolveWebSocket(id *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher16resolveWebSocketElRKN3WTF6StringES4__block_invoke;
    v23[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v23[4] = this;
    v23[5] = a2;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher16resolveWebSocketElRKN3WTF6StringES4__block_invoke_2;
    v22[3] = &__block_descriptor_48_e40_v16__0__RWIProtocolRuntimeRemoteObject_8l;
    v22[4] = this;
    v22[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v24, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v24 = &stru_2882B1C88;
      v20 = &stru_2882B1C88;
    }

    v10 = v24;
    v24 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v24;
      v24 = 0;
      if (v12)
      {
      }
    }

    v24 = 0;
    v13 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v21, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }

      v15 = v21;
      v21 = 0;
      if (v15)
      {
        v16 = v15;
        v17 = v21;
        v24 = v15;
        v21 = 0;
        if (v17)
        {
        }
      }

      else
      {
        v24 = 0;
      }

      if (*a4)
      {
        v18 = &v24;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    return [this[2] resolveWebSocketWithErrorCallback:v23 successCallback:v22 requestId:v10 objectGroup:{v18, v21}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v24);
  }
}

void sub_273CB6570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher16resolveWebSocketElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB6660(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher16resolveWebSocketElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"object";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::setInterceptionEnabled(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher22setInterceptionEnabledElb_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher22setInterceptionEnabledElb_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] setInterceptionEnabledWithErrorCallback:v8 successCallback:v7 enabled:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB69C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher22setInterceptionEnabledElb_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB6A4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher22setInterceptionEnabledElb_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

atomic_uint *Inspector::ObjCInspectorNetworkBackendDispatcher::addInterception(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4, _BYTE *a5, char *a6)
{
  if (objc_opt_respondsToSelector())
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15addInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke;
    v30[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v30[4] = a1;
    v30[5] = a2;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15addInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke_2;
    v29[3] = &__block_descriptor_48_e5_v8__0l;
    v29[4] = a1;
    v29[5] = a2;
    v12 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v31, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v31 = &stru_2882B1C88;
      v27 = &stru_2882B1C88;
    }

    v14 = v31;
    v31 = 0;
    if (v14)
    {
      v15 = v14;
      v16 = v31;
      v31 = 0;
      if (v16)
      {
      }
    }

    v17 = *a4;
    if (*a4)
    {
      v18 = *(v17 + 8);
      v19 = *(v17 + 4) | (((*(v17 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v18 = 0;
      v19 = 0x100000000;
    }

    v20 = &qword_279EAA850;
    v21 = 48;
    while ((WTF::operator==(v18, v19, *(v20 - 2), *(v20 - 1)) & 1) == 0)
    {
      v20 += 3;
      v21 -= 24;
      if (!v21)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v31);
      }
    }

    v22 = *v20;
    LOBYTE(v31) = 0;
    v23 = a5[1];
    if (v23 == 1)
    {
      LOBYTE(v31) = *a5;
    }

    v28 = 0;
    if (a6[1] == 1)
    {
      v28 = *a6;
      v24 = &v28;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = &v31;
    }

    else
    {
      v25 = 0;
    }

    return [*(a1 + 16) addInterceptionWithErrorCallback:v30 successCallback:v29 url:v14 stage:v22 caseSensitive:v25 isRegex:v24];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v31);
  }
}

void sub_273CB6D8C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  *(v1 - 72) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15addInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB6E50(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15addInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

atomic_uint *Inspector::ObjCInspectorNetworkBackendDispatcher::removeInterception(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4, _BYTE *a5, char *a6)
{
  if (objc_opt_respondsToSelector())
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher18removeInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke;
    v30[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v30[4] = a1;
    v30[5] = a2;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher18removeInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke_2;
    v29[3] = &__block_descriptor_48_e5_v8__0l;
    v29[4] = a1;
    v29[5] = a2;
    v12 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v31, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v31 = &stru_2882B1C88;
      v27 = &stru_2882B1C88;
    }

    v14 = v31;
    v31 = 0;
    if (v14)
    {
      v15 = v14;
      v16 = v31;
      v31 = 0;
      if (v16)
      {
      }
    }

    v17 = *a4;
    if (*a4)
    {
      v18 = *(v17 + 8);
      v19 = *(v17 + 4) | (((*(v17 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v18 = 0;
      v19 = 0x100000000;
    }

    v20 = &qword_279EAA850;
    v21 = 48;
    while ((WTF::operator==(v18, v19, *(v20 - 2), *(v20 - 1)) & 1) == 0)
    {
      v20 += 3;
      v21 -= 24;
      if (!v21)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v31);
      }
    }

    v22 = *v20;
    LOBYTE(v31) = 0;
    v23 = a5[1];
    if (v23 == 1)
    {
      LOBYTE(v31) = *a5;
    }

    v28 = 0;
    if (a6[1] == 1)
    {
      v28 = *a6;
      v24 = &v28;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = &v31;
    }

    else
    {
      v25 = 0;
    }

    return [*(a1 + 16) removeInterceptionWithErrorCallback:v30 successCallback:v29 url:v14 stage:v22 caseSensitive:v25 isRegex:v24];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v31);
  }
}

void sub_273CB7190(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  *(v1 - 72) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher18removeInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB7254(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher18removeInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

atomic_uint *Inspector::ObjCInspectorNetworkBackendDispatcher::interceptContinue(id *this, uint64_t a2, atomic_uint **a3, const WTF::String *a4)
{
  if (objc_opt_respondsToSelector())
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher17interceptContinueElRKN3WTF6StringES4__block_invoke;
    v21[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v21[4] = this;
    v21[5] = a2;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher17interceptContinueElRKN3WTF6StringES4__block_invoke_2;
    v20[3] = &__block_descriptor_48_e5_v8__0l;
    v20[4] = this;
    v20[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v22, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v22 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v10 = v22;
    v22 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v22;
      v22 = 0;
      if (v12)
      {
      }
    }

    v13 = *a4;
    if (*a4)
    {
      v14 = *(v13 + 8);
      v15 = *(v13 + 4) | (((*(v13 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v14 = 0;
      v15 = 0x100000000;
    }

    v16 = &qword_279EAA850;
    v17 = 48;
    while ((WTF::operator==(v14, v15, *(v16 - 2), *(v16 - 1)) & 1) == 0)
    {
      v16 += 3;
      v17 -= 24;
      if (!v17)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v22);
      }
    }

    return [this[2] interceptContinueWithErrorCallback:v21 successCallback:v20 requestId:v10 stage:*v16];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v22);
  }
}

void sub_273CB753C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher17interceptContinueElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB7600(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher17interceptContinueElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::interceptWithRequest(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, void *a6, atomic_uint **a7)
{
  if (objc_opt_respondsToSelector())
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher20interceptWithRequestElRKN3WTF6StringES4_S4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEES4__block_invoke;
    v50[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v50[4] = a1;
    v50[5] = a2;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher20interceptWithRequestElRKN3WTF6StringES4_S4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEES4__block_invoke_2;
    v49[3] = &__block_descriptor_48_e5_v8__0l;
    v49[4] = a1;
    v49[5] = a2;
    v14 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v51, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v51 = &stru_2882B1C88;
      v44 = &stru_2882B1C88;
    }

    v16 = v51;
    v51 = 0;
    if (v16)
    {
      v17 = v16;
      v18 = v51;
      v51 = 0;
      if (v18)
      {
      }
    }

    v51 = 0;
    v19 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v48, v19);
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v20);
      }

      v21 = v48;
      v48 = 0;
      if (v21)
      {
        v22 = v21;
        v23 = v48;
        v51 = v21;
        v48 = 0;
        if (v23)
        {
        }
      }

      else
      {
        v51 = 0;
      }
    }

    v48 = 0;
    v24 = *a5;
    if (*a5)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v47, v24);
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v25);
      }

      v26 = v47;
      v47 = 0;
      if (v26)
      {
        v27 = v26;
        v28 = v47;
        v47 = 0;
        v48 = v26;
        if (v28)
        {
        }
      }

      else
      {
        v48 = 0;
      }
    }

    v47 = 0;
    if (*a6)
    {
      v29 = [RWIProtocolNetworkHeaders alloc];
      v46 = *a6;
      *a6 = 0;
      v30 = [(RWIProtocolJSONObject *)v29 initWithJSONObject:&v46];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      v33 = v46;
      v46 = 0;
      v47 = v31;
      if (v33)
      {
        if (*v33 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v33;
        }
      }
    }

    v46 = 0;
    v34 = *a7;
    if (*a7)
    {
      atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v45, v34);
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v35);
      }

      v36 = v45;
      v45 = 0;
      if (v36)
      {
        v37 = v36;
        v38 = v45;
        v45 = 0;
        v46 = v36;
        if (v38)
        {
        }
      }

      else
      {
        v46 = 0;
      }

      v39 = &v46;
      if (!*a7)
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    if (*a4)
    {
      v40 = &v51;
    }

    else
    {
      v40 = 0;
    }

    if (*a5)
    {
      v41 = &v48;
    }

    else
    {
      v41 = 0;
    }

    if (*a6)
    {
      v42 = &v47;
    }

    else
    {
      v42 = 0;
    }

    return [*(a1 + 16) interceptWithRequestWithErrorCallback:v50 successCallback:v49 requestId:v16 url:v40 method:v41 headers:v42 postData:{v39, v45, v46, v47, v48}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v51);
  }
}

void sub_273CB7A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher20interceptWithRequestElRKN3WTF6StringES4_S4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB7B80(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher20interceptWithRequestElRKN3WTF6StringES4_S4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::interceptWithResponse(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, uint64_t a5, atomic_uint **a6, int *a7, atomic_uint **a8, id **a9)
{
  if (objc_opt_respondsToSelector())
  {
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher21interceptWithResponseElRKN3WTF6StringES4_bS4_ONSt3__18optionalIiEES4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsISB_EENS1_21DefaultRefDerefTraitsISB_EEEE_block_invoke;
    v54[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v54[4] = a1;
    v54[5] = a2;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher21interceptWithResponseElRKN3WTF6StringES4_bS4_ONSt3__18optionalIiEES4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsISB_EENS1_21DefaultRefDerefTraitsISB_EEEE_block_invoke_2;
    v53[3] = &__block_descriptor_48_e5_v8__0l;
    v53[4] = a1;
    v53[5] = a2;
    v17 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v55, v17);
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v18);
      }
    }

    else
    {
      v55 = &stru_2882B1C88;
      v47 = &stru_2882B1C88;
    }

    v19 = v55;
    v55 = 0;
    if (v19)
    {
      v20 = v19;
      v21 = v55;
      v55 = 0;
      if (v21)
      {
      }
    }

    v22 = *a4;
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v55, v22);
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v23);
      }
    }

    else
    {
      v55 = &stru_2882B1C88;
      v48 = &stru_2882B1C88;
    }

    v24 = v55;
    v55 = 0;
    if (v24)
    {
      v25 = v24;
      v26 = v55;
      v55 = 0;
      if (v26)
      {
      }
    }

    v55 = 0;
    v27 = *a6;
    if (*a6)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v52, v27);
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v28);
      }

      v29 = v52;
      v52 = 0;
      if (v29)
      {
        v30 = v29;
        v31 = v52;
        v55 = v29;
        v52 = 0;
        if (v31)
        {
        }
      }

      else
      {
        v55 = 0;
      }
    }

    v51 = 0;
    if (*(a7 + 4) == 1)
    {
      v51 = *a7;
    }

    v52 = 0;
    v32 = *a8;
    if (*a8)
    {
      atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v50, v32);
      if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v33);
      }

      v34 = v50;
      v50 = 0;
      if (v34)
      {
        v35 = v34;
        v36 = v50;
        v52 = v34;
        v50 = 0;
        if (v36)
        {
        }
      }

      else
      {
        v52 = 0;
      }
    }

    v50 = 0;
    v37 = *a9;
    if (*a9)
    {
      v38 = [RWIProtocolNetworkHeaders alloc];
      v49 = *a9;
      *a9 = 0;
      v39 = [(RWIProtocolJSONObject *)v38 initWithJSONObject:&v49];
      v40 = v39;
      if (v39)
      {
        v41 = v39;
      }

      v42 = v49;
      v49 = 0;
      v50 = v40;
      if (v42)
      {
        if (*v42 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v42;
        }
      }

      v37 = &v50;
      if (!*a9)
      {
        v37 = 0;
      }
    }

    if (*a6)
    {
      v43 = &v55;
    }

    else
    {
      v43 = 0;
    }

    v44 = &v51;
    if (!*(a7 + 4))
    {
      v44 = 0;
    }

    v45 = &v52;
    if (!*a8)
    {
      v45 = 0;
    }

    return [*(a1 + 16) interceptWithResponseWithErrorCallback:v54 successCallback:v53 requestId:v19 content:v24 base64Encoded:a5 mimeType:v43 status:v44 statusText:v45 headers:{v37, v49, v50}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v55);
  }
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher21interceptWithResponseElRKN3WTF6StringES4_bS4_ONSt3__18optionalIiEES4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsISB_EENS1_21DefaultRefDerefTraitsISB_EEEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB8140(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher21interceptWithResponseElRKN3WTF6StringES4_bS4_ONSt3__18optionalIiEES4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsISB_EENS1_21DefaultRefDerefTraitsISB_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::interceptRequestWithResponse(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, uint64_t a5, atomic_uint **a6, int a7, atomic_uint **a8, uint64_t a9)
{
  if (objc_opt_respondsToSelector())
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher28interceptRequestWithResponseElRKN3WTF6StringES4_bS4_iS4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEE_block_invoke;
    v47[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v47[4] = a1;
    v47[5] = a2;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher28interceptRequestWithResponseElRKN3WTF6StringES4_bS4_iS4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEE_block_invoke_2;
    v46[3] = &__block_descriptor_48_e5_v8__0l;
    v46[4] = a1;
    v46[5] = a2;
    v17 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v48, v17);
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v18);
      }
    }

    else
    {
      v48 = &stru_2882B1C88;
      v41 = &stru_2882B1C88;
    }

    v19 = v48;
    v48 = 0;
    if (v19)
    {
      v20 = v19;
      v21 = v48;
      v48 = 0;
      if (v21)
      {
      }
    }

    v22 = *a4;
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v48, v22);
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v23);
      }
    }

    else
    {
      v48 = &stru_2882B1C88;
      v42 = &stru_2882B1C88;
    }

    v24 = v48;
    v48 = 0;
    if (v24)
    {
      v25 = v24;
      v26 = v48;
      v48 = 0;
      if (v26)
      {
      }
    }

    v27 = *a6;
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v48, v27);
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v28);
      }
    }

    else
    {
      v48 = &stru_2882B1C88;
      v43 = &stru_2882B1C88;
    }

    v29 = v48;
    v48 = 0;
    if (v29)
    {
      v30 = v29;
      v31 = v48;
      v48 = 0;
      if (v31)
      {
      }
    }

    v32 = *a8;
    if (v32)
    {
      atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v48, v32);
      if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v33);
      }
    }

    else
    {
      v48 = &stru_2882B1C88;
      v44 = &stru_2882B1C88;
    }

    v34 = v48;
    v48 = 0;
    if (v34)
    {
      v35 = v34;
      v36 = v48;
      v48 = 0;
      if (v36)
      {
      }
    }

    v37 = [(RWIProtocolJSONObject *)[RWIProtocolNetworkHeaders alloc] initWithJSONObject:a9];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    LODWORD(v45) = a7;
    return [*(a1 + 16) interceptRequestWithResponseWithErrorCallback:v47 successCallback:v46 requestId:v19 content:v24 base64Encoded:a5 mimeType:v29 status:v45 statusText:v34 headers:v38];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v48);
  }
}

void sub_273CB852C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  *(v1 - 72) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher28interceptRequestWithResponseElRKN3WTF6StringES4_bS4_iS4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB864C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher28interceptRequestWithResponseElRKN3WTF6StringES4_bS4_iS4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

atomic_uint *Inspector::ObjCInspectorNetworkBackendDispatcher::interceptRequestWithError(id *this, uint64_t a2, atomic_uint **a3, const WTF::String *a4)
{
  if (objc_opt_respondsToSelector())
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher25interceptRequestWithErrorElRKN3WTF6StringES4__block_invoke;
    v21[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v21[4] = this;
    v21[5] = a2;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher25interceptRequestWithErrorElRKN3WTF6StringES4__block_invoke_2;
    v20[3] = &__block_descriptor_48_e5_v8__0l;
    v20[4] = this;
    v20[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v22, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v22 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v10 = v22;
    v22 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v22;
      v22 = 0;
      if (v12)
      {
      }
    }

    v13 = *a4;
    if (*a4)
    {
      v14 = *(v13 + 8);
      v15 = *(v13 + 4) | (((*(v13 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v14 = 0;
      v15 = 0x100000000;
    }

    v16 = &qword_279EAA880;
    v17 = 96;
    while ((WTF::operator==(v14, v15, *(v16 - 2), *(v16 - 1)) & 1) == 0)
    {
      v16 += 3;
      v17 -= 24;
      if (!v17)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v22);
      }
    }

    return [this[2] interceptRequestWithErrorWithErrorCallback:v21 successCallback:v20 requestId:v10 errorType:*v16];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v22);
  }
}

void sub_273CB8934(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher25interceptRequestWithErrorElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB89F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher25interceptRequestWithErrorElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::enable(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6enableEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6enableEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] enableWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB8BCC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6enableEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB8C58(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher6enableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::disable(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7disableEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7disableEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] disableWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB8E2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7disableEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB8EB8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher7disableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::reload(uint64_t a1, uint64_t a2, _BYTE *a3, char *a4)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6reloadElONSt3__18optionalIbEES4__block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = a1;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6reloadElONSt3__18optionalIbEES4__block_invoke_2;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = a1;
    v13[5] = a2;
    LOBYTE(v15) = 0;
    v8 = a3[1];
    if (v8 == 1)
    {
      LOBYTE(v15) = *a3;
    }

    v12 = 0;
    if (a4[1] == 1)
    {
      v12 = *a4;
      v9 = &v12;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = &v15;
    }

    else
    {
      v10 = 0;
    }

    return [*(a1 + 16) reloadWithErrorCallback:v14 successCallback:v13 ignoreCache:v10 revalidateAllResources:v9];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CB90DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6reloadElONSt3__18optionalIbEES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB9168(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher6reloadElONSt3__18optionalIbEES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::navigate(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher8navigateElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher8navigateElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] navigateWithErrorCallback:v14 successCallback:v13 url:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CB93B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher8navigateElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB9470(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher8navigateElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::overrideUserAgent(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17overrideUserAgentElRKN3WTF6StringE_block_invoke;
    v15[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v15[4] = this;
    v15[5] = a2;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17overrideUserAgentElRKN3WTF6StringE_block_invoke_2;
    v14[3] = &__block_descriptor_48_e5_v8__0l;
    v14[4] = this;
    v14[5] = a2;
    v16 = 0;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v13, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }

      v8 = v13;
      v13 = 0;
      if (v8)
      {
        v9 = v8;
        v10 = v13;
        v16 = v8;
        v13 = 0;
        if (v10)
        {
        }
      }

      else
      {
        v16 = 0;
      }

      if (*a3)
      {
        v11 = &v16;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    return [this[2] overrideUserAgentWithErrorCallback:v15 successCallback:v14 value:{v11, v13}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v16);
  }
}

void sub_273CB96C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17overrideUserAgentElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB9788(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher17overrideUserAgentElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

atomic_uint *Inspector::ObjCInspectorPageBackendDispatcher::overrideSetting(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  if (objc_opt_respondsToSelector())
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15overrideSettingElRKN3WTF6StringEONSt3__18optionalIbEE_block_invoke;
    v17[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v17[4] = a1;
    v17[5] = a2;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15overrideSettingElRKN3WTF6StringEONSt3__18optionalIbEE_block_invoke_2;
    v16[3] = &__block_descriptor_48_e5_v8__0l;
    v16[4] = a1;
    v16[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      v9 = *(v8 + 8);
      v10 = *(v8 + 4) | (((*(v8 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v9 = 0;
      v10 = 0x100000000;
    }

    v11 = &qword_279EAA8E0;
    v12 = 288;
    while ((WTF::operator==(v9, v10, *(v11 - 2), *(v11 - 1)) & 1) == 0)
    {
      v11 += 3;
      v12 -= 24;
      if (!v12)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v18);
      }
    }

    v13 = *v11;
    LOBYTE(v18) = 0;
    if (a4[1] == 1)
    {
      LOBYTE(v18) = *a4;
      v14 = &v18;
    }

    else
    {
      v14 = 0;
    }

    return [*(a1 + 16) overrideSettingWithErrorCallback:v17 successCallback:v16 setting:v13 value:v14];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v18);
  }
}

void sub_273CB9A24(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 56);
  *(v2 - 56) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15overrideSettingElRKN3WTF6StringEONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB9AB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher15overrideSettingElRKN3WTF6StringEONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

atomic_uint *Inspector::ObjCInspectorPageBackendDispatcher::overrideUserPreference(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, const WTF::String *a3, const WTF::String *a4)
{
  if (objc_opt_respondsToSelector())
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher22overrideUserPreferenceElRKN3WTF6StringES4__block_invoke;
    v30[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v30[4] = this;
    v30[5] = a2;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher22overrideUserPreferenceElRKN3WTF6StringES4__block_invoke_2;
    v29[3] = &__block_descriptor_48_e5_v8__0l;
    v29[4] = this;
    v29[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      v9 = *(v8 + 8);
      v10 = *(v8 + 4) | (((*(v8 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v9 = 0;
      v10 = 0x100000000;
    }

    v11 = &qword_279EAAA00;
    v12 = 72;
    while ((WTF::operator==(v9, v10, *(v11 - 2), *(v11 - 1)) & 1) == 0)
    {
      v11 += 3;
      v12 -= 24;
      if (!v12)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v27);
      }
    }

    v13 = *v11;
    LOBYTE(v27) = 0;
    LOBYTE(v28) = 0;
    v14 = *a4;
    if (*a4)
    {
      v15 = *(v14 + 8);
      v16 = *(v14 + 4) | (((*(v14 + 16) >> 2) & 1) << 32);
      v17 = &qword_279EAAA48;
      v18 = 120;
      while ((WTF::operator==(v15, v16, *(v17 - 2), *(v17 - 1)) & 1) == 0)
      {
        v17 += 3;
        v18 -= 24;
        if (!v18)
        {
          v21 = 0;
          v22 = 0;
          goto LABEL_16;
        }
      }

      v22 = *v17;
      v21 = 1;
LABEL_16:
      v27 = v22;
      LOBYTE(v28) = v21;
      v20 = *(this + 2);
      if (*a4)
      {
        if ((v21 & 1) == 0)
        {
          v25 = std::__throw_bad_optional_access[abi:sn200100]();
          v26 = v27;
          v27 = 0;
          if (v26)
          {
            if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v26, v24);
            }
          }

          _Unwind_Resume(v25);
        }

        v19 = &v27;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v20 = *(this + 2);
    }

    return [v20 overrideUserPreferenceWithErrorCallback:v30 successCallback:v29 name:v13 value:{v19, v27, v28}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v27);
  }
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher22overrideUserPreferenceElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB9E64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher22overrideUserPreferenceElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::getCookies(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher10getCookiesEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher10getCookiesEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] getCookiesWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CBA038(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher10getCookiesEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBA0C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher10getCookiesEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  WTF::JSONImpl::Object::create(&v36, a1);
  if (!a2)
  {
    v27 = @"cookies";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v3)
  {
    v4 = *v33;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v27 = NSStringFromClass(v9);
          v28 = v7;
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v3);
  }

  v10 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v37;
  Inspector::toJSONObjectArray(a2, &v29);
  v11 = v29;
  v29 = 0;
  v30 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v31, &v30, &v37);
  if (v38 == 1)
  {
    v19 = *(v10 + 9);
    if (v19 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v31);
    }

    else
    {
      v20 = v10[3];
      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      v22 = *(v10 + 9);
      *(v20 + 8 * v19) = v21;
      *(v10 + 9) = v22 + 1;
    }
  }

  v23 = v30;
  v30 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23, v12, v13, v14, v15, v16, v17, v18, v27, v28);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v31;
  v31 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v12);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v36);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::setCookie(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher9setCookieElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONSt3__18optionalIbEE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = a1;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher9setCookieElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONSt3__18optionalIbEE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = a1;
    v13[5] = a2;
    v8 = [(RWIProtocolJSONObject *)[RWIProtocolPageCookie alloc] initWithJSONObject:a3];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    LOBYTE(v15) = 0;
    if (a4[1] == 1)
    {
      LOBYTE(v15) = *a4;
      v11 = &v15;
    }

    else
    {
      v11 = 0;
    }

    return [*(a1 + 16) setCookieWithErrorCallback:v14 successCallback:v13 cookie:v9 shouldPartition:v11];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CBA594(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher9setCookieElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBA620(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher9setCookieElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::deleteCookie(id *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12deleteCookieElRKN3WTF6StringES4__block_invoke;
    v22[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v22[4] = this;
    v22[5] = a2;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12deleteCookieElRKN3WTF6StringES4__block_invoke_2;
    v21[3] = &__block_descriptor_48_e5_v8__0l;
    v21[4] = this;
    v21[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v10 = v23;
    v23 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v23;
      v23 = 0;
      if (v12)
      {
      }
    }

    v13 = *a4;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v20 = &stru_2882B1C88;
    }

    v15 = v23;
    v23 = 0;
    if (v15)
    {
      v16 = v15;
      v17 = v23;
      v23 = 0;
      if (v17)
      {
      }
    }

    return [this[2] deleteCookieWithErrorCallback:v22 successCallback:v21 cookieName:v10 url:v15];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v23);
  }
}

void sub_273CBA8DC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12deleteCookieElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBA9BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher12deleteCookieElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::getResourceTree(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15getResourceTreeEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15getResourceTreeEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e42_v16__0__RWIProtocolPageFrameResourceTree_8l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] getResourceTreeWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CBAB90(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15getResourceTreeEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBAC1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher15getResourceTreeEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"frameTree";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::getResourceContent(id *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18getResourceContentElRKN3WTF6StringES4__block_invoke;
    v22[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v22[4] = this;
    v22[5] = a2;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18getResourceContentElRKN3WTF6StringES4__block_invoke_2;
    v21[3] = &__block_descriptor_48_e21_v20__0__NSString_8B16l;
    v21[4] = this;
    v21[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v10 = v23;
    v23 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v23;
      v23 = 0;
      if (v12)
      {
      }
    }

    v13 = *a4;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v20 = &stru_2882B1C88;
    }

    v15 = v23;
    v23 = 0;
    if (v15)
    {
      v16 = v15;
      v17 = v23;
      v23 = 0;
      if (v17)
      {
      }
    }

    return [this[2] getResourceContentWithErrorCallback:v22 successCallback:v21 frameId:v10 url:v15];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v23);
  }
}

void sub_273CBB05C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18getResourceContentElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBB13C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher18getResourceContentElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2, WTF::JSONImpl::Value *a3)
{
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"content"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v8, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v8);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v8);
  v6 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  WTF::JSONImpl::ObjectBase::setBoolean(v6, &v9, a3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v9);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::setBootstrapScript(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18setBootstrapScriptElRKN3WTF6StringE_block_invoke;
    v15[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v15[4] = this;
    v15[5] = a2;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18setBootstrapScriptElRKN3WTF6StringE_block_invoke_2;
    v14[3] = &__block_descriptor_48_e5_v8__0l;
    v14[4] = this;
    v14[5] = a2;
    v16 = 0;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v13, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }

      v8 = v13;
      v13 = 0;
      if (v8)
      {
        v9 = v8;
        v10 = v13;
        v16 = v8;
        v13 = 0;
        if (v10)
        {
        }
      }

      else
      {
        v16 = 0;
      }

      if (*a3)
      {
        v11 = &v16;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    return [this[2] setBootstrapScriptWithErrorCallback:v15 successCallback:v14 source:{v11, v13}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v16);
  }
}

void sub_273CBB49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18setBootstrapScriptElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBB55C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher18setBootstrapScriptElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::searchInResource(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, char *a6, char *a7, atomic_uint **a8)
{
  if (objc_opt_respondsToSelector())
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16searchInResourceElRKN3WTF6StringES4_S4_ONSt3__18optionalIbEES8_S4__block_invoke;
    v49[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v49[4] = a1;
    v49[5] = a2;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16searchInResourceElRKN3WTF6StringES4_S4_ONSt3__18optionalIbEES8_S4__block_invoke_2;
    v48[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v48[4] = a1;
    v48[5] = a2;
    v16 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v50, v16);
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v17);
      }
    }

    else
    {
      v50 = &stru_2882B1C88;
      v42 = &stru_2882B1C88;
    }

    v18 = v50;
    v50 = 0;
    if (v18)
    {
      v19 = v18;
      v20 = v50;
      v50 = 0;
      if (v20)
      {
      }
    }

    v21 = *a4;
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v50, v21);
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v22);
      }
    }

    else
    {
      v50 = &stru_2882B1C88;
      v43 = &stru_2882B1C88;
    }

    v23 = v50;
    v50 = 0;
    if (v23)
    {
      v24 = v23;
      v25 = v50;
      v50 = 0;
      if (v25)
      {
      }
    }

    v26 = *a5;
    if (v26)
    {
      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v50, v26);
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v27);
      }
    }

    else
    {
      v50 = &stru_2882B1C88;
      v44 = &stru_2882B1C88;
    }

    v28 = v50;
    v50 = 0;
    if (v28)
    {
      v29 = v28;
      v30 = v50;
      v50 = 0;
      if (v30)
      {
      }
    }

    v47 = 0;
    v31 = a6[1];
    if (v31 == 1)
    {
      v47 = *a6;
    }

    v46 = 0;
    v32 = a7[1];
    if (v32 == 1)
    {
      v46 = *a7;
    }

    v50 = 0;
    v33 = *a8;
    if (*a8)
    {
      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v45, v33);
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v34);
      }

      v35 = v45;
      v45 = 0;
      if (v35)
      {
        v36 = v35;
        v37 = v45;
        v50 = v35;
        v45 = 0;
        if (v37)
        {
        }
      }

      else
      {
        v50 = 0;
      }

      LOBYTE(v31) = a6[1];
      LOBYTE(v32) = a7[1];
      v38 = &v50;
      if (!*a8)
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    if (v31)
    {
      v39 = &v47;
    }

    else
    {
      v39 = 0;
    }

    v40 = &v46;
    if ((v32 & 1) == 0)
    {
      v40 = 0;
    }

    return [*(a1 + 16) searchInResourceWithErrorCallback:v49 successCallback:v48 frameId:v18 url:v23 query:v28 caseSensitive:v39 isRegex:v40 requestId:v38];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v50);
  }
}

void sub_273CBB97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16searchInResourceElRKN3WTF6StringES4_S4_ONSt3__18optionalIbEES8_S4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBBAAC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher16searchInResourceElRKN3WTF6StringES4_S4_ONSt3__18optionalIbEES8_S4__block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  WTF::JSONImpl::Object::create(&v36, a1);
  if (!a2)
  {
    v27 = @"result";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v3)
  {
    v4 = *v33;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v27 = NSStringFromClass(v9);
          v28 = v7;
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v3);
  }

  v10 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v37;
  Inspector::toJSONObjectArray(a2, &v29);
  v11 = v29;
  v29 = 0;
  v30 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v31, &v30, &v37);
  if (v38 == 1)
  {
    v19 = *(v10 + 9);
    if (v19 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v31);
    }

    else
    {
      v20 = v10[3];
      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      v22 = *(v10 + 9);
      *(v20 + 8 * v19) = v21;
      *(v10 + 9) = v22 + 1;
    }
  }

  v23 = v30;
  v30 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23, v12, v13, v14, v15, v16, v17, v18, v27, v28);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v31;
  v31 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v12);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v36);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::searchInResources(uint64_t a1, uint64_t a2, atomic_uint **a3, _BYTE *a4, char *a5)
{
  if (objc_opt_respondsToSelector())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17searchInResourcesElRKN3WTF6StringEONSt3__18optionalIbEES8__block_invoke;
    v22[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v22[4] = a1;
    v22[5] = a2;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17searchInResourcesElRKN3WTF6StringEONSt3__18optionalIbEES8__block_invoke_2;
    v21[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v21[4] = a1;
    v21[5] = a2;
    v10 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v12 = v23;
    v23 = 0;
    if (v12)
    {
      v13 = v12;
      v14 = v23;
      v23 = 0;
      if (v14)
      {
      }
    }

    LOBYTE(v23) = 0;
    v15 = a4[1];
    if (v15 == 1)
    {
      LOBYTE(v23) = *a4;
    }

    v20 = 0;
    if (a5[1] == 1)
    {
      v20 = *a5;
      v16 = &v20;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = &v23;
    }

    else
    {
      v17 = 0;
    }

    return [*(a1 + 16) searchInResourcesWithErrorCallback:v22 successCallback:v21 text:v12 caseSensitive:v17 isRegex:v16];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v23);
  }
}

void sub_273CBBFF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17searchInResourcesElRKN3WTF6StringEONSt3__18optionalIbEES8__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBC0B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher17searchInResourcesElRKN3WTF6StringEONSt3__18optionalIbEES8__block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  WTF::JSONImpl::Object::create(&v36, a1);
  if (!a2)
  {
    v27 = @"result";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v3)
  {
    v4 = *v33;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v27 = NSStringFromClass(v9);
          v28 = v7;
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v3);
  }

  v10 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v37;
  Inspector::toJSONObjectArray(a2, &v29);
  v11 = v29;
  v29 = 0;
  v30 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v31, &v30, &v37);
  if (v38 == 1)
  {
    v19 = *(v10 + 9);
    if (v19 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v31);
    }

    else
    {
      v20 = v10[3];
      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      v22 = *(v10 + 9);
      *(v20 + 8 * v19) = v21;
      *(v10 + 9) = v22 + 1;
    }
  }

  v23 = v30;
  v30 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23, v12, v13, v14, v15, v16, v17, v18, v27, v28);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v31;
  v31 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v12);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v36);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::setShowPaintRects(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17setShowPaintRectsElb_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17setShowPaintRectsElb_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] setShowPaintRectsWithErrorCallback:v8 successCallback:v7 result:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CBC538(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17setShowPaintRectsElb_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBC5C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher17setShowPaintRectsElb_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::setEmulatedMedia(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16setEmulatedMediaElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16setEmulatedMediaElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] setEmulatedMediaWithErrorCallback:v14 successCallback:v13 media:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CBC80C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16setEmulatedMediaElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBC8CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher16setEmulatedMediaElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
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

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::snapshotNode(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotNodeEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotNodeEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] snapshotNodeWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CBCAA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotNodeEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBCB2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  WTF::JSONImpl::Object::create(&v6, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"dataURL"}];
  }

  v3 = v6;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v7;
  MEMORY[0x2743DB520](&v7, a2);
  WTF::JSONImpl::ObjectBase::setString(v3, &v5, &v7);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v7);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v6);
}

atomic_uint *Inspector::ObjCInspectorPageBackendDispatcher::snapshotRect(id *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const WTF::String *a7)
{
  if (objc_opt_respondsToSelector())
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotRectEliiiiRKN3WTF6StringE_block_invoke;
    v21[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v21[4] = this;
    v21[5] = a2;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotRectEliiiiRKN3WTF6StringE_block_invoke_2;
    v20[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v20[4] = this;
    v20[5] = a2;
    v14 = *a7;
    if (*a7)
    {
      v15 = *(v14 + 8);
      v16 = *(v14 + 4) | (((*(v14 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v15 = 0;
      v16 = 0x100000000;
    }

    v17 = &qword_279EAAAC0;
    v18 = 48;
    while ((WTF::operator==(v15, v16, *(v17 - 2), *(v17 - 1)) & 1) == 0)
    {
      v17 += 3;
      v18 -= 24;
      if (!v18)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v22);
      }
    }

    return [this[2] snapshotRectWithErrorCallback:v21 successCallback:v20 x:a3 y:a4 width:a5 height:a6 coordinateSystem:*v17];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v22);
  }
}

void sub_273CBCE88(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotRectEliiiiRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBCF18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotRectEliiiiRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  WTF::JSONImpl::Object::create(&v6, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"dataURL"}];
  }

  v3 = v6;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v7;
  MEMORY[0x2743DB520](&v7, a2);
  WTF::JSONImpl::ObjectBase::setString(v3, &v5, &v7);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v7);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v6);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::archive(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7archiveEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7archiveEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] archiveWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CBD1A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7archiveEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CBD22C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher7archiveEl_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  WTF::JSONImpl::Object::create(&v6, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"data"}];
  }

  v3 = v6;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v7;
  MEMORY[0x2743DB520](&v7, a2);
  WTF::JSONImpl::ObjectBase::setString(v3, &v5, &v7);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v7);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v6);
}

WTF **WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a2 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_13:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a1 - 16);
      v15 = v12;
    }

    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>> &&)::{lambda(void)#1}>(v15, a2, &v26);
    v18 = *a1;
    if (*a1)
    {
      v19 = *(v18 - 12) + 1;
    }

    else
    {
      v19 = 1;
    }

    *(v18 - 12) = v19;
    v22 = (*(v18 - 16) + v19);
    v23 = *(v18 - 4);
    if (v23 > 0x400)
    {
      if (v23 > 2 * v22)
      {
        goto LABEL_26;
      }
    }

    else if (3 * v23 > 4 * v22)
    {
      goto LABEL_26;
    }

    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
    v15 = result;
    v18 = *a1;
    if (!*a1)
    {
      v24 = 0;
      goto LABEL_27;
    }

LABEL_26:
    v24 = *(v18 - 4);
LABEL_27:
    *a4 = v15;
    *(a4 + 8) = v18 + 16 * v24;
    *(a4 + 16) = 1;
    return result;
  }

  if (!WTF::equal(v16, *a2, a3))
  {
    goto LABEL_13;
  }

  v20 = *a1;
  if (*a1)
  {
    v21 = *(v20 - 4);
  }

  else
  {
    v21 = 0;
  }

  *a4 = v15;
  *(a4 + 8) = v20 + 16 * v21;
  *(a4 + 16) = 0;
  v25 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v25;
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

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = (v4 << (6 * *(v3 - 12) >= (2 * v4)));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_DWORD *WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>> &&)::{lambda(void)#1}>(uint64_t a1, atomic_uint **a2, uint64_t **a3)
{
  WTF::String::operator=(a1, a2);
  v5 = **a3;
  **a3 = 0;
  result = *(a1 + 8);
  *(a1 + 8) = v5;
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

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = v4 - 1;
  v9[3] = v4;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      v10 = *v12;
      if (*v12 != -1)
      {
        if (v10)
        {
          v14 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
          v15 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v15)
          {
            if (*v15 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v15;
            }
          }

          v16 = *v14;
          *v14 = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v10);
          }

          v17 = *v12;
          *v12 = 0;
          *v14 = v17;
          v18 = *(v12 + 8);
          *(v12 + 8) = 0;
          *(v14 + 8) = v18;
          v19 = *(v12 + 8);
          *(v12 + 8) = 0;
          if (v19)
          {
            if (*v19 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v19;
            }
          }

          v20 = *v12;
          *v12 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v10);
          }

          if (v12 == a3)
          {
            v11 = v14;
          }
        }

        else
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v12, 0, v11, &v22);
          v11 = v22;
        }
      }

      v12 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*a2 + 4);
  if (v4 < 0x100)
  {
    v5 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = 0;
  do
  {
    v7 = v5 & v3;
    v5 = ++v6 + v7;
  }

  while (*(v2 + 16 * v7));
  return v2 + 16 * v7;
}

WTF **WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a2 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_13:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a1 - 16);
      v15 = v12;
    }

    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>> &&)::{lambda(void)#1}>(v15, a2, &v26);
    v21 = *a1;
    if (*a1)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v23 = (*(v21 - 16) + v22);
    v24 = *(v21 - 4);
    if (v24 > 0x400)
    {
      if (v24 > 2 * v23)
      {
        goto LABEL_35;
      }
    }

    else if (3 * v24 > 4 * v23)
    {
      goto LABEL_35;
    }

    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
    v15 = result;
    v21 = *a1;
    if (!*a1)
    {
      v25 = 0;
      goto LABEL_36;
    }

LABEL_35:
    v25 = *(v21 - 4);
LABEL_36:
    *a4 = v15;
    *(a4 + 8) = v21 + 16 * v25;
    *(a4 + 16) = 1;
    return result;
  }

  if (!WTF::equal(v16, *a2, a3))
  {
    goto LABEL_13;
  }

  v17 = *a1;
  if (*a1)
  {
    v18 = *(v17 - 4);
  }

  else
  {
    v18 = 0;
  }

  *a4 = v15;
  *(a4 + 8) = v17 + 16 * v18;
  *(a4 + 16) = 0;
  v19 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v19;
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

uint64_t WTF::operator==(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4 - 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = a2 == v4 && result == a3;
  if (result == a3 || a2 != v4)
  {
    return v5;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = v4;
  if ((a2 & 0x100000000) != 0)
  {
    if (!v4)
    {
      goto LABEL_69;
    }

    if (*result == *a3)
    {
      v14 = v4 - 1;
      if (v4 == 1)
      {
        return 1;
      }

      v15 = (result + 1);
      v16 = (a3 + 1);
      if (v14 == 1)
      {
        if (!v14)
        {
          goto LABEL_69;
        }

        v17 = v15->u8[0];
        v18 = v16->u8[0];
        return v17 == v18;
      }

      v23 = __clz(v14 - 1);
      if (v23 <= 28)
      {
        if (v23 == 27)
        {
          v27 = vandq_s8(vceqq_s8(*(result + v6 - 16), *&a3[v6 - 16]), vceqq_s8(*(result + 1), *(a3 + 1)));
          v27.i8[0] = vminvq_u8(v27);
          return v27.i32[0] != 0;
        }

        if (v23 != 28)
        {
LABEL_58:
          v28 = vceqq_s8(*v15, *v16);
          v28.i8[0] = vminvq_u8(v28);
          v5 = v28.u32[0];
          if (!v28.i32[0])
          {
            return v5;
          }

          if (v14 >= 0x10)
          {
            v29 = v14 & 0xF;
            do
            {
              v30 = vceqq_s8(*(v15 + v29), *(v16 + v29));
              v30.i8[0] = vminvq_u8(v30);
              v5 = v30.i32[0] != 0;
              v29 += 16;
              if (v30.i32[0])
              {
                v31 = v29 >= v14;
              }

              else
              {
                v31 = 1;
              }
            }

            while (!v31);
            return v5;
          }

          return 1;
        }

        if (v15->i64[0] == v16->i64[0])
        {
          return *(result + v6 - 8) == *&a3[v6 - 8];
        }
      }

      else
      {
        switch(v23)
        {
          case 29:
            if (v15->i32[0] == v16->i32[0])
            {
              v26 = *(result + v6 - 4);
              v25 = *&a3[v6 - 4];
              return v26 == v25;
            }

            break;
          case 30:
            if (v15->u16[0] == v16->u16[0])
            {
              v26 = *(result + v6 - 2);
              v25 = *&a3[v6 - 2];
              return v26 == v25;
            }

            break;
          case 31:
            v17 = v15->u16[0];
            v18 = v16->u16[0];
            return v17 == v18;
          default:
            goto LABEL_58;
        }
      }
    }

    return 0;
  }

  if (v4)
  {
    if (*result == *a3)
    {
      v7 = (result + 2);
      v8 = v6 - 1;
      v9 = (a3 + 1);
      if ((v6 - 1) >= 8)
      {
        v10 = vceqq_s16(*v7, vmovl_u8(*v9));
        v10.i16[0] = vminvq_u16(v10);
        v5 = v10.u32[0];
        if (v10.i32[0])
        {
          v11 = v8 & 7;
          do
          {
            v12 = vceqq_s16(*(v7 + 2 * v11), vmovl_u8(*(v9 + v11)));
            v12.i16[0] = vminvq_u16(v12);
            v5 = v12.i32[0] != 0;
            v11 += 8;
            if (v12.i32[0])
            {
              v13 = v11 >= v8;
            }

            else
            {
              v13 = 1;
            }
          }

          while (!v13);
        }

        return v5;
      }

      if (v8 >= 4)
      {
        v20 = (v9->u32[0] | (v9->u32[0] << 16)) & 0xFFFF0000FFFFLL;
        v21 = (*(v9->u32 + (v8 & 3)) | (*(v9->u32 + (v8 & 3)) << 16)) & 0xFFFF0000FFFFLL;
        v22 = (v21 | (v21 << 8)) & 0xFF00FF00FF00FFLL;
        return ((v20 | (v20 << 8)) & 0xFF00FF00FF00FFLL) == v7->i64[0] && v22 == *(v7->i64 + 2 * (v8 & 3));
      }

      if (v8 >= 2)
      {
        v19 = ((v9->u16[0] | (v9->u16[0] << 8)) & 0xFF00FF) == v7->i32[0];
        v24 = (*(v9->u16 + (v8 & 1)) | (*(v9->u16 + (v8 & 1)) << 8)) & 0xFF00FF;
        return v19 && v24 == *(v7->i32 + 2 * (v8 & 1));
      }

      if (v6 == 2)
      {
        v25 = v9->u8[0];
        v26 = v7->u16[0];
        return v26 == v25;
      }

      return 1;
    }

    return 0;
  }

LABEL_69:
  __break(1u);
  return result;
}

WTF *WTF::RefCounted<Inspector::BackendDispatcher>::deref(WTF *result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result + 24, a2);
    v4 = *(v2 + 2);
    if (v4)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v3);
    }

    v5 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v5)
    {
      WTF::RefCounted<Inspector::FrontendRouter>::deref(v5, v3);
    }

    if (*v2 != 1)
    {
      WTF::RefCounted<Inspector::BackendDispatcher>::deref();
    }

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(*a1, (*a1 + 16 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WTF::StringImpl **WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(WTF::StringImpl **result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    return WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(result, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a1);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::RefCounted<Inspector::FrontendRouter>::deref(uint64_t this, void *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 8);
    if ((v2 + 24) != v3 && v3 != 0)
    {
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      WTF::fastFree(v3, a2);
      if (*v2 != 1)
      {
        WTF::RefCounted<Inspector::BackendDispatcher>::deref();
      }
    }

    return WTF::fastFree(v2, a2);
  }

  else
  {
    --*this;
  }

  return this;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  result = *v0;
  *v0 = 0;
  return result;
}

void sub_273CBE090(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, ...)
{
  va_start(va, a13);
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v14, v15);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](va, 0);
  _Unwind_Resume(a1);
}

void sub_273CBE2AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, ...)
{
  va_start(va, a13);
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v14, v15);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](va, 0);
  _Unwind_Resume(a1);
}

void sub_273CBE478(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, ...)
{
  va_start(va, a13);
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v14, v15);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](va, 0);
  _Unwind_Resume(a1);
}

void sub_273CBE644(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, ...)
{
  va_start(va, a13);
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v14, v15);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](va, 0);
  _Unwind_Resume(a1);
}

void sub_273CBE810(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, ...)
{
  va_start(va, a13);
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v14, v15);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](va, 0);
  _Unwind_Resume(a1);
}

void *Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B15C8;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBEA2C(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>,0>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v14[1];
    }

    v14[0] = v10;
  }

  else
  {
    v14[0] = 0;
  }

  v11 = *a3;
  *a3 = 0;
  v13 = v11;
  Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::AlternateDispatchableAgent(v8, v14, a2, &v13);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>,0>(v8, a4, &v13);
}

void *Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B19E0;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::CSSBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}

void sub_273CBEC68(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

_DWORD **WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[2];
    }
  }

  return a1;
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, WTF::StringImpl *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

uint64_t std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](result);
  }

  return result;
}

void *Inspector::ObjCInspectorDOMBackendDispatcher::ObjCInspectorDOMBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B1680;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBEE00(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMBackendDispatcher>,0>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v14[1];
    }

    v14[0] = v10;
  }

  else
  {
    v14[0] = 0;
  }

  v11 = *a3;
  *a3 = 0;
  v13 = v11;
  Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::AlternateDispatchableAgent(v8, v14, a2, &v13);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMBackendDispatcher>,0>(v8, a4, &v13);
}

void *Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B1A60;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::DOMBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}

void sub_273CBF03C(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, WTF::StringImpl *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

void *Inspector::ObjCInspectorDOMStorageBackendDispatcher::ObjCInspectorDOMStorageBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B1830;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBF134(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMStorageBackendDispatcher>,0>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v14[1];
    }

    v14[0] = v10;
  }

  else
  {
    v14[0] = 0;
  }

  v11 = *a3;
  *a3 = 0;
  v13 = v11;
  Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::AlternateDispatchableAgent(v8, v14, a2, &v13);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMStorageBackendDispatcher>,0>(v8, a4, &v13);
}

void *Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B1AA0;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::DOMStorageBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}

void sub_273CBF370(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, WTF::StringImpl *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

void *Inspector::ObjCInspectorNetworkBackendDispatcher::ObjCInspectorNetworkBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B1880;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBF468(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorNetworkBackendDispatcher>,0>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v14[1];
    }

    v14[0] = v10;
  }

  else
  {
    v14[0] = 0;
  }

  v11 = *a3;
  *a3 = 0;
  v13 = v11;
  Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::AlternateDispatchableAgent(v8, v14, a2, &v13);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorNetworkBackendDispatcher>,0>(v8, a4, &v13);
}

void *Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B1AE0;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::NetworkBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}

void sub_273CBF6A4(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, WTF::StringImpl *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

void *Inspector::ObjCInspectorPageBackendDispatcher::ObjCInspectorPageBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B1920;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBF79C(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorPageBackendDispatcher>,0>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v14[1];
    }

    v14[0] = v10;
  }

  else
  {
    v14[0] = 0;
  }

  v11 = *a3;
  *a3 = 0;
  v13 = v11;
  Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::AlternateDispatchableAgent(v8, v14, a2, &v13);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorPageBackendDispatcher>,0>(v8, a4, &v13);
}

void *Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B1B20;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::PageBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}

void sub_273CBF9D8(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, WTF::StringImpl *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, void *a2, uint64_t *a3)
{
  *a2 = a1;
  result = *a3;
  *a3 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5()
{
  result = *(v0 + 8);
  *(v0 + 8) = 0;
  return result;
}

_DWORD *WTF::JSONImpl::ObjectBase::setDouble(WTF::JSONImpl::ObjectBase *this, WTF::StringImpl **a2, double a3)
{
  WTF::JSONImpl::Value::create(&v10, this, a3);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(this + 2, a2, &v10, v11);
  if (v11[16] == 1)
  {
    v5 = *(this + 9);
    if (v5 == *(this + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(this + 24, a2);
    }

    else
    {
      v6 = *(this + 3);
      v7 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v8 = *(this + 9);
      *(v6 + 8 * v5) = v7;
      *(this + 9) = v8 + 1;
    }
  }

  result = v10;
  v10 = 0;
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

void *Inspector::toProtocolString()
{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  result = *v0;
  *v0 = 0;
  return result;
}

uint64_t RWIAugmentableInspectorControllerClient::inspectorConnected(RWIAugmentableInspectorControllerClient *this)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(this + 1);

  return [v2 postNotificationName:@"RWIProtocolInspectorFrontendConnectedNotification" object:v3 userInfo:0];
}

uint64_t RWIAugmentableInspectorControllerClient::inspectorDisconnected(RWIAugmentableInspectorControllerClient *this)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(this + 1);

  return [v2 postNotificationName:@"RWIProtocolInspectorFrontendDisconnectedNotification" object:v3 userInfo:0];
}

void sub_273CCF21C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF2CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF37C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF45C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF630(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF710(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF7B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF868(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF97C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9)
  {
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCFAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCFB60(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCFD24(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD041C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

id *WTF::RetainPtrArc<NSString>::~RetainPtrArc(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

void sub_273CD0980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolCSSRuleMatch>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSRuleMatch alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD0BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD1200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD1E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolCSSSelector>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSSelector alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD2084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD2B90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD2CB0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD3468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolCSSRule>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSRule alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD36B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD3E94(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD3FB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolCSSGrouping>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSGrouping alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD45C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD5A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolCSSProperty>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSProperty alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD5C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD5EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolCSSShorthandEntry>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSShorthandEntry alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD60F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD6A44(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD6B64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD6E94(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD70B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD7AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolCSSFontVariationAxis>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSFontVariationAxis alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD7CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD833C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD85BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD86C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD87E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD89A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD8AC0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD8C00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD8D20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD8E8C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD90CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD94D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolRuntimeRemoteObject>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolRuntimeRemoteObject alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CDA2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolConsoleCallFrame>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolConsoleCallFrame alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}