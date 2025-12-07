void sub_1E2067F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, id a21, id a22, id a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  re::VideoPresentationGroup::~VideoPresentationGroup(&a39);
  re::VideoPresentationGroup::~VideoPresentationGroup(&STACK[0x920]);
  _Unwind_Resume(a1);
}

uint64_t re::VideoHistogram::data(re::VideoHistogram *this)
{
  v2 = this + 20;
  v3 = atomic_load(this + 20);
  if (v3)
  {
    os_unfair_lock_lock(this + 4);
    v4 = atomic_load(v2);
    if (v4)
    {
      *(this + 3) = *(this + 202);
      re::DynamicInlineArray<unsigned int,2ul>::operator=(this + 4, this + 203);
      re::DynamicInlineArray<unsigned int,2ul>::operator=(this + 70, this + 269);
      re::DynamicInlineArray<unsigned int,2ul>::operator=(this + 136, this + 335);
      atomic_store(0, this + 20);
    }

    os_unfair_lock_unlock(this + 4);
  }

  return this + 24;
}

uint64_t re::VideoAsset::init(re::VideoAsset *this)
{
  if (!*(this + 23))
  {
    v2 = re::globalAllocators(this);
    v3 = (*(*v2[2] + 32))(v2[2], 12064, 16);
    bzero(v3, 0x2F20uLL);
    *(v3 + 36) = 0x7FFFFFFF;
    *(v3 + 48) = 0;
    *(v3 + 80) = 0;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
    *(v3 + 176) = 0x7FFFFFFF00000000;
    *(v3 + 192) = 0;
    *(v3 + 200) = 514;
    *(v3 + 202) = 2;
    *(v3 + 216) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 248) = 0x7FFFFFFF00000000;
    *(v3 + 264) = 0;
    *(v3 + 276) = 0;
    *(v3 + 288) = 514;
    *(v3 + 290) = 2;
    *(v3 + 296) = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F058] + 16);
    *(v3 + 312) = *MEMORY[0x1E695F058];
    *(v3 + 328) = v4;
    *(v3 + 352) = 0;
    *(v3 + 384) = 0u;
    *(v3 + 400) = 0u;
    *(v3 + 416) = 0;
    re::VideoPresentationQueue::VideoPresentationQueue((v3 + 432));
    *(v3 + 4672) = 0u;
    *(v3 + 4656) = 0u;
    *(v3 + 4688) = 0x7FFFFFFF00000000;
    *(v3 + 4696) = 0;
    *(v3 + 4704) = 0u;
    *(v3 + 4720) = 0u;
    *(v3 + 4740) = 0x7FFFFFFFLL;
    *(v3 + 4736) = 0;
    *(v3 + 4752) = 0u;
    *(v3 + 4768) = 0u;
    *(v3 + 4788) = 0x7FFFFFFFLL;
    *(v3 + 4784) = 0;
    *(v3 + 4800) = 0u;
    *(v3 + 4816) = 0u;
    *(v3 + 4836) = 0x7FFFFFFFLL;
    *(v3 + 4832) = 0;
    *(v3 + 4880) = 0;
    *(v3 + 4864) = 0u;
    *(v3 + 4884) = 0x7FFFFFFFLL;
    *(v3 + 4848) = 0u;
    *(v3 + 5152) = 0u;
    *(v3 + 5168) = 0u;
    *(v3 + 5204) = 0x7FFFFFFFLL;
    *(v3 + 5184) = 0u;
    v5 = v3 + 5228;
    v6 = 2048;
    __asm { FMOV            V0.2S, #1.0 }

    *(v3 + 5200) = 0;
    do
    {
      *(v5 - 8) = _D0;
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 32;
      v6 -= 32;
    }

    while (v6);
    *(v3 + 7328) = 0u;
    *(v3 + 7312) = 0u;
    *(v3 + 7296) = 0u;
    *(v3 + 7280) = 0u;
    *(v3 + 7264) = 0u;
    *(v3 + 7344) = 0x7FFFFFFF00000000;
    *(v3 + 7352) = 0;
    *(v3 + 7360) = 0;
    *(v3 + 7368) = 0;
    *(v3 + 7376) = -1;
    *(v3 + 7384) = 0;
    *(v3 + 7392) = 0;
    *(v3 + 7400) = 0;
    *(v3 + 7408) = -1;
    *(v3 + 7416) = 0;
    *(v3 + 7424) = 0;
    *(v3 + 7472) = 0u;
    *(v3 + 7488) = 0u;
    *(v3 + 7504) = 0u;
    *(v3 + 7520) = 0;
    *(v3 + 7524) = 0x7FFFFFFFLL;
    *(v3 + 7536) = 0;
    *(v3 + 7544) = 514;
    *(v3 + 7546) = 2;
    *(v3 + 7552) = 0;
    bzero((v3 + 7560), 0x820uLL);
    v12 = MEMORY[0x1E6960C70];
    *(v3 + 9640) = *MEMORY[0x1E6960C70];
    *(v3 + 9656) = *(v12 + 16);
    *(v3 + 9664) = 0;
    *(v3 + 9672) = 0;
    *(v3 + 9712) = 0;
    *(v3 + 9688) = 0u;
    *(v3 + 9704) = 0;
    *(v3 + 9720) = -1;
    *(v3 + 9728) = 0;
    *(v3 + 9736) = 0;
    bzero((v3 + 9752), 0x810uLL);
    *(v3 + 11816) = *v12;
    *(v3 + 11832) = *(v12 + 16);
    *(v3 + 11840) = 0;
    *(v3 + 11848) = 0;
    *(v3 + 11864) = 0u;
    *(v3 + 11880) = 0u;
    *(v3 + 11896) = 0u;
    *(v3 + 11908) = 0u;
    *(v3 + 11924) = 0x7FFFFFFFLL;
    *(v3 + 11936) = 0u;
    *(v3 + 11952) = 0u;
    *(v3 + 11968) = 0u;
    *(v3 + 11984) = 0u;
    *(v3 + 11997) = 0;
    *(v3 + 12008) = 0x3F80000000000000;
    *(v3 + 12016) = 0u;
    *(v3 + 12034) = 2;
    *(v3 + 12032) = 514;
    re::VideoAutoCounter::VideoAutoCounter((v3 + 12040));
  }

  v13 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
  v14 = dispatch_queue_create("VideoAsset.backgroundWorkQueue", v13);
  v15 = *(this + 13);
  *(this + 13) = v14;

  v16 = re::VideoAsset::initializePlaybackData(this);
  return v16;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::VideoFileAsset>(re::VideoFileAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::VideoFileAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

void re::VideoAsset::setDiffuseSpillMapBlurSigma(re::VideoAsset *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2 & ~(a2 >> 31);
  if (a2 < 0)
  {
    v5 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v3;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid diffuse spill map blur sigma: %d, diffuse spill map blur sigma clamped to %d", v6, 0xEu);
    }
  }

  *(this + 60) = v3;
}

void re::VideoAsset::setSpecularSpillMapBlurSigma(re::VideoAsset *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2 & ~(a2 >> 31);
  if (a2 < 0)
  {
    v5 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v3;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid specular spill map blur sigma: %d, specular spill map blur sigma clamped to %d", v6, 0xEu);
    }
  }

  *(this + 64) = v3;
}

uint64_t re::VideoAssetLoader::introspectionType(re::VideoAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE197788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197788))
  {
    qword_1EE197780 = re::internal::getOrCreateInfo("VideoAsset", re::allocInfo_VideoAsset, re::initInfo_VideoAsset, &unk_1EE197778, 0);
    __cxa_guard_release(&qword_1EE197788);
  }

  return qword_1EE197780;
}

uint64_t re::VideoAssetLoader::createRuntimeData(uint64_t a1, re::VideoAsset *this)
{
  if (!*(a1 + 8))
  {
    re::VideoAsset::initializeRenderingData(this);
  }

  v3 = re::VideoAsset::init(this);
  v4 = *(this + 23);
  if (v4)
  {
    re::VideoLightSpillGenerator::setupSession((v4 + 7368), *(this + 29), HIDWORD(*(this + 29)), *(this + 60));
    re::VideoLightSpillGenerator::setupSession((*(this + 23) + 7400), *(this + 31), HIDWORD(*(this + 31)), *(this + 64));
  }

  return v3;
}

re *re::VideoAsset::cleanupVideoPlayerHelper(re *this)
{
  v1 = *(this + 27);
  if (v1)
  {
    v2 = this;
    v3 = re::globalAllocators(this)[2];
    re::ecs2::VideoPlayerComponentHelper::~VideoPlayerComponentHelper(v1);
    this = (*(*v3 + 40))(v3, v1);
    *(v2 + 27) = 0;
  }

  return this;
}

uint64_t re::VideoAsset::containsFigDataChannelResource(uint64_t result, uint64_t a2, CFTypeRef *a3)
{
  v3 = result;
  v4 = *(a2 + 568);
  if (v4)
  {
    v7 = 0;
    v8 = a2 + 584;
    while (1)
    {
      v9 = *(a2 + 568);
      if (v9 <= v7)
      {
        break;
      }

      result = CFEqual(*(v8 + 8 * v7), *a3);
      if (result)
      {
        *v3 = 1;
        *(v3 + 8) = v7;
        return result;
      }

      if (v4 == ++v7)
      {
        goto LABEL_6;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v7, v9);
    result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v10, v11);
    __break(1u);
  }

  else
  {
LABEL_6:
    *v3 = 0;
  }

  return result;
}

BOOL re::VideoAssetResourceContext::getResourceDataAtIndex(uint64_t a1, unint64_t a2, void *a3)
{
  os_unfair_lock_lock(a1);
  v6 = *(a1 + 8);
  if (v6 > a2)
  {
    v7 = a1 + 24 * a2;
    *a3 = *(v7 + 24);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> const&>((a3 + 1), v7 + 32);
  }

  os_unfair_lock_unlock(a1);
  return v6 > a2;
}

void re::VideoAsset::processResourceData(os_unfair_lock_s *this)
{
  v74 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 68);
  v2 = *&this[70]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 68);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  if (v2 < 1)
  {
    v59 = 0;
LABEL_113:
    (off_1F5CC58C8[v59])(buf, &v66);
    return;
  }

  v3 = 0;
  v4 = v2 & 0x7FFFFFFF;
  v64 = this + 146;
  v5 = this + 144;
  do
  {
    ResourceDataAtIndex = re::VideoAssetResourceContext::getResourceDataAtIndex(&this[68], v3, &v65);
    if (!ResourceDataAtIndex)
    {
      goto LABEL_92;
    }

    v7 = *re::videoLogObjects(ResourceDataAtIndex);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 67109120;
      *&buf[4] = v65;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "VideoAsset::processResourceData VideoAssetResourceCommand: %d", buf, 8u);
    }

    if (v65 > 3)
    {
      if ((v65 - 4) >= 2)
      {
        if (v65 == 6)
        {
          if (HIDWORD(v65) != 1)
          {
            goto LABEL_92;
          }

          if (!v67)
          {
            buf[0] = 1;
            *&buf[8] = 0;
            re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&buf[8], v66);
            if (buf[0])
            {
              v33 = *&buf[8];
              if (*&buf[8])
              {
                goto LABEL_91;
              }

              goto LABEL_92;
            }
          }

          v35 = *re::assetTypesLogObjects(v8);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_92;
          }

          v71 = 0;
          v26 = &v71;
          v27 = v35;
          v28 = "Invalid ResourceData for type[VideoAssetResourceTypeVenueDescription] and for command[VideoAssetResourceCommandSetAsCurrent]";
        }

        else
        {
          if (v65 != 0x300000007)
          {
            goto LABEL_92;
          }

          if (v67 == 1)
          {
            v9 = v66;
            if (LOBYTE(this[236]._os_unfair_lock_opaque) != v66)
            {
              HIBYTE(this[66]._os_unfair_lock_opaque) = 1;
              BYTE1(this[140]._os_unfair_lock_opaque) = 0;
            }

            this[236]._os_unfair_lock_opaque = v9;
            v10 = *&this[54]._os_unfair_lock_opaque;
            if (v10)
            {
              re::ecs2::VideoPlayerComponentHelper::impl::setVideoAssetContentInfo(*v10, &this[236]);
            }

            goto LABEL_92;
          }

          v37 = *re::assetTypesLogObjects(v8);
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_92;
          }

          *buf = 0;
          v26 = buf;
          v27 = v37;
          v28 = "Invalid ResourceData for type[VideoAssetResourceTypeCurrentContentInfo] and for command[VideoAssetResourceCommandChanged]";
        }

LABEL_74:
        _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v28, v26, 2u);
        goto LABEL_92;
      }

LABEL_45:
      if (HIDWORD(v65) != 1)
      {
        goto LABEL_92;
      }

      if (v67 || (LOBYTE(v71) = 1, v72 = 0, re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v72, v66), (v71 & 1) == 0))
      {
        v25 = *re::assetTypesLogObjects(v8);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_92;
        }

        *buf = 0;
        v26 = buf;
        v27 = v25;
        v28 = "Invalid ResourceData for type[VideoAssetResourceTypeVenueDescription] and for command[VideoAssetResourceCommandRemove]";
        goto LABEL_74;
      }

      v21 = re::VideoAsset::containsFigDataChannelResource(v69, this, &v72);
      if (v69[0] == 1)
      {
        v23 = *&this[142]._os_unfair_lock_opaque;
        if (v23 <= cf1)
        {
          re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 527, cf1, v23);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v60, v61);
          __break(1u);
        }

        v24 = v23 - 1;
        if (v23 - 1 <= cf1)
        {
          v21 = *&v5[2 * v23]._os_unfair_lock_opaque;
          if (v21)
          {
            CFRelease(v21);
            v24 = *&this[142]._os_unfair_lock_opaque - 1;
          }
        }

        else
        {
          *&v64[2 * cf1]._os_unfair_lock_opaque = *&v5[2 * v23]._os_unfair_lock_opaque;
        }

        *&v5[2 * v23]._os_unfair_lock_opaque = 0;
        *&this[142]._os_unfair_lock_opaque = v24;
        ++this[144]._os_unfair_lock_opaque;
        v43 = *re::assetTypesLogObjects(v21);
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        v40 = v72;
        if (!v44)
        {
LABEL_82:
          v5 = this + 144;
          if (v40)
          {
            v33 = v40;
            goto LABEL_91;
          }

          goto LABEL_92;
        }

        *buf = 134218240;
        *&buf[4] = v72;
        *&buf[12] = 2048;
        *&buf[14] = this;
        v41 = v43;
        v42 = "Fig data channel resource(%p) for VideoAsset %p was just removed";
      }

      else
      {
        v38 = *re::assetTypesLogObjects(v21);
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
        v40 = v72;
        if (!v39)
        {
          goto LABEL_82;
        }

        *buf = 134218240;
        *&buf[4] = v72;
        *&buf[12] = 2048;
        *&buf[14] = this;
        v41 = v38;
        v42 = "Could not remove fig data channel resource(%p) for VideoAsset %p as it was not found in the array";
      }

      _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 0x16u);
      goto LABEL_82;
    }

    if (v65 == 1)
    {
      if (HIDWORD(v65) != 1)
      {
        goto LABEL_92;
      }

      if (v67 || (LOBYTE(v71) = 1, v72 = 0, re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v72, v66), (v71 & 1) == 0))
      {
        v34 = *re::assetTypesLogObjects(v8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "Invalid ResourceData for type[VideoAssetResourceTypeVenueDescription] and for command[VideoAssetResourceCommandAdd]", buf, 2u);
        }

        goto LABEL_67;
      }

      v29 = re::VideoAsset::containsFigDataChannelResource(v69, this, &v72);
      if (v69[0])
      {
        v30 = *re::assetTypesLogObjects(v29);
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        v32 = v72;
        if (v31)
        {
          *buf = 134218240;
          *&buf[4] = v72;
          *&buf[12] = 2048;
          *&buf[14] = this;
          _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Could not add fig data channel resource(%p) for VideoAsset %p as it was already added before", buf, 0x16u);
        }

LABEL_99:
        if (v32)
        {
          CFRelease(v32);
        }

LABEL_67:
        v5 = this + 144;
        goto LABEL_92;
      }

      cf = 0;
      v32 = v72;
      re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&cf, v72);
      v46 = *&this[142]._os_unfair_lock_opaque;
      if (v46 > 4)
      {
        v50 = *re::assetTypesLogObjects(v45);
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_97;
        }

        *buf = 134218240;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = this;
        v48 = v50;
        v49 = "Could not add fig data channel resource(%p) for VideoAsset %p as we already have max resources";
      }

      else
      {
        *&v64[2 * v46]._os_unfair_lock_opaque = cf;
        cf = 0;
        *&this[142]._os_unfair_lock_opaque = v46 + 1;
        ++this[144]._os_unfair_lock_opaque;
        v47 = *re::assetTypesLogObjects(v45);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_97;
        }

        *buf = 134218240;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = this;
        v48 = v47;
        v49 = "Fig data channel resource(%p) was just added for VideoAsset %p";
      }

      _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 0x16u);
LABEL_97:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_99;
    }

    if (v65 == 2)
    {
      goto LABEL_45;
    }

    if (v65 != 0x100000003)
    {
      goto LABEL_92;
    }

    if (v67 || (LOBYTE(v71) = 1, v72 = 0, re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v72, v66), (v71 & 1) == 0))
    {
      v36 = *re::assetTypesLogObjects(v8);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      *buf = 0;
      v26 = buf;
      v27 = v36;
      v28 = "Invalid ResourceData for type[VideoAssetResourceTypeVenueDescription] and for command[VideoAssetResourceCommandReady]";
      goto LABEL_74;
    }

    os_unfair_lock_lock(this + 68);
    v11 = *&this[70]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 68);
    memset(buf, 0, 20);
    if (v11 < 1)
    {
      v20 = 0;
LABEL_89:
      (off_1F5CC58C8[v20])(v69, &buf[8]);
      goto LABEL_90;
    }

    v12 = 0;
    v63 = 0;
    v13 = v11 & 0x7FFFFFFF;
    cf2 = v72;
    while (1)
    {
      v14 = re::VideoAssetResourceContext::getResourceDataAtIndex(&this[68], v12, buf);
      if (v14)
      {
        if (*&buf[4] == 1 && *buf == 2)
        {
          break;
        }
      }

LABEL_39:
      if (v13 == ++v12)
      {
        goto LABEL_40;
      }
    }

    if (*&buf[16])
    {
      v16 = 0;
      v69[0] = 0;
      v17 = cf1;
LABEL_34:
      v18 = 1;
      goto LABEL_35;
    }

    v69[0] = 1;
    cf1 = 0;
    re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&cf1, *&buf[8]);
    v17 = cf1;
    if ((v69[0] & 1) == 0)
    {
      v16 = 0;
      goto LABEL_34;
    }

    v14 = CFEqual(cf1, cf2);
    v16 = 1;
    if (!v14)
    {
      goto LABEL_34;
    }

    v18 = 0;
    v63 = 1;
LABEL_35:
    if (v16 && v17)
    {
      CFRelease(v17);
    }

    if (v18)
    {
      goto LABEL_39;
    }

LABEL_40:
    if ((v63 & 1) == 0)
    {
      v20 = *&buf[16];
      v5 = this + 144;
      if (*&buf[16] == -1)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

    v19 = *re::videoLogObjects(v14);
    v5 = this + 144;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v69 = 0;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "There is a Remove command in the queue, abort processing Ready command", v69, 2u);
    }

    v20 = *&buf[16];
    if (*&buf[16] != -1)
    {
      goto LABEL_89;
    }

LABEL_90:
    v33 = v72;
    if (v72)
    {
LABEL_91:
      CFRelease(v33);
    }

LABEL_92:
    ++v3;
  }

  while (v3 != v4);
  v51 = this + 74;
  v52 = v4 + 1;
  v53 = &this[6 * v4 + 70];
  do
  {
    v54 = v52 - 2;
    if (re::VideoAssetResourceContext::getResourceDataAtIndex(&this[68], v52 - 2, &v65))
    {
      os_unfair_lock_lock(this + 68);
      v55 = *&this[70]._os_unfair_lock_opaque;
      if (v55 > v54)
      {
        if (v55 - 1 > v54)
        {
          v56 = &v51[6 * v55];
          *&v53[-2]._os_unfair_lock_opaque = *&v56[-6]._os_unfair_lock_opaque;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1>>(v53, &v56[-4]);
          v55 = *&this[70]._os_unfair_lock_opaque;
        }

        v57 = &v51[6 * v55];
        os_unfair_lock_opaque = v57[-2]._os_unfair_lock_opaque;
        if (os_unfair_lock_opaque != -1)
        {
          (off_1F5CC58C8[os_unfair_lock_opaque])(buf, &v57[-4]);
          v55 = *&this[70]._os_unfair_lock_opaque;
        }

        v57[-2]._os_unfair_lock_opaque = -1;
        *&this[70]._os_unfair_lock_opaque = v55 - 1;
        ++this[72]._os_unfair_lock_opaque;
      }

      os_unfair_lock_unlock(this + 68);
    }

    --v52;
    v53 -= 6;
  }

  while (v52 > 1);
  v59 = v67;
  if (v67 != -1)
  {
    goto LABEL_113;
  }
}

void sub_1E20692D4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, int a27, uint64_t a28, char a29)
{
  if (v30)
  {
    CFRelease(v30);
  }

  if (a27 != -1)
  {
    (*(v29 + 8 * a27))(v31 - 128, &a26, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void re::VideoAsset::setReceiverEndpoint(re::VideoAsset *a1, void *a2)
{
  v5 = a2;
  v4 = *(a1 + 25);
  if (v4)
  {
    objc_storeStrong((v4 + 40), a2);
    if ((*(*(a1 + 25) + 48) & 1) == 0)
    {
      re::VideoAsset::updateVideoTarget(a1);
    }
  }
}

void anonymous namespace::onPrepareDataChannels(int a1, const __CFArray *a2, int a3, re *this, const __CFDictionary *a5, const __CFArray *a6, uint64_t a7)
{
  v64 = *MEMORY[0x1E69E9840];
  re::logVideoInfo(this, a2);
  if (!a7 || !*(a7 + 208))
  {
    return;
  }

  if (!CFArrayGetCount(this))
  {
    atomic_store(1u, (a7 + 120));
    return;
  }

  atomic_store(0, (a7 + 120));
  if (this)
  {
    if (a5)
    {
      Count = CFArrayGetCount(this);
      if (Count)
      {
        v12 = Count;
        v13 = 0;
        v14 = MEMORY[0x1E6963150];
        v15 = MEMORY[0x1E6963130];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(this, v13);
          if (ValueAtIndex)
          {
            if (MEMORY[0x1E6904250](ValueAtIndex, *v14, v14[1]))
            {
              *buf = *v15;
              FigTagCollectionGetTagsWithCategory();
              if (*&buf[4])
              {
                break;
              }
            }
          }

          if (v12 == ++v13)
          {
            goto LABEL_12;
          }
        }

        valuePtr = FigTagGetSInt64Value();
        v41 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
        if (v41)
        {
          Value = CFDictionaryGetValue(a5, v41);
          if (Value)
          {
            v43 = CFDictionaryGetValue(Value, *MEMORY[0x1E6973DB0]);
            v44 = v43;
            if (v43)
            {
              if (CFArrayGetCount(v43) == 9)
              {
                v57 = 0;
                v45 = 0;
                v46 = 0;
                v47 = 0;
                v48 = 1;
                v49 = 1065353216;
                v50 = 1065353216;
                do
                {
                  v55 = v48;
                  v56 = v46;
                  *buf = 0;
                  v51 = buf;
                  v52 = 2;
                  do
                  {
                    v53 = CFArrayGetValueAtIndex(v44, v47);
                    LODWORD(valuePtr) = 0;
                    CFNumberGetValue(v53, kCFNumberFloatType, &valuePtr);
                    ++v47;
                    *v51 = valuePtr;
                    v51 = &buf[4];
                    --v52;
                  }

                  while (v52);
                  v48 = 0;
                  v54 = v57;
                  if (v56)
                  {
                    v54 = *buf;
                  }

                  v57 = v54;
                  if (v56)
                  {
                    v50 = *&buf[4];
                  }

                  else
                  {
                    v49 = *buf;
                  }

                  if ((v56 & 1) == 0)
                  {
                    v45 = *&buf[4];
                  }

                  ++v47;
                  v46 = 1;
                }

                while ((v55 & 1) != 0);
                os_unfair_lock_lock((a7 + 272));
                *(a7 + 544) = v49;
                *(a7 + 548) = v57;
                *(a7 + 552) = v45;
                *(a7 + 556) = v50;
                atomic_store(1u, (a7 + 536));
                os_unfair_lock_unlock((a7 + 272));
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  if (!a6 || (v17 = CFArrayGetCount(a6), v17 < 1))
  {
    v33 = 0;
LABEL_39:
    v34 = CFArrayGetCount(this);
    v35 = *re::assetTypesLogObjects(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = "Invalid";
      if (v34)
      {
        v36 = "2D";
      }

      *buf = 136446210;
      *&buf[4] = v36;
      _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Content type detected is %{public}s", buf, 0xCu);
    }

    v38 = *re::assetTypesLogObjects(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "Stereo type detected is %{public}d", buf, 8u);
    }

    if (v34)
    {
      v39 = v33 + 1;
    }

    else
    {
      v39 = v33;
    }

    LODWORD(valuePtr) = v39;
    v62 = 1;
    re::VideoAssetResourceData::create(buf, &valuePtr, 3, 7);
    if (v62 != -1)
    {
      (off_1F5CC58C8[v62])(&cf, &valuePtr);
    }

    re::VideoAssetResourceContext::pushResourceData(a7 + 272, buf);
    if (*&buf[16] != -1)
    {
      (off_1F5CC58C8[*&buf[16]])(&valuePtr, &buf[8]);
    }

    return;
  }

  v18 = 0;
  v19 = 0;
  v20 = MEMORY[0x1E6963198];
  while (1)
  {
    v21 = CFArrayGetValueAtIndex(a6, v19);
    CFRetain(v21);
    if (!v21)
    {
      goto LABEL_34;
    }

    cf = 0;
    VTable = CMBaseObjectGetVTable();
    v24 = *(VTable + 16);
    v23 = (VTable + 16);
    v25 = *(v24 + 24);
    if (!v25)
    {
      break;
    }

    v23 = v25(v21, &cf);
    v26 = v23;
    if (v23)
    {
      goto LABEL_54;
    }

    v27 = MEMORY[0x1E6904250](cf, *v20, v20[1]);
    if (v27)
    {
      v28 = *re::assetTypesLogObjects(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v21;
        _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Received onPrepareDataChannels with resource(%p)", buf, 0xCu);
      }

      if (*(a7 + 32) != v21)
      {
        re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef((a7 + 32), v21);
        v30 = *re::assetTypesLogObjects(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a7 + 32);
          *buf = 134217984;
          *&buf[4] = v31;
          _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Current player item fig resource(%p) is set", buf, 0xCu);
        }

        v58 = 0;
        re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v58, v21);
        valuePtr = 0;
        v32 = v58;
        re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&valuePtr, v58);
        v62 = 0;
        re::VideoAssetResourceData::create(buf, &valuePtr, 1, 6);
        if (v62 != -1)
        {
          (off_1F5CC58C8[v62])(&v60, &valuePtr);
        }

        re::VideoAssetResourceContext::pushResourceData(a7 + 272, buf);
        if (*&buf[16] != -1)
        {
          (off_1F5CC58C8[*&buf[16]])(&valuePtr, &buf[8]);
        }

        if (v32)
        {
          re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v32);
        }

        v18 = 1;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v21);
LABEL_34:
    if (v17 == ++v19)
    {
      if (v18)
      {
        v33 = 0x1000000;
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_39;
    }
  }

  v26 = -12782;
LABEL_54:
  v40 = *re::assetTypesLogObjects(v23);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    *&buf[4] = v21;
    *&buf[12] = 1024;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "Error occured while getting a description fig tags of a resource(%p) - %d", buf, 0x12u);
  }

  re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v21);
}

void sub_1E2069A90(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, int a17, __int16 a18, char a19, char a20, int a21, int a22, int a23, int a24, char a25, uint64_t a26, int a27)
{
  if (a27 != -1)
  {
    (off_1F5CC58C8[a27])(&a21, &a26, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::resourceLifeCycleCallback(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3 && *(a3 + 208))
  {
    cf = 0;
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 16);
    v8 = (VTable + 16);
    v10 = *(v9 + 24);
    if (v10)
    {
      v8 = v10(a2, &cf);
      v11 = v8;
      if (!v8)
      {
        v12 = MEMORY[0x1E6904250](cf, *MEMORY[0x1E6963198], *(MEMORY[0x1E6963198] + 8));
        v13 = v12 != 0;
        if (a4 == 1)
        {
          v19 = *re::assetTypesLogObjects(v12);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v27 = a2;
            _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Received kFigVideoReceiverResourceLifeCycleEvent_Removed for resource(%p)", buf, 0xCu);
          }

          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterRemoveListener();
          CFRetain(a2);
          *v24 = 0;
          re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(v24, a2);
          *&v24[8] = 0;
          re::VideoAssetResourceData::create(buf, v24, v13, 2);
          if (*&v24[8] != -1)
          {
            (off_1F5CC58C8[*&v24[8]])(&v20, v24);
          }

          re::VideoAssetResourceContext::pushResourceData(a3 + 272, buf);
        }

        else
        {
          if (a4)
          {
LABEL_34:
            if (cf)
            {
              CFRelease(cf);
            }

            return;
          }

          v14 = *re::assetTypesLogObjects(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v27 = a2;
            _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Received kFigVideoReceiverResourceLifeCycleEvent_Added for resource(%p)", buf, 0xCu);
          }

          CFRetain(a2);
          *v24 = 0;
          re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(v24, a2);
          *&v24[8] = 0;
          re::VideoAssetResourceData::create(buf, v24, v13, 1);
          if (*&v24[8] != -1)
          {
            (off_1F5CC58C8[*&v24[8]])(&v20, v24);
          }

          re::VideoAssetResourceContext::pushResourceData(a3 + 272, buf);
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v15)
          {
            v16 = v15(a2);
            if (v16 == 1)
            {
              v17 = *re::assetTypesLogObjects(v16);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *v24 = 134217984;
                *&v24[4] = a2;
                _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Looks like the newly added resource(%p) state is already kFigDataChannelResourceState_Ready", v24, 0xCu);
              }

              CFRetain(a2);
              v20 = 0;
              re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v20, a2);
              v21 = 0;
              re::VideoAssetResourceData::create(v24, &v20, v13, 3);
              if (v21 != -1)
              {
                (off_1F5CC58C8[v21])(&v23, &v20);
              }

              re::VideoAssetResourceContext::pushResourceData(a3 + 272, v24);
              if (v25 != -1)
              {
                (off_1F5CC58C8[v25])(&v20, &v24[8]);
              }

              if (a2)
              {
                re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(a2);
              }
            }
          }
        }

        if (v28 != -1)
        {
          (off_1F5CC58C8[v28])(v24, &v27 + 4);
        }

        if (a2)
        {
          re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(a2);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v11 = -12782;
    }

    v18 = *re::assetTypesLogObjects(v8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v27) = v11;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Error occured while getting a description fig tags of a resource - %d", buf, 8u);
    }
  }
}

void sub_1E206A014(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, int a17, int a18, int a19, int a20, uint64_t a21, char a22, uint64_t a23, int a24)
{
  if (a20 != -1)
  {
    (off_1F5CC58C8[a20])(&a9, &a18, a3, a4, a5, a6, a7, a8);
  }

  if (v24)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v24);
  }

  if (a24 != -1)
  {
    (off_1F5CC58C8[a24])(&a16, &a23);
  }

  if (v24)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v24);
  }

  _Unwind_Resume(exception_object);
}

id re::VideoAsset::getReceiverEndpoint(re::VideoAsset *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

re *re::VideoAsset::createOrGetVideoPlayerComponentHelper(uint64_t a1, re::TransformService *a2, re::SpatialMediaManager *a3, re::DebugRenderer *a4)
{
  result = *(a1 + 216);
  if (!result)
  {
    v9 = *re::videoLogObjects(0);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      *v13 = 0;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "VideoAsset createOrGetVideoPlayerComponentHelper", v13, 2u);
    }

    v11 = re::globalAllocators(v10);
    v12 = (*(*v11[2] + 32))(v11[2], 8, 8);
    result = re::ecs2::VideoPlayerComponentHelper::VideoPlayerComponentHelper(v12, a2, a3, a4);
    *(a1 + 216) = result;
    if (*(a1 + 944))
    {
      re::ecs2::VideoPlayerComponentHelper::impl::setVideoAssetContentInfo(*result, (a1 + 944));
      return *(a1 + 216);
    }
  }

  return result;
}

double re::VideoAsset::cleanupTextureCache(re::VideoAsset *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    if (*(v2 + 136))
    {
      re::VideoPixelBufferPool::flush((v2 + 128), 1uLL);
      v2 = *(this + 23);
    }

    re::ObjCObject::operator=((v2 + 264), 0);
    re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::clear(v2 + 216);
    v3 = *(this + 23);
    v4 = *(v3 + 280);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 280) = 0;
      v3 = *(this + 23);
    }

    re::VideoPresentationQueue::clear(v3 + 432);
    v5 = *(this + 23);
    v6 = v5[923];
    if (v6)
    {
      CFRelease(v6);
      v5[923] = 0;
      v5 = *(this + 23);
    }

    v7 = v5[927];
    if (v7)
    {
      CFRelease(v7);
      v5[927] = 0;
      v5 = *(this + 23);
    }

    if (v5[935])
    {
      re::VideoPixelBufferPool::flush((v5 + 934), 1uLL);
      v5 = *(this + 23);
    }

    v8 = v5[1216];
    if (v8)
    {
      CFRelease(v8);
      v5[1216] = 0;
      v5 = *(this + 23);
    }

    re::VideoPipeline::deinit((v5 + 1219));
  }

  if (*(this + 26))
  {
    re::VideoAsset::clearCurrentUserProvidedVideoPixelBuffers(this);
    re::VideoAsset::clearFutureUserProvidedVideoPixelBuffers(this);
    result = 0.0;
    *(*(this + 26) + 4368) = 0u;
  }

  return result;
}

uint64_t re::VideoAssetLoader::registerAsset(re::VideoManager **this, unsigned __int8 *a2, const re::ExistingAssetInformation *a3)
{
  v6 = *re::videoLogObjects(this);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "VideoAsset->registerAsset :: Registering Asset", v11, 2u);
  }

  v7 = re::AssetLoader::registerAsset(this, a2, a3);
  if (!v7)
  {
    v8 = this[2];
    if (v8)
    {
      if (*(a3 + 10) == -1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(a3 + 10);
      }

      re::VideoManager::addActiveVideoAsset(v8, v9);
    }

    re::VideoAsset::updateAutoPlay(a2, a2[192], 1);
  }

  return v7;
}

re *re::VideoAssetLoader::unregisterAsset(re::VideoAssetLoader *this, re::VideoAsset *a2, const re::ExistingAssetInformation *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *re::videoLogObjects(this);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 134217984;
    *&v17[4] = a2;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "VideoAsset :: UnRegistering Asset %p", v17, 0xCu);
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(a3 + 10);
    if (v8 == -1)
    {
      v8 = 0;
    }

    *v17 = v8;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v7 + 176, v17);
  }

  v9 = *(a2 + 25);
  if (v9)
  {
    v10 = *(v9 + 32);
    if (v10)
    {
      if (!*v9 || ([*v9 removeEndpoint:?], (v10 = *(v9 + 32)) != 0))
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v10);
      }

      *(v9 + 32) = 0;
    }

    re::VideoAsset::updateAutoPlay(a2, *(a2 + 192), 0);
  }

  v11 = *(a2 + 26);
  if (v11)
  {
    re::VideoChannelTextureHandles::invalidate((v11 + 4384));
    re::VideoChannelTextureHandles::invalidate((v11 + 4544));
    *(v11 + 4704) = -1;
    *(v11 + 4708) = 0;
    re::VideoChannelTextureHandles::invalidate((v11 + 4712));
    re::VideoChannelTextureHandles::invalidate((v11 + 4872));
    *(v11 + 5032) = -1;
    *(v11 + 5036) = 0;
    *(v11 + 4368) = 0u;
    v12 = (v11 + 32);
    v13 = 144;
    do
    {
      *(v12 - 1) = 0;
      ++*v12;
      v12 += 18;
      v13 -= 72;
    }

    while (v13);
  }

  v14 = *(a2 + 23);
  if (v14)
  {
    re::VideoColorManager::clear((v14 + 588));
    re::VideoPixelBufferTextures::invalidate((v14 + 36));
    v15 = v14[35];
    if (v15)
    {
      CFRelease(v15);
      v14[35] = 0;
    }

    re::VideoPresentationQueue::clear((v14 + 54));
  }

  re::VideoAsset::cleanupTextureCache(a2);
  return re::VideoAsset::cleanupVideoPlayerHelper(a2);
}

re *re::VideoAssetLoader::unloadAsset(re *this, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *re::videoLogObjects(this);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v24 = 134217984;
      v25 = a2;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "VideoAsset :: unloadAsset %p", &v24, 0xCu);
    }

    v5 = a2[25];
    if (v5)
    {
      v6 = *v5;
      *v5 = 0;

      v8 = re::globalAllocators(v7)[2];
      v9 = *(v5 + 32);
      if (v9)
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v9);
      }

      *(v5 + 32) = 0;

      v4 = (*(*v8 + 40))(v8, v5);
      a2[25] = 0;
    }

    v10 = a2[26];
    if (v10)
    {
      v11 = *(v10 + 16);
      *(v10 + 16) = 0;

      if (*v10)
      {
        re::destroyVideoReceiver(v10);
      }

      v13 = 0;
      v14 = re::globalAllocators(v12)[2];
      v15 = v10 + 4952;
      do
      {
        v16 = v15 + v13;
        if (*(v10 + v13 + 5016))
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((v16 + 64));
        }

        *(v10 + v13 + 5016) = 0;
        re::TextureHandle::invalidate((v16 + 16));
        re::TextureHandle::invalidate((v15 + v13));
        re::TextureHandle::invalidate((v16 - 16));
        re::TextureHandle::invalidate((v16 - 32));
        re::TextureHandle::invalidate((v16 - 48));
        re::TextureHandle::invalidate((v16 - 64));
        re::TextureHandle::invalidate((v16 - 80));
        v13 -= 160;
      }

      while (v13 != -320);
      v17 = 0;
      v18 = v10 + 4624;
      do
      {
        v19 = v18 + v17;
        if (*(v10 + v17 + 4688))
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((v19 + 64));
        }

        *(v10 + v17 + 4688) = 0;
        re::TextureHandle::invalidate((v19 + 16));
        re::TextureHandle::invalidate((v18 + v17));
        re::TextureHandle::invalidate((v19 - 16));
        re::TextureHandle::invalidate((v19 - 32));
        re::TextureHandle::invalidate((v19 - 48));
        re::TextureHandle::invalidate((v19 - 64));
        re::TextureHandle::invalidate((v19 - 80));
        v17 -= 160;
      }

      while (v17 != -320);
      for (i = 2272; i != -1920; i -= 2096)
      {
        re::VideoPresentationGroup::~VideoPresentationGroup((v10 + i));
      }

      for (j = 0; j != -144; j -= 72)
      {
        v22 = v10 + j;
        *(v22 + 96) = 0;
        *(v22 + 104) = *(v10 + j + 104) + 1;
      }

      if (*v10)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v10);
      }

      *v10 = 0;
      v4 = (*(*v14 + 40))(v14, v10);
      a2[26] = 0;
    }

    v23 = re::globalAllocators(v4)[2];
    (**a2)(a2);
    return (*(*v23 + 40))(v23, a2);
  }

  return this;
}

void re::VideoAssetLoader::makeSharedResourcePayload(re *a1@<X0>, uint64_t a2@<X1>, REVideoPayload **a3@<X8>)
{
  if (*(a2 + 200))
  {
    re::VideoPayload::makeWithProperties(*(a2 + 24), *(a2 + 240), *(a2 + 256), *(a2 + 948), *(a2 + 264), &v7, *(a2 + 28), *(a2 + 232), *(a2 + 248));
    v4 = v7;
    v7 = 0;
    *a3 = v4;
  }

  else
  {
    v5 = *re::assetTypesLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "VideoAssetLoader::makeSharedResourcePayload was unexpectedly called on an asset without playback data", v6, 2u);
    }

    *a3 = 0;
  }
}

uint64_t re::VideoAssetLoader::postInitializeAssetFromPayload(uint64_t a1, id *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  re::VideoPayload::dynamicCast(&v31, a2);
  if (!a3)
  {
    v27 = *re::videoLogObjects(v5);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v26 = 0;
      goto LABEL_11;
    }

    *buf = 0;
    v28 = "Invalid video asset to initialize with payload";
LABEL_16:
    _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_10;
  }

  v6 = v31;
  v7 = [v6 diffuseSpillMapWidth];
  v8 = v31;
  *(a3 + 232) = __PAIR64__([v8 diffuseSpillMapHeight], v7);

  v9 = v31;
  v10 = [v9 specularSpillMapWidth];
  v11 = v31;
  *(a3 + 248) = __PAIR64__([v11 specularSpillMapHeight], v10);

  v12 = v31;
  re::VideoAsset::setDiffuseSpillMapBlurSigma(a3, [v12 diffuseSpillBlurSigma]);

  v13 = v31;
  re::VideoAsset::setSpecularSpillMapBlurSigma(a3, [v13 specularSpillBlurSigma]);

  v14 = v31;
  *(a3 + 948) = [v14 desiredViewingMode];

  v15 = v31;
  *(a3 + 264) = [v15 preventPlaybackUntilReady];

  v16 = (*(*a1 + 24))(a1, a3, 0, 0);
  if ((v16 & 1) == 0)
  {
    v27 = *re::assetTypesLogObjects(v16);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v28 = "VideoAsset::createRuntimeData failed unexpectedly";
    goto LABEL_16;
  }

  v17 = v31;
  *(a3 + 24) = [v17 audioInputMode];

  v18 = v31;
  [v18 reverbSendLevel];
  *(a3 + 28) = v19;

  v21 = *re::assetTypesLogObjects(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v22)
  {
    v23 = *(a3 + 24);
    v24 = *(a3 + 28);
    *buf = 67109376;
    v33 = v23;
    v34 = 2048;
    v35 = v24;
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_INFO, "recovered audio inputMode=%d, reverbSendLevel=%0.2f from video payload", buf, 0x12u);
  }

  v25 = *(a3 + 208);
  if (v25)
  {
    v26 = 1;
    *(v25 + 5064) = 1;
  }

  else
  {
    v30 = *re::assetTypesLogObjects(v22);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "VideoAsset without rendering data unexpectedly received an updated VideoPlayload", buf, 2u);
    }

    v26 = 1;
  }

LABEL_11:

  return v26;
}

void re::VideoAssetLoader::resourceDidUpdate(int a1, uint64_t a2, id *this)
{
  v26 = *MEMORY[0x1E69E9840];
  re::VideoPayload::dynamicCast(&v21, this);
  v4 = v21;
  *(a2 + 24) = [v4 audioInputMode];

  v5 = v21;
  [v5 reverbSendLevel];
  *(a2 + 28) = v6;

  v8 = *re::assetTypesLogObjects(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a2 + 24);
    v10 = *(a2 + 28);
    *buf = 67109376;
    v23 = v9;
    v24 = 2048;
    v25 = v10;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "recovered audio inputMode=%d, reverbSendLevel=%0.2f from video payload update", buf, 0x12u);
  }

  v11 = v21;
  v12 = [v11 diffuseSpillMapWidth];
  v13 = v21;
  *(a2 + 232) = __PAIR64__([v13 diffuseSpillMapHeight], v12);

  v14 = v21;
  v15 = [v14 specularSpillMapWidth];
  v16 = v21;
  *(a2 + 248) = __PAIR64__([v16 specularSpillMapHeight], v15);

  v17 = v21;
  re::VideoAsset::setDiffuseSpillMapBlurSigma(a2, [v17 diffuseSpillBlurSigma]);

  v18 = v21;
  re::VideoAsset::setSpecularSpillMapBlurSigma(a2, [v18 specularSpillBlurSigma]);

  v19 = v21;
  *(a2 + 948) = [v19 desiredViewingMode];

  v20 = v21;
  *(a2 + 264) = [v20 preventPlaybackUntilReady];
}

void re::VideoAssetLoader::setPayloadOptions(uint64_t a1, re::VideoAsset *a2, id *a3)
{
  re::VideoRequestOptions::dynamicCast(a3, &v6);
  v5 = [*a3 receiverEndpoint];
  re::VideoAsset::setReceiverEndpoint(a2, v5);
}

void re::introspect_VideoAssetPlaybackMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE197758, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE197760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197760))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1977C0, "VideoAssetPlaybackMode", 1, 1, 1, 1);
      qword_1EE1977C0 = &unk_1F5D0C658;
      qword_1EE197800 = &re::introspect_VideoAssetPlaybackMode(BOOL)::enumTable;
      dword_1EE1977D0 = 9;
      __cxa_guard_release(&qword_1EE197760);
    }

    if (_MergedGlobals_80)
    {
      break;
    }

    _MergedGlobals_80 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1977C0, a2);
    v35 = 0xB0BB7F15DC0CA4A6;
    v36 = "VideoAssetPlaybackMode";
    v40 = 0x31CD534126;
    v41 = "uint8_t";
    v4 = v39[0];
    v5 = v39[1];
    if (v40)
    {
      if (v40)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE197800;
      v40 = v4;
      v41 = v5;
      re::TypeBuilder::beginEnumType(v39, &v35, 1, 1, &v40);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v38.var0 = 2 * v11;
            v38.var1 = v10;
            re::TypeBuilder::addEnumConstant(v39, v15, &v38);
            if (*&v38.var0)
            {
              if (*&v38.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v38.var0 = 2 * v20;
              v38.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v39, v24, &v38);
              if (*&v38.var0)
              {
                if (*&v38.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v39, v26);
      xmmword_1EE1977E0 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v34);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE197758))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Manual";
      qword_1EE197790 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "AutoPlayOnce";
      qword_1EE197798 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "AutoPlayAndLoop";
      qword_1EE1977A0 = v33;
      __cxa_guard_release(&qword_1EE197758);
    }
  }
}

void *re::allocInfo_VideoAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197770))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197808, "VideoAsset");
    __cxa_guard_release(&qword_1EE197770);
  }

  return &unk_1EE197808;
}

void re::initInfo_VideoAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x10D01A2978AEAALL;
  v19[1] = "VideoAsset";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE197768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197768))
  {
    v7 = re::introspectionAllocator();
    v9 = introspect_REAudioInputMode(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "audioInputMode";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x1800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1977A8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "videoFileAssets";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x9000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1977B0 = v14;
    v15 = re::introspectionAllocator();
    re::introspect_VideoAssetPlaybackMode(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "playbackMode";
    *(v17 + 16) = &qword_1EE1977C0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0xC000000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1977B8 = v17;
    __cxa_guard_release(&qword_1EE197768);
  }

  *(this + 2) = 0x3D000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1977A8;
  *(this + 9) = re::internal::defaultConstruct<re::VideoAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VideoAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::VideoAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::VideoAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void sub_1E206BA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = REVideoPlayerItemsLooper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *re::DynamicInlineArray<re::VideoAssetResourceData,10ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 24 * *result;
    v3 = result + 3;
    do
    {
      v4 = *(v3 + 2);
      if (v4 != -1)
      {
        result = (off_1F5CC58C8[v4])(&v5, v3);
      }

      *(v3 + 2) = -1;
      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

const void **re::VideoChannelTextureHandles::VideoChannelTextureHandles(const void **this, CFTypeRef *a2)
{
  v4 = re::TextureHandle::TextureHandle(this, a2);
  re::TextureHandle::TextureHandle((v4 + 16), (a2 + 2));
  re::TextureHandle::TextureHandle((this + 4), (a2 + 4));
  re::TextureHandle::TextureHandle((this + 6), (a2 + 6));
  re::TextureHandle::TextureHandle((this + 8), (a2 + 8));
  re::TextureHandle::TextureHandle((this + 10), (a2 + 10));
  re::TextureHandle::TextureHandle((this + 12), (a2 + 12));
  v5 = *(a2 + 7);
  v6 = *(a2 + 8);
  this[18] = 0;
  *(this + 7) = v5;
  *(this + 8) = v6;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 144, this + 18, a2[18]);
  v7 = *(a2 + 76);
  *(this + 154) = *(a2 + 154);
  *(this + 76) = v7;
  return this;
}

void sub_1E206BF0C(_Unwind_Exception *a1)
{
  re::TextureHandle::invalidate(v1 + 12);
  re::TextureHandle::invalidate(v1 + 10);
  re::TextureHandle::invalidate(v1 + 8);
  re::TextureHandle::invalidate(v1 + 6);
  re::TextureHandle::invalidate(v1 + 4);
  re::TextureHandle::invalidate(v1 + 2);
  re::TextureHandle::invalidate(v1);
  _Unwind_Resume(a1);
}

void re::DynamicInlineArray<re::SharedPtr<re::VideoASEFrameMeasurement>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = a1 + 16;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 8;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

double re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;

          v3 = *(a1 + 8);
        }

        v4 += 48;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5CC58C8[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (*(&off_1F5CC58D8 + v4))(&v5, result, a2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(*a2);
  }

  *a2 = 0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t *a1, const void **a2, CFTypeRef *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    (off_1F5CC58C8[v5])(&v8, v4);
LABEL_7:
    *(v4 + 8) = -1;
    *v4 = 0;
    re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(v4, *a3);
    *(v4 + 8) = 0;
    return;
  }

  v7 = *a3;

  re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(a2, v7);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 8);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    result = (off_1F5CC58C8[v5])(&v6, v4);
  }

  v4[2] = -1;
  *v4 = *a3;
  v4[2] = 1;
  return result;
}

void re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(const void **a1, CFTypeRef cf)
{
  v4 = *a1;
  if (v4)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v4);
  }

  *a1 = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5CC58C8[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CC58E8[v4])(&v5, result, a2);
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  v5 = *(*result + 8);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      *a3 = 0;
      return result;
    }

    result = (off_1F5CC58C8[v5])(&v6, v4);
  }

  *v4 = 0;
  *v4 = *a3;
  *a3 = 0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 8);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    result = (off_1F5CC58C8[v5])(&v6, v4);
  }

  v4[2] = -1;
  *v4 = *a3;
  v4[2] = 1;
  return result;
}

uint64_t re::VideoAssetResourceData::create(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  result = std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> const&>(a1 + 8, a2);
  *a1 = a4;
  *(a1 + 4) = a3;
  return result;
}

void sub_1E206C474(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v16 = *(v13 + 16);
  if (v16 != -1)
  {
    (off_1F5CC58C8[v16])(&a13, v14, a3, a4, a5, a6, a7, a8);
  }

  *(v13 + 16) = -1;
  _Unwind_Resume(exception_object);
}

void re::VideoAssetResourceContext::pushResourceData(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  if (v4 <= 9)
  {
    v5 = a1 + 24 * v4;
    *(v5 + 24) = *a2;
    v6 = v5 + 24;
    *(v6 + 8) = 0;
    *(v6 + 16) = -1;
    v7 = *(a2 + 16);
    if (v7 != -1)
    {
      v8 = v6 + 8;
      (off_1F5CC58F8[v7])(&v8, a2 + 8);
      *(v6 + 16) = v7;
    }

    ++*(a1 + 8);
    ++*(a1 + 16);
  }

  os_unfair_lock_unlock(a1);
}

void sub_1E206C570(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  v16 = *(v14 + 16);
  if (v16 != -1)
  {
    (off_1F5CC58C8[v16])(&a12, v13, a3, a4, a5, a6, a7, a8);
  }

  *(v14 + 16) = -1;
  os_unfair_lock_unlock(v12);
  _Unwind_Resume(a1);
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo> &&>(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  *v2 = *a2;
  *a2 = 0;
  return result;
}

void anonymous namespace::dataChannelResourceStateChangedNotificationHandler(int a1, uint64_t a2, int a3, CFTypeRef cf)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    CFRetain(cf);
    if (cf)
    {
      if (!*(a2 + 208))
      {
LABEL_18:
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(cf);
        return;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      cfa = 0;
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 16);
      v7 = (VTable + 16);
      v9 = *(v8 + 24);
      if (v9)
      {
        v7 = v9(cf, &cfa);
        v10 = v7;
        if (!v7)
        {
          v11 = MEMORY[0x1E6904250](cfa, *MEMORY[0x1E6963198], *(MEMORY[0x1E6963198] + 8)) != 0;
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v12)
          {
            v13 = v12(cf);
            switch(v13)
            {
              case 3:
                v18 = *re::assetTypesLogObjects(v13);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *&buf[4] = cf;
                  _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Received resource(%p) state as kFigDataChannelResourceState_NotNeeded", buf, 0xCu);
                }

                break;
              case 2:
                v17 = *re::assetTypesLogObjects(v13);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  *&buf[4] = cf;
                  _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Received resource(%p) state as kFigDataChannelResourceState_FailedToLoad", buf, 0xCu);
                }

                break;
              case 1:
                v14 = *re::assetTypesLogObjects(v13);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *&buf[4] = cf;
                  _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Received resource(%p) state as kFigDataChannelResourceState_Ready", buf, 0xCu);
                }

                v15 = 1;
                goto LABEL_25;
            }
          }

          v15 = 0;
LABEL_25:
          if (cfa)
          {
            CFRelease(cfa);
          }

          if (v15)
          {
            v25 = 0;
            re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v25, cf);
            v23 = 0;
            v19 = v25;
            re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v23, v25);
            v24 = 0;
            re::VideoAssetResourceData::create(buf, &v23, v11, 3);
            v20 = *buf;
            std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1>>(&v21, &buf[8]);
            if (v29 != -1)
            {
              (off_1F5CC58C8[v29])(&v27, &buf[8]);
            }

            v29 = -1;
            if (v24 != -1)
            {
              (off_1F5CC58C8[v24])(&v27, &v23);
            }

            if (v19)
            {
              re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v19);
            }

            re::VideoAssetResourceContext::pushResourceData(a2 + 272, &v20);
          }

LABEL_16:
          if (v22 != -1)
          {
            (off_1F5CC58C8[v22])(buf, &v21);
          }

          goto LABEL_18;
        }
      }

      else
      {
        v10 = -12782;
      }

      v16 = *re::assetTypesLogObjects(v7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Error occured while getting a description fig tags of a resource - %d", buf, 8u);
      }

      goto LABEL_16;
    }
  }
}

void sub_1E206C9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24)
{
  if (a24 != -1)
  {
    (off_1F5CC58C8[a24])(&a21, v26 + 8, a3, a4, a5, a6, a7, a8);
  }

  a24 = -1;
  if (a15 != -1)
  {
    (off_1F5CC58C8[a15])(&a21, &a13);
  }

  if (v25)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v25);
  }

  if (a11 != -1)
  {
    (off_1F5CC58C8[a11])(&a22, &a10);
  }

  re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v24);
  _Unwind_Resume(a1);
}

void re::DynamicInlineArray<re::VideoObject<re::VideoFigDataChannelResourceBase>,5ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = (a1 + 16);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(*v3);
      }

      *v3++ = 0;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

uint64_t *re::ShaderGraphAsset::assetType(re::ShaderGraphAsset *this)
{
  {
    re::ShaderGraphAsset::assetType(void)::type = "ShaderGraph";
    qword_1EE1C6F40 = 0;
    re::AssetType::generateCompiledExtension(&re::ShaderGraphAsset::assetType(void)::type);
  }

  return &re::ShaderGraphAsset::assetType(void)::type;
}

uint64_t re::ShaderGraphAsset::ShaderGraphAsset(uint64_t a1, id *a2, uint64_t a3)
{
  *a1 = &unk_1F5CC5918;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v6 = (a1 + 8);
  re::DynamicString::setCapacity(v6, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  re::ObjCObject::operator=((a1 + 40), a2);
  re::DynamicString::format(&v9, "shadergraph_%s", v7, a3);
  re::DynamicString::operator=(v6, &v9);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  return a1;
}

re::sg::CachedCompilationMaterial *re::ShaderGraphAsset::getCustomUniformsArgument@<X0>(re::ShaderGraphAsset *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 6);
  if (result)
  {
    CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(result);
    re::StringID::StringID(a2, CustomUniformsArgument);
    *(a2 + 16) = *(CustomUniformsArgument + 8);
    v5 = *(CustomUniformsArgument + 3);
    *(a2 + 32) = *(CustomUniformsArgument + 8);
    *(a2 + 24) = v5;
    re::StringID::StringID((a2 + 40), (CustomUniformsArgument + 40));
    v6 = *(CustomUniformsArgument + 14);
    *(a2 + 60) = *(CustomUniformsArgument + 30);
    *(a2 + 56) = v6;
    result = re::FixedArray<re::MetalTypeInfo>::FixedArray((a2 + 64), CustomUniformsArgument + 8);
    v7 = *(CustomUniformsArgument + 11);
    *(a2 + 94) = *(CustomUniformsArgument + 94);
    *(a2 + 88) = v7;
    v8 = *(CustomUniformsArgument + 104);
  }

  else
  {
    v8 = 0;
    *(a2 + 24) = 0u;
    *(a2 + 32) = 1;
    *a2 = 0;
    *(a2 + 8) = &str_67;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 48) = &str_67;
    *(a2 + 60) = 0;
    *(a2 + 100) = 256;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 85) = 0;
  }

  *(a2 + 104) = v8;
  return result;
}

uint64_t re::ShaderGraphAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);

  if (v5)
  {
    v7 = *(a3 + 40);
    v8 = v7;

    if (v7)
    {
      BytePtr = CFDataGetBytePtr(v7);
      v10 = *(a3 + 40);
      (*(*a2 + 16))(a2, BytePtr, [v10 length]);
    }
  }

  else
  {
    v11 = *re::assetTypesLogObjects(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Serializing ShaderGraphAsset but no data to serialize (Data.isValid() returned false)", v13, 2u);
    }
  }

  return 1;
}

uint64_t re::ShaderGraphAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = 0;
  v7 = 0;
  v8 = 0;
  v6 = a3;
  v9 = 0;
  if (re::SeekableInputStreamBufferedReader::readNext(&v6, 0xFFFFFFFFFFFFFFFFLL))
  {
    re::Data::makeDataWithBytes(&v5, v7, v8);
    re::ObjCObject::operator=((a2 + 40), &v5);
  }

  re::SeekableInputStreamBufferedReader::~SeekableInputStreamBufferedReader(&v6);
  return 1;
}

void sub_1E206CE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  re::SeekableInputStreamBufferedReader::~SeekableInputStreamBufferedReader(va);
  _Unwind_Resume(a1);
}

re *re::ShaderGraphAssetLoader::unloadAsset(re *this, void (***a2)(void))
{
  if (a2)
  {
    v3 = re::globalAllocators(this)[2];
    (**a2)(a2);
    v4 = *(*v3 + 40);

    return v4(v3, a2);
  }

  return this;
}

void re::ShaderGraphAssetLoader::findDependencies(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

uint64_t re::ShaderGraphAssetLoader::introspectionType(re::ShaderGraphAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1978C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1978C0))
  {
    qword_1EE1978B8 = re::internal::getOrCreateInfo("ShaderGraphAsset", re::allocInfo_ShaderGraphAsset, re::initInfo_ShaderGraphAsset, &unk_1EE1978B0, 0);
    __cxa_guard_release(&qword_1EE1978C0);
  }

  return qword_1EE1978B8;
}

uint64_t re::ShaderGraphAssetLoader::allocateSampleAsset(re::ShaderGraphAssetLoader *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 56, 8);
  v4 = 0;
  re::ShaderGraphAsset::ShaderGraphAsset(v2, &v4, "SampleAsset");

  return v2;
}

void *re::allocInfo_ShaderGraphAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_81, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_81))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1978C8, "ShaderGraphAsset");
    __cxa_guard_release(&_MergedGlobals_81);
  }

  return &unk_1EE1978C8;
}

void re::initInfo_ShaderGraphAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0xBA2EB1656F73304ELL;
  v12[1] = "ShaderGraphAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1978A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1978A8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "graphIdentifier";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1978A0 = v10;
    __cxa_guard_release(&qword_1EE1978A8);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1978A0;
  *(this + 9) = re::internal::defaultConstruct<re::ShaderGraphAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ShaderGraphAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::ShaderGraphAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::ShaderGraphAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

void *re::internal::defaultConstruct<re::ShaderGraphAsset>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CC5918;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  result = re::DynamicString::setCapacity(v4, 0);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ShaderGraphAsset>(uint64_t a1)
{
  *a1 = &unk_1F5CC5918;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  result = re::DynamicString::setCapacity(v2, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

void re::ShaderGraphAsset::~ShaderGraphAsset(re::ShaderGraphAsset *this)
{
  re::ShaderGraphAsset::~ShaderGraphAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CC5918;
  v2 = *(this + 6);
  if (v2)
  {

    *(this + 6) = 0;
  }

  re::DynamicString::deinit((this + 8));
}

void *re::FixedArray<re::MetalTypeInfo>::FixedArray(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::MetalTypeInfo>::init<>(a1, v4, a2[1]);
    re::FixedArray<re::MetalTypeInfo>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::FixedArray<re::MetalTypeInfo>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x333333333333334)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 80, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 80 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 8) = 1;
      *(result + 24) = &str_67;
      *(result + 36) = 0;
      *(result + 76) = 256;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 40) = 0;
      *(result + 61) = 0;
      result += 80;
      --v6;
    }

    while (v6);
  }

  *result = 0u;
  *(result + 16) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 32) = 0u;
  *(result + 8) = 1;
  *(result + 24) = &str_67;
  *(result + 36) = 0;
  *(result + 76) = 256;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 61) = 0;
  return result;
}

uint64_t re::FixedArray<re::MetalTypeInfo>::copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    return std::__copy_impl::operator()[abi:nn200100]<re::MetalTypeInfo *,re::MetalTypeInfo *,re::MetalTypeInfo *>(&v4, *(a2 + 16), *(a2 + 16) + 80 * v2, *(a1 + 16));
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MetalTypeInfo *,re::MetalTypeInfo *,re::MetalTypeInfo *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 16;
  do
  {
    v7 = *(v6 - 16);
    *(a4 + 8) = *(v6 - 8);
    *a4 = v7;
    re::StringID::operator=((a4 + 16), v6);
    v8 = *(v6 + 16);
    *(a4 + 36) = *(v6 + 20);
    *(a4 + 32) = v8;
    re::FixedArray<re::MetalTypeInfo>::operator=((a4 + 40), v6 + 24);
    v9 = *(v6 + 54);
    *(a4 + 64) = *(v6 + 48);
    *(a4 + 70) = v9;
    a4 += 80;
    v10 = v6 + 64;
    v6 += 80;
  }

  while (v10 != v5);
  return v5;
}

uint64_t *re::FixedArray<re::MetalTypeInfo>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::MetalTypeInfo>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<re::MetalTypeInfo>::copy(a1, a2);
    }
  }

  return a1;
}

void re::SeekableInputStreamBufferedReader::~SeekableInputStreamBufferedReader(re::SeekableInputStreamBufferedReader *this)
{
  if (*(this + 6))
  {
    (*(**this + 24))();
    *(this + 6) = 0;
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  re::DynamicArray<unsigned long>::deinit(this + 32);
}

void re::VideoPayload::makeWithProperties(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, REVideoPayload **a6@<X8>, float a7@<S0>, double a8@<D1>, double a9@<D2>)
{
  v18 = [REVideoPayload alloc];
  *&v19 = a7;
  v20 = [(REVideoPayload *)v18 initWithAudioInputMode:a1 reverbSendLevel:a2 diffuseSpillMapDimensions:a3 specularSpillMapDimensions:a4 diffuseSpillBlurSigma:a5 specularSpillBlurSigma:v19 desiredViewingMode:a8 preventPlaybackUntilReady:a9];
  *a6 = v20;
}

void re::VideoPayload::dynamicCast(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v6 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void re::VideoRequestOptions::makeWithReceiver(void *a1@<X0>, REVideoRequestOptions **a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = re::VideoReceiverCreateEndpointID(a1, &v8);
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = *re::assetTypesLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_fault_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_FAULT, "Failed to copy video receiver endpoint (error: %d)", buf, 8u);
    }

    *a2 = 0;
  }

  else
  {
    v7 = [[REVideoRequestOptions alloc] initWithReceiverEndpoint:v4];
    *a2 = v7;
  }
}

void re::VideoRequestOptions::dynamicCast(id *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void re::AssetHelper::registerDefaultAssetTypes(re::AssetManager *a1, re::StringID *a2, __int16 a3)
{
  v204 = *MEMORY[0x1E69E9840];
  v6 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v7 = re::ServiceLocator::serviceOrNull<re::DeformationService>(a2);
  v8 = re::ServiceLocator::serviceOrNull<re::ColorManager>(a2);
  v9 = re::ServiceLocator::serviceOrNull<re::VideoService>(a2);
  re::ImportGraphicsContext::createFromAvailableManagers(v193, v6, v8);
  v11 = re::globalAllocators(v10);
  v12 = (*(*v11[2] + 32))(v11[2], 24, 8);
  *(v12 + 1) = v7;
  *(v12 + 2) = 0;
  *v12 = &unk_1F5CBE070;
  v13 = re::MeshDeformationAsset::assetType(v12);
  v199 = &unk_1F5CC60B0;
  v202 = &v199;
  v195[3] = v195;
  v194 = v12;
  v195[0] = &unk_1F5CC60B0;
  re::AssetManager::registerAssetType(a1, v13, &v194);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v194);
  v14 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v199);
  v15 = re::globalAllocators(v14);
  v16 = (*(*v15[2] + 32))(v15[2], 16, 8);
  *v16 = &unk_1F5CBD148;
  *(v16 + 1) = a2;
  v17 = re::RenderGraphEmitterAsset::assetType(v16);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v16;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v17, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v18 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v19 = re::globalAllocators(v18);
  v20 = (*(*v19[2] + 32))(v19[2], 16, 8);
  *v20 = &unk_1F5CCA1B0;
  *(v20 + 1) = a2;
  v21 = re::RenderGraphAsset::assetType(v20);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v20;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v21, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v22 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v23 = re::globalAllocators(v22);
  v24 = (*(*v23[2] + 32))(v23[2], 16, 8);
  *v24 = &unk_1F5CBDAA8;
  *(v24 + 1) = a2;
  v25 = re::FontAsset::assetType(v24);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v24;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v25, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v26 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v27 = re::globalAllocators(v26);
  v28 = (*(*v27[2] + 32))(v27[2], 16, 8);
  *v28 = &unk_1F5CC9B80;
  *(v28 + 1) = a2;
  v29 = re::ImageBasedLightAsset::assetType(v28);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v28;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v29, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v30 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v31 = re::FontLayoutAsset::assetType(v30);
  v32 = re::globalAllocators(v31);
  v33 = (*(*v32[2] + 32))(v32[2], 8, 8);
  *v33 = &unk_1F5CBDC20;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v33;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v31, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v34 = re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetType();
  v35 = re::globalAllocators(v34);
  v36 = (*(*v35[2] + 32))(v35[2], 8, 8);
  *v36 = &unk_1F5CC5AC0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v36;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v34, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v37 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v38 = re::CGPerspectiveContextAsset::assetType(v37);
  v39 = re::globalAllocators(v38);
  v40 = (*(*v39[2] + 32))(v39[2], 8, 8);
  *v40 = &unk_1F5CC42E8;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v40;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v38, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v41 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v42 = re::globalAllocators(v41);
  v43 = (*(*v42[2] + 32))(v42[2], 24, 8);
  v44 = v43;
  v43[1] = 0;
  v43[2] = 0;
  *v43 = &unk_1F5CC5760;
  *(v43 + 2) = (a3 & 0x100) == 0;
  if (v9)
  {
    v43[2] = v9;
  }

  v45 = re::VideoAsset::assetType(v43);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v44;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v45, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v46 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v47 = re::globalAllocators(v46);
  v48 = (*(*v47[2] + 32))(v47[2], 8, 8);
  *v48 = &unk_1F5CC7660;
  v49 = re::VideoFileAsset::assetType(v48);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v48;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v49, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v50 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v51 = re::globalAllocators(v50);
  v52 = (*(*v51[2] + 32))(v51[2], 16, 8);
  *v52 = &unk_1F5CBD3D8;
  *(v52 + 1) = a2;
  v53 = re::VFXAsset::assetType(v52);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v52;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v53, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v54 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v55 = re::VertexCacheAsset::assetType(v54);
  v56 = re::globalAllocators(v55);
  v57 = (*(*v56[2] + 32))(v56[2], 16, 8);
  if (v6)
  {
    v58 = v6[26];
  }

  else
  {
    v58 = 0;
  }

  *v57 = &unk_1F5CC9158;
  v59 = v58;
  v57[1] = v59;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v57;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v55, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);

  v61 = re::globalAllocators(v60);
  v62 = (*(*v61[2] + 32))(v61[2], 152, 8);
  v62[3] = 0u;
  v62[4] = 0u;
  v62[5] = 0u;
  v62[6] = 0u;
  v62[7] = 0u;
  v62[8] = 0u;
  *(v62 + 18) = 0;
  *v62 = &unk_1F5CBE4A8;
  *(v62 + 1) = a2;
  *(v62 + 3) = 0;
  *(v62 + 4) = 0;
  *(v62 + 5) = &unk_1F5CBE468;
  *(v62 + 56) = 0u;
  *(v62 + 72) = 0u;
  *(v62 + 11) = 0x7FFFFFFF00000000;
  *(v62 + 104) = 0u;
  *(v62 + 120) = 0u;
  *(v62 + 34) = 0;
  *(v62 + 35) = 0x7FFFFFFF;
  *(v62 + 2) = 0;
  v63 = re::ShaderLibraryAsset::assetType(v62);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v62;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v63, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v64 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v65 = re::globalAllocators(v64);
  v66 = (*(*v65[2] + 32))(v65[2], 8, 8);
  *v66 = &unk_1F5CC5938;
  v67 = re::ShaderGraphAsset::assetType(v66);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v66;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v67, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v68 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v69 = re::globalAllocators(v68);
  v70 = (*(*v69[2] + 32))(v69[2], 56, 8);
  *(v70 + 16) = 0;
  *(v70 + 24) = 0;
  *(v70 + 40) = 0;
  *(v70 + 48) = 0;
  *(v70 + 32) = 0;
  *v70 = &unk_1F5CC7F58;
  *(v70 + 8) = a2;
  *(v70 + 16) = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  v71 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(v70 + 8));
  *(v70 + 24) = v71;
  v72 = re::MaterialDefinitionAsset::assetType(v71);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v70;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v72, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v73 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v74 = re::globalAllocators(v73);
  v75 = (*(*v74[2] + 32))(v74[2], 1024, 128);
  bzero(v75, 0x400uLL);
  *v75 = &unk_1F5CC3648;
  *(v75 + 17) = 0u;
  *(v75 + 19) = 0u;
  v75[21] = 0x7FFFFFFF00000000;
  *(v75 + 1) = 0u;
  *(v75 + 3) = 0u;
  *(v75 + 5) = 0u;
  *(v75 + 7) = 0u;
  *(v75 + 9) = 0u;
  *(v75 + 11) = 0u;
  MEMORY[0x1E69061D0](v75 + 23);
  *(v75 + 256) = 0;
  v75[33] = 0;
  v75[35] = 0;
  *(v75 + 96) = 0;
  v75[53] = 0;
  v75[50] = 0;
  v75[51] = 0;
  v75[49] = 0;
  *(v75 + 104) = 0;
  v75[80] = 0;
  *(v75 + 192) = 0;
  v75[101] = 0;
  v75[97] = 0;
  v75[99] = 0;
  v75[98] = 0;
  *(v75 + 200) = 0;
  *(v75 + 896) = 0;
  v75[1] = a2;
  v75[2] = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  v76 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v75[1]);
  v75[3] = v76;
  v77 = re::MaterialAsset::assetType(v76);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v75;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v77, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v78 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v79 = re::globalAllocators(v78);
  v80 = (*(*v79[2] + 32))(v79[2], 80, 8);
  re::TextureAssetProvider::TextureAssetProvider(v80, a1, a2);
  v81 = re::AssetManager::registerAssetProvider(a1, v80);
  v82 = re::globalAllocators(v81);
  v190 = v80;
  v83 = (*(*v82[2] + 32))(v82[2], 40, 8);
  re::BuiltinTextureAssetProvider::BuiltinTextureAssetProvider(v83, a1, a2);
  v84 = re::AssetManager::registerAssetProvider(a1, v83);
  v192 = v83;
  v189 = v70;
  if (v6)
  {
    v84 = v6[26];
    v191 = v84;
  }

  else
  {
    v191 = 0;
  }

  v85 = re::globalAllocators(v84);
  v86 = (*(*v85[2] + 32))(v85[2], 136, 8);
  v87 = 0;
  *v86 = &unk_1F5CC3BC0;
  *(v86 + 8) = 0;
  *(v86 + 16) = 0;
  *(v86 + 24) = 0;
  *(v86 + 40) = 0;
  *(v86 + 48) = 0;
  *(v86 + 56) = 65793;
  *(v86 + 61) = 1;
  *(v86 + 64) = 0;
  *(v86 + 80) = 0;
  *(v86 + 88) = 0;
  *(v86 + 128) = 0;
  *(v86 + 104) = 0;
  *(v86 + 112) = 0;
  *(v86 + 96) = 0;
  *(v86 + 120) = 0;
  if (v6 && (a3 & 1) != 0)
  {
    v88 = v6[26];
    if (v88)
    {
      v87 = [v88 supportsSharedTextureHandles];
    }

    else
    {
      v87 = 0;
    }
  }

  v89 = re::ServiceLocator::serviceOrNull<re::DrawableQueueService>(a2);
  v90 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(a2);
  v91 = re::ServiceLocator::serviceOrNull<re::EntitlementService>(a2);
  re::TextureAssetLoader::init(v86, a1, v6, v193, v89, v90, v91, v87, 1);
  v93 = re::TextureAsset::assetType(v92);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v86;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v93, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v94 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v95 = re::globalAllocators(v94);
  v96 = (*(*v95[2] + 32))(v95[2], 320, 8);
  *(v96 + 40) = 0;
  *v96 = &unk_1F5CBD570;
  *(v96 + 8) = 0;
  *(v96 + 16) = 0;
  *(v96 + 24) = 0;
  *(v96 + 56) = 0u;
  *(v96 + 72) = 0u;
  *(v96 + 88) = 0u;
  *(v96 + 104) = 0u;
  *(v96 + 120) = 0u;
  *(v96 + 136) = 0u;
  *(v96 + 152) = 0u;
  *(v96 + 168) = 0u;
  *(v96 + 184) = 0u;
  *(v96 + 200) = 0u;
  *(v96 + 216) = 0u;
  *(v96 + 232) = 0u;
  *(v96 + 248) = 0;
  *(v96 + 253) = 0;
  *(v96 + 250) = 257;
  *(v96 + 252) = 1;
  *(v96 + 257) = 0;
  *(v96 + 259) = 65793;
  *(v96 + 296) = 0u;
  *(v96 + 264) = 0u;
  *(v96 + 280) = 0u;
  *(v96 + 300) = 0x7FFFFFFF;
  *(v96 + 312) = 0;
  v97 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(a2);
  re::MeshAssetLoader::init(v96, a2, v97, a3 & 1);
  v99 = re::MeshAsset::assetType(v98);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v96;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v99, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v100 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v101 = re::CollisionShapeAsset::assetType(v100);
  v102 = re::globalAllocators(v101);
  v103 = (*(*v102[2] + 32))(v102[2], 8, 8);
  *v103 = &unk_1F5CC81A0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v103;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v101, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v104 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v105 = re::PhysicsMaterialAsset::assetType(v104);
  v106 = re::globalAllocators(v105);
  v107 = (*(*v106[2] + 32))(v106[2], 8, 8);
  *v107 = &unk_1F5CC8318;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v107;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v105, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v108 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v109 = re::IndexedTriangleMeshAsset::assetType(v108);
  v110 = re::globalAllocators(v109);
  v111 = (*(*v110[2] + 32))(v110[2], 8, 8);
  *v111 = &unk_1F5CC8490;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v111;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v109, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v112 = re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetType();
  v113 = re::globalAllocators(v112);
  v114 = (*(*v113[2] + 32))(v113[2], 8, 8);
  *v114 = &unk_1F5CC5C38;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v114;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v112, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v115 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v116 = re::AnimationLibraryAsset::assetType(v115);
  v117 = re::globalAllocators(v116);
  v118 = (*(*v117[2] + 32))(v117[2], 8, 8);
  *v118 = &unk_1F5CCA358;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v118;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v116, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v119 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v120 = re::globalAllocators(v119);
  v121 = (*(*v120[2] + 32))(v120[2], 8, 8);
  *v121 = &unk_1F5CC5DB0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v121;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v119, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v122 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v123 = re::IKRigAsset::assetType(v122);
  v124 = re::globalAllocators(v123);
  v125 = (*(*v124[2] + 32))(v124[2], 8, 8);
  *v125 = &unk_1F5CC8DD0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v125;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v123, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v126 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v127 = re::RigAsset::assetType(v126);
  v128 = re::globalAllocators(v127);
  v129 = (*(*v128[2] + 32))(v128[2], 8, 8);
  *v129 = &unk_1F5CCA6A0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v129;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v127, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v130 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v131 = re::RigGraphAsset::assetType(v130);
  v132 = re::globalAllocators(v131);
  v133 = (*(*v132[2] + 32))(v132[2], 8, 8);
  *v133 = &unk_1F5CC7B08;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v133;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v131, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v134 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v135 = re::BlendShapeWeightsDefinitionAsset::assetType(v134);
  v136 = re::globalAllocators(v135);
  v137 = (*(*v136[2] + 32))(v136[2], 8, 8);
  *v137 = &unk_1F5CC3918;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v137;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v135, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v138 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v139 = re::SkeletonAsset::assetType(v138);
  v140 = re::globalAllocators(v139);
  v141 = (*(*v140[2] + 32))(v140[2], 8, 8);
  *v141 = &unk_1F5CC8FE0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v141;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v139, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v142 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v143 = re::SkeletalPoseDefinitionAsset::assetType(v142);
  v144 = re::globalAllocators(v143);
  v145 = (*(*v144[2] + 32))(v144[2], 8, 8);
  *v145 = &unk_1F5CC97C8;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v145;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v143, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v146 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v147 = re::TimelineAsset::assetType(v146);
  v148 = re::globalAllocators(v147);
  v149 = (*(*v148[2] + 32))(v148[2], 8, 8);
  *v149 = &unk_1F5CC9E70;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v149;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v147, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v150 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
  v151 = re::globalAllocators(v150);
  v152 = (*(*v151[2] + 32))(v151[2], 8, 8);
  *v152 = &unk_1F5CC5F28;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v152;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v150, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v153 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v154 = re::StateMachineAsset::assetType(v153);
  v155 = re::globalAllocators(v154);
  v156 = (*(*v155[2] + 32))(v155[2], 8, 8);
  *v156 = &unk_1F5CC8700;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v156;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v154, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v157 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v158 = re::StateParameterBlackboardAsset::assetType(v157);
  v159 = re::globalAllocators(v158);
  v160 = (*(*v159[2] + 32))(v159[2], 8, 8);
  *v160 = &unk_1F5CBDE30;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v160;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v158, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v161 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(a2);
  if (v161)
  {
    v162 = re::SceneAsset::assetType(v161);
    v163 = re::globalAllocators(v162);
    v164 = (*(*v163[2] + 32))(v163[2], 8, 8);
    *v164 = &unk_1F5CC7860;
    v196 = &unk_1F5CC6130;
    v197 = re::internal::AssetTypeRegistryHelper::deleter;
    v198 = &v196;
    v203 = &v200;
    v199 = v164;
    v200 = &unk_1F5CC6130;
    v201 = re::internal::AssetTypeRegistryHelper::deleter;
    re::AssetManager::registerAssetType(a1, v162, &v199);
    std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
    v161 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  }

  v165 = re::globalAllocators(v161);
  v166 = (*(*v165[2] + 32))(v165[2], 56, 8);
  re::AudioFileAssetProvider::AudioFileAssetProvider(v166, a1);
  re::AssetManager::registerAssetProvider(a1, v166);
  v167 = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(a2);
  v168 = re::globalAllocators(v167);
  v169 = (*(*v168[2] + 32))(v168[2], 16, 8);
  *v169 = &unk_1F5CC9CF8;
  *(v169 + 1) = v167;
  v170 = re::AudioFileAsset::assetType(v169);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v169;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v170, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v171 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v172 = re::AudioFileGroupAsset::assetType(v171);
  v173 = re::globalAllocators(v172);
  v174 = (*(*v173[2] + 32))(v173[2], 32, 8);
  *v174 = &unk_1F5CCA028;
  v174[1] = a1;
  v174[2] = v169;
  v174[3] = v167;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v174;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v172, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v175 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v176 = re::globalAllocators(v175);
  v177 = (*(*v176[2] + 32))(v176[2], 8, 8);
  *v177 = &unk_1F5CC4900;
  v178 = re::AudioGeneratorAsset::assetType(v177);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v177;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v178, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v179 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v180 = re::globalAllocators(v179);
  v181 = (*(*v180[2] + 32))(v180[2], 16, 8);
  *v181 = &unk_1F5CC65A0;
  *(v181 + 1) = 0;
  v182 = re::AcousticMeshAsset::assetType(v181);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v181;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v182, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v183 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v184 = re::ARReferenceObjectAsset::assetType(v183);
  v185 = re::globalAllocators(v184);
  v186 = (*(*v185[2] + 32))(v185[2], 16, 8);
  *v186 = &unk_1F5CC4D30;
  v186[1] = 0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v186;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v184, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  re::ShaderLibraryAssetLoader::preloadAssets(v62);
  re::TextureAssetLoader::preloadAssets(v86, a2);
  re::MaterialDefinitionLoader::preloadAssets(v189);
  re::MaterialAssetLoader::preloadAssets(v75);
  re::MeshAssetLoader::preloadAssets(v96);
  v187 = re::ServiceLocator::serviceOrNull<re::MXIService>(a2);
  if (v187)
  {
    re::MXIManager::preloadMXIAssets(v187);
  }

  re::Defaults::BOOLValue(&v199, "blockUntilAssetsPreloaded", v188);
  if (v199 == 1 && (BYTE1(v199) & 1) != 0)
  {
    re::AssetManager::waitForLoadQueueToComplete(a1, 0);
  }

  if (v166)
  {
  }

  if (v192)
  {
  }

  if (v190)
  {
  }
}

void sub_1E2070B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100]((v25 - 136));
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](va);

  if (a16)
  {
  }

  if (a12)
  {
  }

  _Unwind_Resume(a1);
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::DeformationService>(re::StringID *a1)
{
  {
    re::introspect<re::DeformationService>(BOOL)::info = re::introspect_DeformationService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::DeformationService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(re::StringID *a1)
{
  {
    re::introspect<re::DirectResourceAssetTracker>(BOOL)::info = re::introspect_DirectResourceAssetTracker(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::DirectResourceAssetTracker>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::AudioSceneService>(re::StringID *a1)
{
  {
    re::introspect<re::AudioSceneService>(BOOL)::info = re::introspect_AudioSceneService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::AudioSceneService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::MXIService>(re::StringID *a1)
{
  {
    re::introspect<re::MXIService>(BOOL)::info = re::introspect_MXIService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::MXIService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

double re::AssetHelper::deinitDefaultAssetTypes(re::AssetHelper *this, re::AssetManager *a2)
{
  v3 = re::TextureAsset::assetType(this);
  v4 = *(this + 226);
  v8 = v3;
  v5 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v4, &v8);
  (*(**v5 + 128))(*v5);
  v6 = *v5;
  *(v6 + 72) = 0;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  return result;
}

uint64_t re::AssetHelper::registerDefaultAssetCompilers(re *a1, re::StringID *a2, int a3)
{
  v138 = *MEMORY[0x1E69E9840];
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 48, 8);
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *v6 = &unk_1F5CCFE00;
  *(v6 + 8) = 0;
  *(v6 + 24) = 257;
  *(v6 + 26) = 1;
  *(v6 + 29) = 1;
  *(v6 + 40) = 0;
  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], 16, 8);
  *v8 = &unk_1F5CD15F8;
  *(v8 + 1) = 0;
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], 48, 8);
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *v10 = &unk_1F5CCFF58;
  *(v10 + 8) = 0;
  *(v10 + 24) = 257;
  *(v10 + 26) = 1;
  *(v10 + 29) = 1;
  v11 = a2;
  v12 = re::globalAllocators(v10);
  v13 = (*(*v12[2] + 32))(v12[2], 16, 8);
  v13[1] = 0;
  v14 = v13 + 1;
  v116 = v13;
  *v13 = &unk_1F5CD1C98;
  v15 = re::globalAllocators(v13);
  v16 = (*(*v15[2] + 32))(v15[2], 16, 8);
  v16[1] = 0;
  v17 = v16 + 1;
  v115 = v16;
  *v16 = &unk_1F5CCFEE0;
  v18 = re::globalAllocators(v16);
  v19 = (*(*v18[2] + 32))(v18[2], 16, 8);
  *v19 = &unk_1F5CD0038;
  v19[1] = 0;
  v119 = v19;
  v20 = re::globalAllocators(v19);
  v21 = (*(*v20[2] + 32))(v20[2], 24, 8);
  v21[1] = 0;
  v22 = v21 + 1;
  *v21 = &unk_1F5CD1850;
  v21[2] = 0;
  v23 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v11);
  if (v23)
  {
    v24 = v23;
    if (*(v23 + 26))
    {
      v117 = v11;
      re::ImportGraphicsContext::createFromRenderManager(&v134, v23);
      if (a3)
      {
        v25 = [*(v24 + 26) supportsSharedTextureHandles];
      }

      else
      {
        v25 = 0;
      }

      re::TextureCompiler::init(v6, &v134, v25);
      *(v8 + 1) = v117;
      re::KTXTextureCompiler::init(v10, &v134, v25, BYTE2(a3) & 1);
      v127 = *(v24 + 26);
      re::ObjCObject::operator=(v14, &v127);

      v126 = *(v24 + 26);
      re::ObjCObject::operator=(v17, &v126);

      v119[1] = v24;
      v125 = *(v24 + 26);
      re::ObjCObject::operator=(v22, &v125);
      v21[2] = v117;
    }
  }

  else if (re::ServiceLocator::serviceOrNull<re::RenderManager>(v11))
  {
    re::mtl::makeDefaultDevice(&v124);
    if (a3)
    {
      v26 = [v124 supportsSharedTextureHandles];
    }

    else
    {
      v26 = 0;
    }

    re::Bundle::testData(&v123);
    re::Bundle::findFile(&v134, &v123, "default.metallib");
    if (v135)
    {
      v27 = v136;
    }

    else
    {
      v27 = (&v135 + 1);
    }

    re::mtl::Device::newLibraryWithURL(&v122, &v124, v27);
    v28 = re::ServiceLocator::serviceOrNull<re::ColorManager>(v11);
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    v128 = v124;
    v129 = v122;
    v130 = 16843009;
    v131 = v29;
    v132 = 1;
    v133 = 0;
    re::TextureCompiler::init(v6, &v128, v26);
    *(v8 + 1) = v11;
    re::KTXTextureCompiler::init(v10, &v128, v26, BYTE2(a3) & 1);
    v121 = v124;
    re::ObjCObject::operator=(v14, &v121);

    v120 = v124;
    re::ObjCObject::operator=(v22, &v120);
    v21[2] = v11;

    if (v134 && (v135 & 1) != 0)
    {
      (*(*v134 + 40))();
    }
  }

  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v6;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v8;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v10;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v116;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v115;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v119;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v21;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v30 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v31 = re::globalAllocators(v30);
  v32 = (*(*v31[2] + 32))(v31[2], 8, 8);
  *v32 = &unk_1F5CCF8A0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v32;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v33 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v34 = re::globalAllocators(v33);
  v35 = (*(*v34[2] + 32))(v34[2], 8, 8);
  *v35 = &unk_1F5CC6280;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v35;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v36 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v37 = re::globalAllocators(v36);
  v38 = (*(*v37[2] + 32))(v37[2], 8, 8);
  *v38 = &unk_1F5CCFE90;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v38;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v39 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v40 = re::globalAllocators(v39);
  v41 = (*(*v40[2] + 32))(v40[2], 8, 8);
  *v41 = &unk_1F5CC62E8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v41;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v42 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v43 = re::globalAllocators(v42);
  v44 = (*(*v43[2] + 32))(v43[2], 8, 8);
  *v44 = &unk_1F5CC6350;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v44;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v45 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v46 = re::globalAllocators(v45);
  v47 = (*(*v46[2] + 32))(v46[2], 8, 8);
  *v47 = &unk_1F5CD1D10;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v47;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v48 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v49 = re::globalAllocators(v48);
  v50 = (*(*v49[2] + 32))(v49[2], 8, 8);
  *v50 = &unk_1F5CD1D78;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v50;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v51 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v52 = re::globalAllocators(v51);
  v53 = (*(*v52[2] + 32))(v52[2], 8, 8);
  *v53 = &unk_1F5CCFD98;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v53;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v54 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v55 = re::globalAllocators(v54);
  v56 = (*(*v55[2] + 32))(v55[2], 8, 8);
  *v56 = &unk_1F5CD1B38;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v56;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v57 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v58 = re::globalAllocators(v57);
  v59 = (*(*v58[2] + 32))(v58[2], 8, 8);
  *v59 = &unk_1F5CD01D0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v59;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v60 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v61 = re::globalAllocators(v60);
  v62 = (*(*v61[2] + 32))(v61[2], 8, 8);
  *v62 = &unk_1F5CD0238;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v62;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v63 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v64 = re::globalAllocators(v63);
  v65 = (*(*v64[2] + 32))(v64[2], 8, 8);
  *v65 = &unk_1F5CCFFD0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v65;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v66 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v67 = re::globalAllocators(v66);
  v68 = (*(*v67[2] + 32))(v67[2], 8, 8);
  *v68 = &unk_1F5CD1BA0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v68;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v69 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v70 = re::globalAllocators(v69);
  v71 = (*(*v70[2] + 32))(v70[2], 8, 8);
  *v71 = &unk_1F5CB03D0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v71;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v72 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v73 = re::globalAllocators(v72);
  v74 = (*(*v73[2] + 32))(v73[2], 8, 8);
  *v74 = &unk_1F5CD02A0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v74;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v75 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v76 = re::globalAllocators(v75);
  v77 = (*(*v76[2] + 32))(v76[2], 8, 8);
  *v77 = &unk_1F5CCFCA0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v77;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v78 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v79 = re::globalAllocators(v78);
  v80 = (*(*v79[2] + 32))(v79[2], 8, 8);
  *v80 = &unk_1F5CD16F0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v80;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v81 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v82 = re::globalAllocators(v81);
  v83 = (*(*v82[2] + 32))(v82[2], 8, 8);
  *v83 = &unk_1F5CD1590;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v83;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v84 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v85 = re::globalAllocators(v84);
  v86 = (*(*v85[2] + 32))(v85[2], 16, 8);
  v86[1] = &unk_1F5CD1D10;
  *v86 = &unk_1F5CD18B8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v86;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v87 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v88 = re::globalAllocators(v87);
  v89 = (*(*v88[2] + 32))(v88[2], 16, 8);
  v89[1] = &unk_1F5CD1D78;
  *v89 = &unk_1F5CD1938;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v89;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v90 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v91 = re::globalAllocators(v90);
  v92 = (*(*v91[2] + 32))(v91[2], 16, 8);
  v92[1] = &unk_1F5CCFFD0;
  *v92 = &unk_1F5CD1A38;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v92;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v93 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v94 = re::globalAllocators(v93);
  v95 = (*(*v94[2] + 32))(v94[2], 24, 8);
  v95[1] = &unk_1F5CD0038;
  v95[2] = 0;
  *v95 = &unk_1F5CD1AB8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v95;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v96 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v97 = re::globalAllocators(v96);
  v98 = (*(*v97[2] + 32))(v97[2], 16, 8);
  v98[1] = &unk_1F5CD1B38;
  *v98 = &unk_1F5CD19B8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v98;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v99 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v100 = re::globalAllocators(v99);
  v101 = (*(*v100[2] + 32))(v100[2], 8, 8);
  *v101 = &unk_1F5CC63E8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v101;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v102 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v103 = re::globalAllocators(v102);
  v104 = (*(*v103[2] + 32))(v103[2], 8, 8);
  *v104 = &unk_1F5CC4A78;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v104;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v105 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v106 = re::globalAllocators(v105);
  v107 = (*(*v106[2] + 32))(v106[2], 8, 8);
  *v107 = &unk_1F5CC6730;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v107;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v108 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v109 = re::globalAllocators(v108);
  v110 = (*(*v109[2] + 32))(v109[2], 8, 8);
  *v110 = &unk_1F5CC75F8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v110;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v111 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v112 = re::globalAllocators(v111);
  v113 = (*(*v112[2] + 32))(v112[2], 8, 8);
  *v113 = &unk_1F5CD17E8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v113;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  return std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
}

void sub_1E2073214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a26)
  {
    if (a27)
    {
      (*(*a26 + 40))();
    }
  }

  _Unwind_Resume(a1);
}

void re::AssetHelper::makeMutableMaterialMemoryAsset(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, uint64_t a4)
{
  re::AssetHandle::AssetHandle(v7, a3);
  re::MaterialAsset::makeMutableMaterialMemoryAsset(a1, a2, v7, 0, a4);
  re::AssetHandle::~AssetHandle(v7);
}

void re::AssetHelper::makeMeshMemoryAsset(uint64_t a1, _anonymous_namespace_ *a2, int a3, int *a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v20, 2008, a2, 0, 0, 0);
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(a2, a3, 0, a4, &v18);
  LODWORD(a4) = v18;
  v11 = *(*re::globalAllocators(MeshAssetDataWithGeomMeshArray)[2] + 32);
  if (a4 == 1)
  {
    v12 = v11();
    v13 = re::MeshAsset::MeshAsset(v12, &v19);
  }

  else
  {
    v12 = v11();
    re::MeshAsset::MeshAsset(v12);
  }

  v14 = re::MeshAsset::assetType(v13);
  v15 = (*(*a1 + 424))(a1, v12, v14, 0, a5, 0);
  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v18, v15);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v20, v16, v17);
}

void sub_1E20734E8(_Unwind_Exception *a1, double a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  re::Result<re::MeshAssetData,re::DetailedError>::~Result(va, a2);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard((v4 - 80), v6, v7);
  _Unwind_Resume(a1);
}

uint64_t re::AssetHelper::makeTextureMemoryAsset(uint64_t a1, id *a2, uint64_t a3)
{
  v17 = *a2;
  v18 = 0;
  v9 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = 0u;
  memset(v14, 0, 28);
  v15 = 0;
  v16 = 0;
  TextureAsset = re::TextureAsset::makeTextureAsset(&v17, &v9, 1, 0);
  if (*&v14[0])
  {
    if (v15)
    {
      (*(**&v14[0] + 40))();
    }

    v15 = 0;
    memset(v14, 0, 24);
    ++DWORD2(v14[1]);
  }

  if (v13)
  {
  }

  if (v18 != -1)
  {
    v6 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix_0[v18])(&v9, &v17);
  }

  v7 = re::TextureAsset::assetType(v6);
  return (*(*a1 + 424))(a1, TextureAsset, v7, 0, a3, 0);
}

uint64_t re::AssetHelper::makeCollisionShapeAsset(re *a1, re *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = re::globalAllocators(a1);
  v11 = re::convertToSerializable(a2, a3, a4, v10[2]);
  v12 = re::globalAllocators(v11);
  v13 = (*(*v12[2] + 32))(v12[2], 16, 8);
  *v13 = v11;
  v13[1] = a2;
  v14 = re::CollisionShapeAsset::assetType(v13);
  v15 = *(*a1 + 424);

  return v15(a1, v13, v14, 0, a5, 0);
}

uint64_t re::AssetHelper::makePhysicsMaterialAsset(re *a1, re::PhysicsMaterial *a2, uint64_t a3)
{
  v6 = re::globalAllocators(a1);
  re::PhysicsMaterial::createGenericMaterial(a2, v6[2]);
  v8 = v7;
  v9 = re::globalAllocators(v7);
  v10 = (*(*v9[2] + 32))(v9[2], 16, 8);
  *v10 = v8;
  *(v10 + 1) = a2;
  v11 = re::PhysicsMaterialAsset::assetType(v10);
  v12 = *(*a1 + 424);

  return v12(a1, v10, v11, 0, a3, 0);
}

uint64_t re::AssetHelper::makeIndexedTriangleMeshAsset(re *a1, re *a2, uint64_t a3)
{
  v6 = re::globalAllocators(a1);
  v8 = re::convertToSerializable(a2, v6[2], v7);
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], 16, 8);
  *v10 = v8;
  v10[1] = a2;
  v11 = re::IndexedTriangleMeshAsset::assetType(v10);
  v12 = *(*a1 + 424);

  return v12(a1, v10, v11, 0, a3, 0);
}

re **re::AssetHelper::makeTimelineAsset(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = re::internal::convertToAssetData(a1, a2, v4[2]);
  v6 = re::globalAllocators(v5);
  result = (*(*v6[2] + 32))(v6[2], 24, 8);
  *result = a1;
  result[1] = v5;
  result[2] = a1;
  return result;
}

re **re::AssetHelper::makeTimelineAsset(re::AssetHelper *this, re::TimelineAssetData *a2)
{
  v3 = re::globalAllocators(this);
  v5 = re::internal::convertToTimeline(this, v3[2], v4);
  v6 = re::globalAllocators(v5);
  result = (*(*v6[2] + 32))(v6[2], 24, 8);
  *result = v5;
  result[1] = this;
  result[2] = v5;
  return result;
}

uint64_t re::AssetHelper::makeTimelineAssetHandle(re::TimelineAsset *a1, re *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  TimelineAsset = re::AssetHelper::makeTimelineAsset(a2, a3);
  v9 = TimelineAsset;
  if (a4)
  {

    return re::AssetService::createNamedMemoryAsset<re::TimelineAsset>(a1, TimelineAsset, a4, a5);
  }

  else
  {
    v11 = re::TimelineAsset::assetType(TimelineAsset);
    v12 = *(*a1 + 424);

    return v12(a1, v9, v11, 0, a5, 0);
  }
}

uint64_t re::AssetService::createNamedMemoryAsset<re::TimelineAsset>(re::TimelineAsset *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = re::TimelineAsset::assetType(a1);
  (*(*a1 + 432))(a1, a2, v8, &v10, 0, a4, 0);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void sub_1E2073C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a9)
  {
    if (a10)
    {
      (*(*a9 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

_anonymous_namespace_ *re::DynamicArray<re::MeshLodLevelInfo>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::MeshLodLevelInfo>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 48 * v4;
  v6 = *a2;
  *(v5 + 40) = 0;
  *v5 = v6;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[2];
  *(v5 + 8) = a2[1];
  *(v5 + 16) = v7;
  a2[1] = 0;
  a2[2] = 0;
  v8 = *(v5 + 24);
  *(v5 + 24) = a2[3];
  a2[3] = v8;
  v9 = *(v5 + 40);
  *(v5 + 40) = a2[5];
  a2[5] = v9;
  ++*(a2 + 8);
  ++*(v5 + 32);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

BOOL re::AssetHelper::readerToWriterStream(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v4 = (*(*a1 + 16))(a1, v9, 1024);
    if (!v4)
    {
      break;
    }

    v5 = (*(*a2 + 16))(a2, v9, v4);
    if (v5 != v4)
    {
      v6 = *re::assetTypesLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "AssetHelper::readerToWriterStream: unable to write data", v8, 2u);
      }

      return v4 == 0;
    }
  }

  return v4 == 0;
}

uint64_t loadIBLTextureWithContentsOfFile(_anonymous_namespace_ *a1, re::ImportGraphicsContext *a2, id *a3, uint64_t a4, const char *a5)
{
  re::ImportGraphicsContext::createFromAvailableManagers(&v24, a2, 0);
  if (v15)
  {
    if (v15 != 1)
    {
      v13 = std::__throw_bad_variant_access[abi:nn200100]();

      _Unwind_Resume(v13);
    }

    if (!*(v14 + 48))
    {
      goto LABEL_8;
    }

    v10 = (v14 + 24);
  }

  else
  {
    v10 = &v14;
  }

  if (*v10)
  {
    TextureAsset = re::TextureAsset::makeTextureAsset(&v14, &v16, *(a4 + 56), 0);
    goto LABEL_9;
  }

LABEL_8:
  TextureAsset = 0;
LABEL_9:
  if (v19)
  {
    if (v23)
    {
      (*(*v19 + 40))();
    }

    v23 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    ++v22;
  }

  if (v17)
  {

    v17 = 0;
  }

  if (v15 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix_0[v15])(&v26, &v14);
  }

  return TextureAsset;
}

double re::AssetHelper::createDefaultImageBasedLightEngineAsset@<D0>(re::AssetHelper *this@<X0>, id *a2@<X1>, const re::AssetHandle *a3@<X8>)
{
  v121 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  re::DynamicString::setCapacity(&v81, 0);
  re::AssetPath::filePathToAsset(&v86, &v81, 1, 0);
  v7 = &v88;
  v80 = &unk_1F5CB9778;
  if (v82)
  {
    v8 = v83;
  }

  else
  {
    v8 = (&v82 + 1);
  }

  v9 = re::IBLAssetCompiler::createFromJson(v76, v8, &v80);
  if (v76[0])
  {
    v74 = &v75;
    v75 = v76[1];
    *&buf = 0;
    *(&buf + 1) = v120;
    v119 = 488;
    v120[0] = 0;
    v114 = 0;
    v115 = v117;
    v116 = 488;
    v117[0] = 0;
    if (v82)
    {
      v12 = v83;
    }

    else
    {
      v12 = (&v82 + 1);
    }

    v13 = re::path::dirname(&buf, v12, v11);
    v14 = v13;
    if (!v13 || !*v13)
    {
      v20 = *re::assetsLogObjects(v13);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (v82)
        {
          v21 = v83;
        }

        else
        {
          v21 = (&v82 + 1);
        }

        LODWORD(v97) = 136315138;
        *(&v97 + 4) = v21;
        _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Error loading .reibl file: unable to find directory of '%s'", &v97, 0xCu);
      }

      goto LABEL_104;
    }

    v98 = 1;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v100 = 0;
    v99 = 0u;
    v108 = 0;
    v106 = 0;
    v107 = 0;
    v109 = -65536;
    v112 = 0;
    v110 = 0;
    v111 = 0;
    v113 = 0;
    v105 = 4;
    v97 = 0x300000002uLL;
    v65 = a2[26];
    v73 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v73 setStorageMode_];
    v15 = *(v75 + 13);
    v16 = v15 >> 1;
    if ((v15 & 1) == 0)
    {
      v16 = v15 >> 1;
    }

    if (v16)
    {
      if (v15)
      {
        v17 = *(v75 + 14);
      }

      else
      {
        v17 = v75 + 105;
      }

      v22 = CFStringCreateWithCString(0, v17, 0x8000100u);
      re::TextureFromImageOptions::setColorSpace(&v97, v22);
      CFRelease(v22);
    }

    else
    {
      re::TextureFromImageOptions::setColorSpace(&v97, *MEMORY[0x1E695F108]);
    }

    re::AssetHandle::serializationString(v75, &v70);
    v24 = v71 >> 1;
    if ((v71 & 1) == 0)
    {
      v24 = v71 >> 1;
    }

    if (v24)
    {
      if (v71)
      {
        v25 = v72;
      }

      else
      {
        v25 = &v71 + 1;
      }

      v26 = re::path::join(&v114, v14, v25, v23);
      v27 = v26;
      if (v71)
      {
        v28 = v72;
      }

      else
      {
        v28 = &v71 + 1;
      }

      v29 = loadIBLTextureWithContentsOfFile(v26, a2, &v73, &v97, v28);
      if (!v29)
      {
        v60 = *re::assetsLogObjects(0);
        v61 = v65;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v95) = 136315138;
          *(&v95 + 4) = v27;
          _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "Failed to load IBL source texture '%s'", &v95, 0xCu);
        }

        goto LABEL_94;
      }

      re::DynamicString::DynamicString(&v95, &v70);
      v30 = v96;
      v31 = BYTE8(v95) & 1;
      if (BYTE8(v95))
      {
        v32 = v96;
      }

      else
      {
        v32 = &v95 + 9;
      }

      if (!strchr(v32, 58))
      {
        re::DynamicString::operator+(v93, v91, &v95);
        re::DynamicString::operator=(&v95, v93);
        if (*v93)
        {
          if (v93[8])
          {
            (*(**v93 + 40))();
          }

          *v93 = 0u;
          v94 = 0u;
        }

        if (*v91 && (v91[8] & 1) != 0)
        {
          (*(**v91 + 40))();
        }

        v30 = v96;
        v31 = BYTE8(v95) & 1;
      }

      if (v31)
      {
        v33 = v30;
      }

      else
      {
        v33 = &v95 + 9;
      }

      re::AssetManager::assetHandle(this, v33, v93);
      v34 = v75;
      v35 = *(v75 + 1);
      v36 = *(v75 + 2);
      *(v75 + 1) = *&v93[8];
      *&v93[8] = v35;
      v37 = *v34;
      *v34 = 0;
      *v34 = *v93;
      *(v34 + 2) = v94;
      *v93 = v37;
      *&v94 = v36;
      re::AssetHandle::~AssetHandle(v93);
      re::AssetHandle::AssetHandle(v69, v75);
      re::AssetManager::assignCompiledAssetDataToAssetHandle(this, v29, v69, 1);
      re::AssetHandle::~AssetHandle(v69);
      if (v95 && (BYTE8(v95) & 1) != 0)
      {
        (*(*v95 + 40))();
      }
    }

    re::AssetHandle::serializationString((v75 + 24), &v95);
    v39 = *(&v95 + 1) >> 1;
    if ((BYTE8(v95) & 1) == 0)
    {
      v39 = BYTE8(v95) >> 1;
    }

    if (v39)
    {
      if (BYTE8(v95))
      {
        v40 = v96;
      }

      else
      {
        v40 = &v95 + 9;
      }

      v41 = re::path::join(&v114, v14, v40, v38);
      v42 = v41;
      if (BYTE8(v95))
      {
        v43 = v96;
      }

      else
      {
        v43 = &v95 + 9;
      }

      v44 = loadIBLTextureWithContentsOfFile(v41, a2, &v73, &v97, v43);
      if (!v44)
      {
        v62 = *re::assetsLogObjects(0);
        v61 = v65;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *v93 = 136315138;
          *&v93[4] = v42;
          _os_log_error_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_ERROR, "Failed to load IBL diffuse texture '%s'", v93, 0xCu);
        }

        goto LABEL_91;
      }

      re::AssetManager::assetHandle(this, "engine:studio_lighting_mrmode_diffmap.ktx", v93);
      v45 = v75;
      v46 = *(v75 + 24);
      *(v75 + 24) = *v93;
      *v93 = v46;
      v47 = *(v45 + 5);
      *(v45 + 5) = v94;
      *&v94 = v47;
      re::AssetHandle::~AssetHandle(v93);
      re::AssetHandle::AssetHandle(v68, (v75 + 24));
      re::AssetManager::assignCompiledAssetDataToAssetHandle(this, v44, v68, 1);
      re::AssetHandle::~AssetHandle(v68);
    }

    re::AssetHandle::serializationString((v75 + 72), v93);
    v49 = *&v93[8] >> 1;
    if ((v93[8] & 1) == 0)
    {
      v49 = v93[8] >> 1;
    }

    if (v49)
    {
      if (v93[8])
      {
        v50 = v94;
      }

      else
      {
        v50 = &v93[9];
      }

      v51 = re::path::join(&v114, v14, v50, v48);
      v52 = v51;
      if (v93[8])
      {
        v53 = v94;
      }

      else
      {
        v53 = &v93[9];
      }

      v54 = loadIBLTextureWithContentsOfFile(v51, a2, &v73, &v97, v53);
      if (!v54)
      {
        v63 = *re::assetsLogObjects(0);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *v91 = 136315138;
          *&v91[4] = v52;
          _os_log_error_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_ERROR, "Failed to load IBL specular texture '%s'", v91, 0xCu);
        }

        goto LABEL_88;
      }

      re::AssetManager::assetHandle(this, "engine:studio_lighting_mrmode_specmap.ktx", v91);
      v55 = v75;
      v56 = *(v75 + 72);
      *(v75 + 72) = *v91;
      *v91 = v56;
      v57 = *(v55 + 11);
      *(v55 + 11) = v92;
      v92 = v57;
      re::AssetHandle::~AssetHandle(v91);
      re::AssetHandle::AssetHandle(v67, (v75 + 72));
      re::AssetManager::assignCompiledAssetDataToAssetHandle(this, v54, v67, 1);
      re::AssetHandle::~AssetHandle(v67);
      if (v54[22])
      {
        CStringPtr = CFStringGetCStringPtr(v54[22], 0x8000100u);
        re::DynamicString::operator=((v75 + 96), v91);
        if (*v91)
        {
          if (v91[8])
          {
            (*(**v91 + 40))();
          }
        }
      }
    }

    re::AssetManager::assetHandle(this, "engine:studio_lighting_mrmode.reibl", v91);
    *a3 = *v91;
    memset(v91, 0, sizeof(v91));
    *(a3 + 2) = v92;
    v92 = 0;
    re::AssetHandle::~AssetHandle(v91);
    v59 = v75;
    re::AssetHandle::AssetHandle(v66, a3);
    re::AssetManager::assignCompiledAssetDataToAssetHandle(this, v59, v66, 1);
    re::AssetHandle::~AssetHandle(v66);
    v75 = 0;
LABEL_88:
    v61 = v65;
    if (*v93 && (v93[8] & 1) != 0)
    {
      (*(**v93 + 40))();
    }

LABEL_91:
    if (v95 && (BYTE8(v95) & 1) != 0)
    {
      (*(*v95 + 40))();
    }

LABEL_94:
    if (v70 && (v71 & 1) != 0)
    {
      (*(*v70 + 40))();
    }

    if (v73)
    {
    }

    if (v110)
    {
      if (v111)
      {
        (*(*v110 + 40))();
        v111 = 0;
        v112 = 0;
      }

      v110 = 0;
    }

LABEL_104:
    if (v115 != v117)
    {
      (*(*v114 + 40))(v114);
    }

    if (*(&buf + 1) != v120)
    {
      (*(*buf + 40))(buf);
    }

    re::Deferred<re::AssetHelper::createDefaultImageBasedLightEngineAsset(re::AssetManager &,re::RenderManager *)::$_0>::~Deferred(&v74);
    goto LABEL_109;
  }

  v18 = *re::assetsLogObjects(v9);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (v78)
    {
      v19 = *&v79[7];
    }

    else
    {
      v19 = v79;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v19;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to load .reibl source': %s", &buf, 0xCu);
  }

LABEL_109:
  if (v76[0] & 1) == 0 && v77 && (v78)
  {
    (*(*v77 + 40))();
  }

  if (v81 && (v82 & 1) != 0)
  {
    (*(*v81 + 40))();
  }

  if (v85 == 1)
  {
    if (v89)
    {
      if (BYTE8(v89))
      {
        (*(*v89 + 40))();
      }

      v89 = 0u;
      v90 = 0u;
    }

    v7 = &v87;
  }

  return re::DynamicString::deinit(v7);
}

void sub_1E2074B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a59 && (a60 & 1) != 0)
  {
    (*(*a59 + 40))();
  }

  if (a63 && (a64 & 1) != 0)
  {
    (*(*a63 + 40))();
  }

  if (a25 && (a26 & 1) != 0)
  {
    (*(*a25 + 40))();
  }

  if (a29)
  {
  }

  if (STACK[0x230])
  {
    if (STACK[0x238])
    {
      (*(*STACK[0x230] + 40))(STACK[0x230], STACK[0x240]);
      STACK[0x238] = 0;
      STACK[0x240] = 0;
    }

    STACK[0x230] = 0;
  }

  if (STACK[0x258] != a12)
  {
    (*(*STACK[0x250] + 40))();
  }

  if (STACK[0x458] != v65)
  {
    (*(*STACK[0x450] + 40))();
  }

  re::Deferred<re::AssetHelper::createDefaultImageBasedLightEngineAsset(re::AssetManager &,re::RenderManager *)::$_0>::~Deferred(&a30);
  if (a32 & 1) == 0 && a35 && (a36)
  {
    (*(*a35 + 40))();
  }

  if (a40)
  {
    if (a41)
    {
      (*(*a40 + 40))();
    }
  }

  re::Result<re::AssetPath,re::DetailedError>::~Result(&a44);
  re::AssetHandle::~AssetHandle(v64);
  _Unwind_Resume(a1);
}

re *re::Deferred<re::AssetHelper::createDefaultImageBasedLightEngineAsset(re::AssetManager &,re::RenderManager *)::$_0>::~Deferred(re *a1)
{
  v2 = **a1;
  if (v2)
  {
    v3 = re::globalAllocators(a1)[2];
    re::DynamicString::deinit((v2 + 96));
    re::AssetHandle::~AssetHandle((v2 + 72));
    re::AssetHandle::~AssetHandle((v2 + 48));
    re::AssetHandle::~AssetHandle((v2 + 24));
    re::AssetHandle::~AssetHandle(v2);
    (*(*v3 + 40))(v3, v2);
  }

  return a1;
}

_BYTE *re::Result<re::AssetPath,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicString::deinit((a1 + 48));
    v2 = 16;
  }

  else
  {
    v2 = 24;
  }

  re::DynamicString::deinit(&a1[v2]);
  return a1;
}

uint64_t re::AssetHelper::attributeResourceMemory(id *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 setOwnerWithIdentity:a2];
    v6 = v5;
    if (!v5)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v7 = *re::assetsLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109378;
      v11[1] = a2;
      v12 = 2080;
      v13 = mach_error_string(v6);
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Metal resource attribution failed for task %d: %s", v11, 0x12u);
    }
  }

  else
  {
    v8 = *re::assetsLogObjects(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Unsupported: attributing resource memory to null taskID", v11, 2u);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

uint64_t re::BasicAssetLoader<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::introspectionType()
{
  if ((atomic_load_explicit(&qword_1EE197960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197960))
  {
    _MergedGlobals_82 = re::introspect_BlendShapeGroupDefinitionAsset(0, v1, v2, v3, v4, v5);
    __cxa_guard_release(&qword_1EE197960);
  }

  return _MergedGlobals_82;
}

re *re::internal::destroyPersistent<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::FixedArray<re::BlendShapeDefinition>::deinit(v1 + 2);
    re::StringID::destroyString(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::BasicAssetLoader<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::introspectionType()
{
  if ((atomic_load_explicit(&qword_1EE197970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197970))
  {
    qword_1EE197968 = re::introspect_BlendTreeDefinitionAsset(0, v1, v2, v3, v4, v5);
    __cxa_guard_release(&qword_1EE197970);
  }

  return qword_1EE197968;
}

re *re::internal::destroyPersistent<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::DynamicArray<unsigned long>::deinit(v1 + 288);
    re::DynamicArray<unsigned long>::deinit(v1 + 248);
    re::DynamicArray<unsigned long>::deinit(v1 + 208);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v1 + 168);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v1 + 120);
    re::DynamicArray<unsigned long>::deinit(v1 + 80);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v1 + 40);
    re::DynamicArray<unsigned long>::deinit(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void re::BlendTreeDefinition::~BlendTreeDefinition(re::BlendTreeDefinition *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 208);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 168);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::BasicAssetLoader<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::introspectionType()
{
  if ((atomic_load_explicit(&qword_1EE197980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197980))
  {
    qword_1EE197978 = re::introspect_AnimationSceneAsset(0, v1, v2, v3, v4, v5);
    __cxa_guard_release(&qword_1EE197980);
  }

  return qword_1EE197978;
}

re *re::internal::destroyPersistent<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::AssetHandle::~AssetHandle((a3 + 88));
    re::DynamicArray<re::AnimationSceneEntityData>::deinit(a3 + 40);
    re::StringID::destroyString((a3 + 24));
    re::AssetHandle::~AssetHandle(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::BasicAssetLoader<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>::introspectionType()
{
  if ((atomic_load_explicit(&qword_1EE197990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197990))
  {
    qword_1EE197988 = re::introspect_AssignedMeshDeformationAsset(0, v1, v2, v3, v4, v5);
    __cxa_guard_release(&qword_1EE197990);
  }

  return qword_1EE197988;
}

re *re::internal::destroyPersistent<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::MeshIdentifierAsset>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::TextureImportData::~TextureImportData(id *this)
{
  re::DynamicArray<unsigned long>::deinit((this + 9));

  v2 = this[7];
  if (v2)
  {

    this[7] = 0;
  }

  v3 = *(this + 2);
  if (v3 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix_0[v3])(&v4, this);
  }

  *(this + 2) = -1;
}

uint64_t std::__function::__func<re::AssetHelper::registerDefaultAssetTypes(re::AssetManager &,re::ServiceLocator &,re::AssetHelper::RegistrationOptions)::$_0,std::allocator<re::AssetHelper::registerDefaultAssetTypes(re::AssetManager &,re::ServiceLocator &,re::AssetHelper::RegistrationOptions)::$_0>,void ()(re::AssetLoader *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void (*)(re::AssetLoader *),std::allocator<void (*)(re::AssetLoader *)>,void ()(re::AssetLoader *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CC6130;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(re::AssetLoader *),std::allocator<void (*)(re::AssetLoader *)>,void ()(re::AssetLoader *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *re::internal::AssetCompilerRegistryHelper::deleter(re *this, re::AssetCompiler *a2)
{
  if (this)
  {
    v2 = this;
    v3 = re::globalAllocators(this)[2];
    (**v2)(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return this;
}

uint64_t std::__function::__func<void (*)(re::AssetCompiler *),std::allocator<void (*)(re::AssetCompiler *)>,void ()(re::AssetCompiler *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CC61D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(re::AssetCompiler *),std::allocator<void (*)(re::AssetCompiler *)>,void ()(re::AssetCompiler *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::DynamicString *re::BasicJsonCompiler<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::getCurrentCompiledAssetInfo@<X0>(_anonymous_namespace_ *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetName;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::assetIntrospectionType()
{
  if ((atomic_load_explicit(&qword_1EE1979A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979A0))
  {
    qword_1EE197998 = re::introspect_AnimationScene(0, v1, v2, v3, v4, v5);
    __cxa_guard_release(&qword_1EE1979A0);
  }

  return qword_1EE197998;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v2[0] = &re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetExtension;
  v2[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v2);
}

void re::BasicJsonCompiler<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::compile(char *__s@<X1>, const re::IntrospectionBase *a2@<X3>, uint64_t a3@<X8>)
{
  *v33 = 0u;
  v34 = 0u;
  v38 = 0;
  v35 = &str_67;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v39 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v6 = strrchr(__s, 46);
  if (!strcmp(v6 + 1, re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetExtension))
  {
    if ((atomic_load_explicit(&qword_1EE1979A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979A0))
    {
      qword_1EE197998 = re::introspect_AnimationScene(0, v21, v22, v23, v24, v25);
      __cxa_guard_release(&qword_1EE1979A0);
    }

    v10 = re::AssetUtilities::readSourceJson(&v30, __s, v33, qword_1EE197998, a2);
    if (v30)
    {
      v11 = re::globalAllocators(v10);
      v12 = (*(*v11[2] + 32))(v11[2], 112, 8);
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 32) = &str_67;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 40) = 0;
      *(v12 + 96) = 0;
      *(v12 + 104) = 0;
      *(v12 + 8) = *&v33[8];
      *&v33[8] = 0;
      v13 = *v12;
      *v12 = 0;
      *v12 = *v33;
      *(v12 + 16) = v34;
      *v33 = v13;
      *&v34 = 0;
      re::StringID::operator=((v12 + 24), &v34 + 1);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v12 + 40, v36);
      *(v12 + 80) = v39;
      v14 = *(v12 + 96);
      v15 = *(v12 + 104);
      *(v12 + 96) = v41;
      v41 = v14;
      v16 = *(v12 + 88);
      *(v12 + 88) = 0;
      *(v12 + 88) = v40;
      *(v12 + 104) = v42;
      v40 = v16;
      v42 = v15;
      *a3 = 1;
      *(a3 + 8) = v12;
    }

    else
    {
      *&v26 = 100;
      *(&v26 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v27, &v31);
      v17 = v27;
      *(a3 + 8) = v26;
      v18 = v28;
      v19 = v29;
      *a3 = 0;
      *(a3 + 24) = v17;
      *(a3 + 40) = v18;
      *(a3 + 48) = v19;
      if (v30 & 1) == 0 && v31 && (v32)
      {
        (*(*v31 + 40))();
      }
    }
  }

  else
  {
    re::DynamicString::format(&v26, "Invalid Asset Path: %s.", v7, __s);
    v8 = v26;
    v9 = v27;
    *a3 = 0;
    *(a3 + 8) = 200;
    *(a3 + 16) = re::AssetErrorCategory(void)::instance;
    *(a3 + 24) = v8;
    *(a3 + 40) = v9;
  }

  re::AssetHandle::~AssetHandle(&v40);
  v20 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(v36);
  if (BYTE8(v34))
  {
    if (BYTE8(v34))
    {
    }
  }

  *(&v34 + 1) = 0;
  v35 = &str_67;
  re::AssetHandle::~AssetHandle(v33);
}

void sub_1E2075DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  __cxa_guard_abort(&qword_1EE1979A0);
  re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::~BasicAsset(va);
  _Unwind_Resume(a1);
}

re::DynamicString *re::BasicJsonCompiler<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::getCurrentCompiledAssetInfo@<X0>(_anonymous_namespace_ *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetName;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::assetIntrospectionType()
{
  if ((atomic_load_explicit(&qword_1EE1979B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979B0))
  {
    qword_1EE1979A8 = re::introspect_BlendShapeGroupDefinition(0, v1, v2, v3, v4, v5);
    __cxa_guard_release(&qword_1EE1979B0);
  }

  return qword_1EE1979A8;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v2[0] = &re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetExtension;
  v2[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v2);
}

void re::BasicJsonCompiler<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::compile(char *__s@<X1>, const re::IntrospectionBase *a2@<X3>, uint64_t a3@<X8>)
{
  *v29 = 0;
  v30 = &str_67;
  HIDWORD(v32) = 0;
  memset(v31, 0, sizeof(v31));
  LOBYTE(v32) = 0;
  v6 = strrchr(__s, 46);
  if (!strcmp(v6 + 1, re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetExtension))
  {
    if ((atomic_load_explicit(&qword_1EE1979B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979B0))
    {
      qword_1EE1979A8 = re::introspect_BlendShapeGroupDefinition(0, v17, v18, v19, v20, v21);
      __cxa_guard_release(&qword_1EE1979B0);
    }

    v10 = re::AssetUtilities::readSourceJson(&v26, __s, v29, qword_1EE1979A8, a2);
    if (v26)
    {
      v11 = re::globalAllocators(v10);
      v12 = (*(*v11[2] + 32))(v11[2], 48, 8);
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *(v12 + 8) = &str_67;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = 0;
      *(v12 + 40) = 0;
      re::StringID::operator=(v12, v29);
      re::FixedArray<float>::operator=((v12 + 16), v31);
      *(v12 + 40) = v32;
      *a3 = 1;
      *(a3 + 8) = v12;
    }

    else
    {
      *&v22 = 100;
      *(&v22 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v23, &v27);
      v13 = v23;
      *(a3 + 8) = v22;
      v14 = v24;
      v15 = v25;
      *a3 = 0;
      *(a3 + 24) = v13;
      *(a3 + 40) = v14;
      *(a3 + 48) = v15;
      if (v26 & 1) == 0 && v27 && (v28)
      {
        (*(*v27 + 40))();
      }
    }
  }

  else
  {
    re::DynamicString::format(&v22, "Invalid Asset Path: %s.", v7, __s);
    v8 = v22;
    v9 = v23;
    *a3 = 0;
    *(a3 + 8) = 200;
    *(a3 + 16) = re::AssetErrorCategory(void)::instance;
    *(a3 + 24) = v8;
    *(a3 + 40) = v9;
  }

  v16 = re::FixedArray<re::BlendShapeDefinition>::deinit(v31);
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }
}

void sub_1E207617C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  __cxa_guard_abort(&qword_1EE1979B0);
  re::FixedArray<re::BlendShapeDefinition>::deinit((v20 + 16));
  re::StringID::destroyString(va);
  _Unwind_Resume(a1);
}

re::DynamicString *re::BasicJsonCompiler<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::getCurrentCompiledAssetInfo@<X0>(_anonymous_namespace_ *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetName;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::assetIntrospectionType()
{
  if ((atomic_load_explicit(&qword_1EE1979C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979C0))
  {
    qword_1EE1979B8 = re::introspect_BlendTreeDefinition(0, v1, v2, v3, v4, v5);
    __cxa_guard_release(&qword_1EE1979C0);
  }

  return qword_1EE1979B8;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v2[0] = &re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetExtension;
  v2[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v2);
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::compile@<X0>(char *__s@<X1>, const re::IntrospectionBase *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = __s;
  *v36 = 0;
  v37 = 0;
  v39 = 0;
  v38 = 0;
  v58 = 0;
  memset(v40, 0, sizeof(v40));
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  v47 = 0u;
  memset(v48, 0, 28);
  v49 = 0u;
  v50 = 0u;
  v46 = 0;
  v51 = 0;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  v6 = strrchr(__s, 46);
  if (strcmp(v6 + 1, re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetExtension))
  {
    re::DynamicString::format(&v29, "Invalid Asset Path: %s.", v7, v4);
    v8 = v29;
    v9 = v30;
    *a3 = 0;
    *(a3 + 8) = 200;
    *(a3 + 16) = re::AssetErrorCategory(void)::instance;
    *(a3 + 24) = v8;
    *(a3 + 40) = v9;
    goto LABEL_20;
  }

  if ((atomic_load_explicit(&qword_1EE1979C0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v10 = re::AssetUtilities::readSourceJson(&v33, v4, v36, qword_1EE1979B8, a2);
    if ((v33 & 1) == 0)
    {
      break;
    }

    v11 = re::globalAllocators(v10);
    v4 = (*(*v11[2] + 32))(v11[2], 328, 8);
    *(v4 + 40) = 0;
    *(v4 + 18) = 0u;
    *(v4 + 19) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 17) = 0u;
    *(v4 + 14) = 0u;
    *(v4 + 15) = 0u;
    *(v4 + 12) = 0u;
    *(v4 + 13) = 0u;
    *(v4 + 10) = 0u;
    *(v4 + 11) = 0u;
    *(v4 + 8) = 0u;
    *(v4 + 9) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 7) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *v4 = 0u;
    *(v4 + 5) = 0u;
    a2 = (v4 + 80);
    re::DynamicArray<re::RigComponentConstraint>::operator=(v4, v36);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v4 + 40), &v40[1]);
    re::DynamicArray<re::RigComponentConstraint>::operator=((v4 + 80), &v42 + 1);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v4 + 120), &v45[1]);
    *(v4 + 20) = *(&v47 + 1);
    if (v4 != v36)
    {
      v13 = *(v4 + 21);
      if (v13 && v48[0] && v13 != v48[0])
      {
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
        _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
        goto LABEL_41;
      }

      *(v4 + 21) = v48[0];
      v48[0] = v13;
      v14 = *(v4 + 11);
      *(v4 + 22) = v48[1];
      *(v4 + 23) = v48[2];
      *&v48[1] = v14;
      v15 = *(v4 + 25);
      *(v4 + 25) = v49;
      *&v49 = v15;
      ++LODWORD(v48[3]);
      ++*(v4 + 48);
    }

    re::DynamicArray<re::RigComponentConstraint>::operator=((v4 + 208), &v49 + 1);
    re::DynamicArray<re::RigComponentConstraint>::operator=((v4 + 248), &v52 + 1);
    if (v4 == v36)
    {
      goto LABEL_15;
    }

    v17 = *(v4 + 36);
    if (!v17 || !*(&v55 + 1) || v17 == *(&v55 + 1))
    {
      *(v4 + 36) = *(&v55 + 1);
      *(&v55 + 1) = v17;
      v18 = *(v4 + 296);
      *(v4 + 296) = v56;
      v56 = v18;
      v19 = *(v4 + 40);
      *(v4 + 40) = v58;
      v58 = v19;
      ++v57;
      ++*(v4 + 78);
LABEL_15:
      *a3 = 1;
      *(a3 + 8) = v4;
      goto LABEL_20;
    }

LABEL_41:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
    __break(1u);
LABEL_42:
    if (__cxa_guard_acquire(&qword_1EE1979C0))
    {
      qword_1EE1979B8 = re::introspect_BlendTreeDefinition(0, v24, v25, v26, v27, v28);
      __cxa_guard_release(&qword_1EE1979C0);
    }
  }

  *&v29 = 100;
  *(&v29 + 1) = re::AssetErrorCategory(void)::instance;
  re::DynamicString::DynamicString(&v30, &v34);
  v20 = v30;
  *(a3 + 8) = v29;
  v21 = v31;
  v22 = v32;
  *a3 = 0;
  *(a3 + 24) = v20;
  *(a3 + 40) = v21;
  *(a3 + 48) = v22;
  if (v33 & 1) == 0 && v34 && (v35)
  {
    (*(*v34 + 40))();
  }

LABEL_20:
  if (*(&v55 + 1))
  {
    if (v58)
    {
      (*(**(&v55 + 1) + 40))();
    }

    v58 = 0;
    v56 = 0uLL;
    *(&v55 + 1) = 0;
    ++v57;
  }

  if (*(&v52 + 1))
  {
    if (v55)
    {
      (*(**(&v52 + 1) + 40))();
    }

    *&v55 = 0;
    v53 = 0uLL;
    *(&v52 + 1) = 0;
    ++v54;
  }

  if (*(&v49 + 1))
  {
    if (v52)
    {
      (*(**(&v49 + 1) + 40))();
    }

    *&v52 = 0;
    v50 = 0uLL;
    *(&v49 + 1) = 0;
    ++v51;
  }

  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v48);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v45[1]);
  if (*(&v42 + 1))
  {
    if (v45[0])
    {
      (*(**(&v42 + 1) + 40))();
    }

    v45[0] = 0;
    v43 = 0uLL;
    *(&v42 + 1) = 0;
    ++v44;
  }

  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v40[1]);
  result = *v36;
  if (*v36)
  {
    if (v40[0])
    {
      return (*(**v36 + 40))();
    }
  }

  return result;
}

void sub_1E2076860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  __cxa_guard_abort(&qword_1EE1979C0);
  re::BlendTreeDefinition::~BlendTreeDefinition(va);
  _Unwind_Resume(a1);
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetModel>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::MeshAssetModel>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetModel>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetSkeleton>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::allocInfo_AudioFileAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_83, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_83))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197A40, "AudioFileAsset");
    __cxa_guard_release(&_MergedGlobals_83);
  }

  return &unk_1EE197A40;
}

void re::initInfo_AudioFileAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v60[0] = 0x5AD9D7EF0324A77CLL;
  v60[1] = "AudioFileAsset";
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *(this + 2) = v61;
  if ((atomic_load_explicit(&qword_1EE1979D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979D0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_int(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "loopCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x6800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1979D8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "referenceLevel";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x3800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1979E0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint64_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "lengthInFrames";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x9000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1979E8 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "streaming";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x6C00000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1979F0 = v22;
    v23 = re::introspectionAllocator();
    v25 = introspect_REAudioInputMode(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "inputMode";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x3C00000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1979F8 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_double(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "maximumAlignmentLatency";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x9800000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE197A00 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "randomizeStart";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x6D00000008;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE197A08 = v34;
    v35 = re::introspectionAllocator();
    v37 = introspect_REAudioNormalizationMode(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "normalizationMode";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x7000000009;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE197A10 = v38;
    v39 = re::introspectionAllocator();
    v41 = introspect_REAudioCalibrationMode(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "calibrationMode";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x740000000ALL;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE197A18 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::introspect_double(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "calibrationLevel";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x780000000BLL;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE197A20 = v46;
    v47 = re::introspectionAllocator();
    v49 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v48);
    v50 = (*(*v47 + 32))(v47, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "mixGroupName";
    *(v50 + 16) = v49;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0x400000000CLL;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE197A28 = v50;
    v51 = re::introspectionAllocator();
    v53 = re::introspect_uint32_t(1, v52);
    v54 = (*(*v51 + 32))(v51, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "layoutTag";
    *(v54 + 16) = v53;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0x880000000DLL;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE197A30 = v54;
    v55 = re::introspectionAllocator();
    v57 = re::introspect_double(1, v56);
    v58 = (*(*v55 + 32))(v55, 72, 8);
    *v58 = 1;
    *(v58 + 8) = "targetLUFS";
    *(v58 + 16) = v57;
    *(v58 + 24) = 0;
    *(v58 + 32) = 0x800000000ELL;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    *(v58 + 64) = 0;
    qword_1EE197A38 = v58;
    __cxa_guard_release(&qword_1EE1979D0);
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1979D8;
  *(this + 9) = re::internal::defaultConstruct<re::AudioFileAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioFileAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioFileAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioFileAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v59 = v61;
}

uint64_t re::AudioFileAsset::Impl::operator==(uint64_t *a1, void *a2)
{
  result = *a1;
  if (result == *a2 || result && (result = [result isEqual:?], result))
  {
    result = a1[1];
    if (result == a2[1] || result && (result = [result isEqual:?], result))
    {
      result = a1[2];
      if (result == a2[2] || result && (result = [result isEqual:?], result))
      {
        result = a1[4];
        if (result == a2[4])
        {
          return 1;
        }

        else if (result)
        {

          return [result isEqual:?];
        }
      }
    }
  }

  return result;
}

void re::AudioFileAsset::AudioFileAsset(re::AudioFileAsset *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5CC63B8;
  *(this + 14) = -1052770304;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  *(this + 14) = 0;
  *(this + 120) = xmmword_1E3061520;
  *(this + 17) = 4294901760;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 159) = 0;
  operator new();
}

void sub_1E2077498(_Unwind_Exception *a1)
{
  if (*(v1 + 64) == 1)
  {
    re::DynamicString::deinit((v1 + 72));
  }

  re::DynamicString::deinit((v1 + 24));
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

_BYTE *re::AudioFileAsset::setConfiguration(uint64_t a1, uint64_t a2)
{
  *(a1 + 108) = *a2;
  result = re::Optional<re::DynamicString>::operator=((a1 + 64), (a2 + 32));
  *(a1 + 109) = *(a2 + 2);
  *(a1 + 104) = -*(a2 + 1);
  *(a1 + 112) = *(a2 + 4);
  *(a1 + 60) = *(a2 + 80);
  *(a1 + 120) = *(a2 + 16);
  if (*(a2 + 72) == 1)
  {
    *(a1 + 136) = *(a2 + 76);
  }

  return result;
}

void re::AudioFileAsset::~AudioFileAsset(re::AudioFileAsset *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(this + 35);
  if (v2 + 1 >= 2)
  {
    v3 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    v4 = v3;
    if (v3)
    {
      v5 = *re::audioLogObjects(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315138;
        v8 = mach_error_string(v4);
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAsset] Failed to deallocate mach port, with KERN error code: %s", &v7, 0xCu);
      }
    }
  }

  if (*(this + 64) == 1)
  {
    re::DynamicString::deinit((this + 72));
  }

  re::DynamicString::deinit((this + 24));
  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

{
  re::AudioFileAsset::~AudioFileAsset(this);

  JUMPOUT(0x1E6906520);
}

void sub_1E2077654(_Unwind_Exception *a1)
{
  if (*(v1 + 64) == 1)
  {
    re::DynamicString::deinit((v1 + 72));
  }

  re::DynamicString::deinit((v1 + 24));
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

void re::AudioFileAsset::cloneFrom(re::AudioFileAsset *this, const re::AudioFileAsset *a2)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v4 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    goto LABEL_10;
  }

  while (1)
  {
    v5 = *(v4 + 319);
    __buf[1] = 0;
    __buf[2] = &v12;
    {
      break;
    }

    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "ok", "cloneFrom", 194, v12, v13, v14);
    _os_crash("assertion failure: (ok) ");
    __break(1u);
LABEL_10:
    v4 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v11)
    {
      re::introspect<re::AudioFileAsset>(BOOL)::info = re::internal::getOrCreateInfo("AudioFileAsset", re::allocInfo_AudioFileAsset, re::initInfo_AudioFileAsset, &re::internal::introspectionInfoStorage<re::AudioFileAsset>, 0);
      v4 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  v7 = *(this + 1);
  v8 = *(a2 + 1);
  objc_storeStrong(v7, *v8);
  objc_storeStrong((v7 + 8), *(v8 + 8));
  objc_storeStrong((v7 + 16), *(v8 + 16));
  *(v7 + 40) = *(v8 + 40);
  __buf[0] = 0;
  do
  {
    arc4random_buf(__buf, 8uLL);
  }

  while (__buf[0] < 0x3E8);
  *(v7 + 24) = __buf[0];
  objc_storeStrong((v7 + 32), *(v8 + 32));
  *(v7 + 176) = *(v8 + 176);
  if (*(v8 + 72))
  {
    Detached = re::DataSeekableInputStream::CreateDetached((v8 + 48));
    re::DataSeekableInputStream::operator=(v7 + 48, Detached);
    v10 = *(v8 + 160);
  }

  else
  {
    v15 = 0;
    re::DataSeekableInputStream::DataSeekableInputStream(__buf, &v15, 0, 0);
    re::DataSeekableInputStream::operator=(v7 + 48, __buf);
    __buf[0] = &unk_1F5D0A4F8;

    __buf[0] = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v17);

    v10 = 0;
  }

  *(v7 + 160) = v10;
}

uint64_t *re::AudioFileAsset::assetType(re::AudioFileAsset *this)
{
  {
    re::AudioFileAsset::assetType(void)::type = "AudioFile";
    qword_1EE1C70E8 = 0;
    re::AssetType::generateCompiledExtension(&re::AudioFileAsset::assetType(void)::type);
  }

  return &re::AudioFileAsset::assetType(void)::type;
}

_anonymous_namespace_ *re::AudioFileAsset::supportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v2 = re::AudioFileAsset::supportedExtensions(void)::supportedExtensions;
  v3 = 88;
  *(a1 + 24) = 0;
  do
  {
    result = re::DynamicArray<re::TransitionCondition *>::add(a1, v2++);
    v3 -= 8;
  }

  while (v3);
  return result;
}

BOOL re::AudioFileAsset::shouldSkipCompressionOnExport(re::AudioFileAsset *this)
{
  v1 = **(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 fileFormat];
  v3 = *([v2 streamDescription] + 8) != 1819304813;

  return v3;
}

BOOL re::AudioFileAsset::prepareToLoadFrom(re::AudioFileAsset *this, const char *__s, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  *buf = __s;
  *&buf[8] = strlen(__s);
  re::DynamicString::operator=((this + 24), buf);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__s];
  if (v6)
  {
    if (a3)
    {
      [MEMORY[0x1E695DFF8] URLWithString:v6];
    }

    else
    {
      [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    }
    v8 = ;
    if (v8)
    {
      objc_storeStrong((*(this + 1) + 32), v8);
      v18 = 0;
      v9 = [objc_alloc(MEMORY[0x1E6958408]) initForReading:v8 error:&v18];
      v10 = v18;
      v11 = v10;
      v7 = v9 != 0;
      if (v9)
      {
        objc_storeStrong(*(this + 1), v9);
        v12 = [v9 processingFormat];
        v13 = *(this + 1);
        v14 = *(v13 + 8);
        *(v13 + 8) = v12;

        *(this + 18) = [v9 length];
      }

      else
      {
        v15 = *re::audioLogObjects(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          if (*(this + 32))
          {
            v17 = *(this + 5);
          }

          else
          {
            v17 = this + 33;
          }

          *buf = 136315394;
          *&buf[4] = v17;
          *&buf[12] = 2112;
          *&buf[14] = v11;
          _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Failed to load audio file at '%s'. Error = %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void re::AudioFileAsset::loadBuffer(re::AudioFileAsset *this, AVAudioPCMBuffer *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [(AVAudioPCMBuffer *)v4 format];
    v8 = re::audio::layoutTagFromFormat(v6, v7);

    if (v8 != -65536)
    {
      objc_storeStrong((*(this + 1) + 16), a2);
      v9 = [(AVAudioPCMBuffer *)v5 format];
      v10 = *(this + 1);
      v11 = *(v10 + 8);
      *(v10 + 8) = v9;

      v12 = [(AVAudioPCMBuffer *)v5 frameLength];
      *(this + 18) = v12;
      if (!v12)
      {
        v13 = *re::audioLogObjects(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "AudioFileAsset handed AVAudioPCMBuffer with frameLength=0", v14, 2u);
        }
      }
    }
  }
}

void re::AudioFileAsset::markAsIncompleteLoad(re::AudioFileAsset *this)
{
  if (*(this + 161) == 1)
  {
    *(this + 161) = 256;
  }

    ;
  }

  *(*(this + 1) + 24) = __buf;
}

uint64_t re::AudioFileAsset::createSharableFileBuffer(re::AudioFileAsset::Impl **this, re::SeekableInputStream *a2)
{
  v4 = (*(*a2 + 64))(a2);
  result = re::AudioFileAsset::Impl::createIOSurface(this[1], v4);
  if (result)
  {
    v6 = [*(this[1] + 21) baseAddress];
    if (v6)
    {
      v7 = v6;
      result = (*(*a2 + 48))(a2);
      if (result)
      {
        result = (*(*a2 + 56))(a2, 0);
        if (result)
        {
          v14 = &unk_1F5D0AE00;
          v15 = a2;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = (*(*a2 + 40))(a2);
          v20 = 0;
          Bytes = re::SeekableInputStreamReaderAdaptor::readBytes(&v14, v7, v4);
          v9 = this[1];
          *(v9 + 5) = Bytes;
          XPCObject = IOSurfaceCreateXPCObject(*(v9 + 21));
          v11 = this[1];
          v12 = *(v11 + 26);
          *(v11 + 26) = XPCObject;

          if (v17)
          {
            (*(*v15 + 24))(v15);
          }

          return 1;
        }
      }
    }

    else
    {
      v13 = *re::audioLogObjects(0);
      result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (result)
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "[AudioFileAsset] [createSharableFileBuffer] surfaceBaseAddress is nil.", &v14, 2u);
        return 0;
      }
    }
  }

  return result;
}

void sub_1E2077FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  if (a12)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL re::AudioFileAsset::Impl::createIOSurface(re::AudioFileAsset::Impl *this, uint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = *MEMORY[0x1E696CE30];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
  v15[1] = *MEMORY[0x1E696D0D8];
  v16[0] = v3;
  v16[1] = MEMORY[0x1E695E110];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v5 = IOSurfaceCreate(v4);
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p: %s %llu", v5, "REKit_Audio_Asset:", *(this + 3)];
    IOSurfaceSetValue(v5, *MEMORY[0x1E696CF98], v6);
    v7 = IOSurfaceSetOwnership();
    v8 = v7;
    if (v7)
    {
      v9 = *re::audioLogObjects(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v14 = mach_error_string(v8);
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[AudioFileAsset] [createIOSurface] Failed to attribute IOSurface allocation: %s", buf, 0xCu);
      }
    }

    v10 = *(this + 21);
    *(this + 21) = v5;
  }

  else
  {
    v11 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "[AudioFileAsset] [createIOSurface] IOSurfaceCreate returned a NULL surface.", buf, 2u);
    }
  }

  return v5 != 0;
}

uint64_t re::AudioFileAsset::createSharablePCMBuffer(re::AudioFileAsset *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 1) + 16);
  if (v1)
  {
    v3 = v1;
    v4 = [v3 format];
    v5 = [v4 commonFormat];

    if (v5 != 1)
    {
      v14 = *re::audioLogObjects(v6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v26 = [v3 format];
        v27 = 134217984;
        v28 = [v26 commonFormat];
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "AudioFileAsset::createSharablePCMBuffer Failed to share buffer with common format %lu", &v27, 0xCu);
      }

      goto LABEL_19;
    }

    v7 = [v3 format];
    if ([v7 channelCount] <= 1)
    {
    }

    else
    {
      v8 = [v3 format];
      v9 = [v8 isInterleaved];

      if (v9)
      {
        v11 = *re::audioLogObjects(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v27) = 0;
          v12 = "AudioFileAsset::createSharablePCMBuffer Failed to share multichannel buffer.Multichannel buffers must be non-interleaved in order to be shared.";
LABEL_23:
          _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, &v27, 2u);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    if (re::AudioFileAsset::Impl::createIOSurface(*(this + 1), 4 * *(this + 18) * [*(*(this + 1) + 8) channelCount]))
    {
      v15 = [*(*(this + 1) + 168) baseAddress];
      if (v15)
      {
        v16 = v3;
        for (i = 0; ; ++i)
        {
          v18 = [v16 format];
          v19 = [v18 channelCount];

          if (i >= v19)
          {
            break;
          }

          memcpy((v15 + 4 * [v16 frameLength] * i), *(objc_msgSend(v16, "floatChannelData") + 8 * i), 4 * objc_msgSend(v16, "frameLength"));
        }

        XPCObject = IOSurfaceCreateXPCObject(*(*(this + 1) + 168));
        v21 = *(this + 1);
        v22 = *(v21 + 200);
        *(v21 + 200) = XPCObject;

        v23 = *(this + 1);
        v24 = *(v23 + 16);
        *(v23 + 16) = 0;

        v13 = 1;
        goto LABEL_20;
      }

      v11 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        v12 = "[AudioFileAsset] [createSharablePCMBuffer] surfaceBaseAddress is nil.";
        goto LABEL_23;
      }
    }

LABEL_19:
    v13 = 0;
LABEL_20:

    return v13;
  }

  return 0;
}

void re::AudioFileAsset::completeLoad(re::AudioFileAsset *this, AudioSceneService *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if ((*(this + 161) & 1) == 0)
  {
    *(this + 161) = 1;
    if (a2)
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = xmmword_1E3061530;
      v65[0] = 0;
      v68 = 0;
      v69 = 0;
      if (re::audio::CanStreamAudioFiles(this))
      {
        v3 = *(this + 108);
      }

      else
      {
        v3 = 0;
      }

      LOBYTE(v61) = v3 & 1;
      v6 = *(this + 15);
      v63 = *(this + 14);
      *&v64 = v6;
      re::Optional<re::DynamicString>::operator=(v65, this + 64);
      HIBYTE(v61) = *(this + 26) == -1;
      *(&v64 + 1) = *(this + 16);
      location = 0;
      v60 = 0;
      v7 = re::AudioFileAsset::audioFormat(this);
      v8 = [v7 channelLayout];
      v58 = v8;

      if (re::audio::CanStreamAudioFiles(v9) && *(this + 108) == 1 && (v10 = **(this + 1)) != 0)
      {
        v11 = v10;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v13 = **(this + 1);
          v14 = [v13 getReaderFileLength];
          v15 = v14 / 0x64;
          if (v14 / 0x64 <= 0xC350)
          {
            v15 = 50000;
          }

          if ((*(this + 35) + 1) <= 1)
          {
            v15 += v14;
          }

          *(this + 21) = v15;
        }

        else
        {
          v25 = [MEMORY[0x1E696AC08] defaultManager];
          v26 = **(this + 1);
          v27 = [v26 url];
          v28 = [v27 path];
          v29 = [v25 attributesOfItemAtPath:v28 error:0];

          v30 = [v29 fileSize];
          v31 = v30 / 0x64;
          if (v30 / 0x64 <= 0xC350)
          {
            v31 = 50000;
          }

          if ((*(this + 35) + 1) <= 1)
          {
            v31 += v30;
          }

          *(this + 21) = v31;
        }
      }

      else
      {
        v16 = re::AudioFileAsset::audioFormat(this);
        v17 = v16 == 0;

        if (v17)
        {
          v24 = *re::audioLogObjects(v18);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAsset] Cannot get bytesPerFrame from audio asset because audioFormat() is nil", buf, 2u);
          }
        }

        else
        {
          v19 = re::AudioFileAsset::audioFormat(this);
          v20 = *([v19 streamDescription] + 24);

          v21 = *(this + 18) * v20;
          v22 = v21 / 0x64;
          if (v21 / 0x64 <= 0xC350)
          {
            v22 = 50000;
          }

          v23 = v22 + v21;
          if ((*(this + 35) + 1) > 1)
          {
            v23 = v22;
          }

          *(this + 21) = v23;
        }
      }

      v32 = *(this + 2);
      v33 = *(this + 1);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v33 = *(this + 1);
      }

      if (*v33)
      {
        v34 = *(v33 + 32);
        if (!v34)
        {
          v44 = [*v33 getBackingData];
          v45 = MEMORY[0x1E695DEF0];
          v46 = v44;
          v47 = [v45 dataWithBytes:objc_msgSend(v44 length:{"bytes"), objc_msgSend(v44, "length")}];
          v48 = *(this + 1);
          v49 = *(v48 + 192);
          *(v48 + 192) = v47;

          std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<0ul,NSData * {__strong},NSData * {__strong}&>(&location, &location, (*(this + 1) + 192));
          *buf = *(*(this + 1) + 24);
          std::allocate_shared[abi:nn200100]<re::AudioAssetPayload,std::allocator<re::AudioAssetPayload>,std::variant<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &,re::AudioFileAssetConfiguration &,unsigned int &,unsigned long long,AVAudioChannelLayout * {__strong}&,0>(&v70, &location, &v61, this + 35, buf, &v58);
        }

        if (v60 != -1)
        {
          if (v60 == 2)
          {
            objc_storeStrong(&location, v34);
            goto LABEL_47;
          }

          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v60])(buf, &location);
          v34 = *(v33 + 32);
        }

        v60 = -1;
        location = v34;
        v60 = 2;
LABEL_47:
        *buf = *(*(this + 1) + 24);
        std::allocate_shared[abi:nn200100]<re::AudioAssetPayload,std::allocator<re::AudioAssetPayload>,std::variant<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &,re::AudioFileAssetConfiguration &,unsigned int &,unsigned long long,AVAudioChannelLayout * {__strong}&,0>(&v70, &location, &v61, this + 35, buf, &v58);
      }

      if (!*(v33 + 200))
      {
        v50 = *(v33 + 208);
        if (v50)
        {
          v51 = IOSurfaceLookupFromXPCObject(v50);
          v52 = *(this + 1);
          v53 = *(v52 + 168);
          *(v52 + 168) = v51;

          v57 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:IOSurfaceGetBaseAddress(*(*(this + 1) + 168)) length:*(*(this + 1) + 40) freeWhenDone:0];
          objc_setAssociatedObject(v57, "FileAssetBufferKey", *(*(this + 1) + 168), 0x301);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<0ul,NSData * {__strong},NSData * {__strong}&>(&location, &location, &v57);
          *buf = *(*(this + 1) + 24);
          std::allocate_shared[abi:nn200100]<re::AudioAssetPayload,std::allocator<re::AudioAssetPayload>,std::variant<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &,re::AudioFileAssetConfiguration &,unsigned int &,unsigned long long,AVAudioChannelLayout * {__strong}&,0>(&v70, &location, &v61, this + 35, buf, &v58);
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<1ul,AVAudioPCMBuffer * {__strong},AVAudioPCMBuffer * {__strong}&>(&location, &location, (v33 + 16));
        *buf = *(*(this + 1) + 24);
        std::allocate_shared[abi:nn200100]<re::AudioAssetPayload,std::allocator<re::AudioAssetPayload>,std::variant<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &,re::AudioFileAssetConfiguration &,unsigned int &,unsigned long long,0>(&v70, &location, &v61, this + 35, buf);
      }

      v35 = [*(v33 + 8) channelCount];
      v36 = *(this + 18);
      v37 = IOSurfaceLookupFromXPCObject(*(*(this + 1) + 200));
      v38 = *(this + 1);
      v39 = *(v38 + 168);
      *(v38 + 168) = v37;

      AllocSize = IOSurfaceGetAllocSize(*(*(this + 1) + 168));
      v41 = AllocSize;
      v42 = 4 * v35 * v36;
      if (AllocSize >= v42)
      {
        v57 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:IOSurfaceGetBaseAddress(*(*(this + 1) + 168)) length:v42 freeWhenDone:0];
        objc_setAssociatedObject(v57, "FileAssetBufferKey", *(*(this + 1) + 168), 0x301);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<0ul,NSData * {__strong},NSData * {__strong}&>(&location, &location, &v57);
        re::AudioFileAsset::audioFormat(this);
        objc_claimAutoreleasedReturnValue();
        operator new();
      }

      v43 = *re::audioLogObjects(AllocSize);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 32))
        {
          v54 = *(this + 5);
        }

        else
        {
          v54 = this + 33;
        }

        v55 = [*(*(this + 1) + 8) channelCount];
        v56 = *(this + 18);
        *buf = 136315906;
        *&buf[4] = v54;
        buf_12 = 2048;
        buf_14 = v41;
        v74 = 1024;
        v75 = v55;
        v76 = 2048;
        v77 = v56;
        _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, "AudioFileAsset::completeLoad buffer for asset '%s' is %lu bytes which is smaller than expected for %u channels, %llu frames of float32 pcm", buf, 0x26u);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
        std::__shared_weak_count::__release_weak(v32);
      }

      if (v60 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v60])(buf, &location);
      }

      if (v65[0] == 1 && v66 && (v67 & 1) != 0)
      {
        (*(*v66 + 40))();
      }
    }

    else
    {
      v4 = *re::audioLogObjects(this);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 32))
        {
          v5 = *(this + 5);
        }

        else
        {
          v5 = this + 33;
        }

        *buf = 136315138;
        *&buf[4] = v5;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "AudioFileAsset::completeLoad with no AudioSceneService '%s'", buf, 0xCu);
      }
    }
  }
}

void sub_1E2079218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](&a29);
  v34 = *(v32 - 176);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (a14 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[a14])(&a10, &a12);
  }

  if (a19 == 1 && a20 && (a21 & 1) != 0)
  {
    (*(*a20 + 40))();
  }

  _Unwind_Resume(a1);
}

id re::AudioFileAsset::audioFormat(re::AudioFileAsset *this)
{
  v3 = *(*(this + 1) + 8);
  if (v3)
  {
    v4 = MEMORY[0x1E69583D0];
    v5 = *(this + 34);
    if (v5 == -65536)
    {
      v5 = re::audio::layoutTagFromFormat(*(*(this + 1) + 8), v2);
    }

    v6 = [v4 layoutWithLayoutTag:v5];
    v7 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:objc_msgSend(v3 channelLayout:{"streamDescription"), v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id re::AudioFileAsset::pcmBuffer(re::AudioFileAsset *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2;
  }

  else if (*(v1 + 200))
  {
    v5 = *(v1 + 8);
    v6 = *(this + 18);
    BaseAddress = IOSurfaceGetBaseAddress(*(*(this + 1) + 168));
    v8 = [v5 commonFormat];
    if (v8 == 1 && ([v5 channelCount] < 2 || (v8 = objc_msgSend(v5, "isInterleaved"), !v8)))
    {
      v3 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v5 frameCapacity:v6];
      if (v3)
      {
        v10 = 0;
        for (i = 0; i < [v5 channelCount]; ++i)
        {
          memcpy(*([v3 floatChannelData] + 8 * i), &BaseAddress[4 * v10], 4 * v6);
          v10 += v6;
        }

        [v3 setFrameLength:{objc_msgSend(v3, "frameCapacity")}];
      }
    }

    else
    {
      v9 = *re::audioLogObjects(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "can only create non-interleaved float AVAudioPCMBuffer from bytes", v13, 2u);
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t re::AudioFileAsset::setMappedData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  *v4 = 0;

  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  v8 = *(a1 + 8);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  v10 = *(a1 + 8);
  v11 = *(v10 + 32);
  *(v10 + 32) = 0;

  v12 = *(a1 + 8) + 48;

  return re::DataSeekableInputStream::operator=(v12, a2);
}

BOOL re::AudioFileAsset::makeMutableAndSetMappedData(re *a1, re::internal::AssetEntry **a2, void *a3)
{
  v3 = a2[1];
  if (!v3 || (v4 = atomic_load(v3 + 224), v4 != 2))
  {
    v19 = *re::audioLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v20 = "AudioFileAsset::makeMutableAndSetData failing as it requires the handle to be loaded.";
    goto LABEL_18;
  }

  v6 = a2[1];
  if (!v6)
  {
    v10 = re::AudioFileAsset::assetType(a1);
    goto LABEL_16;
  }

  v9 = *(v6 + 35);
  v10 = re::AudioFileAsset::assetType(a1);
  if (v9 != &re::AudioFileAsset::assetType(void)::type)
  {
LABEL_16:
    v19 = *re::audioLogObjects(v10);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v20 = "AudioFileAsset::makeMutableAndSetData failing as it requires the handle to wrap an AudioFileAsset.";
    goto LABEL_18;
  }

  v11 = a2[1];
  if (!v11 || (v10 = *(v11 + 3)) == 0 || (v10 = re::AssetManager::convertToMutable(v10, a2), (v10 & 1) == 0))
  {
    v19 = *re::audioLogObjects(v10);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v20 = "AudioFileAsset::makeMutableAndSetData failing as it could not convert the handle to mutable.";
LABEL_18:
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    return 0;
  }

  v12 = a2[1];
  if (v12)
  {
    v13 = atomic_load(v12 + 224);
    if (v13 == 2)
    {
      re::AssetHandle::mutateAssetCommon(a2);
      ++*(a2[1] + 69);
      v14 = re::AssetHandle::loadedAsset<re::AudioFileAsset>(a2);
      if (v14)
      {
        v15 = v14;
        v16 = a3;
        v21 = v16;
        re::DataSeekableInputStream::DataSeekableInputStream(buf, &v21, 0, 0);

        re::AudioFileAsset::setMappedData(v15, buf);
        re::AudioFileAssetLoader::createRuntimeData(a1, v15, 0, 0);
        *buf = &unk_1F5D0A4F8;

        *buf = &unk_1F5D0A468;
        re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v23);

        v17 = a2[1];
        *(v17 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v17);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(a2[1]);
      }
    }
  }

  re::AssetHandle::payloadDidChangeIfPossible(a2);
  return 1;
}

void sub_1E2079A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  re::DataSeekableInputStream::~DataSeekableInputStream(va);

  _Unwind_Resume(a1);
}

uint64_t re::AudioAssetPayload::AudioAssetPayload(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a6;
  v14 = a7;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](a1, a2);
  v15 = *(a3 + 16);
  *(a1 + 16) = *a3;
  *(a1 + 32) = v15;
  v16 = *(a3 + 32);
  *(a1 + 48) = v16;
  if (v16 == 1)
  {
    re::DynamicString::DynamicString((a1 + 56), (a3 + 40));
  }

  v17 = *(a3 + 72);
  *(a1 + 88) = v17;
  if (v17 == 1)
  {
    *(a1 + 92) = *(a3 + 76);
  }

  *(a1 + 96) = *(a3 + 80);
  *(a1 + 104) = a4;
  *(a1 + 112) = a5;
  *(a1 + 120) = v13;
  *(a1 + 128) = v14;
  return a1;
}

re::DynamicString *re::AudioFileAssetCompiler::getCurrentCompiledAssetInfo@<X0>(re::AudioFileAssetCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  re::AudioFileAsset::assetType(v3);
  v5[0] = re::AudioFileAsset::assetType(void)::type;
  v5[1] = strlen(re::AudioFileAsset::assetType(void)::type);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::AudioFileAssetCompiler::assetIntrospectionType(re::AudioFileAssetCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::AudioFileAsset>(BOOL)::info = re::internal::getOrCreateInfo("AudioFileAsset", re::allocInfo_AudioFileAsset, re::initInfo_AudioFileAsset, &re::internal::introspectionInfoStorage<re::AudioFileAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 319);
}

void re::AudioFileAssetCompiler::compile(re::AudioFileAssetCompiler *this)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 176, 8);
  re::AudioFileAsset::AudioFileAsset(v4);
}

re *re::internal::destroyPersistent<re::AudioFileAsset>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::AudioFileAsset::~AudioFileAsset(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void re::DataSeekableInputStream::~DataSeekableInputStream(id *this)
{
  *this = &unk_1F5D0A4F8;

  *this = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream((this + 4));
}

{
  *this = &unk_1F5D0A4F8;

  *this = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream((this + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

void sub_1E2079E88(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *(v13 + 8);
  if (v15 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v15])(&a13, v13, a3, a4, a5, a6, a7, a8);
  }

  *(v13 + 8) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 8) = -1;
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = v3;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100IZNS0_6__ctorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JSM_EEEDcmSP_DpOT0____fdiagonal[v5])(&v6, a2);
    *(v3 + 8) = v5;
  }

  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSA_SD_SG_EEEEEEDcSQ_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSA_SD_SG_EEEEEEDcSQ_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSA_SD_SG_EEEEEEDcSQ_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

void std::__shared_ptr_emplace<re::AudioFileAsset::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CC6480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::AudioFileAsset::Impl>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 72) = &unk_1F5D0A4F8;

  *(a1 + 72) = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(a1 + 104);

  v2 = *(a1 + 24);
}

void sub_1E207A28C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22)
{
  if (a13 == 1 && a14 && (a15 & 1) != 0)
  {
    (*(*a14 + 40))();
  }

  if (a22 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[a22])(v23 - 65, &a20, a3, a4, a5, a6, a7, a8);
  }

  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<re::AudioAssetPayload>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CC64D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::AudioAssetPayload>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2.n128_f64[0] = re::DynamicString::deinit((a1 + 80));
  }

  v3 = *(a1 + 32);
  if (v3 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v3])(&v4, a1 + 24, v2);
  }

  *(a1 + 32) = -1;
}

void *std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CC6520;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CC6520;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5CC6520;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v3 = std::__shared_weak_count::lock(v3);
    v5 = v3;
    if (v3)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        if (v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = 2;
        }

        *(v6 + 176) = v7;
LABEL_12:
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *re::audioLogObjects(v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[AudioFileAsset] [completeLoad] Failed to register asset because instance of self is no longer valid.", v9, 2u);
  }

  if (v5)
  {
    goto LABEL_12;
  }
}

uint64_t std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<0ul,NSData * {__strong},NSData * {__strong}&>(uint64_t a1, id *location, id *a3)
{
  v5 = *(a1 + 8);
  if (v5 != -1)
  {
    if (!v5)
    {
      objc_storeStrong(location, *a3);
      return;
    }

    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v5])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a3;
  *(a1 + 8) = 0;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<1ul,AVAudioPCMBuffer * {__strong},AVAudioPCMBuffer * {__strong}&>(uint64_t a1, id *location, id *a3)
{
  v5 = *(a1 + 8);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      objc_storeStrong(location, *a3);
      return;
    }

    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v5])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a3;
  *(a1 + 8) = 1;
}

void sub_1E207A944(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16)
{
  if (a13 == 1 && a14 && (a15 & 1) != 0)
  {
    (*(*a14 + 40))();
  }

  v19 = *(v17 - 64);
  if (v19 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v19])(v17 - 49, v17 - 72, a3, a4, a5, a6, a7, a8);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v20);
  _Unwind_Resume(a1);
}

uint64_t re::AssetHandle::loadedAsset<re::AudioFileAsset>(re::AudioFileAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  re::AudioFileAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, &re::AudioFileAsset::assetType(void)::type, 1);
}

void re::ShaderGraphLoadHelper::init(uint64_t a1, re::StringID *a2)
{
  v4 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v5 = re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(a2);
  v6 = re::ServiceLocator::serviceOrNull<re::ResourceSharingService>(a2);
  atomic_store(re::ServiceLocator::serviceOrNull<re::AssetService>(a2), (a1 + 144));
  *(a1 + 384) = re::ServiceLocator::serviceOrNull<re::EntitlementService>(a2);
  if (v4)
  {
    v8 = *(v4 + 26) != 0;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 128) = v8;
  re::Defaults::BOOLValue(&v12, "decodeShaderGraphViaXPC", v7);
  v9 = v12 ^ 1 | BYTE1(v12);
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZN2re21ShaderGraphLoadHelper4initERKNS_14ServiceLocatorE_block_invoke;
    v11[3] = &__block_descriptor_40_e145__Result_re::Data__re::WrappedError__B____WrappedError____Data_____32__0_Data___8_Data___16___v__Q_SharedPtr_re::SharedObject____SharedObject___24l;
    v11[4] = a1;
    (*(*v5 + 184))(v5, v11);
    if ((v9 & 1) == 0)
    {
      return;
    }

    v10 = 152;
  }

  else
  {
    if (((v12 ^ 1 | BYTE1(v12)) & 1) == 0)
    {
      return;
    }

    v10 = 136;
    v5 = v6;
  }

  *(a1 + v10) = v5;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ResourceSharingService>(re::StringID *a1)
{
  {
    re::introspect<re::ResourceSharingService>(BOOL)::info = re::introspect_ResourceSharingService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ResourceSharingService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

void ___ZN2re21ShaderGraphLoadHelper4initERKNS_14ServiceLocatorE_block_invoke(uint64_t a1@<X0>, id *a2@<X1>, id *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *a2;
  v31 = v11;
  v12 = *a3;
  v30 = v12;
  v13 = v9;
  v14 = re::shaderGraphHash(&v31, &v30, 0);
  v15 = [v11 bytes];
  v16 = [v11 length];
  location = 0;
  os_unfair_lock_lock(v10);
  re::sg::MaterialSourceCache::lookup(&v37, &v10[2], v15, v16);
  re::ObjCObject::operator=(&location, &v37);

  os_unfair_lock_unlock(v10);
  if (location)
  {
    v17 = v12;
    v19 = re::decodeFunctionConstants(v17, v18);
    v37 = v19;
    if (v19)
    {
      v20 = MEMORY[0x1E69CD9D8];
      v21 = location;
      v34 = 0;
      v22 = [v20 materialFromSource:v21 functionConstantValues:v19 error:{&v34, v30, v31}];
      v23 = v34;
      v35 = v22;

      if (v23)
      {
        goto LABEL_17;
      }

      re::make::shared::object<re::sg::CachedCompilationMaterial,re::sg::Material,re::sg::MaterialSource const&,SGREMaterialFunctionConstantValues * {__strong}&>(&v33, &v35, &location, &v37);
      if (v13)
      {
        v32 = v33;
        if (v33)
        {
          v24 = v33 + 8;
        }

        v13[2](v13, v14, &v32);
        if (v32)
        {

          v32 = 0;
        }
      }

      v25 = [MEMORY[0x1E695DF88] dataWithLength:1024];
      v26 = v33;
      v27 = re::sg::CachedCompilationMaterial::encode(v33, v25);
      v28 = v27;
      if (v27)
      {
        v29 = v25;
        *a5 = 1;
        *(a5 + 8) = v29;
        v23 = 0;
      }

      else
      {
        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"Encoding Failure" code:0 userInfo:0];
      }

      if (v26)
      {
      }

      if (!v28)
      {
LABEL_17:
        v23 = v23;
        *a5 = 0;
        *(a5 + 8) = v23;
        v19 = v37;
      }
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      v23 = 0;
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    v23 = 0;
  }
}

void sub_1E207AF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  if (a11)
  {
  }

  if (v19)
  {

    v17 = a9;
    v16 = a10;
  }

  _Unwind_Resume(a1);
}

void re::ShaderGraphLoadHelper::decodeAndSpecializeShaderGraph(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, re *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  v149 = *MEMORY[0x1E69E9840];
  explicit = atomic_load_explicit((a1 + 144), memory_order_acquire);
  if (explicit)
  {
    ComponentType = a2;
    os_unfair_lock_lock((a1 + 256));
    if (!*(a1 + 280))
    {
      for (i = 0; i != 6; ++i)
      {
        (*(*explicit + 8))(buf, explicit, off_1E871B138[i]);
        re::DynamicArray<re::AssetHandle>::add((a1 + 264), buf);
        re::AssetHandle::~AssetHandle(buf);
        re::AssetHandle::loadAsync((*(a1 + 296) + 24 * *(a1 + 280) - 24));
      }
    }

    os_unfair_lock_unlock((a1 + 256));
    atomic_store(0, (a1 + 144));
    v11 = ComponentType;
  }

  v15 = *(v11 + 40);
  v132 = 0;
  v133 = v15;
  v126 = 0;
  v127 = &v126;
  v128 = 0x3812000000;
  v129 = __Block_byref_object_copy__3;
  v130 = __Block_byref_object_dispose__3;
  v131 = "";
  if (!v15)
  {
    v23 = 0;
    goto LABEL_91;
  }

  if (*(a1 + 128))
  {
    v16 = [MEMORY[0x1E695DF88] dataWithLength:1024];
    v120 = v11;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    Length = CFDataGetLength(v16);
    v119 = v16;
    *buf = &unk_1F5D16DD0;
    *&buf[8] = MutableBytePtr;
    *&buf[16] = 0;
    *&buf[20] = Length;
    v136 = v16;
    v137 = re::encodeFunctionConstants(re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<unsigned char> const&,__CFData *)::$_0::__invoke;
    memset(v138, 0, sizeof(v138));
    re::DynamicString::setCapacity(v138, 0);
    v139 = 6;
    v140 = 0;
    *buf = &unk_1F5D16F10;
    re::snapshot::EncoderOPACK::beginObject(buf);
    v118 = a5;
    re::snapshot::EncoderOPACK::writeInteger(buf, 1);
    re::snapshot::EncoderOPACK::beginDictionary(buf, *(a3 + 28));
    v19 = *(a3 + 32);
    if (v19)
    {
      v20 = 0;
      v21 = *(a3 + 16);
      while (1)
      {
        v22 = *v21;
        v21 += 16;
        if (v22 < 0)
        {
          break;
        }

        if (v19 == ++v20)
        {
          LODWORD(v20) = *(a3 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v20) = 0;
    }

    if (v20 != v19)
    {
      v27 = *(a3 + 16);
      do
      {
        v28 = v27 + (v20 << 6);
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = *(v28 + 24);
        }

        else
        {
          v30 = (v28 + 17);
        }

        if (v29)
        {
          v31 = v29 >> 1;
        }

        else
        {
          v31 = v29 >> 1;
        }

        re::snapshot::EncoderOPACK::serializeString(buf, v30, v31);
        v32 = *(v28 + 40);
        v33 = *(a4 + 2);
        if (v33 <= v32)
        {
          v134 = 0;
          memset(v148, 0, sizeof(v148));
          v51 = MEMORY[0x1E69E9C10];
          v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *location = 136315906;
          *&location[4] = "operator[]";
          v142 = 1024;
          if (v111)
          {
            v112 = 3;
          }

          else
          {
            v112 = 2;
          }

          v143 = 797;
          v144 = 2048;
          v145 = v32;
          v146 = 2048;
          v147 = v33;
          _os_log_send_and_compose_impl(v112, &v134, v148, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", location, 38, v118, &unk_1F5D16DD0);
          _os_crash_msg();
          __break(1u);
LABEL_137:
          if (*(v51 + 16))
          {
            v113 = *(v51 + 24);
          }

          else
          {
            v113 = v51 + 17;
          }

          *buf = 136315138;
          *&buf[4] = v113;
          _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Failed to create shader graph material source for asset (%s)", buf, 0xCu);
LABEL_105:
          if (*(v51 + 16))
          {
            v87 = *(v51 + 24);
          }

          else
          {
            v87 = v51 + 17;
          }

          re::DynamicString::format(buf, "Failed to create shader graph material source for asset (%s)", v86, v87);
          v90 = *buf;
          v91 = *&buf[16];
          v92 = v136;
          *a7 = 0;
          *(a7 + 8) = 100;
          *(a7 + 16) = re::AssetErrorCategory(void)::instance;
          *(a7 + 24) = v90;
          *(a7 + 40) = v91;
          *(a7 + 48) = v92;

LABEL_112:
          goto LABEL_121;
        }

        v34 = *(a4 + 4);
        ComponentCount = MTLDataTypeGetComponentCount();
        ComponentType = MTLDataTypeGetComponentType();
        re::snapshot::EncoderOPACK::beginObject(buf);
        v36 = (v34 + v32);
        re::snapshot::EncoderOPACK::writeInteger(buf, 1);
        re::snapshot::EncoderOPACK::writeInteger(buf, *(v28 + 48));
        re::snapshot::EncoderOPACK::writeInteger(buf, 2);
        if (ComponentType > 36)
        {
          switch(ComponentType)
          {
            case '%':
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v43 = ComponentCount;
                do
                {
                  v44 = *v36++;
                  re::snapshot::EncoderOPACK::writeInteger(buf, v44);
                  --v43;
                }

                while (v43);
              }

              break;
            case ')':
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v47 = ComponentCount;
                do
                {
                  v48 = *v36++;
                  re::snapshot::EncoderOPACK::writeInteger(buf, v48);
                  --v47;
                }

                while (v47);
              }

              break;
            case '5':
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              v39 = ComponentCount;
              if (ComponentCount)
              {
                do
                {
                  v40 = *v36;
                  v36 = (v36 + 1);
                  re::snapshot::EncoderOPACK::operator<<(buf, v40);
                  --v39;
                }

                while (v39);
              }

              break;
            default:
              goto LABEL_58;
          }
        }

        else
        {
          switch(ComponentType)
          {
            case 3:
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v41 = ComponentCount;
                do
                {
                  v42 = *v36;
                  v36 += 2;
                  re::snapshot::EncoderOPACK::operator<<(buf, v42);
                  --v41;
                }

                while (v41);
              }

              break;
            case 29:
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v45 = ComponentCount;
                do
                {
                  v46 = *v36;
                  v36 += 2;
                  re::snapshot::EncoderOPACK::writeInteger(buf, v46);
                  --v45;
                }

                while (v45);
              }

              break;
            case 33:
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v37 = ComponentCount;
                do
                {
                  v38 = *v36;
                  v36 += 2;
                  re::snapshot::EncoderOPACK::writeInteger(buf, LODWORD(v38));
                  --v37;
                }

                while (v37);
              }

              break;
            default:
              goto LABEL_58;
          }
        }

        re::snapshot::EncoderOPACK::endArray(buf, ComponentCount);
LABEL_58:
        re::snapshot::EncoderOPACK::endObject(buf);
        if (*(a3 + 32) <= (v20 + 1))
        {
          v49 = v20 + 1;
        }

        else
        {
          v49 = *(a3 + 32);
        }

        v27 = *(a3 + 16);
        while (v49 - 1 != v20)
        {
          LODWORD(v20) = v20 + 1;
          if ((*(v27 + (v20 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_66;
          }
        }

        LODWORD(v20) = v49;
LABEL_66:
        ;
      }

      while (v20 != v19);
    }

    re::snapshot::EncoderOPACK::endDictionary(buf, *(a3 + 28));
    re::snapshot::EncoderOPACK::endObject(buf);
    *buf = &unk_1F5D16DD0;
    v51 = v120;
    if (v138[0] && (v138[1] & 1) != 0)
    {
      (*(*v138[0] + 40))();
    }

    a3 = re::decodeFunctionConstants(v119, v50);
    v134 = a3;
    v52 = *(a1 + 136);
    if (v52)
    {
      v53 = v119;
      *buf = v53;
      (*(*v52 + 48))(v148, v52, &v133, buf);

      if (LOBYTE(v148[0]) == 1)
      {
        v55 = *(&v148[0] + 1);
        v56 = re::globalAllocators(*(&v148[0] + 1));
        v57 = (*(*v56[2] + 32))(v56[2], 344, 8);
        *buf = v133;
        *location = a3;
        re::sg::CachedCompilationMaterial::CachedCompilationMaterial(v57, v55, buf, location);

        v59 = v127[6];
        v127[6] = v57;
        if (v59)
        {

          v57 = v127[6];
        }

        if (*(v57 + 336))
        {
          v60 = (v57 + 8);
          *a7 = 1;
          *(a7 + 8) = v57;

          goto LABEL_92;
        }

        v66 = *re::assetsLogObjects(v58);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          if (*(v120 + 16))
          {
            v110 = *(v120 + 24);
          }

          else
          {
            v110 = v120 + 17;
          }

          *buf = 136315138;
          *&buf[4] = v110;
          _os_log_error_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_ERROR, "Error creating CachedCompilationMaterial %s", buf, 0xCu);
        }
      }

      else
      {
        v61 = *re::assetsLogObjects(v54);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          if (*(v120 + 16))
          {
            v105 = *(v120 + 24);
          }

          else
          {
            v105 = v120 + 17;
          }

          v109 = re::WrappedError::localizedDescription(v148 + 1);
          *buf = 136315394;
          *&buf[4] = v105;
          *&buf[12] = 2080;
          *&buf[14] = v109;
          _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Error while decoding %s via XPC: %s", buf, 0x16u);
          v51 = v120;
        }
      }
    }

    *&v148[0] = 0;
    a4 = v119;
    *buf = a4;
    v67 = re::shaderGraphHash(&v133, buf, v148);

    v68 = *(a1 + 152);
    if (v68)
    {
      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 3221225472;
      v125[2] = ___ZNK2re21ShaderGraphLoadHelper30decodeAndSpecializeShaderGraphEPKNS_16ShaderGraphAssetERKNS_9HashTableINS_13DynamicStringENS_17ConstantDataEntryENS_4HashIS5_EENS_7EqualToIS5_EELb1ELb0EEERKNS_12DynamicArrayIhEEmy_block_invoke;
      v125[3] = &unk_1E871B170;
      v125[4] = &v126;
      (*(*v68 + 192))(v68, v118, v67, v125);
    }

    if (!v127[6])
    {
      ComponentType = v133;
      v70 = *&v148[0];
      v71 = ComponentType;
      v72 = [ComponentType bytes];
      v73 = [ComponentType length];
      *location = 0;
      os_unfair_lock_lock(a1);
      re::sg::MaterialSourceCache::lookup(buf, (a1 + 8), v72, v70, v73);
      re::ObjCObject::operator=(location, buf);

      os_unfair_lock_unlock(a1);
      v75 = *location;
      if (!*location)
      {
        v19 = *re::assetsLogObjects(v74);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_137;
        }

        goto LABEL_105;
      }

      if (a6)
      {
        if (*(a1 + 384))
        {
          if (objc_opt_respondsToSelector())
          {
            v76 = [v75 containsPreReleaseNodes];
            v77 = (*(**(a1 + 384) + 88))(*(a1 + 384), a6);
            if (!(v77 & 1 | ((v76 & 1) == 0)))
            {
              v102 = *re::assetsLogObjects(v77);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                if (*(v51 + 16))
                {
                  v117 = *(v51 + 24);
                }

                else
                {
                  v117 = v51 + 17;
                }

                *buf = 136315138;
                *&buf[4] = v117;
                _os_log_error_impl(&dword_1E1C61000, v102, OS_LOG_TYPE_ERROR, "Failed to create shader graph material source for asset (%s)", buf, 0xCu);
              }

              if (*(v51 + 16))
              {
                v104 = *(v51 + 24);
              }

              else
              {
                v104 = v51 + 17;
              }

              re::DynamicString::format(buf, "Invalid entitlements to load asset (%s)", v103, v104);
              v106 = *buf;
              v107 = *&buf[16];
              v108 = v136;
              *a7 = 0;
              *(a7 + 8) = 100;
              *(a7 + 16) = re::AssetErrorCategory(void)::instance;
              *(a7 + 24) = v106;
              *(a7 + 40) = v107;
              *(a7 + 48) = v108;

              goto LABEL_112;
            }
          }
        }
      }

      v78 = MEMORY[0x1E69CD9D8];
      v79 = *location;
      v123 = 0;
      v80 = [v78 materialFromSource:v79 functionConstantValues:a3 error:&v123];
      v81 = v123;
      v82 = v80;
      v124 = v82;

      if (v82)
      {
        re::make::shared::object<re::sg::CachedCompilationMaterial,re::sg::Material,re::sg::MaterialSource const&,SGREMaterialFunctionConstantValues * {__strong}&>(buf, &v124, location, &v134);
        v84 = v127[6];
        v127[6] = *buf;
        if (v84)
        {
        }

        v85 = v124;
      }

      else
      {
        v88 = *re::assetsLogObjects(v83);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          if (*(v51 + 16))
          {
            v114 = *(v51 + 24);
          }

          else
          {
            v114 = v51 + 17;
          }

          v115 = [v81 debugDescription];
          if (v115)
          {
            v116 = [v81 debugDescription];
          }

          else
          {
            v116 = @"<nil>";
          }

          *buf = 136315394;
          *&buf[4] = v114;
          *&buf[12] = 2112;
          *&buf[14] = v116;
          _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "Failed to create shader graph material for asset (%s). Error: %@", buf, 0x16u);
          v51 = v120;
          if (v115)
          {
          }
        }

        if (*(v51 + 16))
        {
          v89 = *(v51 + 24);
        }

        else
        {
          v89 = v51 + 17;
        }

        v93 = MEMORY[0x1E696AEC0];
        v94 = [v81 debugDescription];
        if (v94)
        {
          v95 = [v81 debugDescription];
        }

        else
        {
          v95 = @"<nil>";
        }

        v96 = [v93 stringWithFormat:@"Failed to create shader graph material for asset (%s). Error: %@", v89, v95];
        if (v94)
        {
        }

        v97 = v96;
        v98 = [v96 UTF8String];
        v99 = *buf;
        v100 = *&buf[16];
        v101 = v136;
        *a7 = 0;
        *(a7 + 8) = 100;
        *(a7 + 16) = re::AssetErrorCategory(void)::instance;
        *(a7 + 24) = v99;
        *(a7 + 40) = v100;
        *(a7 + 48) = v101;

        v85 = 0;
      }

      if (!v82)
      {
LABEL_121:

        goto LABEL_92;
      }
    }

    v23 = v127[6];
    if (v23)
    {
      v69 = (v23 + 8);
    }

LABEL_91:
    *a7 = 1;
    *(a7 + 8) = v23;
    goto LABEL_92;
  }

  v24 = *re::assetsLogObjects(v15);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    if (*(v11 + 16))
    {
      v26 = *(v11 + 24);
    }

    else
    {
      v26 = v11 + 17;
    }

    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_INFO, "Bypassing shader graph material creation for asset (%s) because there's no render device available", buf, 0xCu);
  }

  if (*(v11 + 16))
  {
    v62 = *(v11 + 24);
  }

  else
  {
    v62 = v11 + 17;
  }

  re::DynamicString::format(buf, "Bypassing shader graph material creation for asset (%s) because there's no render device available", v25, v62);
  v63 = *buf;
  v64 = *&buf[16];
  v65 = v136;
  *a7 = 0;
  *(a7 + 8) = 100;
  *(a7 + 16) = re::AssetErrorCategory(void)::instance;
  *(a7 + 24) = v63;
  *(a7 + 40) = v64;
  *(a7 + 48) = v65;
LABEL_92:
  _Block_object_dispose(&v126, 8);
  if (v132)
  {
  }
}

void sub_1E207BE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a24, 8);
  if (a30)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {

    *(a1 + 48) = 0;
  }
}

id re::decodeFunctionConstants(re *this, const __CFData *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v35 = objc_opt_new();
  v36 = objc_opt_new();
  BytePtr = CFDataGetBytePtr(this);
  Length = CFDataGetLength(this);
  v42[1] = BytePtr;
  v42[2] = Length;
  v43 = -1;
  v44 = 0;
  v45 = 0;
  v47 = 0;
  v42[3] = BytePtr;
  v42[4] = Length + BytePtr;
  v42[0] = &unk_1F5D17190;
  if (re::snapshot::DecoderOPACK::beginObject(v42, 0))
  {
    re::snapshot::DecoderOPACK::beginField(v42, 1, 0);
    v41 = 0;
    v5 = re::snapshot::DecoderOPACK::beginDictionary(v42, &v41);
    if (v5)
    {
      v6 = v41;
      if (v41)
      {
        v7 = 0;
        do
        {
          v39 = 0u;
          v40 = 0u;
          re::DynamicString::setCapacity(&v39, 0);
          v48[0] = 0;
          if (re::snapshot::DecoderOPACK::beginString(v42, v48))
          {
            v8 = v48[0];
            re::DynamicString::resize(&v39, v48[0], 0);
            if (BYTE8(v39))
            {
              v9 = v40;
            }

            else
            {
              v9 = &v39 + 9;
            }

            re::snapshot::BufferDecoder::readRaw(v42, v9, v8);
          }

          re::snapshot::DecoderOPACK::beginObject(v42, 0);
          re::snapshot::DecoderOPACK::beginField(v42, 1, 0);
          re::snapshot::DecoderOPACK::readInteger(v42, 0);
          ComponentCount = MTLDataTypeGetComponentCount();
          ComponentType = MTLDataTypeGetComponentType();
          re::snapshot::DecoderOPACK::endField(v42);
          re::snapshot::DecoderOPACK::beginField(v42, 2, 0);
          v49 = 0u;
          *v48 = 0u;
          v38 = 0;
          re::snapshot::DecoderOPACK::beginArray(v42, &v38);
          if (ComponentCount)
          {
            v12 = v48;
            v13 = ComponentCount;
            do
            {
              if (ComponentType > 36)
              {
                switch(ComponentType)
                {
                  case '%':
                    v21 = [MEMORY[0x1E696AD98] numberWithShort:{re::snapshot::DecoderOPACK::readInteger(v42, 0)}];
                    v22 = *v12;
                    *v12 = v21;

                    break;
                  case ')':
                    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{re::snapshot::DecoderOPACK::readInteger(v42, 0)}];
                    v26 = *v12;
                    *v12 = v25;

                    break;
                  case '5':
                    LOBYTE(v37) = 0;
                    re::snapshot::DecoderOPACK::operator>>(v42, &v37);
                    v16 = [MEMORY[0x1E696AD98] numberWithBool:v37];
                    v17 = *v12;
                    *v12 = v16;

                    break;
                }
              }

              else
              {
                switch(ComponentType)
                {
                  case 3:
                    v37 = 0;
                    re::snapshot::DecoderOPACK::operator>>(v42, &v37);
                    LODWORD(v18) = v37;
                    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
                    v20 = *v12;
                    *v12 = v19;

                    break;
                  case 29:
                    v23 = [MEMORY[0x1E696AD98] numberWithInt:{re::snapshot::DecoderOPACK::readInteger(v42, 0)}];
                    v24 = *v12;
                    *v12 = v23;

                    break;
                  case 33:
                    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{re::snapshot::DecoderOPACK::readInteger(v42, 0)}];
                    v15 = *v12;
                    *v12 = v14;

                    break;
                }
              }

              ++v12;
              --v13;
            }

            while (v13);
          }

          re::snapshot::DecoderOPACK::endArray(v42, &v38);
          re::snapshot::DecoderOPACK::endField(v42);
          re::snapshot::DecoderOPACK::endObject(v42, 0, v27);
          if (BYTE8(v39))
          {
            v28 = v40;
          }

          else
          {
            v28 = &v39 + 9;
          }

          v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v28, v35}];
          if (ComponentCount == 1)
          {
            [v35 setObject:v48[0] forKey:v29];
          }

          else
          {
            v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:ComponentCount];
            [v36 setObject:v30 forKey:v29];
          }

          for (i = 3; i != -1; --i)
          {
          }

          v5 = v39;
          if (v39 && (BYTE8(v39) & 1) != 0)
          {
            v5 = (*(*v39 + 40))();
          }

          ++v7;
        }

        while (v7 != v6);
      }

      re::snapshot::DecoderOPACK::endDictionary(v42, &v41);
    }

    re::snapshot::DecoderOPACK::endField(v42);
    re::snapshot::DecoderOPACK::endObject(v42, 0, v32);
  }

  if (v44)
  {
    v33 = 0;
  }

  else
  {
    v33 = [objc_alloc(MEMORY[0x1E69CD9D0]) initWithScalarFunctionConstants:v35 vectorFunctionConstants:v36];
  }

  return v33;
}

unint64_t re::shaderGraphHash(id *a1, id *a2, unint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  if ([*a1 bytes] && (v7 = objc_msgSend(*a1, "bytes"), (v8 = objc_msgSend(*a1, "length")) != 0))
  {
    MurmurHash3_x64_128(v7, v8, 0, &v13);
    v9 = (v14 - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13;
  }

  else
  {
    v9 = 0;
  }

  if ([*a2 bytes])
  {
    v10 = [*a2 bytes];
    v11 = [*a2 length];
    if (v11)
    {
      MurmurHash3_x64_128(v10, v11, 0, &v13);
      v6 = ((v14 - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13) - 0x61C8864680B583E9;
    }
  }

  if (a3)
  {
    *a3 = v9;
  }

  return ((v9 >> 2) + (v9 << 6) + v6) ^ v9;
}

void ___ZNK2re21ShaderGraphLoadHelper30decodeAndSpecializeShaderGraphEPKNS_16ShaderGraphAssetERKNS_9HashTableINS_13DynamicStringENS_17ConstantDataEntryENS_4HashIS5_EENS_7EqualToIS5_EELb1ELb0EEERKNS_12DynamicArrayIhEEmy_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 8);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 48);
  *(v5 + 48) = a2;
  if (v6)
  {
  }
}

re::snapshot::BufferEncoder *re::snapshot::EncoderOPACK::beginObject(re::snapshot::BufferEncoder *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2 < *(this + 5))
  {
    goto LABEL_2;
  }

  this = re::snapshot::BufferEncoder::grow(this, v2 + 1);
  if (this)
  {
    LODWORD(v2) = *(v1 + 4);
LABEL_2:
    v3 = *(v1 + 1);
    *(v1 + 4) = v2 + 1;
    *(v3 + v2) = -17;
  }

  return this;
}

re::snapshot::BufferEncoder *re::snapshot::EncoderOPACK::endObject(re::snapshot::BufferEncoder *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2 < *(this + 5))
  {
    goto LABEL_2;
  }

  this = re::snapshot::BufferEncoder::grow(this, v2 + 1);
  if (this)
  {
    LODWORD(v2) = *(v1 + 4);
LABEL_2:
    v3 = *(v1 + 1);
    *(v1 + 4) = v2 + 1;
    *(v3 + v2) = 3;
  }

  return this;
}

UInt8 *re::encodeFunctionConstants(re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<unsigned char> const&,__CFData *)::$_0::__invoke(const __CFData *a1, uint64_t a2, CFIndex a3)
{
  Length = CFDataGetLength(a1);
  if (2 * Length <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 2 * Length;
  }

  CFDataSetLength(a1, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  CFDataGetLength(a1);
  return MutableBytePtr;
}

uint64_t re::snapshot::BufferEncoder::grow(re::snapshot::BufferEncoder *this, unint64_t a2)
{
  v4 = (*(this + 4))(*(this + 3), *(this + 1), a2);
  *(this + 1) = v4;
  *(this + 5) = v5;
  if (v4)
  {
    v6 = a2 > v5;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    re::snapshot::BufferEncoder::error(this, "couldn't grow buffer to %zu bytes (buffer = %p, capacity = %d)", a2, v4, v5);
  }

  return v7;
}

BOOL re::snapshot::DecoderOPACK::beginField(re::snapshot::DecoderOPACK *this, int a2, const char *a3)
{
  Integer = *(this + 10);
  if (Integer < a2)
  {
    while (1)
    {
      v6 = *(this + 3);
      if (v6 >= *(this + 4))
      {
        v7 = 0;
      }

      else
      {
        *(this + 3) = v6 + 1;
        v7 = *v6;
      }

      re::snapshot::DecoderOPACK::skip(this, v7, a3);
      v8 = *(this + 3);
      if (v8 >= *(this + 4))
      {
        break;
      }

      v9 = *v8;
      if (v9 == 3)
      {
        break;
      }

      if ((v9 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(this, 0x7FFFFFFFLL);
      }

      else
      {
        *(this + 3) = v8 + 1;
        Integer = v9 - 8;
      }

      *(this + 10) = Integer;
      if (Integer >= a2)
      {
        return Integer == a2;
      }
    }

    Integer = 0x7FFFFFFF;
    *(this + 10) = 0x7FFFFFFF;
  }

  return Integer == a2;
}

uint64_t re::snapshot::DecoderOPACK::endField(re::snapshot::DecoderOPACK *this)
{
  v2 = *(this + 3);
  if (v2 >= *(this + 4) || (v3 = *v2, v3 == 3))
  {
    result = 0x7FFFFFFFLL;
  }

  else if ((v3 - 7) > 0x28)
  {
    result = re::snapshot::DecoderOPACK::readInteger(this, 0x7FFFFFFFLL);
  }

  else
  {
    *(this + 3) = v2 + 1;
    result = (v3 - 8);
  }

  *(this + 10) = result;
  return result;
}

BOOL re::snapshot::BufferDecoder::readRaw(re::snapshot::BufferDecoder *this, void *__dst, size_t __len)
{
  v6 = *(this + 3);
  v7 = *(this + 4) - v6;
  if (v7 < __len)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", __len, v7);
  }

  else
  {
    if (__len)
    {
      memmove(__dst, v6, __len);
      v6 = *(this + 3);
    }

    *(this + 3) = &v6[__len];
  }

  return v7 >= __len;
}

void re::make::shared::object<re::sg::CachedCompilationMaterial,re::sg::Material,re::sg::MaterialSource const&,SGREMaterialFunctionConstantValues * {__strong}&>(re *a1, uint64_t *a2, id *a3, id *a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 344, 8);
  v10 = *a4;
  re::sg::CachedCompilationMaterial::CachedCompilationMaterial(v9, a2, a3, &v10);
  *a1 = v9;
}

void sub_1E207D09C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id re::anonymous namespace::decodeError(re::_anonymous_namespace_ *this, NSString *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = *re::assetTypesLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v2;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "DrawableQueue payload decode error: %{public}@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v9 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v5];

  return v6;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = *re::assetTypesLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v2;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Mesh payload decode error: %{public}@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v9 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v5];

  return v6;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = *re::assetTypesLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v2;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Direct Resource payload decode error: %{public}@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v9 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v5];

  return v6;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = *re::assetTypesLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v2;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Mesh payload decode error: %{public}@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v9 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v5];

  return v6;
}

void re::DrawableQueuePayload::make(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, REDrawableQueuePayload **a9@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v19, v18);
  if (a5)
  {
    v20 = v19;
    v21 = a5;
    do
    {
      v22 = *a4++;
      *v20 = v22;
      v20 += 8;
      --v21;
    }

    while (v21);
  }

  v23 = [REDrawableQueuePayload alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:a5];
  v25 = [(REDrawableQueuePayload *)v23 initWithWidth:a1 height:a2 pixelFormat:a3 textureHandles:v24 allowPixelFormatConversion:a6 machSemaphore:a7 queueStateShmem:a8 queueStateLength:336];
  *a9 = v25;
}

uint64_t re::DrawableQueuePayload::drawableCount(id *this)
{
  v1 = [*this textureHandles];
  v2 = [v1 count];

  return v2;
}

void *re::DrawableQueuePayload::textureHandle(id *this, int a2)
{
  v3 = [*this textureHandles];
  v4 = [v3 objectAtIndexedSubscript:a2];

  return v4;
}

void *re::DrawableQueuePayload::mapQueueStateShmem(id *this)
{
  region = 0;
  v1 = [*this queueStateShmem];
  v2 = xpc_shmem_map(v1, &region);

  if (!v2)
  {
    return 0;
  }

  if (v2 > 0x14F)
  {
    return region;
  }

  re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) ", "length >= sizeof(SharedRingBuffer)", "mapQueueStateShmem", 298);
  result = _os_crash("assertion failure: (length >= sizeof(SharedRingBuffer)) ");
  __break(1u);
  return result;
}

void re::introspect_AcousticMeshAssetMeshType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE197AD8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE197AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197AE0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE197B28, "AcousticMeshAssetMeshType", 4, 4, 1, 1);
      qword_1EE197B28 = &unk_1F5D0C658;
      qword_1EE197B68 = &re::introspect_AcousticMeshAssetMeshType(BOOL)::enumTable;
      dword_1EE197B38 = 9;
      __cxa_guard_release(&qword_1EE197AE0);
    }

    if (_MergedGlobals_84)
    {
      break;
    }

    _MergedGlobals_84 = 1;
    re::IntrospectionRegistry::add(&qword_1EE197B28, a2);
    v33 = 0x7DF6D808D13ABC8ELL;
    v34 = "AcousticMeshAssetMeshType";
    v38 = 208862;
    v39 = "int";
    v4 = v37[0];
    v5 = v37[1];
    if (v38)
    {
      if (v38)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE197B68;
      v38 = v4;
      v39 = v5;
      re::TypeBuilder::beginEnumType(v37, &v33, 1, 1, &v38);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v36.var0 = 2 * v11;
            v36.var1 = v10;
            re::TypeBuilder::addEnumConstant(v37, v15, &v36);
            if (*&v36.var0)
            {
              if (*&v36.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v36.var0 = 2 * v20;
              v36.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v37, v24, &v36);
              if (*&v36.var0)
              {
                if (*&v36.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v37, v26);
      xmmword_1EE197B48 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v32);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE197AD8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Empty";
      qword_1EE197B18 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "GeomMesh";
      qword_1EE197B20 = v31;
      __cxa_guard_release(&qword_1EE197AD8);
    }
  }
}