void sub_1E20388C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::~DynamicInlineArray(&STACK[0x3C0]);
  re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::clear(&a65);
  re::DynamicInlineArray<re::VideoPSEConfig,2ul>::~DynamicInlineArray(&STACK[0x200]);
  re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::~DynamicInlineArray(&STACK[0x270]);
  re::DynamicInlineArray<re::VideoHDRConfig,2ul>::~DynamicInlineArray(&STACK[0x2B0]);

  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&STACK[0x5E0]);
  _Unwind_Resume(a1);
}

void re::deinitVideoPresentationGroup(uint64_t a1)
{
  v2 = *(MEMORY[0x1E6960C70] + 16);
  *a1 = *MEMORY[0x1E6960C70];
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  ++*(a1 + 32);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a1 + 48);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a1 + 80);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a1 + 352);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(a1 + 624);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(a1 + 896);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a1 + 1168);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a1 + 1200);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a1 + 1232);
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(a1 + 1504);
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(a1 + 1536);
  if (*(a1 + 1568))
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 1568));
  }

  *(a1 + 1568) = 0;

  *(a1 + 1576) = 0;
  *(a1 + 1600) = 0;
  ++*(a1 + 1608);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(a1 + 1648);
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  v3 = MEMORY[0x1E695F058];
  *(a1 + 1728) = 0u;
  v4 = v3[1];
  *(a1 + 1744) = *v3;
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1760) = v4;
  *(a1 + 1776) = 0;
  *(a1 + 1780) = -1;
  *(a1 + 1778) = 1;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(a1 + 1792);
  *(a1 + 1824) = 0;
  ++*(a1 + 1832);
  *(a1 + 1848) = 0;
  ++*(a1 + 1856);
  *(a1 + 1872) = 0;
  ++*(a1 + 1880);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(a1 + 1952);
  *(a1 + 1584) = 0;
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(a1 + 2000);
  *(a1 + 2048) = 0;
  ++*(a1 + 2056);
  *(a1 + 2072) = 0;
  *(a1 + 2080) = 1;
  *(a1 + 2088) = 0;
}

void re::DynamicInlineArray<re::VideoObject<re::VideoColorTransformBase>,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = 8 * a2 + 16;
    v6 = a2;
    do
    {
      v7 = a1 + 8 * v6;
      if (*(v7 + 16))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + v5));
        v4 = *a1;
      }

      *(v7 + 16) = 0;
      ++v6;
      v5 += 8;
    }

    while (v6 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return;
    }

    bzero((a1 + 8 * v4 + 16), 8 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 16 * *a1;
    v3 = (a1 + 24);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*v3);
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

unint64_t *re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[](unint64_t *a1, unint64_t a2)
{
  if (*a1 > a2)
  {
    return &a1[a2 + 2];
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, *a1, v2, v3);
  result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v5, v6);
  __break(1u);
  return result;
}

{
  if (*a1 > a2)
  {
    return &a1[a2 + 2];
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, a2, *a1, v2, v3);
  result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v5, v6);
  __break(1u);
  return result;
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = (a1 + 16);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v3);
      }

      *v3++ = 0;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = 16 * a2 + 24;
    v6 = a2;
    do
    {
      v7 = *(a1 + v5);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        v4 = *a1;
      }

      ++v6;
      v5 += 16;
    }

    while (v6 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return;
    }

    bzero((a1 + 16 * v4 + 16), 16 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = 16 * a2 + 24;
    v6 = a2;
    do
    {
      v7 = *(a1 + v5);
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
        v4 = *a1;
      }

      ++v6;
      v5 += 16;
    }

    while (v6 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return;
    }

    bzero((a1 + 16 * v4 + 16), 16 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

BOOL re::CMTimeCompareWithThreshold(CMTime *this, CMTime *a2, CMTime *a3, double a4)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(&v15, 0, sizeof(v15));
  lhs = *this;
  rhs = *a2;
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeAbsoluteValue(&v15, &time);
  time = v15;
  Seconds = CMTimeGetSeconds(&time);
  value = this->value;
  flags = this->flags;
  timescale = this->timescale;
  epoch = this->epoch;
  v20 = a2->value;
  v9 = a2->flags;
  v21 = a2->timescale;
  v10 = a2->epoch;
  if ((flags & 0x1F) == 3 || (v9 & 0x1F) == 3)
  {
    memset(&time, 0, sizeof(time));
    v11 = this->value;
    v16.epoch = v10;
    rhs.value = v11;
    rhs.timescale = this->timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    v16.value = a2->value;
    v16.timescale = a2->timescale;
    v16.flags = v9;
    CMTimeSubtract(&lhs, &rhs, &v16);
    CMTimeAbsoluteValue(&time, &lhs);
    lhs = time;
    CMTimeMake(&rhs, 1, 1000000000);
    if (CMTimeCompare(&lhs, &rhs) <= 0)
    {
      return 1;
    }
  }

  time.value = value;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  lhs.value = v20;
  lhs.timescale = v21;
  lhs.flags = v9;
  lhs.epoch = v10;
  v12 = CMTimeCompare(&time, &lhs);
  return Seconds < 0.001 || v12 >= 0;
}

void re::dumpHDRFrameToFile(uint64_t *a1, void *a2, unsigned __int8 *a3, __int128 *a4, char a5, void *a6, double a7)
{
  v81[2] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v64 = 0;
  v65 = &v64;
  v66 = 0x5012000000;
  v67 = __Block_byref_object_copy__2;
  v68 = __Block_byref_object_dispose__2;
  v69 = "";
  v70 = 0;
  v71 = 0;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy(&v70, a1);
  v13 = v65;
  v15 = (v65 + 6);
  v14 = v65[6];
  if (v14)
  {
    i = 0;
    v17 = 0;
    v18 = 0;
    v19 = v65 + 8;
    while (1)
    {
      v20 = *v15;
      if (*v15 <= i)
      {
        break;
      }

      Width = v19[i];
      if (Width)
      {
        Width = CVPixelBufferGetWidth(Width);
        v20 = *v15;
      }

      if (v20 <= i)
      {
        goto LABEL_63;
      }

      if (v17 <= Width)
      {
        v17 = Width;
      }

      Height = v19[i];
      if (Height)
      {
        Height = CVPixelBufferGetHeight(Height);
      }

      if (v18 <= Height)
      {
        v18 = Height;
      }

      if (v14 == ++i)
      {
        goto LABEL_16;
      }
    }

    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, i, v20);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v47, v51);
    __break(1u);
LABEL_63:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, i, v20);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v48, v52);
    __break(1u);
LABEL_64:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, i, v28);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v49, v53);
    __break(1u);
LABEL_65:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, i, v39);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v50, v54);
    __break(1u);
  }

  v18 = 0;
  v17 = 0;
LABEL_16:
  v23 = *a2;
  if (*a2)
  {
    v24 = a2 + 7;
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      if (v17 >= v25)
      {
        v17 = v25;
      }

      if (v18 >= v26)
      {
        v18 = v26;
      }

      v24 += 4;
      --v23;
    }

    while (v23);
  }

  if (!v14)
  {
LABEL_28:
    v55 = v11;
    if (a3[112])
    {
      v30 = *a3;
      v58 = re::VideoHDRDefaults::overridePixelFormat(1882468912);
      if (v30 > 1)
      {
        if (v30 == 2 || v30 == 3)
        {
          v31 = 9;
        }

        else
        {
          v31 = 2;
        }

        goto LABEL_41;
      }

      if (v30)
      {
        v31 = 12;
LABEL_41:
        v34 = re::VideoHDRDefaults::overrideColorPrimaries(v31);
        v35 = re::VideoHDRDefaults::overrideTransferFunction(0xD);
        v36 = re::VideoHDRDefaults::overrideYCbCrMatrix(1);
        v81[0] = 0;
        v81[1] = 0;
        v75 = 0;
        memset(v74, 0, sizeof(v74));
        v76 = 0x7FFFFFFFLL;
        v77 = 0;
        v78 = 514;
        v79 = 2;
        v80 = 0;
        if (v14)
        {
          v37 = v36;
          for (i = 0; i != v14; ++i)
          {
            re::VideoSimplePixelBufferAllocator::createPixelBuffer(&pixelTransferSessionOut, buf, v17, v18, v58, v34, v35, v37, 1, 0x400u, 0x10u, 0, 0);
            v81[i] = pixelTransferSessionOut;
            pixelTransferSessionOut = 0;
            VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
            if (pixelTransferSessionOut)
            {
              v39 = *v15;
              if (*v15 <= i)
              {
                goto LABEL_65;
              }

              VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v13[i + 8], v81[i]);
              CFRelease(pixelTransferSessionOut);
            }
          }
        }

        re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v15);
        v11 = v55;
        if (v14)
        {
          v41 = v13[6];
          v42 = v81;
          do
          {
            re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v41, v40);
            v43 = v13[6];
            v13[v43 + 8] = *v42;
            *v42++ = 0;
            v41 = v43 + 1;
            v13[6] = v43 + 1;
            ++*(v13 + 14);
            --v14;
          }

          while (v14);
        }

        re::VideoPixelBufferPool::~VideoPixelBufferPool(v74);
        for (j = 1; j != -1; --j)
        {
          if (v81[j])
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v81[j]);
          }

          v81[j] = 0;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v58 = re::VideoHDRDefaults::overridePixelFormat(1882468912);
    }

    v31 = 1;
    goto LABEL_41;
  }

  i = 0;
  v27 = (v13 + 8);
  while (1)
  {
    v28 = *v15;
    if (*v15 <= i)
    {
      goto LABEL_64;
    }

    v29 = re::VideoPixelBufferBase::protectionOptions(v27);
    if (v29)
    {
      break;
    }

    ++i;
    ++v27;
    if (v14 == i)
    {
      goto LABEL_28;
    }
  }

  v32 = *re::videoLogObjects(v29);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Unable to dump protected content", buf, 2u);
  }

  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v15);
LABEL_54:
  if (v11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    v45 = a4[1];
    v60 = *a4;
    block[2] = ___ZN2re18dumpHDRFrameToFileERNS_18DynamicInlineArrayINS_11VideoObjectINS_20VideoPixelBufferBaseEEELm2EEERKNS0_INS_7Vector4IfEELm2EEERKNS_12ColorManagerENS_4ecs211HDRDumpInfoEdbPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
    block[3] = &unk_1F5CC4B68;
    block[4] = &v64;
    v63 = a5;
    v61 = v45;
    re::DynamicString::DynamicString(v62, (a4 + 2));
    *&v62[4] = a7;
    dispatch_async(v11, block);
    if (v62[0])
    {
      if (v62[1])
      {
        (*(*v62[0] + 40))();
      }

      memset(v62, 0, 32);
    }
  }

  else
  {
    v46 = *re::videoLogObjects(v33);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "VideoAsset.backgroundWorkQueue is invalid", buf, 2u);
    }
  }

  _Block_object_dispose(&v64, 8);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&v70);
}

void sub_1E2039A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  re::VideoPixelBufferPool::~VideoPixelBufferPool(&a52);
  v54 = 8;
  v55 = v52 - 136;
  while (1)
  {
    if (*(v55 + v54))
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v55 + v54));
    }

    *(v55 + v54) = 0;
    v54 -= 8;
    if (v54 == -8)
    {
      _Block_object_dispose(&a36, 8);
      re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&a42);

      _Unwind_Resume(a1);
    }
  }
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = 8 * a2 + 16;
    v6 = a2;
    do
    {
      v7 = a1 + 8 * v6;
      if (*(v7 + 16))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + v5));
        v4 = *a1;
      }

      *(v7 + 16) = 0;
      ++v6;
      v5 += 8;
    }

    while (v6 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return;
    }

    bzero((a1 + 8 * v4 + 16), 8 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = a2 - *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v6 = (a1 + 24 * a2 + 24);
    v7 = a2;
    do
    {
      if (*v6)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v6);
      }

      *v6 = 0;
      if (*(v6 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v6 - 1);
      }

      *(v6 - 1) = 0;
      ++v7;
      v6 += 3;
    }

    while (v7 < *a1);
  }

  else
  {
    if (a2 > 2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return;
    }

    v5 = a1 + 24 * *a1 + 16;
    do
    {
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::SharedPtr<re::VideoASEFrameMeasurement>,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = a2;
    do
    {
      v6 = a1 + 8 * v5;
      v7 = *(v6 + 16);
      if (v7)
      {

        *(v6 + 16) = 0;
        v4 = *a1;
      }

      ++v5;
    }

    while (v5 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return;
    }

    bzero((a1 + 8 * v4 + 16), 8 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<float,2ul>::resize(uint64_t a1, unint64_t a2)
{
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return;
    }

    bzero((a1 + 4 * *a1 + 12), 4 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

uint64_t re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::resize(uint64_t result, unint64_t a2)
{
  v2 = a2 - *result;
  if (a2 <= *result)
  {
    if (a2 >= *result)
    {
      return result;
    }
  }

  else
  {
    if (a2 > 2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return result;
    }

    v3 = (result + 32 * *result + 40);
    do
    {
      *(v3 - 24) = 0;
      *v3 = 0;
      v3 += 32;
      --v2;
    }

    while (v2);
  }

  *result = a2;
  ++*(result + 8);
  return result;
}

void re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::add(uint64_t a1, uint64_t a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    v5 = a1 + (*a1 << 7);
    *(v5 + 16) = *a2;
    *(v5 + 32) = v4;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    *(v5 + 89) = *(a2 + 73);
    *(v5 + 64) = v7;
    *(v5 + 80) = v8;
    *(v5 + 48) = v6;
    *(v5 + 112) = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(v5 + 112, (v5 + 112), *(a2 + 96));
    v9 = 0;
    v10 = a2 + 104;
    do
    {
      *(v5 + v9 + 120) = 0;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(v5 + v9 + 120, (v5 + v9 + 120), *(v10 + v9));
      v9 += 8;
    }

    while (v9 != 24);
    ++*a1;
    ++*(a1 + 8);
  }
}

void sub_1E2039FA8(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = (v2 + v3 + v4 + 112);
    v7 = -v4;
    do
    {
      if (*v6)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v6);
      }

      *v6-- = 0;
      v7 += 8;
    }

    while (v7);
  }

  if (*v1)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v1);
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

void re::VideoPixelBufferTextures::~VideoPixelBufferTextures(__CVBuffer **this)
{
  for (i = 15; i != 12; --i)
  {
    if (this[i])
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&this[i]);
    }

    this[i] = 0;
  }

  if (this[12])
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 12);
  }

  this[12] = 0;
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = (a1 + 16);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3);
      }

      *v3++ = 0;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

unint64_t *re::DynamicInlineArray<re::VideoColorTags,2ul>::resize(unint64_t *result, unint64_t a2)
{
  v3 = result;
  if (a2 <= *result)
  {
    if (a2 >= *result)
    {
      return result;
    }
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return result;
    }

    result = memset(result + 3 * *result + 12, 2, 3 * (a2 - *result));
  }

  *v3 = a2;
  ++*(v3 + 2);
  return result;
}

void re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = a1 + (*a1 << 7) + 16;
    v3 = a1 + 16;
    v4 = a1 + 136;
    do
    {
      for (i = 0; i != -24; i -= 8)
      {
      }

      if (*(v3 + 96))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v3 + 96));
      }

      *(v3 + 96) = 0;
      v3 += 128;
      v4 += 128;
    }

    while (v3 != v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = a2 - *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v10 = a1 + (a2 << 8);
    v11 = v10 + 264;
    v12 = v10 + 136;
    v13 = a2;
    do
    {
      v14 = 0;
      v15 = a1 + 16 + (v13 << 8);
      do
      {

        v14 -= 8;
      }

      while (v14 != -24);
      if (*(v15 + 224))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v15 + 224));
      }

      v16 = 0;
      *(v15 + 224) = 0;
      do
      {

        v16 -= 8;
      }

      while (v16 != -24);
      v18 = *(v15 + 96);
      v17 = (v15 + 96);
      if (v18)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v17);
      }

      *v17 = 0;
      ++v13;
      v11 += 256;
      v12 += 256;
    }

    while (v13 < *a1);
  }

  else
  {
    if (a2 > 2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return;
    }

    v5 = a1 + (*a1 << 8) + 144;
    v6 = MEMORY[0x1E695F060];
    v7 = MEMORY[0x1E695F058];
    do
    {
      *(v5 - 32) = 0uLL;
      *(v5 - 16) = 0uLL;
      *(v5 - 64) = 0uLL;
      *(v5 - 48) = 0uLL;
      *(v5 - 96) = 0uLL;
      *(v5 - 80) = 0uLL;
      *(v5 - 128) = 0uLL;
      *(v5 - 112) = 0uLL;
      *(v5 - 128) = 514;
      *(v5 - 126) = 2;
      *(v5 - 120) = *v6;
      v8 = *v7;
      *(v5 - 88) = v7[1];
      *(v5 - 104) = v8;
      *(v5 - 64) = 0;
      *(v5 - 32) = 0uLL;
      *(v5 - 16) = 0uLL;
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
      *(v5 + 32) = 0uLL;
      *(v5 + 48) = 0uLL;
      *(v5 + 64) = 0uLL;
      *(v5 + 80) = 0uLL;
      *(v5 + 2) = 2;
      *v5 = 514;
      *(v5 + 8) = *v6;
      v9 = *v7;
      *(v5 + 40) = v7[1];
      *(v5 + 24) = v9;
      *(v5 + 64) = 0;
      *(v5 + 96) = 0uLL;
      *(v5 + 112) = 0uLL;
      v5 += 256;
      --v4;
    }

    while (v4);
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = a2 - *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v9 = a1 + (a2 << 7) + 136;
    v10 = a2;
    do
    {
      v11 = 0;
      v12 = a1 + 16 + (v10 << 7);
      do
      {

        v11 -= 8;
      }

      while (v11 != -24);
      v14 = *(v12 + 96);
      v13 = (v12 + 96);
      if (v14)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v13);
      }

      *v13 = 0;
      ++v10;
      v9 += 128;
    }

    while (v10 < *a1);
  }

  else
  {
    if (a2 > 2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return;
    }

    v5 = (a1 + (*a1 << 7) + 80);
    v6 = MEMORY[0x1E695F060];
    v7 = MEMORY[0x1E695F058];
    do
    {
      v5[2] = 0uLL;
      v5[3] = 0uLL;
      *v5 = 0uLL;
      v5[1] = 0uLL;
      *(v5 - 2) = 0uLL;
      *(v5 - 1) = 0uLL;
      *(v5 - 4) = 0uLL;
      *(v5 - 3) = 0uLL;
      *(v5 - 32) = 514;
      *(v5 - 62) = 2;
      *(v5 - 56) = *v6;
      v8 = *v7;
      *(v5 - 24) = v7[1];
      *(v5 - 40) = v8;
      *v5 = 0;
      v5[2] = 0uLL;
      v5[3] = 0uLL;
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  *a1 = a2;
  ++*(a1 + 8);
}

uint64_t re::Optional<re::VideoTransformSurfaceConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
LABEL_6:
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a1 + 24) = *(a2 + 24);
      return a1;
    }

    v3 = (a1 + 16);
    v4 = (a1 + 8);
    if (*(a1 + 16))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
    }

    *v3 = 0;
    if (*v4)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 8));
    }

    *(a1 + 8) = 0;
    *a1 = 0;
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 16) = 0;
    goto LABEL_6;
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 8, (a1 + 8), *(a2 + 8));
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 16, (a1 + 16), *(a2 + 16));
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      v4 = (a1 + 16);
      v5 = (a1 + 8);
      if (*(a1 + 16))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
      }

      *v4 = 0;
      if (*v5)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 8));
      }

      *(a1 + 8) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 8, (a1 + 8), *(a2 + 8));
    *(a1 + 16) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 16, (a1 + 16), *(a2 + 16));
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

uint64_t re::Optional<re::VideoTransformSurfaceConfig>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 16);
    v3 = (a1 + 8);
    if (*(a1 + 16))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
    }

    *v2 = 0;
    if (*v3)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 8));
    }

    *v3 = 0;
  }

  return a1;
}

uint64_t re::Optional<re::VideoHDRConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
LABEL_6:
      v3 = *(a2 + 40);
      v4 = *(a2 + 56);
      *(a1 + 65) = *(a2 + 65);
      *(a1 + 56) = v4;
      *(a1 + 40) = v3;
      return a1;
    }

    v5 = (a1 + 32);
    if (*(a1 + 32))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v5);
    }

    v6 = *(a1 + 24);
    *(a1 + 32) = 0;
    if (v6)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 24));
    }

    *(a1 + 24) = 0;
    if (*(a1 + 16))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
    }

    *(a1 + 16) = 0;
    *a1 = 0;
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0u;
    goto LABEL_6;
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 16, (a1 + 16), *(a2 + 16));
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 24, (a1 + 24), *(a2 + 24));
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 32, (a1 + 32), *(a2 + 32));
      v4 = *(a2 + 40);
      v5 = *(a2 + 56);
      *(a1 + 65) = *(a2 + 65);
      *(a1 + 56) = v5;
      *(a1 + 40) = v4;
    }

    else
    {
      v8 = (a1 + 32);
      if (*(a1 + 32))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v8);
      }

      v9 = *(a1 + 24);
      *(a1 + 32) = 0;
      if (v9)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 24));
      }

      *(a1 + 24) = 0;
      if (*(a1 + 16))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
      }

      *(a1 + 16) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 16, (a1 + 16), *(a2 + 16));
    *(a1 + 24) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 24, (a1 + 24), *(a2 + 24));
    *(a1 + 32) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 32, (a1 + 32), *(a2 + 32));
    v6 = *(a2 + 40);
    v7 = *(a2 + 56);
    *(a1 + 65) = *(a2 + 65);
    *(a1 + 56) = v7;
    *(a1 + 40) = v6;
  }

  return a1;
}

uint64_t re::Optional<re::VideoHDRConfig>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 32);
    v3 = (a1 + 16);
    if (*(a1 + 32))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v2);
    }

    v4 = *(a1 + 24);
    *(a1 + 32) = 0;
    if (v4)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 24));
    }

    *(a1 + 24) = 0;
    if (*v3)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
    }

    *v3 = 0;
  }

  return a1;
}

uint64_t re::Optional<re::VideoHistogramConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v4 = *(a1 + 16);
      *(a1 + 8) = v3;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    else
    {
      v5 = *(a1 + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      v3 = *(a2 + 16);
      if (v3)
      {
        atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
      }

      v5 = *(a1 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v3;
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v7 = *(a1 + 16);
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v6 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }
  }

  return a1;
}

uint64_t re::Optional<re::VideoPSEConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v5 = *(a1 + 16);
      *(a1 + 8) = v4;
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 32) = 0;
      goto LABEL_8;
    }

    v6 = (a1 + 40);
    if (*(a1 + 40))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v6);
    }

    v7 = *(a1 + 32);
    *(a1 + 40) = 0;
    if (v7)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 32));
    }

    *(a1 + 32) = 0;
    v8 = *(a1 + 16);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    *a1 = 0;
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 40) = 0;
LABEL_8:
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      v5 = *(a2 + 8);
      v4 = *(a2 + 16);
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
      }

      v6 = *(a1 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v4;
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      *(a1 + 24) = *(a2 + 24);
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 32, (a1 + 32), *(a2 + 32));
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 40, (a1 + 40), *(a2 + 40));
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      v8 = (a1 + 40);
      if (*(a1 + 40))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v8);
      }

      v9 = *(a1 + 32);
      *(a1 + 40) = 0;
      if (v9)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 32));
      }

      *(a1 + 32) = 0;
      v10 = *(a1 + 16);
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v7 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
    }

    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 32, (a1 + 32), *(a2 + 32));
    *(a1 + 40) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 40, (a1 + 40), *(a2 + 40));
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t re::Optional<re::VideoPSEConfig>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 40);
    if (*(a1 + 40))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v2);
    }

    v3 = *(a1 + 32);
    *(a1 + 40) = 0;
    if (v3)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 32));
    }

    *(a1 + 32) = 0;
    v4 = *(a1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

uint64_t re::Optional<re::VideoMipGenConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v4 = 0;
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
      v6 = *(a2 + 40);
      v7 = *(a2 + 56);
      v8 = *(a2 + 72);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 72) = v8;
      *(a1 + 56) = v7;
      *(a1 + 40) = v6;
      *(a1 + 104) = *(a2 + 104);
      *(a2 + 104) = 0;
      v9 = a1 + 112;
      v10 = a2 + 112;
      do
      {
        v11 = *(v10 + v4);
        *(v10 + v4) = 0;
        v12 = *(v9 + v4);
        *(v9 + v4) = v11;

        v4 += 8;
      }

      while (v4 != 24);
      v13 = 0;
      v14 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 136) = v14;
      v15 = *(a2 + 168);
      v16 = *(a2 + 184);
      v17 = *(a2 + 200);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 200) = v17;
      *(a1 + 184) = v16;
      *(a1 + 168) = v15;
      *(a1 + 232) = *(a2 + 232);
      *(a2 + 232) = 0;
      v18 = a1 + 240;
      v19 = a2 + 240;
      do
      {
        v20 = *(v19 + v13);
        *(v19 + v13) = 0;
        v21 = *(v18 + v13);
        *(v18 + v13) = v20;

        v13 += 8;
      }

      while (v13 != 24);
    }

    else
    {
      for (i = 256; i != 232; i -= 8)
      {
      }

      if (*(a1 + 232))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 232));
      }

      *(a1 + 232) = 0;
      v37 = 128;
      do
      {
        v38 = v37 - 8;

        v37 = v38;
      }

      while (v38 != 104);
      if (*(a1 + 104))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 104));
      }

      *(a1 + 104) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    v22 = 0;
    *a1 = 1;
    v23 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v23;
    v24 = *(a2 + 40);
    v25 = *(a2 + 56);
    v26 = *(a2 + 72);
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 72) = v26;
    *(a1 + 56) = v25;
    *(a1 + 40) = v24;
    *(a1 + 104) = 0;
    *(a1 + 104) = *(a2 + 104);
    *(a2 + 104) = 0;
    v27 = a2 + 112;
    do
    {
      v28 = *(v27 + v22);
      *(v27 + v22) = 0;
      *(a1 + 112 + v22) = v28;
      v22 += 8;
    }

    while (v22 != 24);
    v29 = 0;
    v30 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v30;
    v31 = *(a2 + 168);
    v32 = *(a2 + 184);
    v33 = *(a2 + 200);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 200) = v33;
    *(a1 + 184) = v32;
    *(a1 + 168) = v31;
    *(a1 + 232) = 0;
    *(a1 + 232) = *(a2 + 232);
    *(a2 + 232) = 0;
    v34 = a2 + 240;
    do
    {
      v35 = *(v34 + v29);
      *(v34 + v29) = 0;
      *(a1 + 240 + v29) = v35;
      v29 += 8;
    }

    while (v29 != 24);
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
      v5 = *(a2 + 40);
      v6 = *(a2 + 56);
      v7 = *(a2 + 72);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 72) = v7;
      *(a1 + 56) = v6;
      *(a1 + 40) = v5;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 104, (a1 + 104), *(a2 + 104));
      v8 = 0;
      v9 = (a1 + 112);
      do
      {
        objc_storeStrong(v9++, *(a2 + 112 + 8 * v8++));
      }

      while (v8 != 3);
      v10 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 136) = v10;
      v11 = *(a2 + 168);
      v12 = *(a2 + 184);
      v13 = *(a2 + 200);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 200) = v13;
      *(a1 + 184) = v12;
      *(a1 + 168) = v11;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 232, (a1 + 232), *(a2 + 232));
      v14 = 0;
      v15 = (a1 + 240);
      v16 = a2 + 240;
      do
      {
        objc_storeStrong(v15++, *(v16 + 8 * v14++));
      }

      while (v14 != 3);
    }

    else
    {
      for (i = 256; i != 232; i -= 8)
      {
      }

      if (*(a1 + 232))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 232));
      }

      *(a1 + 232) = 0;
      v33 = 128;
      do
      {
        v34 = v33 - 8;

        v33 = v34;
      }

      while (v34 != 104);
      if (*(a1 + 104))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 104));
      }

      *(a1 + 104) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v17 = *(a2 + 40);
    v18 = *(a2 + 56);
    v19 = *(a2 + 72);
    v20 = *(a2 + 81);
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    *(a1 + 104) = 0;
    *(a1 + 8) = v21;
    *(a1 + 24) = v22;
    *(a1 + 81) = v20;
    *(a1 + 56) = v18;
    *(a1 + 72) = v19;
    *(a1 + 40) = v17;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 104, (a1 + 104), *(a2 + 104));
    for (j = 0; j != 24; j += 8)
    {
      *(a1 + 112 + j) = *(a2 + 112 + j);
    }

    v24 = *(a2 + 168);
    v25 = *(a2 + 184);
    v26 = *(a2 + 200);
    v27 = *(a2 + 209);
    v28 = *(a2 + 136);
    v29 = *(a2 + 152);
    *(a1 + 232) = 0;
    *(a1 + 136) = v28;
    *(a1 + 152) = v29;
    *(a1 + 209) = v27;
    *(a1 + 184) = v25;
    *(a1 + 200) = v26;
    *(a1 + 168) = v24;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 232, (a1 + 232), *(a2 + 232));
    v30 = 0;
    v31 = a2 + 240;
    do
    {
      *(a1 + 240 + v30) = *(v31 + v30);
      v30 += 8;
    }

    while (v30 != 24);
  }

  return a1;
}

uint64_t re::Optional<re::VideoMipGenConfig>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != -24; i -= 8)
    {
    }

    if (*(a1 + 232))
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 232));
    }

    v3 = 0;
    *(a1 + 232) = 0;
    do
    {

      v3 -= 8;
    }

    while (v3 != -24);
    if (*(a1 + 104))
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 104));
    }

    *(a1 + 104) = 0;
  }

  return a1;
}

uint64_t re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::~DynamicInlineArray(uint64_t a1)
{
  if (*a1)
  {
    v2 = a1 + (*a1 << 8) + 16;
    v3 = a1 + 16;
    v4 = a1 + 264;
    v5 = a1 + 136;
    do
    {
      for (i = 0; i != -24; i -= 8)
      {
      }

      if (*(v3 + 224))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v3 + 224));
      }

      v7 = 0;
      *(v3 + 224) = 0;
      do
      {

        v7 -= 8;
      }

      while (v7 != -24);
      if (*(v3 + 96))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v3 + 96));
      }

      *(v3 + 96) = 0;
      v3 += 256;
      v4 += 256;
      v5 += 256;
    }

    while (v3 != v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
  return a1;
}

uint64_t re::DynamicInlineArray<re::VideoPSEConfig,2ul>::~DynamicInlineArray(uint64_t a1)
{
  if (*a1)
  {
    v2 = 48 * *a1;
    v3 = (a1 + 48);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3);
      }

      *v3 = 0;
      if (*(v3 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3 - 1);
      }

      *(v3 - 1) = 0;
      v4 = *(v3 - 3);
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
  return a1;
}

uint64_t re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::~DynamicInlineArray(uint64_t a1)
{
  if (*a1)
  {
    v2 = 24 * *a1;
    v3 = (a1 + 24);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3);
      }

      *v3 = 0;
      if (*(v3 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3 - 1);
      }

      *(v3 - 1) = 0;
      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
  return a1;
}

uint64_t re::DynamicInlineArray<re::VideoHDRConfig,2ul>::~DynamicInlineArray(uint64_t a1)
{
  if (*a1)
  {
    v2 = 80 * *a1;
    v3 = (a1 + 32);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3);
      }

      *v3 = 0;
      if (*(v3 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3 - 1);
      }

      *(v3 - 1) = 0;
      if (*(v3 - 2))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3 - 2);
      }

      *(v3 - 2) = 0;
      v3 += 10;
      v2 -= 80;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
  return a1;
}

id re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::add(uint64_t a1, id a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  else
  {
    v3 = a1 + 8 * *a1;
    result = a2;
    *(v3 + 16) = result;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::retrievePresentationGroupForTime(uint64_t a1, uint64_t a2, int a3, CMTime *a4, unint64_t **a5, float32x2_t *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  v295 = *MEMORY[0x1E69E9840];
  v18 = a13;
  if (a14)
  {
    v19 = *(a14 + 56) & (*a14 != 0);
    if ((*(a14 + 128) & 1) != 0 && *(a14 + 72) != 0)
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if (*(a1 + 9704) < 0)
  {
    v19 = 1;
  }

  v207 = v19;
  v234 = **&MEMORY[0x1E6960C70];
  v230 = 0;
  v231 = 0;
  *v233 = 0;
  *&v233[8] = -1;
  *&v233[12] = v234;
  if (a14 && (*(a14 + 56) & 1) != 0 && *a14)
  {
    v21 = a7;
    v22 = re::DynamicInlineArray<__CVBuffer *,2ul>::operator=(&v230, a14);
    v23 = *(a14 + 48);
    *v233 = *(a14 + 32);
    *&v233[16] = v23;
    *&v233[32] = *(a14 + 64);
    if (v230)
    {
      v24 = 8 * v230;
      v25 = v232;
      do
      {
        v22 = CVPixelBufferRetain(*v25++);
        v24 -= 8;
      }

      while (v24);
    }

    v234 = *&v233[12];
    a7 = v21;
  }

  else
  {
    time2 = *a4;
    re::retrievePixelBuffersWithVideoReceiver(&time.value, a2, &time2, &v234);
    v22 = re::DynamicInlineArray<__CVBuffer *,2ul>::move(&v230, &time);
    ++v231;
    *v233 = *&v242[8];
    *&v233[16] = *&v242[24];
    *&v233[32] = v243;
  }

  v26 = re::VideoDefaults::logEnabled(v22);
  v27 = v230;
  if (v26)
  {
    if (!v230)
    {
      goto LABEL_243;
    }

    v146 = 0;
    do
    {
      v147 = a5;
      v148 = a7;
      v149 = v146 + 1;
      v150 = [MEMORY[0x1E696AD60] stringWithFormat:@"Pixel Buffer %zu of %zu", v146 + 1, v27];
      v151 = re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[](&v230, v146);
      re::CoreVideoUtils::printPixelBufferInfo(*v151, v150, v152);
      v154 = *re::videoLogObjects(v153);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        v155 = v150;
        v156 = [(__CVBuffer *)v150 cStringUsingEncoding:1];
        LODWORD(time.value) = 136315138;
        *(&time.value + 4) = v156;
        _os_log_impl(&dword_1E1C61000, v154, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
      }

      v27 = v230;
      v146 = v149;
      v157 = v149 >= v230;
      a7 = v148;
      a5 = v147;
    }

    while (!v157);
  }

  if (v27)
  {
    *(a2 + 8) = 0;
    if ((v234.flags & 1) == 0)
    {
      v28 = *re::videoLogObjects(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(time.value) = 0;
        _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Video receiver sample has an invalid presentation timestamp.", &time, 2u);
      }

      goto LABEL_244;
    }

    v206 = a7;
    time = v234;
    *(a12 + 24) = CMTimeGetSeconds(&time);
    if (*(a1 + 4640) == *(a1 + 4648))
    {
      goto LABEL_44;
    }

    while (1)
    {
      time = v234;
      time2 = *re::VideoPresentationQueue::front((a1 + 432), v30);
      v29 = CMTimeCompare(&time, &time2);
      if (!v29)
      {
        break;
      }

      if (v29 == -1)
      {
        v43 = re::VideoDefaults::logEnabled(v29);
        if (v43)
        {
          v183 = *re::videoLogObjects(v43);
          if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(time.value) = 0;
            _os_log_impl(&dword_1E1C61000, v183, OS_LOG_TYPE_DEFAULT, "Presentation queue is stale. Clearing.", &time, 2u);
          }
        }

        re::VideoPresentationQueue::clear(a1 + 432);
        goto LABEL_44;
      }

      if (*(a1 + 4640) != *(a1 + 4648))
      {
        re::deinitVideoPresentationGroup(a1 + 448 + 2096 * (*(a1 + 4640) & 1));
        v31 = *(a1 + 4640) + 1;
        *(a1 + 4640) = v31;
        if (v31 != *(a1 + 4648))
        {
          continue;
        }
      }

      goto LABEL_44;
    }

    v32 = re::VideoPresentationQueue::front((a1 + 432), v30);
    if (v32[1584] == *(a1 + 9704))
    {
      v34 = v230;
      v35 = re::VideoPresentationQueue::front((a1 + 432), v33);
      if (v34 == *(v35 + 3))
      {
        if (!v230)
        {
LABEL_38:
          v29 = re::VideoDefaults::logEnabled(v35);
          if (v29)
          {
            if (*(a1 + 4640) != *(a1 + 4648))
            {
              v42 = *re::videoLogObjects(v29);
              v29 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
              if (v29)
              {
                LOWORD(time.value) = 0;
                _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "Presentation group found for presentation time.", &time, 2u);
              }
            }
          }

LABEL_44:
          if (*(a1 + 4640) == *(a1 + 4648))
          {
            v44 = re::VideoDefaults::logEnabled(v29);
            if (v44)
            {
              v177 = *re::videoLogObjects(v44);
              if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(time.value) = 0;
                _os_log_impl(&dword_1E1C61000, v177, OS_LOG_TYPE_DEFAULT, "Presentation group not found for presentation time. Creating a new presentation group.", &time, 2u);
              }
            }

            time = **&MEMORY[0x1E6960C70];
            *v242 = 0;
            *&v242[8] = 0;
            *&v242[24] = 0;
            *&v242[32] = 0;
            v244 = 0;
            v245 = 0;
            v248 = 0;
            v249 = 0;
            v250 = 0;
            v251 = 0;
            v252 = 0;
            v253 = 0;
            v254 = 0;
            v255 = 0;
            v256 = 0;
            v257 = 0;
            v258 = 0;
            v259 = 0;
            v260 = 0;
            v261 = 0;
            v262 = 0;
            v263 = 0;
            v266 = 0;
            v267 = 0;
            v268 = 0;
            v269 = 0;
            v270 = 0;
            v271 = 0;
            v275 = 0;
            v265 = 0;
            v264 = 0u;
            v272 = 0u;
            v273 = 0u;
            v274 = 0u;
            v276 = 1;
            v277 = -1;
            v280 = 0;
            v281 = 0;
            v282 = 0;
            v283 = 0;
            v284 = 0;
            v285 = 0;
            v286 = 0;
            v287 = 0;
            v288 = 0;
            v289 = 0;
            v290 = 0;
            v291 = 0;
            v292 = 0;
            v278 = 0u;
            v279 = 0;
            v293 = 1;
            v294 = 0;
            if (!*(a1 + 280))
            {
              re::VideoTextureCache::init((a1 + 280));
            }

            v45 = (*(a1 + 9704) >> 3) & 1;
            time2 = v234;
            v227 = 0;
            v46 = v230;
            memcpy(v228, v232, 8 * v230);
            v226 = v46;
            v228[1] = *v233;
            v228[2] = *&v233[16];
            v229 = *&v233[32];
            texture = *a4;
            v47 = populatePresentationGroup(&time2.value, &v226, a1, &texture, a5, a6, v206, a8, &time, a12, v18, v45);
            v48 = v47;
            v226 = 0;
            v227 = 1;
            if (v47)
            {
              v49 = *re::videoLogObjects(v47);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                LOWORD(time2.value) = 0;
                _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, "Could not populate current presentation group using buffer group", &time2, 2u);
              }

LABEL_56:
              re::VideoPresentationGroup::~VideoPresentationGroup(&time);
              goto LABEL_248;
            }

            v50 = *(a1 + 4648);
            if (v50 - *(a1 + 4640) == 2)
            {
              v51 = *re::videoLogObjects(v47);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                LOWORD(time2.value) = 0;
                _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "Unable to enqueue new presentation group.", &time2, 2u);
              }

              v48 = 1;
              goto LABEL_56;
            }

            v52 = a1 + 2096 * (*(a1 + 4648) & 1);
            *(a1 + 4648) = v50 + 1;
            re::VideoPresentationGroup::operator=(v52 + 448, &time.value);
            re::VideoPresentationGroup::~VideoPresentationGroup(&time);
          }

          v205 = a5;
          v53 = re::VideoPresentationQueue::front((a1 + 432), v30);
          v54 = v53;
          v55 = v53 + 252;
          if (v53[250])
          {
            v56 = 0;
            v57 = v53 + 252;
            do
            {
              v58 = atomic_load(*v57);
              if (v58 != 8)
              {
                goto LABEL_178;
              }

              ++v56;
              v57 += 2;
            }

            while (v56 < v53[250]);
          }

          if (!v53[6])
          {
            v62 = 1;
            goto LABEL_70;
          }

          v59 = 0;
          while (1)
          {
            time2.value = 0;
            re::VideoObject<re::VideoPixelBufferBase>::setRef(&time2, &time2, v54[v59 + 8]);
            v53 = re::VideoLightSpillGenerator::CanGenerateForPixelBuffer(&time2);
            v60 = v53;
            if (time2.value)
            {
              re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&time2);
            }

            time2.value = 0;
            if ((v60 & 1) == 0)
            {
              break;
            }

            ++v59;
            v61 = v54[6];
            if (v59 >= v61)
            {
              v62 = v61 == 0;
LABEL_70:
              v204 = v54 + 154;
              if (v54[154] || (*(a1 + 9704) & 0x40) == 0 || !*(a1 + 7384) || *(a1 + 7368) < 1 || *(a1 + 7372) < 1 || (*(a1 + 7376) & 0x80000000) != 0)
              {
                v89 = re::VideoDefaults::logLevel(v53);
                if (v89 >= 3)
                {
                  v178 = *re::videoLogObjects(v89);
                  if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
                  {
                    v179 = "Not Empty";
                    if (!*v204)
                    {
                      v179 = "Empty";
                    }

                    if (*(a1 + 7384) && *(a1 + 7368) >= 1)
                    {
                      v180 = "Not Valid";
                      if (*(a1 + 7372) >= 1 && *(a1 + 7376) >= 0)
                      {
                        v180 = "Valid";
                      }
                    }

                    else
                    {
                      v180 = "Not Valid";
                    }

                    LODWORD(time.value) = 136315394;
                    *(&time.value + 4) = v179;
                    LOWORD(time.flags) = 2080;
                    *(&time.flags + 2) = v180;
                    _os_log_impl(&dword_1E1C61000, v178, OS_LOG_TYPE_DEFAULT, "[VideoAssetUtility]->populateLightSpillForPresentationGroup :: Failing to generate light spill :: LightSpillTextures are %s :: Light Spill Generator is %s", &time, 0x16u);
                  }
                }
              }

              else if (!v62)
              {
                v63 = 0;
                while (1)
                {
                  v64 = v63;
                  v65 = v54[v63 + 8];
                  texture.value = 0;
                  v66 = re::VideoDefaults::logLevel(v53);
                  if (v66 >= 3)
                  {
                    loga = *re::videoLogObjects(v66);
                    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                    {
                      v87 = "Not Empty";
                      if (!*v204)
                      {
                        v87 = "Empty";
                      }

                      if (*(a1 + 7384) && *(a1 + 7368) >= 1 && *(a1 + 7372) >= 1)
                      {
                        v88 = "Not Valid";
                        if (*(a1 + 7376) >= 0)
                        {
                          v88 = "Valid";
                        }
                      }

                      else
                      {
                        v88 = "Not Valid";
                      }

                      LODWORD(time.value) = 136315394;
                      *(&time.value + 4) = v87;
                      LOWORD(time.flags) = 2080;
                      *(&time.flags + 2) = v88;
                      _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "[VideoAssetUtility]->populateLightSpillForPresentationGroup :: Generating light spill :: LightSpillTextures are %s :: Light Spill Generator is %s", &time, 0x16u);
                    }
                  }

                  v67 = re::VideoLightSpillGenerator::generate(a1 + 7368, v65, &texture);
                  if (!v67)
                  {
                    break;
                  }

                  v68 = *re::videoLogObjects(v67);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(time.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_ERROR, "Unable to generate diffuse light spill pixel buffer.", &time, 2u);
                  }

LABEL_117:
                  CVPixelBufferRelease(texture.value);
                  v63 = v64 + 1;
                  if (v64 + 1 >= v54[6])
                  {
                    goto LABEL_131;
                  }
                }

                BYTE2(time.value) = 2;
                LOWORD(time.value) = 514;
                *&time.timescale = *MEMORY[0x1E695F060];
                v69 = *(MEMORY[0x1E695F058] + 16);
                *v242 = *MEMORY[0x1E695F058];
                *&v242[16] = v69;
                *&v242[32] = 0;
                LOBYTE(v243) = 0;
                LOBYTE(v245) = 0;
                *v246 = 0u;
                v247 = 0u;
                TexturesFromPixelBuffer = re::VideoTextureCache::createTexturesFromPixelBuffer((a1 + 280), texture.value, &time, 1, 0);
                if (TexturesFromPixelBuffer)
                {
                  v71 = *re::videoLogObjects(TexturesFromPixelBuffer);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(buf.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_ERROR, "Unable to generate diffuse light spill texture.", &buf, 2u);
                  }

LABEL_111:
                  for (i = 120; i != 96; i -= 8)
                  {
                    if (*(&time.value + i))
                    {
                      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((&time + i));
                    }

                    *(&time.value + i) = 0;
                  }

                  if (v246[0])
                  {
                    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v246);
                  }

                  goto LABEL_117;
                }

                value = texture.value;
                buf.value = texture.value;
                CVPixelBufferRetain(texture.value);
                re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v54[146], v73);
                v74 = v54[146];
                v54[v74 + 148] = value;
                v54[146] = (v74 + 1);
                ++*(v54 + 294);
                re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::add(v204, &time);
                v75 = *&a6[26];
                buf.value = 0;
                re::VideoObject<re::VideoPixelBufferBase>::setRef(&buf, &buf, v246[1]);
                v76 = re::VideoPixelBufferTextureBase::asMetalTexture(&buf);
                log = v75;
                v77 = v76;

                if (buf.value)
                {
                  re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&buf);
                }

                buf.value = 0;
                if (re::VideoDefaults::lightSpillTextureAllocatorEnabled(v78))
                {
                  if (!*(a1 + 264))
                  {
                    v79 = *&a6[26];
                    v224.value = v79;
                    if (!*(a1 + 264))
                    {
                      re::ObjCObject::operator=((a1 + 264), &v224);
                      v79 = v224.value;
                    }
                  }

                  Width = CVPixelBufferGetWidth(texture.value);
                  Height = CVPixelBufferGetHeight(texture.value);
                  re::VideoTextureAllocator::createTextureInternal(a1 + 216, Width, Height, 115, 2, 3, 0, 0, &v223, v82, v54[210]);
                  NS::SharedPtr<MTL::Texture>::operator=(&buf, &v223);
                  v83 = v223.value;
                  if (!v223.value)
                  {
                    goto LABEL_101;
                  }
                }

                else
                {
                  v84 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
                  [v84 setStorageMode_];
                  [v84 setPixelFormat_];
                  [v84 setWidth_];
                  [v84 setHeight_];
                  [v84 setUsage_];
                  [v84 setProtectionOptions_];
                  re::mtl::Device::makeTexture(&v223.value, v84, &a6[26]);
                  NS::SharedPtr<MTL::Texture>::operator=(&buf, &v223);
                  if (v223.value)
                  {
                  }

                  if (buf.value)
                  {
                    re::memoryAttributionMTLResource(buf.value, *(a1 + 9744));
                  }

                  if (!v84)
                  {
                    goto LABEL_101;
                  }

                  v83 = v84;
                }

LABEL_101:
                if (buf.value)
                {
                  v85 = a6[7];
                  v222.value = v76;
                  v219.value = buf.value;
                  re::TextureManager::queueBlurGeneration(v85, &v222, &v219, 1);
                  if (v219.value)
                  {

                    v219.value = 0;
                  }

                  if (v222.value)
                  {

                    v222.value = 0;
                  }

                  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::add((v54 + 188), buf.value);
                  if (buf.value)
                  {
                  }
                }

                if (v76)
                {
                }

                goto LABEL_111;
              }

LABEL_131:
              if (!v54[192] && (*(a1 + 9704) & 4) != 0 && *(a1 + 7416) && *(a1 + 7400) >= 1 && *(a1 + 7404) >= 1 && (*(a1 + 7408) & 0x80000000) == 0 && v54[6])
              {
                v90 = 0;
                while (1)
                {
                  v91 = v54[v90 + 8];
                  texture.value = 0;
                  v92 = re::VideoLightSpillGenerator::generate(a1 + 7400, v91, &texture);
                  if (!v92)
                  {
                    break;
                  }

                  v93 = *re::videoLogObjects(v92);
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(time.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v93, OS_LOG_TYPE_ERROR, "Unable to generate specular light spill pixel buffer.", &time, 2u);
                  }

LABEL_175:
                  CVPixelBufferRelease(texture.value);
                  if (++v90 >= v54[6])
                  {
                    goto LABEL_178;
                  }
                }

                BYTE2(time.value) = 2;
                LOWORD(time.value) = 514;
                *&time.timescale = *MEMORY[0x1E695F060];
                v94 = *(MEMORY[0x1E695F058] + 16);
                *v242 = *MEMORY[0x1E695F058];
                *&v242[16] = v94;
                *&v242[32] = 0;
                LOBYTE(v243) = 0;
                LOBYTE(v245) = 0;
                *v246 = 0u;
                v247 = 0u;
                v95 = re::VideoTextureCache::createTexturesFromPixelBuffer((a1 + 280), texture.value, &time, 1, 0);
                if (v95)
                {
                  v96 = *re::videoLogObjects(v95);
                  if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(buf.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v96, OS_LOG_TYPE_ERROR, "Unable to generate specular light spill texture.", &buf, 2u);
                  }

LABEL_169:
                  for (j = 120; j != 96; j -= 8)
                  {
                    if (*(&time.value + j))
                    {
                      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((&time + j));
                    }

                    *(&time.value + j) = 0;
                  }

                  if (v246[0])
                  {
                    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v246);
                  }

                  goto LABEL_175;
                }

                v97 = texture.value;
                buf.value = texture.value;
                CVPixelBufferRetain(texture.value);
                re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v54[150], v98);
                v99 = v54[150];
                v54[v99 + 152] = v97;
                v54[150] = (v99 + 1);
                ++*(v54 + 302);
                buf.value = 0;
                re::VideoObject<re::VideoPixelBufferBase>::setRef(&buf, &buf, v246[1]);
                v100 = re::VideoPixelBufferTextureBase::asMetalTexture(&buf);
                v101 = v100;

                if (buf.value)
                {
                  re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&buf);
                }

                v203 = *&a6[26];
                buf.value = v203;
                v102 = [v100 pixelFormat];
                v223.value = 0;
                if ((*(a1 + 9704) & 0x20) == 0)
                {
                  goto LABEL_164;
                }

                v103 = v102;
                if (re::VideoDefaults::lightSpillTextureAllocatorEnabled(v102))
                {
                  if (!*(a1 + 264))
                  {
                    v104 = *&a6[26];
                    v218.value = v104;
                    if (!*(a1 + 264))
                    {
                      re::ObjCObject::operator=((a1 + 264), &v218);
                      v104 = v218.value;
                    }
                  }

                  v199 = CVPixelBufferGetWidth(texture.value);
                  v105 = CVPixelBufferGetHeight(texture.value);
                  re::VideoTextureAllocator::createTextureInternal(a1 + 216, v199, v105, v103, 2, 3, 1, 0, v212, v106, v54[210]);
                  NS::SharedPtr<MTL::Texture>::operator=(&v223, v212);
                  v107 = v212[0];
                  if (!v212[0])
                  {
                    goto LABEL_162;
                  }

LABEL_161:

                  goto LABEL_162;
                }

                v200 = CVPixelBufferGetWidth(texture.value);
                v108 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v103 width:v200 height:CVPixelBufferGetHeight(texture.value) mipmapped:1];
                [v108 setStorageMode_];
                [v108 setProtectionOptions_];
                re::mtl::Device::makeTexture(v212, v108, &a6[26]);
                NS::SharedPtr<MTL::Texture>::operator=(&v223, v212);
                if (v212[0])
                {
                }

                if (v223.value)
                {
                  re::memoryAttributionMTLResource(v223.value, *(a1 + 9744));
                }

                if (v108)
                {
                  v107 = v108;
                  goto LABEL_161;
                }

LABEL_162:
                if (v223.value)
                {
                  re::mtl::Device::makeCommandQueue(v212, &buf);
                  re::mtl::CommandQueue::makeCommandBuffer(&v236, v212);
                  re::mtl::CommandBuffer::makeBlitCommandEncoder(&v235, &v236);
                  v109 = CVPixelBufferGetWidth(texture.value);
                  v110 = CVPixelBufferGetHeight(texture.value);
                  re::mtl::BlitCommandEncoder::textureCopy(&v235, v100, 0, 0, 0, 0, 0, v109, v110, 1, v223.value, 0, 0, 0, 0, 0);
                  re::mtl::BlitCommandEncoder::generateMipmaps(&v235, v223.value);
                  objc_msgSend_endEncoding(v235);
                  [v236 commit];
                  [v236 waitUntilCompleted];
                  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::add((v54 + 192), v223.value);
                }

                else
                {
LABEL_164:
                  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::add((v54 + 192), v100);
                }

                if (v223.value)
                {
                }

                if (v100)
                {
                }

                goto LABEL_169;
              }

LABEL_178:
              if (a3)
              {
                if (v54[250])
                {
                  v113 = 0;
                  while (1)
                  {
                    v114 = atomic_load(*v55);
                    if (v114 != 8)
                    {
                      break;
                    }

                    ++v113;
                    v55 += 2;
                    if (v113 >= v54[250])
                    {
                      goto LABEL_183;
                    }
                  }
                }

                else
                {
LABEL_183:
                  if (v54[6])
                  {
                    v115 = 0;
                    v116 = (v54 + 8);
                    do
                    {
                      time2.value = 0;
                      re::VideoObject<re::VideoPixelBufferBase>::setRef(&time2, &time2, v116[v115]);
                      v117 = re::VideoLightSpillGenerator::CanGenerateForPixelBuffer(&time2);
                      v118 = v117;
                      if (time2.value)
                      {
                        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&time2);
                      }

                      time2.value = 0;
                      if ((v118 & 1) == 0)
                      {
                        v123 = re::VideoDefaults::logEnabled(v117);
                        if (v123)
                        {
                          v184 = *re::videoLogObjects(v123);
                          if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
                          {
                            LOWORD(time.value) = 0;
                            _os_log_impl(&dword_1E1C61000, v184, OS_LOG_TYPE_DEFAULT, "Cannot generate video blur for pixel buffer because its pixel format is not supported.", &time, 2u);
                          }
                        }

                        goto LABEL_198;
                      }

                      ++v115;
                      v119 = v54[6];
                    }

                    while (v115 < v119);
                    if (v119 && *(a1 + 9728) && *(a1 + 9712) >= 1 && *(a1 + 9716) >= 1 && (*(a1 + 9720) & 0x80000000) == 0)
                    {
                      v120 = *v116;
                      texture.value = 0;
                      v121 = re::VideoLightSpillGenerator::generate(a1 + 9712, v120, &texture);
                      if (v121)
                      {
                        v122 = *re::videoLogObjects(v121);
                        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(time.value) = 0;
                          _os_log_error_impl(&dword_1E1C61000, v122, OS_LOG_TYPE_ERROR, "Unable to generate video blur texture.", &time, 2u);
                        }

LABEL_288:
                        CVPixelBufferRelease(texture.value);
                        goto LABEL_198;
                      }

                      v142 = *MEMORY[0x1E695F058];
                      v143 = *(MEMORY[0x1E695F058] + 16);
                      *&time.timescale = *MEMORY[0x1E695F060];
                      *v242 = v142;
                      BYTE2(time.value) = 2;
                      LOWORD(time.value) = 514;
                      *&v242[16] = v143;
                      *&v242[32] = 0;
                      LOBYTE(v243) = 0;
                      LOBYTE(v245) = 0;
                      *v246 = 0u;
                      v247 = 0u;
                      v144 = re::VideoTextureCache::createTexturesFromPixelBuffer((a1 + 280), texture.value, &time, 1, 0);
                      if (v144)
                      {
                        v145 = *re::videoLogObjects(v144);
                        if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf.value) = 0;
                          _os_log_error_impl(&dword_1E1C61000, v145, OS_LOG_TYPE_ERROR, "Unable to generate video blur texture.", &buf, 2u);
                        }

LABEL_282:
                        for (k = 120; k != 96; k -= 8)
                        {
                          if (*(&time.value + k))
                          {
                            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((&time + k));
                          }

                          *(&time.value + k) = 0;
                        }

                        if (v246[0])
                        {
                          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v246);
                        }

                        goto LABEL_288;
                      }

                      v163 = texture.value;
                      CVPixelBufferRetain(texture.value);
                      v54[196] = v163;
                      v164 = a6 + 26;
                      v165 = *&a6[26];
                      v224.value = 0;
                      re::VideoObject<re::VideoPixelBufferBase>::setRef(&v224, &v224, v246[1]);
                      v166 = re::VideoPixelBufferTextureBase::asMetalTexture(&v224);
                      buf.value = v166;
                      v167 = v166;

                      if (v224.value)
                      {
                        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v224);
                      }

                      v224.value = 0;
                      if (re::VideoDefaults::lightSpillTextureAllocatorEnabled(v168))
                      {
                        if (!*(a1 + 264))
                        {
                          v169 = *v164;
                          v223.value = v169;
                          if (!*(a1 + 264))
                          {
                            re::ObjCObject::operator=((a1 + 264), &v223);
                            v169 = v223.value;
                          }
                        }

                        v170 = CVPixelBufferGetWidth(texture.value);
                        v171 = CVPixelBufferGetHeight(texture.value);
                        re::VideoTextureAllocator::createTextureInternal(a1 + 216, v170, v171, 115, 2, 3, 0, 0, &v222, v172, v54[210]);
                        NS::SharedPtr<MTL::Texture>::operator=(&v224, &v222);
                        v173 = v222.value;
                        if (!v222.value)
                        {
                          goto LABEL_271;
                        }
                      }

                      else
                      {
                        v174 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
                        [v174 setStorageMode_];
                        [v174 setPixelFormat_];
                        [v174 setWidth_];
                        [v174 setHeight_];
                        [v174 setUsage_];
                        [v174 setProtectionOptions_];
                        re::mtl::Device::makeTexture(&v223.value, v174, v164);
                        NS::SharedPtr<MTL::Texture>::operator=(&v224, &v223);
                        if (v223.value)
                        {
                        }

                        if (v224.value)
                        {
                          re::memoryAttributionMTLResource(v224.value, *(a1 + 9744));
                        }

                        if (!v174)
                        {
                          goto LABEL_271;
                        }

                        v173 = v174;
                      }

LABEL_271:
                      if (v224.value)
                      {
                        v175 = a6[7];
                        v222.value = v166;
                        v219.value = v224.value;
                        re::TextureManager::queueBlurGeneration(v175, &v222, &v219, 1);
                        if (v219.value)
                        {

                          v219.value = 0;
                        }

                        if (v222.value)
                        {

                          v222.value = 0;
                        }

                        NS::SharedPtr<MTL::Buffer>::operator=(&buf, &v224);
                      }

                      NS::SharedPtr<MTL::Buffer>::operator=(v54 + 197, &v224);
                      if (v224.value)
                      {
                      }

                      if (buf.value)
                      {
                      }

                      goto LABEL_282;
                    }
                  }
                }
              }

LABEL_198:
              if ((v207 & 1) == 0 && *(a1 + 4648) - *(a1 + 4640) != *(a1 + 432))
              {
                v125 = re::VideoDefaults::logEnabled(v124);
                if (v125)
                {
                  v181 = *re::videoLogObjects(v125);
                  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(time.value) = 0;
                    _os_log_impl(&dword_1E1C61000, v181, OS_LOG_TYPE_DEFAULT, "Attempting to fill presentation queue with 1 more group.", &time, 2u);
                  }
                }

                buf = **&MEMORY[0x1E6960C70];
                v126 = *(a1 + 4648);
                if (*(a1 + 4640) != v126)
                {
                  buf = *(a1 + 2096 * ((v126 & 1) == 0) + 448);
                }

                memset(&v224, 0, sizeof(v224));
                CMTimeMake(&v224, 0, 1000);
                v223 = buf;
                memset(&v222, 0, sizeof(v222));
                CMTimeMake(&v222, 10, 1000);
                if ((atomic_load_explicit(&qword_1EE1964D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1964D8))
                {
                  _MergedGlobals_76 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6973DD0], MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  __cxa_guard_release(&qword_1EE1964D8);
                }

                v127 = 0;
                time2.value = 0;
                time2.timescale = 0;
                *v221 = 0;
                *&v221[8] = -1;
                *&v221[12] = *MEMORY[0x1E6960C70];
                *&v221[28] = *(MEMORY[0x1E6960C70] + 16);
                while (1)
                {
                  texture = v224;
                  v219 = v222;
                  CMTimeAdd(&time, &texture, &v219);
                  v224 = time;
                  memset(&v219, 0, sizeof(v219));
                  time = *a4;
                  texture = v224;
                  CMTimeAdd(&v219, &time, &texture);
                  if (a14 && (*(a14 + 128) & 1) != 0 && *(a14 + 72))
                  {
                    v128 = a8;
                    v129 = v18;
                    v130 = re::DynamicInlineArray<__CVBuffer *,2ul>::operator=(&time2.value, a14);
                    v131 = *(a14 + 48);
                    *v221 = *(a14 + 32);
                    *&v221[16] = v131;
                    *&v221[32] = *(a14 + 64);
                    if (time2.value)
                    {
                      v132 = 8 * time2.value;
                      p_epoch = &time2.epoch;
                      do
                      {
                        v130 = CVPixelBufferRetain(*p_epoch++);
                        v132 -= 8;
                      }

                      while (v132);
                    }

                    v234 = *&v233[12];
                    v18 = v129;
                    a8 = v128;
                  }

                  else
                  {
                    texture = v219;
                    re::retrievePixelBuffersWithVideoReceiver(&time.value, a2, &texture, &v223);
                    v130 = re::DynamicInlineArray<__CVBuffer *,2ul>::move(&time2, &time);
                    ++time2.timescale;
                    *v221 = *&v242[8];
                    *&v221[16] = *&v242[24];
                    *&v221[32] = v243;
                  }

                  if ((v223.flags & 1) == 0)
                  {
                    v135 = *re::videoLogObjects(v130);
                    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(time.value) = 0;
                      _os_log_error_impl(&dword_1E1C61000, v135, OS_LOG_TYPE_ERROR, "Invalid presentation time sampled for future host time.", &time, 2u);
                    }

                    goto LABEL_232;
                  }

                  time = buf;
                  texture = v223;
                  v134 = CMTimeCompare(&time, &texture);
                  if ((v134 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (++v127 == 5)
                  {
                    goto LABEL_232;
                  }
                }

                v136 = re::VideoDefaults::logEnabled(v134);
                if (v136)
                {
                  v185 = v230;
                  if (v230)
                  {
                    v186 = 0;
                    do
                    {
                      v187 = v186 + 1;
                      v188 = [MEMORY[0x1E696AD60] stringWithFormat:@"Pixel Buffer %zu of %zu", v186 + 1, v185];
                      v189 = re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[](&v230, v186);
                      re::CoreVideoUtils::printPixelBufferInfo(*v189, v188, v190);
                      v192 = *re::videoLogObjects(v191);
                      if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
                      {
                        v193 = v188;
                        v194 = [(__CVBuffer *)v188 cStringUsingEncoding:1];
                        LODWORD(time.value) = 136315138;
                        *(&time.value + 4) = v194;
                        _os_log_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
                      }

                      v185 = v230;
                      v186 = v187;
                    }

                    while (v187 < v230);
                  }
                }

                v137 = re::VideoDefaults::logEnabled(v136);
                if (v137)
                {
                  v195 = *re::videoLogObjects(v137);
                  if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
                  {
                    time = v223;
                    Seconds = CMTimeGetSeconds(&time);
                    LODWORD(texture.value) = 134217984;
                    *(&texture.value + 4) = Seconds;
                    _os_log_impl(&dword_1E1C61000, v195, OS_LOG_TYPE_DEFAULT, "Creating presentation queue group for future presentation Time: %.3f", &texture, 0xCu);
                  }
                }

                time = **&MEMORY[0x1E6960C70];
                *v242 = 0;
                *&v242[8] = 0;
                *&v242[24] = 0;
                *&v242[32] = 0;
                v244 = 0;
                v245 = 0;
                v248 = 0;
                v249 = 0;
                v250 = 0;
                v251 = 0;
                v252 = 0;
                v253 = 0;
                v254 = 0;
                v255 = 0;
                v256 = 0;
                v257 = 0;
                v258 = 0;
                v259 = 0;
                v260 = 0;
                v261 = 0;
                v262 = 0;
                v263 = 0;
                v266 = 0;
                v267 = 0;
                v268 = 0;
                v269 = 0;
                v270 = 0;
                v271 = 0;
                v275 = 0;
                v265 = 0;
                v264 = 0u;
                v272 = 0u;
                v273 = 0u;
                v274 = 0u;
                v276 = 1;
                v277 = -1;
                v280 = 0;
                v281 = 0;
                v282 = 0;
                v283 = 0;
                v284 = 0;
                v285 = 0;
                v286 = 0;
                v287 = 0;
                v288 = 0;
                v289 = 0;
                v290 = 0;
                v291 = 0;
                v292 = 0;
                v278 = 0u;
                v279 = 0;
                v293 = 1;
                v294 = 0;
                LOBYTE(texture.value) = 0;
                v238 = 0;
                *&texture.timescale = 0;
                texture.epoch = 0;
                re::DynamicString::DynamicString(&v239);
                v218 = v223;
                v215 = 0;
                v138 = time2.value;
                memcpy(v216, &time2.epoch, 8 * time2.value);
                v216[1] = *v221;
                v216[2] = *&v221[16];
                v217 = *&v221[32];
                *v212 = *&v219.value;
                p_texture = a12;
                if (*(a1 + 4640) == *(a1 + 4648))
                {
                  p_texture = &texture;
                }

                epoch = v219.epoch;
                v214 = v138;
                v140 = populatePresentationGroup(&v218.value, &v214, a1, v212, v205, a6, v206, a8, &time, p_texture, v18, 0);
                v48 = v140;
                if (v140)
                {
                  v141 = *re::videoLogObjects(v140);
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(v218.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v141, OS_LOG_TYPE_ERROR, "Could not populate future presentation group using future buffer group", &v218, 2u);
                  }
                }

                else
                {
                  re::VideoPresentationQueue::push((a1 + 432), &time);
                }

                if (v239 && (v240 & 1) != 0)
                {
                  (*(*v239 + 40))();
                }

                re::VideoPresentationGroup::~VideoPresentationGroup(&time);
                if (v48)
                {
                  goto LABEL_248;
                }
              }

LABEL_232:
              re::VideoPresentationGroup::operator=(a11, v54);
              v48 = 0;
              goto LABEL_248;
            }
          }

          v112 = re::VideoDefaults::logEnabled(v53);
          if (v112)
          {
            v182 = *re::videoLogObjects(v112);
            if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(time.value) = 0;
              _os_log_impl(&dword_1E1C61000, v182, OS_LOG_TYPE_DEFAULT, "Cannot generate light spill for pixel buffer because its pixel format is not supported.", &time, 2u);
            }
          }

          goto LABEL_178;
        }

        v36 = 0;
        while (1)
        {
          IOSurface = CVPixelBufferGetIOSurface(v232[v36]);
          ID = IOSurfaceGetID(IOSurface);
          v35 = re::VideoPresentationQueue::front((a1 + 432), v39);
          v41 = *(v35 + 3);
          if (v41 <= v36)
          {
            break;
          }

          if (ID != *(v35 + v36 + 9))
          {
            goto LABEL_250;
          }

          if (++v36 >= v230)
          {
            goto LABEL_38;
          }
        }

        re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v36, v41);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v197, v198);
        __break(1u);
LABEL_250:
        time = v234;
        if (CMTimeGetSeconds(&time) == 0.0 || (v161 = *re::videoLogObjects(v160), !os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_254:
          re::VideoPresentationQueue::clear(a1 + 432);
          goto LABEL_38;
        }

        LOWORD(time.value) = 0;
        v162 = "Surface IDs changed. Clearing.";
      }

      else
      {
        v161 = *re::videoLogObjects(v35);
        if (!os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_254;
        }

        LOWORD(time.value) = 0;
        v162 = "Mismatched channel count. Clearing.";
      }
    }

    else
    {
      v161 = *re::videoLogObjects(v32);
      if (!os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_254;
      }

      LOWORD(time.value) = 0;
      v162 = "[VideoAssetUtillity]->retrievePresentationGroupForTime : : Options have changed and clearing the presentation queue";
    }

    _os_log_impl(&dword_1E1C61000, v161, OS_LOG_TYPE_DEFAULT, v162, &time, 2u);
    goto LABEL_254;
  }

LABEL_243:
  if (*(a2 + 8) == 1)
  {
LABEL_244:
    v48 = 1;
    goto LABEL_248;
  }

  v158 = *re::videoLogObjects(v26);
  if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
  {
    LOWORD(time.value) = 0;
    _os_log_error_impl(&dword_1E1C61000, v158, OS_LOG_TYPE_ERROR, "Video receiver sample has no pixel buffers.", &time, 2u);
  }

  v48 = 1;
  *(a2 + 8) = 1;
LABEL_248:

  return v48;
}

void sub_1E203D118(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE1964D8);

  _Unwind_Resume(a1);
}

void anonymous namespace::deinitLegacyBufferGroup(uint64_t a1)
{
  if (*a1)
  {
    v2 = 0;
    do
    {
      CVPixelBufferRelease(*(a1 + 8 * v2++ + 16));
    }

    while (v2 < *a1);
  }

  *a1 = 0;
  ++*(a1 + 8);
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
}

uint64_t re::VideoPresentationGroup::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  re::DynamicInlineArray<unsigned int,2ul>::operator=((a1 + 24), a2 + 3);
  if (a1 != a2)
  {
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a1 + 48), a2 + 6);
    ++*(a1 + 56);
    re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::copy((a1 + 80), a2 + 10);
    ++*(a1 + 88);
    re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::copy((a1 + 352), a2 + 44);
    ++*(a1 + 360);
    re::DynamicInlineArray<re::VideoMetalTextures,2ul>::copy((a1 + 624), a2 + 78);
    ++*(a1 + 632);
    re::DynamicInlineArray<re::VideoMetalTextures,2ul>::copy((a1 + 896), a2 + 112);
    ++*(a1 + 904);
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a1 + 1168), a2 + 146);
    ++*(a1 + 1176);
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a1 + 1200), a2 + 150);
    ++*(a1 + 1208);
    re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::copy((a1 + 1232), a2 + 154);
    ++*(a1 + 1240);
    re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::copy((a1 + 1504), a2 + 188);
    ++*(a1 + 1512);
    re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::copy((a1 + 1536), a2 + 192);
    ++*(a1 + 1544);
  }

  re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 1568, (a1 + 1568), *(a2 + 196));
  NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1576), a2 + 197);
  *(a1 + 1584) = *(a2 + 1584);
  re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=((a1 + 1600), a2 + 200);
  if (a1 == a2)
  {
    v10 = a2[105];
    v11 = a2[106];
    *(a1 + 1712) = a2[107];
    *(a1 + 1696) = v11;
    *(a1 + 1680) = v10;
    v12 = a2[108];
    v13 = a2[109];
    v14 = a2[110];
    *(a1 + 1776) = a2[111];
    *(a1 + 1760) = v14;
    *(a1 + 1744) = v13;
    *(a1 + 1728) = v12;
  }

  else
  {
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::copy((a1 + 1648), a2 + 206);
    ++*(a1 + 1656);
    v5 = a2[105];
    v6 = a2[106];
    *(a1 + 1712) = a2[107];
    *(a1 + 1696) = v6;
    *(a1 + 1680) = v5;
    v7 = a2[108];
    v8 = a2[109];
    v9 = a2[110];
    *(a1 + 1776) = a2[111];
    *(a1 + 1760) = v9;
    *(a1 + 1744) = v8;
    *(a1 + 1728) = v7;
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::copy((a1 + 1792), a2 + 224);
    ++*(a1 + 1800);
  }

  re::DynamicInlineArray<re::VideoColorTags,2ul>::operator=((a1 + 1824), a2 + 228);
  re::DynamicInlineArray<re::VideoColorTags,2ul>::operator=((a1 + 1848), a2 + 231);
  if (a1 != a2)
  {
    re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::copy((a1 + 1872), a2 + 234);
    ++*(a1 + 1880);
    re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::copy((a1 + 1952), a2 + 244);
    ++*(a1 + 1960);
    re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::copy((a1 + 2000), a2 + 250);
    ++*(a1 + 2008);
  }

  re::DynamicInlineArray<unsigned int,2ul>::operator=((a1 + 2048), a2 + 256);
  v15 = *(a2 + 2088);
  *(a1 + 2072) = *(a2 + 2072);
  *(a1 + 2088) = v15;
  return a1;
}

void re::logVideoInfo(re *this, const __CFArray *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(this);
  v4 = Count;
  if (Count < 1)
  {
    v28 = 0;
    v9 = 0;
    LOBYTE(v27) = 0;
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v27 = 0;
    v9 = 0;
    v28 = 0;
    v10 = MEMORY[0x1E6963150];
    v11 = MEMORY[0x1E6963148];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(this, v8);
      *&v46.category = v10[1];
      {
      }

      *&v13.category = v10[1];
      {
      }

      *&v14.category = v10[1];
      {
        *&v15.category = *(MEMORY[0x1E69631A8] + 8);
      }

      *&v15.category = v10[1];
      {
        *&v16.category = *(MEMORY[0x1E69631B8] + 8);
      }

      *&v16.category = v10[1];
      {
      }

      *&v17.category = v10[1];
      {
      }

      *&v18.category = v11[1];
      v9 |= Count;
      ++v8;
    }

    while (v4 != v8);
  }

  v19 = *re::videoLogObjects(Count);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = "0";
    if (v5)
    {
      v21 = "1";
    }

    else
    {
      v21 = "0";
    }

    *buf = 134219778;
    v30 = v4;
    if (v6)
    {
      v22 = "1";
    }

    else
    {
      v22 = "0";
    }

    v31 = 2080;
    v32 = v21;
    if (v7)
    {
      v23 = "1";
    }

    else
    {
      v23 = "0";
    }

    v33 = 2080;
    v34 = v22;
    if (v27)
    {
      v24 = "1";
    }

    else
    {
      v24 = "0";
    }

    v35 = 2080;
    if (v28)
    {
      v25 = "1";
    }

    else
    {
      v25 = "0";
    }

    v36 = v23;
    if ((v28 & 0x100000000) != 0)
    {
      v26 = "1";
    }

    else
    {
      v26 = "0";
    }

    v37 = 2080;
    if (v9)
    {
      v20 = "1";
    }

    v38 = v24;
    v39 = 2080;
    v40 = v25;
    v41 = 2080;
    v42 = v26;
    v43 = 2080;
    v44 = v20;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Data channels changed. Number of video channels: %ld. Index 1 %s. Index 2 %s. Left eye channel %s. Right eye channel %s. SBS packed %s. O/U packed %s. Metadata %s", buf, 0x52u);
  }
}

void __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  v4 = *(a2 + 48);
  v2 = a2 + 48;
  v3 = v4;
  *(a1 + 56) = 0;
  if (v4)
  {
    v5 = (v2 + 16);
    v6 = 8 * v3;
    v7 = (a1 + 64);
    do
    {
      *v7 = 0;
      *v7++ = *v5;
      *v5++ = 0;
      v6 -= 8;
    }

    while (v6);
  }

  *(a1 + 48) = v3;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v2);
}

void ___ZN2re18dumpHDRFrameToFileERNS_18DynamicInlineArrayINS_11VideoObjectINS_20VideoPixelBufferBaseEEELm2EEERKNS0_INS_7Vector4IfEELm2EEERKNS_12ColorManagerENS_4ecs211HDRDumpInfoEdbPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v1 = *(a1[4] + 8);
  if (!*(v1 + 48))
  {
LABEL_33:
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v1 + 48);
    return;
  }

  v2 = a1;
  v3 = 0;
  v51 = a1 + 81;
  while (1)
  {
    v4 = *(v1 + 8 * v3 + 64);
    v5 = @"input";
    if (*(v2 + 112))
    {
      v5 = @"output";
    }

    v56 = v5;
    v6 = v2[10];
    v7 = v6 >> 1;
    if ((v6 & 1) == 0)
    {
      v7 = v6 >> 1;
    }

    if (v7)
    {
      v8 = v51;
      if (v6)
      {
        v8 = a1[11];
      }

      v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    }

    else
    {
      v57 = NSTemporaryDirectory();
    }

    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v4, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v4, 0);
    if (!CVPixelBufferIsPlanar(v4))
    {
      CVPixelBufferLockBaseAddress(v4, 1uLL);
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-width-%u-height-%u-bpr-%lu-time-%f-channel-%lu.raw", v56, WidthOfPlane, HeightOfPlane, CVPixelBufferGetBytesPerRow(v4), a1[13], v3];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v57, v13];
      v15 = v14;
      v16 = [v14 UTF8String];

      v17 = fopen(v16, "w+");
      if (v17)
      {
        DataSize = CVPixelBufferGetDataSize(v4);
        BaseAddress = CVPixelBufferGetBaseAddress(v4);
        v20 = fwrite(BaseAddress, DataSize, 1uLL, v17);
        if (v20 != 1)
        {
          v46 = *re::videoLogObjects(v20);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          *buf = 136315138;
          v59 = v16;
          v45 = "[re::dumpHDRFrameToFile] Failed to write pixel buffer data to %s";
          goto LABEL_45;
        }

        v21 = fclose(v17);
        if (v21)
        {
          v46 = *re::videoLogObjects(v21);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          *buf = 136315138;
          v59 = v16;
          v45 = "[re::dumpHDRFrameToFile] Failed to close %s";
LABEL_45:
          _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, v45, buf, 0xCu);
          goto LABEL_50;
        }
      }

      else
      {
        v39 = re::VideoDefaults::logEnabled(0);
        if (v39)
        {
          v46 = *re::videoLogObjects(v39);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          *buf = 136315138;
          v59 = v16;
          v45 = "[re::dumpHDRFrameToFile] Failed to open file %s";
          goto LABEL_45;
        }
      }

      v40 = CVPixelBufferUnlockBaseAddress(v4, 1uLL);
      v41 = *re::videoLogObjects(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v59 = v16;
        _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "[re::dumpHDRFrameToFile] Dumped pixel buffer to %s", buf, 0xCu);
      }

      goto LABEL_32;
    }

    CVPixelBufferLockBaseAddress(v4, 1uLL);
    PlaneCount = CVPixelBufferGetPlaneCount(v4);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v4, 0);
    v54 = PlaneCount < 2 ? 0 : CVPixelBufferGetBytesPerRowOfPlane(v4, 1uLL);
    v53 = CVPixelBufferGetHeightOfPlane(v4, 1uLL);
    v52 = PlaneCount;
    v22 = CVPixelBufferGetWidthOfPlane(v4, 1uLL);
    v23 = MEMORY[0x1E696AEC0];
    PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
    v25 = CVPixelBufferGetPixelFormatType(v4) >> 16;
    v26 = CVPixelBufferGetPixelFormatType(v4) >> 8;
    v13 = [v23 stringWithFormat:@"%c%c%c%c", HIBYTE(PixelFormatType), v25, v26, CVPixelBufferGetPixelFormatType(v4)];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-fmt-%@-width-%u-height-%u-stride-%u-cwidth-%u-cheight-%u-cstride-%u-time-%f-channel-%lu.raw", v56, v13, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane, v22, v53, v54, a1[13], v3];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v57, v27];
    v29 = v28;
    v30 = [v28 UTF8String];

    v31 = fopen(v30, "w+");
    if (!v31)
    {
      break;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v4, 0);
    v33 = fwrite(BaseAddressOfPlane, (BytesPerRowOfPlane * HeightOfPlane), 1uLL, v31);
    if (v33 != 1)
    {
      v43 = *re::videoLogObjects(v33);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 136315138;
      v59 = v30;
      v44 = "[re::dumpHDRFrameToFile] Failed to write luma data to %s";
LABEL_48:
      _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0xCu);
      goto LABEL_49;
    }

    if (v52 >= 2)
    {
      v34 = CVPixelBufferGetBaseAddressOfPlane(v4, 1uLL);
      if (v34)
      {
        v35 = fwrite(v34, (v54 * v53), 1uLL, v31);
        if (v35 != 1)
        {
          v43 = *re::videoLogObjects(v35);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          *buf = 136315138;
          v59 = v30;
          v44 = "[re::dumpHDRFrameToFile] Failed to write chroma data to %s";
          goto LABEL_48;
        }
      }
    }

    v36 = fclose(v31);
    if (v36)
    {
      v43 = *re::videoLogObjects(v36);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 136315138;
      v59 = v30;
      v44 = "[re::dumpHDRFrameToFile] Failed to close %s";
      goto LABEL_48;
    }

    v37 = CVPixelBufferUnlockBaseAddress(v4, 1uLL);
    v38 = *re::videoLogObjects(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v59 = v30;
      _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "[re::dumpHDRFrameToFile] Dumped pixel buffer to %s", buf, 0xCu);
    }

LABEL_32:
    ++v3;
    v2 = a1;
    v1 = *(a1[4] + 8);
    if (v3 >= *(v1 + 48))
    {
      goto LABEL_33;
    }
  }

  v42 = *re::videoLogObjects(0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v48 = NSTemporaryDirectory();
    v49 = v48;
    v50 = [v48 UTF8String];
    *buf = 136315394;
    v59 = v30;
    v60 = 2080;
    v61 = v50;
    _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "[re::dumpHDRFrameToFile] Failed to open file %s, please try with this directory %s", buf, 0x16u);
  }

LABEL_49:
LABEL_50:
}

re::DynamicString *__copy_helper_block_ea8_40c27_ZTSN2re4ecs211HDRDumpInfoE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  return re::DynamicString::DynamicString((a1 + 72), (a2 + 72));
}

void anonymous namespace::addFigTagGroupAndMetadata(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  cf = 0;
  v4 = FigDataChannelGroupCreate();
  if (!v4)
  {
    v7 = FigDataChannelGroupAddDataChannelWithFigTags();
    if (v7)
    {
      v8 = v7;
      v9 = *re::videoLogObjects(v7);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        CFRelease(cf);
        return;
      }

      *buf = 67109120;
      *&buf[4] = v8;
      v10 = buf;
    }

    else
    {
      v11 = *MEMORY[0x1E6963138];
      *buf = *MEMORY[0x1E6963148];
      v18 = v11;
      v12 = FigDataChannelGroupAddDataChannelWithFigTags();
      if (!v12)
      {
        re::DynamicArray<re::RigDataValue *>::add(a1, &cf);
        return;
      }

      v13 = v12;
      v9 = *re::videoLogObjects(v12);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *v15 = 67109120;
      v16 = v13;
      v10 = v15;
    }

    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to add a FigTag collection to channel group (error: %d).", v10, 8u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = *re::videoLogObjects(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Failed to create Fig data channel group (error: %d).", buf, 8u);
  }
}

void anonymous namespace::addFigTagGroup(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  v4 = FigDataChannelGroupCreate();
  if (v4)
  {
    v5 = v4;
    v6 = *re::videoLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v5;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Failed to create Fig data channel group (error: %d).", buf, 8u);
    }
  }

  else
  {
    v7 = FigDataChannelGroupAddDataChannelWithFigTags();
    if (v7)
    {
      v8 = v7;
      v9 = *re::videoLogObjects(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v12 = v8;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to add a FigTag collection to channel group (error: %d).", buf, 8u);
      }

      CFRelease(cf);
    }

    else
    {
      re::DynamicArray<re::RigDataValue *>::add(a1, &cf);
    }
  }
}

void re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = a1 + (*a1 << 7) + 16;
    v3 = a1 + 16;
    v4 = (a1 + 136);
    do
    {
      v5 = -24;
      v6 = v4;
      do
      {
        if (*v6)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v6);
        }

        *v6-- = 0;
        v5 += 8;
      }

      while (v5);
      if (*(v3 + 96))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v3 + 96));
      }

      *(v3 + 96) = 0;
      v3 += 128;
      v4 += 16;
    }

    while (v3 != v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = (a1 + 16);
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      ++v3;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(const void *a1)
{
  if (a1)
  {

    CFRelease(a1);
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Video m_object is NULL", v4, 2u);
    }
  }
}

void re::VideoObject<re::VideoPixelBufferBase>::setRef(int a1, __CVBuffer **a2, CVPixelBufferRef texture)
{
  if (*a2)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(a2);
  }

  *a2 = texture;
  if (texture)
  {

    CVPixelBufferRetain(texture);
  }
}

void re::VideoPipelineRenderable::~VideoPipelineRenderable(re::VideoPipelineRenderable *this)
{
  v2 = *(this + 66);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear((this + 88));
}

re::VideoPipelineRenderableChannel *re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear(re::VideoPipelineRenderableChannel *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 208 * *result;
    result = (result + 16);
    do
    {
      re::VideoPipelineRenderableChannel::~VideoPipelineRenderableChannel(result);
      result = (v3 + 208);
      v2 -= 208;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

void re::VideoPipelineRenderableChannel::~VideoPipelineRenderableChannel(re::VideoPipelineRenderableChannel *this)
{
  if (*(this + 22))
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 22);
  }

  *(this + 22) = 0;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (*(this + 40) == 1)
  {
    if (*(this + 4))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 4);
    }

    *(this + 4) = 0;
  }
}

void re::VideoSample::~VideoSample(id *this)
{
  v2 = this[11];
  if (v2)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v2);
  }

  this[11] = 0;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear((this + 7));
}

void re::VideoMetalTextures::~VideoMetalTextures(__CVBuffer **this)
{
  for (i = 15; i != 12; --i)
  {
  }

  if (this[12])
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 12);
  }

  this[12] = 0;
}

void re::VideoProcessorConfig::~VideoProcessorConfig(re::VideoProcessorConfig *this)
{
  if (*(this + 496) == 1)
  {
    v2 = *(this + 64);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }
  }

  re::Optional<re::VideoPSEConfig>::~Optional(this + 440);
  re::Optional<re::VideoMipGenConfig>::~Optional(this + 176);
  re::Optional<re::VideoTransformSurfaceConfig>::~Optional(this + 144);
  re::Optional<re::VideoHDRConfig>::~Optional(this + 48);
}

uint64_t *re::DynamicInlineArray<__CVBuffer *,2ul>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = a2 + 2;
      v7 = &v6[v4];
      v8 = a1 + 2;
      if (v4)
      {
        memmove(a1 + 2, v6, 8 * v4);
      }

      memcpy(&v8[v4], v7, 8 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 2, a2 + 2, 8 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

unint64_t *re::DynamicInlineArray<__CVBuffer *,2ul>::move(unint64_t *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *result;
  v6 = *a2 - *result;
  if (*a2 >= *result)
  {
    v7 = a2 + 2;
    v8 = result + 2;
    if (v5)
    {
      memmove(result + 2, v7, 8 * v5);
    }

    result = memcpy(&v8[v5], &a2[v5 + 2], 8 * v6);
  }

  else if (v4)
  {
    result = memmove(result + 2, a2 + 2, 8 * v4);
  }

  *v3 = v4;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

void re::VideoPresentationGroup::~VideoPresentationGroup(re::VideoPresentationGroup *this)
{
  re::deinitVideoPresentationGroup(this);
  *(this + 256) = 0;
  ++*(this + 514);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(this + 2000);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(this + 1952);
  *(this + 234) = 0;
  ++*(this + 470);
  *(this + 231) = 0;
  ++*(this + 464);
  *(this + 228) = 0;
  ++*(this + 458);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(this + 1792);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(this + 1648);
  *(this + 200) = 0;
  ++*(this + 402);
  v2 = *(this + 197);
  if (v2)
  {

    *(this + 197) = 0;
  }

  if (*(this + 196))
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 196);
  }

  *(this + 196) = 0;
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(this + 1536);
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(this + 1504);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(this + 1232);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(this + 1200);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(this + 1168);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(this + 896);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(this + 624);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(this + 352);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(this + 80);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(this + 48);
  *(this + 3) = 0;
  ++*(this + 8);
}

void sub_1E203EC20(_Unwind_Exception *a1)
{
  *(v1 + 2048) = 0;
  ++*(v1 + 2056);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(v1 + 2000);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(v1 + 1952);
  *(v1 + 1872) = 0;
  ++*(v1 + 1880);
  *(v1 + 1848) = 0;
  ++*(v1 + 1856);
  *(v1 + 1824) = 0;
  ++*(v1 + 1832);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(v1 + 1792);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(v1 + 1648);
  *(v1 + 1600) = 0;
  ++*(v1 + 1608);
  v3 = *(v1 + 1576);
  if (v3)
  {

    *(v1 + 1576) = 0;
  }

  if (*(v1 + 1568))
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v1 + 1568));
  }

  *(v1 + 1568) = 0;
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(v1 + 1536);
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(v1 + 1504);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(v1 + 1232);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v1 + 1200);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v1 + 1168);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(v1 + 896);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(v1 + 624);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(v1 + 352);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(v1 + 80);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v1 + 48);
  *(v1 + 24) = 0;
  ++*(v1 + 32);
  _Unwind_Resume(a1);
}

unint64_t *re::DynamicInlineArray<unsigned int,2ul>::operator=(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = a2 + 12;
      v7 = &v6[4 * v4];
      v8 = a1 + 12;
      if (v4)
      {
        memmove(a1 + 12, v6, 4 * v4);
      }

      memcpy(&v8[4 * v4], v7, 4 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 12, a2 + 12, 4 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

uint64_t *re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = a2 + 2;
      v7 = &v6[2 * v4];
      v8 = a1 + 2;
      if (v4)
      {
        memmove(a1 + 2, v6, 16 * v4);
      }

      memcpy(&v8[2 * v4], v7, 16 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 2, a2 + 2, 16 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

unint64_t *re::DynamicInlineArray<re::VideoColorTags,2ul>::operator=(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = a2 + 12;
      v7 = 3 * v4;
      v8 = a1 + 12;
      if (v4)
      {
        memmove(a1 + 12, a2 + 12, 3 * v4);
      }

      memcpy(&v8[v7], &v6[v7], 3 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 12, a2 + 12, 3 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

void re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 2;
  v4 = *a2;
  v5 = a1 + 2;
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures*>(&v24, (a2 + 2), &v3[16 * *a1], v5);
    v12 = *a1;
    if (*a1 != v4)
    {
      v13 = &v3[16 * v4];
      v14 = &v3[16 * v12];
      v15 = &v5[16 * v12];
      v16 = &a2[16 * v12 + 15];
      v17 = &a1[16 * v12];
      do
      {
        v18 = *(v14 + 1);
        *v15 = *v14;
        *(v15 + 1) = v18;
        v19 = *(v14 + 2);
        v20 = *(v14 + 3);
        v21 = *(v14 + 4);
        *(v15 + 73) = *(v14 + 73);
        *(v15 + 3) = v20;
        *(v15 + 4) = v21;
        *(v15 + 2) = v19;
        v15[12] = 0;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v15 + 96, v15 + 12, v14[12]);
        for (i = 0; i != 3; ++i)
        {
          v17[i + 15] = 0;
          re::VideoObject<re::VideoPixelBufferBase>::setRef(v17 + i * 8 + 120, &v17[i + 15], v16[i]);
        }

        v14 += 16;
        v15 += 16;
        v17 += 16;
        v16 += 16;
      }

      while (v14 != v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures*>(&v23, (a2 + 2), &v3[16 * v4], v5);
    if (v4 != *a1)
    {
      v6 = &v5[16 * *a1];
      v7 = &v5[16 * v4];
      v8 = &a1[16 * v4 + 17];
      do
      {
        v9 = -24;
        v10 = v8;
        do
        {
          if (*v10)
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v10);
          }

          *v10-- = 0;
          v9 += 8;
        }

        while (v9);
        if (v7[12])
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v7 + 12);
        }

        v7[12] = 0;
        v7 += 16;
        v8 += 16;
      }

      while (v7 != v6);
    }
  }

  *a1 = v4;
}

void sub_1E203F098(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v5 = (v3 + 112);
    v6 = -v2;
    do
    {
      if (*v5)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v5);
      }

      *v5-- = 0;
      v6 += 8;
    }

    while (v6);
  }

  if (*v1)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v1);
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *(v5 + 16);
      *a4 = *v5;
      *(a4 + 16) = v7;
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      v10 = *(v5 + 64);
      *(a4 + 73) = *(v5 + 73);
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 32) = v8;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a4 + 96, (a4 + 96), *(v5 + 96));
      for (i = 104; i != 128; i += 8)
      {
        re::VideoObject<re::VideoPixelBufferBase>::setRef(a4 + i, (a4 + i), *(v5 + i));
      }

      v5 += 128;
      a4 += 128;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void re::DynamicInlineArray<re::VideoMetalTextures,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 2;
  v4 = *a2;
  v5 = a1 + 2;
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoMetalTextures const*,re::VideoMetalTextures const*,re::VideoMetalTextures*>(&v24, (a2 + 2), &v3[16 * *a1], v5);
    v11 = *a1;
    if (*a1 != v4)
    {
      v12 = &v3[16 * v4];
      v13 = &v3[16 * v11];
      v14 = &v5[16 * v11];
      v15 = (v11 << 7) | 0x78;
      v16 = a2 + v15;
      v17 = a1 + v15;
      do
      {
        v18 = *(v13 + 1);
        *v14 = *v13;
        *(v14 + 1) = v18;
        v19 = *(v13 + 2);
        v20 = *(v13 + 3);
        v21 = *(v13 + 4);
        *(v14 + 73) = *(v13 + 73);
        *(v14 + 3) = v20;
        *(v14 + 4) = v21;
        *(v14 + 2) = v19;
        v14[12] = 0;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v14 + 96, v14 + 12, v13[12]);
        for (i = 0; i != 24; i += 8)
        {
          *&v17[i] = *&v16[i];
        }

        v13 += 16;
        v14 += 16;
        v16 += 128;
        v17 += 128;
      }

      while (v13 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoMetalTextures const*,re::VideoMetalTextures const*,re::VideoMetalTextures*>(&v23, (a2 + 2), &v3[16 * v4], v5);
    if (v4 != *a1)
    {
      v6 = &v5[16 * *a1];
      v7 = &v5[16 * v4];
      v8 = &a1[16 * v4 + 17];
      do
      {
        for (j = 0; j != -3; --j)
        {
        }

        if (v7[12])
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v7 + 12);
        }

        v7[12] = 0;
        v7 += 16;
        v8 += 16;
      }

      while (v7 != v6);
    }
  }

  *a1 = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::VideoMetalTextures const*,re::VideoMetalTextures const*,re::VideoMetalTextures*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *(v5 + 16);
      *a4 = *v5;
      *(a4 + 16) = v7;
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      v10 = *(v5 + 64);
      *(a4 + 73) = *(v5 + 73);
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 32) = v8;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a4 + 96, (a4 + 96), *(v5 + 96));
      for (i = 104; i != 128; i += 8)
      {
        objc_storeStrong((a4 + i), *(v5 + i));
      }

      v5 += 128;
      a4 += 128;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v11 = a2 + 2;
    v12 = a1 + 2;
    if (v4)
    {
      v13 = 8 * v4;
      v14 = (a1 + 2);
      v15 = (a2 + 2);
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v14++, v15++);
        v13 -= 8;
      }

      while (v13);
      v4 = *a1;
    }

    if (v4 != v3)
    {
      v16 = &v11[v4];
      v17 = &v12[v4];
      v18 = 8 * v3 - 8 * v4;
      do
      {
        v19 = *v16++;
        *v17++ = v19;
        v18 -= 8;
      }

      while (v18);
    }
  }

  else
  {
    v5 = a1 + 2;
    if (v3)
    {
      v6 = (a2 + 2);
      v7 = 8 * v3;
      v8 = (a1 + 2);
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v8++, v6++);
        v7 -= 8;
      }

      while (v7);
      v4 = *a1;
    }

    if (v3 != v4)
    {
      v9 = &v5[v3];
      v10 = 8 * v4 - 8 * v3;
      do
      {
        if (*v9)
        {

          *v9 = 0;
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  *a1 = v3;
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v12 = a2 + 2;
    v13 = a1 + 2;
    if (v4)
    {
      v14 = 8 * v4;
      v15 = (a1 + 2);
      v16 = (a2 + 2);
      do
      {
        v17 = *v16++;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v15, v15, v17);
        ++v15;
        v14 -= 8;
      }

      while (v14);
      v4 = *a1;
    }

    if (v4 != v3)
    {
      v18 = &v12[v4];
      v19 = &v13[v4];
      v20 = v19;
      v21 = 8 * v3 - 8 * v4;
      do
      {
        *v20++ = 0;
        v22 = *v18++;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v19, v19, v22);
        v19 = v20;
        v21 -= 8;
      }

      while (v21);
    }
  }

  else
  {
    v5 = a1 + 2;
    if (v3)
    {
      v6 = (a2 + 2);
      v7 = 8 * v3;
      v8 = (a1 + 2);
      do
      {
        v9 = *v6++;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v8, v8, v9);
        ++v8;
        v7 -= 8;
      }

      while (v7);
      v4 = *a1;
    }

    if (v3 != v4)
    {
      v10 = &v5[v3];
      v11 = 8 * v4 - 8 * v3;
      do
      {
        if (*v10)
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v10);
        }

        *v10++ = 0;
        v11 -= 8;
      }

      while (v11);
    }
  }

  *a1 = v3;
}

void *re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::copy(void *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *result;
  v5 = *a2 - *result;
  if (*a2 >= *result)
  {
    v6 = a2 + 2;
    v7 = &v6[4 * v4];
    v8 = result + 2;
    if (v4)
    {
      memmove(result + 2, v6, 32 * v4 - 7);
    }

    result = memcpy(&v8[4 * v4], v7, 32 * v5);
  }

  else if (v3)
  {
    result = memmove(result + 2, a2 + 2, 32 * v3 - 7);
  }

  *v2 = v3;
  return result;
}

void re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 2;
  v4 = *a2;
  v5 = a1 + 2;
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram>*>(&v13, a2 + 2, &v3[2 * *a1], v5);
    v8 = *a1;
    if (*a1 != v4)
    {
      v9 = &v3[2 * v8];
      v10 = &v5[2 * v8];
      do
      {
        v11 = v9[1];
        *v10 = *v9;
        v10[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v9 += 2;
        v10 += 2;
      }

      while (v9 != &v3[2 * v4]);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram>*>(&v12, a2 + 2, &v3[2 * v4], v5);
    if (v4 != *a1)
    {
      v6 = 16 * *a1 - 16 * v4;
      v7 = &a1[2 * v4 + 3];
      do
      {
        if (*v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*v7);
        }

        v7 += 2;
        v6 -= 16;
      }

      while (v6);
    }
  }

  *a1 = v4;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 1uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

void re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 16 * *a1;
    v3 = (a1 + 24);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_weak(*v3);
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v12 = a2 + 2;
    v13 = a1 + 2;
    if (v4)
    {
      v14 = 8 * v4;
      v15 = (a1 + 2);
      v16 = (a2 + 2);
      do
      {
        v17 = *v16++;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v15, v15, v17);
        ++v15;
        v14 -= 8;
      }

      while (v14);
      v4 = *a1;
    }

    if (v4 != v3)
    {
      v18 = &v12[v4];
      v19 = &v13[v4];
      v20 = v19;
      v21 = 8 * v3 - 8 * v4;
      do
      {
        *v20++ = 0;
        v22 = *v18++;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v19, v19, v22);
        v19 = v20;
        v21 -= 8;
      }

      while (v21);
    }
  }

  else
  {
    v5 = a1 + 2;
    if (v3)
    {
      v6 = (a2 + 2);
      v7 = 8 * v3;
      v8 = (a1 + 2);
      do
      {
        v9 = *v6++;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v8, v8, v9);
        ++v8;
        v7 -= 8;
      }

      while (v7);
      v4 = *a1;
    }

    if (v3 != v4)
    {
      v10 = &v5[v3];
      v11 = 8 * v4 - 8 * v3;
      do
      {
        if (*v10)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v10);
        }

        *v10++ = 0;
        v11 -= 8;
      }

      while (v11);
    }
  }

  *a1 = v3;
}

void std::__shared_ptr_emplace<re::VideoPSEProcessor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CC4BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void *re::RigRuntimeData::clear(re::RigRuntimeData *this)
{
  *(this + 1) = -1;
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 2);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);
  re::FixedArray<re::RigEvaluation>::deinit(this + 8);
  re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(this + 25);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 28);

  return re::FixedArray<re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>>::deinit(this + 34);
}

void *re::FixedArray<re::RigEvaluation>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 0;
      v5 = result[2];
      v6 = 1528 * v2;
      do
      {
        re::DynamicArray<re::internal::RigIKCall>::deinit(v5 + v4 + 1488);
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1464));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1440));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1416));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1392));
        re::FixedArray<re::FixedArray<unsigned int>>::deinit((v5 + v4 + 1368));
        re::FixedArray<re::FixedArray<unsigned int>>::deinit((v5 + v4 + 1344));
        re::FixedArray<re::internal::RigIKCall>::deinit((v5 + v4 + 1320));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1296));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1272));
        re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v5 + v4 + 1224));
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v5 + v4 + 1176));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1152));
        re::RigDefinition::~RigDefinition((v5 + v4 + 8));
        v4 += 1528;
      }

      while (v6 != v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v4);
        v4 += 40;
        v5 -= 40;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v4);
        v4 += 40;
        v5 -= 40;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::RigRuntimeData::update(re::RigRuntimeData *this, const re::RigAsset *a2, const re::MeshAsset *a3, const re::MeshNameMap *a4, uint64_t a5)
{
  if (*(this + 1) != a5)
  {
    if (!*this)
    {
      *this = *a2;
    }

    re::RigRuntimeData::resetRigEvaluations(this, a2);
    re::RigRuntimeData::setRigEntryHandles(this, a2, a3, a4);
    *(this + 1) = a5;
    *(this + 296) = 0;
  }
}

void re::RigRuntimeData::resetRigEvaluations(re::RigRuntimeData *this, const re::RigAsset *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  re::RigRuntimeData::clear(this);
  v4 = *(a2 + 2);
  v5 = *this;
  buf[0] = -1;
  re::FixedArray<unsigned long>::init<unsigned long const&>(this + 5, v5, v4, buf);
  v7 = *this;
  *(this + 8) = *this;
  *(this + 9) = v4;
  if (v4)
  {
    if (v4 < 0x2AE3DA78A0D674)
    {
      v8 = (*(*v7 + 32))(v7, 1528 * v4, 8);
      *(this + 10) = v8;
      if (!v8)
      {
        goto LABEL_42;
      }

      v10 = v8;
      v11 = v4 - 1;
      if (v4 != 1)
      {
        do
        {
          bzero(v10, 0x5F0uLL);
          *(v10 + 1212) = 0x7FFFFFFF;
          *(v10 + 1224) = 0u;
          *(v10 + 1240) = 0u;
          *(v10 + 1256) = 0x7FFFFFFF00000000;
          v12 = v10 + 1272;
          *(v10 + 1520) = 0;
          *(v10 + 1272) = 0u;
          *(v10 + 1288) = 0u;
          *(v10 + 1304) = 0u;
          *(v10 + 1320) = 0u;
          *(v10 + 1336) = 0u;
          *(v10 + 1352) = 0u;
          *(v10 + 1368) = 0u;
          *(v10 + 1384) = 0u;
          *(v10 + 1400) = 0u;
          *(v10 + 1416) = 0u;
          *(v10 + 1432) = 0u;
          *(v10 + 1448) = 0u;
          *(v10 + 1464) = 0u;
          *(v10 + 1480) = 0u;
          *(v10 + 1512) = 0;
          v10 += 1528;
          *(v12 + 224) = 0u;
          --v11;
        }

        while (v11);
      }

      bzero(v10, 0x5F0uLL);
      v13 = 0;
      *(v10 + 1212) = 0x7FFFFFFF;
      *(v10 + 1224) = 0u;
      *(v10 + 1240) = 0u;
      *(v10 + 1256) = 0x7FFFFFFF00000000;
      *(v10 + 1520) = 0;
      *(v10 + 1272) = 0u;
      *(v10 + 1288) = 0u;
      *(v10 + 1304) = 0u;
      *(v10 + 1320) = 0u;
      *(v10 + 1336) = 0u;
      *(v10 + 1352) = 0u;
      *(v10 + 1368) = 0u;
      *(v10 + 1384) = 0u;
      *(v10 + 1400) = 0u;
      *(v10 + 1416) = 0u;
      *(v10 + 1432) = 0u;
      *(v10 + 1448) = 0u;
      *(v10 + 1464) = 0u;
      *(v10 + 1480) = 0u;
      *(v10 + 1496) = 0u;
      *(v10 + 1512) = 0;
      while (1)
      {
        v14 = *(a2 + 2);
        if (v14 <= v13)
        {
          break;
        }

        v14 = *(this + 9);
        if (v14 <= v13)
        {
          goto LABEL_33;
        }

        v15 = (*(a2 + 4) + 1144 * v13);
        v16 = re::RigEvaluation::init((*(this + 10) + 1528 * v13), *this, v15, &v37);
        if (v37)
        {
          if (v13 < *(a2 + 7))
          {
            v17 = *(v15 + 140);
            if (v17)
            {
              v18 = 0;
              v19 = (*(a2 + 9) + 16 * v13);
              v20 = *(v15 + 142);
              while (!re::StringID::operator==(v20, v19))
              {
                ++v18;
                v20 += 4;
                if (v17 == v18)
                {
                  goto LABEL_17;
                }
              }

              v14 = *(this + 6);
              if (v14 <= v13)
              {
                goto LABEL_37;
              }

              *(*(this + 7) + 8 * v13) = v18;
            }
          }
        }

        else
        {
          v21 = *re::assetsLogObjects(v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = &v42[13];
            if (v42[12])
            {
              v22 = v43;
            }

            LODWORD(buf[0]) = 134218242;
            *(buf + 4) = v13;
            WORD2(buf[1]) = 2080;
            *(&buf[1] + 6) = v22;
            _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Rig entry %zu has an invalid rig definition: %s.", buf, 0x16u);
          }
        }

LABEL_17:
        if (v37 & 1) == 0 && *&v42[4] && (v42[12])
        {
          (*(**&v42[4] + 40))();
        }

        if (++v13 == v4)
        {
          return;
        }
      }

      *v44 = 0;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      memset(buf, 0, sizeof(buf));
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v37 = 136315906;
      v38 = "operator[]";
      v39 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v40 = 797;
      v41 = 2048;
      *v42 = v13;
      *&v42[8] = 2048;
      *&v42[10] = v14;
      _os_log_send_and_compose_impl(v25, v44, buf, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v34, v35);
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v36 = 0;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      memset(buf, 0, sizeof(buf));
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v46 = 468;
      v47 = 2048;
      v48 = v13;
      v49 = 2048;
      v50 = v14;
      _os_log_send_and_compose_impl(v28, &v36, buf, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v34, v35);
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v36 = 0;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      memset(buf, 0, sizeof(buf));
      v29 = MEMORY[0x1E69E9C10];
      v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      if (v30)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v46 = 468;
      v47 = 2048;
      v48 = v13;
      v49 = 2048;
      v50 = v14;
      _os_log_send_and_compose_impl(v31, &v36, buf, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v34, v35);
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 1528, v4);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v32, v33);
    __break(1u);
LABEL_42:
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }
}

void re::RigRuntimeData::setRigEntryHandles(re::RigRuntimeData *this, const re::RigAsset *a2, const re::MeshAsset *a3, const re::MeshNameMap *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(this + 2, *this, *(a4 + 54));
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = 0;
    *&v7 = 134218242;
    v40 = v7;
    v41 = *(a2 + 12);
    v42 = a2;
    v43 = a3;
    do
    {
      v10 = *(a2 + 12);
      if (v10 <= v9)
      {
        goto LABEL_42;
      }

      v11 = *(a2 + 14) + (v9 << 6);
      v12 = *(v11 + 56);
      if (*(this + 9) > v12 && *(*(this + 10) + 1528 * v12 + 1176))
      {
        v13 = *(a3 + 156);
        if (v13 < 2)
        {
LABEL_10:
          v14 = 0;
        }

        else
        {
          v14 = 1;
          while (1)
          {
            v15 = re::MeshAsset::skeletonAtIndex(a3, v14);
            if (re::StringID::operator==(v15, (v11 + 40)))
            {
              break;
            }

            if (v13 == ++v14)
            {
              goto LABEL_10;
            }
          }
        }

        re::MeshNameMap::meshInstancePartsForIdentifier(buf, a4, v11);
        *v48 = a3;
        *&v48[8] = a4;
        *&v48[16] = *buf;
        v51 = v61;
        v52 = 0;
        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v48[24], &buf[8]);
        v16 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf[8]);
        v17 = *&v48[16];
        if (*&v48[16])
        {
          v45 = v48;
          v46 = 0;
          goto LABEL_16;
        }

        v18 = *re::assetsLogObjects(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v11 + 16);
          *buf = v40;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v19;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Mesh rig %zu did not apply to any known mesh: %s.", buf, 0x16u);
        }

        v17 = *&v48[16];
        v45 = v48;
        v46 = 0;
        if (*&v48[16])
        {
          do
          {
LABEL_16:
            v20 = re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModel(&v45);
            *buf = v46;
            v21 = (*(*v45[7] + 16))(v45[7], buf);
            *buf = v46;
            v22 = (*(*v45[7] + 16))(v45[7], buf);
            v23 = *(v20 + 224);
            if (v23)
            {
              if (*(v23 + 8) > WORD2(v22))
              {
                v10 = WORD2(v22);
                if (v14 == *(*(v23 + 16) + 88 * WORD2(v22) + 4))
                {
                  v24 = v21;
                  v25 = *(this + 3);
                  if (v25 <= v21)
                  {
                    v47 = 0;
                    v62 = 0u;
                    v63 = 0u;
                    v61 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v29 = MEMORY[0x1E69E9C10];
                    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v53 = 136315906;
                    *&v53[4] = "operator[]";
                    v54 = 1024;
                    if (v30)
                    {
                      v31 = 3;
                    }

                    else
                    {
                      v31 = 2;
                    }

                    v55 = 468;
                    v56 = 2048;
                    v57 = v21;
                    v58 = 2048;
                    v59 = v25;
                    _os_log_send_and_compose_impl(v31, &v47, buf, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v40, *(&v40 + 1));
                    _os_crash_msg();
                    __break(1u);
LABEL_34:
                    v47 = 0;
                    v62 = 0u;
                    v63 = 0u;
                    v61 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v10 = MEMORY[0x1E69E9C10];
                    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v53 = 136315906;
                    *&v53[4] = "operator[]";
                    v54 = 1024;
                    if (v32)
                    {
                      v33 = 3;
                    }

                    else
                    {
                      v33 = 2;
                    }

                    v55 = 468;
                    v56 = 2048;
                    v57 = v21;
                    v58 = 2048;
                    v59 = v25;
                    _os_log_send_and_compose_impl(v33, &v47, buf, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v40, *(&v40 + 1));
                    _os_crash_msg();
                    __break(1u);
LABEL_38:
                    v47 = 0;
                    v62 = 0u;
                    v63 = 0u;
                    v61 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v34 = MEMORY[0x1E69E9C10];
                    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v53 = 136315906;
                    *&v53[4] = "operator[]";
                    v54 = 1024;
                    if (v35)
                    {
                      v36 = 3;
                    }

                    else
                    {
                      v36 = 2;
                    }

                    v55 = 468;
                    v56 = 2048;
                    v57 = v10;
                    v58 = 2048;
                    v59 = v24;
                    _os_log_send_and_compose_impl(v36, &v47, buf, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v40, *(&v40 + 1));
                    _os_crash_msg();
                    __break(1u);
LABEL_42:
                    *v53 = 0;
                    v62 = 0u;
                    v63 = 0u;
                    v61 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v37 = MEMORY[0x1E69E9C10];
                    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v48 = 136315906;
                    *&v48[4] = "operator[]";
                    *&v48[12] = 1024;
                    if (v38)
                    {
                      v39 = 3;
                    }

                    else
                    {
                      v39 = 2;
                    }

                    *&v48[14] = 797;
                    *&v48[18] = 2048;
                    *&v48[20] = v9;
                    v49 = 2048;
                    v50 = v10;
                    _os_log_send_and_compose_impl(v39, v53, buf, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v40, *(&v40 + 1));
                    _os_crash_msg();
                    __break(1u);
                  }

                  v26 = (*(this + 4) + 24 * v21);
                  if (!*v26)
                  {
                    re::FixedArray<unsigned int>::init<unsigned int const&>(v26, *this, *(v20 + 56), &re::RigRuntimeData::kInvalidRigDefinitionIndex);
                    v25 = *(this + 3);
                  }

                  if (v25 <= v21)
                  {
                    goto LABEL_34;
                  }

                  v27 = *(this + 4) + 24 * v21;
                  v24 = *(v27 + 8);
                  if (v24 <= v10)
                  {
                    goto LABEL_38;
                  }

                  *(*(v27 + 16) + 4 * v10) = *(v11 + 56);
                }
              }
            }

            v28 = ++v46;
          }

          while (v45 != v48 || v28 != v17);
        }

        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v48[24]);
        a2 = v42;
        a3 = v43;
        v8 = v41;
      }

      ++v9;
    }

    while (v9 != v8);
  }
}

void re::RigRuntimeData::update(unint64_t this, uint64_t a2, re::MeshAsset *a3, unsigned int *a4, uint64_t a5, re *a6, uint64_t a7, uint64_t a8)
{
  v156 = *MEMORY[0x1E69E9840];
  if (*(this + 8) != a8)
  {
    v11 = this;
    v12 = *this;
    if (!*this)
    {
      v12 = *(a2 + 120);
      *this = v12;
    }

    if (!*(this + 96))
    {
      *(this + 192) = a7;
      re::RigEnvironment::init((this + 96), v12);
    }

    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::removeLast(v11 + 96);
    re::RigEnvironment::pushEnvironmentScope((v11 + 96));
    *(v11 + 152) = a5;
    re::makeBindNode(v139, a6);
    if ((v11 + 160) != v139)
    {
      re::BindNode::copy((v11 + 160), v139);
    }

    re::BindNode::deinit(v139);
    *(v11 + 88) = a2 + 120;
    v133 = a2;
    if (*(a2 + 136))
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v133[2];
        if (v17 <= v16)
        {
          goto LABEL_139;
        }

        re::StringID::StringID(&v136, (v133[4] + v14));
        v17 = v133[17];
        if (v17 <= v16)
        {
          goto LABEL_143;
        }

        re::RigEnvironment::insertRigGraphNode((v11 + 96), &v136, (v133[19] + v15), v145);
        if ((v145[0] & 1) == 0)
        {
          v19 = *re::assetsLogObjects(v18);
          v18 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            if (v145[32])
            {
              v20 = v146;
            }

            else
            {
              v20 = &v145[33];
            }

            *buf = 134218754;
            *&buf[4] = v16;
            *&buf[12] = 2080;
            *&buf[14] = v137;
            *&buf[22] = 1024;
            *&buf[24] = *&v145[8];
            *&buf[28] = 2080;
            *&buf[30] = v20;
            _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Could not insert rig graph node %zu (%s). [%d] %s", buf, 0x26u);
          }
        }

        if ((v145[0] & 1) == 0)
        {
          v18 = *&v145[24];
          if (*&v145[24])
          {
            if (v145[32])
            {
              v18 = (*(**&v145[24] + 40))();
            }
          }
        }

        if (v136)
        {
          if (v136)
          {
          }
        }

        ++v16;
        v15 += 200;
        v14 += 216;
      }

      while (v16 < *(*(v11 + 88) + 16));
    }

    re::RigRuntimeData::clear(v11);
    re::FixedArray<re::FixedArray<unsigned int>>::init<>((v11 + 16), *v11, a4[54]);
    v21 = v133;
    v22 = v133[7];
    *(v11 + 208) = v22;
    if (v22)
    {
      if (v22 > 0x666666666666666)
      {
LABEL_155:
        re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v22);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v118, v123);
        __break(1u);
        goto LABEL_156;
      }

      *(v11 + 216) = v24;
      if (!v24)
      {
LABEL_156:
        re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
        goto LABEL_157;
      }

      v27 = v22 - 1;
      if (v22 != 1)
      {
        do
        {
          *(v24 + 32) = 0;
          *(v24 + 8) = 0;
          *(v24 + 16) = 0;
          *v24 = 0;
          *(v24 + 24) = 0;
          v24 += 40;
          --v27;
        }

        while (v27);
      }

      *(v24 + 32) = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
      *v24 = 0;
      *(v24 + 24) = 0;
    }

    v135 = v11;
    if (v22)
    {
      v13 = 0;
      i = buf;
      v128 = v22;
      while (1)
      {
        v17 = *(v21 + 56);
        if (v17 <= v13)
        {
          goto LABEL_151;
        }

        v30 = *(v21 + 72) + (v13 << 6);
        *buf = v13;
        v31 = *re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(v11 + 224, (v30 + 56), buf);
        v17 = *(a3 + 156);
        if (v17 < 2)
        {
          v32 = 0;
        }

        else
        {
          v32 = 1;
          while (1)
          {
            v33 = *(re::MeshAsset::skeletonAtIndex(a3, v32) + 8);
            v34 = strlen(v33);
            v35 = *(v30 + 48);
            v36 = strlen(v35);
            v145[0] = 0;
            if (&v33[v34] != std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>(v33, &v33[v34], v35, &v35[v36]))
            {
              break;
            }

            if (v17 == ++v32)
            {
              v32 = 0;
              break;
            }
          }
        }

        re::MeshNameMap::meshInstancePartsForIdentifier(buf, a4, v30);
        *v145 = a3;
        *&v145[8] = a4;
        *&v145[16] = *buf;
        v147 = *&buf[32];
        v148 = 0;
        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v145[24], &buf[8]);
        v37 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf[8]);
        v38 = *&v145[16];
        v131 = v30;
        v132 = v31;
        v130 = v13;
        if (*&v145[16])
        {
          v136 = v145;
          v137 = 0;
          break;
        }

        v39 = *re::assetsLogObjects(v37);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(v30 + 16);
          *buf = 134218242;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = v40;
          _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "Mesh rig graph %zu did not apply to any known mesh: %s.", buf, 0x16u);
        }

        v38 = *&v145[16];
        v136 = v145;
        v137 = 0;
        if (*&v145[16])
        {
          break;
        }

LABEL_72:
        v28 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v145[24]);
        v13 = v130 + 1;
        v11 = v135;
        v21 = v133;
        if (v130 + 1 == v128)
        {
          goto LABEL_73;
        }
      }

      while (1)
      {
        v41 = re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModel(&v136);
        *buf = v137;
        v42 = (*(*v136[7] + 16))(v136[7], buf);
        *buf = v137;
        v43 = (*(*v136[7] + 16))(v136[7], buf);
        v44 = *(v41 + 224);
        if (v44)
        {
          if (*(v44 + 8) > WORD2(v43))
          {
            v21 = WORD2(v43);
            v45 = *(*(v44 + 16) + 88 * WORD2(v43) + 4);
            if (v32 == v45 && *(a3 + 156) > v45)
            {
              v16 = v42;
              v11 = v135[3];
              if (v11 <= v42)
              {
                goto LABEL_123;
              }

              v17 = 24;
              v47 = (v135[4] + 24 * v42);
              if (!*v47)
              {
                re::FixedArray<unsigned int>::init<unsigned int const&>(v47, *v135, *(v41 + 56), &re::RigRuntimeData::kInvalidRigDefinitionIndex);
                v11 = v135[3];
              }

              if (v11 <= v42)
              {
                goto LABEL_127;
              }

              v48 = v135[4] + 24 * v42;
              v17 = *(v48 + 8);
              if (v17 <= v21)
              {
                goto LABEL_131;
              }

              v11 = v132;
              *(*(v48 + 16) + 4 * v21) = *(v131 + 56);
              v17 = v135[26];
              if (v17 <= v132)
              {
                goto LABEL_135;
              }

              v49 = v135[27] + 40 * v132;
              if (!*v49)
              {
                *v49 = *v135;
                re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(v49, 0);
                ++*(v49 + 24);
                v50 = re::MeshAsset::skeletonAtIndex(a3, v32);
                v17 = v135[26];
                v11 = v132;
                if (v17 <= v132)
                {
                  goto LABEL_147;
                }

                v52 = v50;
                v21 = *(v50 + 24);
                if (*(v50 + 24))
                {
                  break;
                }
              }
            }
          }
        }

LABEL_70:
        v63 = ++v137;
        if (v136 == v145 && v63 == v38)
        {
          goto LABEL_72;
        }
      }

      v13 = 0;
      v11 = 0;
      v53 = (v135[27] + 40 * v132);
      v17 = 8;
      while (1)
      {
        v54 = v52[3];
        if (v54 <= v11)
        {
          break;
        }

        v16 = *(v52[4] + v17);
        v55 = strlen(v16);
        *buf = v16;
        *&buf[8] = v55;
        v57 = v52[6];
        if (v57 <= v11)
        {
          goto LABEL_113;
        }

        v58 = *(v52[7] + 4 * v11);
        if (v58 == -1)
        {
          v58 = -1;
        }

        *&buf[16] = v58;
        v59 = v52[12];
        if (v59 <= v11)
        {
          goto LABEL_114;
        }

        v60 = (v52[13] + v13);
        buf[32] = 1;
        v62 = v60[1];
        v61 = v60[2];
        v141 = *v60;
        v142 = v62;
        v143 = v61;
        v144 = 0;
        re::DynamicArray<re::RigHierarchyJointDescription>::add(v53, buf);
        ++v11;
        v13 += 48;
        v17 += 16;
        if (v21 == v11)
        {
          goto LABEL_70;
        }
      }

      re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v54);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v115, v120);
      __break(1u);
LABEL_113:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v57);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v116, v121);
      __break(1u);
LABEL_114:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v59);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v117, v122);
      __break(1u);
LABEL_115:
      *v149 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v145 = 136315906;
      *&v145[4] = "operator[]";
      *&v145[12] = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      *&v145[14] = 797;
      *&v145[18] = 2048;
      *&v145[20] = i;
      *&v145[28] = 2048;
      *&v145[30] = v17;
      _os_log_send_and_compose_impl(v88, v149, buf, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
LABEL_119:
      *v149 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v89 = MEMORY[0x1E69E9C10];
      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v145 = 136315906;
      *&v145[4] = "operator[]";
      *&v145[12] = 1024;
      if (v90)
      {
        v91 = 3;
      }

      else
      {
        v91 = 2;
      }

      *&v145[14] = 468;
      *&v145[18] = 2048;
      *&v145[20] = i;
      *&v145[28] = 2048;
      *&v145[30] = v17;
      _os_log_send_and_compose_impl(v91, v149, buf, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
LABEL_123:
      v138 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v92 = MEMORY[0x1E69E9C10];
      v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v149 = 136315906;
      *&v149[4] = "operator[]";
      v150 = 1024;
      if (v93)
      {
        v94 = 3;
      }

      else
      {
        v94 = 2;
      }

      v151 = 468;
      v152 = 2048;
      v153 = v16;
      v154 = 2048;
      v155 = v11;
      _os_log_send_and_compose_impl(v94, &v138, buf, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
LABEL_127:
      v138 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v95 = MEMORY[0x1E69E9C10];
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v149 = 136315906;
      *&v149[4] = "operator[]";
      v150 = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      v151 = 468;
      v152 = 2048;
      v153 = v16;
      v154 = 2048;
      v155 = v11;
      _os_log_send_and_compose_impl(v97, &v138, buf, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
LABEL_131:
      v138 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v98 = MEMORY[0x1E69E9C10];
      v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v149 = 136315906;
      *&v149[4] = "operator[]";
      v150 = 1024;
      if (v99)
      {
        v100 = 3;
      }

      else
      {
        v100 = 2;
      }

      v151 = 468;
      v152 = 2048;
      v153 = v21;
      v154 = 2048;
      v155 = v17;
      _os_log_send_and_compose_impl(v100, &v138, buf, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
LABEL_135:
      v138 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v101 = MEMORY[0x1E69E9C10];
      v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v149 = 136315906;
      *&v149[4] = "operator[]";
      v150 = 1024;
      if (v102)
      {
        v103 = 3;
      }

      else
      {
        v103 = 2;
      }

      v151 = 468;
      v152 = 2048;
      v153 = v11;
      v154 = 2048;
      v155 = v17;
      _os_log_send_and_compose_impl(v103, &v138, buf, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
LABEL_139:
      *v149 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v104 = MEMORY[0x1E69E9C10];
      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v145 = 136315906;
      *&v145[4] = "operator[]";
      *&v145[12] = 1024;
      if (v105)
      {
        v106 = 3;
      }

      else
      {
        v106 = 2;
      }

      *&v145[14] = 797;
      *&v145[18] = 2048;
      *&v145[20] = v16;
      *&v145[28] = 2048;
      *&v145[30] = v17;
      _os_log_send_and_compose_impl(v106, v149, buf, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
LABEL_143:
      v138 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v107 = MEMORY[0x1E69E9C10];
      v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v149 = 136315906;
      *&v149[4] = "operator[]";
      v150 = 1024;
      if (v108)
      {
        v109 = 3;
      }

      else
      {
        v109 = 2;
      }

      v151 = 797;
      v152 = 2048;
      v153 = v16;
      v154 = 2048;
      v155 = v17;
      _os_log_send_and_compose_impl(v109, &v138, buf, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
LABEL_147:
      v138 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v110 = MEMORY[0x1E69E9C10];
      v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v149 = 136315906;
      *&v149[4] = "operator[]";
      v150 = 1024;
      if (v111)
      {
        v112 = 3;
      }

      else
      {
        v112 = 2;
      }

      v151 = 468;
      v152 = 2048;
      v153 = v11;
      v154 = 2048;
      v155 = v17;
      _os_log_send_and_compose_impl(v112, &v138, buf, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
LABEL_151:
      *v149 = 0;
      v141 = 0u;
      v142 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v145 = 136315906;
      *&v145[4] = "operator[]";
      *&v145[12] = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      *&v145[14] = 797;
      *&v145[18] = 2048;
      *&v145[20] = v13;
      *&v145[28] = 2048;
      *&v145[30] = v17;
      _os_log_send_and_compose_impl(v114, v149, buf, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v125, v126);
      _os_crash_msg();
      __break(1u);
      goto LABEL_155;
    }

LABEL_73:
    v22 = *(v21 + 136);
    *(v11 + 280) = v22;
    if (v22)
    {
      if (v22 > 0x666666666666666)
      {
LABEL_157:
        re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v22);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v119, v124);
        __break(1u);
LABEL_158:
        re::internal::assertLog(4, v66, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
      }

      *(v11 + 288) = v65;
      if (!v65)
      {
        goto LABEL_158;
      }

      v67 = v22 - 1;
      if (v22 != 1)
      {
        do
        {
          *(v65 + 32) = 0;
          *(v65 + 8) = 0;
          *(v65 + 16) = 0;
          *v65 = 0;
          *(v65 + 24) = 0;
          v65 += 40;
          --v67;
        }

        while (v67);
      }

      *(v65 + 32) = 0;
      *(v65 + 8) = 0;
      *(v65 + 16) = 0;
      *v65 = 0;
      *(v65 + 24) = 0;
    }

    v68 = *(v21 + 136);
    if (v68)
    {
      for (i = 0; i < v68; ++i)
      {
        v69 = *(v21 + 96);
        if (v69)
        {
          v16 = *(v21 + 112);
          v70 = v16 + 40 * v69;
          do
          {
            if (i == *(v16 + 32))
            {
              v17 = *(v21 + 136);
              if (v17 <= i)
              {
                goto LABEL_115;
              }

              v71 = *(v21 + 152) + 200 * i;
              v72 = *(v71 + 16);
              if (v72)
              {
                v73 = 0;
                v74 = *(v71 + 32);
                while (!re::StringID::operator==(v16, v74))
                {
                  v73 = (v73 + 1);
                  v74 += 5;
                  if (v72 == v73)
                  {
                    goto LABEL_91;
                  }
                }

                v13 = v73;
LABEL_91:
                v11 = v135;
              }

              v17 = *(v11 + 280);
              if (v17 <= i)
              {
                goto LABEL_119;
              }

              v75 = *(v11 + 288) + 40 * i;
              v76 = re::StringID::StringID(buf, (v16 + 16));
              *&buf[16] = v13;
              v77 = *(v75 + 8);
              v78 = *(v75 + 16);
              if (v78 >= v77)
              {
                v79 = v78 + 1;
                if (v77 < v78 + 1)
                {
                  if (*v75)
                  {
                    v80 = 2 * v77;
                    v81 = v77 == 0;
                    v82 = 8;
                    if (!v81)
                    {
                      v82 = v80;
                    }

                    if (v82 <= v79)
                    {
                      v83 = v79;
                    }

                    else
                    {
                      v83 = v82;
                    }

                    v76 = re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>::setCapacity(v75, v83);
                  }

                  else
                  {
                    v76 = re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>::setCapacity(v75, v79);
                    ++*(v75 + 24);
                  }
                }

                v78 = *(v75 + 16);
                v21 = v133;
              }

              v84 = (*(v75 + 32) + 24 * v78);
              v85 = buf[0];
              *v84 = *v84 & 0xFFFFFFFFFFFFFFFELL | buf[0] & 1;
              *v84 = *buf & 0xFFFFFFFFFFFFFFFELL | v85 & 1;
              v84[1] = *&buf[8];
              *buf = 0;
              *&buf[8] = &str_67;
              v84[2] = *&buf[16];
              ++*(v75 + 16);
              ++*(v75 + 24);
              if (buf[0])
              {
                if (buf[0])
                {
                }
              }
            }

            v16 += 40;
          }

          while (v16 != v70);
          v68 = *(v21 + 136);
        }
      }
    }

    *(v11 + 8) = a8;
    *(v11 + 296) = 1;
  }
}

double re::RigRuntimeData::constructRigCommands@<D0>(re *a1@<X0>, const char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, unsigned int **a5@<X4>, void *a6@<X5>, unsigned int **a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, void *a10, void *a11, re::BindNode **a12)
{
  if (*(a1 + 296) == 1)
  {
    return re::RigRuntimeData::constructRigCommandsForRigGraph(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12);
  }

  *&result = re::RigRuntimeData::constructRigCommandsForRig(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11).n128_u64[0];
  return result;
}

double re::RigRuntimeData::constructRigCommandsForRigGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, re::BindNode **a11)
{
  MEMORY[0x1EEE9AC00](a1);
  v151 = v13;
  v15 = v14;
  v156 = v16;
  v18 = v17;
  v160 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v268 = *MEMORY[0x1E69E9840];
  v208 = v26;
  v27 = 0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30));
  re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>((v22 + 28), &v208, (0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) ^ ((0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) >> 31), &v251);
  if (v251.n128_u32[3] == 0x7FFFFFFF || (v29 = *(v23[30] + 24 * v251.n128_u32[3] + 8), v23[26] <= v29) || (v30 = (v23[27] + 40 * v29), !*v30))
  {
    re::DynamicString::format(&v251, "Invalid rig entry handle: %u.", v28, v208);
    v83 = v251;
    v84 = v252;
    *v25 = 0;
    *(v25 + 8) = 100;
    *(v25 + 16) = re::AssetErrorCategory(void)::instance;
    *(v25 + 24) = v83;
    *(v25 + 40) = v84;
    return v83.n128_f64[0];
  }

  v150 = v25;
  memset(v187, 0, sizeof(v187));
  v188 = 0x7FFFFFFFLL;
  memset(v189, 0, sizeof(v189));
  v190 = 0;
  v191 = 0x7FFFFFFFLL;
  memset(v192, 0, sizeof(v192));
  v207 = 0;
  memset(v194, 0, sizeof(v194));
  v193 = 0;
  v195 = 0;
  memset(v196, 0, sizeof(v196));
  v197 = 0;
  v200 = 0;
  v199 = 0u;
  v198 = 0u;
  v203 = 0;
  v201 = 0u;
  v202 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0;
  v153 = v23;
  v32 = *v23;
  v31 = (v23 + 12);
  v152 = v31;
  re::RigHierarchy::init(v187, v31, v32, a9, v30[4], v30[2]);
  v34 = v18[1];
  v157 = v21;
  if (v34)
  {
    v35 = *v18;
    v154 = &(*v18)[v34];
    v12 = 0x3F8000003F800000;
    v11 = 0x3F80000000000000;
    while (1)
    {
      v36 = *v35;
      v37 = *(v21 + 17);
      if (v37 <= v36)
      {
        break;
      }

      v38 = v160[1];
      if (v38 <= v36)
      {
        goto LABEL_161;
      }

      v158 = v35;
      v39 = *(v21 + 19) + 24 * v36;
      v31 = *(v39 + 8);
      if (v31)
      {
        v40 = 0;
        v41 = (*v160 + 48 * v36);
        v42 = 8;
        while (1)
        {
          v251.n128_u64[1] = 1065353216;
          v251.n128_u64[0] = 0x3F8000003F800000;
          *(&v252 + 1) = 0x3F80000000000000;
          *&v252 = 0;
          v253 = 0uLL;
          re::EvaluationTree::createInputRegister(a9, &v251, v219);
          v251.n128_u64[1] = 1065353216;
          v251.n128_u64[0] = 0x3F8000003F800000;
          *(&v252 + 1) = 0x3F80000000000000;
          *&v252 = 0;
          v253 = 0uLL;
          re::DynamicArray<re::EvaluationSRT>::add((a10 + 41), v219);
          re::DynamicArray<re::Matrix3x3<float>>::add((a10 + 86), &v251);
          v43 = a10[43] - 1;
          *&v210[0] = a10;
          *(&v210[0] + 1) = v43;
          re::makeSkeletalPoseJointBindNode(&v251, v41, v40);
          re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(*&v210[0], v210, &v251, 0);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v251.n128_i64[1]);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v251.n128_i64[1]);
          v36 = *(v39 + 8);
          if (v36 <= v40)
          {
            break;
          }

          v44 = strlen(*(*(v39 + 16) + v42));
          v251.n128_u64[0] = *(*(v39 + 16) + v42);
          v251.n128_u64[1] = v44;
          re::RigHierarchy::setLocalSpaceJointTransform(v187, &v251, v219, v184);
          if ((v184[0] & 1) == 0 && v185)
          {
            if (BYTE8(v185))
            {
              (*(*v185 + 40))();
            }

            v186 = 0u;
            v185 = 0u;
          }

          v40 = (v40 + 1);
          v42 += 16;
          if (v31 == v40)
          {
            goto LABEL_17;
          }
        }

        *v234 = 0;
        v255 = 0u;
        v254 = 0u;
        v253 = 0u;
        v252 = 0u;
        v251 = 0u;
        v88 = MEMORY[0x1E69E9C10];
        v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v256 = 136315906;
        *&v256[4] = "operator[]";
        v257 = 1024;
        if (v89)
        {
          v90 = 3;
        }

        else
        {
          v90 = 2;
        }

        v258 = 476;
        v259 = 2048;
        v260 = v40;
        v261 = 2048;
        v262 = v36;
        _os_log_send_and_compose_impl(v90, v234, &v251, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v256, 38, v148, v149);
        _os_crash_msg();
        __break(1u);
LABEL_88:
        *v219 = 0;
        v255 = 0u;
        v254 = 0u;
        v253 = 0u;
        v252 = 0u;
        v251 = 0u;
        v91 = MEMORY[0x1E69E9C10];
        v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v256 = 136315906;
        *&v256[4] = "operator[]";
        v257 = 1024;
        if (v92)
        {
          v93 = 3;
        }

        else
        {
          v93 = 2;
        }

        v258 = 797;
        v259 = 2048;
        v260 = v41;
        v261 = 2048;
        v262 = v40;
        _os_log_send_and_compose_impl(v93, v219, &v251, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v256, 38, v148, v149);
        _os_crash_msg();
        __break(1u);
LABEL_92:
        *&v210[0] = 0;
        v255 = 0u;
        v254 = 0u;
        v253 = 0u;
        v252 = 0u;
        v251 = 0u;
        v94 = MEMORY[0x1E69E9C10];
        v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v256 = 136315906;
        *&v256[4] = "operator[]";
        v257 = 1024;
        if (v95)
        {
          v96 = 3;
        }

        else
        {
          v96 = 2;
        }

        v258 = 797;
        v259 = 2048;
        v260 = v41;
        v261 = 2048;
        v262 = v36;
        _os_log_send_and_compose_impl(v96, v210, &v251, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v256, 38, v148, v149);
        _os_crash_msg();
        __break(1u);
LABEL_96:
        *&v210[0] = 0;
        v255 = 0u;
        v254 = 0u;
        v253 = 0u;
        v252 = 0u;
        v251 = 0u;
        v97 = MEMORY[0x1E69E9C10];
        v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v256 = 136315906;
        *&v256[4] = "operator[]";
        v257 = 1024;
        if (v98)
        {
          v99 = 3;
        }

        else
        {
          v99 = 2;
        }

        v258 = 476;
        v259 = 2048;
        v260 = v41;
        v261 = 2048;
        v262 = v36;
        _os_log_send_and_compose_impl(v99, v210, &v251, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v256, 38, v148, v149);
        _os_crash_msg();
        __break(1u);
LABEL_100:
        *&v210[2] = 0;
        v82 = v150;
        goto LABEL_116;
      }

LABEL_17:
      v21 = v157;
      v35 = v158 + 1;
      if (v158 + 1 == v154)
      {
        goto LABEL_18;
      }
    }

    *v219 = 0;
    v255 = 0u;
    v254 = 0u;
    v253 = 0u;
    v252 = 0u;
    v251 = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v256 = 136315906;
    *&v256[4] = "operator[]";
    v257 = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    v258 = 797;
    v259 = 2048;
    v260 = v36;
    v261 = 2048;
    v262 = v37;
    _os_log_send_and_compose_impl(v113, v219, &v251, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v256, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, v38);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v136, v142);
    __break(1u);
LABEL_162:
    *v219 = 0;
    v255 = 0u;
    v254 = 0u;
    v253 = 0u;
    v252 = 0u;
    v251 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v256 = 136315906;
    *&v256[4] = "operator[]";
    v257 = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    v258 = 797;
    v259 = 2048;
    v260 = v37;
    v261 = 2048;
    v262 = v36;
    _os_log_send_and_compose_impl(v116, v219, &v251, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v256, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_166:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v37, v47);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v137, v143);
    __break(1u);
LABEL_167:
    v173 = 0;
    memset(v219, 0, 80);
    v117 = MEMORY[0x1E69E9C10];
    v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v234 = 136315906;
    *&v234[4] = "operator[]";
    *&v234[12] = 1024;
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    *&v234[14] = 789;
    *&v234[18] = 2048;
    *&v234[20] = v12;
    v235 = 2048;
    *v236 = v36;
    _os_log_send_and_compose_impl(v119, &v173, v219, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v234, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_171:
    v165 = 0;
    v212 = 0u;
    v211 = 0u;
    memset(v210, 0, sizeof(v210));
    v120 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v215 = 136315906;
    *(v36 + 228) = "operator[]";
    WORD2(v216) = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *(v36 + 238) = 468;
    WORD5(v216) = 2048;
    *(v36 + 244) = v11;
    WORD2(v217) = 2048;
    *(v36 + 254) = v37;
    _os_log_send_and_compose_impl(v122, &v165, v210, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v215, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_175:
    re::internal::assertLog(6, v67, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v68);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v138, v144);
    __break(1u);
LABEL_176:
    re::internal::assertLog(6, v70, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v71);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v139, v145);
    __break(1u);
LABEL_177:
    re::internal::assertLog(6, v73, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v74);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v140, v146);
    __break(1u);
    goto LABEL_178;
  }

LABEL_18:
  v45 = v15[1];
  if (v45)
  {
    v46 = *v15;
    v155 = &(*v15)[v45];
    v31 = &v251;
    while (1)
    {
      v37 = *v46;
      v36 = *(v21 + 22);
      if (v36 <= v37)
      {
        goto LABEL_162;
      }

      v47 = v156[1];
      if (v47 <= v37)
      {
        goto LABEL_166;
      }

      v159 = v46;
      v12 = *(v21 + 24) + 24 * v37;
      v161 = *(v12 + 8);
      if (v161)
      {
        break;
      }

LABEL_33:
      v21 = v157;
      v46 = v159 + 1;
      if (v159 + 1 == v155)
      {
        goto LABEL_34;
      }
    }

    v48 = 0;
    v41 = 0;
    v49 = *v156 + 40 * v37;
    v11 = 8;
    while (1)
    {
      v40 = *(v49 + 16);
      if (v40 <= v41)
      {
        goto LABEL_88;
      }

      v50 = *(v49 + 32);
      v251.n128_u32[0] = 4;
      v252 = 0uLL;
      v251.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a9 + 228), &v251);
      v251.n128_u64[0] = a9[230] - 1;
      re::DynamicArray<unsigned long>::add((a9 + 21), &v251);
      re::DynamicArray<re::Matrix4x4<float>>::add((a9 + 61), v50 + v48);
      v40 = *(a9[25] + 8 * a9[23] - 8);
      v254 = 0u;
      v253 = 0u;
      v252 = 0u;
      v251 = 0u;
      *v256 = v40;
      re::DynamicArray<unsigned long>::add((a10 + 21), v256);
      re::DynamicArray<re::Matrix4x4<float>>::add((a10 + 66), &v251);
      v52 = a10[23] - 1;
      *v219 = a10;
      *&v219[8] = v52;
      v36 = *(v49 + 16);
      if (v36 <= v41)
      {
        goto LABEL_92;
      }

      re::EvaluationInputHandle<re::Matrix4x4<float>>::bindEvaluationInput<re::Matrix4x4<float>>(v219, (*(v49 + 32) + v48), v51);
      v36 = *(v12 + 8);
      if (v36 <= v41)
      {
        goto LABEL_96;
      }

      v36 = *(*(v12 + 16) + v11);
      v53 = strlen(v36);
      v251.n128_u64[0] = v36;
      v251.n128_u64[1] = v53;
      re::RigHierarchy::setModelSpaceJointTransform(v187, &v251, v40, v181);
      if ((v181[0] & 1) == 0 && v182)
      {
        if (BYTE8(v182))
        {
          (*(*v182 + 40))();
        }

        v183 = 0u;
        v182 = 0u;
      }

      v41 = (v41 + 1);
      v11 += 16;
      v48 += 64;
      if (v161 == v41)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_34:
  v54 = v153[11];
  v37 = v208;
  v31 = *(v54 + 16);
  if (v31 <= v208)
  {
LABEL_178:
    *v219 = 0;
    v255 = 0u;
    v254 = 0u;
    v253 = 0u;
    v252 = 0u;
    v251 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v256 = 136315906;
    *&v256[4] = "operator[]";
    v257 = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    v258 = 797;
    v259 = 2048;
    v260 = v37;
    v261 = 2048;
    v262 = v31;
    _os_log_send_and_compose_impl(v125, v219, &v251, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v256, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
    goto LABEL_182;
  }

  v55 = *(v54 + 32);
  v180 = 0;
  v177[1] = 0;
  v178 = 0;
  v177[0] = 0;
  v179 = 0;
  v31 = v153[35];
  if (v31 <= v208)
  {
LABEL_182:
    *v219 = 0;
    v255 = 0u;
    v254 = 0u;
    v253 = 0u;
    v252 = 0u;
    v251 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v256 = 136315906;
    *&v256[4] = "operator[]";
    v257 = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    v258 = 476;
    v259 = 2048;
    v260 = v37;
    v261 = 2048;
    v262 = v31;
    _os_log_send_and_compose_impl(v128, v219, &v251, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v256, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_186:
    *&v210[0] = 0;
    v255 = 0u;
    v254 = 0u;
    v253 = 0u;
    v252 = 0u;
    v251 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v219 = 136315906;
    *&v219[4] = "operator[]";
    *&v219[12] = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    *&v219[14] = 789;
    *&v219[18] = 2048;
    *&v219[20] = 0;
    *&v219[28] = 2048;
    *&v219[30] = 0;
    _os_log_send_and_compose_impl(v131, v210, &v251, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v219, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_190:
    v209 = 0;
    v212 = 0u;
    v211 = 0u;
    memset(v210, 0, sizeof(v210));
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v264 = 136315906;
    *(v21 + 4) = "operator[]";
    v265 = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    *(v21 + 14) = 468;
    v266 = 2048;
    *(v21 + 20) = v11;
    v267 = 2048;
    *(v21 + 30) = v37;
    _os_log_send_and_compose_impl(v134, &v209, v210, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v264, 38, v148, v149);
    _os_crash_msg();
    __break(1u);
LABEL_194:
    re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v141, v147);
    __break(1u);
  }

  v11 = v55 + 200 * v208;
  v56 = v153[36] + 40 * v208;
  re::DynamicArray<re::RigDataValue>::resize(v177, *(v56 + 16) + 1);
  re::RigGraphNode::inputValue(v256, v11, v152, a9, *v153, 0);
  v37 = v263;
  v57 = *v187;
  *(v263 + 16) = *&v187[16];
  *v37 = v57;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v37 + 24), &v187[24]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v37 + 72), v189);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=((v37 + 120), v192);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=((v37 + 160), &v194[1]);
  re::DynamicArray<re::StringID>::operator=((v37 + 200), v196 + 1);
  re::DynamicArray<unsigned long>::operator=((v37 + 240), &v198 + 1);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=((v37 + 280), &v201 + 1);
  re::DynamicArray<unsigned long>::operator=((v37 + 320), &v204 + 1);
  if (!v178)
  {
    goto LABEL_186;
  }

  re::RigDataValue::operator=(v180, v256);
  v58 = *(v56 + 16);
  if (v58)
  {
    v37 = a11;
    v59 = (*(v56 + 32) + 16);
    v31 = 24 * v58;
    v21 = v152;
    while (1)
    {
      v12 = *v59;
      re::RigGraphNode::inputValue(&v251, v11, v152, a9, *v153, *v59);
      v60 = strlen(*(v59 - 1));
      if (LOBYTE(v210[0]) != 1)
      {
        break;
      }

      v36 = v178;
      if (v178 <= v12)
      {
        goto LABEL_167;
      }

      re::RigDataValue::operator=(&v180[36 * v12], &v251);
      re::RigDataValue::~RigDataValue(&v251);
      v59 += 3;
      v31 -= 24;
      if (!v31)
      {
        goto LABEL_42;
      }
    }

    *v219 = *(v210 + 8);
    re::DynamicString::DynamicString(&v219[16], (&v210[1] + 8));
    *v150 = 0;
    *(v150 + 8) = *v219;
    v87 = *&v219[40];
    *(v150 + 24) = *&v219[16];
    *(v150 + 48) = v87;
    *(v150 + 32) = *&v219[24];
    if (*(&v210[1] + 1) && (v210[2] & 1) != 0)
    {
      (*(**(&v210[1] + 1) + 40))();
    }

    re::RigDataValue::~RigDataValue(&v251);
    goto LABEL_144;
  }

LABEL_42:
  re::EvaluationContextManager::EvaluationContextManager(&v251);
  re::EvaluationContextManager::init(&v251, *v153);
  v237 = 0;
  *&v236[2] = 0;
  v238 = 1;
  v241 = 0;
  v239 = 0;
  v240 = 0;
  v242 = 0;
  v245 = 0;
  v243 = 0;
  v244 = 0;
  v250 = 0;
  v247 = 0u;
  v248 = 0u;
  v246 = 0;
  v249 = 0;
  v61 = *v153;
  *&v234[16] = v152;
  v234[24] = 0;
  *v234 = v61;
  *&v234[8] = 0;
  re::RigGraphCompilation::init(&v236[2], v61);
  re::RigGraphSystem::compile(v234, v11, a9, &v251, v180, v178, &v173);
  if (v173 != 1)
  {
    *(v150 + 8) = v174;
    v85 = v175;
    v175 = 0u;
    v86 = v176;
    v176 = 0u;
    *v150 = 0;
    *(v150 + 24) = v85;
    *(v150 + 40) = v86;
LABEL_140:
    if (v175 && (BYTE8(v175) & 1) != 0)
    {
      (*(*v175 + 40))();
    }

    goto LABEL_143;
  }

  *v219 = 0;
  memset(&v219[32], 0, 64);
  v220 = 0;
  v221 = 1;
  v224 = 0;
  v222 = 0;
  v223 = 0;
  v225 = 0;
  v228 = 0;
  v226 = 0;
  v227 = 0;
  v229 = 0;
  v233 = 0;
  v230 = 0u;
  v231 = 0u;
  v232 = 0;
  re::RigGraphCompilation::operator=(&v219[88], &v174);
  v62 = v151;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v219[40], *v153, v151[1]);
  re::FixedArray<re::EvaluationSRT>::init<>(&v219[64], *v153, v151[1]);
  if (!*(&v231 + 1))
  {
    goto LABEL_194;
  }

  v36 = v210;
  if (v151[1])
  {
    v64 = 0;
    v11 = 0;
    v21 = v264;
    v31 = *(v233 + 184);
    v65 = 8;
    while (1)
    {
      v66 = strlen(*(*v62 + v65));
      *&v210[0] = *(*v62 + v65);
      *(&v210[0] + 1) = v66;
      re::RigHierarchy::getModelSpaceJointTransform(v31, v210, v169);
      if ((v169[0] & 1) == 0)
      {
        v210[0] = v170;
        re::DynamicString::DynamicString(&v210[1], &v171);
        *v150 = 0;
        *(v150 + 8) = v210[0];
        v100 = *(&v210[2] + 1);
        *(v150 + 24) = *&v210[1];
        *(v150 + 48) = v100;
        *(v150 + 32) = *(&v210[1] + 8);
        goto LABEL_111;
      }

      v37 = *&v219[48];
      if (*&v219[48] <= v11)
      {
        goto LABEL_171;
      }

      *(*&v219[56] + 8 * v11) = v170;
      v68 = v62[1];
      if (v68 <= v11)
      {
        goto LABEL_175;
      }

      v37 = *(*v62 + v65);
      v69 = strlen(v37);
      *&v210[0] = v37;
      *(&v210[0] + 1) = v69;
      re::RigHierarchy::getLocalSpaceJointScale(v31, v210, &v215);
      if ((v215 & 1) == 0)
      {
        v210[0] = v216;
        re::DynamicString::DynamicString(&v210[1], &v217);
        *v150 = 0;
        *(v150 + 8) = v210[0];
        v101 = *(&v210[2] + 1);
        *(v150 + 24) = *&v210[1];
        *(v150 + 48) = v101;
        *(v150 + 32) = *(&v210[1] + 8);
        goto LABEL_107;
      }

      v71 = v62[1];
      if (v71 <= v11)
      {
        goto LABEL_176;
      }

      v37 = *(*v62 + v65);
      v72 = strlen(v37);
      *&v210[0] = v37;
      *(&v210[0] + 1) = v72;
      re::RigHierarchy::getLocalSpaceJointRotation(v31, v210, &v165);
      if ((v165 & 1) == 0)
      {
        break;
      }

      v74 = v62[1];
      if (v74 <= v11)
      {
        goto LABEL_177;
      }

      v75 = strlen(*(*v62 + v65));
      *&v210[0] = *(*v62 + v65);
      *(&v210[0] + 1) = v75;
      re::RigHierarchy::getLocalSpaceJointTranslation(v31, v210, v162);
      v76 = v162[0];
      if (v162[0] == 1)
      {
        v37 = *&v219[72];
        if (*&v219[72] <= v11)
        {
          goto LABEL_190;
        }

        v77 = v163;
        v78 = v166;
        v79 = (*&v219[80] + v64);
        *v79 = v216;
        v79[1] = v78;
        v79[2] = v77;
      }

      else
      {
        v210[0] = v163;
        re::DynamicString::DynamicString(&v210[1], v164);
        *v150 = 0;
        *(v150 + 8) = v210[0];
        v80 = *(&v210[2] + 1);
        *(v150 + 24) = *&v210[1];
        *(v150 + 48) = v80;
        *(v150 + 32) = *(&v210[1] + 8);
        if ((v162[0] & 1) == 0 && v164[0])
        {
          if (v164[1])
          {
            (*(*v164[0] + 40))();
          }

          memset(v164, 0, sizeof(v164));
        }
      }

      if (v165 & 1) == 0 && v167 && (v168)
      {
        (*(*v167 + 40))();
      }

      if (v215 & 1) == 0 && v217 && (v218)
      {
        (*(*v217 + 40))();
      }

      if (v169[0] & 1) == 0 && v171 && (v172)
      {
        (*(*v171 + 40))();
      }

      if (!v76)
      {
        goto LABEL_130;
      }

      ++v11;
      v62 = v151;
      v65 += 16;
      v64 += 24;
      if (v11 >= v151[1])
      {
        goto LABEL_75;
      }
    }

    v210[0] = v166;
    re::DynamicString::DynamicString(&v210[1], &v167);
    *v150 = 0;
    *(v150 + 8) = v210[0];
    v102 = *(&v210[2] + 1);
    *(v150 + 24) = *&v210[1];
    *(v150 + 48) = v102;
    *(v150 + 32) = *(&v210[1] + 8);
    if (v165 & 1) == 0 && v167 && (v168)
    {
      (*(*v167 + 40))();
    }

LABEL_107:
    if (v215 & 1) == 0 && v217 && (v218)
    {
      (*(*v217 + 40))();
    }

LABEL_111:
    if (v169[0] & 1) == 0 && v171 && (v172)
    {
      (*(*v171 + 40))();
    }
  }

  else
  {
LABEL_75:
    v81 = *v219;
    *v219 = 0;
    *&v210[0] = v81;
    v40 = (v210 + 8);
    if (!*&v219[32])
    {
      goto LABEL_100;
    }

    v82 = v150;
    if (*&v219[32] == &v219[8])
    {
      *&v210[2] = v210 + 8;
      (*(**&v219[32] + 24))();
    }

    else
    {
      *&v210[2] = *&v219[32];
      *&v219[32] = 0;
    }

LABEL_116:
    v103 = *&v219[40];
    v104 = *&v219[48];
    *&v219[40] = 0u;
    *(&v210[2] + 1) = v103;
    *&v211 = v104;
    v105 = *&v219[72];
    v106 = *&v219[80];
    *&v219[72] = 0u;
    *(v36 + 56) = *&v219[56];
    *&v219[56] = 0;
    *&v219[64] = 0;
    *(&v212 + 1) = v105;
    v213 = v106;
    re::RigGraphCompilation::RigGraphCompilation(v214, &v219[88]);
    *v82 = 1;
    v107 = *&v210[0];
    v108 = *&v210[2];
    *&v210[0] = 0;
    *(v82 + 8) = v107;
    if (v108)
    {
      if (v108 == v40)
      {
        *(v82 + 40) = v82 + 16;
        (*(*v108 + 24))(v108);
      }

      else
      {
        *(v82 + 40) = v108;
        *&v210[2] = 0;
      }
    }

    else
    {
      *(v82 + 40) = 0;
    }

    v109 = v211;
    *(v82 + 48) = *(&v210[2] + 1);
    *(v82 + 56) = v109;
    *(&v210[2] + 1) = 0;
    *&v211 = 0;
    *(v82 + 64) = *(v36 + 56);
    *(&v211 + 1) = 0;
    *&v212 = 0;
    v110 = v213;
    *(v82 + 80) = *(&v212 + 1);
    *(v82 + 88) = v110;
    *(&v212 + 1) = 0;
    v213 = 0;
    re::RigGraphCompilation::RigGraphCompilation(v82 + 96, v214);
    re::RigGraphCompilation::~RigGraphCompilation(v214);
    if (v212)
    {
      if (*(&v212 + 1))
      {
        (*(*v212 + 40))();
        *(&v212 + 1) = 0;
        v213 = 0;
      }

      *&v212 = 0;
    }

    if (*(&v210[2] + 1))
    {
      if (v211)
      {
        (*(**(&v210[2] + 1) + 40))();
        v211 = 0uLL;
      }

      *(&v210[2] + 1) = 0;
    }

    std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](v210);
  }

LABEL_130:
  re::RigGraphCompilation::~RigGraphCompilation(&v219[88]);
  if (*&v219[64])
  {
    if (*&v219[72])
    {
      (*(**&v219[64] + 40))();
      *&v219[72] = 0;
      *&v219[80] = 0;
    }

    *&v219[64] = 0;
  }

  if (*&v219[40])
  {
    if (*&v219[48])
    {
      (*(**&v219[40] + 40))();
      *&v219[48] = 0uLL;
    }

    *&v219[40] = 0;
  }

  std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](v219);
  if ((v173 & 1) == 0)
  {
    goto LABEL_140;
  }

  re::RigGraphCompilation::~RigGraphCompilation(&v174);
LABEL_143:
  re::RigGraphCompilation::~RigGraphCompilation(&v236[2]);
  re::EvaluationContextManager::~EvaluationContextManager(&v251);
LABEL_144:
  re::RigDataValue::~RigDataValue(v256);
  re::DynamicArray<re::RigDataValue>::deinit(v177);
  if (*(&v204 + 1))
  {
    if (v207)
    {
      (*(**(&v204 + 1) + 40))();
    }

    v207 = 0;
    v205 = 0uLL;
    *(&v204 + 1) = 0;
    ++v206;
  }

  if (*(&v201 + 1))
  {
    if (v204)
    {
      (*(**(&v201 + 1) + 40))();
    }

    *&v204 = 0;
    v202 = 0uLL;
    *(&v201 + 1) = 0;
    ++v203;
  }

  if (*(&v198 + 1))
  {
    if (v201)
    {
      (*(**(&v198 + 1) + 40))();
    }

    *&v201 = 0;
    v199 = 0uLL;
    *(&v198 + 1) = 0;
    ++v200;
  }

  re::DynamicArray<re::StringID>::deinit(v196 + 8);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v194[1]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v192);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v189);
  v83.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v187[24]);
  return v83.n128_f64[0];
}

__n128 re::RigRuntimeData::constructRigCommandsForRig@<Q0>(re *a1@<X0>, const char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, unsigned int **a5@<X4>, void *a6@<X5>, unsigned int **a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, void *a10, void *a11)
{
  v94 = *MEMORY[0x1E69E9840];
  if (*(a1 + 9) > a2 && (v12 = a1, v13 = a2, v14 = (*(a1 + 10) + 1528 * a2), v14[147]))
  {
    re::RigEvaluation::reset(*(a1 + 10) + 1528 * a2);
    v19 = *(v12 + 6);
    if (v19 <= v13)
    {
      goto LABEL_53;
    }

    v69 = a9;
    v68 = a8;
    v19 = a11;
    v78 = v14;
    re::RigEvaluation::setDefaultPose(v14, *(*(v12 + 7) + 8 * v13));
    v21 = a5[1];
    v73 = a3;
    if (v21)
    {
      v22 = *a5;
      v70 = &(*a5)[v21];
      v23 = 0x3F8000003F800000;
      v24 = 0x3F80000000000000;
      while (1)
      {
        v13 = *v22;
        v25 = a3[17];
        if (v25 <= v13)
        {
          goto LABEL_43;
        }

        v26 = a4[1];
        if (v26 <= v13)
        {
          goto LABEL_47;
        }

        v76 = v22;
        v27 = a3[19] + 24 * v13;
        v25 = *(v27 + 8);
        if (v25)
        {
          break;
        }

LABEL_12:
        v22 = v76 + 1;
        a3 = v73;
        if (v76 + 1 == v70)
        {
          goto LABEL_13;
        }
      }

      v28 = 0;
      v12 = (*a4 + 48 * v13);
      v13 = 8;
      while (1)
      {
        v89.n128_u64[0] = 0x3F8000003F800000;
        v89.n128_u64[1] = 1065353216;
        *&v90 = 0;
        *(&v90 + 1) = 0x3F80000000000000;
        v91 = 0uLL;
        re::EvaluationTree::createInputRegister(a10, &v89, &v80);
        v89.n128_u64[0] = 0x3F8000003F800000;
        v89.n128_u64[1] = 1065353216;
        *&v90 = 0;
        *(&v90 + 1) = 0x3F80000000000000;
        v91 = 0uLL;
        re::DynamicArray<re::EvaluationSRT>::add((a11 + 41), &v80);
        re::DynamicArray<re::Matrix3x3<float>>::add((a11 + 86), &v89);
        v29 = (a11[43] - 1);
        v79[0] = a11;
        v79[1] = v29;
        re::makeSkeletalPoseJointBindNode(&v89, v12, v28);
        re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(v79[0], v79, &v89, 0);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v89.n128_i64[1]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v89.n128_i64[1]);
        v30 = *(v27 + 8);
        if (v30 <= v28)
        {
          break;
        }

        re::RigEvaluation::bindLocalSpaceJointInput(v78, *(*(v27 + 16) + v13), &v80);
        v28 = (v28 + 1);
        v13 += 16;
        if (v25 == v28)
        {
          goto LABEL_12;
        }
      }

      v81 = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      v41 = MEMORY[0x1E69E9C10];
      v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      v83 = 1024;
      if (v42)
      {
        v43 = 3;
      }

      else
      {
        v43 = 2;
      }

      v84 = 476;
      v85 = 2048;
      v86 = v28;
      v87 = 2048;
      v88 = v30;
      _os_log_send_and_compose_impl(v43, &v81, &v89, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v66, v67);
      _os_crash_msg();
      __break(1u);
      goto LABEL_31;
    }

LABEL_13:
    v31 = a7[1];
    if (v31)
    {
      v32 = *a7;
      v71 = &(*a7)[v31];
      while (1)
      {
        v13 = *v32;
        v24 = a3[22];
        if (v24 <= v13)
        {
          goto LABEL_48;
        }

        v33 = a6[1];
        if (v33 <= v13)
        {
          goto LABEL_52;
        }

        v75 = v32;
        v24 = a3[24] + 24 * v13;
        v77 = *(v24 + 8);
        if (v77)
        {
          break;
        }

LABEL_23:
        a3 = v73;
        v32 = v75 + 1;
        if (v75 + 1 == v71)
        {
          goto LABEL_24;
        }
      }

      v34 = 0;
      v23 = 0;
      v13 = *a6 + 40 * v13;
      v25 = 8;
      while (1)
      {
        v30 = *(v13 + 16);
        if (v30 <= v23)
        {
          break;
        }

        v35 = *(v13 + 32);
        v89.n128_u32[0] = 4;
        v90 = 0uLL;
        v89.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a10 + 228), &v89);
        v89.n128_u64[0] = a10[230] - 1;
        re::DynamicArray<unsigned long>::add((a10 + 21), &v89);
        re::DynamicArray<re::Matrix4x4<float>>::add((a10 + 61), v35 + v34);
        v36 = *(a10[25] + 8 * a10[23] - 8);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        *v82 = v36;
        re::DynamicArray<unsigned long>::add((a11 + 21), v82);
        re::DynamicArray<re::Matrix4x4<float>>::add((a11 + 66), &v89);
        v38 = a11[23] - 1;
        v80.n128_u64[0] = a11;
        v80.n128_u64[1] = v38;
        v12 = *(v13 + 16);
        if (v12 <= v23)
        {
          goto LABEL_35;
        }

        re::EvaluationInputHandle<re::Matrix4x4<float>>::bindEvaluationInput<re::Matrix4x4<float>>(&v80, (*(v13 + 32) + v34), v37);
        v12 = *(v24 + 8);
        if (v12 <= v23)
        {
          goto LABEL_39;
        }

        re::RigEvaluation::bindModelSpaceJointInput(v78, *(*(v24 + 16) + v25), v36);
        ++v23;
        v25 += 16;
        v34 += 64;
        if (v77 == v23)
        {
          goto LABEL_23;
        }
      }

LABEL_31:
      v80.n128_u64[0] = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      v44 = MEMORY[0x1E69E9C10];
      v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      v83 = 1024;
      if (v45)
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      v84 = 797;
      v85 = 2048;
      v86 = v23;
      v87 = 2048;
      v88 = v30;
      _os_log_send_and_compose_impl(v46, &v80, &v89, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v66, v67);
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v79[0] = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      v47 = MEMORY[0x1E69E9C10];
      v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      v83 = 1024;
      if (v48)
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      v84 = 797;
      v85 = 2048;
      v86 = v23;
      v87 = 2048;
      v88 = v12;
      _os_log_send_and_compose_impl(v49, v79, &v89, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v66, v67);
      _os_crash_msg();
      __break(1u);
LABEL_39:
      v79[0] = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      v50 = MEMORY[0x1E69E9C10];
      v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      v83 = 1024;
      if (v51)
      {
        v52 = 3;
      }

      else
      {
        v52 = 2;
      }

      v84 = 476;
      v85 = 2048;
      v86 = v23;
      v87 = 2048;
      v88 = v12;
      _os_log_send_and_compose_impl(v52, v79, &v89, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v66, v67);
      _os_crash_msg();
      __break(1u);
LABEL_43:
      v80.n128_u64[0] = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      v53 = MEMORY[0x1E69E9C10];
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      v83 = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      v84 = 797;
      v85 = 2048;
      v86 = v13;
      v87 = 2048;
      v88 = v25;
      _os_log_send_and_compose_impl(v55, &v80, &v89, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v66, v67);
      _os_crash_msg();
      __break(1u);
LABEL_47:
      re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v26);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v62, v64);
      __break(1u);
LABEL_48:
      v80.n128_u64[0] = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      v56 = MEMORY[0x1E69E9C10];
      v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      v83 = 1024;
      if (v57)
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v84 = 797;
      v85 = 2048;
      v86 = v13;
      v87 = 2048;
      v88 = v24;
      _os_log_send_and_compose_impl(v58, &v80, &v89, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v66, v67);
      _os_crash_msg();
      __break(1u);
LABEL_52:
      re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v33);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v63, v65);
      __break(1u);
LABEL_53:
      v80.n128_u64[0] = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      v59 = MEMORY[0x1E69E9C10];
      v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      v83 = 1024;
      if (v60)
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      v84 = 476;
      v85 = 2048;
      v86 = v13;
      v87 = 2048;
      v88 = v19;
      _os_log_send_and_compose_impl(v61, &v80, &v89, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v66, v67);
      _os_crash_msg();
      __break(1u);
    }

LABEL_24:
    re::RigEvaluation::constructEvaluationCommands(v78, *v68, v68[1], a10, v69);
  }

  else
  {
    re::DynamicString::format(&v89, "Invalid rig entry handle: %u.", a2, a2);
    result = v89;
    v40 = v90;
    *a9 = 0;
    *(a9 + 8) = 100;
    *(a9 + 16) = re::AssetErrorCategory(void)::instance;
    *(a9 + 24) = result;
    *(a9 + 40) = v40;
  }

  return result;
}

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 8;
  }

  v7 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 4) = *a2;
  *(v7 + 8) = *a3;
  result = v7 + 8;
  ++*(a1 + 40);
  return result;
}

uint64_t re::EvaluationInputHandle<re::Matrix4x4<float>>::bindEvaluationInput<re::Matrix4x4<float>>(void *a1, const re::IntrospectionBase *a2, void *a3)
{
  v4 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v7 = a2;
    v4 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    a2 = v7;
    if (v6)
    {
      re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
      v4 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      a2 = v7;
    }
  }

  re::makeBindPoint(&v8, *(v4 + 131), a2);
  re::EvaluationContextManager::bindInputHandle<re::Matrix4x4<float>>(*a1, a1, &v8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v9);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v9);
}

double re::RigRuntimeData::makeRigHierarchyForPose(re::RigRuntimeData *this, const re::MeshAsset *a2, const re::SkeletalPoseDefinitionAsset *a3, uint64_t a4, const re::BindPoint *a5, const re::RigEnvironment *a6, re::EvaluationTree *a7, re::EvaluationContextManager *a8)
{
  v35 = this;
  v88[5] = *MEMORY[0x1E69E9840];
  memset(v43, 0, sizeof(v43));
  v44 = 0x7FFFFFFFLL;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v47 = 0x7FFFFFFFLL;
  memset(v48, 0, sizeof(v48));
  v63 = 0;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  v51 = 0;
  memset(v52, 0, sizeof(v52));
  v53 = 0;
  v56 = 0;
  v55 = 0u;
  v54 = 0u;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v8 = *(a3 + 37);
  if (!v8)
  {
LABEL_20:
    v24 = v64;
    v25 = v65;
    v26 = v66[0];
    *v35 = 0;
    *(v35 + 1) = 6002;
    *(v35 + 2) = &re::AnimationErrorCategory(void)::instance;
    *(v35 + 24) = v24;
    *(v35 + 5) = v25;
    *(v35 + 6) = v26;
    goto LABEL_43;
  }

  v11 = *(a3 + 39);
  v12 = v11 + (v8 << 6);
  v13 = *(a2 + 156);
  v36 = (a2 + 640);
  while (1)
  {
    v14 = v12 - 64;
    if (*(v12 - 4) == a4)
    {
      break;
    }

LABEL_19:
    v12 -= 64;
    if (v14 == v11)
    {
      goto LABEL_20;
    }
  }

  re::MeshNameMap::meshInstancePartsForIdentifier(&v64, v36, (v12 - 64));
  v86[0] = a2;
  v86[1] = v36;
  v87 = v64;
  v88[3] = v66[1];
  v88[4] = 0;
  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(v88, &v64 + 8);
  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v64 + 8);
  v41 = v86;
  v42 = 0;
  v15 = v87;
  if (!v87)
  {
LABEL_18:
    this = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v88);
    v11 = *(a3 + 39);
    goto LABEL_19;
  }

  v16 = (v12 - 24);
  while (1)
  {
    v17 = re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModel(&v41);
    *&v64 = v42;
    v18 = (*(*v41[7] + 16))(v41[7], &v64);
    v19 = *(v17 + 224);
    if (v19)
    {
      if (*(v19 + 8) > WORD2(v18))
      {
        v20 = *(*(v19 + 16) + 88 * WORD2(v18) + 4);
        if (v13 > v20)
        {
          if (*v16 >= 0xFFFFFFFFFFFFFFFELL && (*v16 & 1) == 0 && !**(v12 - 16))
          {
            break;
          }

          v21 = re::MeshAsset::skeletonAtIndex(a2, v20);
          if (re::StringID::operator==((v12 - 24), v21))
          {
            break;
          }
        }
      }
    }

    v22 = ++v42;
    if (v41 == v86 && v22 == v15)
    {
      goto LABEL_18;
    }
  }

  if (*(a2 + 35) > v20 && (v27 = re::AssetHandle::loadedAsset<re::SkeletonAsset>((*(a2 + 37) + 24 * v20))) != 0)
  {
    v28 = (v27 + 88);
  }

  else
  {
    v27 = re::MeshAsset::skeletonAtIndex(a2, v20);
    v28 = v27;
  }

  v29 = re::RigHierarchy::bindRigHierarchyPose(v43, a7, a8, a5, v38);
  if ((v38[0] & 1) == 0 && v39)
  {
    if (BYTE8(v39))
    {
      (*(*v39 + 40))(v29);
    }

    v40 = 0u;
    v39 = 0u;
  }

  re::RigHierarchy::RigHierarchy(&v64, v43);
  *v35 = 1;
  re::RigHierarchy::RigHierarchy(v35 + 8, &v64);
  if (v81)
  {
    if (v85)
    {
      (*(*v81 + 40))();
    }

    v85 = 0;
    v82 = 0;
    v83 = 0;
    v81 = 0;
    ++v84;
  }

  if (v76)
  {
    if (v80)
    {
      (*(*v76 + 40))();
    }

    v80 = 0;
    v77 = 0;
    v78 = 0;
    v76 = 0;
    ++v79;
  }

  if (v71)
  {
    if (v75)
    {
      (*(*v71 + 40))();
    }

    v75 = 0;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    ++v74;
  }

  re::DynamicArray<re::StringID>::deinit(&v70);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v69);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v68);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v67);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v66);
  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v88);
LABEL_43:
  if (*(&v60 + 1))
  {
    if (v63)
    {
      (*(**(&v60 + 1) + 40))();
    }

    v63 = 0;
    v61 = 0uLL;
    *(&v60 + 1) = 0;
    ++v62;
  }

  if (*(&v57 + 1))
  {
    if (v60)
    {
      (*(**(&v57 + 1) + 40))();
    }

    *&v60 = 0;
    v58 = 0uLL;
    *(&v57 + 1) = 0;
    ++v59;
  }

  if (*(&v54 + 1))
  {
    if (v57)
    {
      (*(**(&v54 + 1) + 40))();
    }

    *&v57 = 0;
    v55 = 0uLL;
    *(&v54 + 1) = 0;
    ++v56;
  }

  re::DynamicArray<re::StringID>::deinit(&v52[8]);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v50[8]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v48);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v45);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v43[24]);
}

uint64_t re::AssetHandle::loadedAsset<re::SkeletonAsset>(re::SkeletonAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::SkeletonAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

void re::anonymous namespace::setCompilationValueForBoundInput(uint64_t a1, uint64_t a2, const re::RigEnvironment *a3, void *a4, void *a5, _BYTE *a6, uint64_t a7, re::BindNode **a8)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a2;
  v15 = a1;
  v16 = &v193;
  v197 = *MEMORY[0x1E69E9840];
  *&v129 = a6;
  *(&v129 + 1) = a7;
  v17 = *(a2 + 32);
  if (v17 <= 5)
  {
    if (*(a2 + 32) <= 2u)
    {
      if (v17 == 1)
      {
        *&v135[0] = a6;
        *(&v135[0] + 1) = a7;
        v136.n128_u32[0] = 0;
        v158[0].n128_u32[0] = 0;
        memset(&v158[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 208), v158);
        v158[0].n128_u64[0] = v13[210] - 1;
        re::DynamicArray<unsigned long>::add((v13 + 1), v158);
        re::DynamicArray<int>::add((v13 + 41), &v136);
        v9 = *(v13[5] + 8 * v13[3] - 8);
        v136.n128_u32[0] = 0;
        v158[0].n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add((v12 + 1), v158);
        re::DynamicArray<int>::add((v12 + 46), &v136);
        v44 = v12[3];
        {
          re::introspect<int>(BOOL)::info = re::introspect_int(0, v107);
        }

        v11 = v173;
        re::BindNode::bindPointWithOverride(v173, a8, re::introspect<int>(BOOL)::info, v135);
        if (!*&v173[24])
        {
          goto LABEL_169;
        }

        v45 = *v173;
        {
          re::introspect<int>(BOOL)::info = re::introspect_int(0, v115);
        }

        if (v45 != re::introspect<int>(BOOL)::info)
        {
          goto LABEL_169;
        }

        v132 = (v44 - 1);
        if (v44 - 1 >= a5[93])
        {
          re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 91, v44);
        }

        else if (*(a5[95] + 56 * (v44 - 1) + 24))
        {
          goto LABEL_169;
        }

        v75 = v15;
        re::DynamicArray<unsigned long>::add((a5 + 136), &v132);
        v136.n128_u64[0] = *v173;
        re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v136.n128_i64[1], &v173[8]);
        v137[32] = 0;
        v24 = v132;
        v25 = a5[93];
        if (v25 > v132)
        {
          v76 = a5[95];
          goto LABEL_168;
        }

        goto LABEL_226;
      }

      if (v17 == 2)
      {
        *&v135[0] = a6;
        *(&v135[0] + 1) = a7;
        v136.n128_u32[0] = 0;
        v158[0].n128_u32[0] = 1;
        memset(&v158[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 213), v158);
        v158[0].n128_u64[0] = v13[215] - 1;
        re::DynamicArray<unsigned long>::add((v13 + 6), v158);
        re::DynamicArray<int>::add((v13 + 46), &v136);
        v9 = *(v13[10] + 8 * v13[8] - 8);
        v136.n128_u32[0] = 0;
        v158[0].n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add((v12 + 6), v158);
        re::DynamicArray<int>::add((v12 + 51), &v136);
        v33 = v12[8];
        {
          re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v113);
        }

        v11 = v173;
        re::BindNode::bindPointWithOverride(v173, a8, re::introspect<unsigned int>(BOOL)::info, v135);
        if (!*&v173[24])
        {
          goto LABEL_169;
        }

        v34 = *v173;
        {
          re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v117);
        }

        if (v34 != re::introspect<unsigned int>(BOOL)::info)
        {
          goto LABEL_169;
        }

        v132 = (v33 - 1);
        if (v33 - 1 >= a5[98])
        {
          re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 96, v33);
        }

        else if (*(a5[100] + 56 * (v33 - 1) + 24))
        {
          goto LABEL_169;
        }

        v75 = v15;
        re::DynamicArray<unsigned long>::add((a5 + 141), &v132);
        v136.n128_u64[0] = *v173;
        re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v136.n128_i64[1], &v173[8]);
        v137[32] = 0;
        v24 = v132;
        v25 = a5[98];
        if (v25 > v132)
        {
          v76 = a5[100];
          goto LABEL_168;
        }

LABEL_238:
        v134[0] = 0;
        v159 = 0u;
        memset(v158, 0, sizeof(v158));
        v104 = MEMORY[0x1E69E9C10];
        v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v193.n128_u32[0] = 136315906;
        *(v16->n128_u64 + 4) = "operator[]";
        v193.n128_u16[6] = 1024;
        if (v105)
        {
          v106 = 3;
        }

        else
        {
          v106 = 2;
        }

        *(&v16->n128_u32[3] + 2) = 789;
        WORD1(v194) = 2048;
        *(v16[1].n128_u64 + 4) = v24;
        WORD2(v195) = 2048;
        *(&v16[1].n128_u64[1] + 6) = v25;
        _os_log_send_and_compose_impl(v106, v134, v158, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v193, 38, v123, v124);
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      switch(v17)
      {
        case 3u:
          *&v135[0] = a6;
          *(&v135[0] + 1) = a7;
          v136.n128_u32[0] = 0;
          v158[0].n128_u32[0] = 2;
          memset(&v158[0].n128_i8[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 218), v158);
          v158[0].n128_u64[0] = v13[220] - 1;
          re::DynamicArray<unsigned long>::add((v13 + 11), v158);
          re::DynamicArray<float>::add((v13 + 51), &v136);
          v9 = *(v13[15] + 8 * v13[13] - 8);
          v136.n128_u32[0] = 0;
          v158[0].n128_u64[0] = v9;
          re::DynamicArray<unsigned long>::add((v12 + 11), v158);
          re::DynamicArray<float>::add((v12 + 56), &v136);
          v51 = v12[13];
          {
            re::introspect<float>(BOOL)::info = re::introspect_float(0, v114);
          }

          v11 = v173;
          re::BindNode::bindPointWithOverride(v173, a8, re::introspect<float>(BOOL)::info, v135);
          if (!*&v173[24])
          {
            goto LABEL_169;
          }

          v52 = *v173;
          {
            re::introspect<float>(BOOL)::info = re::introspect_float(0, v116);
          }

          if (v52 != re::introspect<float>(BOOL)::info)
          {
            goto LABEL_169;
          }

          v132 = (v51 - 1);
          if (v51 - 1 >= a5[103])
          {
            re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 101, v51);
          }

          else if (*(a5[105] + 56 * (v51 - 1) + 24))
          {
            goto LABEL_169;
          }

          v75 = v15;
          re::DynamicArray<unsigned long>::add((a5 + 146), &v132);
          v136.n128_u64[0] = *v173;
          re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v136.n128_i64[1], &v173[8]);
          v137[32] = 0;
          v24 = v132;
          v25 = a5[103];
          if (v25 > v132)
          {
            v76 = a5[105];
            goto LABEL_168;
          }

          goto LABEL_234;
        case 4u:
          *&v135[0] = a6;
          *(&v135[0] + 1) = a7;
          memset(v158, 0, 48);
          v136.n128_u32[0] = 3;
          *v137 = 0uLL;
          v136.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 223), &v136);
          v136.n128_u64[0] = v13[225] - 1;
          re::DynamicArray<unsigned long>::add((v13 + 16), &v136);
          re::DynamicArray<re::Matrix3x3<float>>::add((v13 + 56), v158);
          v9 = *(v13[20] + 8 * v13[18] - 8);
          memset(v158, 0, 48);
          v136.n128_u64[0] = v9;
          re::DynamicArray<unsigned long>::add((v12 + 16), &v136);
          re::DynamicArray<re::Matrix3x3<float>>::add((v12 + 61), v158);
          v42 = v12[18];
          {
            re::introspect<re::Matrix3x3<float>>(BOOL)::info = re::introspect_Matrix3x3F(0);
          }

          v11 = v173;
          re::BindNode::bindPointWithOverride(v173, a8, re::introspect<re::Matrix3x3<float>>(BOOL)::info, v135);
          if (!*&v173[24])
          {
            goto LABEL_169;
          }

          v43 = *v173;
          {
            re::introspect<re::Matrix3x3<float>>(BOOL)::info = re::introspect_Matrix3x3F(0);
          }

          if (v43 != re::introspect<re::Matrix3x3<float>>(BOOL)::info)
          {
            goto LABEL_169;
          }

          v132 = (v42 - 1);
          if (v42 - 1 >= a5[108])
          {
            re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 106, v42);
          }

          else if (*(a5[110] + 56 * (v42 - 1) + 24))
          {
            goto LABEL_169;
          }

          v75 = v15;
          re::DynamicArray<unsigned long>::add((a5 + 151), &v132);
          v136.n128_u64[0] = *v173;
          re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v136.n128_i64[1], &v173[8]);
          v137[32] = 0;
          v24 = v132;
          v25 = a5[108];
          if (v25 > v132)
          {
            v76 = a5[110];
            goto LABEL_168;
          }

LABEL_218:
          v134[0] = 0;
          v159 = 0u;
          memset(v158, 0, sizeof(v158));
          v89 = MEMORY[0x1E69E9C10];
          v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v193.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v193.n128_u16[6] = 1024;
          if (v90)
          {
            v91 = 3;
          }

          else
          {
            v91 = 2;
          }

          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v194) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v195) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl(v91, v134, v158, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v193, 38, v123, v124);
          _os_crash_msg();
          __break(1u);
LABEL_222:
          v134[0] = 0;
          v159 = 0u;
          memset(v158, 0, sizeof(v158));
          v92 = MEMORY[0x1E69E9C10];
          v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v193.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v193.n128_u16[6] = 1024;
          if (v93)
          {
            v94 = 3;
          }

          else
          {
            v94 = 2;
          }

          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v194) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v195) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl(v94, v134, v158, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v193, 38, v123, v124);
          _os_crash_msg();
          __break(1u);
LABEL_226:
          v134[0] = 0;
          v159 = 0u;
          memset(v158, 0, sizeof(v158));
          v95 = MEMORY[0x1E69E9C10];
          v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v193.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v193.n128_u16[6] = 1024;
          if (v96)
          {
            v97 = 3;
          }

          else
          {
            v97 = 2;
          }

          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v194) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v195) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl(v97, v134, v158, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v193, 38, v123, v124);
          _os_crash_msg();
          __break(1u);
LABEL_230:
          v134[0] = 0;
          v159 = 0u;
          memset(v158, 0, sizeof(v158));
          v98 = MEMORY[0x1E69E9C10];
          v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v193.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v193.n128_u16[6] = 1024;
          if (v99)
          {
            v100 = 3;
          }

          else
          {
            v100 = 2;
          }

          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v194) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v195) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl(v100, v134, v158, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v193, 38, v123, v124);
          _os_crash_msg();
          __break(1u);
LABEL_234:
          v134[0] = 0;
          v159 = 0u;
          memset(v158, 0, sizeof(v158));
          v101 = MEMORY[0x1E69E9C10];
          v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v193.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v193.n128_u16[6] = 1024;
          if (v102)
          {
            v103 = 3;
          }

          else
          {
            v103 = 2;
          }

          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v194) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v195) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl(v103, v134, v158, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v193, 38, v123, v124);
          _os_crash_msg();
          __break(1u);
          goto LABEL_238;
        case 5u:
          *v173 = a6;
          *&v173[8] = a7;
          memset(v158, 0, sizeof(v158));
          v136.n128_u32[0] = 4;
          *v137 = 0uLL;
          v136.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), &v136);
          v136.n128_u64[0] = v13[230] - 1;
          re::DynamicArray<unsigned long>::add((v13 + 21), &v136);
          re::DynamicArray<re::Matrix4x4<float>>::add((v13 + 61), v158);
          v20 = *(v13[25] + 8 * v13[23] - 8);
          memset(v158, 0, sizeof(v158));
          v136.n128_u64[0] = v20;
          re::DynamicArray<unsigned long>::add((v12 + 21), &v136);
          re::DynamicArray<re::Matrix4x4<float>>::add((v12 + 66), v158);
          v21 = v12[23] - 1;
          v136.n128_u64[0] = v12;
          v136.n128_u64[1] = v21;
          {
            re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
          }

          re::BindNode::bindPointWithOverride(v158, a8, re::introspect<re::Matrix4x4<float>>(BOOL)::info, v173);
          re::EvaluationContextManager::bindInputHandle<re::Matrix4x4<float>>(v136.n128_u64[0], &v136, v158);
          *(v14 + 96) = 2;
          *(v14 + 176) = v20;
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v158[0].n128_i64[1]);
          v22 = &v158[0].n128_u64[1];
          goto LABEL_170;
      }
    }

    goto LABEL_260;
  }

  if (*(a2 + 32) <= 9u)
  {
    switch(v17)
    {
      case 6u:
        *&v135[0] = a6;
        *(&v135[0] + 1) = a7;
        v136 = xmmword_1E30474D0;
        v158[0].n128_u32[0] = 5;
        memset(&v158[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 233), v158);
        v158[0].n128_u64[0] = v13[235] - 1;
        re::DynamicArray<unsigned long>::add((v13 + 26), v158);
        re::DynamicArray<re::Vector3<float>>::add((v13 + 66), &v136);
        v9 = *(v13[30] + 8 * v13[28] - 8);
        v158[0] = xmmword_1E30474D0;
        v136.n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add((v12 + 26), &v136);
        re::DynamicArray<re::Vector3<float>>::add((v12 + 71), v158);
        v46 = v12[28];
        {
          re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        }

        v11 = v173;
        re::BindNode::bindPointWithOverride(v173, a8, re::introspect<re::Quaternion<float>>(BOOL)::info, v135);
        if (!*&v173[24])
        {
          goto LABEL_169;
        }

        v47 = *v173;
        {
          re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        }

        if (v47 != re::introspect<re::Quaternion<float>>(BOOL)::info)
        {
          goto LABEL_169;
        }

        v132 = (v46 - 1);
        if (v46 - 1 >= a5[118])
        {
          re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 116, v46);
        }

        else if (*(a5[120] + 56 * (v46 - 1) + 24))
        {
          goto LABEL_169;
        }

        v75 = v15;
        re::DynamicArray<unsigned long>::add((a5 + 161), &v132);
        v136.n128_u64[0] = *v173;
        re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v136.n128_i64[1], &v173[8]);
        v137[32] = 0;
        v24 = v132;
        v25 = a5[118];
        if (v25 > v132)
        {
          v76 = a5[120];
          goto LABEL_168;
        }

        goto LABEL_230;
      case 7u:
        *&v135[0] = a6;
        *(&v135[0] + 1) = a7;
        v136.n128_u64[0] = 0;
        v158[0].n128_u32[0] = 6;
        memset(&v158[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 238), v158);
        v158[0].n128_u64[0] = v13[240] - 1;
        re::DynamicArray<unsigned long>::add((v13 + 31), v158);
        re::DynamicArray<unsigned long>::add((v13 + 71), &v136);
        v9 = *(v13[35] + 8 * v13[33] - 8);
        v136.n128_u64[0] = 0;
        v158[0].n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add((v12 + 31), v158);
        re::DynamicArray<unsigned long>::add((v12 + 76), &v136);
        v13 = v12[33];
        v8 = &unk_1EE187000;
        {
          re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
        }

        v11 = v173;
        re::BindNode::bindPointWithOverride(v173, a8, re::introspect<re::Vector2<float>>(BOOL)::info, v135);
        if (!*&v173[24])
        {
          goto LABEL_169;
        }

        v12 = *v173;
        {
LABEL_56:
          if (v12 != v8[48])
          {
            goto LABEL_169;
          }

          v132 = v13 - 1;
          if (v13 - 1 >= a5[123])
          {
            re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 121, v13);
          }

          else if (*(a5[125] + 56 * (v13 - 1) + 24))
          {
            goto LABEL_169;
          }

          v75 = v15;
          re::DynamicArray<unsigned long>::add((a5 + 166), &v132);
          v136.n128_u64[0] = *v173;
          re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v136.n128_i64[1], &v173[8]);
          v137[32] = 0;
          v24 = v132;
          v25 = a5[123];
          if (v25 > v132)
          {
            v76 = a5[125];
LABEL_168:
            v77 = v76 + 56 * v24;
            *v77 = v136.n128_u64[0];
            re::DynamicArray<re::RigDataValue>::operator=(v77 + 8, &v136.n128_i64[1]);
            *(v77 + 48) = v137[32];
            re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v136.n128_i64[1]);
            re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v136.n128_i64[1]);
            v15 = v75;
            goto LABEL_169;
          }

          goto LABEL_214;
        }

LABEL_261:
        {
          v8[48] = re::introspect_Vector2F(0);
        }

        goto LABEL_56;
      case 8u:
        *&v135[0] = a6;
        *(&v135[0] + 1) = a7;
        v136 = 0u;
        v158[0].n128_u32[0] = 7;
        memset(&v158[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 243), v158);
        v158[0].n128_u64[0] = v13[245] - 1;
        re::DynamicArray<unsigned long>::add((v13 + 36), v158);
        re::DynamicArray<re::Vector3<float>>::add((v13 + 76), &v136);
        v9 = *(v13[40] + 8 * v13[38] - 8);
        v158[0] = 0u;
        v136.n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add((v12 + 36), &v136);
        re::DynamicArray<re::Vector3<float>>::add((v12 + 81), v158);
        v18 = v12[38];
        {
          re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
        }

        v11 = v173;
        re::BindNode::bindPointWithOverride(v173, a8, re::introspect<re::Vector3<float>>(BOOL)::info, v135);
        if (!*&v173[24])
        {
          goto LABEL_169;
        }

        v19 = *v173;
        {
          re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
        }

        if (v19 != re::introspect<re::Vector3<float>>(BOOL)::info)
        {
          goto LABEL_169;
        }

        v132 = (v18 - 1);
        if (v18 - 1 >= a5[128])
        {
          re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 126, v18);
          goto LABEL_154;
        }

        if (!*(a5[130] + 56 * (v18 - 1) + 24))
        {
LABEL_154:
          v75 = v15;
          re::DynamicArray<unsigned long>::add((a5 + 171), &v132);
          v136.n128_u64[0] = *v173;
          re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v136.n128_i64[1], &v173[8]);
          v137[32] = 0;
          v24 = v132;
          v25 = a5[128];
          if (v25 > v132)
          {
            v76 = a5[130];
            goto LABEL_168;
          }

          goto LABEL_222;
        }

LABEL_169:
        *(v14 + 96) = 2;
        *(v14 + 176) = v9;
        re::DynamicArray<re::BindPoint::BindPointData>::deinit((v11 + 8));
        v22 = (v11 + 8);
LABEL_170:
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(v22);
        goto LABEL_171;
    }

LABEL_260:
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unsupported type.", "!Unreachable code", "setCompilationValueForBoundInput", 691);
    _os_crash("assertion failure: (!Unreachable code) Unsupported type.");
    __break(1u);
    goto LABEL_261;
  }

  v9 = a3;
  if (v17 != 10)
  {
    if (v17 == 11)
    {
      if (*(a2 + 256))
      {
        v36 = 0;
        do
        {
          v38 = re::RigDataValue::attributeValue(v14, v36);
          re::DynamicString::format(&v136, "%.*s[%zu]", v39, a7, v11, v36);
          if (v136.n128_u8[8])
          {
            v40 = *v137;
          }

          else
          {
            v40 = &v136.n128_i8[9];
          }

          if (v136.n128_u8[8])
          {
            v41 = v136.n128_u64[1] >> 1;
          }

          else
          {
            v41 = v136.n128_u8[8] >> 1;
          }

          if ((v158[0].n128_u8[0] & 1) == 0 && v158[1].n128_u64[1])
          {
            if (v158[2].n128_u8[0])
            {
              (*(*v158[1].n128_u64[1] + 40))();
            }

            memset(&v158[1].n128_i8[8], 0, 32);
          }

          if (v136.n128_u64[0] && (v136.n128_u8[8] & 1) != 0)
          {
            (*(*v136.n128_u64[0] + 40))();
          }

          ++v36;
          v14 = a2;
        }

        while (v36 < *(a2 + 256));
      }

      v15 = a1;
      goto LABEL_171;
    }

    if (v17 == 13)
    {
      if (*(a2 + 40) >> 1 == 82389)
      {
        v23 = *(a2 + 48);
        if (v23 == "SRT" || !strcmp(v23, "SRT"))
        {
          *v173 = v11;
          *&v173[8] = a7;
          v158[0].n128_u64[1] = 1065353216;
          v158[0].n128_u64[0] = 0x3F8000003F800000;
          v158[1].n128_u64[1] = 0x3F80000000000000;
          v158[1].n128_u64[0] = 0;
          v158[2] = 0uLL;
          re::EvaluationTree::createInputRegister(v13, v158, &v136);
          v158[0].n128_u64[1] = 1065353216;
          v158[0].n128_u64[0] = 0x3F8000003F800000;
          v158[1].n128_u64[1] = 0x3F80000000000000;
          v158[1].n128_u64[0] = 0;
          v158[2] = 0uLL;
          re::DynamicArray<re::EvaluationSRT>::add((a5 + 41), &v136);
          re::DynamicArray<re::Matrix3x3<float>>::add((a5 + 86), v158);
          v68 = a5[43] - 1;
          v193.n128_u64[0] = a5;
          v193.n128_u64[1] = v68;
          {
            re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
          }

          re::BindNode::bindPointWithOverride(v158, a8, re::introspect<re::GenericSRT<float>>(BOOL)::info, v173);
          re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(v193.n128_u64[0], &v193, v158, 0);
          v69 = re::RigDataValue::attributeValue(v14, 0);
          v70 = v136.n128_u64[0];
          *(v69 + 96) = 2;
          *(v69 + 176) = v70;
          v71 = re::RigDataValue::attributeValue(v14, 1uLL);
          v72 = v136.n128_u64[1];
          *(v71 + 96) = 2;
          *(v71 + 176) = v72;
          v73 = re::RigDataValue::attributeValue(v14, 2uLL);
          v74 = *v137;
          *(v73 + 96) = 2;
          *(v73 + 176) = v74;
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v158[0].n128_i64[1]);
          v22 = &v158[0].n128_u64[1];
          goto LABEL_170;
        }
      }

      v125 = v15;
      if (!*(v14 + 256))
      {
LABEL_43:
        v15 = v125;
LABEL_171:
        *v15 = 1;
        return;
      }

      v16 = 0;
      v24 = 8;
      v25 = "%.*s.%s";
      while (1)
      {
        v26 = re::RigDataValue::attributeValue(v14, v16);
        v28 = v14;
        v29 = *(v14 + 72);
        if (v29 <= v16)
        {
          break;
        }

        v30 = v26;
        v123 = *(*(v28 + 88) + v24);
        re::DynamicString::format(v158, "%.*s.%s", v27, a7, v11);
        if (v158[0].n128_u8[8])
        {
          v31 = v158[1].n128_u64[0];
        }

        else
        {
          v31 = &v158[0].n128_i8[9];
        }

        if (v158[0].n128_u8[8])
        {
          v32 = v158[0].n128_u64[1] >> 1;
        }

        else
        {
          v32 = v158[0].n128_u8[8] >> 1;
        }

        if ((v136.n128_u8[0] & 1) == 0 && *&v137[8])
        {
          if (v137[16])
          {
            (*(**&v137[8] + 40))();
          }

          memset(&v137[8], 0, 32);
        }

        if (v158[0].n128_u64[0] && (v158[0].n128_u8[8] & 1) != 0)
        {
          (*(*v158[0].n128_u64[0] + 40))();
        }

        v16 = (v16 + 1);
        v14 = a2;
        v24 += 32;
        if (v16 >= *(a2 + 256))
        {
          goto LABEL_43;
        }
      }

      v193.n128_u64[0] = 0;
      v159 = 0u;
      memset(v158, 0, sizeof(v158));
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      *&v173[14] = 797;
      *&v173[18] = 2048;
      *&v173[20] = v16;
      *&v173[28] = 2048;
      *&v173[30] = v29;
      _os_log_send_and_compose_impl(v85, &v193, v158, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v123, v124);
      _os_crash_msg();
      __break(1u);
LABEL_214:
      v134[0] = 0;
      v159 = 0u;
      memset(v158, 0, sizeof(v158));
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v193.n128_u32[0] = 136315906;
      *(v16->n128_u64 + 4) = "operator[]";
      v193.n128_u16[6] = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      *(&v16->n128_u32[3] + 2) = 789;
      WORD1(v194) = 2048;
      *(v16[1].n128_u64 + 4) = v24;
      WORD2(v195) = 2048;
      *(&v16[1].n128_u64[1] + 6) = v25;
      _os_log_send_and_compose_impl(v88, v134, v158, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v193, 38, v123, v124);
      _os_crash_msg();
      __break(1u);
      goto LABEL_218;
    }

    goto LABEL_260;
  }

  memset(v137, 0, sizeof(v137));
  v136 = 0u;
  v138 = 0x7FFFFFFFLL;
  memset(v139, 0, sizeof(v139));
  v140 = 0;
  v141 = 0x7FFFFFFFLL;
  memset(v142, 0, sizeof(v142));
  v157 = 0;
  memset(v144, 0, sizeof(v144));
  v143 = 0;
  v145 = 0;
  memset(v146, 0, sizeof(v146));
  v147 = 0;
  v150 = 0;
  v149 = 0u;
  v148 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0;
  v154 = 0u;
  v155 = 0u;
  v156 = 0;
  {
    re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v108, v109, v110, v111, v112);
  }

  re::BindNode::bindPointWithOverride(v135, a8, re::introspect<re::SkeletalPose>(BOOL)::info, &v129);
  v48 = re::BindPoint::valueUntyped(v135);
  if (!v48 || (v49 = *(v48 + 10)) == 0 || !*(v49 + 40))
  {
    v158[0].n128_u64[0] = ".";
    v158[0].n128_u64[1] = 1;
    re::StringSlice::findLastOf(&v129, v158, 0, v134);
    v158[0].n128_u64[0] = "]";
    v158[0].n128_u64[1] = 1;
    re::StringSlice::findLastOf(&v129, v158, 0, &v132);
    v158[0].n128_u64[0] = "[";
    v158[0].n128_u64[1] = 1;
    LastOf = re::StringSlice::findLastOf(&v129, v158, 0, &v130);
    if (LOBYTE(v134[0]) == 1 && v132 == 1 && v130 == 1 && v133 > v131)
    {
      v54 = v15;
      v158[0].n128_u64[0] = re::Slice<char>::range(&v129, 0, v134[1]);
      v158[0].n128_u64[1] = v55;
      {
        re::introspect<re::ecs2::SkeletalPoseComponent>(BOOL)::info = re::ecs2::introspect_SkeletalPoseComponent(0, v118, v119, v120, v121, v122);
      }

      re::BindNode::bindPoint(v173, a8, re::introspect<re::ecs2::SkeletalPoseComponent>(BOOL)::info, v158);
      v56 = re::BindPoint::valueUntyped(v173);
      if (!v56)
      {
        v158[0].n128_u8[0] = 0;
        v158[0].n128_u64[1] = 6002;
        v158[1].n128_u64[0] = &re::AnimationErrorCategory(void)::instance;
        *(&v158[1] + 8) = v193;
        v158[2].n128_u64[1] = v194;
        v158[3].n128_u64[0] = v195;
LABEL_209:
        v15 = v54;
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v173[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v173[8]);
        goto LABEL_174;
      }

      v57 = v56;
      v58 = *(*(v56 + 16) + 192);
      if (v58)
      {
        v59 = re::AssetHandle::loadedAsset<re::MeshAsset>((v58 + 32));
        if (v59)
        {
          v60 = v59;
          v61 = v133 - (v131 + 1);
          v62 = re::Slice<char>::operator[](v129, *(&v129 + 1), v131 + 1);
          if (v193.n128_u8[8])
          {
            v63 = v194;
          }

          else
          {
            v63 = &v193.n128_i8[9];
          }

          v64 = atoi(v63);
          v65 = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((v57 + 32));
          if (v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = (v57 + 152);
          }

          RigHierarchyForPose = re::RigRuntimeData::makeRigHierarchyForPose(v158, v60, v66, v64, v135, v9, v13, a5);
          if (v193.n128_u64[0] && (v193.n128_u8[8] & 1) != 0)
          {
            (*(*v193.n128_u64[0] + 40))(RigHierarchyForPose);
          }

          goto LABEL_209;
        }
      }

      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v173[8]);
      LastOf = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v173[8]);
      v15 = v54;
    }

    v158[0].n128_u8[0] = 0;
    v158[0].n128_u64[1] = 6002;
    v158[1].n128_u64[0] = &re::AnimationErrorCategory(void)::instance;
    *(&v158[1] + 8) = *v173;
    v158[2].n128_u64[1] = *&v173[16];
    v158[3].n128_u64[0] = *&v173[24];
    goto LABEL_174;
  }

  v50 = re::RigHierarchy::bindRigHierarchyPose(&v136, v13, v12, v135, &v193);
  if ((v193.n128_u8[0] & 1) == 0 && v195)
  {
    if (BYTE8(v195))
    {
      (*(*v195 + 40))(v50);
    }

    v196 = 0u;
    v195 = 0u;
  }

  re::RigHierarchy::RigHierarchy(v173, &v136);
  v158[0].n128_u8[0] = 1;
  re::RigHierarchy::RigHierarchy(&v158[0].n128_i64[1], v173);
  if (v188)
  {
    if (v192)
    {
      (*(*v188 + 40))();
    }

    v192 = 0;
    v189 = 0;
    v190 = 0;
    v188 = 0;
    ++v191;
  }

  if (v183)
  {
    if (v187)
    {
      (*(*v183 + 40))();
    }

    v187 = 0;
    v184 = 0;
    v185 = 0;
    v183 = 0;
    ++v186;
  }

  if (v178)
  {
    if (v182)
    {
      (*(*v178 + 40))();
    }

    v182 = 0;
    v179 = 0;
    v180 = 0;
    v178 = 0;
    ++v181;
  }

  re::DynamicArray<re::StringID>::deinit(&v177);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v176);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v175);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v174);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v173[24]);
LABEL_174:
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v135 + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v135 + 8);
  if (*(&v154 + 1))
  {
    if (v157)
    {
      (*(**(&v154 + 1) + 40))();
    }

    v157 = 0;
    v155 = 0uLL;
    *(&v154 + 1) = 0;
    ++v156;
  }

  if (*(&v151 + 1))
  {
    if (v154)
    {
      (*(**(&v151 + 1) + 40))();
    }

    *&v154 = 0;
    v152 = 0uLL;
    *(&v151 + 1) = 0;
    ++v153;
  }

  if (*(&v148 + 1))
  {
    if (v151)
    {
      (*(**(&v148 + 1) + 40))();
    }

    *&v151 = 0;
    v149 = 0uLL;
    *(&v148 + 1) = 0;
    ++v150;
  }

  re::DynamicArray<re::StringID>::deinit(v146 + 8);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v144[8]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v142);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v139);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v137[8]);
  v78 = v158[0].n128_u8[0];
  if (v158[0].n128_u8[0])
  {
    v79 = *(a2 + 184);
    v80 = *(v158 + 8);
    *(v79 + 16) = v158[1].n128_u64[1];
    *v79 = v80;
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v79 + 24), &v158[2]);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v79 + 72), v160);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v79 + 120, v161);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v79 + 160, v162);
    re::DynamicArray<re::StringID>::operator=(v79 + 200, v163);
    re::DynamicArray<unsigned long>::operator=(v79 + 240, v164);
    re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v79 + 280, v167);
    re::DynamicArray<unsigned long>::operator=(v79 + 320, v170);
  }

  else
  {
    v136 = *(v158 + 8);
    re::DynamicString::DynamicString(v137, &v158[1].n128_i8[8]);
    v81 = *&v137[16];
    *v15 = 0;
    v82 = *v137;
    *(v15 + 8) = v136;
    *(v15 + 24) = v82;
    *(v15 + 40) = v81;
  }

  if (v158[0].n128_u8[0] == 1)
  {
    if (v170[0])
    {
      if (v172)
      {
        (*(*v170[0] + 40))();
      }

      v172 = 0;
      memset(v170, 0, sizeof(v170));
      ++v171;
    }

    if (v167[0])
    {
      if (v169)
      {
        (*(*v167[0] + 40))();
      }

      v169 = 0;
      memset(v167, 0, sizeof(v167));
      ++v168;
    }

    if (v164[0])
    {
      if (v166)
      {
        (*(*v164[0] + 40))();
      }

      v166 = 0;
      memset(v164, 0, sizeof(v164));
      ++v165;
    }

    re::DynamicArray<re::StringID>::deinit(v163);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v162);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v161);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v160);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v158[2]);
  }

  else if (v158[1].n128_u64[1] && (v158[2].n128_u8[0] & 1) != 0)
  {
    (*(*v158[1].n128_u64[1] + 40))();
  }

  if (v78)
  {
    goto LABEL_171;
  }
}