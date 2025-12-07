void sub_29A49EA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  v23 = *(v21 - 88);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  sub_29A49F064(&a11);
  sub_29A1DCEA8(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49EBEC(uint64_t a1)
{
  v2 = (a1 + 16);
  v4 = *(a1 + 16);
  v8 = *(a1 + 48);
  if (pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::equal(&v4, &v8))
  {
    *&v4 = "tf/iterator.h";
    *(&v4 + 1) = "operator++";
    v5 = 233;
    v6 = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::pair<pxrInternal__aapl__pxrReserved__::PcpPropertyIterator, pxrInternal__aapl__pxrReserved__::PcpPropertyIterator>, true>::operator++() [T = const std::pair<pxrInternal__aapl__pxrReserved__::PcpPropertyIterator, pxrInternal__aapl__pxrReserved__::PcpPropertyIterator>, Reverse = true]";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "iterator exhausted");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::decrement(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpBuildTargetIndex(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::PcpBuildFilteredTargetIndex(a1, a2, a3, 0, &v5, 0, 0, a4, 0, a5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
}

void sub_29A49ECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void *sub_29A49ECE4(void *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(a1, a2);
  sub_29A2258F0(a1 + 20, (a2 + 80));
  sub_29A225948(a1 + 21, (a2 + 84));
  return a1;
}

uint64_t sub_29A49ED28(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3, pxrInternal__aapl__pxrReserved__::PcpCache **a4)
{
  v37 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v31, a1);
  v7 = sub_29A49F09C(a4);
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(v7);
  *&v32[0] = v8;
  *(&v32[0] + 1) = v9;
  if ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(v32) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v30, a2);
    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a3);
    pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::PcpLayerStackSite(&v27, LayerStack, &v30);
    v25 = 0;
    v26 = -1;
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(v7, 6, v32);
    if (v32[0] != v32[1])
    {
      v21 = v32[0];
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v17, &v21);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(&v17, &v27);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DE3A4(&v18);
      sub_29A41B088(&v17);
    }

    pxrInternal__aapl__pxrReserved__::PcpCache::GetPrimIndexInputs(*a4, v32);
    if ((v36 & 1) == 0)
    {
      *&v21 = "pcp/targetIndex.cpp";
      *(&v21 + 1) = "_TargetIsPermitted";
      v22 = 276;
      v23 = "Pcp_PathTranslationError pxrInternal__aapl__pxrReserved__::_TargetIsPermitted(const SdfPath &, const SdfPath &, const PcpNodeRef &, Pcp_TargetIndexContext &)";
      v24 = 0;
      sub_29A453CD0(&v27);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v31);
      v15 = &v17;
      if (v20 < 0)
      {
        v15 = v17;
      }

      v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find expected node for site %s in prim index for <%s>", v13, v14, v15, Text);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "context.GetCache()->GetPrimIndexInputs().cull", v16);
      if (v20 < 0)
      {
        operator delete(v17);
      }
    }

    if (v35 < 0)
    {
      operator delete(__p);
    }

    sub_29A346EB0(&v33);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
    sub_29A1DE3A4(&v28);
    sub_29A41B088(&v27);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31 + 1);
  sub_29A1DE3A4(&v31);
  return 2;
}

uint64_t sub_29A49F064(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  return a1;
}

uint64_t sub_29A49F09C(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    v3 = *a1;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v4, (a1 + 16));
    *(a1 + 24) = pxrInternal__aapl__pxrReserved__::PcpCache::ComputePrimIndex(v3, &v4, *(a1 + 8));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
    sub_29A1DE3A4(&v4);
    return *(a1 + 24);
  }

  return result;
}

void sub_29A49F114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49F128(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  IsPropertyPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a1);
  v5 = *(a2 + 8);
  v36 = *a2;
  v37 = v5;
  v6 = **(v36 + 16);
  v7 = *(v6 + 48 * v5 + 28);
  v30 = v36;
  v31 = v7;
  v32 = v6;
  v33 = v36;
  v8 = 0xFFFFLL;
  v34 = 0xFFFFLL;
  v35 = v6;
  while (v7 != v8 || v30 != v33)
  {
    v9 = sub_29A41E444(&v30);
    if ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRestricted(v9) & 1) != 0 || pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPermission(v9) == 1)
    {
      return 1;
    }

    pxrInternal__aapl__pxrReserved__::PcpTranslatePathFromRootToNode(v9, a1, 0, &v28);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v28))
    {
      if (IsPropertyPath)
      {
        LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v9);
        v11 = sub_29A4184C4(LayerStack);
        Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v11);
        v13 = Layers[1];
        v26 = *Layers;
        v27 = v13;
        while (v26 != v27)
        {
          sub_29A1E21F4(&v24, &v28);
          sub_29A1E2240(&v25, &v29);
          IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&v24);
          if (!IsPrimPath)
          {
            if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(&v24))
            {
              goto LABEL_15;
            }

            v17 = sub_29A433804(&v26, v15, v16);
            v18 = sub_29A3302A8(v17);
            pxrInternal__aapl__pxrReserved__::SdfLayer::GetPropertyAtPath(&v23, v18, &v24);
            if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v23) & 1) != 0 || (v19 = sub_29A1F190C(&v23), pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetPermission(v19) != 1))
            {
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v23);
LABEL_15:
              pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v23, &v24);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }

            pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v23);
            a2 = 1;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
          sub_29A1DE3A4(&v24);
          if (!IsPrimPath)
          {
            v20 = 0;
            goto LABEL_24;
          }

          sub_29A433884(&v26);
        }
      }

      v21 = sub_29A49F128(a1, v9);
      v20 = v21 == 0;
      if (v21)
      {
        a2 = v21;
      }

      else
      {
        a2 = a2;
      }
    }

    else
    {
      v20 = 0;
      a2 = 2;
    }

LABEL_24:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
    sub_29A1DE3A4(&v28);
    if (!v20)
    {
      return a2;
    }

    sub_29A41E490(&v30);
    v7 = v31;
    v8 = v34;
  }

  return 0;
}

void sub_29A49F36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29A49F3C0(void *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::PcpPropertyIterator(a1);
  pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::PcpPropertyIterator(v2 + 2);
  pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::PcpPropertyIterator(a1 + 4);
  pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::PcpPropertyIterator(a1 + 6);
  return a1;
}

__n128 sub_29A49F408(uint64_t a1)
{
  v2 = operator new(0x58uLL);
  *v2 = &unk_2A20503B8;
  *(v2 + 24) = *(a1 + 24);
  *(v2 + 40) = *(a1 + 40);
  *(v2 + 56) = *(a1 + 56);
  *(v2 + 72) = *(a1 + 72);
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A49F474(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20503B8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_29A49F510(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2050428))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A49F55C()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204E198, 0, "PcpArcTypeRoot", "root");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204E198, 1, "PcpArcTypeInherit", "inherit");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204E198, 3, "PcpArcTypeRelocate", "relocate");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204E198, 2, "PcpArcTypeVariant", "variant");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204E198, 4, "PcpArcTypeReference", "reference");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204E198, 5, "PcpArcTypePayload", "payload");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A204E198, 6, "PcpArcTypeSpecialize", "specialize");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 0, "PcpRangeTypeRoot", "root");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 1, "PcpRangeTypeInherit", "inherit");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 2, "PcpRangeTypeVariant", "variant");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 3, "PcpRangeTypeReference", "reference");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 4, "PcpRangeTypePayload", "payload");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 5, "PcpRangeTypeSpecialize", "specialize");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 6, "PcpRangeTypeAll", "all");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 7, "PcpRangeTypeWeakerThanRoot", "weaker than root");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 8, "PcpRangeTypeStrongerThanPayload", "stronger than payload");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A2050440, 9, "PcpRangeTypeInvalid", "invalid");
}

void pxrInternal__aapl__pxrReserved__::usd_initialize(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration *a2)
{
  sub_29A3479FC(v3, this);
  sub_29A3479FC(v4, this + 24);
  if (atomic_load_explicit(&qword_2A17420B8, memory_order_acquire) != -1)
  {
    v6 = v3;
    v5 = &v6;
    std::__call_once(&qword_2A17420B8, &v5, sub_29A49F9B0);
  }

  sub_29A019EE8(v4, v4[1]);
  sub_29A019EE8(v3, v3[1]);
}

uint64_t sub_29A49F854(uint64_t a1)
{
  sub_29A019EE8(a1 + 24, *(a1 + 32));
  sub_29A019EE8(a1, *(a1 + 8));
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(void *this)
{
  this[1] = 0;
  *this = this + 1;
  this[5] = 0;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  return this;
}

{
  this[1] = 0;
  *this = this + 1;
  this[5] = 0;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  return this;
}

void pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(char **this)
{
  sub_29A019EE8((this + 3), this[4]);
  sub_29A019EE8(this, this[1]);
}

{
  sub_29A019EE8((this + 3), this[4]);
  sub_29A019EE8(this, this[1]);
}

uint64_t **pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::AppendUserPluginPaths(uint64_t **result, const void ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_29A09ADD4(v4 + 3, (v4 + 4), v2, v2);
      v2 += 3;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_29A49F9B0(pxrInternal__aapl__pxrReserved__ *a1)
{
  v1 = **a1;
  LogInstance = pxrInternal__aapl__pxrReserved__::GetLogInstance(a1);
  has_internal_content = os_variant_has_internal_content();
  v4 = has_internal_content;
  if ((has_internal_content & 1) == 0)
  {
    has_internal_content = unsetenv("TF_DEBUG");
    goto LABEL_7;
  }

  if (!LogInstance)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  has_internal_content = os_signpost_id_generate(LogInstance);
  v5 = has_internal_content;
  if (has_internal_content + 1 >= 2)
  {
    has_internal_content = os_signpost_enabled(LogInstance);
    if (has_internal_content)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_299FE7000, LogInstance, OS_SIGNPOST_INTERVAL_BEGIN, v5, "usd_initialize", &unk_29B9D452D, &buf, 2u);
    }
  }

LABEL_8:
  v6 = tbb::internal::DoOneTimeInitializations(has_internal_content);
  pxrInternal__aapl__pxrReserved__::__usdlibInitFailure = v6;
  if (v6)
  {
    if (LogInstance && v5 + 1 >= 2 && os_signpost_enabled(LogInstance))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_299FE7000, LogInstance, OS_SIGNPOST_INTERVAL_END, v5, "usd_initialize", &unk_29B9D452D, &buf, 2u);
    }

    return;
  }

  if ((atomic_load_explicit(&qword_2A17420C8, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(&qword_2A17420C8);
    if (v6)
    {
      v106 = operator new(8uLL);
      pxrInternal__aapl__pxrReserved__::Tf_RegistryInit::Tf_RegistryInit(v106, "usd");
      qword_2A17420C0 = v106;
      __cxa_guard_release(&qword_2A17420C8);
    }
  }

  pxrInternal__aapl__pxrReserved__::Work_InitializeThreading(v6);
  pxrInternal__aapl__pxrReserved__::Plug_SetUSDLibInitEntitlements(v1, v7);
  memset(&buf, 0, sizeof(buf));
  v8 = dyld_image_path_containing_address();
  dyld_image_header_containing_address();
  v9 = macho_dylib_install_name();
  v10 = MEMORY[0x29EDB8E70];
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v11, v8, v12, v13, v14);
  v20 = objc_msgSend_fileURLWithPath_(v10, v16, v15, v17, v18, v19);
  v26 = objc_msgSend_URLByResolvingSymlinksInPath(v20, v21, v22, v23, v24, v25);
  v27 = MEMORY[0x29EDB8E70];
  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v28, v9, v29, v30, v31);
  v37 = objc_msgSend_fileURLWithPath_(v27, v33, v32, v34, v35, v36);
  v43 = objc_msgSend_URLByResolvingSymlinksInPath(v37, v38, v39, v40, v41, v42);
  PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v26, v44, v45, v46, v47, v48);
  v55 = objc_msgSend_path(PathComponent, v50, v51, v52, v53, v54);
  v60 = objc_msgSend_cStringUsingEncoding_(v55, v56, 4, v57, v58, v59);
  sub_29A008E78(v116, v60);
  v66 = objc_msgSend_URLByDeletingLastPathComponent(v43, v61, v62, v63, v64, v65);
  v72 = objc_msgSend_path(v66, v67, v68, v69, v70, v71);
  v77 = objc_msgSend_cStringUsingEncoding_(v72, v73, 4, v74, v75, v76);
  sub_29A008E78(v114, v77);
  if ((v117 & 0x80u) == 0)
  {
    v78 = v117;
  }

  else
  {
    v78 = v116[1];
  }

  v79 = &v112;
  sub_29A022DE0(&v112, v78 + 5);
  if ((v112.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v79 = v112.__pn_.__r_.__value_.__r.__words[0];
  }

  if (v78)
  {
    if ((v117 & 0x80u) == 0)
    {
      v80 = v116;
    }

    else
    {
      v80 = v116[0];
    }

    memmove(v79, v80, v78);
  }

  strcpy(v79 + v78, "/usd/");
  v113 = v112;
  if ((v115 & 0x80u) == 0)
  {
    v81 = v115;
  }

  else
  {
    v81 = v114[1];
  }

  v82 = &v111;
  sub_29A022DE0(&v111, v81 + 5);
  if ((v111.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v82 = v111.__pn_.__r_.__value_.__r.__words[0];
  }

  if (v81)
  {
    if ((v115 & 0x80u) == 0)
    {
      v83 = v114;
    }

    else
    {
      v83 = v114[0];
    }

    memmove(v82, v83, v81);
  }

  strcpy(v82 + v81, "/usd/");
  v112 = v111;
  std::__fs::filesystem::__status(&v113, 0);
  if (v111.__pn_.__r_.__value_.__s.__data_[0] && v111.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    v84 = &v113;
    goto LABEL_40;
  }

  std::__fs::filesystem::__status(&v112, 0);
  if (v111.__pn_.__r_.__value_.__s.__data_[0] && v111.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    v84 = &v112;
LABEL_40:
    std::string::operator=(&buf, &v84->__pn_);
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&buf.__r_.__value_.__s + 23))
    {
      memset(&v111, 0, sizeof(v111));
      v108 = 0;
      v109 = 0;
      v110 = 0;
      __p = buf;
      goto LABEL_46;
    }

LABEL_49:
    if (LogInstance && v5 + 1 >= 2 && os_signpost_enabled(LogInstance))
    {
      LOWORD(v111.__pn_.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_299FE7000, LogInstance, OS_SIGNPOST_INTERVAL_END, v5, "usd_initialize", &unk_29B9D452D, &v111, 2u);
    }

    goto LABEL_65;
  }

  if (!buf.__r_.__value_.__l.__size_)
  {
    goto LABEL_49;
  }

  memset(&v111, 0, sizeof(v111));
  v108 = 0;
  v109 = 0;
  v110 = 0;
  sub_29A008D14(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
LABEL_46:
  sub_29A091654(&v111.__pn_.__r_.__value_.__l.__data_, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v4)
    {
      goto LABEL_57;
    }

LABEL_54:
    v90 = objc_msgSend_standardUserDefaults(MEMORY[0x29EDB8E78], v85, v86, v87, v88, v89, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2], v108, v109, v110, v111.__pn_.__r_.__value_.__r.__words[0], v111.__pn_.__r_.__value_.__l.__size_, v111.__pn_.__r_.__value_.__r.__words[2]);
    v95 = objc_msgSend_stringForKey_(v90, v91, @"ExtraPluginPath", v92, v93, v94);
    if (v95)
    {
      v101 = objc_msgSend_UTF8String(v95, v96, v97, v98, v99, v100);
      sub_29A008E78(&__p, v101);
      sub_29A091654(&v111.__pn_.__r_.__value_.__l.__data_, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_57;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v4)
  {
    goto LABEL_54;
  }

LABEL_57:
  sub_29A0935F4(&v111.__pn_.__r_.__value_.__l.__data_, v111.__pn_.__r_.__value_.__l.__size_, v1[3], v1 + 4);
  pxrInternal__aapl__pxrReserved__::Plug_SetPaths(&v111, &v108, 1);
  pxrInternal__aapl__pxrReserved__::aapl_vt_castRegistry_init(v102);
  if (&qword_2A1B6E1C8 < &qword_2A1B71768)
  {
    v105 = &qword_2A1B6E1C8;
    do
    {
      pxrInternal__aapl__pxrReserved__::Tf_RegistryInit::Add(*v105, v105[1], v105[2], v104);
      v105 += 3;
    }

    while (v105 < &qword_2A1B71768);
  }

  pxrInternal__aapl__pxrReserved__::__usdlib_internal_mtlx_intialize(v103);
  if (LogInstance && v5 + 1 >= 2 && os_signpost_enabled(LogInstance))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_signpost_emit_with_name_impl(&dword_299FE7000, LogInstance, OS_SIGNPOST_INTERVAL_END, v5, "usd_initialize", &unk_29B9D452D, &__p, 2u);
  }

  __p.__r_.__value_.__r.__words[0] = &v108;
  sub_29A012C90(&__p);
  v108 = &v111;
  sub_29A012C90(&v108);
LABEL_65:
  if (SHIBYTE(v112.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v113.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__pn_.__r_.__value_.__l.__data_);
  }

  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  if (v117 < 0)
  {
    operator delete(v116[0]);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_29A49FFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  operator delete(v41);
  __cxa_guard_abort(&qword_2A17420C8);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<BOOL>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A0244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(pxrInternal__aapl__pxrReserved__::Usd_Clip *this, double a2)
{
  v2 = a2;
  v16 = 0;
  v17 = 0;
  if (sub_29A4A9BC8(*(this + 15), &v17, &v16, a2))
  {
    v4 = *(this + 15);
    v5 = (*v4 + 24 * v17);
    v6 = *v4 + 24 * v16;
    if (*(v6 + 16) == 1)
    {
      v7 = v16 + 1;
      if (v16 + 1 >= 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3))
      {
        v14[0] = "usd/clip.cpp";
        v14[1] = "_TranslateTimeToInternal";
        v14[2] = 630;
        v14[3] = "Usd_Clip::InternalTime pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(ExternalTime) const";
        v15 = 0;
        v12 = v16 + 1;
        v13 = v5;
        v11 = v6;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "i2 + 1 < times->size()", 0);
        v6 = v11;
        v7 = v12;
        v5 = v13;
        v4 = *(this + 15);
      }

      v8 = *(*v4 + 24 * v7);
      v9 = *v5;
    }

    else
    {
      v9 = *v5;
      v8 = *v6;
    }

    if (v9 == v8 || v9 == v2)
    {
      return v5[1];
    }

    else if (v8 == v2)
    {
      return *(v6 + 8);
    }

    else
    {
      return v5[1] + (v2 - v9) * ((*(v6 + 8) - v5[1]) / (v8 - v9));
    }
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::Usd_Clip *this@<X0>)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(this + 136) != 1)
  {
    v19 = 0;
    v3 = sub_29B293A0C(this + 3);
    if (!(v4 & 1 | v3))
    {
      __p.__r_.__value_.__r.__words[0] = "usd/clip.cpp";
      __p.__r_.__value_.__l.__size_ = "_GetLayerForClip";
      __p.__r_.__value_.__r.__words[2] = 726;
      v21 = "SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip() const";
      v22 = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "sourceLayer", 0) & 1) == 0)
      {
        __p.__r_.__value_.__r.__words[0] = "usd/clip.cpp";
        __p.__r_.__value_.__l.__size_ = "_GetLayerForClip";
        __p.__r_.__value_.__r.__words[2] = 740;
        v21 = "SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip() const";
        v22 = 0;
        v5 = (this + 40);
        if (*(this + 63) < 0)
        {
          v5 = *v5;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Unable to open clip layer @%s@", v15, v5);
        v8 = atomic_load(&qword_2A17420D0);
        if (!v8)
        {
          v8 = sub_29A4AAFA8();
        }

        v9 = v8[1] & 0xFFFFFFFFFFFFFFF8;
        if (v9)
        {
          v10 = (v9 + 16);
          if (*(v9 + 39) < 0)
          {
            v10 = *v10;
          }
        }

        else
        {
          v10 = "";
        }

        v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
        if (!v11)
        {
          v11 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
        }

        v12 = *v11 & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          v13 = (v12 + 16);
          if (*(v12 + 39) < 0)
          {
            v13 = *v13;
          }
        }

        else
        {
          v13 = "";
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf(v10, v6, v7, v13);
        v17[0] = 0;
        v17[1] = 0;
        v16 = v17;
        pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous(&__p, &v16, &v18);
        v14 = v18;
        v18 = 0;
        v19 = v14;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_RemoveRef();
      }
    }

    sub_29A419260(this);
  }

  *a1 = *(this + 26);

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
}

uint64_t sub_29A4A0784(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A0954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A097C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<unsigned char>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A0B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A0B74(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A0D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A0D6C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<int>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A0F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A0F64(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<int>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A1134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A115C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<unsigned int>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A1354(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A1524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A154C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<long long>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A1744(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A1914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A193C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<unsigned long long>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A1B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A1B34(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A1D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A1D2C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::pxr_half::half>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A1EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A1F24(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A20F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A211C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<float>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A22EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A2314(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<float>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A24E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A250C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<double>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A26DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A2704(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<double>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A28D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A28FC(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), double *a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A2AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A2B0C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), unint64_t *a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A2D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A2D48(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<std::string>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A2F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A2F40(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A3110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A3138(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A3308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A3330(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A3500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A3528(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A36F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A3720(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A38F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A3918(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A3AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A3B10(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A3CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A3D08(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::SdfPathExpression>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A3ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A3F00(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A40D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A40F8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A42C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A42F0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A44C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A44E8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A46B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A46E0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A48B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A48D8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A4AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A4AD0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A4CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A4CC8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfQuath>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A4E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A4EC0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A5090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A50B8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfQuatf>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A5288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A52B0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A5480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A54A8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfQuatd>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A5678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A56A0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A5870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A5898(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec2i>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A5A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A5A90(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A5C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A5C88(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec2h>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A5E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A5E80(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A6050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A6078(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec2f>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A6248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A6270(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A6440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A6468(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec2d>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A6638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A6660(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A6830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A6858(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec3i>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A6A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A6A50(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A6C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A6C48(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec3h>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A6E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A6E40(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A7010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A7038(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A7208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A7230(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A7400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A7428(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A75F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A7620(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A77F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A7818(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec4i>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A79E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A7A10(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A7BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A7C08(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec4h>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A7DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A7E00(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A7FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A7FF8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec4f>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A81C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A81F0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A83C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A83E8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::GfVec4d>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A85B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A85E0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A87B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4A87D8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a4) & 1;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(a1, a2, a4, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::SdfAbstractDataValue>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A8B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_29A213190(&a18);
  sub_29A213190(&a12);
  sub_29A321930(&a9);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtValue>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t (***a3)(void, uint64_t *, uint64_t *, double, double), pxrInternal__aapl__pxrReserved__::VtValue *a4, double a5)
{
  v8[16] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v8, this, (a1 + 16), (a1 + 88), 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToInternal(a1, a5);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(&v7, a1);
}

void sub_29A4A8E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdIsClipRelatedField(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  if (!v3)
  {
    v3 = sub_29A4AAA94(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  }

  if ((*(v3 + 1) ^ *this) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  if (!v5)
  {
    v5 = sub_29A4AAA94(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  }

  return (*(v5 + 2) ^ *this) < 8uLL;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdGetClipRelatedFields@<X0>(uint64_t *a2@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  if (!v3)
  {
    v3 = sub_29A4AAA94(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  }

  v4 = *(v3 + 1);
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  if (!v6)
  {
    v6 = sub_29A4AAA94(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  }

  v7 = *(v6 + 2);
  v13 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v8;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v12, &v14, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v11 = *(&v12 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29A4A9298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30 != -1.79769313e308 && a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Usd_Clip *pxrInternal__aapl__pxrReserved__::Usd_Clip::Usd_Clip(pxrInternal__aapl__pxrReserved__::Usd_Clip *this)
{
  *this = 0;
  *(this + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 5);
  *(this + 3) = 0;
  *(this + 4) = 0;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath((this + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 23);
  *(this + 136) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 18) = 850045863;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  return this;
}

void sub_29A4A93AC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  sub_29B2A8F78((v1 + 16), v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::Usd_Clip(uint64_t a1, uint64_t *a2, _DWORD *a3, unint64_t a4, __int128 *a5, _DWORD *a6, void *a7, double a8, double a9, double a10)
{
  v14 = *MEMORY[0x29EDCA608];
  *a1 = *a2;
  v13 = a2[1];
  *(a1 + 8) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  sub_29A419260(a2);
}

void sub_29A4A96F0(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 32);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  sub_29A1DCEA8((v1 + 16));
  v4 = *(v1 + 8);
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v4 + 8))(v4);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A4A9B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v9 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A321930(va1);
}

BOOL sub_29A4A9BC8(double **a1, unint64_t *a2, unint64_t *a3, double a4)
{
  v4 = *a1;
  v5 = a1 + 1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    return v4 != v6;
  }

  v10 = *a1;
  v11 = a1[1];
  if (*v4 >= a4)
  {
    *a2 = 0;
    v20 = 1;
  }

  else
  {
    v12 = v6 - v4;
    if (*(v6 - 3) > a4)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * v12;
      v14 = *a1;
      do
      {
        v15 = v13 >> 1;
        v16 = &v14[3 * (v13 >> 1)];
        v18 = *v16;
        v17 = v16 + 3;
        v13 += ~(v13 >> 1);
        if (v18 < a4)
        {
          v14 = v17;
        }

        else
        {
          v13 = v15;
        }
      }

      while (v13);
      v19 = 0xAAAAAAAAAAAAAAABLL * (v14 - v4);
      *a3 = v19;
      *a2 = v19 - 1;
      v20 = *a3;
      goto LABEL_13;
    }

    v21 = 0xAAAAAAAAAAAAAAABLL * v12;
    *a2 = v21 - 2;
    v20 = v21 - 1;
  }

  *a3 = v20;
LABEL_13:
  v22 = *a2;
  if (*a2 >= v20)
  {
    v25[0] = "usd/clip.cpp";
    v25[1] = "_GetBracketingTimeSegment";
    v25[2] = 149;
    v25[3] = "BOOL pxrInternal__aapl__pxrReserved__::_GetBracketingTimeSegment(const Usd_Clip::TimeMappings &, Usd_Clip::ExternalTime, size_t *, size_t *)";
    v26 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v25, "*m1 < *m2", 0);
    v22 = *a2;
    v10 = *a1;
    v11 = a1[1];
  }

  v23 = 0xAAAAAAAAAAAAAAABLL * (v11 - v10);
  if (v22 >= v23)
  {
    sub_29B2A8FE8(v25, v5, a1, &v27);
    v23 = v27;
  }

  if (*a3 >= v23)
  {
    sub_29B2A9068(v25);
  }

  return v4 != v6;
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::GetBracketingTimeSamplesForPath(double ***this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, double *a4, double *a5)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetBracketingTimeSamplesForPathFromClipLayer(this, a2, a3, v5, v5 + 1);
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::ListTimeSamplesForPath(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::Usd_Clip *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X1>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_ListTimeSamplesForPathFromClipLayer(this, a3, a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToExternal(uint64_t this, double a2, uint64_t a3, uint64_t a4)
{
  v5 = this;
  v6 = **(this + 120);
  v7 = v6 + 24 * a4;
  if (*(v6 + 24 * a3 + 16) == 1)
  {
    this = sub_29B2A90B4(v8);
  }

  if (*(v7 + 16) == 1 && a4 + 1 >= 0xAAAAAAAAAAAAAAABLL * ((*(*(v5 + 120) + 8) - **(v5 + 120)) >> 3))
  {
    v8[0] = "usd/clip.cpp";
    v8[1] = "_TranslateTimeToExternal";
    v8[2] = 696;
    v8[3] = "Usd_Clip::ExternalTime pxrInternal__aapl__pxrReserved__::Usd_Clip::_TranslateTimeToExternal(InternalTime, size_t, size_t) const";
    v9 = 0;
    return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "i2 + 1 < times->size()", 0);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::Usd_Clip::IsBlocked(pxrInternal__aapl__pxrReserved__::Usd_Clip *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3)
{
  v3[2] = 0;
  v3[3] = &stru_2A2048EE0;
  v4 = 0;
  v3[1] = &unk_2A2050460;
  pxrInternal__aapl__pxrReserved__::Usd_Clip::_GetLayerForClip(v3, this);
}

pxrInternal__aapl__pxrReserved__::Usd_Clip *pxrInternal__aapl__pxrReserved__::Usd_Clip::GetLayerIfOpen@<X0>(pxrInternal__aapl__pxrReserved__::Usd_Clip *this@<X0>, uint64_t *a2@<X8>)
{
  if (*(this + 136))
  {
    pxrInternal__aapl__pxrReserved__::Usd_Clip::GetLayer(this);
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

pxrInternal__aapl__pxrReserved__::UsdTokensType *sub_29A4AAA94(atomic_ullong *a1)
{
  result = sub_29A4AAADC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      v4 = sub_29A4AAB20(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdTokensType *sub_29A4AAADC()
{
  v0 = operator new(0x118uLL);
  pxrInternal__aapl__pxrReserved__::UsdTokensType::UsdTokensType(v0);
  return v0;
}

uint64_t sub_29A4AAB20(uint64_t a1)
{
  v34 = (a1 + 256);
  sub_29A124AB0(&v34);
  v2 = *(a1 + 248);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 240);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 232);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 224);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 216);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 208);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 200);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 192);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 184);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 176);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 168);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 160);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 152);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 144);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 136);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 128);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 120);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 112);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 104);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 96);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 88);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 80);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 72);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 64);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 56);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 48);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 40);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 32);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 24);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 16);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 8);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

double *sub_29A4AAE5C(double *a1, double *a2)
{
  if (a1 != a2)
  {
    ++a1;
    while (a1 != a2)
    {
      v2 = *(a1 - 1);
      v3 = *a1++;
      if (v2 == v3)
      {
        a1 -= 2;
        goto LABEL_7;
      }
    }
  }

  v4 = a2;
  if (a1 != a2)
  {
LABEL_7:
    v5 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v6 = *a1;
      do
      {
        v7 = *v5;
        if (v6 != *v5)
        {
          a1[1] = v7;
          ++a1;
          v6 = v7;
        }

        ++v5;
      }

      while (v5 != a2);
    }

    return a1 + 1;
  }

  return v4;
}

uint64_t *sub_29A4AAED0(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = sub_29A03AFE8(a1, v4);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

uint64_t sub_29A4AAF38(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A2F1FA8(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    goto LABEL_4;
  }

  result = sub_29A2F1FA8(a2);
  if (result)
  {
LABEL_4:
    result = 1;
    *(a1 + 24) = 1;
    return result;
  }

  *(a1 + 25) = 1;
  return result;
}

uint64_t *sub_29A4AAFA8()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "dummy_clip");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "dummy_clip.%s");
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A17420D0, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A17420D0);
  }

  return v0;
}

void sub_29A4AB0EC(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29A4AB170(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A2CB120(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AB1F8(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AB1F8(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AB2B4(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A1F9040(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB344(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A19E5FC(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AB3CC(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AB3CC(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AB488(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A293A9C(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB518(uint64_t a1, __int128 **a2)
{
  *(a1 + 24) = 0;
  if (sub_29A19D610(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A27CF04(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB5A8(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3F94B8(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB638(uint64_t a1, __int128 **a2)
{
  *(a1 + 24) = 0;
  if (sub_29A19BC88(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A27EC40(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB6C8(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A298D2C(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB758(uint64_t a1, __int128 **a2)
{
  *(a1 + 24) = 0;
  if (sub_29A27DEAC(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A27DEE4(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB7E8(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3F9968(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB878(uint64_t a1, __int128 **a2)
{
  *(a1 + 24) = 0;
  if (sub_29A27F920(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A27F958(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB908(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3F9C34(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AB998(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A18E100(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ABA20(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4ABA20(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4ABADC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3F9DF4(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ABB6C(uint64_t a1, __int128 **a2)
{
  *(a1 + 24) = 0;
  if (sub_29A18E720(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A41712C(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ABBFC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A346994(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ABC8C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A190184(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ABD14(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4ABD14(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4ABDD0(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3FA1D0(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ABE60(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FA330(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ABEE8(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ABEE8(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_29A213190(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_29A213190(&v8);
  }

  return a1;
}

uint64_t sub_29A4ABFA4(uint64_t a1, __int128 **a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1FA6D8(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A280638(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC034(uint64_t a1, __int128 **a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1FA748(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A280D90(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC0C4(uint64_t a1, const std::string **a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1FA780(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    std::string::operator=(v6, v5);
    std::string::operator=(v6 + 1, v5 + 1);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC168(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1FA80C(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AC1F0(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC1F0(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_29A216064(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_29A216064(&v8);
  }

  return a1;
}

uint64_t sub_29A4AC2AC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1F5AC8(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC32C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FB114(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AC3B4(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC3B4(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_29A213190(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_29A213190(&v8);
  }

  return a1;
}

uint64_t sub_29A4AC470(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1FD484(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    if (v6 != v5)
    {
      sub_29A36CF34(&v6->__r_.__value_.__l.__data_, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
      sub_29A3960A0(&v6[1], *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 5);
      sub_29A39625C(&v6[2], *(v5 + 48), *(v5 + 56), (*(v5 + 56) - *(v5 + 48)) >> 6);
    }

    std::string::operator=(v6 + 3, (v5 + 72));
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC54C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1FD578(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AC5D4(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC5D4(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_29A219394(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_29A219394(&v8);
  }

  return a1;
}

uint64_t sub_29A4AC690(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FB9E8(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    v7 = v5[1];
    *v6 = *v5;
    v6[1] = v7;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC720(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FBB48(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AC7A8(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AC7A8(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AC864(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FBEFC(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    *v6 = *v5;
    v7 = *(v5 + 16);
    v8 = *(v5 + 32);
    v9 = *(v5 + 48);
    *(v6 + 64) = *(v5 + 64);
    *(v6 + 32) = v8;
    *(v6 + 48) = v9;
    *(v6 + 16) = v7;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AC90C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FC06C(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AC994(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AC994(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4ACA50(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FC38C(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    v7 = *v5;
    v8 = v5[1];
    v9 = v5[3];
    v6[2] = v5[2];
    v6[3] = v9;
    *v6 = v7;
    v6[1] = v8;
    v10 = v5[4];
    v11 = v5[5];
    v12 = v5[7];
    v6[6] = v5[6];
    v6[7] = v12;
    v6[4] = v10;
    v6[5] = v11;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ACAF8(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A19833C(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ACB80(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4ACB80(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4ACC3C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3FC630(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ACCCC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1996F4(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ACD54(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4ACD54(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4ACE10(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FC86C(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    **(a1 + 8) = *v5;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ACEA0(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A199B6C(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ACF28(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4ACF28(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4ACFE4(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FCAF4(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    v7 = v5[1];
    *v6 = *v5;
    v6[1] = v7;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AD074(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A19B1C0(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AD0FC(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AD0FC(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AD1B8(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3FCE54(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AD248(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FCEC4(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AD2D0(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AD2D0(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AD38C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3FD158(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AD41C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A190BD0(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AD4A4(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AD4A4(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AD560(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3FD314(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AD5F0(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A19104C(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AD678(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AD678(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AD734(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FD4E0(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    **(a1 + 8) = *v5;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AD7C4(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A192658(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AD84C(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AD84C(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AD908(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FD868(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    v7 = *v5;
    *(v6 + 8) = *(v5 + 8);
    *v6 = v7;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AD9A0(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FD9D0(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ADA28(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4ADA28(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4ADAE4(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3FDC80(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    v5 = *(a1 + 8);
    v6 = *v2;
    *(v5 + 4) = *(v2 + 2);
    *v5 = v6;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ADB7C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1931E0(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ADC04(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4ADC04(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4ADCC0(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FDE60(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    v7 = *v5;
    *(v6 + 8) = *(v5 + 8);
    *v6 = v7;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ADD58(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1936C8(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ADDE0(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4ADDE0(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4ADE9C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FE138(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    v7 = *v5;
    *(v6 + 16) = *(v5 + 16);
    *v6 = v7;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4ADF34(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A194DC4(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4ADFBC(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4ADFBC(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AE078(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FE4B4(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    **(a1 + 8) = *v5;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AE108(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FE614(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AE190(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AE190(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AE24C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3FE8A4(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AE2DC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A195848(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AE364(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AE364(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AE420(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FEA70(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    **(a1 + 8) = *v5;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AE4B0(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A195CC0(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AE538(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AE538(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4AE5F4(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A3FED30(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    v7 = v5[1];
    *v6 = *v5;
    v6[1] = v7;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A4AE684(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A197328(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A4AE70C(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

__int128 *sub_29A4AE70C(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_ClipCache::ConcurrentPopulationContext::ConcurrentPopulationContext(uint64_t this, pxrInternal__aapl__pxrReserved__::Usd_ClipCache *a2, char *a3)
{
  *this = a2;
  *(this + 8) = 850045863;
  *(this + 16) = 0u;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = 0;
  if (*(a2 + 5))
  {
    v3[0] = "usd/clipCache.cpp";
    v3[1] = "ConcurrentPopulationContext";
    v3[2] = 37;
    v3[3] = "pxrInternal__aapl__pxrReserved__::Usd_ClipCache::ConcurrentPopulationContext::ConcurrentPopulationContext(Usd_ClipCache &)";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v3, "Failed axiom: ' %s '", a3, "!_cache._concurrentPopulationContext");
  }

  *(a2 + 5) = this;
  return this;
}

void pxrInternal__aapl__pxrReserved__::Usd_ClipCache::ConcurrentPopulationContext::~ConcurrentPopulationContext(pxrInternal__aapl__pxrReserved__::Usd_ClipCache::ConcurrentPopulationContext *this)
{
  *(*this + 40) = 0;
  std::mutex::~mutex((this + 8));
}

{
  *(*this + 40) = 0;
  std::mutex::~mutex((this + 8));
}

pxrInternal__aapl__pxrReserved__::Usd_ClipCache::Lifeboat *pxrInternal__aapl__pxrReserved__::Usd_ClipCache::Lifeboat::Lifeboat(pxrInternal__aapl__pxrReserved__::Usd_ClipCache::Lifeboat *this, pxrInternal__aapl__pxrReserved__::Usd_ClipCache *a2)
{
  *this = a2;
  v4 = operator new(0x40uLL);
  *(this + 1) = v4;
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *(v4 + 6) = 0;
  *(v4 + 14) = 1065353216;
  if (*(a2 + 6))
  {
    v7[0] = "usd/clipCache.cpp";
    v7[1] = "Lifeboat";
    v7[2] = 90;
    v7[3] = "pxrInternal__aapl__pxrReserved__::Usd_ClipCache::Lifeboat::Lifeboat(Usd_ClipCache &)";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v7, "Failed axiom: ' %s '", v5, "!_cache._lifeboat");
  }

  *(a2 + 6) = this;
  return this;
}

void sub_29A4AE99C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_29A4AFF84(v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Usd_ClipCache::Lifeboat::~Lifeboat(void ***this)
{
  (*this)[6] = 0;
  v3 = this[1];
  v1 = this + 1;
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    sub_29A4AFF84(v1, v2);
  }
}

{
  (*this)[6] = 0;
  v3 = this[1];
  v1 = this + 1;
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    sub_29A4AFF84(v1, v2);
  }
}

double pxrInternal__aapl__pxrReserved__::Usd_ClipCache::Usd_ClipCache(pxrInternal__aapl__pxrReserved__::Usd_ClipCache *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Usd_ClipCache::_ComputeClipsFromPrimIndex(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a3, void **a4)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  memset(v38, 0, sizeof(v38));
  pxrInternal__aapl__pxrReserved__::Usd_ComputeClipSetDefinitionsForPrimIndex(a3, &v39, v38);
  sub_29A039314(a4, 0xF0F0F0F0F0F0F0F1 * ((v40 - v39) >> 4));
  v27 = a4;
  v7 = v39;
  if (v40 != v39)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (v7 + v9);
      v12 = v38[0];
      if ((*(v7 + v9 + 96) & 1) != 0 || !*(a1 + 48))
      {
        v15 = 0;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v33);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v33 + 1);
        memset(&v34, 0, sizeof(v34));
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v35);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v36);
        memset(v37, 0, sizeof(v37));
        sub_29A2258F0(&v33, a2);
        sub_29A225948(&v33 + 1, a2 + 1);
        std::string::operator=(&v34, &v12[v8]);
        v13 = v7 + v9;
        if (*(v13 + 128) == 1)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v29, v13 + 104);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        if (*(v13 + 40) == 1)
        {
          sub_29A4AC1F0(v37, v11);
        }

        v14 = sub_29A4B0404((*(*(a1 + 48) + 8) + 24), &v33);
        v15 = v14 != 0;
        if (v14)
        {
          pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v29, v14 + 6);
          sub_29A4AEEE4((v11 + 3), &v29);
          if (v32 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29);
          }
        }

        sub_29A216064(v37);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36);
        sub_29A1DE3A4(&v35);
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v33 + 1);
        sub_29A1DE3A4(&v33);
      }

      v29 = 0uLL;
      v30 = 0;
      pxrInternal__aapl__pxrReserved__::Usd_ClipSet::New(v11, &v29, &v28, &v12[v8]);
      v16 = HIBYTE(v30);
      if (v30 < 0)
      {
        v16 = *(&v29 + 1);
      }

      if (v16)
      {
        if (v28)
        {
          if (sub_29A4AF3EC(2))
          {
            v17 = SHIBYTE(v30);
            v18 = v29;
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
            v22 = &v29;
            if (v17 < 0)
            {
              v22 = v18;
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s (on prim <%s>)\n", v20, v21, v22, Text);
          }
        }

        else
        {
          v33 = "usd/clipCache.cpp";
          v34.__r_.__value_.__r.__words[0] = "_CreateClipSetFromDefinition";
          v34.__r_.__value_.__l.__size_ = 126;
          v34.__r_.__value_.__r.__words[2] = "Usd_ClipSetRefPtr pxrInternal__aapl__pxrReserved__::_CreateClipSetFromDefinition(const SdfPath &, const std::string &, const Usd_ClipSetDefinition &)";
          LOBYTE(v35) = 0;
          String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a2);
          if (*(String + 23) >= 0)
          {
            v25 = String;
          }

          else
          {
            v25 = *String;
          }

          v26 = &v29;
          if (v30 < 0)
          {
            v26 = v29;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v33, "Invalid clips specified for prim <%s>: %s", v24, v25, v26);
        }
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29);
      }

      if (v28 && *(v28 + 88) != *(v28 + 96))
      {
        if (v15)
        {
          pxrInternal__aapl__pxrReserved__::Usd_Clip::GetLayer(*(v28 + 72));
        }

        sub_29A017F80(v27, &v28);
      }

      if (*(&v28 + 1))
      {
        sub_29A014BEC(*(&v28 + 1));
      }

      ++v10;
      v7 = v39;
      v9 += 272;
      v8 += 24;
    }

    while (v10 < 0xF0F0F0F0F0F0F0F1 * ((v40 - v39) >> 4));
  }

  v33 = v38;
  sub_29A012C90(&v33);
  v33 = &v39;
  sub_29A4B0280(&v33);
}

void sub_29A4AEE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a25 = v25 - 136;
  sub_29A012C90(&a25);
  a25 = v25 - 112;
  sub_29A4B0280(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4AEEE4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v7;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  return a1;
}

_DWORD *sub_29A4AEFA4(uint64_t a1)
{
  sub_29A216064((a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_ClipCache::PopulateClipsForPrim(pxrInternal__aapl__pxrReserved__::Usd_ClipCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a3)
{
  sub_29A0ECEEC(&v18, "Usd", "Usd_ClipCache::PopulateClipsForPrim");
  v16 = 0uLL;
  v17 = 0;
  pxrInternal__aapl__pxrReserved__::Usd_ClipCache::_ComputeClipsFromPrimIndex(this, a2, a3, &v16);
  v6 = v16;
  if (v16 != *(&v16 + 1))
  {
    v7 = *(this + 5);
    if (v7)
    {
      v8 = (v7 + 8);
      std::mutex::lock((v7 + 8));
    }

    else
    {
      v8 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v20, a2);
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(&v20))
    {
      sub_29A41AA50(this, &v20);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v15, &v20);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    v9 = sub_29A4AF324(this, a2);
    sub_29A03AF64(v9);
    *v9 = v16;
    v9[2] = v17;
    v16 = 0uLL;
    v17 = 0;
    if (sub_29A4AF3EC(2))
    {
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a2);
      if (*(String + 23) >= 0)
      {
        v13 = String;
      }

      else
      {
        v13 = *String;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Populated clips for prim <%s>\n", v11, v12, v13);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20 + 1);
    sub_29A1DE3A4(&v20);
    if (v7)
    {
      std::mutex::unlock(v8);
    }
  }

  v20 = &v16;
  sub_29A0176E4(&v20);
  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v19, v18);
  }

  return v6 != *(&v6 + 1);
}

void sub_29A4AF29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  sub_29A1DCEA8(&a18);
  if (v19)
  {
    std::mutex::unlock(v18);
  }

  a18 = &a13;
  sub_29A0176E4(&a18);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4AF324(void *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v7, a2);
  sub_29A1E2240(&v8, a2 + 1);
  memset(v9, 0, sizeof(v9));
  memset(v6, 0, sizeof(v6));
  v4 = sub_29A4B0784(a1, &v7);
  v10 = v9;
  sub_29A0176E4(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  sub_29A1DE3A4(&v7);
  v10 = v6;
  sub_29A0176E4(&v10);
  return v4 + 8;
}

void sub_29A4AF3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A4B01AC(va);
  *(v11 - 40) = &a9;
  sub_29A0176E4((v11 - 40));
  _Unwind_Resume(a1);
}

BOOL sub_29A4AF3EC(int a1)
{
  v2 = sub_29A4B01F8();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29A4B01F8();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F295980[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void **sub_29A4AF450(void **a1)
{
  v3 = a1;
  sub_29A0176E4(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Usd_ClipCache::GetUsedLayers(pxrInternal__aapl__pxrReserved__::Usd_ClipCache *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 5);
  if (v4)
  {
    v5 = (v4 + 8);
    std::mutex::lock((v4 + 8));
  }

  else
  {
    v5 = 0;
  }

  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v6 = sub_29A4AF6C8(this);
  for (i = v6; v6; i = v6)
  {
    v7 = v6[1];
    v8 = v6[2];
    if (v7 != v8)
    {
      do
      {
        v9 = *(*v7 + 72);
        if (v9)
        {
          pxrInternal__aapl__pxrReserved__::Usd_Clip::GetLayerIfOpen(v9, &v18);
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        v10 = sub_29B293A0C(&v18);
        if (v11 & 1 | v10)
        {
          std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
        }

        v12 = v19;
        if (v19 && atomic_fetch_add_explicit((v19 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v12 + 8))(v12);
        }

        v13 = *(*v7 + 88);
        v14 = *(*v7 + 96);
        while (v13 != v14)
        {
          pxrInternal__aapl__pxrReserved__::Usd_Clip::GetLayerIfOpen(*v13, &v18);
          v15 = sub_29B293A0C(&v18);
          if (v16 & 1 | v15)
          {
            std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
          }

          v17 = v19;
          if (v19)
          {
            if (atomic_fetch_add_explicit((v19 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              (*(*v17 + 8))(v17);
            }
          }

          v13 += 2;
        }

        v7 += 16;
      }

      while (v7 != v8);
      v6 = i;
    }

    v6 = v6[5];
    if (!v6)
    {
      v6 = sub_29A41AAB8(&i);
    }
  }

  if (v4)
  {
    std::mutex::unlock(v5);
  }
}

void sub_29A4AF64C(_Unwind_Exception *a1)
{
  sub_29A1FFFD0(v2, *(v2 + 8));
  if (v3)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_29A4AF6C8(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  if (!*(a1 + 3))
  {
    return 0;
  }

  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  return sub_29A41AA50(a1, v2);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *pxrInternal__aapl__pxrReserved__::Usd_ClipCache::Reload(pxrInternal__aapl__pxrReserved__::Usd_ClipCache *this)
{
  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v25);
  v22 = 0u;
  v23 = 0u;
  v24 = 1065353216;
  v2 = sub_29A4AF6C8(this);
  while (1)
  {
    *&v20[0] = v2;
    if (!v2)
    {
      break;
    }

    v3 = v2[1];
    v4 = v2[2];
    if (v3 != v4)
    {
      do
      {
        sub_29A4B11A4(&v22, v3, v3);
        v3 += 2;
      }

      while (v3 != v4);
      v2 = *&v20[0];
    }

    v2 = v2[5];
    if (!v2)
    {
      v2 = sub_29A41AAB8(v20);
    }
  }

  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  for (i = v23; i; i = *i)
  {
    v6 = i[2];
    v7 = *(v6 + 88);
    v8 = *(v6 + 96);
    if (v7 != v8)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::Usd_Clip::GetLayerIfOpen(*v7, &__p);
        v9 = sub_29B293A0C(&__p);
        if (v10 & 1 | v9)
        {
          std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
        }

        v11 = v17;
        if (v17 && atomic_fetch_add_explicit((v17 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v11 + 8))(v11);
        }

        v7 += 2;
      }

      while (v7 != v8);
      v6 = i[2];
    }

    pxrInternal__aapl__pxrReserved__::Usd_Clip::GetLayerIfOpen(*(v6 + 72), &v18);
    v12 = sub_29B293A0C(&v18);
    if (v13 & 1 | v12)
    {
      pxrInternal__aapl__pxrReserved__::Usd_IsAutoGeneratedClipManifest(&v18);
    }

    v14 = v19;
    if (v19 && atomic_fetch_add_explicit((v19 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }

  sub_29A0EB484(v20);
  sub_29A4B1120(&v22);
  return sub_29A1DD644(v25);
}

void sub_29A4AF980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_29A4B1120((v20 - 96));
  sub_29A1DD644((v20 - 56));
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::Usd_ClipCache::GetClipsForPrim(pxrInternal__aapl__pxrReserved__::Usd_ClipCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    v5 = (v4 + 8);
    std::mutex::lock((v4 + 8));
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_29A4AFB0C(this, a2);
  if (v4)
  {
    std::mutex::unlock(v5);
  }

  return v6;
}

void sub_29A4AFAF4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A4AFB0C(void *a1, _DWORD *a2)
{
  v2 = a2;
  sub_29A1E21F4(&v11, a2);
  v4 = sub_29A1E2240(&v11 + 1, v2 + 1);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
  v6 = v11;
  v7 = *v5;
  if (v11 != *v5)
  {
    v8 = sub_29A41AA50(a1, &v11);
    if (!v8)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, &v11);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    v2 = v8 + 1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  if (v6 == v7)
  {
    if (atomic_load_explicit(byte_2A14F7F18, memory_order_acquire))
    {
      return &qword_2A14F7F00;
    }

    else
    {
      sub_29B2A915C(&v11);
      return v11;
    }
  }

  return v2;
}

void sub_29A4AFC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_ClipCache::InvalidateClipsForPrim(pxrInternal__aapl__pxrReserved__::Usd_ClipCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, char *a3)
{
  if (!*(this + 6))
  {
    sub_29B2A91CC(v14, a2, a3);
  }

  v14[1] = 0;
  v14[0] = sub_29A41AA50(this, a2);
  v4 = sub_29A41AAB8(v14);
  v5 = v14[0];
  v17 = v14[0];
  if (v14[0] != v4)
  {
    v6 = v4;
    do
    {
      sub_29A4B0F3C(*(*(this + 6) + 8), *(*(*(this + 6) + 8) + 8), *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 4);
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      while (v7 != v8)
      {
        pxrInternal__aapl__pxrReserved__::Usd_Clip::GetLayerIfOpen(*(*v7 + 72), &v15);
        v9 = sub_29B293A0C(&v15);
        if (v10 & 1 | v9)
        {
          pxrInternal__aapl__pxrReserved__::Usd_IsAutoGeneratedClipManifest(&v15);
        }

        v11 = v16;
        if (v16)
        {
          if (atomic_fetch_add_explicit((v16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*v11 + 8))(v11);
          }
        }

        v7 += 16;
      }

      v5 = v17[5];
      if (!v5)
      {
        v5 = sub_29A41AAB8(&v17);
      }

      v17 = v5;
    }

    while (v6 != v5);
  }

  return sub_29A4AFF38(this, a2);
}

void sub_29A4AFED8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (a21)
  {
    if (atomic_fetch_add_explicit(a21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A4AFF38(pxrInternal__aapl__pxrReserved__::SdfPath *a1, unsigned int *a2)
{
  v3 = sub_29A41AA50(a1, a2);
  v5 = v3;
  if (v3)
  {
    sub_29A4B1A58(a1, &v5);
  }

  return v3 != 0;
}

void sub_29A4AFF84(uint64_t a1, void **a2)
{
  if (a2)
  {
    sub_29A4AFFD0((a2 + 3));
    v3 = a2;
    sub_29A0176E4(&v3);
    operator delete(a2);
  }
}

uint64_t sub_29A4AFFD0(uint64_t a1)
{
  sub_29A4B000C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4B000C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4B0050((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A4B0050(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_29A216064((a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_ClipCache::~Usd_ClipCache(pxrInternal__aapl__pxrReserved__::Usd_ClipCache *this)
{
  sub_29A4B0108(this);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void sub_29A4B0108(uint64_t *a1)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    do
    {
      v5 = *a1;
      v6 = *(*a1 + 8 * v3);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 32);
          v9 = (v6 + 8);
          sub_29A0176E4(&v9);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 4));
          v8 = sub_29A1DE3A4(v6);
          operator delete(v8);
          v6 = v7;
        }

        while (v7);
        v5 = *a1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  a1[3] = 0;
}

_DWORD *sub_29A4B01AC(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A4B01F8()
{
  if ((atomic_load_explicit(&qword_2A14F7F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F7F28))
  {
    v1 = operator new(0x3CuLL);
    *(v1 + 44) = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
    qword_2A14F7F20 = v1;
    __cxa_guard_release(&qword_2A14F7F28);
  }

  return qword_2A14F7F20;
}

void sub_29A4B0280(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_29A4B0304(v4 - 272);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A4B0304(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 260));
  sub_29B2A9224(a1);
  return a1;
}

uint64_t sub_29A4B033C(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  return a1;
}

uint64_t sub_29A4B0378(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_29A4B03C8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    sub_29A216064(a1);
  }

  return a1;
}

void *sub_29A4B0404(void *a1, unsigned int *a2)
{
  v4 = sub_29A4B053C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        v15[0] = v11 + 2;
        v15[1] = v11 + 3;
        v15[2] = v11 + 6;
        v15[3] = v11 + 7;
        v14[0] = a2;
        v14[1] = a2 + 2;
        v14[2] = a2 + 8;
        v14[3] = a2 + 10;
        if (sub_29A4B068C(&v16, v15, v14))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

unint64_t sub_29A4B053C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v6 = 1;
  v5 = v3 + ((v3 + v2 + (v3 + v2) * (v3 + v2)) >> 1);
  sub_29A4B05A4(&v5, (a2 + 2), a2 + 8, a2 + 5);
  return bswap64(0x9E3779B97F4A7C55 * v5);
}

unint64_t sub_29A4B05A4(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, pxrInternal__aapl__pxrReserved__ *a2, unsigned int *a3, uint64_t *a4)
{
  v7 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2, v8);
  sub_29A1E33B4(a1, a3);

  return sub_29A4B0614(a1, a4);
}

unint64_t sub_29A4B0614(unint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*(result + 8))
  {
    v4 = v3 + ((*result + v3 + (*result + v3) * (*result + v3)) >> 1);
  }

  else
  {
    *(result + 8) = 1;
    v4 = v3;
  }

  *result = v4;
  if (v3)
  {
    v5 = a2[4];
    do
    {
      --v3;
      v6 = (v5 + 48);
      result = sub_29A215EB0(v2, v5);
      v5 = v6;
    }

    while (v3);
  }

  return result;
}

BOOL sub_29A4B06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (**a2 != **a3)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  v5 = *(v3 + 23);
  if (v5 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = *(v4 + 23);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = v4[1];
  }

  if (v6 != v7)
  {
    return 0;
  }

  if (v5 >= 0)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *v3;
  }

  if (v8 >= 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = *v4;
  }

  return memcmp(v9, v10, v6) == 0;
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A4B0784(void *a1, unsigned int *a2)
{
  v7 = a2;
  result = sub_29A4B08F8(a1, a2, &v7);
  v5 = result;
  LOBYTE(v6) = v4;
  if (v4)
  {
    sub_29A4B07D8(a1, &v5);
    return v5;
  }

  return result;
}

_DWORD *sub_29A4B07D8(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v12, *a2);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12))
  {
    sub_29A1E21F4(&v9, &v12);
    sub_29A1E2240(&v10, &v12 + 1);
    memset(v11, 0, sizeof(v11));
    memset(v8, 0, sizeof(v8));
    v4 = sub_29A4B0784(a1, &v9);
    v13 = v11;
    sub_29A0176E4(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
    v13 = v8;
    sub_29A0176E4(&v13);
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = v5 | 1;
    }

    else
    {
      v6 = v4;
    }

    *(v3 + 6) = v6;
    *(v4 + 40) = v3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
  return sub_29A1DE3A4(&v12);
}

void sub_29A4B08C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A4B01AC(va1);
  *(v3 - 40) = va;
  sub_29A0176E4((v3 - 40));
  sub_29A1DCEA8((v3 - 48));
  _Unwind_Resume(a1);
}

void *sub_29A4B08F8(void *a1, unsigned int *a2, void *a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_29A4B0A3C(a1);
    v6 = a1[4];
  }

  v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v6));
  v8 = *v7;
  if (*v7)
  {
    v9 = *v7;
    while (*v9 != *a2)
    {
      v9 = v9[4];
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (a1[3] > ((a1[1] - *a1) >> 3))
    {
      sub_29A4B0A3C(a1);
      v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
      v8 = *v7;
    }

    v9 = operator new(0x38uLL);
    sub_29A4B0C4C(v9, *a3);
    v9[5] = 0;
    v9[6] = 0;
    v9[4] = v8;
    *v7 = v9;
    ++a1[3];
  }

  return v9;
}

void sub_29A4B0A3C(uint64_t a1)
{
  sub_29A0ECEEC(&v21, "Sdf", "SdfPathTable::_Grow");
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("void pxrInternal__aapl__pxrReserved__::SdfPathTable<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_ClipSet>>>::_Grow() [MappedType = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_ClipSet>>]", 0);
  }

  else
  {
    v3 = 0;
  }

  v19 = v3;
  v20 = v3 != 0;
  v4 = 2 * *(a1 + 32);
  if (v4 > 7)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 7;
  }

  *(a1 + 32) = v5;
  sub_29A4B0BD4(&v17, v5 + 1);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 - *a1;
  if (v7 != *a1)
  {
    v9 = 0;
    v10 = v8 >> 3;
    do
    {
      v11 = *(*a1 + 8 * v9);
      if (v11)
      {
        v12 = *(a1 + 32);
        do
        {
          v13 = *(v11 + 4);
          v14 = bswap64(0x9E3779B97F4A7C55 * (v11[1] + ((v11[1] + *v11 + (v11[1] + *v11) * (v11[1] + *v11)) >> 1))) & v12;
          v15 = v17;
          *(v11 + 4) = *(v17 + 8 * v14);
          *(v15 + 8 * v14) = v11;
          v11 = v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v10);
    v6 = *a1;
  }

  *a1 = v17;
  v16 = *(a1 + 16);
  *(a1 + 16) = v18;
  *&v17 = v6;
  v18 = v16;
  if (v6)
  {
    *(&v17 + 1) = v6;
    operator delete(v6);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3 != 0, v3);
  }

  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }
}

void sub_29A4B0BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4B0BD4(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = v4 + 8 * a2;
  }

  return a1;
}

void sub_29A4B0C30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4B0C4C(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_29A4B0CB4((a1 + 8), *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 4);
  return a1;
}

void *sub_29A4B0CB4(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A4B0D3C(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29A4B0D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A4B0D3C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29A4B0DC4(v7);
  return v4;
}

uint64_t sub_29A4B0DC4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void sub_29A4B0DFC(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_29A03AF64(a1);
    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A0D0518(a1, v11);
    v12 = sub_29A4B0D3C(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    sub_29A4274B8(&v18, a2, (a2 + v13), v8);
    v12 = sub_29A4B0D3C(a1, (a2 + v13), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v12;
    return;
  }

  sub_29A4274B8(&v19, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v17 = *(v16 - 8);
      if (v17)
      {
        sub_29A014BEC(v17);
      }

      v16 -= 16;
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
}

uint64_t *sub_29A4B0F3C(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 4;
      if (v19 >= a5)
      {
        sub_29A1D5390(a1, a2, a1[1], &a2[2 * a5]);
        v20 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_29A4B0D3C(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A1D5390(a1, v5, v10, &v5[2 * a5]);
        v20 = (v7 + v18);
      }

      sub_29A4274B8(v32, v7, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v34 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[16 * v16];
    v33 = &v17[16 * v15];
    v22 = &v21[2 * a5];
    v23 = v21;
    do
    {
      *v23 = *v7;
      v24 = v7[1];
      v23[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v23 += 2;
      v7 += 2;
    }

    while (v23 != v22);
    memcpy(v22, v5, a1[1] - v5);
    v25 = *a1;
    v26 = v22 + a1[1] - v5;
    a1[1] = v5;
    v27 = v5 - v25;
    v28 = v21 - (v5 - v25);
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    v30 = a1[2];
    a1[2] = v33;
    v32[2] = v29;
    v33 = v30;
    v32[0] = v29;
    v32[1] = v29;
    sub_29A017C0C(v32);
    return v21;
  }

  return v5;
}

void **sub_29A4B1120(void **a1)
{
  sub_29A4B115C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4B115C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        sub_29A014BEC(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_29A4B11A4(uint64_t a1, void *a2, void *a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v8;
  v14 = a3[1];
  i[2] = *a3;
  i[3] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    *i = *v22;
LABEL_40:
    *v22 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v23 >= v9)
      {
        v23 %= v9;
      }
    }

    else
    {
      v23 &= v9 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return i;
}

void sub_29A4B1424(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

char *sub_29A4B1484(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_29A4B14FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4B1518(uint64_t *result, __int128 *a2)
{
  if (!*(result + 2))
  {
    v4 = *result;
    if (!result[3])
    {
      v5 = result[4];
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_19;
      }

      v5 = result[4];
      if (v5)
      {
        if (result[3])
        {
          v7 = result;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        v9 = v5 + 48 * v4;
        if (*(a2 + 23) < 0)
        {
          sub_29A008D14(v9, *a2, *(a2 + 1));
        }

        else
        {
          v10 = *a2;
          *(v9 + 16) = *(a2 + 2);
          *v9 = v10;
        }

        if (*(a2 + 47) < 0)
        {
          sub_29A008D14((v9 + 24), *(a2 + 3), *(a2 + 4));
        }

        else
        {
          v11 = *(a2 + 24);
          *(v9 + 40) = *(a2 + 5);
          *(v9 + 24) = v11;
        }

        goto LABEL_18;
      }
    }

LABEL_19:
    sub_29B2A9344(result, v4, a2);
LABEL_18:
    ++*result;
    return;
  }

  sub_29B2A92C8(result);
}

void sub_29A4B161C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4B1638(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_29A4B053C(a1, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v5 = v9;
      if (v9 >= v11)
      {
        v5 = v9 % v11;
      }
    }

    else
    {
      v5 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v5);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        do
        {
          v16 = v15[1];
          if (v16 == v10)
          {
            v29[0] = v15 + 2;
            v29[1] = v15 + 3;
            v29[2] = v15 + 6;
            v29[3] = v15 + 7;
            v28[0] = a2;
            v28[1] = a2 + 2;
            v28[2] = a2 + 8;
            v28[3] = a2 + 10;
            if (sub_29A4B068C(&v30, v29, v28))
            {
              return v15;
            }
          }

          else
          {
            if (v13 > 1)
            {
              if (v16 >= v11)
              {
                v16 %= v11;
              }
            }

            else
            {
              v16 &= v11 - 1;
            }

            if (v16 != v5)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  sub_29A4B18DC(a1, v10, a4, v29);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v5 = v10 % v11;
      }

      else
      {
        v5 = v10;
      }
    }

    else
    {
      v5 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v5);
  if (v24)
  {
    v15 = v29[0];
    *v29[0] = *v24;
    *v24 = v15;
  }

  else
  {
    v25 = v29[0];
    *v29[0] = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v5) = a1 + 16;
    v15 = v29[0];
    if (*v29[0])
    {
      v26 = *(*v29[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v29[0];
      v15 = v29[0];
    }
  }

  ++*(a1 + 24);
  return v15;
}

void sub_29A4B18C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29A4B19FC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4B18DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x78uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29A4B1960((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A4B1960(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1DDD84(a1, *a2);
  sub_29A1DDDC0(v4 + 1, (v3 + 4));
  v5 = *(v3 + 8);
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 8) = v5;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_29A1DDD84((a1 + 32), (v3 + 32));
  sub_29A1DDDC0((a1 + 36), (v3 + 36));
  v6 = *(v3 + 40);
  *(a1 + 56) = *(v3 + 56);
  *(a1 + 40) = v6;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(a1 + 72) = *(v3 + 72);
  *(v3 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_29A4B19FC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4B0050(v2 + 16);
    }

    operator delete(v2);
  }
}

void sub_29A4B1A58(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_29A4B1AA8(a1, *a2);
  sub_29A4B1AFC(a1, v3);

  sub_29A4B1B98(a1, v3);
}

void sub_29A4B1AA8(void *result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    sub_29A4B1C44(result, *(a2 + 40));

    sub_29A4B1B98(result, v2);
  }
}

void *sub_29A4B1AFC(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (*a2 != *result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v6, a2);
    v5 = sub_29A41AA50(a1, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
    sub_29A1DE3A4(&v6);
    return sub_29A41AD08(v5, a2);
  }

  return result;
}

void sub_29A4B1B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A4B1B98(void *a1, unsigned int *a2)
{
  v2 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 32);
  }

  while (v4 != a2);
  --a1[3];
  *v3 = *(v4 + 32);
  v6 = (v4 + 8);
  sub_29A0176E4(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v4 + 4));
  v5 = sub_29A1DE3A4(v4);
  operator delete(v5);
}

void sub_29A4B1C44(void *a1, uint64_t a2)
{
  sub_29A4B1AA8(a1, a2);
  v4 = *(a2 + 48);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if ((v4 & 7) != 0 && v5 != 0)
  {
    do
    {
      v7 = *(v5 + 48);
      if ((v7 & 7) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v8 = 0;
      }

      sub_29A4B1AA8(a1, v5);
      sub_29A4B1B98(a1, v5);
      v5 = v8;
    }

    while (v8);
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_GenerateClipManifest(pxrInternal__aapl__pxrReserved__::Usd_Clip ***a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t **a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  memset(v14, 0, sizeof(v14));
  sub_29A38A1A8(v14, (a1[1] - *a1) >> 4);
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_29A08AF9C(&__p, (a1[1] - *a1) >> 4);
  if (*a1 != a1[1])
  {
    pxrInternal__aapl__pxrReserved__::Usd_Clip::GetLayer(**a1);
  }

  if (a4)
  {
    p_p = &__p;
  }

  else
  {
    p_p = 0;
  }

  pxrInternal__aapl__pxrReserved__::Usd_GenerateClipManifest(a2, v14, a3, p_p, a5);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  __p = v14;
  sub_29A38A7B4(&__p);
}

void sub_29A4B1EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, uint64_t a13, char a14)
{
  __p = &a14;
  sub_29A38A7B4(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_GenerateClipManifest(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, std::string::size_type *a2@<X0>, uint64_t **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = *MEMORY[0x29EDCA608];
  v28 = a4;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this))
  {
    v10 = a2[1];
    if (*a2 == v10 || (sub_29B2A9D88(*a2, a5, v10) & 1) == 0)
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
      if (!v11)
      {
        v11 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
      }

      v12 = *v11 & 0xFFFFFFFFFFFFFFF8;
      if (v12)
      {
        v13 = (v12 + 16);
        if (*(v12 + 39) < 0)
        {
          v13 = *v13;
        }
      }

      else
      {
        v13 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s.%s", v9, v10, a3, v13);
      v30 = 0;
      v31 = 0;
      v29 = &v30;
      pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous(&__p, &v29, a5);
      sub_29A01752C(&v29, v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v27);
      if (*a2 != a2[1])
      {
        sub_29A1DA6E4(*a2);
      }

      if (v28)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v15 = sub_29A3302A8(a5);
        v16 = operator new(0x20uLL);
        *v16 = &unk_2A20512F8;
        *(v16 + 1) = a2;
        *(v16 + 2) = &v28;
        *(v16 + 3) = &v24;
        v33 = v16;
        pxrInternal__aapl__pxrReserved__::SdfLayer::Traverse(v15, this, &__p);
        sub_29A34A974(&__p);
        v17 = v24;
        for (i = v25; v17 != i; v17 += 32)
        {
          sub_29A4B33D0(&__p, v17);
          v20 = __p.__r_.__value_.__r.__words[2];
          size = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[2])
          {
            do
            {
              v21 = *size;
              v22 = sub_29A3302A8(a5);
              v30 = &v23;
              v31 = &stru_2A2048EE0;
              v29 = &unk_2A2051378;
              pxrInternal__aapl__pxrReserved__::SdfLayer::SetTimeSample(v22, &__p, &v29, v21);
              ++size;
            }

            while (size != v20);
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            __p.__r_.__value_.__r.__words[2] = size;
            operator delete(size);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(__p.__r_.__value_.__r.__words + 1);
          sub_29A1DE3A4(&__p);
        }

        __p.__r_.__value_.__r.__words[0] = &v24;
        sub_29A4B4058(&__p);
      }

      sub_29A1DD644(v27);
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = "usd/clipSet.cpp";
    __p.__r_.__value_.__l.__size_ = "Usd_GenerateClipManifest";
    __p.__r_.__value_.__r.__words[2] = 75;
    v33 = "SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::Usd_GenerateClipManifest(const SdfLayerHandleVector &, const SdfPath &, const std::string &, const std::vector<double> *)";
    v34 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "<%s> must be a prim path", Text);
    *a5 = 0;
  }
}

void sub_29A4B2274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_29A34A974(&__p);
  __p = &a13;
  sub_29A4B4058(&__p);
  sub_29A1DD644(&a16);
  sub_29A321930(v26);
}

_DWORD *sub_29A4B2324(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_ClipSet::New(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, __int128 *a4@<X0>)
{
  if (*(a1 + 40) != 1 || *(a1 + 128) != 1 || (*(a1 + 176) & 1) == 0)
  {
    goto LABEL_52;
  }

  v7 = *(a1 + 127);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 112);
  }

  if (v7)
  {
    v9 = *(a1 + 224);
    v10 = *a1;
    if (*a1)
    {
      v11 = (*(a1 + 32) + 23);
      v12 = 48 * v10;
      while (1)
      {
        v13 = *v11;
        if (v13 < 0)
        {
          v13 = *(v11 - 15);
        }

        if (!v13)
        {
          break;
        }

        v11 += 48;
        v12 -= 48;
        if (!v12)
        {
          goto LABEL_13;
        }
      }

      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      if (!v32)
      {
        v32 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      }

      v33 = *(v32 + 1) & 0xFFFFFFFFFFFFFFF8;
      if (v33)
      {
        v34 = (v33 + 16);
        if (*(v33 + 39) < 0)
        {
          v34 = *v34;
        }
      }

      else
      {
        v34 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Empty clip asset path in '%s'", a1, a2, v34);
      goto LABEL_49;
    }

LABEL_13:
    v14 = a1 + 104;
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsValidPathString((a1 + 104), a2))
    {
      goto LABEL_52;
    }

    v15 = pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v67, a1 + 104);
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(v15) || !pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&v67))
    {
      if (*(a1 + 127) < 0)
      {
        v14 = *(a1 + 104);
      }

      v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      if (!v35)
      {
        v35 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      }

      v36 = *(v35 + 4) & 0xFFFFFFFFFFFFFFF8;
      if (v36)
      {
        v37 = (v36 + 16);
        if (*(v36 + 39) < 0)
        {
          v37 = *v37;
        }
      }

      else
      {
        v37 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Path '%s' in '%s' must be an absolute path to a prim", v16, v17, v14, v37);
LABEL_55:
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v38 = 0;
      *a2 = v61;
      *(a2 + 16) = v62;
      goto LABEL_58;
    }

    v18 = *(a1 + 136);
    if (v18)
    {
      v19 = *(a1 + 168);
      v20 = v10;
      v21 = 16 * v18;
      v22 = v19 + 1;
      v23 = v21;
      do
      {
        v24 = *v22;
        if (*v22 < 0.0 || v24 >= v20)
        {
          v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          if (!v47)
          {
            v47 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          }

          v48 = *v47 & 0xFFFFFFFFFFFFFFF8;
          if (v48)
          {
            v49 = (v48 + 16);
            if (*(v48 + 39) < 0)
            {
              v49 = *v49;
            }
          }

          else
          {
            v49 = "";
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid clip index %d in '%s'", v16, v17, v20, v24, v49);
          goto LABEL_55;
        }

        v22 += 2;
        v23 -= 16;
      }

      while (v23);
      v65 = 0;
      v66 = 0;
      v64 = &v65;
      while (1)
      {
        v61 = *v19;
        v26 = sub_29A4B34C4(&v64, &v61, &v61);
        if ((v27 & 1) == 0)
        {
          break;
        }

        v19 += 2;
        v21 -= 16;
        if (!v21)
        {
          goto LABEL_63;
        }
      }

      v50 = v26;
      v51 = *v19;
      v52 = v19[1];
      v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      if (!v53)
      {
        v53 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      }

      v54 = *v53 & 0xFFFFFFFFFFFFFFF8;
      if (v54)
      {
        v55 = (v54 + 16);
        if (*(v54 + 39) < 0)
        {
          v55 = *v55;
        }
      }

      else
      {
        v55 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Clip %d cannot be active at time %.3f in '%s' because clip %d was already specified as active at this time.", v27, v28, v52, v51, v55, *(v50 + 10));
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v38 = 0;
      *a2 = v61;
      *(a2 + 16) = v62;
      goto LABEL_95;
    }

    v65 = 0;
    v66 = 0;
    v64 = &v65;
LABEL_63:
    if (v9)
    {
      v61 = 0u;
      v62 = 0u;
      v63 = 1065353216;
      v40 = *(a1 + 184);
      if (v40)
      {
        v41 = *(a1 + 216);
        v42 = 16 * v40;
        while (1)
        {
          LODWORD(v59) = 0;
          v43 = sub_29A4B3588(&v61, v41, v41, &v59);
          v46 = *(v43 + 6);
          *(v43 + 6) = v46 + 1;
          if (v46 >= 2)
          {
            break;
          }

          v41 += 2;
          v42 -= 16;
          if (!v42)
          {
            goto LABEL_68;
          }
        }

        v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
        if (!v56)
        {
          v56 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
        }

        v57 = *(v56 + 10) & 0xFFFFFFFFFFFFFFF8;
        if (v57)
        {
          v58 = (v57 + 16);
          if (*(v57 + 39) < 0)
          {
            v58 = *v58;
          }
        }

        else
        {
          v58 = "";
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot have more than two entries in '%s' with the same stage time (%.3f).", v44, v45, v58, *v41);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = v59;
        *(a2 + 16) = v60;
        sub_29A0EB570(&v61);
        v38 = 0;
        goto LABEL_95;
      }

LABEL_68:
      sub_29A0EB570(&v61);
    }

    v38 = 1;
LABEL_95:
    sub_29A082B84(&v64, v65);
LABEL_58:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v68);
    sub_29A1DE3A4(&v67);
    if (v38)
    {
      if ((*(a1 + 96) & 1) == 0)
      {
        MEMORY[0x29C2C1A60](a2, "No clip manifest specified. Performance may be improved if a manifest is specified.");
      }

      v39 = operator new(0x78uLL);
      pxrInternal__aapl__pxrReserved__::Usd_ClipSet::Usd_ClipSet(v39, a4, a1);
    }

    goto LABEL_52;
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
  if (!v29)
  {
    v29 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
  }

  v30 = *(v29 + 4) & 0xFFFFFFFFFFFFFFF8;
  if (v30)
  {
    v31 = (v30 + 16);
    if (*(v30 + 39) < 0)
    {
      v31 = *v31;
    }
  }

  else
  {
    v31 = "";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("No clip prim path specified in '%s'", a1, a2, v31);
LABEL_49:
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v61;
  *(a2 + 16) = v62;
LABEL_52:
  *a3 = 0;
  a3[1] = 0;
}

void sub_29A4B28BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  sub_29A0EB570(&a17);
  sub_29A082B84(&a23, a24);
  sub_29A1DCEA8((v24 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_29A4B291C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

__n128 *sub_29A4B2960(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v17 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    v35 = a1;
    if (v16)
    {
      v18 = sub_29A012C48(a1, v16);
    }

    else
    {
      v18 = 0;
    }

    v32 = v18;
    v33 = (v18 + 24 * v17);
    *&v34 = v33;
    *(&v34 + 1) = v18 + 24 * v16;
    sub_29A4B5818(&v32, a3);
    v20 = v33;
    memcpy(v34, v4, a1[1] - v4);
    v21 = *a1;
    v22 = v33;
    *&v34 = v34 + a1[1] - v4;
    a1[1] = v4;
    v23 = v4 - v21;
    v24 = v22 - (v4 - v21);
    memcpy(v24, v21, v23);
    v25 = *a1;
    *a1 = v24;
    v26 = a1[2];
    *(a1 + 1) = v34;
    *&v34 = v25;
    *(&v34 + 1) = v26;
    v32 = v25;
    v33 = v25;
    if (v25)
    {
      operator delete(v25);
    }

    return v20;
  }

  else if (__src == v6)
  {
    v19 = *a3;
    *(v6 + 16) = a3[1].n128_u64[0];
    *v6 = v19;
    a1[1] = v6 + 24;
  }

  else
  {
    v8 = &__src[1].n128_i8[8];
    if (v6 < 0x18)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = (v6 + 24);
      v10 = *(v6 - 24);
      *(v6 + 16) = *(v6 - 8);
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(v8, __src, v6 - v8 - 7);
      v9 = a1[1];
    }

    v27 = v9 <= a3 || v4 > a3;
    v28 = 24;
    if (v27)
    {
      v28 = 0;
    }

    v29 = (a3 + v28);
    v30 = *v29;
    v4[1].n128_u8[0] = v29[1].n128_u8[0];
    *v4 = v30;
  }

  return v4;
}

void sub_29A4B2B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4B2B90(void *a1, uint64_t a2)
{
  sub_29A4B5958(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_ClipContributesValue(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_Clip **a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (*(a1 + 112) == 1)
  {
    pxrInternal__aapl__pxrReserved__::Usd_Clip::IsBlocked(*(a1 + 72), a3, *(*a2 + 12));
  }

  return 1;
}

void sub_29A4B2C68(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A4B5C34(v4, a2, v5 + 88, a3);
  }

  if (!v5)
  {
    v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v4, a2, v5 + 88);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_ClipSet::GetBracketingTimeSamplesForPath(pxrInternal__aapl__pxrReserved__::Usd_ClipSet *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, double *a4, double *a5)
{
  ClipIndexForTime = pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_FindClipIndexForTime(this, a3);
  v11 = (*(this + 11) + 16 * ClipIndexForTime);
  v12 = 16 * ClipIndexForTime;
  if (pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_ClipContributesValue(this, v11, a2))
  {
    pxrInternal__aapl__pxrReserved__::Usd_Clip::GetBracketingTimeSamplesForPath(*v11, a2, a3, a4, a5);
  }

  if (ClipIndexForTime)
  {
    v13 = v12 - 16;
    v14 = ClipIndexForTime;
    do
    {
      v15 = *(this + 11);
      if (pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_ClipContributesValue(this, (v15 + v13), a2))
      {
        v21 = 0.0;
        v22 = 0.0;
        pxrInternal__aapl__pxrReserved__::Usd_Clip::GetBracketingTimeSamplesForPath(*(v15 + v13), a2, a3, &v22, &v21);
      }

      v13 -= 16;
      --v14;
    }

    while (v14);
  }

  while (1)
  {
    ++ClipIndexForTime;
    v16 = *(this + 11);
    if (ClipIndexForTime >= (*(this + 12) - v16) >> 4)
    {
      break;
    }

    v17 = v12 + 16;
    v18 = pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_ClipContributesValue(this, (v16 + v12 + 16), a2);
    v12 += 16;
    if (v18)
    {
      v19 = *(*(v16 + v17) + 104);
      *a5 = v19;
      goto LABEL_13;
    }
  }

  v19 = *(*v16 + 96);
  *a5 = v19;
LABEL_13:
  *a4 = v19;
  return 1;
}

unint64_t pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_FindClipIndexForTime(pxrInternal__aapl__pxrReserved__::Usd_ClipSet *this, double a2)
{
  v4 = *(this + 11);
  v5 = *(this + 12);
  v6 = (v5 - v4) >> 4;
  if (v6 < 2)
  {
    goto LABEL_11;
  }

  if (v5 != v4)
  {
    v5 = *(this + 11);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[16 * (v6 >> 1)];
      v10 = *v8;
      v9 = (v8 + 2);
      v6 += ~(v6 >> 1);
      if (*(v10 + 104) > a2)
      {
        v6 = v7;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v6);
  }

  if (v4 != v5 || (v15[0] = "usd/clipSet.cpp", v15[1] = "_FindClipIndexForTime", v15[2] = 683, v15[3] = "size_t pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_FindClipIndexForTime(double) const", v16 = 0, v12 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v15, "it != valueClips.begin()", 0), v4 = *(this + 11), (v12 & 1) != 0))
  {
    v11 = ((v5 - v4) >> 4) - 1;
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  if (v11 >= (*(this + 12) - v4) >> 4 || (v13 = *&v4[16 * v11], *(v13 + 104) > a2) || *(v13 + 112) <= a2)
  {
    if ((sub_29B2A9E7C(v15) & 1) == 0)
    {
      return 0;
    }
  }

  return v11;
}

void pxrInternal__aapl__pxrReserved__::Usd_ClipSet::ListTimeSamplesForPath(pxrInternal__aapl__pxrReserved__::Usd_ClipSet *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v5 = *(this + 11);
  v6 = *(this + 12);
  if (v5 == v6)
  {
    goto LABEL_6;
  }

  do
  {
    if (pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_ClipContributesValue(this, v5, a2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_Clip::ListTimeSamplesForPath(&v8, *v5, a2);
    }

    v5 += 2;
  }

  while (v5 != v6);
  if (!a3[2])
  {
LABEL_6:
    sub_29A99E5B8(a3, (**(this + 11) + 96), (**(this + 11) + 96));
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_ClipSet::GetTimeSamplesInInterval(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  if (v8 == v9)
  {
    goto LABEL_11;
  }

  do
  {
    v10 = *(*v8 + 13);
    v11 = *(a3 + 16);
    if (*(a3 + 24))
    {
      if (v10 > v11)
      {
        break;
      }
    }

    else if (v10 > v11)
    {
      break;
    }

    v12 = *(*v8 + 14);
    v19 = *(*v8 + 13);
    LOBYTE(v20) = fabs(v10) != INFINITY;
    v21 = v12;
    v22 = 0;
    if ((sub_29A13E948(a3, &v19) & 1) != 0 && pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_ClipContributesValue(a2, v8, a1))
    {
      pxrInternal__aapl__pxrReserved__::Usd_Clip::ListTimeSamplesForPath(&v19, *v8, a1);
    }

    v8 += 2;
  }

  while (v8 != v9);
  if (*a4 == *(a4 + 8))
  {
LABEL_11:
    v13 = *(a2 + 88);
    v14 = *(a2 + 96);
    if (v13 == v14)
    {
LABEL_18:
      v17 = *(*v13 + 12);
      if (*a3 < v17 || *a3 == v17 && *(a3 + 8) == 1)
      {
        v18 = *(a3 + 16);
        if (v18 > v17 || v18 == v17 && *(a3 + 24) == 1)
        {
          sub_29A08B03C(a4, *v13 + 12);
        }
      }

      return;
    }

    do
    {
      v15 = pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_ClipContributesValue(a2, v13, a1);
      v13 += 2;
      if (v13 == v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }
    }

    while (v16 != 1);
    if ((v15 & 1) == 0)
    {
      v13 = *(a2 + 88);
      goto LABEL_18;
    }
  }
}

void sub_29A4B3390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4B33D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_29A00C8EC((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys_StaticTokenType *sub_29A4B3438(atomic_ullong *a1)
{
  result = sub_29A4B3480();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys_StaticTokenType::~UsdClipsAPIInfoKeys_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys_StaticTokenType *sub_29A4B3480()
{
  v0 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys_StaticTokenType::UsdClipsAPIInfoKeys_StaticTokenType(v0);
  return v0;
}

uint64_t **sub_29A4B34C4(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 4);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v5;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v5[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_10:
    v10 = operator new(0x30uLL);
    v11 = *(a3 + 8);
    v10[4] = *a3;
    *(v10 + 10) = v11;
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}