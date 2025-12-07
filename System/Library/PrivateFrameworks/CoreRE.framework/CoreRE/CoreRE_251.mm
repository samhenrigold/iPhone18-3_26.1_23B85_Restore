uint64_t re::videoPlaybackCreatePSEConfigs(uint64_t a1, uint64_t a2, uint64_t a3, re::VideoSimplePixelBufferAllocator *a4, __CVBuffer **a5, uint64_t a6, double a7)
{
  v7 = *a1;
  if (*a1 > 1uLL)
  {
    return 2;
  }

  if (!*a3)
  {
    v22 = *re::videoLogObjects(a1);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    LOWORD(buffer[0]) = 0;
    v23 = "[videoPlaybackCreatePSEConfigs] The given PSE processor is invalid.";
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, v23, buffer, 2u);
    return 1;
  }

  if (!**a3)
  {
    v22 = *re::videoLogObjects(a1);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    LOWORD(buffer[0]) = 0;
    v23 = "[videoPlaybackCreatePSEConfigs] The given PSE processor is not initialized.";
    goto LABEL_28;
  }

  v15 = a1;
  if (v7 != 1)
  {
    goto LABEL_22;
  }

  v16 = *(a1 + 16);
  if (!v16)
  {
    v22 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    LOWORD(buffer[0]) = 0;
    v23 = "[videoPlaybackCreatePSEConfigs] The given pixel buffers are invalid.";
    goto LABEL_28;
  }

  IOSurface = CVPixelBufferGetIOSurface(v16);
  CFRetain(IOSurface);
  buffer[0] = IOSurface;
  v18 = **a3;
  if (!v18)
  {
    goto LABEL_19;
  }

  if (!IOSurface)
  {
    return 2;
  }

  v19 = [*v18 canProcessSurface:IOSurface];
  IOSurface = buffer[0];
  if (!v19)
  {
LABEL_19:
    if (IOSurface)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buffer);
    }

    return 2;
  }

  if (buffer[0])
  {
    PixelFormat = IOSurfaceGetPixelFormat(buffer[0]);
    canConvertToGammaSpaceRGBColorModel = re::CoreVideoUtils::canConvertToGammaSpaceRGBColorModel(PixelFormat);
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buffer);
    if (canConvertToGammaSpaceRGBColorModel)
    {
      goto LABEL_22;
    }

    return 2;
  }

  a1 = re::CoreVideoUtils::canConvertToGammaSpaceRGBColorModel(0);
  if ((a1 & 1) == 0)
  {
    return 2;
  }

LABEL_22:
  if (!*(a2 + 560) || !*(a2 + 416))
  {
    v22 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buffer[0]) = 0;
      v23 = "[videoPlaybackCreatePSEConfigs] The given display info provider is not initialized.";
      goto LABEL_28;
    }

    return 1;
  }

  v24 = re::TargetDisplayInfoProvider::{unnamed type#12}::operator()(a2 + 528);
  v25 = re::TargetDisplayInfoProvider::{unnamed type#9}::operator()(a2 + 384);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(a5, v7);
  if (*a6 >= v7)
  {
    if (*a6 <= v7)
    {
      goto LABEL_40;
    }

    v27 = (a6 + 48 * v7 + 48);
    v28 = v7;
    do
    {
      if (*v27)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v27);
      }

      *v27 = 0;
      if (*(v27 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v27 - 1);
      }

      *(v27 - 1) = 0;
      v29 = *(v27 - 3);
      if (v29)
      {
        std::__shared_weak_count::__release_weak(v29);
      }

      ++v28;
      v27 += 6;
    }

    while (v28 < *a6);
  }

  else
  {
    bzero((a6 + 16), 48 * v7);
  }

  *a6 = v7;
  ++*(a6 + 8);
LABEL_40:
  if (v7 != 1)
  {
    return 0;
  }

  if (!*v15)
  {
    re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v44, v51);
    __break(1u);
LABEL_62:
    re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v45, v52);
    __break(1u);
LABEL_63:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v46, v53);
    __break(1u);
    goto LABEL_64;
  }

  re::VideoPixelBufferBase::surface(buffer, (v15 + 16));
  v31 = buffer[0];
  if (buffer[0])
  {
    v32 = IOSurfaceGetPixelFormat(buffer[0]);
  }

  else
  {
    v32 = 0;
  }

  if (!*v15)
  {
    goto LABEL_62;
  }

  v33 = re::CoreVideoUtils::convertToGammaSpaceRGBColorModel(v32);
  v34 = re::VideoPixelBufferBase::colorTags((v15 + 16));
  if (v31)
  {
    Width = IOSurfaceGetWidth(v31);
    Height = IOSurfaceGetHeight(v31);
    ProtectionOptions = IOSurfaceGetProtectionOptions();
  }

  else
  {
    Height = 0;
    Width = 0;
    ProtectionOptions = 0;
  }

  re::VideoSimplePixelBufferAllocator::createPixelBuffer(&v58, a4, Width, Height, v33, v34, HIBYTE(v34), 0, 1, 0x400u, 0x10u, 0, ProtectionOptions);
  if (!*a5)
  {
    goto LABEL_63;
  }

  a5[2] = v58;
  if (!*a6)
  {
LABEL_64:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v47, v54);
    __break(1u);
LABEL_65:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v48, v55);
    __break(1u);
    goto LABEL_66;
  }

  v40 = *a3;
  v39 = *(a3 + 8);
  if (v39)
  {
    atomic_fetch_add_explicit((v39 + 16), 1uLL, memory_order_relaxed);
  }

  v41 = *(a6 + 24);
  *(a6 + 16) = v40;
  *(a6 + 24) = v39;
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  if (!*a6)
  {
    goto LABEL_65;
  }

  *(a6 + 32) = a7;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a6 + 40, (a6 + 40), v31);
  if (!*a5)
  {
LABEL_66:
    re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v49, v56);
    __break(1u);
    goto LABEL_67;
  }

  re::VideoPixelBufferBase::surface(&v58, a5 + 2);
  if (*a6)
  {
    *(a6 + 48) = v58;
    *(a6 + 56) = v25;
    *(a6 + 60) = v24;
    if (v31)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buffer);
    }

    return 0;
  }

LABEL_67:
  re::internal::assertLog(6, v43, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
  result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v50, v57);
  __break(1u);
  return result;
}

unint64_t *re::VideoThroughput::update(uint64_t a1, CMTime *a2, CMTime *a3, unint64_t *a4)
{
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  v9 = Seconds;
  v10 = (a1 + 2048);
  v11 = *(a1 + 2048);
  v12 = *(a1 + 2056);
  if (v11 == v12)
  {
    v12 = *(a1 + 2048);
  }

  else
  {
    if (Seconds - *(a1 + 16 * ((v12 - 1) & 0x7F)) <= 1.0)
    {
      while (1)
      {
        v25 = a1 + 16 * (v11 & 0x7F);
        v26 = Seconds - *v25;
        if (v26 < 0.0)
        {
          break;
        }

        if (v26 < 1.0)
        {
          goto LABEL_5;
        }

        v27 = *(v25 + 8);
        *(a1 + 2048) = ++v11;
        *(a1 + 2120) -= v27;
        if (v12 == v11)
        {
          v11 = v12;
          goto LABEL_5;
        }
      }
    }

    *v10 = 0;
    *(a1 + 2056) = 0;
    *(a1 + 2120) = 0;
    v12 = 0;
    v11 = 0;
    *(a1 + 2088) = 0;
    v13 = MEMORY[0x1E6960C70];
    ++*(a1 + 2096);
    *(a1 + 2064) = *v13;
    *(a1 + 2080) = *(v13 + 16);
    *(a1 + 2112) = 0;
  }

LABEL_5:
  v14 = *a4;
  time.value = 0;
  time.timescale = 0;
  if (!v14)
  {
    v17 = 0;
LABEL_22:
    if (v11 == v12 || v17 != *(a1 + 2112) || (time1 = *a3, time2 = *(a1 + 2064), CMTimeCompare(&time1, &time2)) || v14 != *(a1 + 2088) || (result = memcmp(&time.flags, (a1 + 2100), 4 * v14), result))
    {
      v29 = *(a1 + 2056);
      if (v29 - *(a1 + 2048) == 128)
      {
        *v10 = v29 - 127;
      }

      *(a1 + 2056) = v29 + 1;
      v30 = (a1 + 16 * (v29 & 0x7F));
      *v30 = v9;
      *(v30 + 1) = v17;
      *(a1 + 2120) += v17;
      *(a1 + 2112) = v17;
      v31 = *&a3->value;
      *(a1 + 2080) = a3->epoch;
      *(a1 + 2064) = v31;
      return re::DynamicInlineArray<unsigned int,2ul>::operator=((a1 + 2088), &time);
    }

    return result;
  }

  if (v14 >= 3)
  {
    goto LABEL_33;
  }

  bzero(&time.flags, 4 * v14);
  v16 = 0;
  v17 = 0;
  time.value = v14;
  time.timescale = 1;
  v18 = 2;
  while (*a4 > v16)
  {
    v19 = &a4[v16];
    v20 = v19[2];
    if (v20)
    {
      Width = CVPixelBufferGetWidth(v20);
      v22 = v19[2];
      if (v22)
      {
        Height = CVPixelBufferGetHeight(v22);
        goto LABEL_14;
      }
    }

    else
    {
      Width = 0;
    }

    Height = 0;
LABEL_14:
    v24 = re::VideoPixelBufferBase::surfaceID(&a4[v18]);
    if (v14 <= v16)
    {
      goto LABEL_32;
    }

    v17 += Height * Width;
    *(&time.flags + v16++) = v24;
    ++v18;
    if (v14 == v16)
    {
      v11 = *(a1 + 2048);
      v12 = *(a1 + 2056);
      v10 = (a1 + 2048);
      goto LABEL_22;
    }
  }

  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v16, *a4);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v32, v34);
  __break(1u);
LABEL_32:
  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v16, v14);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v33, v35);
  __break(1u);
LABEL_33:
  re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

float re::VideoHDRDefaults::maxEdrValue(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue(v8, "video.hdr.edr.max_value", v6);
      v7 = *(v8 + 1);
      if (!LOBYTE(v8[0]))
      {
        v7 = 2.0;
      }

      re::VideoHDRDefaults::maxEdrValue(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 226);
}

float re::VideoHDRDefaults::overrideMaxEdrValue(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::VideoHDRDefaults::overrideMaxEdrValue(float)::value, "video.hdr.override.edr.max_value", v3);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideMaxEdrValue(float)::value)
  {
    return *&dword_1ECF1D39C;
  }

  return result;
}

float re::VideoHDRDefaults::maxEdrFactor(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue(v8, "video.hdr.edr.max_factor", v6);
      v7 = *(v8 + 1);
      if (!LOBYTE(v8[0]))
      {
        v7 = 0.5;
      }

      re::VideoHDRDefaults::maxEdrFactor(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 234);
}

float re::VideoHDRDefaults::overrideMaxEdrFactor(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::VideoHDRDefaults::overrideMaxEdrFactor(float)::value, "video.hdr.override.edr.max_factor", v3);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideMaxEdrFactor(float)::value)
  {
    return *&dword_1ECF1D3BC;
  }

  return result;
}

uint64_t re::VideoHDRDefaults::targetNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue(v8, "video.hdr.nits.target", v6);
      v7 = HIDWORD(v8[0]);
      if (!LOBYTE(v8[0]))
      {
        v7 = 100;
      }

      re::VideoHDRDefaults::targetNits(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 242);
}

uint64_t re::VideoHDRDefaults::overrideTargetNits(uint64_t this)
{
  {
    v3 = this;
    LODWORD(this) = v3;
    if (v2)
    {
      re::Defaults::intValue(&re::VideoHDRDefaults::overrideTargetNits::value, "video.hdr.override.nits.target", v1);
      LODWORD(this) = v3;
    }
  }

  if (re::VideoHDRDefaults::overrideTargetNits::value)
  {
    return dword_1ECF1D3DC;
  }

  else
  {
    return this;
  }
}

float re::VideoHDRDefaults::currentMaxNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue(v8, "video.hdr.nits.current_max", v6);
      v7 = *(v8 + 1);
      if (!LOBYTE(v8[0]))
      {
        v7 = 800.0;
      }

      re::VideoHDRDefaults::currentMaxNits(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 250);
}

float re::VideoHDRDefaults::overrideCurrentMaxNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::VideoHDRDefaults::overrideCurrentMaxNits(float)::value, "video.hdr.override.nits.current_max", v3);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideCurrentMaxNits(float)::value)
  {
    return *&dword_1ECF1D3FC;
  }

  return result;
}

float re::VideoHDRDefaults::currentMinNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue(v8, "video.hdr.nits.current_min", v6);
      v7 = *(v8 + 1);
      if (!LOBYTE(v8[0]))
      {
        v7 = 0.005;
      }

      re::VideoHDRDefaults::currentMinNits(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 258);
}

float re::VideoHDRDefaults::overrideCurrentMinNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::VideoHDRDefaults::overrideCurrentMinNits(float)::value, "video.hdr.override.nits.current_min", v3);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideCurrentMinNits(float)::value)
  {
    return *&dword_1ECF1D41C;
  }

  return result;
}

float re::VideoHDRDefaults::overrideAmbientLightInNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::VideoHDRDefaults::overrideAmbientLightInNits(float)::value, "video.hdr.override.nits.ambient_light", v3);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideAmbientLightInNits(float)::value)
  {
    return *&dword_1ECF1D42C;
  }

  return result;
}

float re::VideoHDRDefaults::sdrMaxBrightnessInNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue(v8, "video.hdr.nits.sdr_max_brightness", v6);
      v7 = SHIDWORD(v8[0]);
      if (!LOBYTE(v8[0]))
      {
        v7 = 150.0;
      }

      re::VideoHDRDefaults::sdrMaxBrightnessInNits(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 270);
}

float re::VideoHDRDefaults::overrideSdrMaxBrightnessInNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::VideoHDRDefaults::overrideSdrMaxBrightnessInNits(float)::value, "video.hdr.override.nits.sdr_max_brightness", v3);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideSdrMaxBrightnessInNits(float)::value)
  {
    return *&dword_1ECF1D44C;
  }

  return result;
}

uint64_t re::VideoHDRDefaults::displayAdjustsBlackLevel(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue(v8, "video.hdr.display.adjusts_black_level", v6);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoHDRDefaults::displayAdjustsBlackLevel(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[1112];
}

uint64_t re::VideoHDRDefaults::overrideDisplayAdjustsBlackLevel(re::VideoHDRDefaults *this)
{
  {
    v5 = this;
    LOBYTE(this) = v5;
    if (v4)
    {
      re::Defaults::BOOLValue(&re::VideoHDRDefaults::overrideDisplayAdjustsBlackLevel(BOOL)::value, "video.hdr.override.display.adjusts_black_level", v3);
      LOBYTE(this) = v5;
    }
  }

  v1 = byte_1ECF1D469;
  if (!re::VideoHDRDefaults::overrideDisplayAdjustsBlackLevel(BOOL)::value)
  {
    v1 = this;
  }

  return v1 & 1;
}

uint64_t re::VideoHDRDefaults::displayDiagonalSize(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue(v8, "video.hdr.display.diagonal_size", v6);
      v7 = HIDWORD(v8[0]);
      if (!LOBYTE(v8[0]))
      {
        v7 = 10;
      }

      re::VideoHDRDefaults::displayDiagonalSize(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 286);
}

uint64_t re::VideoHDRDefaults::displayMaximumBrightnessInNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue(v8, "video.hdr.display.nits.max_brightness", v6);
      v7 = HIDWORD(v8[0]);
      if (!LOBYTE(v8[0]))
      {
        v7 = 800;
      }

      re::VideoHDRDefaults::displayMaximumBrightnessInNits(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 290);
}

uint64_t re::VideoHDRDefaults::overrideDisplayMaximumBrightnessInNits(uint64_t this)
{
  {
    v3 = this;
    LODWORD(this) = v3;
    if (v2)
    {
      re::Defaults::intValue(&re::VideoHDRDefaults::overrideDisplayMaximumBrightnessInNits::value, "video.hdr.override.display.nits.max_brightness", v1);
      LODWORD(this) = v3;
    }
  }

  if (re::VideoHDRDefaults::overrideDisplayMaximumBrightnessInNits::value)
  {
    return dword_1ECF1D49C;
  }

  else
  {
    return this;
  }
}

uint64_t re::VideoHDRDefaults::displayAverageBrightnessInNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue(v8, "video.hdr.display.nits.average_brightness", v6);
      v7 = HIDWORD(v8[0]);
      if (!LOBYTE(v8[0]))
      {
        v7 = 400;
      }

      re::VideoHDRDefaults::displayAverageBrightnessInNits(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 298);
}

uint64_t re::VideoHDRDefaults::overrideDisplayAverageBrightnessInNits(uint64_t this)
{
  {
    v3 = this;
    LODWORD(this) = v3;
    if (v2)
    {
      re::Defaults::intValue(&re::VideoHDRDefaults::overrideDisplayAverageBrightnessInNits::value, "video.hdr.override.display.nits.average_brightness", v1);
      LODWORD(this) = v3;
    }
  }

  if (re::VideoHDRDefaults::overrideDisplayAverageBrightnessInNits::value)
  {
    return dword_1ECF1D4BC;
  }

  else
  {
    return this;
  }
}

float re::VideoHDRDefaults::displayMinimumBrightnessInNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue(v8, "video.hdr.display.nits.min_brightness", v6);
      v7 = *(v8 + 1);
      if (!LOBYTE(v8[0]))
      {
        v7 = 0.005;
      }

      re::VideoHDRDefaults::displayMinimumBrightnessInNits(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 306);
}

float re::VideoHDRDefaults::overrideDisplayMinimumBrightnessInNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::VideoHDRDefaults::overrideDisplayMinimumBrightnessInNits(float)::value, "video.hdr.override.display.nits.min_brightness", v3);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideDisplayMinimumBrightnessInNits(float)::value)
  {
    return *&dword_1ECF1D4DC;
  }

  return result;
}

float re::VideoHDRDefaults::displayContrastRatio(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue(v8, "video.hdr.display.contrast_ratio", v6);
      v7 = *(v8 + 1);
      if (!LOBYTE(v8[0]))
      {
        v7 = 0.000667;
      }

      re::VideoHDRDefaults::displayContrastRatio(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 314);
}

float re::VideoHDRDefaults::overrideDisplayContrastRatio(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue(&re::VideoHDRDefaults::overrideDisplayContrastRatio(float)::value, "video.hdr.override.display.contrast_ratio", v3);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideDisplayContrastRatio(float)::value)
  {
    return *&dword_1ECF1D4FC;
  }

  return result;
}

uint64_t re::VideoHDRDefaults::overridePixelFormat(uint64_t this)
{
  {
    v3 = this;
    LODWORD(this) = v3;
    if (v2)
    {
      re::Defaults::uintValue(&re::VideoHDRDefaults::overridePixelFormat::value, "video.hdr.override.pixel_format", v1);
      LODWORD(this) = v3;
    }
  }

  if (re::VideoHDRDefaults::overridePixelFormat::value)
  {
    return dword_1ECF1D50C;
  }

  else
  {
    return this;
  }
}

uint64_t re::VideoHDRDefaults::overrideColorPrimaries(re::VideoHDRDefaults *this)
{
  {
    v5 = this;
    LOBYTE(this) = v5;
    if (v4)
    {
      re::Defaults::uintValue(&re::VideoHDRDefaults::overrideColorPrimaries(unsigned char)::value, "video.hdr.override.color_primaries", v3);
      LOBYTE(this) = v5;
    }
  }

  v1 = dword_1ECF1D51C;
  if (!re::VideoHDRDefaults::overrideColorPrimaries(unsigned char)::value)
  {
    return this;
  }

  return v1;
}

uint64_t re::VideoHDRDefaults::overrideTransferFunction(re::VideoHDRDefaults *this)
{
  {
    v5 = this;
    LOBYTE(this) = v5;
    if (v4)
    {
      re::Defaults::uintValue(&re::VideoHDRDefaults::overrideTransferFunction(unsigned char)::value, "video.hdr.override.transfer_function", v3);
      LOBYTE(this) = v5;
    }
  }

  v1 = dword_1ECF1D52C;
  if (!re::VideoHDRDefaults::overrideTransferFunction(unsigned char)::value)
  {
    return this;
  }

  return v1;
}

uint64_t re::VideoHDRDefaults::overrideYCbCrMatrix(re::VideoHDRDefaults *this)
{
  {
    v5 = this;
    LOBYTE(this) = v5;
    if (v4)
    {
      re::Defaults::uintValue(&re::VideoHDRDefaults::overrideYCbCrMatrix(unsigned char)::value, "video.hdr.override.ycbcr_matrix", v3);
      LOBYTE(this) = v5;
    }
  }

  v1 = dword_1ECF1D53C;
  if (!re::VideoHDRDefaults::overrideYCbCrMatrix(unsigned char)::value)
  {
    return this;
  }

  return v1;
}

double re::VideoColorTuner::calculateColor(float32x4_t *a1, float *a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, int8x16_t a7, int8x16_t a8)
{
  a1[2].i64[0] = re::VideoColorTuner::calculateTargetColor(a1->f32, a2, a3->f32, a1[2].f32, a4, a5, a6, a7, a8);
  a1[2].i64[1] = v11;
  v20 = a1[2];
  v12 = powf(a2[1], a3[7].f32[0]);
  v13 = a3[7].f32[1];
  v14 = v13 + (v12 * (1.0 - v13));
  if (v14 > 1.0)
  {
    v14 = 1.0;
  }

  if (v14 < v13)
  {
    v14 = a3[7].f32[1];
  }

  v20 = vmlaq_n_f32(vmulq_n_f32(v20, v14), a3[6], 1.0 - v14);
  v15.i64[0] = re::SmoothDampener::smooth(&v20, &a1[3], &a1[1], a3[5].f32[2], a3[5].f32[1], *a2);
  v15.i64[1] = v16;
  a1[3].i64[0] = v15.i64[0];
  a1[3].i64[1] = v16;
  v17 = a3[5].f32[0];
  *v18.i32 = 1.0 - v17;
  *&result = vaddq_f32(vdupq_lane_s32(v18, 0), vmulq_n_f32(v15, v17)).u64[0];
  return result;
}

re::VideoDefaults *re::VideoColorTuner::calculateTargetColor(float *a1, float *a2, float *a3, float *a4, float32x4_t *a5, double a6, double a7, int8x16_t a8, int8x16_t a9)
{
  v79 = *MEMORY[0x1E69E9840];
  v14 = re::VideoColorUtils::rgbToHsv(a5->f32, a6, a7, a8, a9);
  v15.i32[0] = v14;
  v75 = v15;
  v16 = *(&v14 + 1);
  v18 = v17;
  v19 = re::VideoDefaults::logEnabled(v14);
  if (v19)
  {
    v54 = *re::videoLogObjects(v19);
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
    if (v55)
    {
      v56 = a5->f32[0];
      v57 = a5->f32[1];
      v58 = a5->f32[2];
      *buf = 134218496;
      *&buf[4] = v56;
      *&buf[12] = 2048;
      *&buf[14] = v57;
      v77 = 2048;
      v78 = v58;
      _os_log_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Input Color: %f, %f, %f", buf, 0x20u);
    }

    v59 = *re::videoLogObjects(v55);
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
    if (v60)
    {
      v61 = (((a5->f32[0] * 100.0) * 254.0) / 100.0);
      v62 = (((a5->f32[1] * 100.0) * 254.0) / 100.0);
      v63 = (a5->f32[2] * 100.0) * 254.0;
      *buf = 134218496;
      *&buf[4] = v61;
      *&buf[12] = 2048;
      *&buf[14] = v62;
      v77 = 2048;
      v78 = (v63 / 100.0);
      _os_log_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Input Color RGB Values: R:%f, G:%f, B:%f", buf, 0x20u);
    }

    v64 = *re::videoLogObjects(v60);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = *v75.i32;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      v77 = 2048;
      v78 = v18;
      _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Input HSV: %f, %f, %f", buf, 0x20u);
    }
  }

  v24 = ((*a2 * *a3) * fabsf((*v75.i32 - COERCE_FLOAT(re::VideoColorUtils::rgbToHsv(a4, v20, v21, v22, v23))) / *a2)) + (*a1 * (1.0 - (*a2 * *a3)));
  *a1 = v24;
  v25 = powf(v16, a3[5]);
  v26 = a3[6];
  v27 = a3[7];
  v28 = ((v24 - a3[2]) / (a3[1] - a3[2])) + 0.0;
  if (v28 > 1.0)
  {
    v28 = 1.0;
  }

  if (v28 < 0.0)
  {
    v28 = 0.0;
  }

  v30 = powf(1.0 - v28, a3[3]);
  v31 = v25 * ((v27 * (1.0 - v30)) + (v26 * (1.0 - (1.0 - v30))));
  v32 = vmulq_f32(*a5, xmmword_1E310ADA0);
  v33 = v32.f32[2] + vaddv_f32(*v32.f32);
  if (v33 <= v18)
  {
    v33 = v18;
  }

  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  v74 = 0.0;
  if (v33 >= 0.0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = re::VideoDefaults::logEnabled(v29);
  if (v35)
  {
    v65 = *re::videoLogObjects(v35);
    v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
    if (v66)
    {
      *buf = 134218496;
      *&buf[4] = *v75.i32;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      v77 = 2048;
      v78 = v18;
      _os_log_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Hue Dependent Saturation: %f, %f, %f", buf, 0x20u);
    }

    v67 = *re::videoLogObjects(v66);
    v35 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      *buf = 134217984;
      *&buf[4] = v34;
      _os_log_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor luminance: %f", buf, 0xCu);
    }
  }

  if (v34 > 0.0001)
  {
    v36 = a3[9];
    if (v31 <= v36)
    {
      v36 = v31;
    }

    if (v36 >= 0.0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0.0;
    }

    v38 = powf(a3[11], (v34 - a3[10]) * -40.0);
    v74 = (v37 * (1.0 / (v38 + 1.0))) + ((1.0 - (1.0 / (v38 + 1.0))) * 0.0);
  }

  v39 = re::VideoDefaults::logEnabled(v35);
  if (v39)
  {
    v68 = *re::videoLogObjects(v39);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = *v75.i32;
      *&buf[12] = 2048;
      *&buf[14] = v74;
      v77 = 2048;
      v78 = v18;
      _os_log_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Brightness Dependent Saturation: %f, %f, %f", buf, 0x20u);
    }
  }

  v40 = a2[12];
  v41 = a3[12];
  v42 = a3[13];
  v43 = powf(a3[17], (v18 - a3[16]) * -40.0);
  *&v44 = v40 * ((v42 * (1.0 / (v43 + 1.0))) + (v41 * (1.0 - (1.0 / (v43 + 1.0)))));
  v73 = v44;
  v46 = re::VideoDefaults::logEnabled(v45);
  if (v46)
  {
    v69 = *re::videoLogObjects(v46);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = *v75.i32;
      *&buf[12] = 2048;
      *&buf[14] = v74;
      v77 = 2048;
      v78 = *&v73;
      _os_log_impl(&dword_1E1C61000, v69, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Output HSV: %f, %f, %f", buf, 0x20u);
    }
  }

  v48 = v75;
  *&v48.i32[1] = v74;
  v48.i32[2] = LODWORD(v73);
  *buf = v48;
  v49 = re::VideoColorUtils::hsvToRgb(buf, v48, v73, v47);
  v51 = v50;
  v52 = re::VideoDefaults::logEnabled(v49);
  if (v52)
  {
    v70 = *re::videoLogObjects(v52);
    v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
    if (v71)
    {
      *buf = 134218496;
      *&buf[4] = *&v49;
      *&buf[12] = 2048;
      *&buf[14] = *(&v49 + 1);
      v77 = 2048;
      v78 = v51;
      _os_log_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Output Color: %f, %f, %f", buf, 0x20u);
    }

    v72 = *re::videoLogObjects(v71);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = (((*&v49 * 100.0) * 254.0) / 100.0);
      *&buf[12] = 2048;
      *&buf[14] = (((*(&v49 + 1) * 100.0) * 254.0) / 100.0);
      v77 = 2048;
      v78 = (((v51 * 100.0) * 254.0) / 100.0);
      _os_log_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Output Color RGB Values: %f, %f, %f", buf, 0x20u);
    }
  }

  return v49;
}

uint64_t re::VideoTextureCache::init(CVMetalTextureCacheRef *this)
{
  if (*this)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = MTLCreateSystemDefaultDevice();
  LODWORD(v3) = CVMetalTextureCacheCreate(v3, 0, v4, 0, this);

  if (!v3)
  {
    return 1;
  }

  result = 0;
  *this = 0;
  return result;
}

uint64_t re::VideoTextureCache::createTexturesFromPixelBuffer(re::VideoTextureCache *this, CVPixelBufferRef pixelBuffer, re::VideoPixelBufferTextures *a3, int a4, char a5)
{
  if (!pixelBuffer)
  {
    v15 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid input pixel buffer.";
      goto LABEL_24;
    }

    return 1;
  }

  if (!*this)
  {
    v15 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid texture cache.";
      goto LABEL_24;
    }

    return 1;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  if (!IOSurface)
  {
    v15 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid input pixel buffer.";
      goto LABEL_24;
    }

    return 1;
  }

  v11 = IOSurface;
  PlaneCount = IOSurfaceGetPlaneCount(IOSurface);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  IsTriPlanar = re::CoreVideoUtils::pixelFormatIsTriPlanar(PixelFormatType);
  if (IsTriPlanar && PlaneCount != 3)
  {
    v15 = *re::videoLogObjects(IsTriPlanar);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid input pixel buffer.";
LABEL_24:
      v23 = texture;
LABEL_25:
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, v23, 2u);
      return 1;
    }

    return 1;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if (!Width || (v19 = Height) == 0)
  {
    v15 = *re::videoLogObjects(Height);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid input pixel buffer.";
      goto LABEL_24;
    }

    return 1;
  }

  textureOut = 0;
  texture[0] = 0;
  v50 = 0;
  if (re::VideoPlatform::isLegacyDevice(Height) & 1) != 0 || (a5)
  {
    v25 = re::CoreVideoUtils::uncompressedPixelFormat(PixelFormatType);
    v26 = re::CoreVideoUtils::metalPixelFormatFromPixelFormat(v25, 0, a5);
    if (!v26)
    {
      v15 = *re::videoLogObjects(v26);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 0;
      v16 = "Could not determine pixel buffer's pixel format for plane 1.";
      goto LABEL_36;
    }

    v27 = *MEMORY[0x1E695E480];
    TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], *this, pixelBuffer, 0, v26, Width, v19, 0, texture);
    if (TextureFromImage)
    {
      v15 = *re::videoLogObjects(TextureFromImage);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 0;
      v16 = "Unable to create texture from texture cache.";
      goto LABEL_36;
    }

    if (PlaneCount < 2)
    {
      goto LABEL_55;
    }

    v29 = re::CoreVideoUtils::metalPixelFormatFromPixelFormat(v25, 1u, a5);
    if (!v29)
    {
      v34 = *re::videoLogObjects(v29);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v35 = "Could not determine pixel buffer's pixel format for plane 2.";
      goto LABEL_51;
    }

    v30 = v29;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(v11, 1uLL);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v11, 1uLL);
    v33 = CVMetalTextureCacheCreateTextureFromImage(v27, *this, pixelBuffer, 0, v30, WidthOfPlane, HeightOfPlane, 1uLL, &textureOut);
    if (v33)
    {
      v34 = *re::videoLogObjects(v33);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v35 = "Unable to create texture from texture cache.";
      goto LABEL_51;
    }

    if (PlaneCount == 2)
    {
      goto LABEL_55;
    }

    v42 = re::CoreVideoUtils::metalPixelFormatFromPixelFormat(v25, 2u, a5);
    if (v42)
    {
      v43 = v42;
      v44 = IOSurfaceGetWidthOfPlane(v11, 2uLL);
      v45 = IOSurfaceGetHeightOfPlane(v11, 2uLL);
      v46 = CVMetalTextureCacheCreateTextureFromImage(v27, *this, pixelBuffer, 0, v43, v44, v45, 2uLL, &v50);
      if (!v46)
      {
        goto LABEL_55;
      }

      v47 = *re::videoLogObjects(v46);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
LABEL_66:
        if (texture[0])
        {
          CFRelease(texture[0]);
        }

        v38 = textureOut;
        if (!textureOut)
        {
          return 1;
        }

        goto LABEL_53;
      }

      *buf = 0;
      v48 = "Unable to create texture from texture cache.";
    }

    else
    {
      v47 = *re::videoLogObjects(v42);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 0;
      v48 = "Could not determine pixel buffer's pixel format for plane 3.";
    }

    _os_log_error_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_ERROR, v48, buf, 2u);
    goto LABEL_66;
  }

  v20 = re::CoreVideoUtils::metalPixelFormatForPixelBuffer(pixelBuffer, 0, a4);
  if (!v20)
  {
    v15 = *re::videoLogObjects(v20);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 0;
    v16 = "Could not determine pixel buffer's pixel format for plane 1.";
    goto LABEL_36;
  }

  v21 = *MEMORY[0x1E695E480];
  v22 = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], *this, pixelBuffer, 0, v20, Width, v19, 0, texture);
  if (v22)
  {
    v15 = *re::videoLogObjects(v22);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 0;
    v16 = "Unable to create texture from texture cache.";
LABEL_36:
    v23 = buf;
    goto LABEL_25;
  }

  if (PlaneCount != 3)
  {
    goto LABEL_55;
  }

  v36 = re::CoreVideoUtils::metalPixelFormatForPixelBuffer(pixelBuffer, 2, a4);
  if (!v36)
  {
    v34 = *re::videoLogObjects(v36);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v35 = "Could not determine pixel buffer's pixel format for plane 3.";
LABEL_51:
    _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
LABEL_52:
    v38 = texture[0];
    if (!texture[0])
    {
      return 1;
    }

LABEL_53:
    CFRelease(v38);
    return 1;
  }

  v37 = CVMetalTextureCacheCreateTextureFromImage(v21, *this, pixelBuffer, 0, v36, Width, v19, 2uLL, &textureOut);
  if (v37)
  {
    v34 = *re::videoLogObjects(v37);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v35 = "Unable to create texture from texture cache.";
    goto LABEL_51;
  }

LABEL_55:
  v39 = texture[0];
  CVPixelBufferRetain(texture[0]);
  *(a3 + 13) = v39;
  v40 = textureOut;
  CVPixelBufferRetain(textureOut);
  *(a3 + 14) = v40;
  v41 = v50;
  CVPixelBufferRetain(v50);
  *(a3 + 15) = v41;
  if (texture[0])
  {
    CFRelease(texture[0]);
  }

  if (textureOut)
  {
    CFRelease(textureOut);
  }

  result = v50;
  if (v50)
  {
    CFRelease(v50);
    return 0;
  }

  return result;
}

uint64_t re::memoryAttributionVideoPixelBufferPool(re *this, const re::VideoPixelBufferPool *a2)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = *(this + 1);
  if (v2)
  {
    v4 = re::VideoPixelBufferPool::numPooledPixelBuffers(this);
    if (v4)
    {
      v7 = 1;
      v5 = re::globalAllocators(v4)[2];
      v9[0] = &unk_1F5D1B040;
      v9[1] = &v7;
      v9[2] = &v8;
      v9[3] = v5;
      v9[4] = v9;
      re::VideoPixelBufferPool::iterateIOSurface(this, v9);
      re::FunctionBase<24ul,void ()(__IOSurface *)>::destroyCallable(v9);
      LOBYTE(v2) = v7;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t re::memoryAttributionCVPixelBufferPool(re *this, __CVPixelBufferPool *const *a2)
{
  v2 = *this;
  if (*this)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v4 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966188], *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966180], v4);
    CVPixelBufferPoolScanIOSurfacesWithOptions();
    CFRelease(Mutable);
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

__CVBuffer *re::memoryAttributionVideoPixelBuffer(__CVBuffer **a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v4 = a2;
    IOSurface = CVPixelBufferGetIOSurface(result);
    CFRetain(IOSurface);
    v8 = IOSurface;
    if (!IOSurface)
    {
      return 0;
    }

    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v8);
    result = *a1;
    if (!*a1)
    {
      return result;
    }

    v6 = CVPixelBufferGetIOSurface(result);
    CFRetain(v6);
    v8 = v6;
    if (v4 && v6)
    {
      v7 = IOSurfaceSetOwnershipIdentity() == 0;
    }

    else
    {
      v7 = 0;
      result = 0;
      if (!v6)
      {
        return result;
      }
    }

    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v8);
    return v7;
  }

  return result;
}

__CVBuffer *re::memoryAttributionCVPixelBuffer(__CVBuffer **this, __CVBuffer *const *a2)
{
  result = *this;
  if (result)
  {
    v3 = a2;
    IOSurface = CVPixelBufferGetIOSurface(result);
    result = 0;
    if (v3)
    {
      if (IOSurface)
      {
        return (IOSurfaceSetOwnershipIdentity() == 0);
      }
    }
  }

  return result;
}

BOOL re::memoryAttributionMTLResource(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = a1;
    v2 = (objc_opt_respondsToSelector() & 1) != 0 && [v4 setOwnerWithIdentity:a2] == 0;
  }

  return v2;
}

uint64_t re::internal::Callable<re::memoryAttributionVideoPixelBufferPool(re::VideoPixelBufferPool const&,unsigned int)::$_0,void ()(__IOSurface *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = **(a1 + 16) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    result = IOSurfaceSetOwnershipIdentity();
    v5 = result == 0;
  }

  **(a1 + 8) &= v5;
  return result;
}

uint64_t re::internal::Callable<re::memoryAttributionVideoPixelBufferPool(re::VideoPixelBufferPool const&,unsigned int)::$_0,void ()(__IOSurface *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1B040;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::memoryAttributionVideoPixelBufferPool(re::VideoPixelBufferPool const&,unsigned int)::$_0,void ()(__IOSurface *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1B040;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(__IOSurface *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::memoryAttributionCVPixelBufferPool(__CVPixelBufferPool * const&,unsigned int)::$_0::__invoke(uint64_t result, uint64_t a2)
{
  v3 = 0;
  if (result && *(a2 + 4))
  {
    result = IOSurfaceSetOwnershipIdentity();
    v3 = result == 0;
  }

  *a2 &= v3;
  return result;
}

BOOL re::VideoPipelineHDRConfigGenerator::init(re::VideoPipelineHDRConfigGenerator *this, int a2, int a3, int a4, int a5, int a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    return 0;
  }

  v25[0] = a2;
  v25[1] = a3;
  v25[3] = a6;
  v27 = 1;
  v10 = re::VideoDefaults::logEnabled(this);
  if (v10)
  {
    v23 = *re::videoLogObjects(v10);
    v10 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v24 = v23;
      *buf = 136315394;
      *&buf[4] = "(undefined)";
      *&buf[12] = 1024;
      *&buf[14] = a5;
      _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "[VideoHDRConfigGenerator]->init :: HDR pixel format: %s (%d)", buf, 0x12u);
    }
  }

  if (!a5)
  {
    v12 = *re::videoLogObjects(v10);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 134217984;
      *&buf[4] = 0;
      v13 = "Unsupported output pixel format '%llu'.";
      v14 = v12;
      v15 = 12;
LABEL_24:
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      return 0;
    }

    return result;
  }

  v25[4] = a5;
  switch(a4)
  {
    case 1:
      v11 = MEMORY[0x1E6965DB8];
      break;
    case 9:
      v11 = MEMORY[0x1E6965DB0];
      break;
    case 12:
      v11 = MEMORY[0x1E6965DD0];
      break;
    default:
      goto LABEL_19;
  }

  v16 = *v11;
  if (v16)
  {
    v26 = v16;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v17 = getHDRProcessorClass(void)::softClass;
    v31 = getHDRProcessorClass(void)::softClass;
    if (!getHDRProcessorClass(void)::softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL20getHDRProcessorClassv_block_invoke_0;
      v33 = &unk_1E8722530;
      v34 = &v28;
      ___ZL20getHDRProcessorClassv_block_invoke_0(buf);
      v17 = v29[3];
    }

    v18 = v17;
    _Block_object_dispose(&v28, 8);
    v19 = [[v17 alloc] initWithConfig:v25];
    v20 = *this;
    *this = v19;

    if (*this)
    {
      return 1;
    }

    v22 = *re::videoLogObjects(v21);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v13 = "Could not create HDR processor.";
      goto LABEL_23;
    }

    return result;
  }

LABEL_19:
  v22 = *re::videoLogObjects(v10);
  result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    v13 = "Target color primaries not supported.";
LABEL_23:
    v14 = v22;
    v15 = 2;
    goto LABEL_24;
  }

  return result;
}

uint64_t re::VideoPipelineHDRConfigGenerator::createConfig(re::VideoDefaults *a1, uint8_t *a2, re **a3, unsigned int *a4, float *a5, uint64_t a6)
{
  v147 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v12 = re::VideoDefaults::logEnabled(a1);
    if (v12)
    {
      goto LABEL_120;
    }

    while (1)
    {
      v13 = *a2;
      if (!*a2)
      {
        v76 = *re::videoLogObjects(0);
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        *buf = 0;
        v77 = "[VideoHDRConfigGenerator::createConfig]: invalid input pixel buffer.";
        goto LABEL_76;
      }

      if (!*a3)
      {
        v76 = *re::videoLogObjects(v13);
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        *buf = 0;
        v77 = "[VideoHDRConfigGenerator::createConfig]: invalid output pixel buffer.";
LABEL_76:
        _os_log_error_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_ERROR, v77, buf, 2u);
        return 1;
      }

      IOSurface = CVPixelBufferGetIOSurface(v13);
      CFRetain(IOSurface);
      v119 = IOSurface;
      v15 = *a3;
      if (!*a3)
      {
        v118 = 0;
        if (IOSurface)
        {
LABEL_80:
          v80 = *re::videoLogObjects(v15);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v80, OS_LOG_TYPE_ERROR, "[VideoHDRConfigGenerator::createConfig]: invalid output IO surface.", buf, 2u);
          }

          v78 = 1;
LABEL_89:
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v119);
          return v78;
        }

        v16 = 0;
LABEL_84:
        v81 = *re::videoLogObjects(v15);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v81, OS_LOG_TYPE_ERROR, "[VideoHDRConfigGenerator::createConfig]: invalid input IO surface.", buf, 2u);
        }

        v82 = 1;
        v78 = 1;
        if (!v16)
        {
          goto LABEL_88;
        }

LABEL_87:
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v118);
        goto LABEL_88;
      }

      v16 = CVPixelBufferGetIOSurface(v15);
      v15 = CFRetain(v16);
      v118 = v16;
      if (!IOSurface)
      {
        goto LABEL_84;
      }

      if (!v16)
      {
        goto LABEL_80;
      }

      a3 = [MEMORY[0x1E695DF90] dictionary];
      v17 = getkHDRProcessingDolbyVisionRPUDataKey();
      v18 = IOSurfaceCopyValue(IOSurface, v17);
      if (IOSurfaceGetPixelFormat(IOSurface) == 1380411457)
      {
        break;
      }

      v146 = 0;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      *buf = 0u;
      v139 = 0u;
      re::_IOSurfaceGetBulkAttachments(IOSurface, buf);
      if (v83)
      {
        v84 = *re::videoLogObjects(v83);
        v19 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          *v129 = 0;
          _os_log_error_impl(&dword_1E1C61000, v84, OS_LOG_TYPE_ERROR, "Unable to read input surface properties.", v129, 2u);
        }

LABEL_93:
        v85 = *re::videoLogObjects(v19);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v85, OS_LOG_TYPE_ERROR, "Unable to determine HDR content type of input surface.", buf, 2u);
        }

        v75 = 0;
LABEL_96:

        v86 = *a1;
        v88 = v118;
        v87 = v119;
        v117 = 0;
        v89 = [v86 generateMSRColorConfigWithOperation:3 inputSurface:v119 outputSurface:v118 metadata:v75 histogram:0 config:&v117];
        v90 = v117;
        v91 = v90;
        if (v89 == -17000)
        {
          if (v90)
          {
            if (*a6)
            {
              re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a6);
            }

            *a6 = v91;
            CFRetain(v91);
            v92 = [v75 allKeys];
            *(a6 + 8) = [v92 containsObject:getkHDRProcessingDolbyVisionRPUDataKey()];

            v78 = 0;
LABEL_108:

            v82 = v87 == 0;
            if (!v88)
            {
LABEL_88:
              if (v82)
              {
                return v78;
              }

              goto LABEL_89;
            }

            goto LABEL_87;
          }

          v97 = *re::videoLogObjects(0);
          if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
LABEL_107:
            v78 = 1;
            goto LABEL_108;
          }

          *buf = 0;
          v94 = "[VideoHDRConfigGenerator::createConfig]: invalid hardware params.";
          v95 = v97;
          v96 = 2;
        }

        else
        {
          v93 = *re::videoLogObjects(v90);
          if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_107;
          }

          *buf = 134217984;
          *&buf[4] = v89;
          v94 = "[VideoHDRConfigGenerator::createConfig]: Failed to generate MSR color config with error %ld.";
          v95 = v93;
          v96 = 12;
        }

        _os_log_error_impl(&dword_1E1C61000, v95, OS_LOG_TYPE_ERROR, v94, buf, v96);
        goto LABEL_107;
      }

      if (v18 && (BYTE12(v141) & 0xFD) == 0x10)
      {
        v19 = getkHDRProcessingSourceContentTypeDolbyVision();
      }

      else
      {
        if (BYTE12(v141) != 18)
        {
          if (BYTE12(v141) == 16 && BYTE11(v141) <= 0xCu && ((1 << SBYTE11(v141)) & 0x1202) != 0)
          {
            break;
          }

          v19 = IOSurfaceCopyValue(IOSurface, @"isHLG");
          if (!v19)
          {
            goto LABEL_93;
          }

          v98 = v19;
          Value = CFBooleanGetValue(v19);
          CFRelease(v98);
          if (!Value)
          {
            goto LABEL_93;
          }
        }

        v19 = getkHDRProcessingSourceContentTypeHLG();
      }

LABEL_10:
      v20 = v19;
      if (!v19)
      {
        goto LABEL_93;
      }

      if (re::VideoDefaults::logEnabled(v19))
      {
        v102 = [MEMORY[0x1E696AD60] stringWithString:@"HDR Processing Parameters"];
        [v102 appendFormat:@"\n                 Source Content Type: %s", CFStringGetCStringPtr(v20, 0x8000100u)];
        [v102 appendFormat:@"\n                       Max EDR Value: %f", a5[1]];
        [v102 appendFormat:@"\n                      Max EDR Factor: %f", a5[2]];
        [v102 appendFormat:@"\n                    Current Max Nits: %f", a5[3]];
        [v102 appendFormat:@"\n                Current Minimum Nits: %f", a5[4]];
        [v102 appendFormat:@"\n               Ambient Light in Nits: %f", a5[6]];
        [v102 appendFormat:@"\n          SDR Max Brightness in Nits: %f", a5[7]];
        [v102 appendFormat:@"\n     Display Diagonal Size in Inches: %d", *a4];
        [v102 appendFormat:@"\n      Display Max Brightness in Nits: %d", a4[1]];
        [v102 appendFormat:@"\n  Display Average Brightness in Nits: %d", a4[2]];
        [v102 appendFormat:@"\n  Display Minimum Brightness in Nits: %f", *(a4 + 3)];
        v103 = *re::videoLogObjects([v102 appendFormat:@"\n              Display Contrast Ratio: %f", *(a4 + 4)]);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          v104 = v102;
          v105 = v103;
          v106 = [v102 cStringUsingEncoding:1];
          *buf = 136315138;
          *&buf[4] = v106;
          _os_log_impl(&dword_1E1C61000, v105, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        }
      }

      *v129 = 0;
      v130 = v129;
      v131 = 0x2020000000;
      a2 = &qword_1EE1C4000;
      v21 = _MergedGlobals_577;
      v132 = _MergedGlobals_577;
      if (!_MergedGlobals_577)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&v139 = ___ZL61getkHDRProcessingDisplayPipelineCompensationTypeNoneSymbolLocv_block_invoke_0;
        *(&v139 + 1) = &unk_1E8722530;
        *&v140 = v129;
        v22 = HDRProcessingLibrary();
        v23 = dlsym(v22, "kHDRProcessingDisplayPipelineCompensationTypeNone");
        *(*(v140 + 8) + 24) = v23;
        _MergedGlobals_577 = *(*(v140 + 8) + 24);
        v21 = *(v130 + 3);
      }

      _Block_object_dispose(v129, 8);
      if (v21)
      {
        a2 = *v21;
        *v129 = 0;
        v130 = v129;
        v131 = 0x2020000000;
        v24 = qword_1EE1C47D0;
        v132 = qword_1EE1C47D0;
        if (!qword_1EE1C47D0)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&v139 = ___ZL57getkHDRProcessingDisplayPipelineCompensationTypeSymbolLocv_block_invoke_0;
          *(&v139 + 1) = &unk_1E8722530;
          *&v140 = v129;
          v25 = HDRProcessingLibrary();
          v26 = dlsym(v25, "kHDRProcessingDisplayPipelineCompensationType");
          *(*(v140 + 8) + 24) = v26;
          qword_1EE1C47D0 = *(*(v140 + 8) + 24);
          v24 = *(v130 + 3);
        }

        _Block_object_dispose(v129, 8);
        if (v24)
        {
          [a3 setValue:a2 forKey:*v24];
          v27 = getkHDRProcessingSourceContentTypeDolbyVision();
          if (v18 && v20 == v27)
          {
            [a3 setValue:v18 forKey:getkHDRProcessingDolbyVisionRPUDataKey()];
          }

          *&v28 = a5[7];
          v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
          *v129 = 0;
          v130 = v129;
          v131 = 0x2020000000;
          v30 = qword_1EE1C47D8;
          v132 = qword_1EE1C47D8;
          if (!qword_1EE1C47D8)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&v139 = ___ZL64getkHDRProcessingSourceContentSDRMaxBrightnessInNitsKeySymbolLocv_block_invoke_0;
            *(&v139 + 1) = &unk_1E8722530;
            *&v140 = v129;
            v31 = HDRProcessingLibrary();
            v32 = dlsym(v31, "kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey");
            *(*(v140 + 8) + 24) = v32;
            qword_1EE1C47D8 = *(*(v140 + 8) + 24);
            v30 = *(v130 + 3);
          }

          a2 = v129;
          _Block_object_dispose(v129, 8);
          if (v30)
          {
            [a3 setValue:v29 forKey:*v30];
            *&v33 = a5[1];
            v116 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
            *v129 = 0;
            v130 = v129;
            v131 = 0x2020000000;
            v34 = qword_1EE1C47E0;
            v132 = qword_1EE1C47E0;
            if (!qword_1EE1C47E0)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&v139 = ___ZL75getkHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKeySymbolLocv_block_invoke_0;
              *(&v139 + 1) = &unk_1E8722530;
              *&v140 = v129;
              v35 = HDRProcessingLibrary();
              v36 = dlsym(v35, "kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey");
              *(*(v140 + 8) + 24) = v36;
              qword_1EE1C47E0 = *(*(v140 + 8) + 24);
              v34 = *(v130 + 3);
            }

            a2 = v129;
            _Block_object_dispose(v129, 8);
            if (v34)
            {
              [a3 setValue:v116 forKey:*v34];
              *&v37 = a5[2];
              v115 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
              *v129 = 0;
              v130 = v129;
              v131 = 0x2020000000;
              v38 = qword_1EE1C47E8;
              v132 = qword_1EE1C47E8;
              if (!qword_1EE1C47E8)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&v139 = ___ZL38getkHDRProcessingEDRFactorKeySymbolLocv_block_invoke_0;
                *(&v139 + 1) = &unk_1E8722530;
                *&v140 = v129;
                v39 = HDRProcessingLibrary();
                v40 = dlsym(v39, "kHDRProcessingEDRFactorKey");
                *(*(v140 + 8) + 24) = v40;
                qword_1EE1C47E8 = *(*(v140 + 8) + 24);
                v38 = *(v130 + 3);
              }

              a2 = v129;
              _Block_object_dispose(v129, 8);
              if (v38)
              {
                [a3 setValue:v115 forKey:*v38];
                *&v41 = a5[3] * a5[1];
                v114 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
                *v129 = 0;
                v130 = v129;
                v131 = 0x2020000000;
                v42 = qword_1EE1C47F0;
                v132 = qword_1EE1C47F0;
                if (!qword_1EE1C47F0)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&v139 = ___ZL48getkHDRProcessingCurrentMaxPanelNitsKeySymbolLocv_block_invoke_0;
                  *(&v139 + 1) = &unk_1E8722530;
                  *&v140 = v129;
                  v43 = HDRProcessingLibrary();
                  v44 = dlsym(v43, "kHDRProcessingCurrentMaxPanelNitsKey");
                  *(*(v140 + 8) + 24) = v44;
                  qword_1EE1C47F0 = *(*(v140 + 8) + 24);
                  v42 = *(v130 + 3);
                }

                a2 = v129;
                _Block_object_dispose(v129, 8);
                if (v42)
                {
                  [a3 setValue:v114 forKey:*v42];
                  *&v45 = a5[4];
                  v113 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
                  *v129 = 0;
                  v130 = v129;
                  v131 = 0x2020000000;
                  v46 = qword_1EE1C47F8;
                  v132 = qword_1EE1C47F8;
                  if (!qword_1EE1C47F8)
                  {
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&v139 = ___ZL48getkHDRProcessingCurrentMinPanelNitsKeySymbolLocv_block_invoke_0;
                    *(&v139 + 1) = &unk_1E8722530;
                    *&v140 = v129;
                    v47 = HDRProcessingLibrary();
                    v48 = dlsym(v47, "kHDRProcessingCurrentMinPanelNitsKey");
                    *(*(v140 + 8) + 24) = v48;
                    qword_1EE1C47F8 = *(*(v140 + 8) + 24);
                    v46 = *(v130 + 3);
                  }

                  a2 = v129;
                  _Block_object_dispose(v129, 8);
                  if (v46)
                  {
                    [a3 setValue:v113 forKey:*v46];
                    *&v49 = a5[6];
                    v50 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
                    *v129 = 0;
                    v130 = v129;
                    v131 = 0x2020000000;
                    a5 = qword_1EE1C4800;
                    v132 = qword_1EE1C4800;
                    if (!qword_1EE1C4800)
                    {
                      *buf = MEMORY[0x1E69E9820];
                      *&buf[8] = 3221225472;
                      *&v139 = ___ZL47getkHDRProcessingAmbientLightInNitsKeySymbolLocv_block_invoke_0;
                      *(&v139 + 1) = &unk_1E8722530;
                      *&v140 = v129;
                      v51 = HDRProcessingLibrary();
                      v52 = dlsym(v51, "kHDRProcessingAmbientLightInNitsKey");
                      *(*(v140 + 8) + 24) = v52;
                      qword_1EE1C4800 = *(*(v140 + 8) + 24);
                      a5 = *(v130 + 3);
                    }

                    a2 = v129;
                    _Block_object_dispose(v129, 8);
                    if (a5)
                    {
                      [a3 setValue:v50 forKey:*a5];
                      v112 = [MEMORY[0x1E696AD98] numberWithInt:*(a4 + 20)];
                      *v129 = 0;
                      v130 = v129;
                      v131 = 0x2020000000;
                      a5 = qword_1EE1C4808;
                      v132 = qword_1EE1C4808;
                      if (!qword_1EE1C4808)
                      {
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 3221225472;
                        *&v139 = ___ZL53getkHDRProcessingDisplayAdjustsBlackLevelKeySymbolLocv_block_invoke_0;
                        *(&v139 + 1) = &unk_1E8722530;
                        *&v140 = v129;
                        v53 = HDRProcessingLibrary();
                        v54 = dlsym(v53, "kHDRProcessingDisplayAdjustsBlackLevelKey");
                        *(*(v140 + 8) + 24) = v54;
                        qword_1EE1C4808 = *(*(v140 + 8) + 24);
                        a5 = *(v130 + 3);
                      }

                      a2 = v129;
                      _Block_object_dispose(v129, 8);
                      if (a5)
                      {
                        [a3 setValue:v112 forKey:*a5];
                        v111 = [MEMORY[0x1E696AD98] numberWithInt:0];
                        *v129 = 0;
                        v130 = v129;
                        v131 = 0x2020000000;
                        a5 = qword_1EE1C4810;
                        v132 = qword_1EE1C4810;
                        if (!qword_1EE1C4810)
                        {
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 3221225472;
                          *&v139 = ___ZL40getkHDRProcessingOrientationKeySymbolLocv_block_invoke_0;
                          *(&v139 + 1) = &unk_1E8722530;
                          *&v140 = v129;
                          v55 = HDRProcessingLibrary();
                          v56 = dlsym(v55, "kHDRProcessingOrientationKey");
                          *(*(v140 + 8) + 24) = v56;
                          qword_1EE1C4810 = *(*(v140 + 8) + 24);
                          a5 = *(v130 + 3);
                        }

                        a2 = v129;
                        _Block_object_dispose(v129, 8);
                        if (a5)
                        {
                          [a3 setValue:v111 forKey:*a5];
                          *v129 = 0;
                          v130 = v129;
                          v131 = 0x2020000000;
                          a2 = &qword_1EE1C4000;
                          a5 = qword_1EE1C4818;
                          v132 = qword_1EE1C4818;
                          if (!qword_1EE1C4818)
                          {
                            *buf = MEMORY[0x1E69E9820];
                            *&buf[8] = 3221225472;
                            *&v139 = ___ZL46getkHDRProcessingSourceContentTypeKeySymbolLocv_block_invoke_0;
                            *(&v139 + 1) = &unk_1E8722530;
                            *&v140 = v129;
                            v57 = HDRProcessingLibrary();
                            v58 = dlsym(v57, "kHDRProcessingSourceContentTypeKey");
                            *(*(v140 + 8) + 24) = v58;
                            qword_1EE1C4818 = *(*(v140 + 8) + 24);
                            a5 = *(v130 + 3);
                          }

                          _Block_object_dispose(v129, 8);
                          if (a5)
                          {
                            v136 = *a5;
                            v137 = v20;
                            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
                            *v129 = getkHDRProcessingDestinationDisplayTypeKey();
                            *buf = getkHDRProcessingDestinationDisplayTypeInternalPanel();
                            v125 = 0;
                            v126 = &v125;
                            v127 = 0x2020000000;
                            a5 = qword_1EE1C4820;
                            v128 = qword_1EE1C4820;
                            if (!qword_1EE1C4820)
                            {
                              v120 = MEMORY[0x1E69E9820];
                              v121 = 3221225472;
                              v122 = ___ZL56getkHDRProcessingDisplayDiagonalSizeInInchesKeySymbolLocv_block_invoke_0;
                              v123 = &unk_1E8722530;
                              v124 = &v125;
                              v60 = HDRProcessingLibrary();
                              v126[3] = dlsym(v60, "kHDRProcessingDisplayDiagonalSizeInInchesKey");
                              qword_1EE1C4820 = *(v124[1] + 24);
                              a5 = v126[3];
                            }

                            v110 = v18;
                            a2 = &v125;
                            _Block_object_dispose(&v125, 8);
                            if (a5)
                            {
                              v130 = *a5;
                              v61 = [MEMORY[0x1E696AD98] numberWithInt:*a4];
                              *&buf[8] = v61;
                              v125 = 0;
                              v126 = &v125;
                              v127 = 0x2020000000;
                              a5 = qword_1EE1C4828;
                              v128 = qword_1EE1C4828;
                              if (!qword_1EE1C4828)
                              {
                                v120 = MEMORY[0x1E69E9820];
                                v121 = 3221225472;
                                v122 = ___ZL59getkHDRProcessingDisplayMaximumBrightnessInNitsKeySymbolLocv_block_invoke_0;
                                v123 = &unk_1E8722530;
                                v124 = &v125;
                                v62 = HDRProcessingLibrary();
                                v126[3] = dlsym(v62, "kHDRProcessingDisplayMaximumBrightnessInNitsKey");
                                qword_1EE1C4828 = *(v124[1] + 24);
                                a5 = v126[3];
                              }

                              v109 = v50;
                              a2 = &v125;
                              _Block_object_dispose(&v125, 8);
                              if (a5)
                              {
                                v131 = *a5;
                                v63 = [MEMORY[0x1E696AD98] numberWithInt:a4[1]];
                                *&v139 = v63;
                                v125 = 0;
                                v126 = &v125;
                                v127 = 0x2020000000;
                                a5 = qword_1EE1C4830;
                                v128 = qword_1EE1C4830;
                                if (!qword_1EE1C4830)
                                {
                                  v120 = MEMORY[0x1E69E9820];
                                  v121 = 3221225472;
                                  v122 = ___ZL59getkHDRProcessingDisplayAverageBrightnessInNitsKeySymbolLocv_block_invoke_0;
                                  v123 = &unk_1E8722530;
                                  v124 = &v125;
                                  v64 = HDRProcessingLibrary();
                                  v126[3] = dlsym(v64, "kHDRProcessingDisplayAverageBrightnessInNitsKey");
                                  qword_1EE1C4830 = *(v124[1] + 24);
                                  a5 = v126[3];
                                }

                                v108 = v59;
                                a2 = &v125;
                                _Block_object_dispose(&v125, 8);
                                if (a5)
                                {
                                  v107 = v29;
                                  v132 = *a5;
                                  a5 = [MEMORY[0x1E696AD98] numberWithInt:a4[2]];
                                  *(&v139 + 1) = a5;
                                  v125 = 0;
                                  v126 = &v125;
                                  v127 = 0x2020000000;
                                  a2 = &qword_1EE1C4000;
                                  v65 = qword_1EE1C4838;
                                  v128 = qword_1EE1C4838;
                                  if (!qword_1EE1C4838)
                                  {
                                    v120 = MEMORY[0x1E69E9820];
                                    v121 = 3221225472;
                                    v122 = ___ZL59getkHDRProcessingDisplayMinimumBrightnessInNitsKeySymbolLocv_block_invoke_0;
                                    v123 = &unk_1E8722530;
                                    v124 = &v125;
                                    v66 = HDRProcessingLibrary();
                                    v126[3] = dlsym(v66, "kHDRProcessingDisplayMinimumBrightnessInNitsKey");
                                    qword_1EE1C4838 = *(v124[1] + 24);
                                    v65 = v126[3];
                                  }

                                  _Block_object_dispose(&v125, 8);
                                  if (v65)
                                  {
                                    v133 = *v65;
                                    LODWORD(v67) = a4[3];
                                    a2 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
                                    *&v140 = a2;
                                    v125 = 0;
                                    v126 = &v125;
                                    v127 = 0x2020000000;
                                    v68 = qword_1EE1C4840;
                                    v128 = qword_1EE1C4840;
                                    if (!qword_1EE1C4840)
                                    {
                                      v120 = MEMORY[0x1E69E9820];
                                      v121 = 3221225472;
                                      v122 = ___ZL49getkHDRProcessingDisplayContrastRatioKeySymbolLocv_block_invoke_0;
                                      v123 = &unk_1E8722530;
                                      v124 = &v125;
                                      v69 = HDRProcessingLibrary();
                                      v126[3] = dlsym(v69, "kHDRProcessingDisplayContrastRatioKey");
                                      qword_1EE1C4840 = *(v124[1] + 24);
                                      v68 = v126[3];
                                    }

                                    _Block_object_dispose(&v125, 8);
                                    if (v68)
                                    {
                                      v134 = *v68;
                                      LODWORD(v70) = a4[4];
                                      v71 = [MEMORY[0x1E696AD98] numberWithFloat:v70];
                                      *(&v140 + 1) = v71;
                                      v135 = getkHDRProcessingDestinationDisplayTypeKey();
                                      *&v141 = getkHDRProcessingDestinationDisplayTypeInternalPanel();
                                      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v129 count:7];

                                      v125 = 0;
                                      v126 = &v125;
                                      v127 = 0x2020000000;
                                      a4 = qword_1EE1C4848;
                                      v128 = qword_1EE1C4848;
                                      if (!qword_1EE1C4848)
                                      {
                                        v120 = MEMORY[0x1E69E9820];
                                        v121 = 3221225472;
                                        v122 = ___ZL36getkHDRProcessingDisplayKeySymbolLocv_block_invoke_0;
                                        v123 = &unk_1E8722530;
                                        v124 = &v125;
                                        v73 = HDRProcessingLibrary();
                                        v126[3] = dlsym(v73, "kHDRProcessingDisplayKey");
                                        qword_1EE1C4848 = *(v124[1] + 24);
                                        a4 = v126[3];
                                      }

                                      a2 = &v125;
                                      _Block_object_dispose(&v125, 8);
                                      a5 = v109;
                                      v18 = v110;
                                      if (a4)
                                      {
                                        [a3 setValue:v72 forKey:*a4];
                                        v125 = 0;
                                        v126 = &v125;
                                        v127 = 0x2020000000;
                                        a2 = &qword_1EE1C4000;
                                        a4 = qword_1EE1C4850;
                                        v128 = qword_1EE1C4850;
                                        if (!qword_1EE1C4850)
                                        {
                                          v120 = MEMORY[0x1E69E9820];
                                          v121 = 3221225472;
                                          v122 = ___ZL42getkHDRProcessingSourceContentKeySymbolLocv_block_invoke_0;
                                          v123 = &unk_1E8722530;
                                          v124 = &v125;
                                          v74 = HDRProcessingLibrary();
                                          v126[3] = dlsym(v74, "kHDRProcessingSourceContentKey");
                                          qword_1EE1C4850 = *(v124[1] + 24);
                                          a4 = v126[3];
                                        }

                                        _Block_object_dispose(&v125, 8);
                                        if (a4)
                                        {
                                          [a3 setValue:v108 forKey:*a4];
                                          v75 = a3;

                                          goto LABEL_96;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v100 = dlerror();
      v12 = abort_report_np("%s", v100);
LABEL_120:
      v101 = *re::videoLogObjects(v12);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v101, OS_LOG_TYPE_DEFAULT, "Using Legacy HDRProcessing SPI", buf, 2u);
      }
    }

    v19 = getkHDRProcessingSourceContentTypeHDR10();
    goto LABEL_10;
  }

  v76 = *re::videoLogObjects(a1);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v77 = "VideoHDRConfigGenerator is not initialized.";
    goto LABEL_76;
  }

  return 1;
}

Class ___ZL20getHDRProcessorClassv_block_invoke_0(uint64_t a1)
{
  HDRProcessingLibrary();
  result = objc_getClass("HDRProcessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHDRProcessorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "HDRProcessor");
    return HDRProcessingLibrary();
  }

  return result;
}

uint64_t ___ZL24HDRProcessingLibraryCorePPc_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  HDRProcessingLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL48getkHDRProcessingSourceContentTypeHDR10SymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeHDR10");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkHDRProcessingSourceContentTypeHLGSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeHLG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkHDRProcessingDisplayPipelineCompensationTypeNoneSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayPipelineCompensationTypeNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_577 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL57getkHDRProcessingDisplayPipelineCompensationTypeSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayPipelineCompensationType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkHDRProcessingSourceContentTypeDolbyVisionSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeDolbyVision");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL64getkHDRProcessingSourceContentSDRMaxBrightnessInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL75getkHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkHDRProcessingEDRFactorKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingEDRFactorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkHDRProcessingCurrentMaxPanelNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingCurrentMaxPanelNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkHDRProcessingCurrentMinPanelNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingCurrentMinPanelNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkHDRProcessingAmbientLightInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingAmbientLightInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4800 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkHDRProcessingDisplayAdjustsBlackLevelKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayAdjustsBlackLevelKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4808 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkHDRProcessingOrientationKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingOrientationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4810 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkHDRProcessingSourceContentTypeKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4818 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkHDRProcessingDestinationDisplayTypeKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDestinationDisplayTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDestinationDisplayTypeInternalPanel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getkHDRProcessingDisplayDiagonalSizeInInchesKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayDiagonalSizeInInchesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4820 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkHDRProcessingDisplayMaximumBrightnessInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayMaximumBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4828 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkHDRProcessingDisplayAverageBrightnessInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayAverageBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4830 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkHDRProcessingDisplayMinimumBrightnessInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayMinimumBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4838 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkHDRProcessingDisplayContrastRatioKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayContrastRatioKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4840 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkHDRProcessingDisplayKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4848 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkHDRProcessingSourceContentKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4850 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkHDRProcessingDolbyVisionRPUDataKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDolbyVisionRPUDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t re::VideoPipelineUpscalingNode::createUpscalingConfig(re *a1, unint64_t a2, CVPixelBufferRef *a3, CVPixelBufferRef *a4, unint64_t a5)
{
  if (a2 >= 2)
  {
    v5 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[VideoPipelineUpscalingNode::createUpscalingConfig] Channel index out of range.", buf, 2u);
    }

    return 1;
  }

  v11 = a1 + 16 * a2;
  v13 = *(v11 + 7);
  v12 = (v11 + 56);
  if (!v13)
  {
    operator new();
  }

  if (*a3)
  {
    Width = CVPixelBufferGetWidth(*a3);
    if (*a3)
    {
      Height = CVPixelBufferGetHeight(*a3);
      goto LABEL_12;
    }
  }

  else
  {
    Width = 0;
  }

  Height = 0;
LABEL_12:
  if (!*a4)
  {
    v16 = 0;
    goto LABEL_16;
  }

  v16 = CVPixelBufferGetWidth(*a4);
  if (!*a4)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v17 = CVPixelBufferGetHeight(*a4);
LABEL_17:
  v18 = *v12;
  v20 = v18;
  if (*(&v18 + 1))
  {
    atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v6 = re::VideoPipelineASEConfigGenerator::createConfig((a1 + 16), Width, Height, v16, v17, &v20, a5);
  if (*(&v20 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v20 + 1));
  }

  return v6;
}

uint64_t re::VideoPipelineMipGenNode::init(uint64_t a1, id *a2)
{
  re::VideoTextureCache::init((a1 + 16));
  v4 = *a2;
  v8 = v4;
  v6 = *(a1 + 72);
  v5 = (a1 + 72);
  if (!v6)
  {
    re::ObjCObject::operator=(v5, &v8);
  }

  return 0;
}

uint64_t re::VideoPipelineMipGenNode::execute(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v8 = a6;
  v94 = *MEMORY[0x1E69E9840];
  isa = a6[265].isa;
  v11 = re::VideoDefaults::mipmapPixelsPerSecondMax(497664000);
  j = vcvtpd_u64_f64(v11 * 0.1);
  v13 = re::VideoDefaults::logEnabled(v11);
  if (v13)
  {
    goto LABEL_96;
  }

LABEL_2:
  if (isa > v11 + j)
  {
    v14 = *re::videoLogObjects(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "[VideoPipelineMipGenNode::execute] Exceeded pixels per second. Skipping.", buf, 2u);
    }

    return 4;
  }

  re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::resize(a7 + 72, *(a3 + 72));
  if (!*(a3 + 72))
  {
    return 0;
  }

  v11 = 0;
  v68 = a7;
  v69 = a3 + 88;
  v66 = a7 + 88;
  v67 = a3;
  isa = buf;
  while (1)
  {
    v18 = *(a7 + 72);
    if (v18 <= v11)
    {
      re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v11, v18);
      v13 = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v63, v64);
      __break(1u);
LABEL_96:
      v61 = v8[257].isa;
      v62 = v8[256].isa;
      v8 = *re::videoLogObjects(v13);
      v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        *buf = 134218752;
        *&buf[4] = isa;
        *&buf[12] = 2048;
        *&buf[14] = v11;
        *&buf[22] = 2048;
        *v87 = j;
        *&v87[8] = 2048;
        *&v87[10] = v61 - v62;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "[VideoPipelineMipGenNode::execute] pixelsPerSecond: %lld / %lld (+ %lld) (%zu samples)", buf, 0x2Au);
      }

      goto LABEL_2;
    }

    v19 = v69 + 160 * v11;
    v20 = *(v19 + 128);
    if (v20 != 1)
    {
      if (!v20)
      {
        v57 = *re::videoLogObjects(v16);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v58 = "[VideoPipelineMipGenNode::execute] Image not valid. Skipping.";
          goto LABEL_94;
        }

        return 1;
      }

      v21 = re::VideoImage::planeCount(v69 + 160 * v11);
      if (v21 != 1)
      {
        v59 = *re::videoLogObjects(v21);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          goto LABEL_91;
        }

        return 4;
      }
    }

    v22 = re::VideoImage::planeCount(v19);
    if (v22 >= 3)
    {
      v59 = *re::videoLogObjects(v22);
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        return 4;
      }

      *buf = 0;
LABEL_91:
      _os_log_error_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_ERROR, "[VideoPipelineMipGenNode::execute] Content does not have only one working plane.", buf, 2u);
      return 4;
    }

    v23 = *(v19 + 128);
    if (v23 != 3)
    {
      break;
    }

    re::VideoImage::asMetalTextures(buf, v19);
    v27 = *(&v91 + 1);
    for (i = 120; i != 96; i -= 8)
    {
    }

LABEL_29:
    if (v91)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v91);
    }

LABEL_55:
    if (!v27)
    {
LABEL_80:
      v57 = *re::videoLogObjects(v22);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v58 = "[VideoPipelineMipGenNode::execute] Resolved input texture is not valid.";
LABEL_94:
        _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, v58, buf, 2u);
        return 1;
      }

      return 1;
    }

    isConvertibleToLinearRGBColorModel = re::CoreVideoUtils::isConvertibleToLinearRGBColorModel([v27 pixelFormat]);
    if (!isConvertibleToLinearRGBColorModel)
    {
      v60 = *re::videoLogObjects(isConvertibleToLinearRGBColorModel);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "[VideoPipelineMipGenNode::execute] Resolved input texture can not be converted to use a linear RGB color model. Skipping.", buf, 2u);
      }

      return 4;
    }

    v37 = [v27 pixelFormat];
    v38 = [v27 width];
    v39 = [v27 height];
    v40 = re::CoreVideoUtils::convertToLinearRGBColorModel(v37);
    a1[84] = *(a2 + 14);
    v41 = [v27 protectionOptions];
    v43 = re::VideoTextureAllocator::createTexture((a1 + 24), v38, v39, v40, MTLStorageModePrivate, 3, 1, 1, v42, v41);
    v44 = re::VideoImage::colorTags(v19);
    v45 = v44;
    v46 = v44 >> 8;
    v47 = HIWORD(v44);
    if (re::CoreVideoUtils::metalPixelFormatHasHardwareTransferFunction(v37))
    {
      v48 = 8;
    }

    else
    {
      v48 = v46;
    }

    re::VideoImage::rectangularMask(v82, v19, v11);
    v74 = *MEMORY[0x1E695F060];
    v49 = *(MEMORY[0x1E695F058] + 16);
    v75 = *MEMORY[0x1E695F058];
    v76 = v49;
    v77 = 0.0;
    LOBYTE(v78) = 0;
    v80 = 0;
    memset(v81, 0, sizeof(v81));
    LOBYTE(v73) = v45;
    BYTE1(v73) = v48;
    BYTE2(v73) = v47;
    *&v74 = re::VideoImage::displayDimensions(v19);
    *(&v74 + 1) = v50;
    *&v75 = re::VideoImage::cleanRect(v19);
    *(&v75 + 1) = v51;
    *&v76 = v52;
    *(&v76 + 1) = v53;
    v77 = re::VideoImage::horizontalDisparityAdjustment(v19);
    objc_storeStrong(&v81[1], v43);
    if (v84 == 1)
    {
      v78 = *v82;
      v79 = v83;
      if ((v80 & 1) == 0)
      {
        v80 = 1;
      }
    }

    v54 = *(v19 + 128);
    a3 = v67;
    a7 = v68;
    if (v54 == 3 || v54 == 2)
    {
      *buf = 0;
      v55 = *(v19 + 96);
    }

    else
    {
      if (v54 != 1)
      {
        *buf = 0;
        goto LABEL_70;
      }

      *buf = 0;
      v55 = *v19;
    }

    re::VideoObject<re::VideoPixelBufferBase>::setRef(buf, buf, v55);
LABEL_70:
    re::VideoObject<re::VideoPixelBufferBase>::setRef(v81, v81, *buf);
    if (*buf)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(buf);
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<3ul,re::VideoMetalTextures,re::VideoMetalTextures const&>(v66 + 160 * v11, v66 + 160 * v11, &v73);
    v56 = v27;
    v8 = v43;
    *buf = v56;
    *&buf[8] = v8;
    v93 = 2;
    re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, buf);
    if (v93 != -1)
    {
      (*(&off_1F5D1B248 + v93))(&v85, buf);
    }

    for (j = 120; j != 96; j -= 8)
    {
    }

    if (v81[0])
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v81);
    }

    if (++v11 >= *(v67 + 72))
    {
      return 0;
    }
  }

  if (v23 == 2)
  {
    re::VideoImage::asPixelBufferTextures(buf, v19);
    v73 = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(&v73, &v73, *(&v91 + 1));
    v22 = re::VideoPixelBufferTextureBase::asMetalTexture(&v73);
    v27 = v22;
    if (v73)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v73);
    }

    for (k = 120; k != 96; k -= 8)
    {
      if (*&buf[k])
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&buf[k]);
      }

      *&buf[k] = 0;
    }

    goto LABEL_29;
  }

  if (v23 != 1)
  {
    goto LABEL_80;
  }

  v73 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(&v73, &v73, *v19);
  buf[2] = 2;
  *buf = 514;
  *&buf[8] = *MEMORY[0x1E695F060];
  v24 = *(MEMORY[0x1E695F058] + 16);
  *v87 = *MEMORY[0x1E695F058];
  *&v87[16] = v24;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0u;
  v92 = 0u;
  TexturesFromPixelBuffer = re::VideoTextureCache::createTexturesFromPixelBuffer((a1 + 16), v73, buf, 0, 0);
  if (TexturesFromPixelBuffer)
  {
    v26 = *re::videoLogObjects(TexturesFromPixelBuffer);
    v22 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      *v82 = 0;
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "[VideoPipelineMipGenNode::execute] Unable to create input texture from pixel buffer.", v82, 2u);
    }

    v27 = 0;
    v28 = 0;
    v29 = 1;
    goto LABEL_45;
  }

  v32 = 1;
  if (*(&v91 + 1))
  {
    v32 = 2;
  }

  if (v92)
  {
    v33 = v32;
  }

  else
  {
    v33 = *(&v91 + 1) != 0;
  }

  if (*(&v92 + 1))
  {
    ++v33;
  }

  if (v33 == 1)
  {
    *v82 = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(v82, v82, *(&v91 + 1));
    v22 = re::VideoPixelBufferTextureBase::asMetalTexture(v82);
    v27 = v22;
    if (*v82)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v82);
    }

    v28 = 1;
  }

  else
  {
    v34 = *re::videoLogObjects(TexturesFromPixelBuffer);
    v22 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      *v82 = 0;
      _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "[VideoPipelineMipGenNode::execute] Content does not have only one working plane.", v82, 2u);
    }

    v27 = 0;
    v28 = 0;
    v29 = 4;
LABEL_45:
    v65 = v29;
  }

  for (m = 120; m != 96; m -= 8)
  {
    if (*&buf[m])
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&buf[m]);
    }

    *&buf[m] = 0;
  }

  if (v91)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v91);
  }

  if (v73)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v73);
  }

  if (v28)
  {
    goto LABEL_55;
  }

  return v65;
}

void re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::resize(uint64_t a1, unint64_t a2)
{
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v4 = (a1 + 160 * a2 + 144);
    v5 = a2;
    do
    {
      v6 = *(v4 + 3);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      if (*(v4 + 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v4 + 1);
      }

      *(v4 + 1) = 0;
      v7 = *v4;
      if (v7 != -1)
      {
        (off_1F5D1B228[v7])(&v8, v4 - 32);
      }

      *v4 = -1;
      v4 += 40;
      ++v5;
    }

    while (v5 < *a1);
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

    bzero((a1 + 160 * *a1 + 16), 160 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

size_t re::VideoImage::planeCount(size_t this)
{
  if (this)
  {
    v1 = *(this + 128);
    if (v1 == 3 || v1 == 2)
    {
      v2 = *(this + 104);
      v3 = v2 == 0;
      v4 = v2 != 0;
      v5 = 1;
      if (!v3)
      {
        v5 = 2;
      }

      if (*(this + 112))
      {
        v4 = v5;
      }

      if (*(this + 120))
      {
        return v4 + 1;
      }

      else
      {
        return v4;
      }
    }

    else if (v1 == 1)
    {
      this = *this;
      if (this)
      {
        return CVPixelBufferGetPlaneCount(this);
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

double re::VideoImage::asPixelBufferTextures@<D0>(uint64_t *__return_ptr a1@<X8>, re::VideoImage *this@<X0>)
{
  if (this && *(this + 32) == 2)
  {
    v4 = *(this + 3);
    *(a1 + 2) = *(this + 2);
    *(a1 + 3) = v4;
    *(a1 + 4) = *(this + 4);
    *(a1 + 73) = *(this + 73);
    v5 = *(this + 1);
    *a1 = *this;
    *(a1 + 1) = v5;
    a1[12] = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 96, a1 + 12, *(this + 12));
    v6 = 0;
    v7 = (a1 + 13);
    v8 = this + 104;
    v9 = v7;
    do
    {
      *v9++ = 0;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(v7, v7, *&v8[8 * v6++]);
      v7 = v9;
    }

    while (v6 != 3);
  }

  else
  {
    result = 0.0;
    v11 = MEMORY[0x1E695F060];
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 1) = *v11;
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 16);
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 3) = v12;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *a1 = 514;
    *(a1 + 2) = 2;
    *(a1 + 5) = v13;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
  }

  return result;
}

double re::VideoImage::asMetalTextures@<D0>(uint64_t *__return_ptr a1@<X8>, re::VideoImage *this@<X0>)
{
  if (this && *(this + 32) == 3)
  {
    v4 = *(this + 3);
    *(a1 + 2) = *(this + 2);
    *(a1 + 3) = v4;
    *(a1 + 4) = *(this + 4);
    *(a1 + 73) = *(this + 73);
    v5 = *(this + 1);
    *a1 = *this;
    *(a1 + 1) = v5;
    a1[12] = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 96, a1 + 12, *(this + 12));
    v6 = 0;
    v7 = a1 + 13;
    v8 = this + 104;
    do
    {
      v7[v6] = *&v8[v6 * 8];
      ++v6;
    }

    while (v6 != 3);
  }

  else
  {
    result = 0.0;
    v10 = MEMORY[0x1E695F060];
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 1) = *v10;
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 16);
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 3) = v11;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *a1 = 514;
    *(a1 + 2) = 2;
    *(a1 + 5) = v12;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
  }

  return result;
}

uint64_t re::VideoImage::colorTags(re::VideoImage *this)
{
  result = 131586;
  if (this)
  {
    v3 = *(this + 32);
    if (v3 == 3 || v3 == 2)
    {
      return *this | (*(this + 2) << 16);
    }

    else if (v3 == 1)
    {
      return re::VideoPixelBufferBase::colorTags(this);
    }
  }

  return result;
}

__n128 re::VideoImage::rectangularMask@<Q0>(uint64_t *__return_ptr a1@<X8>, CVBufferRef *this@<X0>, uint64_t a3@<X1>)
{
  if (!this)
  {
LABEL_6:
    *a1 = 0;
    *(a1 + 24) = 0;
    return result;
  }

  v3 = *(this + 32);
  if (v3 != 3 && v3 != 2)
  {
    if (v3 == 1)
    {
      re::VideoPixelBufferBase::rectangularMask(a1, this, a3);
      return result;
    }

    goto LABEL_6;
  }

  result = *(this + 4);
  v5 = *(this + 5);
  *a1 = result;
  *(a1 + 1) = v5;
  return result;
}

double re::VideoImage::displayDimensions(re::VideoImage *this)
{
  if (!this)
  {
    return *MEMORY[0x1E695F060];
  }

  v2 = *(this + 32);
  if (v2 == 3 || v2 == 2)
  {
    return *(this + 1);
  }

  if (v2 != 1)
  {
    return *MEMORY[0x1E695F060];
  }

  v3 = *this;
  if (!*this)
  {
    return 0.0;
  }

  *&v4 = *&CVImageBufferGetDisplaySize(v3);
  if (*this)
  {
    CVImageBufferGetDisplaySize(*this);
  }

  return v4;
}

double re::VideoImage::cleanRect(re::VideoImage *this)
{
  if (!this)
  {
    return *MEMORY[0x1E695F058];
  }

  v1 = *(this + 32);
  if (v1 != 3 && v1 != 2)
  {
    if (v1 == 1)
    {
      return re::VideoPixelBufferBase::cleanRect(this);
    }

    return *MEMORY[0x1E695F058];
  }

  return *(this + 3);
}

float re::VideoImage::horizontalDisparityAdjustment(__CVBuffer **this)
{
  result = 0.0;
  if (this)
  {
    v2 = *(this + 32);
    if (v2 == 3 || v2 == 2)
    {
      return *(this + 14);
    }

    else if (v2 == 1)
    {
      return re::VideoPixelBufferBase::horizontalDisparityAdjustment(this);
    }
  }

  return result;
}

uint64_t re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<unsigned long long,16ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 176 * *a1;
    *(v5 + 16) = 0;
    v5 += 16;
    *(v5 + 160) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(v5, a2);
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::VideoPipelineMipGenNode::deinit(re::VideoPipelineMipGenNode *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  re::ObjCObject::operator=(this + 9, 0);
  re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::clear(this + 24);
  return 0;
}

uint64_t re::VideoPipelineMipGenNode::setOwner(uint64_t this, int a2)
{
  if (*(this + 80) != a2)
  {
    *(this + 80) = a2;
  }

  return this;
}

void re::VideoPipelineMipGenNode::~VideoPipelineMipGenNode(void **this)
{
  re::VideoTextureAllocator::~VideoTextureAllocator(this + 3);
  v2 = this[2];
  if (v2)
  {
    CFRelease(v2);
    this[2] = 0;
  }
}

{
  re::VideoTextureAllocator::~VideoTextureAllocator(this + 3);
  v2 = this[2];
  if (v2)
  {
    CFRelease(v2);
    this[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<3ul,re::VideoMetalTextures,re::VideoMetalTextures const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 128) == 3)
  {
    v5 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v5;
    v6 = *(a3 + 32);
    v7 = *(a3 + 48);
    v8 = *(a3 + 64);
    *(a2 + 73) = *(a3 + 73);
    *(a2 + 48) = v7;
    *(a2 + 64) = v8;
    *(a2 + 32) = v6;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a2 + 96, (a2 + 96), *(a3 + 96));
    v9 = 0;
    v10 = (a2 + 104);
    v11 = a3 + 104;
    do
    {
      objc_storeStrong(v10++, *(v11 + 8 * v9++));
    }

    while (v9 != 3);
  }

  else
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__emplace[abi:nn200100]<3ul,re::VideoMetalTextures const&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__emplace[abi:nn200100]<3ul,re::VideoMetalTextures const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  if (v4 != -1)
  {
    (off_1F5D1B228[v4])(&v6, a1);
  }

  *(a1 + 128) = -1;
  std::__construct_at[abi:nn200100]<std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,std::in_place_index_t<3ul> const&,re::VideoMetalTextures const&,std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>*>(a1, &std::in_place_index<3ul>, a2);
  *(a1 + 128) = 3;
  return a1;
}

uint64_t std::__construct_at[abi:nn200100]<std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,std::in_place_index_t<3ul> const&,re::VideoMetalTextures const&,std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *a1 = *a3;
  *(a1 + 16) = v5;
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  *(a1 + 73) = *(a3 + 73);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  *(a1 + 96) = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 96, (a1 + 96), *(a3 + 96));
  for (i = 104; i != 128; i += 8)
  {
    *(a1 + i) = *(a3 + i);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJS8_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, __CVBuffer **a2)
{
  if (*a2)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(a2);
  }

  *a2 = 0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJS8_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 120);
  v4 = -24;
  do
  {
    if (*v3)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v3);
    }

    *v3-- = 0;
    v4 += 8;
  }

  while (v4);
  v6 = *(a2 + 96);
  v5 = (a2 + 96);
  if (v6)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v5);
  }

  *v5 = 0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJS8_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a2 + 120;
  do
  {

    v3 -= 8;
  }

  while (v3 != -24);
  v6 = *(a2 + 96);
  v5 = (a2 + 96);
  if (v6)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v5);
  }

  *v5 = 0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, void **a2)
{
  v3 = *a2;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a2 + 32));
  }

  v3 = *(a2 + 24);
  *(a2 + 32) = 0;
  if (v3)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a2 + 24));
  }

  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, const void **a2)
{
  if (a2[1])
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a2 + 1);
  }

  a2[1] = 0;
  if (*a2)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a2);
  }

  *a2 = 0;
}

void re::VideoPipelineSurfaceAcceleratorConfig::~VideoPipelineSurfaceAcceleratorConfig(re::VideoPipelineSurfaceAcceleratorConfig *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (*(this + 12))
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 12);
  }

  *(this + 12) = 0;
  v5 = *(this + 11);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(this + 8))
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 8);
  }

  v6 = *(this + 2);
  *(this + 8) = 0;
  if (v6)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 2);
  }

  v7 = *(this + 1);
  *(this + 2) = 0;
  if (v7)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 1);
  }

  *(this + 1) = 0;
  if (*this)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this);
  }

  *this = 0;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 160);
  if (v4 != -1)
  {
    result = (*(&off_1F5D1B248 + v4))(&v7, result);
  }

  *(v3 + 160) = -1;
  v5 = *(a2 + 160);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5D1B270[v5])(&v6, a2);
    *(v3 + 160) = v5;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *v2 = *a2;
  *a2 = 0;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0u;
  v4 = *(a2 + 24);
  v5 = *(a2 + 56);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 24) = v4;
  *(v2 + 56) = v5;
  *(v2 + 64) = 0;
  *(v2 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v2 + 72) = *(a2 + 72);
  *(v2 + 80) = *(a2 + 80);
  *(a2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(v2 + 112) = *(a2 + 112);
  *(a2 + 104) = 0u;
  *(v2 + 120) = *(a2 + 120);
  *(a2 + 120) = 0u;
  *(v2 + 136) = *(a2 + 136);
  *(a2 + 136) = 0u;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  *a2 = 0uLL;
  *v2 = result;
  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *(a2 + 16);
  *(v2 + 16) = result;
  *(v2 + 24) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v2 + 40) = *(a2 + 40);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *v2 = *a2;
  *a2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  result = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(v2 + 57) = *(a2 + 57);
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 16) = result;
  return result;
}

uint64_t re::VideoPipelinePSENode::execute(re *value, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = *MEMORY[0x1E69E9840];
  v52 = value;
  v7 = *(value + 18);
  if (v7 && *v7)
  {
    v9 = *(a3 + 72);
    if (v9 > 1)
    {
      return 4;
    }

    if (v9)
    {
      v13 = 0;
      v14 = (a3 + 216);
      while (1)
      {
        if (*v14 != 1)
        {
          v11 = *re::videoLogObjects(value);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LOWORD(pixelBuffer.value) = 0;
            v47 = "[VideoPipelinePSENode::execute] Input is not a pixel buffer.";
LABEL_76:
            _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v47, &pixelBuffer, 2u);
          }

          return 1;
        }

        value = re::VideoImage::planeCount((v14 - 16));
        if (value > 2)
        {
          return 4;
        }

        v15 = *v14;
        pixelBuffer.value = 0;
        if (v15 == 1 && (re::VideoObject<re::VideoPixelBufferBase>::setRef(&pixelBuffer, &pixelBuffer, *(v14 - 16)), (value = pixelBuffer.value) != 0))
        {
          IOSurface = CVPixelBufferGetIOSurface(pixelBuffer.value);
          value = CFRetain(IOSurface);
        }

        else
        {
          IOSurface = 0;
        }

        buffer = IOSurface;
        v17 = **(v52 + 18);
        if (!v17)
        {
          goto LABEL_20;
        }

        if (!IOSurface)
        {
          v19 = 0;
          goto LABEL_26;
        }

        value = [*v17 canProcessSurface:IOSurface];
        IOSurface = buffer;
        if (value)
        {
          if (buffer)
          {
            PixelFormat = IOSurfaceGetPixelFormat(buffer);
            IOSurface = buffer;
          }

          else
          {
            PixelFormat = 0;
          }

          value = re::CoreVideoUtils::canConvertToGammaSpaceRGBColorModel(PixelFormat);
          v19 = value;
          if (IOSurface)
          {
LABEL_25:
            re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&buffer);
          }
        }

        else
        {
LABEL_20:
          v19 = 0;
          if (IOSurface)
          {
            goto LABEL_25;
          }
        }

LABEL_26:
        if (pixelBuffer.value)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&pixelBuffer);
        }

        if ((v19 & 1) == 0)
        {
          return 4;
        }

        ++v13;
        v20 = *(a3 + 72);
        v14 += 20;
        if (v13 >= v20)
        {
          goto LABEL_32;
        }
      }
    }

    v20 = 0;
LABEL_32:
    re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::resize(a7 + 72, v20);
    if (*(a3 + 72))
    {
      v21 = 0;
      v22 = (a7 + 88);
      v23 = (a3 + 216);
      do
      {
        buffer = 0;
        v58 = 0;
        cf = 0;
        v61 = 0;
        v24 = *v23;
        v56 = 0;
        if (v24 == 1)
        {
          re::VideoObject<re::VideoPixelBufferBase>::setRef(&v56, &v56, *(v23 - 16));
        }

        v25 = re::VideoPixelBufferBase::colorTags(&v56);
        if (v56)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(v56);
          Height = v56;
          v28 = re::CoreVideoUtils::convertToGammaSpaceRGBColorModel(PixelFormatType);
          v55 = 0;
          if (Height)
          {
            Width = CVPixelBufferGetWidth(Height);
            ProtectionOptions = v56;
            if (v56)
            {
              Height = CVPixelBufferGetHeight(v56);
              ProtectionOptions = v56;
              if (v56)
              {
                CVPixelBufferGetIOSurface(v56);
                ProtectionOptions = IOSurfaceGetProtectionOptions();
              }
            }

            else
            {
              Height = 0;
            }
          }

          else
          {
            Width = 0;
            ProtectionOptions = 0;
          }
        }

        else
        {
          v28 = re::CoreVideoUtils::convertToGammaSpaceRGBColorModel(0);
          Width = 0;
          Height = 0;
          ProtectionOptions = 0;
          v55 = 0;
        }

        re::VideoSimplePixelBufferAllocator::createPixelBuffer(&pixelBuffer, (v52 + 16), Width, Height, v28, v25, HIBYTE(v25), 0, 1, 0x400u, 0x10u, 0, ProtectionOptions);
        v55 = pixelBuffer.value;
        re::VideoImage::displayDimensions((v23 - 16));
        v31 = re::VideoImage::cleanRect((v23 - 16));
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v38 = re::VideoImage::horizontalDisparityAdjustment(v23 - 16);
        re::VideoImage::rectangularMask(v53, v23 - 16, v21);
        if (v55)
        {
          CVImageBufferSetDisplayDimensions();
        }

        re::VideoPixelBufferBase::setCleanRect(&v55, v31, v33, v35, v37);
        re::VideoPixelBufferBase::setHorizontalDisparityAdjustment(&v55, v38);
        if (v54 == 1)
        {
          re::VideoPixelBufferBase::setRectangularMask(&v55, *&v53[1], *&v53[2], *v53);
        }

        v40 = *(a7 + 72);
        if (v40 <= v21)
        {
          re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v40);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v48, v49);
          __break(1u);
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(v22, v22, &v55);
        *(a7 + 54) = 1;
        v42 = *(v52 + 18);
        v41 = *(v52 + 19);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v43 = v58;
        buffer = v42;
        v58 = v41;
        if (v43)
        {
          std::__shared_weak_count::__release_weak(v43);
        }

        pixelBuffer = *(a3 + 24);
        Seconds = CMTimeGetSeconds(&pixelBuffer);
        if (v56)
        {
          v44 = CVPixelBufferGetIOSurface(v56);
          CFRetain(v44);
        }

        else
        {
          v44 = 0;
        }

        cf = v44;
        if (v55)
        {
          v45 = CVPixelBufferGetIOSurface(v55);
          CFRetain(v45);
        }

        else
        {
          v45 = 0;
        }

        v61 = v45;
        v46 = *(a5 + 48);
        LODWORD(v62) = *(a5 + 56);
        HIDWORD(v62) = v46;
        pixelBuffer.value = buffer;
        *&pixelBuffer.timescale = v58;
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        pixelBuffer.epoch = Seconds;
        v65 = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&v65, &v65, cf);
        v66[0] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v66, v66, v61);
        v66[1] = v62;
        v67 = 3;
        re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, &pixelBuffer);
        if (v67 != -1)
        {
          (*(&off_1F5D1B338 + v67))(&v63, &pixelBuffer);
        }

        if (v55)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v55);
        }

        if (v56)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v56);
        }

        if (v61)
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v61);
        }

        v61 = 0;
        if (cf)
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&cf);
        }

        cf = 0;
        if (v58)
        {
          std::__shared_weak_count::__release_weak(v58);
        }

        ++v21;
        v22 += 20;
        v23 += 20;
      }

      while (v21 < *(a3 + 72));
    }

    return 0;
  }

  else
  {
    v11 = *re::videoLogObjects(value);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBuffer.value) = 0;
      v47 = "[VideoPipelinePSENode::execute] The processor is not initialized.";
      goto LABEL_76;
    }

    return 1;
  }
}

uint64_t re::VideoPipelinePSENode::deinit(re::VideoPipelinePSENode *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    re::VideoMipProcessor::deinit(v1);
  }

  return 0;
}

uint64_t re::VideoPipelinePSENode::setOwner(uint64_t this, const re::VideoPixelBufferPool *a2)
{
  if (*(this + 136) != a2)
  {
    *(this + 136) = a2;
    return re::memoryAttributionVideoPixelBufferPool((this + 56), a2);
  }

  return this;
}

void re::VideoPipelinePSENode::~VideoPipelinePSENode(re::VideoPipelinePSENode *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 56));
}

{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 56));

  JUMPOUT(0x1E6906520);
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(uint64_t a1, __CVBuffer **a2, CVPixelBufferRef *a3)
{
  if (*(a1 + 128) == 1)
  {
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a2, a2, *a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__emplace[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase> const&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__emplace[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase> const&>(uint64_t a1, CVPixelBufferRef *a2)
{
  v4 = *(a1 + 128);
  if (v4 != -1)
  {
    (off_1F5D1B318[v4])(&v6, a1);
  }

  *(a1 + 128) = -1;
  *a1 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(a1, a1, *a2);
  *(a1 + 128) = 1;
  return a1;
}

uint64_t re::VideoPipelineSDRNode::execute(CVPixelBufferRef *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v122 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 72);
  if (!v7)
  {
    v65 = *re::videoLogObjects(a1);
    if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *v106 = 0;
    v66 = "[VideoPipelineSDRNode::execute] No pixel buffers found in input.";
LABEL_98:
    _os_log_error_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_ERROR, v66, v106, 2u);
    return 1;
  }

  v8 = a7;
  v10 = a3;
  v11 = (a3 + 216);
  do
  {
    v12 = *v11;
    v11 += 40;
    if (v12 != 1)
    {
      v65 = *re::videoLogObjects(a1);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *v106 = 0;
      v66 = "[VideoPipelineSDRNode::execute] Input image is not a pixel buffer.";
      goto LABEL_98;
    }

    --v7;
  }

  while (v7);
  v13 = 0;
  v14 = 0;
  allocator = *MEMORY[0x1E695E480];
  key = *MEMORY[0x1E696CE60];
  v90 = *MEMORY[0x1E696D0F0];
  v89 = *MEMORY[0x1E69660D8];
  v88 = *MEMORY[0x1E6966140];
  do
  {
    v113 = 0;
    cf = 0;
    v116[0] = 0;
    v115 = 0;
    memset(&v116[8], 0, 41);
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0;
    v15 = v10 + v13;
    v16 = *(v10 + v13 + 216);
    pixelBuffer = 0;
    if (v16 == 1)
    {
      re::VideoObject<re::VideoPixelBufferBase>::setRef(&pixelBuffer, &pixelBuffer, *(v15 + 88));
    }

    v103 = 0;
    v18 = re::VideoPixelBufferBase::colorTags(&pixelBuffer);
    if (a2[4] != 1)
    {
      goto LABEL_58;
    }

    Height = pixelBuffer;
    if (pixelBuffer)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = pixelBuffer;
      if (pixelBuffer)
      {
        Height = CVPixelBufferGetHeight(pixelBuffer);
      }
    }

    else
    {
      Width = 0;
    }

    if (Height * Width > 0xE1000)
    {
LABEL_58:
      if (*(a5 + 16) != v18 || __PAIR64__(*(a5 + 18), *(a5 + 17)) != __PAIR64__(BYTE2(v18), BYTE1(v18)))
      {
        v59 = *(v8 + 72);
        if (v59 <= v14)
        {
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v59, v88, v89, v90, key, allocator);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v72, v80);
          __break(1u);
          re::internal::assertLog(6, v68, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v69);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v73, v81);
          __break(1u);
          re::internal::assertLog(6, v70, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v71);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v74, v82);
          __break(1u);
LABEL_100:
          re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v14, v26);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v75, v83);
          __break(1u);
LABEL_101:
          re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v14, v32);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v76, v84);
          __break(1u);
LABEL_102:
          re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v14, v38);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v77, v85);
          __break(1u);
LABEL_103:
          re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v14, v41);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v78, v86);
          __break(1u);
LABEL_104:
          re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v45);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v79, v87);
          __break(1u);
        }

        v94 = v94 & 0xFFFFFFFFFF000000 | *(a5 + 16) | (*(a5 + 18) << 16);
        v60 = re::VideoPipelineColorTransformGenerator::computeTransform(a1 + 22, &pixelBuffer, v94, *(a5 + 19), (v8 + v13 + 224));
        if (v60)
        {
          v61 = *re::videoLogObjects(v60);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *v106 = 0;
            _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "[VideoPipelineSDRNode::execute] Unable to compute color transformation.", v106, 2u);
          }
        }
      }

      if (*a2 == 1)
      {
        re::VideoHistogram::create();
      }

      v62 = v103;
      if (!v103)
      {
        v58 = 1;
        goto LABEL_86;
      }

      if (pixelBuffer)
      {
        IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
        CFRetain(IOSurface);
        v62 = v103;
        v113 = IOSurface;
        if (!v103)
        {
          v64 = 0;
LABEL_73:
          cf = v64;
          *v106 = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(v106, v106, IOSurface);
          *&v106[8] = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(&v106[8], &v106[8], cf);
          v107[0] = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(v107, v107, v115);
          *&v107[1] = *v116;
          *&v107[3] = *&v116[16];
          v107[5] = *&v116[32];
          v108 = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(&v108, &v108, *&v116[40]);
          v109 = v116[48];
          v110 = v117;
          if (*(&v117 + 1))
          {
            atomic_fetch_add_explicit((*(&v117 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          v111[0] = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(v111, v111, v118);
          v111[1] = *(&v118 + 1);
          v111[2] = v119;
          v10 = a3;
          if (v119)
          {
            atomic_fetch_add_explicit((v119 + 16), 1uLL, memory_order_relaxed);
          }

          v111[3] = *(&v119 + 1);
          v111[4] = v120;
          if (v120)
          {
            atomic_fetch_add_explicit((v120 + 8), 1uLL, memory_order_relaxed);
          }

          v111[5] = *(&v120 + 1);
          v111[6] = v121;
          if (v121)
          {
            atomic_fetch_add_explicit(v121 + 1, 1uLL, memory_order_relaxed);
          }

          v112 = 1;
          re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, v106);
          if (v112 != -1)
          {
            (*(&off_1F5D1B3F8 + v112))(&v99, v106);
          }

          v58 = 1;
          goto LABEL_84;
        }
      }

      else
      {
        v113 = 0;
      }

      v64 = CVPixelBufferGetIOSurface(v62);
      CFRetain(v64);
      IOSurface = v113;
      goto LABEL_73;
    }

    *(v8 + 48) = 2;
    ProtectionOptions = pixelBuffer;
    if (!pixelBuffer)
    {
      v24 = 0;
      PixelFormatType = 0;
LABEL_21:
      v23 = 0;
      goto LABEL_22;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    ProtectionOptions = pixelBuffer;
    if (!pixelBuffer)
    {
      v24 = 0;
      goto LABEL_21;
    }

    v23 = CVPixelBufferGetWidth(pixelBuffer);
    ProtectionOptions = pixelBuffer;
    if (pixelBuffer)
    {
      v24 = CVPixelBufferGetHeight(pixelBuffer);
      ProtectionOptions = pixelBuffer;
      if (pixelBuffer)
      {
        CVPixelBufferGetIOSurface(pixelBuffer);
        ProtectionOptions = IOSurfaceGetProtectionOptions();
      }
    }

    else
    {
      v24 = 0;
    }

LABEL_22:
    re::VideoSimplePixelBufferAllocator::createPixelBuffer(v106, (a1 + 21), (2 * v23), (2 * v24), PixelFormatType, v18, BYTE1(v18), BYTE2(v18), 1, 0x400u, 0x10u, 1, ProtectionOptions);
    v103 = *v106;
    v26 = *(a3 + 72);
    if (v26 <= v14)
    {
      goto LABEL_100;
    }

    v28 = re::VideoImage::cleanRect((v15 + 88));
    v32 = *(a3 + 72);
    if (v32 <= v14)
    {
      goto LABEL_101;
    }

    v33 = v28;
    v34 = v29;
    v35 = v30;
    v36 = v31;
    re::VideoImage::displayDimensions((v15 + 88));
    v38 = *(a3 + 72);
    if (v38 <= v14)
    {
      goto LABEL_102;
    }

    v40 = re::VideoImage::horizontalDisparityAdjustment((v15 + 88));
    v41 = *(a3 + 72);
    if (v41 <= v14)
    {
      goto LABEL_103;
    }

    v42 = v40;
    re::VideoImage::rectangularMask(&v99, (v15 + 88), v14);
    v8 = a7;
    v43 = *(a7 + 48);
    if (v102 == 1)
    {
      v100 = vmul_n_f32(v100, v43);
      v101 = vmul_n_f32(v101, v43);
      v99 = vmul_n_f32(v99, v43);
    }

    re::VideoPixelBufferBase::setCleanRect(&v103, v33 * v43, v34 * v43, v35 * v43, v36 * v43);
    if (v103)
    {
      CVImageBufferSetDisplayDimensions();
    }

    re::VideoPixelBufferBase::setHorizontalDisparityAdjustment(&v103, v42);
    if (v102 == 1)
    {
      re::VideoPixelBufferBase::setRectangularMask(&v103, *&v100, *&v101, *&v99);
    }

    v45 = *(a7 + 72);
    if (v45 <= v14)
    {
      goto LABEL_104;
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(a7 + v13 + 88, (a7 + v13 + 88), &v103);
    memset(v107, 0, 40);
    *v106 = 0u;
    v46 = re::VideoPipelineUpscalingNode::createUpscalingConfig(a1, v14, &pixelBuffer, &v103, v106);
    v47 = v46;
    if (v46)
    {
      v48 = *re::videoLogObjects(v46);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "[VideoPipelineSDRNode::execute] Unable to create upscaling config.", buf, 2u);
      }
    }

    else
    {
      v50 = *&v106[8];
      v49 = v107[0];
      if (v107[0])
      {
        atomic_fetch_add_explicit(&v107[0]->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v51 = v119;
      *(&v118 + 1) = v50;
      *&v119 = v49;
      if (v51)
      {
        std::__shared_weak_count::__release_weak(v51);
      }

      re::VideoObject<re::VideoColorTransformBase>::setRef(&v118, &v118, *v106);
      v53 = v107[1];
      v52 = v107[2];
      if (v107[2])
      {
        atomic_fetch_add_explicit(&v107[2]->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v54 = v120;
      *(&v119 + 1) = v53;
      *&v120 = v52;
      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v54);
      }

      v56 = v107[3];
      v55 = v107[4];
      if (v107[4])
      {
        atomic_fetch_add_explicit(&v107[4]->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v57 = v121;
      *(&v120 + 1) = v56;
      v121 = v55;
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v57);
      }
    }

    v10 = a3;
    if (v107[4])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v107[4]);
    }

    if (v107[2])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v107[2]);
    }

    if (v107[0])
    {
      std::__shared_weak_count::__release_weak(v107[0]);
    }

    if (*v106)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v106);
    }

    if (!v47)
    {
      goto LABEL_58;
    }

    v58 = 0;
LABEL_84:
    if (v103)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v103);
    }

LABEL_86:
    if (pixelBuffer)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&pixelBuffer);
    }

    re::VideoPipelineSurfaceAcceleratorConfig::~VideoPipelineSurfaceAcceleratorConfig(&v113);
    if (!v58)
    {
      break;
    }

    ++v14;
    v13 += 160;
  }

  while (v14 < *(v10 + 72));
  return v58 ^ 1u;
}

__CVBuffer *re::VideoPipelineSDRNode::setOwner(re::VideoPipelineSDRNode *this, re::VideoPixelBufferPool *a2)
{
  if (*(this + 72) != a2)
  {
    *(this + 72) = a2;
    re::memoryAttributionVideoPixelBufferPool((this + 208), a2);
  }

  return re::memoryAttributionVideoPixelBuffer(this + 37, a2);
}

void re::VideoPipelineSDRNode::~VideoPipelineSDRNode(__CVBuffer **this)
{
  if (this[37])
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 37);
  }

  this[37] = 0;
  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 26));
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 16));
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 11));

  re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(this);
}

{
  if (this[37])
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 37);
  }

  this[37] = 0;
  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 26));
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 16));
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 11));
  re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(this);

  JUMPOUT(0x1E6906520);
}

void re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(re::VideoPipelineUpscalingNode *this)
{
  *this = &unk_1F5D1B430;
  for (i = 80; i != 48; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  std::__hash_table<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::__unordered_map_hasher<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::hash<re::VideoPipelineASEConfigurationKey>,std::equal_to<re::VideoPipelineASEConfigurationKey>,true>,std::__unordered_map_equal<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::equal_to<re::VideoPipelineASEConfigurationKey>,std::hash<re::VideoPipelineASEConfigurationKey>,true>,std::allocator<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>>>::~__hash_table(this + 16);
}

uint64_t std::__hash_table<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::__unordered_map_hasher<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::hash<re::VideoPipelineASEConfigurationKey>,std::equal_to<re::VideoPipelineASEConfigurationKey>,true>,std::__unordered_map_equal<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::equal_to<re::VideoPipelineASEConfigurationKey>,std::hash<re::VideoPipelineASEConfigurationKey>,true>,std::allocator<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::__unordered_map_hasher<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::hash<re::VideoPipelineASEConfigurationKey>,std::equal_to<re::VideoPipelineASEConfigurationKey>,true>,std::__unordered_map_equal<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::equal_to<re::VideoPipelineASEConfigurationKey>,std::hash<re::VideoPipelineASEConfigurationKey>,true>,std::allocator<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::__unordered_map_hasher<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::hash<re::VideoPipelineASEConfigurationKey>,std::equal_to<re::VideoPipelineASEConfigurationKey>,true>,std::__unordered_map_equal<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::equal_to<re::VideoPipelineASEConfigurationKey>,std::hash<re::VideoPipelineASEConfigurationKey>,true>,std::allocator<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t re::VideoPipelineASEConfigGenerator::createConfig(re *a1, re *this, unsigned int a3, unsigned int a4, unsigned int a5, void *a6, unint64_t a7)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!*a6)
  {
    v18 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v62 = 0;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[VideoASEConfigGenerator::createConfig] The given frame measurement is not valid.", v62, 2u);
    }

    return 1;
  }

  v8 = a6;
  v11 = a3;
  v12 = this;
  *v62 = 0x400000001;
  v63 = this;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v14 = re::videoHashCombine(this, a3, 4uLL, 1, a4, a5);
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = vcnt_s8(v15);
    v16.i16[0] = vaddlv_u8(v16);
    if (v16.u32[0] > 1uLL)
    {
      v17 = v14;
      if (v14 >= *&v15)
      {
        v17 = v14 % *&v15;
      }
    }

    else
    {
      v17 = (*&v15 + 0x3FFFFFFFFFFFFFFFLL) & v14;
    }

    v19 = *(*a1 + 8 * v17);
    if (v19)
    {
      for (i = *v19; i; i = *i)
      {
        v21 = i[1];
        if (v21 == v14)
        {
          if (*(i + 6) == v12 && *(i + 7) == v11 && *(i + 5) == 4 && *(i + 4) == 1 && *(i + 8) == a4 && *(i + 9) == a5)
          {
            v51 = i[5];
            v54 = v51;
            if (v51)
            {
              goto LABEL_50;
            }

            goto LABEL_75;
          }
        }

        else
        {
          if (v16.u32[0] > 1uLL)
          {
            if (v21 >= *&v15)
            {
              v21 %= *&v15;
            }
          }

          else
          {
            v21 &= *&v15 - 1;
          }

          if (v21 != v17)
          {
            break;
          }
        }
      }
    }
  }

  v55 = v11;
  v56 = v12;
  v57 = v8;
  v22 = [objc_alloc(MEMORY[0x1E6986508]) initWithConfig:v62];
  [v22 setDestinationWidth:v65];
  [v22 setDestinationHeight:v66];
  v23 = *v62;
  v24 = *&v62[4];
  v25 = v63;
  v26 = v64;
  v27 = v65;
  v28 = v66;
  v58 = v22;
  v29 = re::videoHashCombine(v25, v26, v24, v23, v27, v28);
  v30 = *(a1 + 8);
  if (!*&v30)
  {
    goto LABEL_48;
  }

  v31 = vcnt_s8(v30);
  v31.i16[0] = vaddlv_u8(v31);
  if (v31.u32[0] > 1uLL)
  {
    v32 = v29;
    if (v29 >= *&v30)
    {
      v32 = v29 % *&v30;
    }
  }

  else
  {
    v32 = (*&v30 + 0x3FFFFFFFFFFFFFFFLL) & v29;
  }

  v33 = *(*a1 + 8 * v32);
  if (!v33 || (v34 = *v33) == 0)
  {
LABEL_48:
    operator new();
  }

  while (1)
  {
    v35 = v34[1];
    if (v35 == v29)
    {
      break;
    }

    if (v31.u32[0] > 1uLL)
    {
      if (v35 >= *&v30)
      {
        v35 %= *&v30;
      }
    }

    else
    {
      v35 &= *&v30 - 1;
    }

    if (v35 != v32)
    {
      goto LABEL_48;
    }

LABEL_47:
    v34 = *v34;
    if (!v34)
    {
      goto LABEL_48;
    }
  }

  if (*(v34 + 6) != v25 || *(v34 + 7) != v26 || *(v34 + 5) != v24 || *(v34 + 4) != v23 || *(v34 + 8) != v27 || *(v34 + 9) != v28)
  {
    goto LABEL_47;
  }

  v54 = v58;
  v11 = v55;

  v8 = v57;
  v12 = v56;
  if (!v58)
  {
LABEL_75:
    v52 = *re::videoLogObjects(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      LODWORD(memptr) = 67109376;
      HIDWORD(memptr) = v12;
      v68 = 1024;
      v69 = v11;
      _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "Unable to create ASE Processor for config %d x %d.", &memptr, 0xEu);
    }

    goto LABEL_77;
  }

LABEL_50:
  isVariableRateDirectionalScalingSupported = re::VideoPlatform::isVariableRateDirectionalScalingSupported(v51);
  v37 = *v8;
  if (!isVariableRateDirectionalScalingSupported)
  {
    v60 = 0;
    v43 = [(re *)v54 processFrameWithInput:v37 + 472 outputData:&v60];
    v44 = v60;
    v40 = v44;
    if (v43 != -18000)
    {
      v41 = *re::videoLogObjects(v44);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      LOWORD(memptr) = 0;
      v42 = "[VideoASEConfigGenerator::createConfig] Unable to process upscale with ASEFrameMeasurement.";
LABEL_64:
      p_memptr = &memptr;
      goto LABEL_72;
    }

LABEL_55:
    re::VideoObject<re::VideoColorTransformBase>::setRef(a7, a7, v40);
    v46 = *v8;
    v45 = v8[1];
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 16), 1uLL, memory_order_relaxed);
    }

    v47 = *(a7 + 16);
    *(a7 + 8) = v46;
    *(a7 + 16) = v45;
    if (v47)
    {
      std::__shared_weak_count::__release_weak(v47);
    }

    if (re::VideoPlatform::isVariableRateDirectionalScalingSupported(v47))
    {
      memptr = 0;
      v48 = malloc_type_posix_memalign(&memptr, 8uLL, 0x1D0uLL, 0x100004019C028F0uLL);
      if (memptr)
      {
        operator new();
      }

      v41 = *re::videoLogObjects(v48);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v42 = "[VideoASEConfigGenerator::createConfig] Unable to allocate new measurement data V3.";
    }

    else
    {
      memptr = 0;
      v50 = malloc_type_posix_memalign(&memptr, 8uLL, 0x17CuLL, 0x10000401B70AB38uLL);
      if (memptr)
      {
        operator new();
      }

      v41 = *re::videoLogObjects(v50);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v42 = "[VideoASEConfigGenerator::createConfig] Unable to allocate new measurement data.";
    }

    p_memptr = buf;
LABEL_72:
    _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, v42, p_memptr, 2u);
    goto LABEL_73;
  }

  v61 = 0;
  v38 = [(re *)v54 processFrameWithInput:v37 + 472 outputData:&v61];
  v39 = v61;
  v40 = v39;
  if (v38 == -18000)
  {
    goto LABEL_55;
  }

  v41 = *re::videoLogObjects(v39);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    LOWORD(memptr) = 0;
    v42 = "[VideoASEConfigGenerator::createConfig] Unable to process upscale with cast ASEFrameMeasurementV3.";
    goto LABEL_64;
  }

LABEL_73:

LABEL_77:
  return 1;
}

void std::__shared_ptr_emplace<re::VideoPipelineASEFrameMeasurement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D1B498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_pointer<ASEFrameMeasurementV3 *,void (*)(void *),std::allocator<ASEFrameMeasurementV3>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<ASEFrameMeasurementV3 *,void (*)(void *),std::allocator<ASEFrameMeasurementV3>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ASEFrameMeasurement *,void (*)(void *),std::allocator<ASEFrameMeasurement>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<ASEFrameMeasurement *,void (*)(void *),std::allocator<ASEFrameMeasurement>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

unint64_t re::videoHashCombine(unint64_t this, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a2 + (this << 6) + (this >> 2) - 0x61C8864680B583E9) ^ this;
  v7 = ((v6 << 6) + (v6 >> 2) + ((a4 + (a3 << 6) + (a3 >> 2) - 0x61C8864680B583E9) ^ a3) - 0x61C8864680B583E9) ^ v6;
  return (((a6 + (a5 << 6) + (a5 >> 2) - 0x61C8864680B583E9) ^ a5) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
}

void re::VideoPipeline::~VideoPipeline(std::__shared_weak_count **this)
{
  re::VideoPipeline::deinit(this);
  v2 = this[287];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  re::VideoPixelFormatDescriptionManager::~VideoPixelFormatDescriptionManager((this + 267));
  v3 = this[266];
  if (v3)
  {
    CFRelease(v3);
    this[266] = 0;
  }

  this[261] = 0;
  ++*(this + 524);
}

void re::VideoPipeline::deinit(re::VideoPipeline *this)
{
  v2 = 0;
  v3 = (this + 2184);
  do
  {
    v4 = *(v3 + v2);
    if (v4)
    {
      (*(*v4 + 56))(v4);
      v5 = *(v3 + v2);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }

    v2 += 8;
  }

  while (v2 != 64);
  v3[2] = 0u;
  v3[3] = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  v6 = *(this + 266);
  if (v6)
  {
    CFRelease(v6);
    *(this + 266) = 0;
  }
}

uint64_t re::VideoPipeline::process(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v254 = v5;
  v7 = v6;
  LODWORD(v9) = v8;
  v11 = v10;
  j = v12;
  v14 = v2;
  v313 = *MEMORY[0x1E69E9840];
  if (*(v12 + 7) == 1)
  {
    goto LABEL_279;
  }

  while (1)
  {
    v15 = (v11 + 56);
    if (!*(v11 + 56) || (*(v11 + 12) & 1) == 0 || (*(v11 + 36) & 1) == 0)
    {
      return 1;
    }

    v249 = v4;
    v287 = 0;
    v288 = 0;
    v17 = *(j + 8);
    if (v17 == 1)
    {
      v289[0] = re::VideoPipeline::selectNode(v14, 5u, v254);
      v18 = 1;
      v287 = 1;
      v288 = 1;
      v17 = *(j + 8);
      v19 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    if (v17 != *(v14 + 2272))
    {
      v20 = *(v14 + 2224);
      if (v20)
      {
        v21 = *v20;
        if (v17)
        {
          (*(v21 + 32))();
        }

        else
        {
          (*(v21 + 40))();
        }
      }
    }

    if (*(j + 7) == 1)
    {
      v205 = re::VideoPipeline::selectNode(v14, 4u, v254);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v206);
      v289[v19++] = v205;
      v287 = v19;
      v288 = ++v18;
    }

    if (*(j + 9) == 1)
    {
      v22 = re::VideoPipeline::selectNode(v14, 6u, v254);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v23);
      v1 = v289;
      v289[v19] = v22;
      v287 = v19 + 1;
      v288 = v18 + 1;
      if (*(j + 7) == 1)
      {
        v252 = re::VideoPipeline::selectNode(v14, 4u, v254);
        re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19 + 1, v211);
        v289[v19 + 1] = v252;
        v19 += 2;
        v287 = v19;
        v18 += 2;
        v288 = v18;
      }

      else
      {
        ++v18;
        ++v19;
      }
    }

    if (*(j + 9) != *(v14 + 2273))
    {
      v24 = *(v14 + 2232);
      if (v24)
      {
        v25 = *v24;
        if (*(j + 9))
        {
          (*(v25 + 32))();
        }

        else
        {
          (*(v25 + 40))();
        }
      }
    }

    v26 = *(j + 12);
    if (v26 == 1)
    {
      v27 = re::VideoPipeline::selectNode(v14, 1u, v254);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v28);
      v289[v19++] = v27;
      v287 = v19;
      v288 = ++v18;
      v26 = *(j + 12);
    }

    if (v26 != *(v14 + 2276))
    {
      v29 = *(v14 + 2192);
      if (v29)
      {
        v30 = *v29;
        if (v26)
        {
          (*(v30 + 32))();
        }

        else
        {
          (*(v30 + 40))();
        }
      }
    }

    if (*(j + 13) == 1)
    {
      v31 = re::VideoPipeline::selectNode(v14, 0, v254);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v32);
      v289[v19++] = v31;
      v287 = v19;
      v288 = ++v18;
    }

    if (*(j + 5) != *(v14 + 2269))
    {
      v33 = *(v14 + 2184);
      if (v33)
      {
        v34 = *v33;
        if (*(j + 5))
        {
          (*(v34 + 32))();
        }

        else
        {
          (*(v34 + 40))();
        }
      }
    }

    if (*(j + 7) == 1)
    {
      v207 = re::VideoPipeline::selectNode(v14, 4u, v254);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v208);
      v289[v19++] = v207;
      v287 = v19;
      v288 = ++v18;
    }

    if (*(j + 5) == 1)
    {
      v35 = re::VideoPipeline::selectNode(v14, 2u, v254);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v36);
      v1 = v289;
      v289[v19] = v35;
      v287 = v19 + 1;
      v288 = v18 + 1;
      if (*(j + 7) == 1)
      {
        v253 = re::VideoPipeline::selectNode(v14, 4u, v254);
        re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19 + 1, v212);
        v289[v19 + 1] = v253;
        v19 += 2;
        v287 = v19;
        v18 += 2;
        v288 = v18;
      }

      else
      {
        ++v18;
        ++v19;
      }
    }

    if (*(j + 5) != *(v14 + 2269))
    {
      v37 = *(v14 + 2200);
      if (v37)
      {
        v38 = *v37;
        if (*(j + 5))
        {
          (*(v38 + 32))();
        }

        else
        {
          (*(v38 + 40))();
        }
      }
    }

    v39 = *(j + 6);
    if (v39 == 1)
    {
      v40 = re::VideoPipeline::selectNode(v14, 3u, v254);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v41);
      v289[v19++] = v40;
      v287 = v19;
      v288 = ++v18;
      v39 = *(j + 6);
    }

    if (v39 != *(v14 + 2270))
    {
      v42 = *(v14 + 2208);
      if (v42)
      {
        v43 = *v42;
        if (v39)
        {
          (*(v43 + 32))();
        }

        else
        {
          (*(v43 + 40))();
        }
      }
    }

    v44 = *(j + 7);
    if (v44 == 1)
    {
      v209 = re::VideoPipeline::selectNode(v14, 4u, v254);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v210);
      v289[v19] = v209;
      v287 = v19 + 1;
      v288 = v18 + 1;
      v44 = *(j + 7);
    }

    if (v44 != *(v14 + 2271))
    {
      v45 = *(v14 + 2216);
      if (v45)
      {
        v46 = *v45;
        if (v44)
        {
          (*(v46 + 32))();
        }

        else
        {
          (*(v46 + 40))();
        }
      }
    }

    v246 = v7;
    _Q0 = *j;
    *(v14 + 2279) = *(j + 15);
    *(v14 + 2264) = _Q0;
    v276[8] = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *&v276[12] = _Q0;
    v277 = 0;
    v278 = 0;
    v283 = 0;
    v285 = 0;
    v274 = *v11;
    v52 = *(v11 + 16);
    *&v275[8] = *(v11 + 24);
    v53 = *(v11 + 40);
    *v275 = v52;
    *&v275[24] = v53;
    v276[4] = *(v11 + 48);
    v276[5] = *(v11 + 50);
    *v276 = 1;
    *&v276[6] = 0;
    v281 = *(v11 + 96);
    v54 = *(v11 + 112);
    v282 = *(v11 + 104);
    objc_storeStrong(&v283, v54);
    v55 = *(v11 + 128);
    v284 = *(v11 + 120);
    objc_storeStrong(&v285, v55);
    v286 = *(v11 + 136);
    re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::resize(&v277, *(v11 + 56));
    v251 = j;
    if (*(v11 + 56))
    {
      v57 = 0;
      v1 = 0;
      j = v11;
      v58 = v11 + 72;
      v59 = &v279;
      v60 = *MEMORY[0x1E6966290];
      while (1)
      {
        v61 = v277;
        if (v277 <= v1)
        {
          goto LABEL_103;
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(v59, v59, (v58 + v57));
        buf[0].value = 0;
        v63 = *v15;
        if (*v15 <= v1)
        {
          break;
        }

        v64 = *(v58 + 8 * v1);
        if (v64)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(v64);
        }

        else
        {
          PixelFormatType = 0;
        }

        if (!re::VideoPixelFormatDescriptionManager::descriptionForPixelFormat(v14 + 2136, PixelFormatType, buf))
        {
          if (v276[7])
          {
            v66 = 1;
          }

          else
          {
            v66 = re::VideoPixelFormatDescriptionBase::BOOLeanValue(buf, v60, 0);
          }

          v276[7] = v66;
        }

        if (buf[0].value)
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buf);
        }

        ++v1;
        v56 = *v15;
        v59 += 20;
        v57 += 8;
        if (v1 >= *v15)
        {
          v11 = j;
          goto LABEL_79;
        }
      }

LABEL_104:
      re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v1, v63);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v215, v231);
      __break(1u);
LABEL_105:
      re::internal::assertLog(6, v67, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v69);
      v70 = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v216, v232);
      __break(1u);
LABEL_106:
      v4 = *re::videoLogObjects(v70);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_287;
      }

      goto LABEL_107;
    }

    v56 = 0;
LABEL_79:
    v271 = 0;
    v272 = 0;
    v7 = &v271;
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(&v271, v56);
    if (*v15)
    {
      v1 = 0;
      j = v11 + 72;
      v68 = &v273;
      do
      {
        v69 = v271;
        if (v271 <= v1)
        {
          goto LABEL_105;
        }

        re::VideoObject<re::VideoPixelBufferBase>::setRef(v68, v68, *(j + 8 * v1++));
        ++v68;
      }

      while (v1 < *v15);
    }

    v245 = v9;
    buf[0] = *v11;
    *texture = *(v11 + 24);
    v247 = v11;
    *v304 = *(v11 + 40);
    v250 = v14;
    re::VideoThroughput::update(v14, buf, texture, v15);
    buf[0].value = 0;
    buf[0].timescale = 0;
    v257 = *&v275[16];
    v258 = *v276;
    v259 = *&v276[16];
    v255 = v274;
    v256 = *v275;
    v260 = 0;
    v261 = 0;
    re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::copy(&v260, &v277);
    obj = v281;
    v265 = v282;
    v266 = v283;
    v267 = v284;
    v70 = v285;
    v268 = v70;
    v269 = v286;
    if (v287)
    {
      v7 = &v289[v287];
      v72 = v289;
      while (1)
      {
        v73 = *v72;
        if (!*v72)
        {
          goto LABEL_106;
        }

        if (*(v251 + 7) == 1)
        {
          v78 = *re::videoLogObjects(v70);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            v1 = *(*v73 + 64);
            j = *v73 + 64;
            v79 = v78;
            v80 = (v1)(v73);
            LODWORD(texture[0]) = 136315138;
            *(texture + 4) = v80;
            _os_log_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_DEFAULT, "[VideoPipeline::process] Executing %s", texture, 0xCu);
          }
        }

        v74 = (*(*v73 + 24))(v73, v251, &v274, buf, v254, v14, &v255);
        if (v74)
        {
          break;
        }

        *&v275[16] = v257;
        *v276 = v258;
        *&v276[16] = v259;
        *v275 = v256;
        v274 = v255;
        re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::copy(&v277, &v260);
        ++v278;
        objc_storeStrong(&v281, obj);
        v282 = v265;
        objc_storeStrong(&v283, v266);
        v284 = v267;
        objc_storeStrong(&v285, v268);
        v286 = v269;
        re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(&v271, v260);
        if (v260)
        {
          v75 = 0;
          v76 = v263;
          j = 16;
          do
          {
            if (*v76 == 1)
            {
              texture[0] = 0;
              re::VideoObject<re::VideoPixelBufferBase>::setRef(texture, texture, *(v76 - 16));
              v77 = texture[0];
              if (texture[0])
              {
                if (v271 <= v75)
                {
                  re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v75, v271);
                  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v213, v229);
                  __break(1u);
LABEL_103:
                  re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v61);
                  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v214, v230);
                  __break(1u);
                  goto LABEL_104;
                }

                v1 = (&v271 + v75);
                if (*(v1 + 16))
                {
                  re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((&v271 + j));
                }

                *(v1 + 16) = v77;
                v70 = CVPixelBufferRetain(v77);
                if (texture[0])
                {
                  re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(texture);
                }
              }
            }

            ++v75;
            j += 8;
            v76 += 20;
          }

          while (v75 < v260);
        }

        if (++v72 == v7)
        {
          goto LABEL_124;
        }
      }

      v16 = v74;
      v81 = *re::videoLogObjects(v74);
      v82 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
      if (v82)
      {
        v202 = *(*v73 + 64);
        v203 = v81;
        v204 = v202(v73);
        LODWORD(texture[0]) = 136315138;
        *(texture + 4) = v204;
        _os_log_error_impl(&dword_1E1C61000, v203, OS_LOG_TYPE_ERROR, "[VideoPipeline::process] Failed to execute %s", texture, 0xCu);
      }

      if ((v16 & 0xFFFFFFFB) != 0)
      {
        v83 = *re::videoLogObjects(v82);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          LOWORD(texture[0]) = 0;
          _os_log_error_impl(&dword_1E1C61000, v83, OS_LOG_TYPE_ERROR, "[VideoPipeline::process] Processing failed.", texture, 2u);
        }

        if (!buf[0].value)
        {
          goto LABEL_253;
        }

        v84 = 176 * buf[0].value;
        p_epoch = &buf[0].epoch;
        while (1)
        {
          LOBYTE(texture[0]) = 0;
          v311 = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> const&>(texture, p_epoch);
          v86 = v311;
          if (v311 != 1)
          {
            goto LABEL_118;
          }

          if (*v305)
          {
            break;
          }

          v86 = 1;
LABEL_121:
          (*(&off_1F5D1B5E8 + v86))(v297, texture);
LABEL_122:
          p_epoch += 22;
          v84 -= 176;
          if (!v84)
          {
            goto LABEL_253;
          }
        }

        (*v305)(7, *&v305[8]);
        v86 = v311;
LABEL_118:
        if (v86 == 0xFFFFFFFFLL)
        {
          goto LABEL_122;
        }

        goto LABEL_121;
      }
    }

LABEL_124:
    v312 = 0u;
    v308 = 0;
    *texture = *v247;
    v87 = *(v247 + 2);
    *&v304[8] = *(v247 + 24);
    v88 = *(v247 + 5);
    *v304 = v87;
    *&v304[24] = v88;
    *&v305[15] = *(v251 + 15);
    *v305 = *v251;
    *&v305[20] = v258;
    *&v305[24] = WORD3(v258);
    v307 = 0;
    v306 = 0;
    v305[26] = *(v247 + 49);
    v89 = v260;
    v90 = v249;
    if (!v260)
    {
      break;
    }

    if (v260 > 2)
    {
      re::internal::assertLog(4, v71, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return result;
    }

    v254 = v309;
    v91 = MEMORY[0x1E695F060];
    v92 = &v310;
    v11 = MEMORY[0x1E695F058];
    v93 = v260;
    do
    {
      v94 = *v91;
      *(v92 + 3) = *v91;
      *(v92 + 5) = v94;
      v95 = *(v11 + 16);
      *(v92 + 7) = *v11;
      *(v92 - 10) = 0;
      *v92 = 0;
      v92[1] = 0;
      v92[2] = 0;
      *(v92 - 3) = 0;
      *(v92 - 2) = 0;
      *(v92 - 4) = 0;
      *(v92 - 8) = 0;
      *(v92 + 9) = v95;
      *(v92 + 22) = 0;
      *(v92 + 96) = 0;
      *(v92 + 120) = 0;
      *(v92 + 130) = 2;
      *(v92 + 64) = 514;
      *(v92 + 17) = 0uLL;
      *(v92 + 19) = 0uLL;
      v92 += 26;
      --v93;
    }

    while (v93);
    v14 = 0;
    v307 = v89;
    v308 = 1;
    v4 = v262;
    v1 = v290;
    v248 = (v250 + 2128);
    v9 = v297;
    while (v307 > v14)
    {
      v96 = &v262[10 * v14];
      v7 = &v309[13 * v14];
      if (*(v7 + 40) == 1)
      {
        re::VideoObject<re::VideoColorTransformBase>::setRef(v7 + 32, v7 + 4, v96[17]);
      }

      else
      {
        v7[4] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v7 + 32, v7 + 4, v96[17]);
        *(v7 + 40) = 1;
      }

      v97 = re::VideoImage::colorTags(&v262[10 * v14]);
      *(v7 + 84) = v97;
      *(v7 + 170) = BYTE2(v97);
      *(v7 + 10) = re::VideoImage::displayDimensions(&v262[10 * v14]);
      v7[11] = v98;
      v99 = *(v96 + 32);
      if (v99 == 3)
      {
        width = re::VideoMetalTextures::encodedSize(&v262[10 * v14]);
      }

      else if (v99 == 2)
      {
        width = re::VideoPixelBufferTextures::encodedSize(&v262[10 * v14]);
      }

      else if (v99 == 1 && *v96)
      {
        EncodedSize = CVImageBufferGetEncodedSize(*v96);
        height = EncodedSize.height;
        width = EncodedSize.width;
      }

      else
      {
        width = *MEMORY[0x1E695F060];
        height = *(MEMORY[0x1E695F060] + 8);
      }

      *(v7 + 8) = width;
      *(v7 + 9) = height;
      *(v7 + 12) = re::VideoImage::cleanRect(&v262[10 * v14]);
      v7[13] = v103;
      v7[14] = v104;
      v7[15] = v105;
      v106 = *(v96 + 32);
      switch(v106)
      {
        case 3:
          re::VideoPixelBufferDerived::normalizedRectangularMask(v297, &v262[10 * v14]);
          *(v7 + 17) = *v297;
          *(v7 + 145) = *&v297[9];
LABEL_153:
          re::VideoImage::asMetalTextures(v290, &v262[10 * v14]);
          goto LABEL_177;
        case 2:
          re::VideoPixelBufferDerived::normalizedRectangularMask(v297, &v262[10 * v14]);
          *(v7 + 17) = *v297;
          *(v7 + 145) = *&v297[9];
LABEL_171:
          re::VideoImage::asPixelBufferTextures(v297, &v262[10 * v14]);
          re::VideoPixelBufferTextures::asMetalTextures(v290, v297);
          for (i = 120; i != 96; i -= 8)
          {
            if (*&v297[i])
            {
              re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v297[i]);
            }

            *&v297[i] = 0;
          }

          if (v302[0])
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v302);
          }

          goto LABEL_177;
        case 1:
          re::VideoPixelBufferBase::normalizedRectangularMask(v297, &v262[10 * v14], v14);
          v106 = *(v96 + 32);
          break;
        default:
          v297[0] = 0;
          v297[24] = 0;
          break;
      }

      *(v7 + 17) = *v297;
      *(v7 + 145) = *&v297[9];
      switch(v106)
      {
        case 3:
          goto LABEL_153;
        case 2:
          goto LABEL_171;
        case 1:
          if (*v248)
          {
            v107 = 1;
          }

          else
          {
            re::VideoTextureCache::init(v248);
            v107 = *(v96 + 32) == 1;
          }

          v109 = 0;
          *&v297[8] = *MEMORY[0x1E695F060];
          v110 = *(v11 + 16);
          *&v297[24] = *v11;
          v297[2] = 2;
          *v297 = 514;
          v298 = v110;
          v299 = 0;
          v300 = 0;
          v301 = 0;
          memset(v302, 0, sizeof(v302));
          pixelBuffer[0] = 0;
          if (v107)
          {
            re::VideoObject<re::VideoPixelBufferBase>::setRef(pixelBuffer, pixelBuffer, *v96);
            v109 = pixelBuffer[0];
          }

          TexturesFromPixelBuffer = re::VideoTextureCache::createTexturesFromPixelBuffer(v248, v109, v297, 0, 0);
          v112 = TexturesFromPixelBuffer;
          if (pixelBuffer[0])
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(pixelBuffer);
          }

          if (v112)
          {
            v113 = *re::videoLogObjects(TexturesFromPixelBuffer);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(pixelBuffer[0]) = 0;
              _os_log_impl(&dword_1E1C61000, v113, OS_LOG_TYPE_DEFAULT, "[VideoPipeline::convertToMetalTexture] Failed.", pixelBuffer, 2u);
            }
          }

          else
          {
            re::VideoPixelBufferTextures::asMetalTextures(v290, v297);
          }

          v114 = 120;
          v90 = v249;
          do
          {
            if (*&v297[v114])
            {
              re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v297[v114]);
            }

            *&v297[v114] = 0;
            v114 -= 8;
          }

          while (v114 != 96);
          if (v302[0])
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v302);
          }

          if (!v112)
          {
            goto LABEL_177;
          }

          goto LABEL_171;
      }

      v293 = 0u;
      v292 = 0u;
      *&v291[8] = 0u;
      memset(v290, 0, sizeof(v290));
      *&v290[8] = *MEMORY[0x1E695F060];
      v108 = *(v11 + 16);
      *&v290[24] = *v11;
      *v290 = 514;
      v290[2] = 2;
      *v291 = v108;
      v294 = 0u;
      v295 = 0u;
LABEL_177:
      objc_storeStrong(v7 + 1, *(&v294 + 1));
      objc_storeStrong(v7 + 2, v295);
      objc_storeStrong(v7 + 3, *(&v295 + 1));
      v117 = v96[18];
      v116 = v96[19];
      if (v116)
      {
        atomic_fetch_add_explicit((v116 + 8), 1uLL, memory_order_relaxed);
      }

      v118 = v7[7];
      v7[6] = v117;
      v7[7] = v116;
      if (v118)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v118);
      }

      v119 = v7[1];
      if (v119)
      {
        v120 = [v119 protectionOptions];
        v306 = (v306 | v120);
      }

      v121 = v7[2];
      if (v121)
      {
        v122 = [v121 protectionOptions];
        v306 = (v306 | v122);
      }

      v123 = v7[3];
      if (v123)
      {
        v124 = [v123 protectionOptions];
        v306 = (v306 | v124);
      }

      v125 = v7[23];
      if (v125)
      {
        v126 = [v125 protectionOptions];
        v306 = (v306 | v126);
      }

      v127 = v7[24];
      if (v127)
      {
        v128 = [v127 protectionOptions];
        v306 = (v306 | v128);
      }

      v129 = v7[25];
      if (v129)
      {
        v130 = [v129 protectionOptions];
        v306 = (v306 | v130);
      }

      for (j = 120; j != 96; j -= 8)
      {
      }

      if (v294)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v294);
      }

      if (++v14 >= v260)
      {
        goto LABEL_198;
      }
    }

    re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v307);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v217, v233);
    __break(1u);
LABEL_274:
    re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v218, v234);
    __break(1u);
LABEL_275:
    re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v219, v235);
    __break(1u);
LABEL_276:
    re::internal::assertLog(6, v167, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v168);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v220, v236);
    __break(1u);
LABEL_277:
    re::internal::assertLog(6, v176, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v177);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v221, v237);
    __break(1u);
LABEL_278:
    re::internal::assertLog(6, v185, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v186);
    v2 = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v222, v238);
    __break(1u);
LABEL_279:
    v201 = *re::videoLogObjects(v2);
    if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].value) = 0;
      _os_log_impl(&dword_1E1C61000, v201, OS_LOG_TYPE_DEFAULT, "[VideoPipeline::process] Begin", buf, 2u);
    }
  }

LABEL_198:
  v131 = *v305;
  *&v90[4].isa = *&v304[16];
  *&v90[6].isa = v131;
  *&v90[8].isa = *&v305[16];
  v90[10].isa = v306;
  v132 = *v304;
  *&v90->isa = *texture;
  *&v90[2].isa = v132;
  v11 = v250;
  if (texture != v90)
  {
    v133 = v307;
    isa = v90[11].isa;
    if (v307 >= isa)
    {
      if (isa)
      {
        v143 = 208 * isa;
        v144 = &v90[13];
        v145 = v309;
        do
        {
          v146 = re::VideoPipelineRenderableChannel::operator=(v144, v145);
          v145 += 13;
          v144 = v146 + 208;
          v143 -= 208;
        }

        while (v143);
        v147 = v90[11].isa;
      }

      else
      {
        v147 = 0;
      }

      if (v147 != v133)
      {
        v148 = 26 * v147;
        v149 = texture;
        v150 = v90;
        do
        {
          v151 = &v149[v148];
          v152 = &v149[v148 + 13];
          v153 = &v150[v148];
          LODWORD(v153[13].isa) = *v152;
          v154 = *&v149[v148 + 14];
          *(v152 + 8) = 0;
          *(v152 + 16) = 0;
          *&v153[14].isa = v154;
          v155 = v149[v148 + 16];
          *(v152 + 24) = 0;
          v153[16].isa = v155;
          LOBYTE(v153[17].isa) = 0;
          LOBYTE(v153[18].isa) = 0;
          if (LOBYTE(v149[v148 + 18]) == 1)
          {
            v153[17].isa = v151[17];
            v151[17] = 0;
            LOBYTE(v153[18].isa) = 1;
          }

          v156 = *&v149[v148 + 21];
          *&v153[19].isa = *&v149[v148 + 19];
          v157 = *&v149[v148 + 29];
          *&v153[27].isa = *&v149[v148 + 27];
          *&v153[29].isa = v157;
          *&v153[31].isa = *&v149[v148 + 31];
          *&v153[21].isa = v156;
          v158 = *&v149[v148 + 25];
          *&v153[23].isa = *&v149[v148 + 23];
          *&v153[25].isa = v158;
          *(&v153[32].isa + 3) = *(&v149[v148 + 32] + 3);
          v159 = *&v149[v148 + 37];
          *&v153[35].isa = *&v149[v148 + 35];
          *&v149[v148 + 19] = 0uLL;
          v149 += 26;
          *(v152 + 176) = 0uLL;
          *(v152 + 192) = 0uLL;
          v150 += 26;
          *&v153[37].isa = v159;
        }

        while ((v152 + 208) != &v309[13 * v133]);
      }
    }

    else
    {
      v135 = 208 * v307;
      if (v307)
      {
        v136 = v309;
        v137 = 208 * v307;
        v138 = &v90[13];
        do
        {
          v139 = re::VideoPipelineRenderableChannel::operator=(v138, v136);
          v136 += 13;
          v138 = v139 + 208;
          v137 -= 208;
        }

        while (v137);
        isa = v90[11].isa;
      }

      if (v133 != isa)
      {
        v140 = &v90[26 * v133 + 13];
        v141 = 208 * isa - v135;
        do
        {
          re::VideoPipelineRenderableChannel::~VideoPipelineRenderableChannel(v140);
          v140 = (v142 + 208);
          v141 -= 208;
        }

        while (v141);
      }
    }

    v90[11].isa = v133;
    re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear(&v307);
    ++LODWORD(v90[12].isa);
  }

  v4 = v90 + 65;
  v160 = v312;
  v312 = 0uLL;
  v161 = v90[66].isa;
  *&v90[65].isa = v160;
  if (v161)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v161);
    if (*(&v312 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v312 + 1));
    }
  }

  re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear(&v307);
  v163 = v90[11].isa;
  LODWORD(v9) = v251;
  if (!v163)
  {
    goto LABEL_251;
  }

  v14 = &v90[35];
  j = 2;
  do
  {
    if (v271 > j - 2)
    {
      re::VideoObject<re::VideoPixelBufferBase>::setRef(v14, v14, *(&v271 + j));
      v163 = v90[11].isa;
    }

    v164 = j++ - 1;
    v14 += 208;
  }

  while (v164 < v163);
  if (!v163 || (*(v251 + 11) & 1) == 0)
  {
LABEL_251:
    if (buf[0].value)
    {
      re::VideoPipelineProcessor::dispatch(v246, buf, (v250 + 2288), v245, *(v251 + 14));
    }

    operator new();
  }

  v1 = 0;
  v7 = (&v90[34].isa + 1);
  while (1)
  {
    v165 = *(v7 - 161);
    if (v165)
    {
      v166 = [v165 pixelFormat];
      v168 = v90[11].isa;
      if (v168 <= v1)
      {
        goto LABEL_276;
      }

      v169 = re::CoreVideoUtils::metalPixelFormatVariantForTransferFunctionLegacy(v166, *v7);
      v163 = v90[11].isa;
      if (v169)
      {
        break;
      }
    }

LABEL_236:
    if (v163 <= v1)
    {
      goto LABEL_274;
    }

    v174 = *(v7 - 153);
    if (v174)
    {
      v175 = [v174 pixelFormat];
      v177 = v90[11].isa;
      if (v177 <= v1)
      {
        goto LABEL_277;
      }

      v178 = re::CoreVideoUtils::metalPixelFormatVariantForTransferFunctionLegacy(v175, *v7);
      v163 = v90[11].isa;
      if (v178)
      {
        if (v163 <= v1)
        {
          goto LABEL_283;
        }

        v179 = [*(v7 - 153) newTextureViewWithPixelFormat:v178];
        v181 = v90[11].isa;
        if (v181 <= v1)
        {
          goto LABEL_284;
        }

        v182 = *(v7 + 23);
        *(v7 + 23) = v179;

        v163 = v90[11].isa;
      }
    }

    if (v163 <= v1)
    {
      goto LABEL_275;
    }

    v183 = *(v7 - 145);
    if (v183)
    {
      v184 = [v183 pixelFormat];
      v186 = v90[11].isa;
      if (v186 <= v1)
      {
        goto LABEL_278;
      }

      v187 = re::CoreVideoUtils::metalPixelFormatVariantForTransferFunctionLegacy(v184, *v7);
      v163 = v90[11].isa;
      if (v187)
      {
        if (v163 <= v1)
        {
          goto LABEL_285;
        }

        v188 = [*(v7 - 145) newTextureViewWithPixelFormat:v187];
        v190 = v90[11].isa;
        if (v190 <= v1)
        {
          goto LABEL_286;
        }

        v191 = *(v7 + 31);
        *(v7 + 31) = v188;

        v163 = v90[11].isa;
      }
    }

    ++v1;
    v7 += 26;
    if (v1 >= v163)
    {
      goto LABEL_251;
    }
  }

  if (v163 > v1)
  {
    v170 = [*(v7 - 161) newTextureViewWithPixelFormat:v169];
    v172 = v90[11].isa;
    if (v172 <= v1)
    {
      goto LABEL_282;
    }

    v173 = *(v7 + 15);
    *(v7 + 15) = v170;

    v163 = v90[11].isa;
    goto LABEL_236;
  }

  re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v223, v239);
  __break(1u);
LABEL_282:
  re::internal::assertLog(6, v171, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v172);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v224, v240);
  __break(1u);
LABEL_283:
  re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v225, v241);
  __break(1u);
LABEL_284:
  re::internal::assertLog(6, v180, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v181);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v226, v242);
  __break(1u);
LABEL_285:
  re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v227, v243);
  __break(1u);
LABEL_286:
  re::internal::assertLog(6, v189, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v190);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v228, v244);
  __break(1u);
LABEL_287:
  LOWORD(texture[0]) = 0;
  _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[VideoPipeline::process] Failed to execute node. Node is invalid.", texture, 2u);
LABEL_107:
  v16 = 1;
LABEL_253:

  if (v260)
  {
    v192 = 160 * v260;
    v193 = v263;
    do
    {
      v194 = *(v193 + 3);
      if (v194)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v194);
      }

      if (*(v193 + 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v193 + 1);
      }

      *(v193 + 1) = 0;
      v195 = *v193;
      if (v195 != -1)
      {
        (off_1F5D1B5A8[v195])(texture, v193 - 32);
      }

      *v193 = -1;
      v193 += 40;
      v192 -= 160;
    }

    while (v192);
  }

  re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(buf);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&v271);

  if (v277)
  {
    v196 = 160 * v277;
    v197 = &v280;
    do
    {
      v198 = *(v197 + 3);
      if (v198)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v198);
      }

      if (*(v197 + 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v197 + 1);
      }

      *(v197 + 1) = 0;
      v199 = *v197;
      if (v199 != -1)
      {
        (off_1F5D1B5A8[v199])(buf, v197 - 32);
      }

      *v197 = -1;
      v197 += 40;
      v196 -= 160;
    }

    while (v196);
  }

  return v16;
}

uint64_t re::VideoPipeline::selectNode(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!*(a1 + 2184 + 8 * a2))
  {
    if (a2 > 2)
    {
      if (a2 <= 4)
      {
        if (a2 == 3)
        {
          operator new();
        }

        operator new();
      }

      if (a2 == 5)
      {
        operator new();
      }

      operator new();
    }

    if (a2)
    {
      if (a2 == 1)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  return *(a1 + 2184 + 8 * a2);
}

double re::VideoPipelineHDRNode::VideoPipelineHDRNode(re::VideoPipelineHDRNode *this)
{
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F5D1B738;
  *(this + 11) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 0;
  *&result = 0x7FFFFFFFLL;
  *(this + 188) = 0x7FFFFFFFLL;
  *(this + 25) = 0;
  *(this + 104) = 514;
  *(this + 210) = 2;
  *(this + 54) = 0;
  return result;
}

_DWORD *re::VideoPipeline::setOwner(_DWORD *this, int a2)
{
  if (this[562] != a2)
  {
    v2 = this;
    v3 = 0;
    this[562] = a2;
    v4 = this + 546;
    do
    {
      this = *&v4[v3];
      if (this)
      {
        this = (*(*this + 80))(this, v2[562]);
      }

      v3 += 2;
    }

    while (v3 != 16);
  }

  return this;
}

void re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::copy(unint64_t *a1, unint64_t *a2)
{
  v3 = (a2 + 2);
  v4 = *a2;
  v5 = a1 + 2;
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel*>(v3, &v3[20 * *a1], v5);
    if (*a1 != v4)
    {
      v10 = &v3[20 * v4];
      v11 = &v3[20 * *a1];
      v12 = &a1[20 * *a1 + 21];
      do
      {
        *(v12 - 6) = 0;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,(std::__variant_detail::_Trait)1> const&>((v12 - 19), v11);
        *(v12 - 2) = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v12 - 16, v12 - 2, *(v11 + 136));
        v13 = *(v11 + 152);
        *(v12 - 1) = *(v11 + 144);
        *v12 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v11 += 160;
        v12 += 20;
      }

      while (v11 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel*>(v3, &v3[20 * v4], v5);
    if (v4 != *a1)
    {
      v6 = 160 * *a1 - 160 * v4;
      v7 = &a1[20 * v4 + 18];
      do
      {
        v8 = v7[3];
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        if (v7[1])
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v7 + 1);
        }

        v7[1] = 0;
        v9 = *v7;
        if (v9 != -1)
        {
          (off_1F5D1B5A8[v9])(&v14, v7 - 16);
        }

        *v7 = -1;
        v7 += 20;
        v6 -= 160;
      }

      while (v6);
    }
  }

  *a1 = v4;
}

void std::__copy_impl::operator()[abi:nn200100]<re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,(std::__variant_detail::_Trait)1> const&>(a3, v5);
      v6 = a3 + 17;
      re::VideoObject<re::VideoColorTransformBase>::setRef(v6, v6, *(v5 + 136));
      v8 = *(v5 + 144);
      v7 = *(v5 + 152);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6[2];
      v6[1] = v8;
      v6[2] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v5 += 160;
      a3 = v6 + 3;
    }

    while (v5 != a2);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 128);
  v4 = *(a2 + 128);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5D1B5A8[v3])(&v6, result, a2);
    *(v2 + 128) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5D1B5C8[v4])(&v5, result, a2);
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJS8_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 128);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_1F5D1B5A8[v2])(&v3, v1);
  }

  *(v1 + 128) = 0;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJS8_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (v5 != -1)
  {
    if (v5 == 2)
    {
      v7 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v7;
      v8 = *(a3 + 32);
      v9 = *(a3 + 48);
      v10 = *(a3 + 64);
      *(a2 + 73) = *(a3 + 73);
      *(a2 + 48) = v9;
      *(a2 + 64) = v10;
      *(a2 + 32) = v8;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a2 + 96, (a2 + 96), *(a3 + 96));
      v11 = 0;
      v12 = (a2 + 104);
      v13 = a3 + 104;
      do
      {
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v12, v12, *(v13 + 8 * v11++));
        ++v12;
      }

      while (v11 != 3);
      return;
    }

    (off_1F5D1B5A8[v5])(&v22, v4);
  }

  *(v4 + 128) = -1;
  v14 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v14;
  v15 = *(a3 + 32);
  v16 = *(a3 + 48);
  v17 = *(a3 + 64);
  *(v4 + 73) = *(a3 + 73);
  *(v4 + 48) = v16;
  *(v4 + 64) = v17;
  *(v4 + 32) = v15;
  *(v4 + 96) = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(v4 + 96, (v4 + 96), *(a3 + 96));
  v18 = 0;
  v19 = (v4 + 104);
  v20 = a3 + 104;
  v21 = (v4 + 104);
  do
  {
    *v21++ = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(v19, v19, *(v20 + 8 * v18++));
    v19 = v21;
  }

  while (v18 != 3);
  *(v4 + 128) = 2;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 160);
  if (v4 != -1)
  {
    result = (*(&off_1F5D1B5E8 + v4))(&v7, result);
  }

  *(v3 + 160) = -1;
  v5 = *(a2 + 160);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5D1B610[v5])(&v6, a2);
    *(v3 + 160) = v5;
  }

  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(void **a1, id *a2)
{
  v3 = *a1;
  *v3 = *a2;
  result = a2[1];
  v3[1] = result;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  *v3 = *a2;
  *(v3 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(v3 + 16) = *(a2 + 16);
  *(v3 + 24) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(v3 + 24, (v3 + 24), *(a2 + 24));
  *(v3 + 32) = 0;
  v5 = v3 + 32;
  re::VideoObject<re::VideoColorTransformBase>::setRef(v5, v5, *(a2 + 32));
  *(v5 + 8) = *(a2 + 40);
}

re::VideoPipelineSurfaceAcceleratorConfig *re::VideoPipelineSurfaceAcceleratorConfig::VideoPipelineSurfaceAcceleratorConfig(re::VideoPipelineSurfaceAcceleratorConfig *this, const re::VideoPipelineSurfaceAcceleratorConfig *a2)
{
  *this = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this, this, *a2);
  *(this + 1) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 8, this + 1, *(a2 + 1));
  *(this + 2) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 16, this + 2, *(a2 + 2));
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 7);
  *(this + 8) = 0;
  *(this + 7) = v6;
  *(this + 40) = v5;
  *(this + 24) = v4;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 64, this + 8, *(a2 + 8));
  *(this + 72) = *(a2 + 72);
  v7 = *(a2 + 11);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  *(this + 12) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 96, this + 12, *(a2 + 12));
  v8 = *(a2 + 14);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 16);
  *(this + 15) = *(a2 + 15);
  *(this + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 18);
  *(this + 17) = *(a2 + 17);
  *(this + 18) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t std::__variant_detail::__alt<4ul,re::VideoPipelineHDRGPUConfig>::__alt[abi:nn200100]<re::VideoPipelineHDRGPUConfig const&>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a1, a1, *a2);
  *(a1 + 8) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 8, (a1 + 8), *(a2 + 8));
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t re::VideoPipelineRenderableChannel::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;

  v8 = *(a2 + 24);
  *(a2 + 24) = 0;
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
    {
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 32) = 0;
    }
  }

  else if (*(a1 + 40))
  {
    if (*(a1 + 32))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 32));
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 40) = 1;
  }

  v10 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v11 = *(a1 + 56);
  *(a1 + 48) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(a2 + 64);
  v13 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v13;
  *(a1 + 64) = v12;
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  v16 = *(a2 + 144);
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 128) = v15;
  *(a1 + 144) = v16;
  *(a1 + 112) = v14;
  v17 = *(a2 + 176);
  *(a2 + 184) = 0;
  v18 = *(a1 + 184);
  *(a1 + 176) = v17;
  *(a2 + 176) = 0;

  v19 = *(a2 + 192);
  *(a2 + 192) = 0;
  v20 = *(a1 + 192);
  *(a1 + 192) = v19;

  v21 = *(a2 + 200);
  *(a2 + 200) = 0;
  v22 = *(a1 + 200);
  *(a1 + 200) = v21;

  return a1;
}

void *re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 176 * *result;
    v3 = result + 22;
    do
    {
      v4 = *v3;
      if (v4 != -1)
      {
        result = (*(&off_1F5D1B5E8 + v4))(&v5, v3 - 40);
      }

      *v3 = -1;
      v3 += 44;
      v2 -= 176;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

double re::VideoPixelBufferDerived::normalizedRectangularMask(re::VideoPixelBufferDerived *this, uint64_t a2)
{
  v2 = *(a2 + 80);
  *this = *(a2 + 64);
  *(this + 1) = v2;
  if (*(this + 24) == 1)
  {
    v3 = vcvt_f32_f64(*(a2 + 8));
    v4 = vdiv_f32(v3, *this);
    v5 = vmul_f32(*(this + 8), v4);
    v6 = vmul_f32(v4, *(this + 16));
    v7 = vadd_f32(v5, v6);
    v8 = vbsl_s8(vcgt_f32(v7, v3), v3, v7);
    v9 = vbsl_s8(vcgt_f32(v6, v3), v3, v6);
    *&v2 = vbic_s8(v9, vcltz_f32(v9));
    *(this + 1) = vsub_f32(vbic_s8(v8, vcltz_f32(v8)), *&v2);
    *(this + 2) = v2;
  }

  return *&v2;
}

double re::VideoPipelineSDRNode::VideoPipelineSDRNode(re::VideoPipelineSDRNode *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F5D1B370;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 0;
  *(this + 260) = 0x7FFFFFFFLL;
  *(this + 34) = 0;
  *(this + 140) = 514;
  *(this + 282) = 2;
  *(this + 72) = 0;
  *(this + 37) = 0;
  return result;
}

void std::__shared_ptr_emplace<std::atomic<re::VideoReturn>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D1B648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

unint64_t re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 0x1F)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  return result;
}

uint64_t re::VideoPipelinePolicy::CanUpscale(re::VideoPipelinePolicy *this, const re::VideoSample *a2)
{
  result = re::VideoDefaults::aseAllowed(this);
  if (result)
  {
    if (result)
    {
      {
        v4 = *(this + 48);
        if (v4 > 3 || v4 == 1)
        {
          if (!*(this + 7))
          {
            return 1;
          }

          v5 = 0;
          v6 = this + 72;
          while (1)
          {
            PixelFormatType = *&v6[8 * v5];
            if (PixelFormatType)
            {
              PixelFormatType = CVPixelBufferGetPixelFormatType(PixelFormatType);
            }

            if (re::CoreVideoUtils::pixelFormatIsTriPlanar(PixelFormatType))
            {
              break;
            }

            Height = *&v6[8 * v5];
            if (Height)
            {
              Width = CVPixelBufferGetWidth(Height);
              Height = *&v6[8 * v5];
              if (Height)
              {
                Height = CVPixelBufferGetHeight(Height);
              }
            }

            else
            {
              Width = 0;
            }

            if (Height * Width > 0xE1000)
            {
              break;
            }

            ++v5;
            result = 1;
            if (v5 >= *(this + 7))
            {
              return result;
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

__CVBuffer *re::VideoPipelinePolicy::CanDimFlashingLights(__CVBuffer **this, const re::VideoSample *a2)
{
  v3 = re::VideoDefaults::pseAllowed(this);
  result = 0;
  if (v3 && this[7] == 1)
  {
    if ((*(this + 48) | 2) == 2)
    {
      return 0;
    }

    PixelFormatType = this[9];
    if (PixelFormatType)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(PixelFormatType);
    }

    result = re::CoreVideoUtils::canConvertToGammaSpaceRGBColorModel(PixelFormatType);
    if (result)
    {
      {
      }

      result = this[9];
      if (result)
      {
        IOSurface = CVPixelBufferGetIOSurface(result);
        CFRetain(IOSurface);
        v8 = IOSurface;
        {
          if (!IOSurface)
          {
            return 0;
          }

LABEL_16:
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v8);
          return v7;
        }

        v7 = 0;
        result = 0;
        if (IOSurface)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::VideoPipelinePolicy::CanGenerateMipMap(re::VideoPipelinePolicy *this, const re::VideoSample *a2)
{
  result = re::VideoDefaults::mipmapEnabled(this);
  if (result)
  {
    result = 0;
    if (isPhysicalHardware)
    {
      if (*(this + 7) == 1)
      {
        return (*(this + 48) == 1);
      }
    }
  }

  return result;
}

uint64_t re::VideoPipelineColorTransformGenerator::computeTransform(float *a1, __CVBuffer **a2, int a3, uint64_t a4, const void **a5)
{
  v6 = a4;
  v9 = re::VideoPipelineColorTransformGenerator::colorSyncProfile(a1, a2);
  v10 = re::VideoPipelineColorTransformGenerator::colorSyncProfile(a1, a3 & 0xFFFFFF, v6);

  return re::VideoPipelineColorTransformGenerator::computeTransform(a1, v9, v10, a5);
}

ColorSyncProfileRef re::VideoPipelineColorTransformGenerator::colorSyncProfile(float *a1, __CVBuffer **this)
{
  v4 = re::VideoPixelBufferBase::colorTags(this);
  v13 = v4;
  v14 = BYTE2(v4);
  v5 = std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::find<re::VideoColorTags>(a1, &v13);
  if (v5)
  {
    return v5[3];
  }

  v7 = re::VideoPixelBufferBase::colorSpace(this);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CGColorSpaceCopyICCData(v7);
  if (!v9)
  {
    CFRelease(v8);
    return 0;
  }

  v10 = v9;
  v6 = ColorSyncProfileCreate(v9, 0);
  CFRelease(v10);
  CFRelease(v8);
  if (v6)
  {
    v12[0] = v13 | (v14 << 16);
    v12[1] = v6;
    std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::__emplace_unique_key_args<re::VideoColorTags,std::pair<re::VideoColorTags,ColorSyncProfile const*>>(a1, v12, v12);
  }

  return v6;
}

ColorSyncProfileRef re::VideoPipelineColorTransformGenerator::colorSyncProfile(float *a1, int a2, int a3)
{
  *v14 = a2;
  v14[2] = BYTE2(a2);
  v5 = std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::find<re::VideoColorTags>(a1, v14);
  if (v5)
  {
    return v5[3];
  }

  v7 = re::CoreVideoUtils::colorSpaceNameFromColorTags(v14[0], v14[1], v14[2], a3);
  if (!v7)
  {
    return 0;
  }

  v8 = CGColorSpaceCreateWithName(v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CGColorSpaceCopyICCData(v8);
  if (!v10)
  {
    CFRelease(v9);
    return 0;
  }

  v11 = v10;
  v6 = ColorSyncProfileCreate(v10, 0);
  CFRelease(v11);
  CFRelease(v9);
  if (v6)
  {
    v13[0] = *v14 | (v14[2] << 16);
    v13[1] = v6;
    std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::__emplace_unique_key_args<re::VideoColorTags,std::pair<re::VideoColorTags,ColorSyncProfile const*>>(a1, v13, v13);
  }

  return v6;
}

uint64_t re::VideoPipelineColorTransformGenerator::computeTransform(int8x8_t *a1, CFTypeRef cf, const void *a3, const void **a4)
{
  result = 1;
  if (!cf || !a3)
  {
    return result;
  }

  *&v50 = cf;
  *(&v50 + 1) = a3;
  v8 = CFHash(cf);
  v9 = CFHash(a3);
  v10 = a1[6];
  if (v10)
  {
    v11 = ((v8 << 6) + (v8 >> 2) + v9 - 0x61C8864680B583E9) ^ v8;
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v11;
      if (v11 >= *&v10)
      {
        v14 = v11 % *&v10;
      }
    }

    else
    {
      v14 = v11 & (*&v10 - 1);
    }

    v15 = *(*&a1[5] + 8 * v14);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v17 == v11)
        {
          if (std::equal_to<std::pair<ColorSyncProfile const*,ColorSyncProfile const*>>::operator()(i + 2, &v50))
          {
            v43 = i[4];
            goto LABEL_47;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v17 >= *&v10)
            {
              v17 %= *&v10;
            }
          }

          else
          {
            v17 &= *&v10 - 1;
          }

          if (v17 != v14)
          {
            break;
          }
        }
      }
    }
  }

  v18 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, 0, 0);
  v20 = MEMORY[0x1E695BBD0];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BBD0], cf);
  v21 = MEMORY[0x1E695BBD8];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BBD8], *MEMORY[0x1E695BBE0]);
  v22 = MEMORY[0x1E695BC18];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BC18], *MEMORY[0x1E695BC00]);
  v23 = MEMORY[0x1E695BB18];
  v24 = *MEMORY[0x1E695E4C0];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BB18], *MEMORY[0x1E695E4C0]);
  v25 = CFDictionaryCreateMutable(v18, 4, 0, 0);
  CFDictionaryAddValue(v25, *v20, a3);
  CFDictionaryAddValue(v25, *v21, *MEMORY[0x1E695BBE8]);
  CFDictionaryAddValue(v25, *v22, *MEMORY[0x1E695BC10]);
  CFDictionaryAddValue(v25, *v23, v24);
  v26 = CFArrayCreateMutable(0, 2, 0);
  CFArraySetValueAtIndex(v26, 0, Mutable);
  CFArraySetValueAtIndex(v26, 1, v25);
  v28 = 0;
  if (re::VideoDefaults::useBT1886ForCoreVideoGamma(v27))
  {
    v28 = CFDictionaryCreateMutable(v18, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(v28, *MEMORY[0x1E695BC20], *MEMORY[0x1E695E4D0]);
  }

  v29 = ColorSyncTransformCreate(v26, v28);
  if (!v29)
  {
    v38 = re::VideoDefaults::logEnabled(0);
    if (v38)
    {
      v44 = *re::videoLogObjects(v38);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cfa[0]) = 0;
        _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "[VideoColorManager::computeTransform]: color transformation failed to create", cfa, 2u);
      }
    }

    v43 = 0;
    if (v28)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v30 = v29;
  v31 = MEMORY[0x1E6903650](v29, *MEMORY[0x1E695BC08], 0);
  v43 = v31;
  if (!v31)
  {
    goto LABEL_44;
  }

  v45 = v30;
  *cfa = v50;
  v49 = v31;
  v32 = CFHash(v50);
  v33 = ((v32 << 6) - 0x61C8864680B583E9 + (v32 >> 2) + CFHash(cfa[1])) ^ v32;
  v34 = a1[6];
  v46 = v33;
  if (!*&v34)
  {
    goto LABEL_43;
  }

  v35 = vcnt_s8(v34);
  v35.i16[0] = vaddlv_u8(v35);
  v36 = v35.u32[0];
  if (v35.u32[0] > 1uLL)
  {
    v37 = v33;
    if (v33 >= *&v34)
    {
      v37 = v33 % *&v34;
    }
  }

  else
  {
    v37 = v33 & (*&v34 - 1);
  }

  v39 = *(*&a1[5] + 8 * v37);
  if (!v39 || (v40 = *v39) == 0)
  {
LABEL_43:
    operator new();
  }

  while (1)
  {
    v41 = v40[1];
    if (v41 == v33)
    {
      break;
    }

    if (v36 > 1)
    {
      if (v41 >= *&v34)
      {
        v41 %= *&v34;
      }
    }

    else
    {
      v41 &= *&v34 - 1;
    }

    if (v41 != v37)
    {
      goto LABEL_43;
    }

LABEL_42:
    v40 = *v40;
    if (!v40)
    {
      goto LABEL_43;
    }
  }

  v42 = std::equal_to<std::pair<ColorSyncProfile const*,ColorSyncProfile const*>>::operator()(v40 + 2, cfa);
  v33 = v46;
  if ((v42 & 1) == 0)
  {
    goto LABEL_42;
  }

  v30 = v45;
LABEL_44:
  CFRelease(v30);
  if (v28)
  {
LABEL_45:
    CFRelease(v28);
  }

LABEL_46:
  CFRelease(v26);
  CFRelease(Mutable);
  CFRelease(v25);
LABEL_47:
  if (!v43)
  {
    return 1;
  }

  if (*a4)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a4);
  }

  *a4 = v43;
  CFRetain(v43);
  return 0;
}

void *re::VideoPipelineColorTransformGenerator::clear(re::VideoPipelineColorTransformGenerator *this)
{
  for (i = *(this + 2); i; i = *i)
  {
    v3 = i[3];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(this);
  for (j = *(this + 7); j; j = *j)
  {
    v5 = j[4];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(this + 5);
}

uint64_t ***std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::find<re::VideoColorTags>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = (v5 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v2)
    {
      v9 = v7 % *&v2;
    }
  }

  else
  {
    v9 = v7 & (*&v2 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (result = *v10; result; result = *result)
  {
    v12 = result[1];
    if (v12 == v7)
    {
      if (*(result + 16) == v3 && __PAIR64__(*(result + 18), *(result + 17)) == __PAIR64__(v5, v4))
      {
        return result;
      }
    }

    else
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }
      }

      else
      {
        v12 &= *&v2 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::__emplace_unique_key_args<re::VideoColorTags,std::pair<re::VideoColorTags,ColorSyncProfile const*>>(float *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = (v5 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
  v8 = *(a1 + 2);
  if (!*&v8)
  {
    goto LABEL_19;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = (v5 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 16) != v3 || __PAIR64__(*(v12 + 18), *(v12 + 17)) != __PAIR64__(v5, v4))
  {
    goto LABEL_18;
  }

  return v12;
}

uint64_t std::equal_to<std::pair<ColorSyncProfile const*,ColorSyncProfile const*>>::operator()(CFTypeRef *a1, CFTypeRef *a2)
{
  result = CFEqual(*a1, *a2);
  if (result)
  {
    return CFEqual(a1[1], a2[1]) != 0;
  }

  return result;
}

uint64_t re::VideoPipelineHDRNode::init(uint64_t a1, uint64_t a2)
{
  {
    v4 = 1882468912;
  }

  else
  {
    v4 = 1380411457;
  }

  v5 = re::VideoHDRDefaults::overridePixelFormat(v4);
  re::VideoPipelineHDRConfigGenerator::init((a1 + 88), 3840, 2160, *(a2 + 16), v5, *(a2 + 24));
  return 0;
}

uint64_t re::VideoPipelineHDRNode::execute(_anonymous_namespace_ *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v102 = *MEMORY[0x1E69E9840];
  {
    v10 = 1882468912;
  }

  else
  {
    v10 = 1380411457;
  }

  v11 = re::VideoHDRDefaults::overridePixelFormat(v10);
  v74 = v11;
  v75 = a1;
  v68 = (a1 + 88);
  if (!*(a1 + 11))
  {
    v12 = *re::videoLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[VideoPipelineHDRNode::execute] HDR Config Generator is not initialized.", buf, 2u);
    }

    re::VideoPipelineHDRConfigGenerator::init(v68, 3840, 2160, *(a5 + 16), v74, *(a5 + 24));
  }

  v73 = re::VideoHDRDefaults::overrideColorPrimaries(*(a5 + 16));
  v72 = re::VideoHDRDefaults::overrideTransferFunction(0xD);
  v71 = re::VideoHDRDefaults::overrideYCbCrMatrix(1);
  if (!*(a3 + 72))
  {
    return 0;
  }

  v13 = 0;
  v14 = a7 + 240;
  v15 = (a3 + 216);
  v70 = a3;
  while (1)
  {
    v16 = re::VideoImage::planeCount((v15 - 16));
    if (v16 >= 3)
    {
      v56 = *re::videoLogObjects(v16);
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 0;
      v57 = "[VideoPipelineHDRNode] Input image has more than two planes.";
      goto LABEL_113;
    }

    if (*v15 != 1)
    {
      break;
    }

    v18 = *(a7 + 72);
    if (v18 <= v13)
    {
      re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v13, v18);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v62, v65);
      __break(1u);
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v13, v59);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v63, v66);
      __break(1u);
      re::internal::assertLog(6, v60, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v13, v61);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v64, v67);
      __break(1u);
    }

    pixelBuffer = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(&pixelBuffer, &pixelBuffer, *(v15 - 16));
    Height = pixelBuffer;
    if (!pixelBuffer)
    {
      Width = 0;
LABEL_17:
      v21 = 0;
      goto LABEL_18;
    }

    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = pixelBuffer;
    if (!pixelBuffer)
    {
      goto LABEL_17;
    }

    Height = CVPixelBufferGetHeight(pixelBuffer);
    v21 = Height;
LABEL_18:
    if (a2[4] == 1 && v21 * Width <= 0xE1000)
    {
      *(a7 + 48) = 2;
      Width *= 2;
      v21 *= 2;
    }

    v87 = 0;
    ProtectionOptions = pixelBuffer;
    if (pixelBuffer)
    {
      CVPixelBufferGetIOSurface(pixelBuffer);
      ProtectionOptions = IOSurfaceGetProtectionOptions();
    }

    re::VideoSimplePixelBufferAllocator::createPixelBuffer(buf, (v75 + 96), Width, v21, v74, v73, v72, v71, 1, 0x400u, 0x10u, isPhysicalHardware, ProtectionOptions);
    v87 = *buf;
    v24 = re::VideoImage::cleanRect((v15 - 16));
    v26 = v25;
    v28 = v27;
    v30 = v29;
    re::VideoImage::displayDimensions((v15 - 16));
    re::VideoImage::rectangularMask(&v83, v15 - 16, v13);
    {
      cf = 0;
      v95 = 0;
      v33 = v70;
      if (pixelBuffer)
      {
        IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
        CFRetain(IOSurface);
      }

      else
      {
        IOSurface = 0;
      }

      cf = IOSurface;
      if (v87)
      {
        v38 = CVPixelBufferGetIOSurface(v87);
        CFRetain(v38);
        IOSurface = cf;
      }

      else
      {
        v38 = 0;
      }

      v95 = v38;
      *v96 = *(a5 + 20);
      v96[2] = *(a5 + 36);
      *&v96[3] = *(a5 + 44);
      *&v96[5] = *(a5 + 60);
      LOBYTE(v96[7]) = *(a5 + 16);
      *buf = 0;
      re::VideoObject<re::VideoColorTransformBase>::setRef(buf, buf, IOSurface);
      *&buf[8] = 0;
      re::VideoObject<re::VideoColorTransformBase>::setRef(&buf[8], &buf[8], v95);
      *v90 = *v96;
      *&v90[2] = *&v96[2];
      *&v90[4] = *&v96[4];
      *(&v90[5] + 1) = *(&v96[5] + 1);
      v93 = 4;
      re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, buf);
      if (v93 != -1)
      {
        (*(&off_1F5D1B7A8 + v93))(&v79, buf);
      }

      if (v95)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v95);
      }

      v95 = 0;
      if (cf)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&cf);
      }

LABEL_94:
      v53 = re::VideoImage::horizontalDisparityAdjustment(v15 - 16);
      re::VideoPixelBufferBase::setCleanRect(&v87, v24, v26, v28, v30);
      if (v87)
      {
        CVImageBufferSetDisplayDimensions();
      }

      re::VideoPixelBufferBase::setHorizontalDisparityAdjustment(&v87, v53);
      if (v86 == 1)
      {
        re::VideoPixelBufferBase::setRectangularMask(&v87, *&v84, *&v85, *&v83);
      }

      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(v14 - 152, (v14 - 152), &v87);
      v54 = 1;
      goto LABEL_100;
    }

    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v32 = re::VideoPipelineHDRConfigGenerator::createConfig(v68, &pixelBuffer, &v87, (a5 + 20), (a5 + 44), &v79);
    v33 = v70;
    if (v32)
    {
      v34 = *re::videoLogObjects(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "Unable to create HDR configuration.", buf, 2u);
      }

      v35 = 0;
    }

    else
    {
      cf = 0;
      v95 = 0;
      LOBYTE(v96[1]) = 0;
      v96[0] = 0;
      memset(&v96[2], 0, 41);
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0;
      if (pixelBuffer)
      {
        v37 = CVPixelBufferGetIOSurface(pixelBuffer);
        CFRetain(v37);
      }

      else
      {
        v37 = 0;
      }

      cf = v37;
      if (v87)
      {
        v39 = CVPixelBufferGetIOSurface(v87);
        CFRetain(v39);
      }

      else
      {
        v39 = 0;
      }

      v95 = v39;
      re::VideoObject<re::VideoColorTransformBase>::setRef(&v96[6], &v96[6], v79);
      LOBYTE(v96[7]) = v80;
      if (*a2 == 1)
      {
        re::VideoHistogram::create();
      }

      if (*(v70 + 48) == *(a7 + 48))
      {
        goto LABEL_77;
      }

      memset(v90, 0, 40);
      *buf = 0u;
      v40 = re::VideoPipelineUpscalingNode::createUpscalingConfig(v75, v13, &pixelBuffer, &v87, buf);
      v41 = v40;
      if (v40)
      {
        v42 = *re::videoLogObjects(v40);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *v78 = 0;
          _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "[VideoPipelineHDRNode::execute] Unable to create upscaling configuration.", v78, 2u);
        }
      }

      else
      {
        v44 = *&buf[8];
        v43 = v90[0];
        if (v90[0])
        {
          atomic_fetch_add_explicit(&v90[0]->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v45 = v99;
        *(&v98 + 1) = v44;
        *&v99 = v43;
        if (v45)
        {
          std::__shared_weak_count::__release_weak(v45);
        }

        re::VideoObject<re::VideoColorTransformBase>::setRef(&v98, &v98, *buf);
        v47 = v90[1];
        v46 = v90[2];
        if (v90[2])
        {
          atomic_fetch_add_explicit(&v90[2]->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v48 = v100;
        *(&v99 + 1) = v47;
        *&v100 = v46;
        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v48);
        }

        v50 = v90[3];
        v49 = v90[4];
        if (v90[4])
        {
          atomic_fetch_add_explicit(&v90[4]->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v51 = v101;
        *(&v100 + 1) = v50;
        v101 = v49;
        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v51);
        }

        v52 = *(a7 + 48);
        v24 = v24 * v52;
        v26 = v26 * v52;
        v28 = v28 * v52;
        v30 = v30 * v52;
        if (v86 == 1)
        {
          v84 = vmul_n_f32(v84, v52);
          v85 = vmul_n_f32(v85, v52);
          v83 = vmul_n_f32(v83, v52);
        }
      }

      if (v90[4])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v90[4]);
      }

      if (v90[2])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v90[2]);
      }

      if (v90[0])
      {
        std::__shared_weak_count::__release_weak(v90[0]);
      }

      if (*buf)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buf);
      }

      if (!v41)
      {
LABEL_77:
        *buf = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(buf, buf, cf);
        *&buf[8] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&buf[8], &buf[8], v95);
        v90[0] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v90, v90, v96[0]);
        *&v90[1] = *&v96[1];
        *&v90[3] = *&v96[3];
        v90[5] = v96[5];
        v90[6] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&v90[6], &v90[6], v96[6]);
        LOBYTE(v90[7]) = v96[7];
        v91 = v97;
        if (*(&v97 + 1))
        {
          atomic_fetch_add_explicit((*(&v97 + 1) + 16), 1uLL, memory_order_relaxed);
        }

        v92[0] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v92, v92, v98);
        v92[1] = *(&v98 + 1);
        v92[2] = v99;
        if (v99)
        {
          atomic_fetch_add_explicit((v99 + 16), 1uLL, memory_order_relaxed);
        }

        v92[3] = *(&v99 + 1);
        v92[4] = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
        }

        v92[5] = *(&v100 + 1);
        v92[6] = v101;
        if (v101)
        {
          atomic_fetch_add_explicit(v101 + 1, 1uLL, memory_order_relaxed);
        }

        v93 = 1;
        re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, buf);
        if (v93 != -1)
        {
          (*(&off_1F5D1B7A8 + v93))(v78, buf);
        }

        v35 = 1;
      }

      else
      {
        v35 = 0;
      }

      re::VideoPipelineSurfaceAcceleratorConfig::~VideoPipelineSurfaceAcceleratorConfig(&cf);
    }

    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v82);
    }

    if (v79)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v79);
    }

    if (v35)
    {
      goto LABEL_94;
    }

    v54 = 0;
LABEL_100:
    if (v87)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v87);
    }

    if (pixelBuffer)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&pixelBuffer);
    }

    if (v54)
    {
      ++v13;
      v14 += 160;
      v15 += 20;
      if (v13 < *(v33 + 72))
      {
        continue;
      }
    }

    return v54 ^ 1u;
  }

  v56 = *re::videoLogObjects(v16);
  if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    return 1;
  }

  *buf = 0;
  v57 = "[VideoPipelineHDRNode] Input image is not a pixel buffer.";
LABEL_113:
  _os_log_error_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_ERROR, v57, buf, 2u);
  return 1;
}

uint64_t re::VideoPipelineHDRNode::deinit(re::VideoPipelineHDRNode *this)
{
  v1 = *(this + 11);
  if (v1)
  {
    *(this + 11) = 0;
  }

  return 0;
}

uint64_t re::VideoPipelineHDRNode::setOwner(uint64_t this, const re::VideoPixelBufferPool *a2)
{
  if (*(this + 216) != a2)
  {
    *(this + 216) = a2;
    return re::memoryAttributionVideoPixelBufferPool((this + 136), a2);
  }

  return this;
}

void re::VideoPipelineHDRNode::~VideoPipelineHDRNode(void **this)
{
  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 17));
  re::VideoHDRProcessor::~VideoHDRProcessor(this + 11);

  re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(this);
}

{
  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 17));
  re::VideoHDRProcessor::~VideoHDRProcessor(this + 11);
  re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(this);

  JUMPOUT(0x1E6906520);
}

void re::VideoPipelineProcessor::~VideoPipelineProcessor(pthread_t **this)
{
  re::VideoPipelineProcessor::deinit(this);
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

pthread_t **re::VideoPipelineProcessor::deinit(pthread_t **this)
{
  if (*this)
  {
    v1 = this;
    atomic_store(0, *this + 8);
    FigSemaphoreSignal();
    pthread_join(**v1, 0);
    v2 = *v1;
    *v2 = 0;
    if (v2[2])
    {
      FigSemaphoreDestroy();
      v2[2] = 0;
      v2 = *v1;
    }

    v18 = 0;
    v19 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    *v24 = 0u;
    {
      do
      {
        if (v24[1])
        {
          v3 = std::__shared_weak_count::lock(v24[1]);
          if (v3)
          {
            if (v24[0])
            {
              atomic_store(7u, v24[0]);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v3);
          }
        }

        if (v18)
        {
          v4 = 176 * v18;
          v5 = &v20;
          do
          {
            if (*v5 == 1)
            {
              v6 = *(v5 - 14);
              if (v6)
              {
                v6(7, *(v5 - 13));
              }
            }

            v5 += 22;
            v4 -= 176;
          }

          while (v4);
        }
      }
    }

    v7 = re::VideoPipelineProcessor::handleCompletionsIfNeeded(v1);
    v8 = *v1;
    if (*v1)
    {
      v9 = v8[15];
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v10 = v8[13];
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      v11 = v8[11];
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      if (v8[6] && v8[7])
      {
        while (1)
        {
          v12 = CMSimpleQueueDequeue(v8[7]);
          if (!v12)
          {
            break;
          }

          {
            re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) ", "success", "clear", 182);
            _os_crash("assertion failure: (success) ");
            __break(1u);
            break;
          }
        }

        v14 = v8[7];
        if (v14)
        {
          CFRelease(v14);
          v8[7] = 0;
        }
      }

      v15 = v8[7];
      if (v15)
      {
        CFRelease(v15);
        v8[7] = 0;
      }

      if (v8[2])
      {
        FigSemaphoreDestroy();
        v8[2] = 0;
      }

      v7 = MEMORY[0x1E6906520](v8, 0x10A0C40ABC74BD4);
    }

    *v1 = 0;
    v16 = *re::videoLogObjects(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "De-initialized RE Video Processor thread.", buf, 2u);
    }

    if (v24[1])
    {
      std::__shared_weak_count::__release_weak(v24[1]);
    }

    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v23 + 1));
    }

    if (*(&v22 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v22 + 1));
    }

    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v21 + 1));
    }

    return re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(&v18);
  }

  return this;
}

void re::VideoPipelineProcessor::init(pthread_t **a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!*a1)
  {
    operator new();
  }
}

uint64_t re::VideoPipelineProcessor::threadFunction(re::VideoPipelineProcessor *this, void *a2)
{
  v3 = pthread_setname_np("RE Video Processor");
  v4 = *re::videoLogObjects(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "RE Video Processor thread started.", &v20, 2u);
  }

  if (this && *(this + 2))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = atomic_load(this + 8);
    if (v7)
    {
      do
      {
        v8 = objc_autoreleasePoolPush();
        v20 = 0;
        v21 = 0;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        {
          if (re::VideoPipelineProcessor::process(this, &v20, &v22, 0))
          {
            v9 = 1;
          }

          else
          {
            v9 = 8;
          }
        }

        else
        {
          v9 = 1;
        }

        if (*(&v25 + 1))
        {
          v10 = std::__shared_weak_count::lock(*(&v25 + 1));
          if (v10)
          {
            if (v25)
            {
              atomic_store(v9, v25);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          }

          v11 = *(&v25 + 1);
          v25 = 0uLL;
          if (v11)
          {
            std::__shared_weak_count::__release_weak(v11);
          }
        }

        else
        {
          v25 = 0uLL;
        }

        re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(&v20);
        v12 = *(&v22 + 1);
        v22 = 0u;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v13 = *(&v23 + 1);
        v23 = 0u;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        v14 = *(&v24 + 1);
        v24 = 0u;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v25 + 1));
        }

        if (*(&v24 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v24 + 1));
        }

        if (*(&v23 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v23 + 1));
        }

        if (*(&v22 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v22 + 1));
        }

        re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(&v20);
        objc_autoreleasePoolPop(v8);
        FigSemaphoreWaitRelative();
        v15 = atomic_load(this + 8);
      }

      while ((v15 & 1) != 0);
    }

    objc_autoreleasePoolPop(v6);
    v17 = *re::videoLogObjects(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "RE Video Processor thread ended.", &v20, 2u);
    }
  }

  else
  {
    v18 = *re::videoLogObjects(v5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Video Processor thread does not have a valid context.", &v20, 2u);
    }
  }

  return 0;
}

uint64_t re::FixedSpscQueue<anonymous namespace::VideoPipelineProcessorAsyncPayload>::pop(uint64_t a1, uint64_t a2)
{
  v4 = CMSimpleQueueDequeue(*(a1 + 32));
  v5 = v4;
  if (!v4)
  {
    return v5 != 0;
  }

  if (v4 != a2)
  {
    re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::copy(a2, v4);
    ++*(a2 + 8);
  }

  v6 = v5[354];
  v7 = v5[355];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 2832) = v6;
  v8 = *(a2 + 2840);
  *(a2 + 2840) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = v5[356];
  v10 = v5[357];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 2848) = v9;
  v11 = *(a2 + 2856);
  *(a2 + 2856) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = v5[358];
  v13 = v5[359];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 2864) = v12;
  v14 = *(a2 + 2872);
  *(a2 + 2872) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = v5[360];
  v16 = v5[361];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 2880) = v15;
  v17 = *(a2 + 2888);
  *(a2 + 2888) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  {
    return v5 != 0;
  }

  re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) ", "success", "pop", 161);
  result = _os_crash("assertion failure: (success) ");
  __break(1u);
  return result;
}

uint64_t *re::VideoPipelineProcessor::handleCompletionsIfNeeded(uint64_t *this)
{
  v2 = *this;
  if (*this && *(v2 + 128) == 1)
  {
    v3 = this;
    v4 = *(v2 + 72);
    if (v4)
    {
      [v4 dispatchAvailableCompletionNotifications];
      v2 = *v3;
    }

    this = *(v2 + 64);
    if (this)
    {

      return [this dispatchAvailableCompletionNotifications];
    }
  }

  return this;
}

uint64_t re::VideoPipelineProcessor::process(std::__shared_weak_count *a1, void *a2, uint64_t *a3, int a4)
{
  v4 = a2;
  v73 = *MEMORY[0x1E69E9840];
  v59 = a2 + 2;
  if (!*a2)
  {
LABEL_54:
    result = re::VideoDefaults::logEnabled(a1);
    if (result)
    {
      if (*v4)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 176 * *v4;
        v40 = v4 + 22;
        do
        {
          if (*v40 == 1)
          {
            v41 = *(v40 - 12);
            v33 = v41 != 0;
            v34 = v41 == 0;
            result = *(v40 - 9);
            v35 |= *(v40 - 8) != 0;
            if (result)
            {
              result = std::__shared_weak_count::lock(result);
              if (result)
              {
                v42 = *(v40 - 10) != 0;
                std::__shared_weak_count::__release_shared[abi:nn200100](result);
                v36 |= v42;
              }
            }
          }

          v43 = *v40;
          v40 += 44;
          v38 |= v43 == 3;
          v37 |= v43 == 2;
          v39 -= 176;
        }

        while (v39);
      }

      else
      {
        v38 = 0;
        v37 = 0;
        v36 = 0;
        v35 = 0;
        v34 = 0;
        v33 = 0;
      }

      v47 = *re::videoLogObjects(result);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = "✘";
        if (a4)
        {
          v49 = "✔";
        }

        else
        {
          v49 = "✘";
        }

        if (v33)
        {
          v50 = "✔";
        }

        else
        {
          v50 = "✘";
        }

        *buf = 136316674;
        *&buf[4] = v49;
        if (v34)
        {
          v51 = "✔";
        }

        else
        {
          v51 = "✘";
        }

        buf_12 = 2080;
        buf_14 = v50;
        if (v35)
        {
          v52 = "✔";
        }

        else
        {
          v52 = "✘";
        }

        v63 = 2080;
        v64 = v51;
        if (v36)
        {
          v53 = "✔";
        }

        else
        {
          v53 = "✘";
        }

        v65 = 2080;
        v66 = v52;
        if (v38)
        {
          v54 = "✔";
        }

        else
        {
          v54 = "✘";
        }

        v67 = 2080;
        if (v37)
        {
          v48 = "✔";
        }

        v68 = v53;
        v69 = 2080;
        v70 = v54;
        v71 = 2080;
        *&v72 = v48;
        _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEFAULT, "[VideoPipelineProcessor::process] synchronous: %s, hdr: %s, transform: %s, ase: %s, histogram: %s, pse: %s, mipgen: %s", buf, 0x48u);
      }

      return 0;
    }

    return result;
  }

  v5 = a1;
  v6 = 0;
  v57 = 176 * *a2;
  v7 = 64;
  if (a4)
  {
    v7 = 72;
  }

  v58 = v7;
  while (1)
  {
    v8 = &v4[v6 / 8];
    v9 = v4[v6 / 8 + 22];
    if (v9 == 1)
    {
      if (v5 && (shared_owners = v5[3].__shared_owners_) != 0 && *shared_owners)
      {
        if (v8[2] && v4[v6 / 8 + 3])
        {
          operator new();
        }

        v31 = *re::videoLogObjects(a1);
        a1 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "[VideoPipelineProcessor::process (Surface Acclerator)] Invalid surfaces.", buf, 2u);
        }
      }

      else
      {
        v29 = *re::videoLogObjects(a1);
        a1 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "[VideoPipelineProcessor::process (Surface Acclerator)] Surface Accelerator not intialized.", buf, 2u);
        }
      }

      v11 = 1;
      v9 = *(v8 + 44);
    }

    else
    {
      v11 = 1;
    }

    if (v9 == 3)
    {
      v12 = &v4[v6 / 8];
      if (v4[v6 / 8 + 5] && (v14 = v12[6], v13 = v12 + 6, v14))
      {
        a1 = v4[v6 / 8 + 3];
        if (a1)
        {
          a1 = std::__shared_weak_count::lock(a1);
          if (a1)
          {
            v15 = a1;
            v16 = v8[2];
            if (v16)
            {
              if (*v16)
              {
                v11 = re::VideoPSEProcessor::Processor::process(*v16, &v4[v6 / 8 + 5], v13, *&v4[v6 / 8 + 4], *&v4[v6 / 8 + 7], *(&v4[v6 / 8 + 7] + 1));
              }

              else
              {
                v11 = 1;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v15);
              goto LABEL_24;
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }
        }
      }

      else
      {
        v17 = *re::videoLogObjects(a1);
        a1 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "[VideoPipelineProcessor::process (PSE)] Configuration has invalid surfaces.", buf, 2u);
        }
      }

      v11 = 1;
LABEL_24:
      v9 = *(v8 + 44);
    }

    if (v9 == 2)
    {
      if (v5)
      {
        v18 = v5[4].__vftable;
        if (v18)
        {
          if (v18->~__shared_weak_count)
          {
            *buf = 0;
            operator new();
          }
        }
      }

      v30 = *re::videoLogObjects(a1);
      a1 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "[VideoPipelineProcessor::process (Mip)] Mip Processor not intialized.", buf, 2u);
      }

      v11 = 1;
      v9 = *(v8 + 44);
    }

    if (v9 != 4)
    {
      goto LABEL_39;
    }

    if (!v5)
    {
      break;
    }

    if (!v8[2] || (v19 = &v4[v6 / 8 + 3], !*v19))
    {
      v44 = *re::videoLogObjects(a1);
      a1 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (!a1)
      {
        goto LABEL_66;
      }

      *buf = 0;
      v45 = "[VideoPipelineProcessor::process (HDR GPU)] Surface is invalid.";
      goto LABEL_71;
    }

    if (!v5[4].__shared_weak_owners_)
    {
      operator new();
    }

    v20 = *(&v5->__vftable + v58);
    v21 = [v20 commandBuffer];
    shared_weak_owners = v5[4].__shared_weak_owners_;
    v23 = *(&v4[v6 / 8 + 7] + 1);
    v24 = *&v4[v6 / 8 + 8];
    v25 = *(&v4[v6 / 8 + 8] + 1);
    v26 = *&v4[v6 / 8 + 9];
    v27 = *&v4[v6 / 8 + 10];
    v28 = *(&v4[v6 / 8 + 10] + 1);
    if (*v19)
    {
      IOSurfaceGetWidth(*v19);
      if (*v19)
      {
        IOSurfaceGetHeight(*v19);
      }
    }

    v11 = re::VideoHDRProcessor::processViaGPU(shared_weak_owners, v8 + 2, v19, &v4[v6 / 8 + 4], v21, v23, v24, v25, v26, v27, v28);

    v4 = a2;
LABEL_39:
    if (v11)
    {
      goto LABEL_66;
    }

    v59 += 22;
    v6 += 176;
    if (v57 == v6)
    {
      goto LABEL_54;
    }
  }

  v44 = *re::videoLogObjects(a1);
  a1 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
  if (!a1)
  {
    goto LABEL_66;
  }

  *buf = 0;
  v45 = "[VideoPipelineProcessor::process (HDR GPU)] Context is invalid.";
LABEL_71:
  _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, v45, buf, 2u);
LABEL_66:
  v46 = *re::videoLogObjects(a1);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "[VideoPipelineProcessor::process] Failed to process payload.", buf, 2u);
  }

  return 1;
}

uint64_t anonymous namespace::videoSurfaceAcceleratorCompletionCallback(uint64_t result, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      v4(result, *(a2 + 24));
    }

    if (!v3)
    {
      v16 = *(a2 + 8);
      if (v16)
      {
        v17 = std::__shared_weak_count::lock(v16);
        if (v17)
        {
          v18 = v17;
          v19 = *a2;
          if (*a2)
          {
            v20 = *(a2 + 48);
            if (v20)
            {
              v21 = std::__shared_weak_count::lock(v20);
              if (v21)
              {
                v22 = v21;
                v23 = *(a2 + 40);
                if (v23)
                {
                  v24 = re::VideoSurfaceAccelerator::histogram(v19, v23);
                  if (v24)
                  {
                    v25 = *re::videoLogObjects(v24);
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                    {
                      v36[0] = 67109120;
                      v36[1] = 0;
                      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "[videoSurfaceAcceleratorCompletionCallback] Cannot get histogram: %x", v36, 8u);
                    }
                  }
                }

                std::__shared_weak_count::__release_shared[abi:nn200100](v22);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }
      }

      if (*(a2 + 80))
      {
        v26 = *(a2 + 72);
        if (v26)
        {
          v27 = std::__shared_weak_count::lock(v26);
          if (v27)
          {
            v28 = v27;
            v29 = *(a2 + 64);
            if (v29)
            {
              v30 = *(a2 + 80);
              os_unfair_lock_lock(*(a2 + 64));
              memcpy((v29 + 472), v30, 0x17CuLL);
              atomic_store(1u, (v29 + 4));
              os_unfair_lock_unlock(v29);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v28);
          }
        }
      }

      if (*(a2 + 96))
      {
        v31 = *(a2 + 72);
        if (v31)
        {
          v32 = std::__shared_weak_count::lock(v31);
          if (v32)
          {
            v33 = v32;
            v34 = *(a2 + 64);
            if (v34)
            {
              v35 = *(a2 + 96);
              os_unfair_lock_lock(*(a2 + 64));
              memcpy((v34 + 472), v35, 0x1D0uLL);
              atomic_store(1u, (v34 + 4));
              os_unfair_lock_unlock(v34);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v33);
          }
        }
      }
    }

    v5 = *(a2 + 120);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(a2 + 136);
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(a2 + 152);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      v8 = *(a2 + 152);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    v9 = *(a2 + 136);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(a2 + 120);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = *(a2 + 104);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = *(a2 + 88);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = *(a2 + 72);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (*(a2 + 56))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a2 + 56));
    }

    *(a2 + 56) = 0;
    v14 = *(a2 + 48);
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (*(a2 + 32))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a2 + 32));
    }

    *(a2 + 32) = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    return MEMORY[0x1E6906520](a2, 0xE0C40DB9D907FLL);
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      v4(result, *(a2 + 24));
    }

    v5 = *(a2 + 32);
    if (v5)
    {
      v5(v3, *(a2 + 40));
    }

    if (!v3)
    {
      v9 = *(a2 + 8);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = v10;
          v12 = *a2;
          if (*a2)
          {
            v13 = *(a2 + 56);
            if (v13)
            {
              v14 = std::__shared_weak_count::lock(v13);
              if (v14)
              {
                v15 = v14;
                v16 = *(a2 + 48);
                if (v16)
                {
                  v17 = re::VideoSurfaceAccelerator::histogram(v12, v16);
                  if (v17)
                  {
                    v18 = *re::videoLogObjects(v17);
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                    {
                      v19[0] = 67109120;
                      v19[1] = 0;
                      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Cannot get histogram: %x", v19, 8u);
                    }
                  }
                }

                std::__shared_weak_count::__release_shared[abi:nn200100](v15);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }
      }
    }

    v6 = *(a2 + 72);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(a2 + 56);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    return (*(qword_1EE1C4868 + 40))();
  }

  return result;
}