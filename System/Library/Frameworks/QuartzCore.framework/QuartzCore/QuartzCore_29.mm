void CA::WindowServer::AccelServer::~AccelServer(CA::WindowServer::AccelServer *this)
{
  CA::WindowServer::AccelServer::~AccelServer(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1F54A8;
  *(this + 181) = &unk_1EF1F5710;
  v2 = *(this + 183);
  if (v2)
  {
    *(*(this + 12) + 328) = 0;
    CA::OGL::Renderer::~Renderer(v2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v2);
    *(this + 183) = 0;
    v3 = *(this + 182);
    (*(*v3 + 272))(v3, 1);
    (*(*v3 + 8))(v3);
    *(this + 182) = 0;
  }

  *(*(this + 12) + 26760) = 0;

  CA::WindowServer::IOMFBServer::~IOMFBServer(this);
}

CA::WindowServer::AccelServer *CA::WindowServer::AccelServer::AccelServer(CA::WindowServer::AccelServer *this, CA::WindowServer::IOMFBDisplay *a2, const __CFString *a3)
{
  values[2] = *MEMORY[0x1E69E9840];
  v5 = CA::WindowServer::Server::Server(this, a2, a3);
  *v5 = &unk_1EF2011D0;
  *(v5 + 71) = 0u;
  *(v5 + 288) = 1065353216;
  *(v5 + 148) = 0x7FF0000000000000;
  *(v5 + 1192) = 0u;
  *(v5 + 1320) = 0u;
  *(v5 + 1336) = 0u;
  *(v5 + 1352) = 0u;
  *(v5 + 172) = 0x3FD0000000000000;
  *(v5 + 179) = 0;
  *(v5 + 360) = 0;
  *(v5 + 1446) = *(v5 + 1446) & 0xF8 | 1;
  x_thread_init_mutex((v5 + 856), 1);
  pthread_mutex_init((this + 920), 0);
  pthread_cond_init((this + 984), 0);
  pthread_cond_init((this + 1032), 0);
  pthread_mutex_init((this + 1208), 0);
  pthread_cond_init((this + 1272), 0);
  pthread_mutex_lock((this + 856));
  CA::WindowServer::IOMFBServer::add_runloop_source(this, 0, 0);
  if (!*(this + 138))
  {
    v19 = *(this + 12);
    if (*(v19 + 25696))
    {
      if (*(v19 + 29495) == 1)
      {
        RunLoopSource = IOMobileFramebufferGetRunLoopSource();
        *(this + 138) = RunLoopSource;
        if (RunLoopSource)
        {
          CA::WindowServer::IOMFBServer::add_runloop_source(this, RunLoopSource, 0);
          IOMobileFramebufferEnableHotPlugDetectNotifications();
        }
      }
    }
  }

  if (!*(this + 145))
  {
    if (*(*(this + 12) + 25696))
    {
      v21 = IOMobileFramebufferSupportedFrameInfo();
      if (v21)
      {
        v22 = v21;
        v23 = 0;
        do
        {
          v24 = v23;
        }

        while (*(v21 + 8 * v23++));
        v26 = IOMobileFramebufferGetRunLoopSource();
        *(this + 145) = v26;
        if (v26)
        {
          CA::WindowServer::IOMFBServer::add_runloop_source(this, v26, 1);
          v27 = IOMobileFramebufferFrameInfo();
          v28 = *(this + 12);
          *(v28 + 29528) = v27 == 0;
          CA::WindowServer::IOMFBDisplay::collect_frame_info(buf, v28, 0);
          std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](buf, 0);
          CA::WindowServer::IOMFBServer::enable_frame_info_tag_list(this, off_1E6DF89D0, 9, v22, v24);
          if (CADeviceSupportsRTPLC::once[0] != -1)
          {
            dispatch_once(CADeviceSupportsRTPLC::once, &__block_literal_global_356);
          }

          if (CADeviceSupportsRTPLC::rtplc == 1)
          {
            v29 = off_1E6DF8A18;
            v30 = this;
            v31 = 5;
LABEL_53:
            CA::WindowServer::IOMFBServer::enable_frame_info_tag_list(v30, v29, v31, v22, v24);
            goto LABEL_3;
          }

          if (CADeviceSupportsBandwidthStatistics::once != -1)
          {
            dispatch_once(&CADeviceSupportsBandwidthStatistics::once, &__block_literal_global_390);
          }

          if (CADeviceSupportsBandwidthStatistics::bw_stats == 1)
          {
            v29 = off_1E6DF8A40;
            v30 = this;
            v31 = 4;
            goto LABEL_53;
          }
        }
      }
    }
  }

LABEL_3:
  if (CADeviceHasNonUIBuild::once != -1)
  {
    dispatch_once(&CADeviceHasNonUIBuild::once, &__block_literal_global_187);
  }

  if ((CADeviceHasNonUIBuild::nonui & 1) == 0)
  {
    v6 = IOMobileFramebufferGetRunLoopSource();
    *(this + 147) = v6;
    if (v6)
    {
      CA::WindowServer::IOMFBServer::add_runloop_source(this, v6, 1);
      v7 = iomfb_relbuf_info(*(*(this + 12) + 25696), CA::WindowServer::IOMFBServer::relbuf_info_callback, this, 1);
      *(*(this + 12) + 29529) = v7 == 0;
      if (v7)
      {
        v8 = v7;
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v9 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(*(this + 12) + 24);
          *buf = 67109376;
          *&buf[4] = v10;
          LOWORD(v37) = 1024;
          *(&v37 + 2) = v8;
          _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "Display %u relbuf info notification enable failed: 0x%x", buf, 0xEu);
        }
      }
    }
  }

  if (CADeviceSupportsBrightnessTransactions::once != -1)
  {
    dispatch_once(&CADeviceSupportsBrightnessTransactions::once, &__block_literal_global_123);
  }

  v11 = *(this + 12);
  v12 = ((*(v11 + 672) & 0x1C00) == 0) & CADeviceSupportsBrightnessTransactions::supports_brightness_transaction;
  *(v11 + 29568) = v12;
  if (v12 == 1)
  {
    IOMobileFramebufferSetBrightnessControlCallback();
  }

  (*(*this + 352))(this, 0);
  if (*(a2 + 29495) == 1 && (*(a2 + 29513) & 1) == 0)
  {
    Mutable = CFArrayCreateMutable(0, 1, MEMORY[0x1E695E9C0]);
    v34 = 138;
    valuePtr = 32;
    *buf = @"PrimaryUsagePage";
    v37 = @"PrimaryUsage";
    v14 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    values[1] = CFNumberCreate(v14, kCFNumberSInt32Type, &v34);
    v15 = CFDictionaryCreate(0, buf, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 2; ++i)
    {
      CFRelease(values[i]);
    }

    CFArrayAppendValue(Mutable, v15);
    CFRelease(v15);
    if (Mutable)
    {
      if (CFArrayGetCount(Mutable) < 1)
      {
        CFRelease(Mutable);
      }

      else
      {
        CA::WindowServer::IOMFBServer::add_runloop_source(this, 0, 0);
        v17 = *(this + 135);
        v18 = *MEMORY[0x1E695E8E0];
        *buf = MEMORY[0x1E69E9820];
        v37 = 0x40000000;
        v38 = ___ZN2CA12WindowServer11IOMFBServerC2EPNS0_12IOMFBDisplayEPK10__CFString_block_invoke;
        v39 = &__block_descriptor_tmp_91;
        v40 = this;
        v41 = Mutable;
        CFRunLoopPerformBlock(v17, v18, buf);
      }
    }
  }

  if ((*(a2 + 29495) & 1) == 0 && (*(a2 + 336) & 0x1C00) != 0x1000)
  {
    CA::Render::add_observer(0x19u, 0, CA::WindowServer::IOMFBServer::flush_irdc, this, 0);
  }

  CA::Render::add_observer(0x29u, 0, CA::WindowServer::IOMFBServer::post_power_log, this, 0);
  CA::Render::add_observer(0x2Au, 0, CA::WindowServer::IOMFBServer::post_max_rate_power_log, this, 0);
  CA::Render::add_observer(0x2Du, 0, CA::WindowServer::IOMFBServer::post_render_statistics_power_log, this, 0);
  CA::Render::add_observer(0x34u, 0, CA::WindowServer::IOMFBServer::post_brightness_hotplug, this, 0);
  CA::Render::add_observer(0x35u, 0, CA::WindowServer::IOMFBServer::post_power_notification, this, 0);
  if ((*(a2 + 160) & 0x40) != 0)
  {
    CA::Render::add_observer(0x3Cu, 0, CA::WindowServer::IOMFBServer::post_flipbook_state_notification, this, 0);
  }

  CA::Render::add_observer(0x3Du, 0, CA::WindowServer::IOMFBServer::check_display_blanked, this, 0);
  if ((*(*(this + 12) + 640) & 0x10) != 0)
  {
    CA::Render::add_observer(0x36u, 0, CA::WindowServer::IOMFBServer::register_frame_interval_range, this, 0);
    CA::Render::add_observer(0x37u, 0, CA::WindowServer::IOMFBServer::register_frame_interval_reasons, this, 0);
    CA::Render::add_observer(0x38u, 0, CA::WindowServer::IOMFBServer::request_frame_phase_shift, this, 0);
    CA::Render::add_observer(0x2Bu, 0, CA::WindowServer::IOMFBServer::post_frame_rate_power_log, this, 0);
    CA::Render::add_observer(0x47u, 0, CA::WindowServer::IOMFBServer::get_display_debug_properties, this, 0);
  }

  pthread_mutex_unlock((this + 856));
  *this = &unk_1EF1F54A8;
  *(this + 181) = &unk_1EF1F5710;
  if ((CA::WindowServer::AccelServer::AccelServer(CA::WindowServer::IOMFBDisplay *,__CFString const*)::initialized & 1) == 0)
  {
    getenv("CA_ENABLE_OGL");
    CA::WindowServer::AccelServer::AccelServer(CA::WindowServer::IOMFBDisplay *,__CFString const*)::initialized = 1;
  }

  v32 = *(this + 12);
  *(v32 + 26760) = this + 1448;
  if ((*(v32 + 672) & 0x1C00) == 0)
  {
    CA::WindowServer::AccelServer::renderer(this);
  }

  return this;
}

char *CA::Render::KeyValue::show(char *result, X::Stream *a2, int a3, uint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    v7 = result;
    v8 = [(__CFString *)CAAtomGetString(*(result + 4)) cStringUsingEncoding:4];
    X::Stream::printf(a2, "(%s ", v8);
    v9 = *(v7 + 3);
    if (v9)
    {
      (*(*v9 + 40))(v9, a2, (a3 + 1), a4);
    }

    else
    {
      X::Stream::printf(a2, "nil");
    }

    return X::Stream::printf(a2, ")");
  }

  return result;
}

char *CA::Render::KeyPathValue::show(char *result, void **a2, int a3, uint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    v7 = result;
    v8 = CA::Render::key_path_copy_string(*(result + 2), a2);
    X::Stream::printf(a2, "(%s ", v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(v7 + 3);
    if (v9)
    {
      (*(*v9 + 40))(v9, a2, (a3 + 1), a4);
    }

    else
    {
      X::Stream::printf(a2, "nil");
    }

    return X::Stream::printf(a2, ")");
  }

  return result;
}

uint64_t CAIOSurfaceCreate(__IOSurface *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (CAIOSurfaceGetTypeID::once != -1)
  {
    dispatch_once(&CAIOSurfaceGetTypeID::once, &__block_literal_global_2576);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v3 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
    if (v3)
    {
      v3 = CA::Render::Surface::Surface(v3, a1, -1, 3, 0, 0, 0);
    }

    *(Instance + 16) = v3;
  }

  return Instance;
}

CFStringRef caIOSurfaceCopyDebugDescription(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    return CFStringCreateWithFormat(v2, 0, @"<CAIOSurface %p", v1);
  }

  return result;
}

uint64_t caIOSurfaceFinalize(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

uint64_t CAIOSurfaceGetTypeID()
{
  if (CAIOSurfaceGetTypeID::once != -1)
  {
    dispatch_once(&CAIOSurfaceGetTypeID::once, &__block_literal_global_2576);
  }

  return CAIOSurfaceGetTypeID::type;
}

CA::Render::Surface *CAIOSurfaceRetainFrontTexture(CA::Render::Surface *result)
{
  if (result)
  {
    v1 = result;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
    if (result)
    {
      return CA::Render::Surface::Surface(result, *(v1 + 2), 2162688);
    }
  }

  return result;
}

uint64_t CAIOSurfaceGetIOSurface(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  v2 = *(v1 + 128);
  if (v2)
  {
    CFRetain(*(v1 + 128));
  }

  return v2;
}

CA::Render *CAIOSurfaceReloadColorAttributes(CA::Render *result)
{
  if (result)
  {
    return CA::Render::Surface::reload_iosurface_color_attributes(*(result + 2), 0x20);
  }

  return result;
}

void sub_183C5EA94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void *CA::OGL::PingPongState::bind_source(CA::OGL::PingPongState *this, _DWORD *a2, int *a3)
{
  v4 = *(this + 16);
  v5 = v4;
  v6 = this + 8 * (v4 & 1) + 88;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = this + 8;
  }

  v8 = *v7;
  *a2 = *(*v7 + 48);
  a2[1] = *(v8 + 52);
  if (a3)
  {
    *v7 = (*(**this + 736))();
    CA::OGL::Context::release_surface(*this, v8);
    v8 = *v7;
  }

  v9 = *this;

  return CA::OGL::Context::bind_surface(v9, v8, 0, 1u, 1, 0.0);
}

uint64_t CA::OGL::PingPongState::replicate_edges(CA::OGL::PingPongState *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  *(this + 18) = 0;
  v15 = this + 1386;
  *(this + 14) = this + 1386;
  *(this + 120) = xmmword_183E20E50;
  if (*(this + 19) <= 0x1FuLL)
  {
    *(this + 692) |= 0x20u;
    v16 = a7;
    v17 = a8;
    CA::OGL::Context::array_flush(this);
    a8 = v17;
    a7 = v16;
    *(this + 18) = 0;
    *(this + 14) = v15;
    *(this + 120) = xmmword_183E20E50;
  }

  v18 = a8 + 0.5;
  v19 = a7 + 0.5;
  CA::OGL::Context::array_rect(this, a3 - a2, a4, a3, a6);
  v20 = *(this + 17) + 48 * *(this + 18);
  *(v20 - 176) = v19;
  *(v20 - 172) = v18;
  *(v20 - 128) = v19;
  *(v20 - 124) = v18;
  *(v20 - 80) = v19;
  *(v20 - 76) = a10 + -0.5;
  *(v20 - 32) = v19;
  *(v20 - 28) = a10 + -0.5;
  CA::OGL::Context::array_rect(this, a5, a4, a5 + a2, a6);
  v21 = *(this + 17) + 48 * *(this + 18);
  *(v21 - 176) = a9 + -0.5;
  *(v21 - 172) = v18;
  *(v21 - 128) = a9 + -0.5;
  *(v21 - 124) = v18;
  *(v21 - 80) = a9 + -0.5;
  *(v21 - 76) = a10 + -0.5;
  *(v21 - 32) = a9 + -0.5;
  *(v21 - 28) = a10 + -0.5;
  CA::OGL::Context::array_rect(this, a3, a4 - a2, a5, a4);
  v22 = *(this + 17) + 48 * *(this + 18);
  *(v22 - 176) = v19;
  *(v22 - 172) = v18;
  *(v22 - 128) = a9 + -0.5;
  *(v22 - 124) = v18;
  *(v22 - 80) = a9 + -0.5;
  *(v22 - 76) = v18;
  *(v22 - 32) = v19;
  *(v22 - 28) = v18;
  CA::OGL::Context::array_rect(this, a3, a6, a5, a6 + a2);
  v23 = *(this + 17) + 48 * *(this + 18);
  *(v23 - 176) = v19;
  *(v23 - 172) = a10 + -0.5;
  *(v23 - 128) = a9 + -0.5;
  *(v23 - 124) = a10 + -0.5;
  *(v23 - 80) = a9 + -0.5;
  *(v23 - 76) = a10 + -0.5;
  *(v23 - 32) = v19;
  *(v23 - 28) = a10 + -0.5;
  CA::OGL::Context::array_rect(this, a3 - a2, a4 - a2, a3, a4);
  v24 = *(this + 17) + 48 * *(this + 18);
  *(v24 - 176) = v19;
  *(v24 - 172) = v18;
  *(v24 - 128) = v19;
  *(v24 - 124) = v18;
  *(v24 - 80) = v19;
  *(v24 - 76) = v18;
  *(v24 - 32) = v19;
  *(v24 - 28) = v18;
  CA::OGL::Context::array_rect(this, a5, a4 - a2, a5 + a2, a4);
  v25 = *(this + 17) + 48 * *(this + 18);
  *(v25 - 176) = a9 + -0.5;
  *(v25 - 172) = v18;
  *(v25 - 128) = a9 + -0.5;
  *(v25 - 124) = v18;
  *(v25 - 80) = a9 + -0.5;
  *(v25 - 76) = v18;
  *(v25 - 32) = a9 + -0.5;
  *(v25 - 28) = v18;
  CA::OGL::Context::array_rect(this, a3 - a2, a6, a3, a6 + a2);
  v26 = *(this + 17) + 48 * *(this + 18);
  *(v26 - 176) = v19;
  *(v26 - 172) = a10 + -0.5;
  *(v26 - 128) = v19;
  *(v26 - 124) = a10 + -0.5;
  *(v26 - 80) = v19;
  *(v26 - 76) = a10 + -0.5;
  *(v26 - 32) = v19;
  *(v26 - 28) = a10 + -0.5;
  CA::OGL::Context::array_rect(this, a5, a6, a5 + a2, a6 + a2);
  v27 = *(this + 17) + 48 * *(this + 18);
  *(v27 - 176) = a9 + -0.5;
  *(v27 - 172) = a10 + -0.5;
  *(v27 - 128) = a9 + -0.5;
  *(v27 - 124) = a10 + -0.5;
  *(v27 - 80) = a9 + -0.5;
  *(v27 - 76) = a10 + -0.5;
  *(v27 - 32) = a9 + -0.5;
  *(v27 - 28) = a10 + -0.5;

  return CA::OGL::Context::array_flush(this);
}

void CA::OGL::BlurState::downsample_blur_4(float32x2_t *this, float a2, float a3, const float *a4, const float *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *this;
  if (this[15].i8[0])
  {
    v10 = 16;
  }

  else
  {
    v10 = 32;
  }

  if (CA::OGL::PingPongState::attach_dest(this, 1, v10))
  {
    v11 = this[4].i16[0];
    v12 = v11;
    v13 = &this[(v11 & 1) + 11];
    if (v12 < 0)
    {
      v13 = this + 1;
    }

    v14 = *v13;
    v15 = *(*v13 + 48);
    v16 = *(*v13 + 52);
    v36[0] = v15;
    v36[1] = v16;
    CA::OGL::Context::bind_surface(*this, v14, 0, 1u, 1, 0.0);
    v17 = 0;
    v18 = *(*(v9 + 16) + 96);
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v19 = -2;
    do
    {
      *(&v33 + v17 * 4) = vmul_f32(*&a4[v17], v18);
      v19 += 2;
      v17 += 2;
    }

    while (v19 < 0xA);
    v20 = a4[10];
    if (v20 <= a4[11])
    {
      v20 = a4[11];
    }

    CA::OGL::BlurState::process_edges(this, v20 + v20, a2, a3, v36);
    *(*(v9 + 16) + 16) = 32;
    if ((*(*v9 + 1072))(v9))
    {
      v21 = v34;
      *(v9 + 160) = v33;
      *(v9 + 176) = v21;
      *(v9 + 192) = v35;
      *(v9 + 256) = unk_183E22A68;
      *(v9 + 144) = 0;
      *(v9 + 112) = v9 + 1386;
      *(v9 + 120) = xmmword_183E20E50;
      v32 = 0;
      CA::OGL::PingPongState::render_pass(this, v15, v16, 0, &v32, a2, a3, 0.0, 0.0);
      CA::OGL::Context::array_flush(v9);
      v22 = this[4].i16[0];
      v23 = v22;
      v24 = &this[(v22 & 1) + 11];
      if (v23 < 0)
      {
        v24 = this + 1;
      }

      CA::OGL::Context::unbind_surface(*this, *v24, 0);
      *(*(v9 + 16) + 16) = 0;
      CA::OGL::Context::pop_surface(*this, v25, v26, v27, v28, v29, v30, v31);
      ++this[4].i16[0];
    }
  }
}

void CA::OGL::BlurState::convert_linear_to_srgb(CA::OGL::BlurState *this, int a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *this;
  *(*(*this + 16) + 16) = 98;
  *(*(v3 + 16) + 17) = 42;
  if (a2)
  {
    v4 = *(v3 + 672);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v17[0] = 0;
    CA::OGL::PingPongState::render_pass_final_dest(*this, v5, v6, 0, v17);
  }

  else
  {
    v7 = *(this + (*(this + 16) & 1) + 11);
    CA::OGL::Context::push_surface(v3, v7, 0, 64, 0);
    *(v3 + 144) = 0;
    *(v3 + 112) = v3 + 1386;
    *(v3 + 120) = xmmword_183E20E50;
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v17[0] = 0;
    CA::OGL::PingPongState::render_pass(this, v8, v9, 0, v17, 1.0, 1.0, 0.0, 0.0);
    CA::OGL::Context::array_flush(v3);
    CA::OGL::Context::pop_surface(v3, v10, v11, v12, v13, v14, v15, v16);
  }

  *(*(v3 + 16) + 17) = 0;
  *(*(v3 + 16) + 16) = 0;
}

uint64_t CA::OGL::BlurState::upsample_resolve_sdf(CA::OGL::PingPongState *a1, float *a2, int32x2_t *a3, double a4)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v43[0] = 0;
  CA::OGL::PingPongState::bind_source(a1, v43, ((*(a1 + 120) >> 1) & 1));
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = v9 - SLODWORD(v43[0]);
  v12 = v10 - SHIDWORD(v43[0]);
  v13 = *(a1 + 14);
  v14 = *(a1 + 15);
  v15 = v13 - SLODWORD(v43[0]);
  v16 = v14 - SHIDWORD(v43[0]);
  v17 = a4 / *(a1 + 20);
  v18 = a4 / *(a1 + 21);
  v19 = a2[1];
  v20 = *a2 + (v9 * v17);
  v21 = v19 + (v10 * v18);
  v22 = *a2 + (v13 * v17);
  v23 = v19 + (v14 * v18);
  v24 = *(v8 + 64);
  *(v8 + 64) = 1;
  v25 = *(v8 + 16);
  v26 = *(v25 + 16);
  *(v25 + 16) = 67;
  *(*(v8 + 16) + 497) |= 1u;
  *(*(v8 + 16) + 496) = 3;
  v41[0] = 0;
  v41[1] = 0;
  v27 = *(*(v8 + 656) + 8);
  v42[1] = 0;
  v42[2] = 0;
  v42[0] = v27;
  while (CA::ShapeIterator::iterate(v42, v41))
  {
    *(v8 + 144) = 0;
    *(v8 + 112) = v8 + 1386;
    *(v8 + 120) = xmmword_183E20E50;
    v28 = vclez_s32(v41[1]);
    if ((vpmax_u32(v28, v28).u32[0] & 0x80000000) == 0)
    {
      v29 = a3[1];
      v30 = vclez_s32(v29);
      if ((vpmax_u32(v30, v30).u32[0] & 0x80000000) != 0 || (*&v31 = vmax_s32(v41[0], *a3), v32 = vsub_s32(vmin_s32(vadd_s32(v41[0], v41[1]), vadd_s32(*a3, v29)), *&v31), v33 = vclez_s32(v32), (vpmax_u32(v33, v33).u32[0] & 0x80000000) != 0))
      {
        v41[1] = 0;
      }

      else
      {
        *(&v31 + 1) = v32;
        *v41[0].i8 = v31;
      }
    }

    *(v8 + 32) = *v41[0].i8;
    CA::OGL::Context::array_rect(v8, v20, v21, v22, v23);
    v34 = *(*(v8 + 16) + 8);
    v35 = *(v8 + 136) + 48 * *(v8 + 144);
    *(v35 - 160) = v34;
    *(v35 - 112) = v34;
    *(v35 - 64) = v34;
    *(v35 - 16) = v34;
    v36 = *(v8 + 136) + 48 * *(v8 + 144);
    *(v36 - 176) = v11;
    *(v36 - 172) = v12;
    *(v36 - 128) = v15;
    *(v36 - 124) = v12;
    *(v36 - 80) = v15;
    *(v36 - 76) = v16;
    *(v36 - 32) = v11;
    *(v36 - 28) = v16;
    CA::OGL::Context::array_flush(v8);
  }

  if ((v24 & 1) == 0)
  {
    *(v8 + 64) = 0;
  }

  v37 = *(a1 + 16);
  v38 = v37;
  v39 = (a1 + 8 * (v37 & 1) + 88);
  if (v38 < 0)
  {
    v39 = (a1 + 8);
  }

  result = CA::OGL::Context::unbind_surface(*a1, *v39, 0);
  *(*(v8 + 16) + 497) &= ~1u;
  *(*(v8 + 16) + 16) = v26;
  return result;
}

void CA::OGL::DownsampleState::asg(float32x2_t *this, int a2, float64x2_t *a3, float a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v8 = this[6].f32[0];
  v9 = this[6].f32[1];
  v10 = this[7].f32[0];
  v11 = this[7].f32[1];
  if (a2)
  {
    this[6].f32[1] = v9 * a4;
    this[7].f32[1] = v11 * a4;
  }

  else
  {
    this[6].f32[0] = v8 * a4;
    this[7].f32[0] = v10 * a4;
  }

  v12 = *this;
  if (a3)
  {
LABEL_25:
    if (fabsf(a4 + -0.75) >= 0.001)
    {
      v34 = *(v12 + 16);
      if (fabsf(a4 + -0.5) >= 0.001)
      {
        v35 = 113;
      }

      else
      {
        v35 = 115;
      }
    }

    else
    {
      v34 = *(v12 + 16);
      v35 = 114;
    }

    *(v34 + 16) = v35;
    v36 = this[4].i16[0];
    v37 = v36;
    v38 = &this[(v36 & 1) + 11];
    if (v37 < 0)
    {
      v38 = this + 1;
    }

    v39 = *(*v38 + 48);
    v40 = *(*v38 + 52);
    CA::OGL::Context::bind_surface(*this, *v38, 0, 1u, 1, 0.0);
    v41 = v8 - v39;
    v42 = v9 - v40;
    v43 = v10 - v39;
    v44 = v11 - v40;
    v46 = 1.0;
    if (a2)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = 1.0;
    }

    if (!a2)
    {
      v46 = 0.0;
    }

    *(v12 + 160) = v47;
    *(v12 + 164) = v46;
    v45 = a4 * 3.14159265;
    *(v12 + 240) = v45;
    if (a3)
    {
      v67 = 0u;
      v48 = *(*(v12 + 656) + 8);
      v64.i64[0] = v12;
      v64.i64[1] = v48;
      v66 = 0u;
      v65 = 0;
      WORD4(v66) = 256;
      CA::OGL::Context::ClippedArray::start(&v64);
      v63[0] = 0;
      v63[1] = 0;
      while (CA::OGL::Context::ClippedArray::next_rect(&v64, v63))
      {
        CA::OGL::Context::array_quad(v12, a3, a3 + 2, a3 + 4, a3 + 6);
        v49 = *(*(v12 + 16) + 8);
        v50 = *(v12 + 136) + 48 * *(v12 + 144);
        *(v50 - 160) = v49;
        *(v50 - 112) = v49;
        *(v50 - 64) = v49;
        *(v50 - 16) = v49;
        v51 = *(v12 + 136) + 48 * *(v12 + 144);
        *(v51 - 176) = v41;
        *(v51 - 172) = v42;
        *(v51 - 128) = v43;
        *(v51 - 124) = v42;
        *(v51 - 80) = v43;
        *(v51 - 76) = v44;
        *(v51 - 32) = v41;
        *(v51 - 28) = v44;
      }
    }

    else
    {
      *(v12 + 144) = 0;
      *(v12 + 112) = v12 + 1386;
      *(v12 + 120) = xmmword_183E20E50;
      CA::OGL::Context::array_rect(v12, this[6].f32[0], this[6].f32[1], this[7].f32[0], this[7].f32[1]);
      v52 = *(v12 + 136) + 48 * *(v12 + 144);
      *(v52 - 176) = v41;
      *(v52 - 172) = v42;
      *(v52 - 128) = v43;
      *(v52 - 124) = v42;
      *(v52 - 80) = v43;
      *(v52 - 76) = v44;
      *(v52 - 32) = v41;
      *(v52 - 28) = v44;
      CA::OGL::Context::array_flush(v12);
      *(*(v12 + 16) + 16) = 1;
      CA::OGL::PingPongState::replicate_edges(*this, 8.0, this[6].f32[0], this[6].f32[1], this[7].f32[0], this[7].f32[1], v41, v42, v43, v44);
    }

    v53 = this[4].i16[0];
    v54 = v53;
    v55 = &this[(v53 & 1) + 11];
    if (v54 < 0)
    {
      v55 = this + 1;
    }

    CA::OGL::Context::unbind_surface(*this, *v55, 0);
    *(*(v12 + 16) + 16) = 0;
    if (!a3)
    {
      CA::OGL::Context::pop_surface(*this, v56, v57, v58, v59, v60, v61, v62);
      ++this[4].i16[0];
    }

    return;
  }

  v13 = (this[4].i16[0] & 1) == 0;
  v14 = this[6];
  v15 = vsub_f32(this[7], v14);
  v16 = vceqz_f32(v15);
  v17.i64[0] = v16.i32[0];
  v17.i64[1] = v16.i32[1];
  if ((vorrq_s8(vdupq_laneq_s64(v17, 1), v17).u64[0] & 0x8000000000000000) != 0 || (v18 = vmvn_s8(vceq_f32(v15, v15)), v19.i64[0] = v18.i32[0], v19.i64[1] = v18.i32[1], (vorrq_s8(vdupq_laneq_s64(v19, 1), v19).u64[0] & 0x8000000000000000) != 0))
  {
    v64 = 0uLL;
    v26 = 0;
    v25 = -1;
  }

  else
  {
    v20 = vcvtq_f64_f32(v14);
    v21 = vmaxnmq_f64(v20, vdupq_n_s64(0xC1BFFFFFFF000000));
    v22 = vminnmq_f64(vaddq_f64(v20, vcvtq_f64_f32(v15)), vdupq_n_s64(0x41C0000000000000uLL));
    v23 = vcvtmq_s64_f64(v21);
    v24 = vsubq_s64(vcvtpq_s64_f64(v22), v23);
    v64 = vuzp1q_s32(v23, v24);
    v25 = vadd_s32(vmovn_s64(v23), -1);
    v26 = vmovn_s64(v24);
  }

  if (this[4].i8[2] == 1)
  {
    v27 = v26.i32[0];
    if (v26.i32[0] <= v26.i32[1])
    {
      v28 = v26.i32[1];
    }

    else
    {
      v28 = v26.i32[0];
    }

    if (v26.i32[0] >= v26.i32[1])
    {
      v27 = v26.i32[1];
    }

    if (v28 <= 1073741822 && v27 >= 1)
    {
      v30 = vadd_s32(v26, 0x200000002);
      v31 = vclez_s32(v30);
      if (vorr_s8(v31, vdup_lane_s32(v31, 1)).u8[0])
      {
        v32 = -1;
      }

      else
      {
        v32 = 0;
      }

      *v64.i8 = v25;
      v64.u64[1] = vbic_s8(v30, vdup_n_s32(v32));
    }
  }

  if (CA::OGL::PingPongState::create_surface(this, v13, &v64))
  {
    v33 = this[v13 + 11];
    (*(**this + 760))(*this, v33, 0, 0);
    CA::OGL::Context::push_surface(*this, v33, 0, 64, 0);
    goto LABEL_25;
  }
}

void CA::OGL::DownsampleState::downsample4(float32x2_t *this, float a2, float a3, const float *a4, const float *a5)
{
  v8 = *this;
  if (!CA::OGL::PingPongState::attach_dest(this, 1, 0))
  {
    return;
  }

  *(*(v8 + 16) + 16) = 27;
  v9 = this[4].i16[0];
  v10 = v9;
  v11 = &this[(v9 & 1) + 11];
  if (v10 < 0)
  {
    v11 = this + 1;
  }

  v12 = *(*v11 + 48);
  CA::OGL::Context::bind_surface(*this, *v11, 0, 1u, 1, 0.0);
  v13 = *(v8 + 16);
  v47 = *(v13 + 96);
  v48 = *(v13 + 100);
  v14 = vneg_f32(vcvt_f32_s32(v12));
  v15 = vmla_f32(v14, __PAIR64__(LODWORD(a3), LODWORD(a2)), this[6]);
  v45 = *a4;
  v46 = *(a4 + 4);
  v16 = vmla_f32(v14, __PAIR64__(LODWORD(a3), LODWORD(a2)), this[7]);
  v50 = v15;
  v52 = v16;
  if ((*(*v8 + 1072))(v8))
  {
    v17.i64[0] = __PAIR64__(v48, v47);
    v17.i64[1] = __PAIR64__(v48, v47);
    *(v8 + 160) = vmulq_f32(v45, v17);
    *(v8 + 176) = vmulq_f32(v46, v17);
    *(v8 + 240) = *a5;
  }

  else
  {
    if (*a5 >= 0.0 && a5[1] >= 0.0 && a5[2] >= 0.0 && a5[3] >= 0.0)
    {
      v29 = 0;
      v30 = 0;
      *(*(v8 + 16) + 16) = 3;
      *(*(v8 + 16) + 496) = 12;
      *(v8 + 144) = 0;
      v31 = v8 + 1386;
      *(v8 + 112) = v8 + 1386;
      *(v8 + 120) = xmmword_183E20E50;
      do
      {
        v32 = 6;
        if (!*(v8 + 108))
        {
          v32 = 4;
        }

        if ((v29 + 4) > *(v8 + 152) || (v33 = *(v8 + 128)) != 0 && *(v8 + 120) + v32 > v33)
        {
          *(v8 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(v8);
          *(v8 + 144) = 0;
          *(v8 + 112) = v31;
          *(v8 + 120) = xmmword_183E20E50;
        }

        _S0 = a5[v30];
        __asm { FCVT            H0, S0 }

        v39 = LODWORD(_S0);
        CA::OGL::Context::array_rect(v8, this[6].f32[0], this[6].f32[1], this[7].f32[0], this[7].f32[1]);
        v40 = *(v8 + 136) + 48 * *(v8 + 144);
        *(v40 - 160) = 0x1000100010001 * v39;
        *(v40 - 112) = 0x1000100010001 * v39;
        *(v40 - 64) = 0x1000100010001 * v39;
        *(v40 - 16) = 0x1000100010001 * v39;
        v29 = *(v8 + 144);
        v41 = *&a4[2 * v30];
        v42 = *(v8 + 136) + 48 * v29;
        v43 = vadd_f32(v41, v50);
        v44 = vadd_f32(v41, v52);
        *(v42 - 176) = v43;
        *(v42 - 128) = __PAIR64__(v43.u32[1], v44.u32[0]);
        *(v42 - 80) = v44;
        v43.i32[1] = v44.i32[1];
        *(v42 - 32) = v43;
        if (!v30)
        {
          CA::OGL::Context::array_flush(v8);
          v29 = 0;
          *(*(v8 + 16) + 497) |= 1u;
          *(v8 + 144) = 0;
          *(v8 + 112) = v31;
          *(v8 + 120) = xmmword_183E20E50;
        }

        ++v30;
      }

      while (v30 != 4);
      CA::OGL::Context::array_flush(v8);
      *(*(v8 + 16) + 497) &= ~1u;
      goto LABEL_12;
    }

    *(*(v8 + 16) + 16) = 1;
  }

  *(v8 + 144) = 0;
  *(v8 + 112) = v8 + 1386;
  *(v8 + 120) = xmmword_183E20E50;
  CA::OGL::Context::array_rect(v8, this[6].f32[0], this[6].f32[1], this[7].f32[0], this[7].f32[1]);
  v18 = *(v8 + 136) + 48 * *(v8 + 144);
  *(v18 - 176) = v50;
  *(v18 - 128) = __PAIR64__(v50.u32[1], v52.u32[0]);
  *(v18 - 80) = v52;
  *(v18 - 32) = __PAIR64__(v52.u32[1], v50.u32[0]);
  CA::OGL::Context::array_flush(v8);
LABEL_12:
  *(*(v8 + 16) + 16) = 1;
  CA::OGL::PingPongState::replicate_edges(*this, 2.0, this[6].f32[0], this[6].f32[1], this[7].f32[0], this[7].f32[1], v50.f32[0], v50.f32[1], v52.f32[0], v52.f32[1]);
  v19 = this[4].i16[0];
  v20 = v19;
  v21 = &this[(v19 & 1) + 11];
  if (v20 < 0)
  {
    v21 = this + 1;
  }

  CA::OGL::Context::unbind_surface(*this, *v21, 0);
  *(*(v8 + 16) + 16) = 0;
  CA::OGL::Context::pop_surface(*this, v22, v23, v24, v25, v26, v27, v28);
  ++this[4].i16[0];
}

void CA::OGL::DownsampleState::downsample6(float32x2_t *this, float a2, float a3, const float *a4, const float *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *this;
  if (CA::OGL::PingPongState::attach_dest(this, 1, 0))
  {
    *(v8[2] + 16) = 28;
    v9 = this[4].i16[0];
    v10 = v9;
    v11 = &this[(v9 & 1) + 11];
    if (v10 < 0)
    {
      v11 = this + 1;
    }

    v12 = *(*v11 + 48);
    CA::OGL::Context::bind_surface(*this, *v11, 0, 1u, 1, 0.0);
    v13 = 0;
    v14 = *(v8[2] + 96);
    v35 = 0uLL;
    v36 = 0;
    v15 = -2;
    do
    {
      *(&v35 + v13 * 4) = vmul_f32(*&a4[v13], v14);
      v15 += 2;
      v13 += 2;
    }

    while (v15 < 4);
    v16 = vneg_f32(vcvt_f32_s32(v12));
    v17 = vmla_f32(v16, __PAIR64__(LODWORD(a3), LODWORD(a2)), this[6]);
    v18 = vmla_f32(v16, __PAIR64__(LODWORD(a3), LODWORD(a2)), this[7]);
    v32 = v17;
    v34 = v18;
    if ((*(*v8 + 1072))(v8))
    {
      *(v8 + 10) = v35;
      v8[22] = v36;
      v19 = *(a5 + 2);
      v8[30] = *a5;
      *(v8 + 62) = v19;
    }

    else
    {
      *(v8[2] + 16) = 1;
    }

    v8[18] = 0;
    v8[14] = v8 + 1386;
    *(v8 + 15) = xmmword_183E20E50;
    CA::OGL::Context::array_rect(v8, this[6].f32[0], this[6].f32[1], this[7].f32[0], this[7].f32[1]);
    v20 = v8[17] + 48 * v8[18];
    *(v20 - 176) = v32;
    *(v20 - 128) = __PAIR64__(v32.u32[1], v34.u32[0]);
    *(v20 - 80) = v34;
    *(v20 - 32) = __PAIR64__(v34.u32[1], v32.u32[0]);
    CA::OGL::Context::array_flush(v8);
    *(v8[2] + 16) = 1;
    CA::OGL::PingPongState::replicate_edges(*this, 2.0, this[6].f32[0], this[6].f32[1], this[7].f32[0], this[7].f32[1], v32.f32[0], v32.f32[1], v34.f32[0], v34.f32[1]);
    v21 = this[4].i16[0];
    v22 = v21;
    v23 = &this[(v21 & 1) + 11];
    if (v22 < 0)
    {
      v23 = this + 1;
    }

    CA::OGL::Context::unbind_surface(*this, *v23, 0);
    *(v8[2] + 16) = 0;
    CA::OGL::Context::pop_surface(*this, v24, v25, v26, v27, v28, v29, v30);
    ++this[4].i16[0];
  }
}

BOOL CA::OGL::DownsampleState::upsample(float32x2_t *this, float a2, float a3, const float *a4)
{
  v6 = *this;
  v7 = CA::OGL::PingPongState::attach_dest(this, 1, 0);
  if (v7)
  {
    *(*(v6 + 16) + 16) = 30;
    v8 = this[4].i16[0];
    v9 = v8;
    v10 = &this[(v8 & 1) + 11];
    if (v9 < 0)
    {
      v10 = this + 1;
    }

    v11 = *(*v10 + 48);
    CA::OGL::Context::bind_surface(*this, *v10, 0, 1u, 1, 0.0);
    v12 = vneg_f32(vcvt_f32_s32(v11));
    v13 = vmla_f32(v12, __PAIR64__(LODWORD(a3), LODWORD(a2)), this[6]);
    v14 = vmla_f32(v12, __PAIR64__(LODWORD(a3), LODWORD(a2)), this[7]);
    v28 = v13;
    v30 = v14;
    if ((*(*v6 + 1072))(v6))
    {
      *(v6 + 160) = *a4;
      *(v6 + 144) = 0;
      *(v6 + 112) = v6 + 1386;
      *(v6 + 120) = xmmword_183E20E50;
      CA::OGL::Context::array_rect(v6, this[6].f32[0], this[6].f32[1], this[7].f32[0], this[7].f32[1]);
      v15 = *(v6 + 136) + 48 * *(v6 + 144);
      *(v15 - 176) = v28;
      *(v15 - 128) = __PAIR64__(v28.u32[1], v30.u32[0]);
      *(v15 - 80) = v30;
      *(v15 - 32) = __PAIR64__(v30.u32[1], v28.u32[0]);
      CA::OGL::Context::array_flush(v6);
    }

    *(*(v6 + 16) + 16) = 1;
    CA::OGL::PingPongState::replicate_edges(*this, 2.0, this[6].f32[0], this[6].f32[1], this[7].f32[0], this[7].f32[1], v28.f32[0], v28.f32[1], v30.f32[0], v30.f32[1]);
    v16 = this[4].i16[0];
    v17 = v16;
    v18 = &this[(v16 & 1) + 11];
    if (v17 < 0)
    {
      v18 = this + 1;
    }

    CA::OGL::Context::unbind_surface(*this, *v18, 0);
    *(*(v6 + 16) + 16) = 0;
    CA::OGL::Context::pop_surface(*this, v19, v20, v21, v22, v23, v24, v25);
    ++this[4].i16[0];
  }

  return v7;
}

void CA::OGL::Context::downsample_surface(uint64_t a1, int32x2_t *a2, double *a3, uint64_t a4, int a5, float a6)
{
  v206[2] = *MEMORY[0x1E69E9840];
  v203 = 0u;
  v204 = 0u;
  v202 = 0u;
  v198 = a1;
  v199 = a2;
  v12 = a2[6];
  v200 = v12;
  v13 = a2[7].i32[0];
  v14 = a2[7].i32[1];
  v201 = __PAIR64__(v14, v13);
  LOWORD(v202) = -1;
  DWORD1(v202) = 16777231;
  __asm { FMOV            V1.2S, #1.0 }

  v205 = _D1;
  v206[0] = 0;
  v206[1] = 0;
  v176 = v12;
  v177 = __PAIR64__(v14, v13);
  if (v13 <= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = v13;
  }

  if (v13 >= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v13;
  }

  if (v20 <= 1073741822 && v21 >= 1)
  {
    v176 = vadd_s32(v12, -1);
    LODWORD(v177) = v13 + 2;
    HIDWORD(v177) = v14 + 2;
    if (v13 + 2 < 1 || v14 + 2 <= 0)
    {
      v177 = 0;
    }
  }

  memset(__dst, 0, 504);
  v22 = *(a1 + 16);
  memcpy(__dst, v22, 0x1F8uLL);
  *&__dst[0] = v22;
  *(a1 + 16) = __dst;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v192 = 0u;
  v23 = *(a1 + 656);
  *(&v193 + 1) = 0x3C003C003C003C00;
  v194 = 0uLL;
  *&v195 = 0;
  WORD4(v196) = 1;
  v191 = 0;
  if (v23)
  {
    v24 = *(v23 + 64);
    v25 = *(v23 + 80) & 0x100 | 1 | *(v23 + 80) & 0x400;
  }

  else
  {
    v25 = 1025;
    v24 = 1.0;
  }

  *(&v195 + 2) = v24;
  WORD4(v196) = v25;
  *&v193 = &CA::identity_transform;
  memset(v190, 0, sizeof(v190));
  CA::Shape::operator=(v190, &v176);
  *&v192 = v190;
  *(&v192 + 1) = 0;
  v191 = CA::OGL::Context::set_gstate(a1, &v191);
  *(*(a1 + 16) + 497) &= ~1u;
  v26 = a2[6].i32[0];
  v27 = a2[6].i32[1];
  v28 = (a2[7].i32[0] + v26);
  v29 = (a2[7].i32[1] + v27);
  v182.f64[0] = v26;
  v182.f64[1] = v27;
  v183 = xmmword_183E20E60;
  v184.f64[0] = v28;
  v184.f64[1] = v27;
  v185 = xmmword_183E20E60;
  v186.f64[0] = v28;
  v186.f64[1] = v29;
  v187 = xmmword_183E20E60;
  v188.f64[0] = v26;
  v188.f64[1] = v29;
  v189 = xmmword_183E20E60;
  CA::Transform::apply_to_point4(a4, &v182, &v182, 4);
  *v30.i8 = v200;
  v30.u64[1] = vadd_s32(v201, v200);
  v203 = vcvtq_f32_s32(v30);
  if (a2[5].i32[0] > a2[7].i32[0] || a2[5].i32[1] > a2[7].i32[1])
  {
    CA::OGL::PingPongState::create_surface(&v198, 0, &v176);
    v31 = v198;
    *(*(v198 + 2) + 16) = 1;
    v32 = (v202 & 1) == 0;
    v33 = vsub_f32(*&v203.u32[2], *v203.f32);
    v34 = vceqz_f32(v33);
    v35.i64[0] = v34.i32[0];
    v35.i64[1] = v34.i32[1];
    if ((vorrq_s8(vdupq_laneq_s64(v35, 1), v35).u64[0] & 0x8000000000000000) != 0 || (v36 = vmvn_s8(vceq_f32(v33, v33)), v37.i64[0] = v36.i32[0], v37.i64[1] = v36.i32[1], (vorrq_s8(vdupq_laneq_s64(v37, 1), v37).u64[0] & 0x8000000000000000) != 0))
    {
      v178 = 0uLL;
      v44 = 0;
      v43 = -1;
    }

    else
    {
      v38 = vcvtq_f64_f32(*v203.f32);
      v39 = vmaxnmq_f64(v38, vdupq_n_s64(0xC1BFFFFFFF000000));
      v40 = vminnmq_f64(vaddq_f64(v38, vcvtq_f64_f32(v33)), vdupq_n_s64(0x41C0000000000000uLL));
      v41 = vcvtmq_s64_f64(v39);
      v42 = vsubq_s64(vcvtpq_s64_f64(v40), v41);
      v178 = vuzp1q_s32(v41, v42);
      v43 = vadd_s32(vmovn_s64(v41), -1);
      v44 = vmovn_s64(v42);
    }

    if (BYTE2(v202) == 1)
    {
      v45 = v44.i32[1];
      if (v44.i32[0] <= v44.i32[1])
      {
        v46 = v44.i32[1];
      }

      else
      {
        v46 = v44.i32[0];
      }

      if (v44.i32[0] < v44.i32[1])
      {
        v45 = v44.i32[0];
      }

      if (v46 <= 1073741822 && v45 >= 1)
      {
        v47 = vadd_s32(v44, 0x200000002);
        v48 = vclez_s32(v47);
        if (vorr_s8(v48, vdup_lane_s32(v48, 1)).u8[0])
        {
          v49 = -1;
        }

        else
        {
          v49 = 0;
        }

        *v178.i8 = v43;
        v178.u64[1] = vbic_s8(v47, vdup_n_s32(v49));
      }
    }

    if (CA::OGL::PingPongState::create_surface(&v198, v32, &v178))
    {
      v50 = v206[v32];
      (*(*v198 + 760))(v198, v50, 2, 2);
      CA::OGL::Context::push_surface(v198, v50, 0, 64, 0);
      v51 = &v206[v202 & 1];
      if ((v202 & 0x8000u) != 0)
      {
        v51 = &v199;
      }

      v52 = *(*v51 + 48);
      v53 = *(*v51 + 52);
      CA::OGL::Context::bind_surface(v198, *v51, 0, 1u, 1, 0.0);
      v54 = v52;
      v55 = v203.i64[0];
      v56 = v203.f32[0] - v52;
      v57 = v53;
      v58 = v203.f32[1] - v53;
      v59 = v203.i64[1];
      v60 = v203.f32[2] - v54;
      v61 = v203.f32[3] - v57;
      *(v31 + 144) = 0;
      *(v31 + 112) = v31 + 1386;
      *(v31 + 120) = xmmword_183E20E50;
      CA::OGL::Context::array_rect(v31, *&v55, *(&v55 + 1), *&v59, *(&v59 + 1));
      v62 = *(v31 + 136) + 48 * *(v31 + 144);
      *(v62 - 176) = v56;
      *(v62 - 172) = v58;
      *(v62 - 128) = v60;
      *(v62 - 124) = v58;
      *(v62 - 80) = v60;
      *(v62 - 76) = v61;
      *(v62 - 32) = v56;
      *(v62 - 28) = v61;
      CA::OGL::Context::array_flush(v31);
      CA::OGL::PingPongState::replicate_edges(v198, 2.0, v203.f32[0], v203.f32[1], v203.f32[2], v203.f32[3], v56, v58, v60, v61);
      v63 = &v206[v202 & 1];
      if ((v202 & 0x8000u) != 0)
      {
        v63 = &v199;
      }

      CA::OGL::Context::unbind_surface(v198, *v63, 0);
      CA::OGL::Context::pop_surface(v198, v64, v65, v66, v67, v68, v69, v70);
      LOWORD(v202) = v202 + 1;
      *(*(v31 + 16) + 16) = 0;
    }
  }

  if (a5 == 1 || (v72 = *a3, v71 = a3[1], *a3 >= 1.0) && v71 >= 1.0)
  {
    v73 = (*(*a1 + 232))(a1, 12);
    if (v73)
    {
      CA::OGL::PingPongState::create_surface(&v198, 0, &v176);
      CA::OGL::PingPongState::create_surface(&v198, 1u, &v176);
      v75 = *a3;
      v74 = a3[1];
      v76 = xmmword_183E21020;
      v77 = 0;
      v78 = 1083591734;
      v79 = 1077255971;
      v80 = 1060871535;
    }

    else
    {
      v75 = *a3;
      v74 = a3[1];
      v76 = xmmword_183E21030;
      v77 = 1076570714;
      v78 = 1060513140;
      v79 = -1086970508;
      v80 = -1070912934;
    }

    v181 = v76;
    v178.i64[0] = v80;
    v178.i64[1] = v79;
    *v179 = v78;
    for (*&v179[8] = v77; v75 <= 0.5000005; v75 = v75 + v75)
    {
      v204 = v203;
      v81 = vmuls_lane_f32(0.5, v203, 2);
      v203.f32[0] = 0.5 * v203.f32[0];
      v203.f32[2] = v81;
      if (v73)
      {
        CA::OGL::DownsampleState::downsample6(&v198, 2.0, 1.0, v178.i32, &v181);
      }

      else
      {
        CA::OGL::DownsampleState::downsample4(&v198, 2.0, 1.0, v178.i32, &v181);
      }
    }

    if (v73)
    {
      v82 = 0;
      v83 = 1083591734;
      v84 = 1077255971;
      v85 = 1060871535;
    }

    else
    {
      v82 = 1076570714;
      v83 = 1060513140;
      v84 = -1086970508;
      v85 = -1070912934;
    }

    v178.i32[0] = 0;
    *(v178.i64 + 4) = v85;
    v178.i32[3] = v84;
    *v179 = 0;
    *&v179[4] = v83;
    for (*&v179[12] = v82; v74 <= 0.5000005; v74 = v74 + v74)
    {
      v204 = v203;
      v86 = vmuls_lane_f32(0.5, v203, 3);
      v203.i32[1] = vmuls_lane_f32(0.5, *v203.f32, 1);
      v203.f32[3] = v86;
      if (v73)
      {
        CA::OGL::DownsampleState::downsample6(&v198, 1.0, 2.0, v178.i32, &v181);
      }

      else
      {
        CA::OGL::DownsampleState::downsample4(&v198, 1.0, 2.0, v178.i32, &v181);
      }
    }

    if (!v73)
    {
      goto LABEL_83;
    }

    if (fabs(v75 + -1.0) > 0.000001)
    {
      if (v75 <= 1.0)
      {
        v87 = 0.5;
      }

      else
      {
        v87 = 1.0;
      }

      if (v75 <= 1.0)
      {
        v88 = v75 + v75;
      }

      else
      {
        v88 = v75;
      }

      v204 = v203;
      v89 = v88 * v203.f32[0];
      v90 = v88 * v203.f32[2];
      v203.f32[0] = v89;
      v203.f32[2] = v90;
      v91 = 1.0 / v88;
      if (CA::OGL::DownsampleState::upsample(&v198, v91, 1.0, CA::OGL::Context::downsample_surface(CA::OGL::Surface *,CA::Vec2<double> const&,CA::Transform const&,CA::OGL::Context::DownsampleFilter,float)::axis))
      {
LABEL_69:
        if (fabs(v74 + -1.0) > 0.000001)
        {
          if (v74 <= 1.0)
          {
            v94 = 0.5;
          }

          else
          {
            v94 = 1.0;
          }

          if (v74 <= 1.0)
          {
            v95 = v74 + v74;
          }

          else
          {
            v95 = v74;
          }

          v204 = v203;
          v96 = v95 * v203.f32[1];
          v97 = v95 * v203.f32[3];
          v203.f32[1] = v96;
          v203.f32[3] = v97;
          v98 = 1.0 / v95;
          if (CA::OGL::DownsampleState::upsample(&v198, 1.0, v98, CA::OGL::Context::downsample_surface(CA::OGL::Surface *,CA::Vec2<double> const&,CA::Transform const&,CA::OGL::Context::DownsampleFilter,float)::axis))
          {
            goto LABEL_79;
          }

          v99 = v203.f32[1] / v95;
          v100 = v203.f32[3] / v95;
          v203.f32[1] = v99;
          v203.f32[3] = v100;
        }

        v94 = v74;
LABEL_79:
        if (v87 < 0.75)
        {
          v178 = xmmword_183E21040;
          *v179 = xmmword_183E21050;
          v204 = v203;
          v101 = vmuls_lane_f32(0.5, v203, 2);
          v203.f32[0] = 0.5 * v203.f32[0];
          v203.f32[2] = v101;
          CA::OGL::DownsampleState::downsample6(&v198, 2.0, 1.0, v178.i32, &v181);
        }

        if (v94 < 0.75)
        {
          v178 = xmmword_183E21060;
          *v179 = 0x40964C3600000000;
          v204 = v203;
          v102 = vmuls_lane_f32(0.5, v203, 3);
          v203.i32[1] = vmuls_lane_f32(0.5, *v203.f32, 1);
          v203.f32[3] = v102;
          CA::OGL::DownsampleState::downsample6(&v198, 1.0, 2.0, v178.i32, &v181);
        }

LABEL_83:
        CA::OGL::Context::set_gstate(a1, **(a1 + 656));
        v103 = *&__dst[0];
        *(a1 + 16) = *&__dst[0];
        *&__dst[0] = 0;
        goto LABEL_84;
      }

      v92 = v203.f32[0] / v88;
      v93 = v203.f32[2] / v88;
      v203.f32[0] = v92;
      v203.f32[2] = v93;
    }

    v87 = v75;
    goto LABEL_69;
  }

  if (!a5)
  {
    v119 = (v71 + v72) * 0.5;
    if (a6 != 0.0)
    {
      v120 = a6 - log2(v119);
      v121 = -v120;
      _NF = v120 < 0.0;
      v122 = -0.0;
      if (!_NF)
      {
        v122 = v121;
      }

      v119 = exp2(v122);
    }

    __asm { FMOV            V2.4S, #0.25 }

    v181 = _Q2;
    v178 = xmmword_183E21000;
    *v179 = xmmword_183E21010;
    v124 = 0;
    if (v119 <= 0.24999975)
    {
      v125 = v119;
      v173 = _Q2;
      do
      {
        v126 = v203;
        v203 = vmulq_f32(v203, _Q2);
        v204 = v126;
        CA::OGL::DownsampleState::downsample4(&v198, 4.0, 4.0, v178.i32, &v181);
        _Q2 = v173;
        v125 = v125 * 4.0;
        v124 += 2;
      }

      while (v125 <= 0.24999975);
    }

    else
    {
      v125 = v119;
    }

    for (; v125 <= 0.999999; ++v124)
    {
      v127 = v203;
      v128.i64[0] = 0x3F0000003F000000;
      v128.i64[1] = 0x3F0000003F000000;
      v203 = vmulq_f32(v203, v128);
      v204 = v127;
      v129 = v198;
      if (CA::OGL::PingPongState::attach_dest(&v198, 1, 0))
      {
        *(*(v129 + 16) + 16) = 1;
        v130 = &v206[v202 & 1];
        if ((v202 & 0x8000u) != 0)
        {
          v130 = &v199;
        }

        v131 = *(*v130 + 48);
        CA::OGL::Context::bind_surface(v198, *v130, 0, 1u, 1, 0.0);
        v132 = vneg_f32(vcvt_f32_s32(v131));
        v133 = v203;
        v134 = vmla_f32(v132, 0x4000000040000000, *v203.f32);
        *(v129 + 144) = 0;
        *(v129 + 112) = v129 + 1386;
        *(v129 + 120) = xmmword_183E20E50;
        v131.i32[0] = v134.i32[1];
        v169 = vmla_f32(v132, 0x4000000040000000, *&v133.u32[2]);
        v174 = v134;
        CA::OGL::Context::array_rect(v129, v133.f32[0], v133.f32[1], v133.f32[2], v133.f32[3]);
        v135 = *(v129 + 136) + 48 * *(v129 + 144);
        *(v135 - 176) = v174;
        *(v135 - 128) = __PAIR64__(v174.u32[1], v169.u32[0]);
        *(v135 - 80) = v169;
        *(v135 - 32) = __PAIR64__(v169.u32[1], v174.u32[0]);
        CA::OGL::Context::array_flush(v129);
        *(*(v129 + 16) + 16) = 1;
        CA::OGL::PingPongState::replicate_edges(v198, 2.0, v203.f32[0], v203.f32[1], v203.f32[2], v203.f32[3], v174.f32[0], *v131.i32, v169.f32[0], v169.f32[1]);
        v136 = &v206[v202 & 1];
        if ((v202 & 0x8000u) != 0)
        {
          v136 = &v199;
        }

        CA::OGL::Context::unbind_surface(v198, *v136, 0);
        *(*(v129 + 16) + 16) = 0;
        CA::OGL::Context::pop_surface(v198, v137, v138, v139, v140, v141, v142, v143);
        LOWORD(v202) = v202 + 1;
      }

      v125 = v125 + v125;
    }

    v144 = v119;
    _S8 = log2f(v144) + v124;
    CA::OGL::Context::set_gstate(a1, **(a1 + 656));
    v103 = *&__dst[0];
    *(a1 + 16) = *&__dst[0];
    *&__dst[0] = 0;
    _D0.i16[1] = 15267;
    if (_S8 >= 0.005)
    {
      __asm { FCVT            H0, S8 }

      v165 = _D0;
      *(v103 + 16) = 7;
      LOWORD(v202) = v202 - 1;
      v147 = &v206[v202 & 1];
      if ((v202 & 0x8000u) != 0)
      {
        v147 = &v199;
      }

      v148 = *(*v147 + 48);
      CA::OGL::Context::bind_surface(v198, *v147, 0, 1u, 1, 0.0);
      LOWORD(v202) = v202 + 1;
      v149 = &v206[v202 & 1];
      if ((v202 & 0x8000u) != 0)
      {
        v149 = &v199;
      }

      v170 = vcvt_f32_s32(v148);
      v150 = *(*v149 + 48);
      CA::OGL::Context::bind_surface(v198, *v149, 1u, 1u, 1, 0.0);
      v175 = vsub_f32(*v204.f32, v170);
      v151.i64[0] = v204.i64[1];
      v151.i64[1] = v203.i64[1];
      *v152.f32 = v170;
      *&v152.u32[2] = vcvt_f32_s32(v150);
      v167 = vsubq_f32(v151, v152);
      v171 = vsub_f32(*v203.f32, *&v152.u32[2]);
      v180 = 0u;
      v153 = *(*(a1 + 656) + 8);
      v178.i64[0] = a1;
      v178.i64[1] = v153;
      memset(v179, 0, sizeof(v179));
      *&v179[16] = 256;
      CA::OGL::Context::ClippedArray::start(&v178);
      v154 = v167;
      v155 = vdup_lane_s16(v165, 0);
      v154.i32[0] = v175.i32[0];
      v154.i32[2] = v171.i32[0];
      v166 = v154;
      while (CA::OGL::Context::ClippedArray::next_rect(&v178, &v176))
      {
        v156 = *(a1 + 144);
        v157 = *(a1 + 136) + 48 * v156;
        *(a1 + 144) = v156 + 4;
        v158 = vcvt_hight_f32_f64(vcvt_f32_f64(v184), v185);
        v159 = vcvt_hight_f32_f64(vcvt_f32_f64(v186), v187);
        v160 = vcvt_hight_f32_f64(vcvt_f32_f64(v188), v189);
        *v157 = vcvt_hight_f32_f64(vcvt_f32_f64(v182), v183);
        *(v157 + 48) = v158;
        *(v157 + 96) = v159;
        *(v157 + 144) = v160;
        if (*(a1 + 112))
        {
          CA::OGL::Context::array_indices(a1, v156);
        }

        v161 = *(a1 + 136) + 48 * *(a1 + 144);
        *(v161 - 160) = v155;
        *(v161 - 112) = v155;
        *(v161 - 64) = v155;
        *(v161 - 16) = v155;
        v162 = *(a1 + 136) + 48 * *(a1 + 144);
        *(v162 - 128) = v167.i32[0];
        *(v162 - 124) = v175.i32[1];
        *(v162 - 176) = v175;
        *(v162 - 168) = v171;
        *(v162 - 120) = v167.i32[2];
        *(v162 - 116) = v171.i32[1];
        *(v162 - 80) = v167;
        *(v162 - 32) = v166;
      }

      v163 = &v206[v202 & 1];
      if ((v202 & 0x8000u) != 0)
      {
        v163 = &v199;
      }

      CA::OGL::Context::unbind_surface(v198, *v163, 1);
      LOWORD(v202) = v202 - 1;
      v164 = &v206[v202 & 1];
      if ((v202 & 0x8000u) != 0)
      {
        v164 = &v199;
      }

      CA::OGL::Context::unbind_surface(v198, *v164, 0);
      LOWORD(v202) = v202 + 1;
      goto LABEL_94;
    }

LABEL_84:
    *(v103 + 16) = 1;
    v104 = &v206[v202 & 1];
    if ((v202 & 0x8000u) != 0)
    {
      v104 = &v199;
    }

    v105 = *(*v104 + 48);
    CA::OGL::Context::bind_surface(v198, *v104, 0, 1u, 1, 0.0);
    v106 = vcvt_f32_s32(v105);
    v168 = vsub_f32(*&v203.u32[2], v106);
    v172 = vsub_f32(*v203.f32, v106);
    v180 = 0u;
    v107 = *(*(a1 + 656) + 8);
    v178.i64[0] = a1;
    v178.i64[1] = v107;
    memset(v179, 0, sizeof(v179));
    *&v179[16] = 256;
    CA::OGL::Context::ClippedArray::start(&v178);
    while (CA::OGL::Context::ClippedArray::next_rect(&v178, &v176))
    {
      v108 = *(a1 + 144);
      v109 = *(a1 + 136) + 48 * v108;
      *(a1 + 144) = v108 + 4;
      v110 = vcvt_hight_f32_f64(vcvt_f32_f64(v184), v185);
      v111 = vcvt_hight_f32_f64(vcvt_f32_f64(v186), v187);
      v112 = vcvt_hight_f32_f64(vcvt_f32_f64(v188), v189);
      *v109 = vcvt_hight_f32_f64(vcvt_f32_f64(v182), v183);
      *(v109 + 48) = v110;
      *(v109 + 96) = v111;
      *(v109 + 144) = v112;
      if (*(a1 + 112))
      {
        CA::OGL::Context::array_indices(a1, v108);
      }

      v113 = *(*(a1 + 16) + 8);
      v114 = *(a1 + 136) + 48 * *(a1 + 144);
      *(v114 - 160) = v113;
      *(v114 - 112) = v113;
      *(v114 - 64) = v113;
      *(v114 - 16) = v113;
      v115 = *(a1 + 136) + 48 * *(a1 + 144);
      *(v115 - 176) = v172;
      *(v115 - 128) = v168.i32[0];
      *(v115 - 124) = v172.i32[1];
      *(v115 - 80) = v168;
      *(v115 - 32) = __PAIR64__(v168.u32[1], v172.u32[0]);
    }

    v116 = &v206[v202 & 1];
    if ((v202 & 0x8000u) != 0)
    {
      v116 = &v199;
    }

    CA::OGL::Context::unbind_surface(v198, *v116, 0);
LABEL_94:
    *(*(a1 + 16) + 16) = 0;
    goto LABEL_95;
  }

  if (a5 != 2)
  {
    v103 = *(a1 + 16);
    goto LABEL_84;
  }

  while (v72 < 0.5)
  {
    CA::OGL::DownsampleState::asg(&v198, 0, 0, 0.5);
    v72 = v72 + v72;
  }

  for (; v71 < 0.5; v71 = v71 + v71)
  {
    CA::OGL::DownsampleState::asg(&v198, 1, 0, 0.5);
  }

  v117 = v72;
  CA::OGL::DownsampleState::asg(&v198, 0, 0, v117);
  CA::OGL::Context::set_gstate(a1, **(a1 + 656));
  *(a1 + 16) = *&__dst[0];
  *&__dst[0] = 0;
  v118 = v71;
  CA::OGL::DownsampleState::asg(&v198, 1, &v182, v118);
LABEL_95:
  if (*&__dst[0])
  {
    __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
  }

  CA::OGL::PingPongState::~PingPongState(&v198);
}

int32x2_t *CA::OGL::Context::create_variable_blur_mip_surface(void *a1, int32x2_t *a2, int *a3, double *a4, int a5, unsigned int a6, float a7, uint64_t a8, int a9, char a10, char a11)
{
  __dst[63] = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    return 0;
  }

  v12 = a6;
  v17 = (a3[3] + a7);
  a3[3] = v17;
  if (a11)
  {
    v18 = 16778767;
  }

  else
  {
    v18 = 16777743;
  }

  v19 = (a5 == 0) | BYTE9(xmmword_1ED4E98AC);
  v20 = *a3;
  v109 = *a3;
  if (!((a5 == 0) | BYTE9(xmmword_1ED4E98AC) & 1))
  {
    v21 = a4[2];
    if (v21 < 1.79769313e308)
    {
      *a4 = *a4 * 0.5;
      a4[2] = v21 * 0.5;
    }

    v12 = a6 - 1;
    v22 = a4[3];
    if (v22 < 1.79769313e308)
    {
      a4[1] = a4[1] * 0.5;
      a4[3] = v22 * 0.5;
    }

    *a3 = v20 / 2;
    a3[1] = SHIDWORD(v20) / 2;
    a3[2] /= 2;
    a3[3] = v17 / 2;
  }

  v113 = 0;
  v114 = 0;
  v112[0] = 1;
  v112[1] = v12;
  v23 = (*(*a1 + 704))(a1, 1, a3, v18, v112, @"variable-blur-mip-surface", a8);
  v24 = v23;
  if (v23)
  {
    (*(*a1 + 760))(a1, v23, *(v23 + 40), *(v23 + 44));
    if (v19)
    {
      v27 = 0;
    }

    else
    {
      v27 = 128;
    }

    v24[18].i16[2] = v24[18].i16[2] & 0xFF7F | v27;
    v28 = a2[7].i32[0];
    v29 = a2[7].i32[1];
    if (v28 <= v29)
    {
      v30 = a2[7].i32[1];
    }

    else
    {
      v30 = a2[7].i32[0];
    }

    v25.i32[0] = 1073741822;
    v26.i32[0] = v30;
    v108 = vcgtq_s32(v26, v25).u64[0];
    v31 = a2[6];
    v32.i64[0] = v31.i32[0];
    v32.i64[1] = v31.i32[1];
    v103 = v32;
    if (v30 <= 1073741822)
    {
      v33 = v28;
    }

    else
    {
      v33 = 1.79769313e308;
    }

    if (v30 <= 1073741822)
    {
      v34 = v29;
    }

    else
    {
      v34 = 1.79769313e308;
    }

    v35 = a1[2];
    memcpy(__dst, v35, 0x1F8uLL);
    v118 = 0;
    __dst[0] = v35;
    a1[2] = __dst;
    v116 = 0;
    v117 = 0;
    v36 = a1[82];
    v115[4] = 0x3C003C003C003C00;
    memset(&v115[5], 0, 24);
    v115[0] = 0;
    if (v36)
    {
      v37 = *(v36 + 64);
      v38 = *(v36 + 80) & 0x500 | 1;
    }

    else
    {
      v38 = 1025;
      v37 = 1.0;
    }

    v39 = a9;
    v104 = vcvtq_f64_s64(v103);
    v105 = vdupq_lane_s32(v108, 0);
    v102 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v116 = v37;
    LOWORD(v118) = v38;
    v115[2] = 0;
    v115[3] = &CA::identity_transform;
    v115[1] = &CA::Shape::_infinite_shape;
    v115[0] = CA::OGL::Context::set_gstate(a1, v115);
    *(a1[2] + 497) &= ~1u;
    CA::OGL::Context::push_surface(a1, v24, 1u, 0, 0);
    CA::OGL::Context::bind_surface(a1, a2, 0, 1u, 1, 0.0);
    v40 = *(a1[2] + 96);
    v41 = a2[7];
    v42.i64[0] = v41.i32[0];
    v42.i64[1] = v41.i32[1];
    __asm { FMOV            V1.2D, #-0.5 }

    v48 = vmulq_f64(vaddq_f64(vcvtq_f64_s64(v42), _Q1), vcvtq_f64_f32(v40));
    a1[18] = 0;
    v49 = a1 + 1386;
    a1[14] = a1 + 1386;
    *(a1 + 15) = xmmword_183E20E50;
    if (a1[19] <= 3uLL)
    {
      *(a1 + 692) |= 0x20u;
      v101 = v48;
      CA::OGL::Context::array_flush(a1);
      v48 = v101;
      a1[18] = 0;
      a1[14] = v49;
      *(a1 + 15) = xmmword_183E20E50;
    }

    v50 = vbslq_s8(v105, v102, v104);
    v51 = vmul_f32(v40, 0x3F0000003F000000);
    v52 = vcvt_f32_f64(v48);
    if (v19)
    {
      *(a1[2] + 16) = 1;
      *(a1[2] + 19) = 5;
      v53 = a1[2];
      v53[48] = v51;
      v53[49] = v52;
      if (!a9)
      {
        v65 = *v50.i64;
        v66 = *&v50.i64[1];
        *v50.i32 = v33 + *v50.i64;
        v67 = v34 + *&v50.i64[1];
        CA::OGL::Context::array_rect(a1, v65, v66, *v50.i32, v67);
        v58 = 0;
        goto LABEL_37;
      }

      v54 = v24[5].i32[0];
      v55 = v24[5].i32[1];
      v106 = v50;
      CA::OGL::Context::array_rect(a1, *a3, a3[1], (*a3 + v54), (a3[1] + v55));
      v56.i64[0] = *a3;
      v56.i64[1] = HIDWORD(*a3);
      v57 = vsubq_f64(vcvtq_f64_s64(v56), v106);
      v58 = vcvt_f32_f64(v57);
      v33 = v57.f64[0] + v54;
      v59 = v55;
    }

    else
    {
      v107 = v50;
      v61 = v24[5].i32[0];
      v60 = v24[5].i32[1];
      *(a1[2] + 16) = 40;
      *(a1[2] + 19) = 0;
      if ((v39 & 1) == 0)
      {
        __assert_rtn("create_variable_blur_mip_surface", "ogl-blur.cpp", 3840, "edge_extend");
      }

      __asm { FMOV            V3.2S, #1.0 }

      v63 = vdiv_f32(_D3, vcvt_f32_s32(a2[5]));
      *(a1 + 40) = 0;
      *(a1 + 164) = v63;
      *(a1 + 43) = 0;
      a1[30] = v51;
      a1[31] = v52;
      CA::OGL::Context::array_rect(a1, *a3, a3[1], (*a3 + v61), (a3[1] + v60));
      v64.i64[0] = v109;
      v64.i64[1] = SHIDWORD(v109);
      v57 = vsubq_f64(vcvtq_f64_s64(v64), v107);
      v58 = vcvt_f32_f64(v57);
      v33 = v57.f64[0] + (2 * v61);
      v59 = (2 * v60);
    }

    v34 = v57.f64[1] + v59;
LABEL_37:
    v68 = v33;
    v69 = v34;
    v70 = a1[17] + 48 * a1[18];
    *(v70 - 176) = v58;
    *(v70 - 128) = v68;
    *(v70 - 124) = v58.i32[1];
    *(v70 - 80) = v68;
    *(v70 - 76) = v69;
    *(v70 - 32) = v58.i32[0];
    *(v70 - 28) = v69;
    CA::OGL::Context::array_flush(a1);
    CA::OGL::Context::unbind_surface(a1, a2, 0);
    CA::OGL::Context::pop_surface(a1, v71, v72, v73, v74, v75, v76, v77);
    *(a1[2] + 19) = 0;
    *(a1[2] + 16) = 39;
    CA::OGL::Context::bind_surface(a1, v24, 0, 1u, 1, 0.0);
    if (v12 >= 2)
    {
      v78 = vcvt_f32_s32(v24[5]);
      v79 = 1;
      __asm { FMOV            V8.2S, #1.0 }

      do
      {
        v110 = v78;
        v81 = vdiv_f32(_D8, v78);
        v83 = v24[5].i32[0];
        v82 = v24[5].i32[1];
        CA::OGL::Context::push_surface(a1, v24, 1u, 0, v79);
        *(a1 + 40) = (v79 - 1);
        *(a1 + 164) = v81;
        *(a1 + 43) = 0;
        *(a1 + 15) = xmmword_183E21100;
        a1[18] = 0;
        a1[14] = v49;
        *(a1 + 15) = xmmword_183E20E50;
        if (a1[19] <= 3uLL)
        {
          *(a1 + 692) |= 0x20u;
          CA::OGL::Context::array_flush(a1);
          a1[18] = 0;
          a1[14] = v49;
          *(a1 + 15) = xmmword_183E20E50;
        }

        v84 = vmul_f32(v110, 0x3F0000003F000000);
        v111 = vmaxnm_f32(vrndm_f32(v84), _D8);
        v85 = (v83 * v84.f32[0]) / v111.f32[0];
        v86 = vmuls_lane_f32(v82, v84, 1) / v111.f32[1];
        v87 = a4[1];
        v84.f32[0] = *a4;
        v88 = v87;
        v89 = *a4 + v85;
        v90 = v87 + v86;
        CA::OGL::Context::array_rect(a1, v84.f32[0], v88, v89, v90);
        v91 = a1[17] + 48 * a1[18];
        *(v91 - 176) = 0;
        *(v91 - 124) = 0;
        v92 = vcvt_f32_s32(v24[5]);
        *(v91 - 128) = v92.i32[0];
        *(v91 - 80) = v92;
        *(v91 - 32) = 0;
        *(v91 - 28) = v92.i32[1];
        CA::OGL::Context::array_flush(a1);
        CA::OGL::Context::pop_surface(a1, v93, v94, v95, v96, v97, v98, v99);
        v78 = v111;
        ++v79;
      }

      while (v12 != v79);
    }

    CA::OGL::Context::unbind_surface(a1, v24, 0);
    CA::OGL::Context::set_gstate(a1, *a1[82]);
    a1[2] = __dst[0];
    v24[18].i16[2] |= 2u;
    v24[12].i8[0] = v12 - 1;
  }

  return v24;
}

void CA::OGL::compute_variable_blur_parameters(CA::OGL *this, unsigned int a2, unsigned int a3, const CA::Bounds *a4, float a5, float a6)
{
  v80 = *MEMORY[0x1E69E9840];
  v10 = a6 * 1.6;
  if (a2 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  v12 = (floorf(log2f(v11)) + 1.0);
  *v13.i32 = log2f(v10);
  v14.i32[1] = 0;
  v15 = (fmaxf(ceilf(*v13.i32), 0.0) + 1.0);
  if (v15 == 1 && v10 != 0.0)
  {
    v15 = 2;
  }

  if (v15 < v12)
  {
    v12 = v15;
  }

  if (v12 >= 7)
  {
    v17 = 7;
  }

  else
  {
    v17 = v12;
  }

  v18 = 1 << v17;
  v19 = (1 << v17);
  v20 = *(a4 + 2);
  v21 = *(a4 + 3);
  if (v20 <= v21)
  {
    v22 = *(a4 + 3);
  }

  else
  {
    v22 = *(a4 + 2);
  }

  v13.i32[0] = 1073741822;
  v14.i32[0] = v22;
  v26 = vdupq_lane_s32(*&vcgtq_s32(v14, v13), 0);
  v23.i64[0] = *a4;
  v23.i64[1] = HIDWORD(*a4);
  v24 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v25 = vbslq_s8(v26, v24, vcvtq_f64_s64(v23));
  v26.f64[0] = v21;
  if (v22 <= 1073741822)
  {
    v27 = v20;
  }

  else
  {
    v27 = 1.79769313e308;
  }

  if (v22 > 1073741822)
  {
    v26.f64[0] = 1.79769313e308;
  }

  v28.f64[0] = v27;
  v28.f64[1] = v26.f64[0];
  if (fmax(v27, v26.f64[0]) < 1.79769313e308)
  {
    v29 = v27 >= v26.f64[0] ? v26.f64[0] : v27;
    if (v29 > 0.0)
    {
      v24.f64[0] = -a6;
      v25 = vaddq_f64(v25, vdupq_lane_s64(COERCE__INT64(v24.f64[0] * 2.8), 0));
      v24.f64[0] = v24.f64[0] * -5.6;
      *v30.i64 = v24.f64[0] + v27;
      v26.f64[0] = v24.f64[0] + v26.f64[0];
      v24.f64[0] = fmin(*v30.i64, v26.f64[0]);
      v30.i64[1] = *&v26.f64[0];
      v26.f64[0] = 0.0;
      v28 = vandq_s8(v30, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v26, v24)).i64[0], 0));
    }
  }

  if ((1.0 / v19) != 1.0)
  {
    v31 = (1.0 / v19);
    v24.f64[0] = 1.79769313e308;
    v32 = vdupq_lane_s64(vcgtq_f64(v24, v28).i64[0], 0);
    v33.i64[1] = *&v25.f64[1];
    *v33.i64 = v31 * v25.f64[0];
    v25 = vbslq_s8(v32, v33, v25);
    v33.i64[1] = *&v28.f64[1];
    *v33.i64 = v31 * v28.f64[0];
    v28 = vbslq_s8(v32, v33, v28);
    if (v28.f64[1] < 1.79769313e308)
    {
      v25.f64[1] = vmuld_lane_f64(v31, v25, 1);
      v28.f64[1] = v28.f64[1] * v31;
    }
  }

  v34 = v28.f64[1];
  if (v28.f64[0] <= v28.f64[1])
  {
    v35 = v28.f64[1];
  }

  else
  {
    v35 = v28.f64[0];
  }

  if (v35 < 1.79769313e308)
  {
    if (v28.f64[0] < v28.f64[1])
    {
      v34 = v28.f64[0];
    }

    if (v34 > 0.0)
    {
      v36 = vaddq_f64(v25, v28);
      v25 = vrndmq_f64(v25);
      v28 = vsubq_f64(vrndpq_f64(v36), v25);
    }
  }

  if (v12)
  {
    v37 = v18;
    v24.f64[0] = 1.79769313e308;
    v38 = vdupq_lane_s64(vcgtq_f64(v24, v28).i64[0], 0);
    v39.i64[1] = *&v25.f64[1];
    *v39.i64 = v18 * v25.f64[0];
    v25 = vbslq_s8(v38, v39, v25);
    v39.i64[1] = *&v28.f64[1];
    *v39.i64 = v18 * v28.f64[0];
    v28 = vbslq_s8(v38, v39, v28);
    if (v28.f64[1] < 1.79769313e308)
    {
      v25.f64[1] = vmuld_lane_f64(v37, v25, 1);
      v28.f64[1] = v28.f64[1] * v37;
    }
  }

  *v40.i8 = vdup_n_s32(0xE0000001);
  v41 = 0xC0000000C0000000;
  v42.f64[0] = NAN;
  v42.f64[1] = NAN;
  v43 = vnegq_f64(v42);
  __asm { FMOV            V3.2D, #0.5 }

  v48 = COERCE_DOUBLE(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v43, _Q3, v25), v25))));
  v59 = v28;
  v60 = v25;
  v49 = vaddq_f64(v25, v28);
  v50 = COERCE_DOUBLE(vsub_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v43, _Q3, v49), v49))), *&v48));
  if (_NF)
  {
    *v40.i64 = v48;
  }

  if (_NF)
  {
    *&v41 = v50;
  }

  v61 = __PAIR64__(v41, v40.u32[1]);
  v51 = v40.i32[0];
  v52 = HIDWORD(v41);
  v57 = v40.i32[1];
  v58 = v41;
  v40.i64[1] = v41;
  if (vmaxv_u16(vmovn_s32(vtstq_s32(vdupq_n_s32(v18 - 1), v40))))
  {
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v53 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67111168;
      v63 = v17;
      v64 = 1024;
      v65 = v51;
      v66 = 1024;
      v67 = v57;
      v68 = 1024;
      v69 = v58;
      v70 = 1024;
      v71 = v52;
      v72 = 2048;
      v73 = v60.f64[0];
      v74 = 2048;
      v75 = v60.f64[1];
      v76 = 2048;
      v77 = v59.f64[0];
      v78 = 2048;
      v79 = v59.f64[1];
      _os_log_error_impl(&dword_183AA6000, v53, OS_LOG_TYPE_ERROR, "Unexpected b.x/y/w/h values: stable_mip_levels=%u b=(%d %d %d %d) r=(%f %f %f %f)", buf, 0x48u);
    }
  }

  if (v12)
  {
    v54 = v12 - 1;
  }

  else
  {
    v54 = 0;
  }

  v55 = a5 * 1.6;
  v56 = fmaxf(floorf(log2f(v55)), 0.0);
  if (v54 < v56)
  {
    v56 = v54;
  }

  *this = v55;
  *(this + 1) = v10;
  *(this + 2) = v56;
  *(this + 3) = v12;
  *(this + 4) = v19;
  *(this + 5) = v51;
  *(this + 3) = v61;
  *(this + 8) = v52;
  *(this + 40) = v60;
  *(this + 56) = v59;
}

void sub_183C63960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void *CA::Render::CarPlayRegionLayer::copy@<X0>(CA::Render::CarPlayRegionLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x18uLL, 0xDEEC3011uLL);
  v5 = result;
  if (result)
  {
    *(result + 2) = 1;
    v6 = 6;
    *(result + 3) = 6;
    ++dword_1ED4EAA50;
    *result = &unk_1EF1F5858;
    result = *(this + 2);
    v5[2] = result;
    if (result)
    {
      result = CFRetain(result);
      v6 = *(v5 + 3);
    }

    *(v5 + 3) = v6 | *(this + 3) & 0xFFFFFF00;
  }

  *a2 = v5;
  return result;
}

char *CA::Render::CarPlayRegionLayer::show(int a1, X::Stream *this, uint64_t a3, char a4)
{
  if (a4)
  {
    return X::Stream::printf(this, "car-play-region-layer", a3);
  }

  else
  {
    return X::Stream::printf(this, "(car-play-region-layer)", a3);
  }
}

CA::Render::Encoder *CA::Render::CarPlayRegionLayer::encode(const void **this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  CA::Render::Encoder::encode_cfobject(a2, this[2]);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::CarPlayRegionLayer::~CarPlayRegionLayer(CA::Render::CarPlayRegionLayer *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1F5858;
  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  --dword_1ED4EAA50;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF1F5858;
  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  --dword_1ED4EAA50;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

CA::Render::CarPlayRegionLayer *CA::Render::CarPlayRegionLayer::CarPlayRegionLayer(CA::Render::CarPlayRegionLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 6;
  ++dword_1ED4EAA50;
  *v4 = &unk_1EF1F5858;
  CFStringGetTypeID();
  *(this + 2) = CA::Render::Decoder::decode_cfobject(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-car-play-region-layer.cpp", 63);
  return this;
}

uint64_t CA::anonymous namespace::box_filter_8(uint64_t this, int a2, uint64_t a3, const unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, unsigned __int8 *a8, int a9)
{
  if (((2 * this) | 1) >= a4)
  {
    if (a4 < 1)
    {
      return this;
    }

    v23 = 0;
    v24 = 1 - this;
    v25 = this < 1;
    if (this < 1)
    {
      v26 = -this;
    }

    else
    {
      v26 = 1 - this;
    }

    v27 = a8;
    v28 = a6;
    if (v24 >= this)
    {
      v25 = 1;
    }

    v29 = &a5[a6 * v24];
    while (1)
    {
      if (v23 - this >= a4)
      {
        v30 = 0;
        if (!v25)
        {
LABEL_18:
          v31 = v24;
          v32 = v29;
          v33 = 2 * this - 1;
          do
          {
            if (v31 < a4)
            {
              v30 += *v32;
            }

            v32 += v28;
            ++v31;
            --v33;
          }

          while (v33);
          v34 = this;
          goto LABEL_25;
        }
      }

      else
      {
        v30 = *(a3 + a5[v28 * (v23 - this)]);
        if (!v25)
        {
          goto LABEL_18;
        }
      }

      v34 = v26;
LABEL_25:
      v35 = v34 + v23;
      if (v35 < a4)
      {
        v30 += *(a3 + a5[v28 * v35]);
      }

      *a7 = (v30 * a2 + 0x7FFFFF) >> 24;
      a7 += v27;
      ++v23;
      v29 += v28;
      ++v24;
      if (v23 == a4)
      {
        return this;
      }
    }
  }

  if ((this & 0x80000000) != 0)
  {
    v10 = 0;
    v9 = 0;
    LODWORD(v11) = this + 1;
    v17 = a5;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = (this + 1);
    v12 = this + 1;
    v13 = a5;
    do
    {
      v14 = v9 + v10;
      v15 = *v13;
      v13 += a6;
      v16 = *(a3 + v15);
      v9 = v15 - v16;
      v10 = v14 + v16;
      --v12;
    }

    while (v12);
    v17 = &a5[v11 * a6];
    if (this >= 2)
    {
      v18 = this - 1;
      do
      {
        v19 = (v10 * a2 + 0x7FFFFF) >> 24;
        v20 = v9 + v10;
        v21 = *v17;
        v22 = *(a3 + v21);
        v17 += a6;
        v9 = v21 - v22;
        v10 = v20 + v22;
        *a7 = v19;
        a7 += a8;
        --v18;
      }

      while (v18);
      LODWORD(a4) = a4 - this + 1;
    }
  }

  if (a4 > v11)
  {
    v36 = v11 - a4;
    do
    {
      v37 = (v10 * a2 + 0x7FFFFF) >> 24;
      v38 = *a5;
      this = *v17;
      a5 += a6;
      v17 += a6;
      v39 = v9 + v10 - v38;
      LODWORD(v38) = *(a3 + v38) + *(a3 + this);
      v10 = v38 + v39;
      v9 = this - v38;
      *a7 = v37;
      a7 += a8;
    }

    while (!__CFADD__(v36++, 1));
    LODWORD(a4) = v11;
  }

  if (a4 >= 1)
  {
    v41 = a4 + 1;
    do
    {
      v42 = (v10 * a2 + 0x7FFFFF) >> 24;
      v43 = *a5;
      a5 += a6;
      v44 = *(a3 + v43);
      v10 = v9 + v10 - v43 + v44;
      v9 = -v44;
      *a7 = v42;
      a7 += a8;
      --v41;
    }

    while (v41 > 1);
  }

  return this;
}

void CA::anonymous namespace::gaussian_blur(CA::_anonymous_namespace_ *this, unsigned __int8 *a2, const unsigned __int8 *a3, const unsigned __int8 *a4, unsigned __int8 *a5, float a6, float a7)
{
  v9 = a4;
  v10 = a3;
  v80 = a2;
  v11 = this;
  v82 = *MEMORY[0x1E69E9840];
  if (a6 == a7)
  {
  }

  else
  {
    if (a3 <= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = a3;
    }

    v14 = (v13 * a5);
    if (v14 > 0x1000)
    {
      v15 = malloc_type_malloc((v13 * a5), 0xD8F9A9BAuLL);
      v17 = malloc_type_malloc(v14, 0x36F78395uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](this);
      v15 = &v69 - ((v14 + 15) & 0x1FFFFFFF0);
      bzero(v15, v14);
      MEMORY[0x1EEE9AC00](v16);
      v17 = v15;
      bzero(v15, v14);
    }

    if (v15)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v77 = v17;
      v70 = v14;
      v79 = v9;
      v19 = a6;
      v78 = v15;
      if (a6 > 0.6)
      {
        v20 = 0;
        *&v19 = (a6 * 0.93999) + -0.5;
        v21 = *&v19;
        *&v19 = *&v19 - truncf(*&v19);
        v22 = vdupq_lane_s32(*&v19, 0);
        v23 = xmmword_183E21070;
        v24 = xmmword_183E21080;
        v25 = xmmword_183E21090;
        v26 = xmmword_183E210A0;
        v27.i64[0] = 0x1000000010;
        v27.i64[1] = 0x1000000010;
        do
        {
          v28.i64[0] = 0x3F0000003F000000;
          v28.i64[1] = 0x3F0000003F000000;
          v29.i64[0] = 0x3F0000003F000000;
          v29.i64[1] = 0x3F0000003F000000;
          v30.i64[0] = 0x3F0000003F000000;
          v30.i64[1] = 0x3F0000003F000000;
          v31.i64[0] = 0x3F0000003F000000;
          v31.i64[1] = 0x3F0000003F000000;
          *&v81[v20] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v31, vcvtq_f32_u32(v26), v22)), vcvtq_s32_f32(vmlaq_f32(v30, vcvtq_f32_u32(v25), v22))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v29, vcvtq_f32_u32(v24), v22)), vcvtq_s32_f32(vmlaq_f32(v28, vcvtq_f32_u32(v23), v22))));
          v20 += 16;
          v26 = vaddq_s32(v26, v27);
          v25 = vaddq_s32(v25, v27);
          v24 = vaddq_s32(v24, v27);
          v23 = vaddq_s32(v23, v27);
        }

        while (v20 != 256);
        if (v79 >= 1)
        {
          v71 = v15 + 1;
          v32 = ((8924200.0 / a6) + 0.5);
          v73 = (a5 - 1);
          v74 = v77 + 1;
          v75 = v11 + 1;
          v76 = v11;
          v33 = v11;
          v34 = v79;
          do
          {
            v72 = v34;
            for (i = 1; ; ++i)
            {
              v36 = (v21 + 1);
              if (a5 == i)
              {
                break;
              }
            }

            v37 = v73;
            v38 = v74;
            for (j = v71; ; ++j)
            {
              v40 = (v21 + 1);
              if (!v37)
              {
                break;
              }

              --v37;
            }

            v41 = v73;
            v42 = v74;
            for (k = v75; v41; --v41)
            {
            }

            v33 = &v80[v33];
            v11 = v76;
            v75 = &v80[v75];
            v34 = v72 - 1;
            v15 = v78;
          }

          while (v72 > 1);
        }
      }

      v44 = a7;
      if (a7 > 0.6)
      {
        v45 = 0;
        *&v44 = (a7 * 0.93999) + -0.5;
        v46 = *&v44;
        *&v44 = *&v44 - truncf(*&v44);
        v47 = vdupq_lane_s32(*&v44, 0);
        v48 = xmmword_183E21070;
        v49 = xmmword_183E21080;
        v50 = xmmword_183E21090;
        v51 = xmmword_183E210A0;
        v52.i64[0] = 0x1000000010;
        v52.i64[1] = 0x1000000010;
        do
        {
          v53.i64[0] = 0x3F0000003F000000;
          v53.i64[1] = 0x3F0000003F000000;
          v54.i64[0] = 0x3F0000003F000000;
          v54.i64[1] = 0x3F0000003F000000;
          v55.i64[0] = 0x3F0000003F000000;
          v55.i64[1] = 0x3F0000003F000000;
          v56.i64[0] = 0x3F0000003F000000;
          v56.i64[1] = 0x3F0000003F000000;
          *&v81[v45] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v56, vcvtq_f32_u32(v51), v47)), vcvtq_s32_f32(vmlaq_f32(v55, vcvtq_f32_u32(v50), v47))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v54, vcvtq_f32_u32(v49), v47)), vcvtq_s32_f32(vmlaq_f32(v53, vcvtq_f32_u32(v48), v47))));
          v45 += 16;
          v51 = vaddq_s32(v51, v52);
          v50 = vaddq_s32(v50, v52);
          v49 = vaddq_s32(v49, v52);
          v48 = vaddq_s32(v48, v52);
        }

        while (v45 != 256);
        if (v10 >= 1)
        {
          v57 = ((8924200.0 / a7) + 0.5);
          v75 = v77 + 1;
          v73 = v78 + 1;
          v74 = (a5 - 1);
          v58 = v11 + 1;
          do
          {
            v59 = v79;
            for (m = 1; a5 != m; ++m)
            {
            }

            v76 = v11;
            v61 = v74;
            v62 = v75;
            for (n = v73; ; ++n)
            {
              v64 = (v46 + 1);
              if (!v61)
              {
                break;
              }

              --v61;
            }

            v65 = v74;
            v66 = v75;
            for (ii = v58; v65; --v65)
            {
            }

            v11 = (v76 + a5);
            v58 += a5;
            v68 = __OFSUB__(v10, 1);
            LODWORD(v10) = v10 - 1;
          }

          while (!((v10 < 0) ^ v68 | (v10 == 0)));
        }
      }

      LODWORD(v14) = v70;
      v17 = v77;
      v15 = v78;
    }

    if (v14 > 0x1000 && v17)
    {
      free(v17);
    }

    if (v14 > 0x1000 && v15)
    {
      free(v15);
    }
  }
}

os_log_t ___Z22x_log_get_render_tracev_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Render.Trace");
  x_log_get_render_trace(void)::log = result;
  return result;
}

void CA::OGL::render_subclass(CA::OGL::Renderer &,CA::OGL::Layer const*)::visitor::visit_subclass(void *result)
{
  __dst[63] = *MEMORY[0x1E69E9840];
  v1 = result[1];
  v2 = *(v1 + 8);
  if (*(v2 + 1380))
  {
    *(v1 + 101) = 1;
  }

  else if ((*(v2 + 306) & 8) == 0)
  {
    v3 = *v1;
    if ((*(*v1 + 1384) & 2) == 0)
    {
      v4 = v3[75];
      if (v4)
      {
        v5 = (*(*v4 + 16))(v4);
        if (v5)
        {
          v6 = v5;
          if ((*(*v5 + 600))(v5))
          {
            v7 = (*(*v6 + 608))(v6);
            if (v7)
            {
              v8 = v7;
              v9 = v3[84];
              do
              {
                v10 = v9;
                v9 = *(v9 + 8);
              }

              while (v9);
              v11 = (*(*v3 + 1016))(v3, v7, 1);
              v12 = *(v10 + 56);
              v27 = *(v10 + 48);
              CA::OGL::Context::push_surface(v3, v11, 0, 0, 0);
              v13 = v3[2];
              memcpy(__dst, v13, 0x1F8uLL);
              v3[2] = __dst;
              v29[4] = 0x3C003C003C003C00;
              memset(&v29[5], 0, 24);
              __dst[0] = v13;
              v29[9] = 0;
              v29[8] = 1065353216;
              v29[10] = 1025;
              v29[2] = 0;
              v29[3] = &CA::identity_transform;
              v29[0] = 0;
              v29[1] = &CA::Shape::_infinite_shape;
              v29[0] = CA::OGL::Context::set_gstate(v3, v29);
              *(v3[2] + 497) &= ~1u;
              *(v3[2] + 16) = 1;
              CA::OGL::Context::bind_surface(v3, v10, 0, 0, 0, 0.0);
              v3[18] = 0;
              v14 = v3 + 1386;
              v3[14] = v3 + 1386;
              *(v3 + 15) = xmmword_183E20E50;
              if (v3[19] <= 3uLL)
              {
                *(v3 + 692) |= 0x20u;
                CA::OGL::Context::array_flush(v3);
                v3[18] = 0;
                v3[14] = v14;
                *(v3 + 15) = xmmword_183E20E50;
              }

              v15 = v27.i32[0];
              v16 = v27.i32[1];
              v28 = vcvt_f32_s32(vadd_s32(v12, v27));
              CA::OGL::Context::array_rect(v3, v15, v16, v28.f32[0], v28.f32[1]);
              v17 = v3[17] + 48 * v3[18];
              *(v17 - 176) = v15;
              *(v17 - 172) = v16;
              *(v17 - 128) = v28.i32[0];
              *(v17 - 124) = v16;
              *(v17 - 80) = v28;
              *(v17 - 32) = v15;
              *(v17 - 28) = v28.i32[1];
              CA::OGL::Context::array_flush(v3);
              CA::OGL::Context::unbind_surface(v3, v10, 0);
              if (byte_1ED4E9855 == 1)
              {
                *(v3[2] + 497) |= 1u;
                v25 = v3[2];
                *(v25 + 496) = 3;
                *(v25 + 16) = 0;
                CA::OGL::Context::bind_surface(v3, v10, 0, 0, 0, 0.0);
                v3[18] = 0;
                v3[14] = v14;
                *(v3 + 15) = xmmword_183E20E50;
                CA::OGL::Context::array_check(v3, 1);
                CA::OGL::Context::array_rect(v3, v15, v16, v28.f32[0], v28.f32[1]);
                v26 = v3[17] + 48 * v3[18];
                *(v26 - 160) = 0x3800000000003800;
                *(v26 - 112) = 0x3800000000003800;
                *(v26 - 64) = 0x3800000000003800;
                *(v26 - 16) = 0x3800000000003800;
                CA::OGL::Context::array_flush(v3);
              }

              (*(*v3 + 1048))(v3, *(v8 + 16));
              CA::OGL::Context::set_gstate(v3, *v3[82]);
              v3[2] = __dst[0];
              __dst[0] = 0;
              CA::OGL::Context::pop_surface(v3, v18, v19, v20, v21, v22, v23, v24);
              if (__dst[0])
              {
                __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
              }
            }
          }
        }
      }
    }
  }
}

uint64_t CA::OGL::render_subclass(CA::OGL::Renderer &,CA::OGL::Layer const*)::visitor::visit_subclass(uint64_t a1, float32x4_t *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = a2[1];
  v7 = *(v5 + 24);
  v8 = 0.0;
  if ((v7[3].i8[2] & 2) != 0)
  {
    v8 = v7[2].f32[0];
    v6 = vmlaq_n_f32(v7[1], v6, 1.0 - COERCE_FLOAT(HIDWORD(*&v7[1])));
  }

  v10[0] = vcvt_f16_f32(v6);
  return CA::OGL::render_solid_background(v4, v5, v10, 0, v8);
}

int8x16_t CA::OGL::unrotate_texcoords(CA::OGL *this, int8x16_t *a2, float *a3)
{
  if (this)
  {
    result.i32[0] = a2->i32[1];
    a2->i32[1] = a2->i32[3];
    a2->i32[3] = result.i32[0];
    if ((this & 2) == 0)
    {
LABEL_3:
      if ((this & 4) == 0)
      {
        return result;
      }

LABEL_7:
      result = vextq_s8(*a2, *a2, 4uLL);
      *a2 = result;
      return result;
    }
  }

  else if ((this & 2) == 0)
  {
    goto LABEL_3;
  }

  result.i32[0] = a2->i32[0];
  a2->i32[0] = a2->i32[2];
  a2->i32[2] = result.i32[0];
  if ((this & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t CA::OGL::ContentsGeometry::ContentsGeometry(uint64_t a1, int a2, int a3, unsigned int a4, _OWORD *a5, int *a6, double *a7, int a8, int a9)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *a5;
  v15 = (a1 + 8);
  *(a1 + 24) = a5[1];
  CA::Transform::set_affine(a1 + 104, *a7, a7[1], a7[2], a7[3], a7[4], a7[5]);
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  *(a1 + 256) = _Q0;
  *(a1 + 272) = 1;
  *(a1 + 308) = a8;
  *(a1 + 312) = a9;
  *(a1 + 316) = -1082130432;
  if (a4 - 33 >= 3)
  {
    if (a4 > 0x23)
    {
      LOBYTE(v21) = 0;
    }

    else
    {
      v21 = dword_183E22728[a4];
    }
  }

  else
  {
    LOBYTE(v21) = 9;
  }

  *(a1 + 336) = v21;
  *(a1 + 337) = 0;
  *(a1 + 490) = 0;
  *(a1 + 493) = 0;
  _Q0.f64[0] = *(a1 + 8);
  v22 = *(a1 + 16);
  if (_Q0.f64[0] != 0.0 || v22 != 0.0)
  {
    _Q0 = CA::Transform::translate((a1 + 104), _Q0, v22, 0.0);
    *v15 = 0;
    v15[1] = 0;
  }

  v23 = a6[2];
  v24 = a6[3];
  _Q0.f64[0] = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = v24;
  if (_Q0.f64[0] != v23 || v25 != v26)
  {
    _Q0.f64[0] = _Q0.f64[0] / v23;
    CA::Transform::scale((a1 + 104), _Q0, v25 / v26, 1.0);
    _Q0.f64[0] = a6[2];
    v25 = a6[3];
    *(a1 + 24) = _Q0.f64[0];
    *(a1 + 32) = v25;
    v23 = a6[2];
    v24 = a6[3];
  }

  v29 = *a6;
  v28 = a6[1];
  if (*a6 || v23 != a2 || v24 != a3)
  {
    v30 = 1.0 / a2;
    v31 = 1.0 / a3;
    v32 = v30 * v29;
    *(a1 + 276) = v32;
    v33 = 1.0 - (v31 * (v24 + v28));
    *(a1 + 280) = v33;
    v34 = v30 * (v23 + v29);
    *(a1 + 284) = v34;
    v35 = 1.0 - (v31 * v28);
    *(a1 + 288) = v35;
    v36 = *(a1 + 308);
    *(a1 + 308) = v36 | 0x400;
    v37 = v30 * 0.5;
    *(a1 + 392) = v32 + (v30 * 0.5);
    v38 = v31 * 0.5;
    v39 = v33 + v38;
    *(a1 + 396) = v33 + v38;
    *(a1 + 400) = v34 - v37;
    v40 = v35 - v38;
    *(a1 + 404) = v40;
    *(a1 + 491) = 1;
    if ((v36 & 0x800) == 0)
    {
      *(a1 + 396) = 1.0 - v40;
      *(a1 + 404) = 1.0 - v39;
    }
  }

  *(a1 + 320) = v42;
  *(a1 + 40) = *(a1 + 8);
  *(a1 + 56) = _Q0.f64[0];
  *(a1 + 64) = v25;
  CA::Rect::apply_transform((a1 + 40), (a1 + 104), v16);
  return a1;
}

void CA::OGL::ContentsGeometry::scale(uint64_t this, uint64_t a2, double *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(this + 248) & 0x10) != 0 && *(this + 316) < 0.0)
  {
    v4 = 0;
    v5 = *(this + 16);
    v6 = *(this + 24);
    v7 = *(this + 32);
    v11.f64[0] = *(this + 8);
    v11.f64[1] = v5;
    *v12.i64 = v6 + v11.f64[0];
    *&v12.i64[1] = v5;
    *v13.i64 = v6 + v11.f64[0];
    *&v13.i64[1] = v7 + v5;
    v14 = v11.f64[0];
    v15 = v7 + v5;
    do
    {
      CA::Transform::apply_to_point2((this + 104), &v11.f64[v4], a3);
      v4 += 2;
    }

    while (v4 != 8);
    v8 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_f64(vmulq_f64(v11, vextq_s8(v12, v12, 8uLL)), v12, vextq_s8(v13, v13, 8uLL)), vzip1q_s64(v13, v11), v15), vzip2q_s64(v11, v13), v14);
    v9 = 0.5 * vsubq_f64(v8, vdupq_laneq_s64(v8, 1)).f64[0] / (v7 * v6);
    v10 = sqrtf(fabsf(v9));
    if ((LODWORD(v10) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v10 = 1.0;
    }

    *(this + 316) = v10;
  }
}

void CA::OGL::prepare_color_program_cache(CA::OGL::Context **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 24);
  v9 = (*(v8 + 44) & 0x800000C0) == 0 && ((v10 = *(v8 + 152)) == 0 || (*(v10 + 104) & 0x8000000000000000) == 0) && (*(*(a2 + 16) + 25) & 4) == 0;
  v11 = BYTE5(xmmword_1ED4E980C);
  v12 = CGColorSpaceUsesITUR_2100TF(*(a3 + 56));
  if ((BYTE9(xmmword_1ED4E988C) & 1) != 0 || (v13 = (*(*(a2 + 24) + 40) >> 36) & 3, v13 == 2))
  {
    if ((BYTE8(xmmword_1ED4E988C) & 1) == 0)
    {
      v12 |= CGColorSpaceUsesExtendedRange(*(a3 + 56));
    }

    LODWORD(v13) = 2;
  }

  if (a4)
  {
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a4 + 12) == 25;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 | v12 ^ 1 | (v13 == 1) | BYTE5(xmmword_1ED4E980C);
  v17 = v16 | v11;
  v18 = 0.0;
  if ((v17 & 1) == 0 && (byte_1ED4E98A2 & 1) == 0)
  {
    v18 = *(a3 + 68);
  }

  if (a4)
  {
    LOBYTE(a4) = *(a4 + 12) != 25 && CGColorSpaceUsesITUR_2100TF(*(a3 + 56));
  }

  v19 = *(*(a2 + 24) + 136);
  if (v19)
  {
    v20 = *(v19 + 272);
  }

  else
  {
    v20 = 0.0;
  }

  v21 = *a1;
  if (v20 == 0.0)
  {
    v22 = *(a3 + 64);
  }

  else
  {
    v22 = v20;
  }

  if (v12)
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v23 = *&dword_1ED4E9758;
    if (*&dword_1ED4E9758 != 0.0 && (CGColorSpaceContainsFlexGTCInfo() & 1) == 0)
    {
      v22 = fmax(v23 * 0.00492610837, 1.0);
    }
  }

  v24 = 4.9261;
  if (v22 != 0.0)
  {
    v24 = v22;
  }

  v25 = *(*(a2 + 24) + 136);
  if (v25)
  {
    v26 = v25[69];
    if (v26 == 0.0)
    {
      v26 = v24;
    }

    v27 = v25[67];
    v28 = v25[66];
  }

  else
  {
    v28 = 0.0;
    v27 = 1.0;
    v26 = v24;
  }

  CA::OGL::Context::configure_color_program_cache(v21, (v17 & 1) == 0, v9 & ~v16 & 1, v13, a4, v24, v26, v27, v28, v18);
}

uint64_t CA::OGL::set_swizzle(void *a1, unsigned int a2, int a3)
{
  if (a3 != 1)
  {
    __assert_rtn("set_swizzle", "ogl-layer.cpp", 2356, "swizzle == Render::kLayerContentsSwizzleAAAA");
  }

  result = (*(*a1 + 232))(a1, 28);
  v6 = a1[2];
  if (result)
  {
    v7 = a2;
    v8 = CA::OGL::swizzle_to_image_function(CA::Render::LayerContentsSwizzle,CA::OGL::ImageFunction)::AAAA_functions[*(v6 + a2 + 17)];
    if (!v8)
    {
      v8 = 37;
    }
  }

  else
  {
    v7 = a2;
    v8 = 25;
  }

  *(v6 + v7 + 17) = v8;
  return result;
}

atomic_uint **X::Ref<CA::Render::Surface>::operator=(atomic_uint **a1, atomic_uint *a2)
{
  v3 = *a1;
  if (v3 != a2)
  {
    v4 = a2;
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    v5 = v4 + 2;
    if (!atomic_fetch_add(v4 + 2, 1u))
    {
      v4 = 0;
      atomic_fetch_add(v5, 0xFFFFFFFF);
    }

    *a1 = v4;
  }

  return a1;
}

uint64_t CA::OGL::Renderer::add_clip_plane(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 80);
  if (result)
  {
    *(a1 + 80) = *result;
  }

  else
  {
    result = x_heap_malloc_small_(*(a1 + 56), 0x20uLL);
  }

  *(a2 + 216) = result;
  ++*(a2 + 384);
  v5 = *(a2 + 176);
  v6 = *(v5 + 72);
  if (v6)
  {
    v7 = *(v6 + 8) + 1;
  }

  else
  {
    v7 = 1;
  }

  *(result + 8) = v7;
  *result = v6;
  *(v5 + 72) = result;
  return result;
}

atomic_uint *___ZN2CA3OGLL27vibrancy_strength_reductionERNS0_8RendererERNS0_7ContextEPNS0_5LayerEPKNS_6Render10TypedArrayINS7_6FilterEEEPKS9_RKNS0_6GstateE_block_invoke(uint64_t a1, const __CFString *a2)
{
  CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_color_matrix_name = CA::Render::String::new_string(@"vibrantColorMatrixSourceOver", a2);
  CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_dark_name = CA::Render::String::new_string(@"vibrantDarkSourceOver", v2);
  CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_light_name = CA::Render::String::new_string(@"vibrantLightSourceOver", v3);
  CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_dark_reversed_name = CA::Render::String::new_string(@"vibrantDarkSourceOverReversed", v4);
  result = CA::Render::String::new_string(@"vibrantLightSourceOverReversed", v5);
  CA::OGL::vibrancy_strength_reduction(CA::OGL::Renderer &,CA::OGL::Context &,CA::OGL::Layer *,CA::Render::TypedArray<CA::Render::Filter> const*,CA::Render::Filter const*,CA::OGL::Gstate const&)::vibrant_light_reversed_name = result;
  return result;
}

void CA::OGL::accumulate_sdf_element_bounds(uint64_t a1, uint64_t a2, double *a3, int32x4_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 168) + 248);
  if (v4)
  {
    a4.i32[0] = 1073741822;
    v28 = a4;
    v26 = vdupq_n_s64(0xC1BFFFFFFF000000);
    v27 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    v7 = vdupq_n_s64(0x41C0000000000000uLL);
    v25 = v7;
    do
    {
      if ((*(v4 + 36) & 0x80) != 0)
      {
        v8 = *(a2 + 48);
        v9 = *(v4 + 176);
        v10.i32[1] = 0;
        v10.i64[1] = 0;
        v30 = 0u;
        v31 = 0u;
        v11 = *(v9 + 152);
        if (v11 < 0)
        {
          (*(*v9 + 40))(v9, v9 + 144);
          v11 = *(v9 + 152);
        }

        v12 = *(v9 + 156);
        if (v11 <= v12)
        {
          v13 = *(v9 + 156);
        }

        else
        {
          v13 = v11;
        }

        v10.i32[0] = v13;
        v14 = *(v9 + 144);
        v15.i64[0] = v14;
        v15.i64[1] = SHIDWORD(v14);
        v16 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v10, v28), 0), v27, vcvtq_f64_s64(v15));
        v17 = v11;
        v18 = v12;
        if (v13 > 1073741822)
        {
          v17 = 1.79769313e308;
          v18 = 1.79769313e308;
        }

        v30 = v16;
        v31.f64[0] = v17;
        v31.f64[1] = v18;
        v19 = CA::Rect::unapply_transform(&v30, *(v9 + 80), a3);
        (*(*v8 + 64))(v8, a2, *(v4 + 24), &v30, v19);
        CA::Rect::apply_transform(&v30, *(v9 + 80), v20);
        v22 = vceqzq_f64(v31);
        if ((vorrq_s8(vdupq_laneq_s64(v22, 1), v22).u64[0] & 0x8000000000000000) != 0 || (v23 = vceqq_f64(v31, v31), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v23), 1), v23).u64[0] & 0x8000000000000000) != 0))
        {
          v29[0] = 0;
          v29[1] = 0;
        }

        else
        {
          v24 = vcvtmq_s64_f64(vmaxnmq_f64(v30, v26));
          *v29 = vuzp1q_s32(v24, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v30, v31), v25)), v24));
        }

        CA::shape_union(a3, v29, v21);
      }

      else
      {
        CA::OGL::accumulate_sdf_element_bounds(v4, a2, a3, v7);
      }

      v4 = *v4;
    }

    while (v4);
  }
}

uint64_t CA::OGL::composite_detached(uint64_t a1, uint64_t a2, uint32x2_t *a3, double *a4, double *a5, char a6, uint64_t a7)
{
  buf[19] = *MEMORY[0x1E69E9840];
  v14 = a4[2];
  if ((a6 & 4) != 0)
  {
    v15 = a4[3];
  }

  else
  {
    v15 = a4[2];
  }

  if (v15 == a5[2])
  {
    if ((a6 & 4) == 0)
    {
      v14 = a4[3];
    }

    v16 = v14 != a5[3];
  }

  else
  {
    v16 = 1;
  }

  v17 = *(a7 + 600);
  if (a3[1].i8[4] != 57 || !(*(*a3 + 304))(a3))
  {
    goto LABEL_39;
  }

  v18 = a3[22];
  if (v18)
  {
    goto LABEL_40;
  }

  if (byte_1ED4E983D == 1)
  {
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v78 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v79 = a3[15].i32[0];
      buf[0].i32[0] = 67109120;
      buf[0].i32[1] = v79;
      _os_log_debug_impl(&dword_183AA6000, v78, OS_LOG_TYPE_DEBUG, "Cannot Display TM (composite_detached), OnDemand MSR/GPU TM on surface (0x%x)", buf, 8u);
    }
  }

  memset(buf, 0, 152);
  v19 = a3[23];
  if (!v19)
  {
    v33 = *a3[32].i8;
    *buf[11].f32 = *a3[34].i8;
    v34 = *a3[38].i8;
    *buf[13].f32 = *a3[36].i8;
    *buf[15].f32 = v34;
    *buf[17].f32 = *a3[40].i8;
    v35 = *a3[24].i8;
    *buf[3].f32 = *a3[26].i8;
    v36 = *a3[30].i8;
    *buf[5].f32 = *a3[28].i8;
    *buf[7].f32 = v36;
    *buf[9].f32 = v33;
    *buf[1].f32 = v35;
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v37 = x_log_get_ogl(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *v83 = 0;
    v38 = "Could not tonemap surface because of invalid configuration";
    v39 = v37;
    v40 = 2;
LABEL_77:
    _os_log_error_impl(&dword_183AA6000, v39, OS_LOG_TYPE_ERROR, v38, v83, v40);
    goto LABEL_31;
  }

  v82 = a2;
  atomic_fetch_add(v19 + 4, 1u);
  v20 = *a3[34].i8;
  *buf[9].f32 = *a3[32].i8;
  v21 = *a3[28].i8;
  *buf[7].f32 = *a3[30].i8;
  *buf[5].f32 = v21;
  v22 = *a3[24].i8;
  *buf[3].f32 = *a3[26].i8;
  v23 = *a3[38].i8;
  *buf[17].f32 = *a3[40].i8;
  v24 = *a3[36].i8;
  *buf[15].f32 = v23;
  *buf[13].f32 = v24;
  *buf[11].f32 = v20;
  buf[0] = v19;
  *buf[1].f32 = v22;
  v25 = *(a7 + 624);
  v26 = (*(*v19 + 56))(v19, v25);
  v27 = buf[18].f32[1];
  v80 = buf[18].u8[0];
  v81 = v26;
  v28 = (*(*a3 + 280))(a3);
  v29 = (*(*v19 + 24))(v19, a3, v25, &buf[1], v81, 0, v80, v28, 1.0, v27, 1);
  if (v29)
  {
    v30 = v29;
    v31 = a3[22];
    a2 = v82;
    if (v31 != v30)
    {
      if (v31 && atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v31 + 16))(v31);
      }

      v32 = v30;
      if (!atomic_fetch_add(v30 + 2, 1u))
      {
        v32 = 0;
        atomic_fetch_add(v30 + 2, 0xFFFFFFFF);
      }

      a3[22] = v32;
    }

    if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v30 + 16))(v30);
    }

    goto LABEL_31;
  }

  if (x_log_get_ogl(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
  }

  a2 = v82;
  v41 = x_log_get_ogl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
  {
    v71 = a3[15].i32[0];
    *v83 = 67109120;
    v84 = v71;
    v38 = "Failed to tonemap surface 0x%x";
    v39 = v41;
    v40 = 8;
    goto LABEL_77;
  }

LABEL_31:
  v42 = buf[0];
  if (*buf && atomic_fetch_add((*buf + 16), 0xFFFFFFFF) == 1)
  {
    (*(**&v42 + 8))(v42);
  }

  v18 = a3[22];
  if (!v18)
  {
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v43 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
    {
      v70 = a3[15].i32[0];
      buf[0].i32[0] = 67109120;
      buf[0].i32[1] = v70;
      _os_log_error_impl(&dword_183AA6000, v43, OS_LOG_TYPE_ERROR, "No valid tonemapped surface available for 0x%x", buf, 8u);
    }

LABEL_39:
    v18 = a3;
  }

LABEL_40:
  buf[0] = 0;
  buf[1] = 0;
  v44 = CA::OGL::Context::bind_image(a7, 0, v18, 63, v16, v16, 0, 0, 0.0, buf, 0);
  if (!v44)
  {
    goto LABEL_73;
  }

  v46 = v44;
  v47 = a2;
  *(*(a7 + 16) + 497) |= 1u;
  v48 = *(a7 + 16);
  *(v48 + 496) = 7;
  *(v48 + 16) = 1;
  *(a7 + 144) = 0;
  v49 = a7 + 1386;
  *(a7 + 112) = a7 + 1386;
  *(a7 + 120) = xmmword_183E20E50;
  if (*(a7 + 152) <= 3uLL)
  {
    *(a7 + 1384) |= 0x20u;
    CA::OGL::Context::array_flush(a7);
    *(a7 + 144) = 0;
    *(a7 + 112) = v49;
    *(a7 + 120) = xmmword_183E20E50;
  }

  LODWORD(v45) = v18[2].i32[1];
  v50 = v18[2].u32[0];
  v51 = a4[1];
  v52 = *a4 / v50;
  v53 = v45;
  v54 = v51 / v53;
  v55 = (a4[2] + *a4) / v50;
  v56 = (a4[3] + v51) / v53;
  if (a6)
  {
    if ((a6 & 4) != 0)
    {
      if ((a6 & 2) != 0)
      {
        v57 = v54;
      }

      else
      {
        v57 = v56;
      }

      if ((a6 & 2) != 0)
      {
        v54 = v56;
      }

      v58 = *a4 / v50;
      goto LABEL_58;
    }

    v57 = v54;
    v59 = v56;
    if ((a6 & 2) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if ((a6 & 2) != 0)
  {
    v57 = v56;
    v59 = v54;
    if ((a6 & 4) == 0)
    {
LABEL_51:
      v58 = v52;
      v54 = v59;
      goto LABEL_58;
    }

LABEL_48:
    v57 = v54;
    v58 = v55;
    v54 = v56;
    goto LABEL_49;
  }

  v57 = v56;
  v58 = (a4[2] + *a4) / v50;
LABEL_49:
  v55 = v52;
LABEL_58:
  v60 = a5[1];
  v61 = *a5;
  v62 = v60;
  v63 = a5[2] + *a5;
  *&v60 = a5[3] + v60;
  CA::OGL::Context::array_rect(a7, v61, v62, v63, *&v60);
  if ((a6 & 4) != 0)
  {
    v64 = v57;
  }

  else
  {
    v64 = v54;
  }

  if ((a6 & 4) != 0)
  {
    v65 = v55;
  }

  else
  {
    v65 = v58;
  }

  if ((a6 & 4) != 0)
  {
    v66 = v54;
  }

  else
  {
    v66 = v57;
  }

  if ((a6 & 4) != 0)
  {
    v67 = v58;
  }

  else
  {
    v67 = v55;
  }

  v68 = *(a7 + 136) + 48 * *(a7 + 144);
  *(v68 - 176) = v55;
  *(v68 - 172) = v64;
  *(v68 - 128) = v65;
  *(v68 - 124) = v54;
  *(v68 - 80) = v58;
  *(v68 - 76) = v66;
  *(v68 - 32) = v67;
  *(v68 - 28) = v57;
  CA::OGL::Context::array_flush(a7);
  if (BYTE2(xmmword_1ED4E97DC) == 1)
  {
    v72 = *(a7 + 16);
    *(v72 + 496) = 3;
    *(v72 + 16) = 0;
    *(a7 + 144) = 0;
    *(a7 + 112) = v49;
    *(a7 + 120) = xmmword_183E20E50;
    CA::OGL::Context::array_check(a7, 1);
    v73 = a5[1];
    v74 = *a5;
    v75 = v73;
    v76 = a5[2] + *a5;
    *&v73 = a5[3] + v73;
    CA::OGL::Context::array_rect(a7, v74, v75, v76, *&v73);
    v77 = *(a7 + 136) + 48 * *(a7 + 144);
    *(v77 - 160) = 0x3804000000003804;
    *(v77 - 112) = 0x3804000000003804;
    *(v77 - 64) = 0x3804000000003804;
    *(v77 - 16) = 0x3804000000003804;
    CA::OGL::Context::array_flush(a7);
  }

  *(*(a7 + 16) + 497) &= ~1u;
  (*(*a7 + 560))(a7, v46, 0);
  a2 = v47;
LABEL_73:
  result = (*(*v17 + 56))(v17, a1, a2);
  if (a1)
  {
    *(a1 + 104) &= ~0x8000uLL;
  }

  return result;
}

unint64_t x_int_hash(uint64_t a1)
{
  v1 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
  v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return v3 ^ (v3 >> 31);
}

void sub_183C66618(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___Z29CAWindowLayerDidChangeFlattenmh_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  if (v1)
  {
    v3 = (v1 - CA::Render::_render_id_slide);
  }

  else
  {
    v3 = 0;
  }

  v11 = v3;
  os_unfair_lock_lock(&_all_windowlayer_lock);
  v4 = *(_all_windowlayer + 8);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = _all_windowlayer + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= v11;
    v8 = v6 < v11;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != _all_windowlayer + 8 && *(v5 + 32) <= v11)
  {
    v9 = v11;
    os_unfair_lock_unlock(&_all_windowlayer_lock);
    if (v9)
    {
      +[CATransaction lock];
      v10 = [v11 delegate];
      +[CATransaction unlock];
      if ((objc_opt_respondsToSelector() & 1) != 0 && (v2 != 0) != [v11 windowFlattened])
      {
        [v10 windowLayer:v11 didChangeFlatten:v2 != 0];
      }

      [v11 setWindowFlattened:v2 != 0];
    }
  }

  else
  {
LABEL_14:

    os_unfair_lock_unlock(&_all_windowlayer_lock);
  }
}

CALayer *calayer_from_render_layer(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a2 + 136);
  v6 = a2;
  if (v5)
  {
    v6 = *v5;
    if (!*v5)
    {
      v6 = a2;
    }
  }

  v7 = *(v6 + 12);
  if (*(v6 + 12) <= 0x1Du)
  {
    if (v7 == 3)
    {
      v8 = +[(CALayer *)CABackdropLayer];
      v20 = *(a2 + 136);
      if (v20 && (v21 = *v20) != 0)
      {
        if (*(v21 + 12) == 3)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2))
      {
        _ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 = 0u;
        *&qword_1EA852320 = 0u;
        dword_1EA852330 = 1065353216;
        __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2);
      }

      if (_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE10once_token_2 != -1)
      {
        dispatch_once(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE10once_token_2, &__block_literal_global_271);
      }

      get_setters_for_type<CA::Render::Layer>();
      for (i = qword_1EA852320; i; i = *i)
      {
        *__p = 0u;
        v35 = 0u;
        if (*(i + 39) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(i + 16), *(i + 24));
        }

        else
        {
          *__p = *(i + 16);
          *&v35 = *(i + 32);
        }

        *(&v35 + 1) = *(i + 40);
        (*(&v35 + 1))(v8, v22, a2, __p, a1);
        if (SBYTE7(v35) < 0)
        {
          operator delete(__p[0]);
        }
      }

      for (j = qword_1EA852288; j; j = *j)
      {
        *__p = 0u;
        v35 = 0u;
        if (*(j + 39) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(j + 16), *(j + 24));
        }

        else
        {
          *__p = *(j + 16);
          *&v35 = *(j + 32);
        }

        *(&v35 + 1) = *(j + 40);
        (*(&v35 + 1))(v8, a2, a2, __p, a1);
        if (SBYTE7(v35) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      if (v7 != 20)
      {
LABEL_40:
        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v23 = x_log_get_utilities::log;
        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
        {
          if (v7 > 0x3F || (v33 = CA::Render::type_names[v7], !*v33))
          {
            v33 = "<unknown>";
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v33;
          _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "calayer_from_render_layer missing type : %s", __p, 0xCu);
        }

        v8 = 0;
        goto LABEL_119;
      }

      v8 = +[(CALayer *)CAGradientLayer];
      v12 = *(a2 + 136);
      if (v12 && (v13 = *v12) != 0)
      {
        if (*(v13 + 12) == 20)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0))
      {
        _ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 = 0u;
        *&qword_1EA852218 = 0u;
        dword_1EA852228 = 1065353216;
        __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0);
      }

      if (_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE10once_token_0 != -1)
      {
        dispatch_once(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE10once_token_0, &__block_literal_global_3373);
      }

      get_setters_for_type<CA::Render::Layer>();
      for (k = qword_1EA852218; k; k = *k)
      {
        *__p = 0u;
        v35 = 0u;
        if (*(k + 39) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(k + 16), *(k + 24));
        }

        else
        {
          *__p = *(k + 16);
          *&v35 = *(k + 32);
        }

        *(&v35 + 1) = *(k + 40);
        (*(&v35 + 1))(v8, v14, a2, __p, a1);
        if (SBYTE7(v35) < 0)
        {
          operator delete(__p[0]);
        }
      }

      for (m = qword_1EA852288; m; m = *m)
      {
        *__p = 0u;
        v35 = 0u;
        if (*(m + 39) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(m + 16), *(m + 24));
        }

        else
        {
          *__p = *(m + 16);
          *&v35 = *(m + 32);
        }

        *(&v35 + 1) = *(m + 40);
        (*(&v35 + 1))(v8, a2, a2, __p, a1);
        if (SBYTE7(v35) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 0x1E:
        v15 = off_1E6DEAAC8;
        if ((*(a2 + 12) & 0x100) != 0)
        {
          v15 = off_1E6DEAC30;
        }

        v8 = [(__objc2_class *)*v15 layer];
        get_setters_for_type<CA::Render::Layer>();
        get_setters_for_type<CA::Render::Layer>();
        for (n = qword_1EA852288; n; n = *n)
        {
          *__p = 0u;
          v35 = 0u;
          if (*(n + 39) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(n + 16), *(n + 24));
          }

          else
          {
            *__p = *(n + 16);
            *&v35 = *(n + 32);
          }

          *(&v35 + 1) = *(n + 40);
          (*(&v35 + 1))(v8, a2, a2, __p, a1);
          if (SBYTE7(v35) < 0)
          {
            operator delete(__p[0]);
          }
        }

        break;
      case 0x2E:
        v8 = +[(CALayer *)CAReplicatorLayer];
        v17 = *(a2 + 136);
        if (v17 && (v18 = *v17) != 0)
        {
          if (*(v18 + 12) == 46)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3))
        {
          _ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 = 0u;
          *&qword_1EA852358 = 0u;
          dword_1EA852368 = 1065353216;
          __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3);
        }

        if (_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE10once_token_3 != -1)
        {
          dispatch_once(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE10once_token_3, &__block_literal_global_297);
        }

        get_setters_for_type<CA::Render::Layer>();
        for (ii = qword_1EA852358; ii; ii = *ii)
        {
          *__p = 0u;
          v35 = 0u;
          if (*(ii + 39) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(ii + 16), *(ii + 24));
          }

          else
          {
            *__p = *(ii + 16);
            *&v35 = *(ii + 32);
          }

          *(&v35 + 1) = *(ii + 40);
          (*(&v35 + 1))(v8, v19, a2, __p, a1);
          if (SBYTE7(v35) < 0)
          {
            operator delete(__p[0]);
          }
        }

        for (jj = qword_1EA852288; jj; jj = *jj)
        {
          *__p = 0u;
          v35 = 0u;
          if (*(jj + 39) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(jj + 16), *(jj + 24));
          }

          else
          {
            *__p = *(jj + 16);
            *&v35 = *(jj + 32);
          }

          *(&v35 + 1) = *(jj + 40);
          (*(&v35 + 1))(v8, a2, a2, __p, a1);
          if (SBYTE7(v35) < 0)
          {
            operator delete(__p[0]);
          }
        }

        break;
      case 0x33:
        v8 = +[(CALayer *)CAShapeLayer];
        v9 = *(a2 + 136);
        if (v9 && (v10 = *v9) != 0)
        {
          if (*(v10 + 12) == 51)
          {
            v11 = v10;
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

        if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1))
        {
          _ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 = 0u;
          *&qword_1EA8522E8 = 0u;
          dword_1EA8522F8 = 1065353216;
          __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1);
        }

        if (_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE10once_token_1 != -1)
        {
          dispatch_once(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE10once_token_1, &__block_literal_global_249);
        }

        get_setters_for_type<CA::Render::Layer>();
        for (kk = qword_1EA8522E8; kk; kk = *kk)
        {
          *__p = 0u;
          v35 = 0u;
          if (*(kk + 39) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(kk + 16), *(kk + 24));
          }

          else
          {
            *__p = *(kk + 16);
            *&v35 = *(kk + 32);
          }

          *(&v35 + 1) = *(kk + 40);
          (*(&v35 + 1))(v8, v11, a2, __p, a1);
          if (SBYTE7(v35) < 0)
          {
            operator delete(__p[0]);
          }
        }

        for (mm = qword_1EA852288; mm; mm = *mm)
        {
          *__p = 0u;
          v35 = 0u;
          if (*(mm + 39) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(mm + 16), *(mm + 24));
          }

          else
          {
            *__p = *(mm + 16);
            *&v35 = *(mm + 32);
          }

          *(&v35 + 1) = *(mm + 40);
          (*(&v35 + 1))(v8, a2, a2, __p, a1);
          if (SBYTE7(v35) < 0)
          {
            operator delete(__p[0]);
          }
        }

        break;
      default:
        goto LABEL_40;
    }
  }

LABEL_119:
  objc_autoreleasePoolPop(v4);
  return v8;
}

void sub_183C675DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void get_setters_for_type<CA::Render::Layer>()
{
  if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render5LayerEERKDavE9layer_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render5LayerEERKDavE9layer_map))
  {
    _ZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEv();

    __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render5LayerEERKDavE9layer_map);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEv()
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v9, 0x40uLL);
  if ((atomic_load_explicit(&_ZGVZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavE10timing_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavE10timing_map))
  {
    _ZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEv();
    __cxa_guard_release(&_ZGVZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavE10timing_map);
  }

  v6 = 0u;
  v7 = 0u;
  v8 = dword_1EA8522C8;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(&v6, qword_1EA8522B0);
  v0 = qword_1EA8522B8;
  if (qword_1EA8522B8)
  {
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(&v6, v0 + 2, (v0 + 2));
      v0 = *v0;
    }

    while (v0);
  }

  for (i = v7; i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(v9, i + 2, (i + 2));
  }

  snake_case_to_camel_case("allows_display_compositing", 26, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 898, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("allows_edge_antialiasing", 24, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 899, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("allows_group_blending", 21, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 900, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("allows_group_opacity", 20, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 901, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("allows_hit_testing", 18, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 902, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("anchor_point", 12, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 906, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("anchor_point_z", 14, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 907, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("background_color_phase", 22, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 908, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("background_filters", 18, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 909, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("border_offset", 13, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 910, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("border_path_is_bounds", 21, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 911, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE9_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("border_width", 12, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 912, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE10_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("bounds", 6, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 913, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE11_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("compositing_filter", 18, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 914, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE12_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents", 8, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 915, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE13_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_aligns_to_pixels", 25, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 916, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE14_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_center", 15, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 917, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE15_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_contains_subtitles", 27, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 918, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE16_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_dither", 15, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 919, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE17_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_gravity", 16, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 920, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE18_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_multiply_color", 23, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 921, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE19_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_opaque", 15, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 922, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE20_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_rect", 13, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 923, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE21_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_scale", 14, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 924, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE22_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_swizzle", 16, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 925, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE23_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_transform", 18, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 926, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE24_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("corner_contents", 15, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 927, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE25_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("corner_contents_center", 22, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 928, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE26_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("corner_contents_masks_edges", 27, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 929, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE27_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("corner_radii", 12, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 930, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE28_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("corner_radius", 13, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 931, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE29_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("creates_compositing_group", 25, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 932, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE30_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("disable_update_mask", 19, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 933, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE31_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("edge_antialiasing_mask", 22, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 934, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE32_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("filters", 7, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 935, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE33_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("flips_horizontal_axis", 21, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 936, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE34_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("hit_tests_as_opaque", 19, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 940, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE35_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("hit_tests_contents_alpha_channel", 32, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 941, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE36_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("inherits_timing", 15, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 942, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE37_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("inverts_mask", 12, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 943, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE38_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("inverts_shadow", 14, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 944, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE39_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("literal_contents_center", 23, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 945, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE40_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("magnification_filter", 20, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 946, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE41_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("mask", 4, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 947, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE42_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("masked_corners", 14, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 948, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE43_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("masks_to_bounds", 15, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 949, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE44_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("mesh_transform", 14, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 950, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE45_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("minification_filter", 19, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 951, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE46_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("name", 4, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 952, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE47_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("opacity", 7, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 953, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE48_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("position", 8, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 954, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE49_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("preloads_cache", 14, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 955, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE50_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("punchout_shadow", 15, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 956, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE51_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("rasterization_prefers_display_compositing", 41, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 957, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE52_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("rasterization_prefers_window_server_aware_backdrops", 51, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 958, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE53_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("rasterization_scale", 19, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 959, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE54_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("rim_color", 9, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 963, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE55_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("rim_opacity", 11, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 964, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE56_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("rim_path_is_bounds", 18, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 965, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE57_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("rim_width", 9, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 966, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE58_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("security_mode", 13, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 967, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE59_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("shadow_color", 12, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 972, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE60_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("shadow_offset", 13, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 973, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE61_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("shadow_opacity", 14, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 974, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE62_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("shadow_path", 11, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 975, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE63_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("shadow_path_is_bounds", 21, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 976, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE64_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("shadow_radius", 13, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 977, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE65_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("should_rasterize", 16, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 978, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE66_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("should_flatten", 14, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 979, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE67_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("should_reflatten", 16, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 980, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE68_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("soft_rim", 8, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 981, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE69_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("sorts_sublayers", 15, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 982, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE70_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("uses_web_kit_behavior", 21, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 983, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE71_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("sublayer_transform", 18, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 984, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE72_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("transform", 9, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 985, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE73_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("z_position", 10, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 986, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE74_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "allowsLimitedHeadroom");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 988, "Duplicated Entry !! && map.map.find (allowsLimitedHeadroom) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "allowsLimitedHeadroom");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE75_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "wantsExtendedDynamicRangeContent");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 989, "Duplicated Entry !! && map.map.find (wantsExtendedDynamicRangeContent) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "wantsExtendedDynamicRangeContent");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE76_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "gain");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 990, "Duplicated Entry !! && map.map.find (gain) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "gain");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE77_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "doubleSided");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 991, "Duplicated Entry !! && map.map.find (doubleSided) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "doubleSided");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE78_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "geometryFlipped");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 992, "Duplicated Entry !! && map.map.find (geometryFlipped) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "geometryFlipped");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE79_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "hidden");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 993, "Duplicated Entry !! && map.map.find (hidden) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "hidden");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE80_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "minificationFilterBias");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 994, "Duplicated Entry !! && map.map.find (minificationFilterBias) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "minificationFilterBias");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE81_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "presentationModifiers");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 995, "Duplicated Entry !! && map.map.find (presentationModifiers) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "presentationModifiers");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE82_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "toneMapToStandardDynamicRange");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 996, "Duplicated Entry !! && map.map.find (toneMapToStandardDynamicRange) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "toneMapToStandardDynamicRange");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE83_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsMaximumDesiredEDR");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1001, "Duplicated Entry !! && map.map.find (contentsMaximumDesiredEDR) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsMaximumDesiredEDR");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE84_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsCDRStrength");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1002, "Duplicated Entry !! && map.map.find (contentsCDRStrength) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsCDRStrength");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE85_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsEDRStrength");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1003, "Duplicated Entry !! && map.map.find (contentsEDRStrength) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsEDRStrength");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE86_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "displayMaximumDesiredEDR");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1005, "Duplicated Entry !! && map.map.find (displayMaximumDesiredEDR) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "displayMaximumDesiredEDR");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE87_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "allowsColorMatching");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1009, "Duplicated Entry !! && map.map.find (allowsColorMatching) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "allowsColorMatching");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE88_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  snake_case_to_camel_case("sublayers", 9, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1024, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE89_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("animations", 10, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1037, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE90_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("background_color", 16, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1041, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE91_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("border_color", 12, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1045, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE92_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("contents_scaling", 16, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1049, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE93_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("corner_curve", 12, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1060, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE94_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("tone_map_mode", 13, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1069, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE95_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("preferred_dynamic_range", 23, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1081, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE96_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("defines_display_region_of_interest", 34, v11);
  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1087, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v11);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE97_8__invokeES8_SA_SA_SJ_SM_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "actions");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1132, "Duplicated Entry !! && map.map.find (actions) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "actions");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE98_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "autoresizingMask");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1133, "Duplicated Entry !! && map.map.find (autoresizingMask) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "autoresizingMask");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE99_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "canDrawConcurrently");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1134, "Duplicated Entry !! && map.map.find (canDrawConcurrently) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "canDrawConcurrently");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE100_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "clearsContext");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1135, "Duplicated Entry !! && map.map.find (clearsContext) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "clearsContext");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE101_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "constraints");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1136, "Duplicated Entry !! && map.map.find (constraints) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "constraints");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE102_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsFormat");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1137, "Duplicated Entry !! && map.map.find (contentsFormat) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsFormat");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE103_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "delegate");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1138, "Duplicated Entry !! && map.map.find (delegate) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "delegate");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE104_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "drawsAsynchronously");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1139, "Duplicated Entry !! && map.map.find (drawsAsynchronously) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "drawsAsynchronously");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE105_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "floating");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1140, "Duplicated Entry !! && map.map.find (floating) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "floating");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE106_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "frame");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1141, "Duplicated Entry !! && map.map.find (frame) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "frame");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE107_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "frozen");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1142, "Duplicated Entry !! && map.map.find (frozen) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "frozen");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE108_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "layoutManager");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1143, "Duplicated Entry !! && map.map.find (layoutManager) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "layoutManager");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE109_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "margin");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1144, "Duplicated Entry !! && map.map.find (margin) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "margin");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE110_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "needsDisplayOnBoundsChange");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1145, "Duplicated Entry !! && map.map.find (needsDisplayOnBoundsChange) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "needsDisplayOnBoundsChange");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE111_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "needsLayoutOnGeometryChange");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1146, "Duplicated Entry !! && map.map.find (needsLayoutOnGeometryChange) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "needsLayoutOnGeometryChange");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE112_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "opaque");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1147, "Duplicated Entry !! && map.map.find (opaque) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "opaque");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE113_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "sizeRequisition");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1148, "Duplicated Entry !! && map.map.find (sizeRequisition) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "sizeRequisition");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE114_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "states");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1149, "Duplicated Entry !! && map.map.find (states) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "states");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE115_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "stateTransitions");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1150, "Duplicated Entry !! && map.map.find (stateTransitions) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "stateTransitions");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE116_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "style");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1151, "Duplicated Entry !! && map.map.find (style) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "style");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE117_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "superlayer");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1152, "Duplicated Entry !! && map.map.find (superlayer) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "superlayer");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE118_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "unsafeUnretainedDelegate");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1153, "Duplicated Entry !! && map.map.find (unsafeUnretainedDelegate) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "unsafeUnretainedDelegate");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE119_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsDirtyRect");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1154, "Duplicated Entry !! && map.map.find (contentsDirtyRect) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "contentsDirtyRect");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE120_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "acceleratesDrawing");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1157, "Duplicated Entry !! && map.map.find (acceleratesDrawing) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "acceleratesDrawing");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE121_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "invertsContentsAreFlipped");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1158, "Duplicated Entry !! && map.map.find (invertsContentsAreFlipped) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "invertsContentsAreFlipped");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE122_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "motionBlurAmount");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1159, "Duplicated Entry !! && map.map.find (motionBlurAmount) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "motionBlurAmount");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE123_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "continuousCorners");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v9[0], *(&v9[0] + 1), v11))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1160, "Duplicated Entry !! && map.map.find (continuousCorners) == map.map.end ()");
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "continuousCorners");
  __p[0] = v11;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, v11, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE124_8__invokeES8_SA_SA_SJ_SM_;
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(&_ZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavE9layer_map, v9);
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&v6);
  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v9);
}

void sub_183C6C930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  __cxa_guard_abort(&_ZGVZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavE10timing_map);
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a22);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }
}

uint64_t snake_case_to_camel_case(const char *a1, int a2, char *a3)
{
  v6 = 0;
  LODWORD(v7) = 0;
  do
  {
    v8 = v6;
    v9 = v7;
    v7 = v7;
    do
    {
      v10 = v7;
      LODWORD(result) = a1[v7++];
    }

    while (result == 95);
    if (v9 == v10)
    {
      result = result;
    }

    else
    {
      result = __toupper(result);
    }

    v6 = v8 + 1;
    a3[v8] = result;
    LODWORD(v7) = v10 + 1;
  }

  while (v10 + 1 < a2);
  a3[v6] = 0;
  return result;
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  if (!a2)
  {
    return 0;
  }

  v10 = v9;
  v11 = vcnt_s8(a2);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= a2)
    {
      v13 = v9 % a2;
    }
  }

  else
  {
    v13 = (a2 - 1) & v9;
  }

  v14 = *(a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  v15 = *v14;
  if (*v14)
  {
    do
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a3))
        {
          return v15;
        }
      }

      else
      {
        if (v12 > 1)
        {
          if (v16 >= a2)
          {
            v16 %= a2;
          }
        }

        else
        {
          v16 &= a2 - 1;
        }

        if (v16 != v13)
        {
          return 0;
        }
      }

      v15 = *v15;
    }

    while (v15);
  }

  return v15;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE95_8__invokeES8_SA_SA_SJ_SM_(void *a1, const char *a2, uint64_t a3)
{
  v3 = @"ifSupported";
  v4 = *(a3 + 40) >> 36;
  if ((v4 & 3) == 1)
  {
    v3 = @"never";
  }

  if ((v4 & 3) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"automatic";
  }

  return [a1 setToneMapMode:v5];
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE93_8__invokeES8_SA_SA_SJ_SM_(void *a1, const char *a2, uint64_t a3)
{
  if ((*(a3 + 40) & 0x2000000000000) != 0)
  {
    v3 = @"repeat";
  }

  else
  {
    v3 = @"stretch";
  }

  return [a1 setContentsScaling:v3];
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE92_8__invokeES8_SA_SA_SJ_SM_(void *a1, double a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *(a5 + 136);
  if (v8)
  {
    v9 = *(v8 + 128);
    v10 = *(v8 + 244);
    v11 = *(v8 + 260);
  }

  else
  {
    v9 = 0;
    v10 = xmmword_183E20E40;
    v11 = 0.0;
  }

  v12 = cg_color_from_pattern_or_color(a7, v9, v10, v11);

  return [a1 setValue:v12 forKey:@"borderColor"];
}

CGColorRef cg_color_from_pattern_or_color(uint64_t *a1, uint64_t a2, float32x4_t a3, float a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *(a2 + 128);
    if (v5)
    {
      v6 = *(a2 + 12);
      v7 = ns_object_from_render_object(a1, *(a2 + 128), 0);
      v10 = v7;
      v11 = *(a2 + 64);
      v12 = *(a2 + 72);
      v13 = *(a2 + 80);
      if (v11 == 0.0 && v12 == 0.0 && (LODWORD(v8) = *(v5 + 16), v13 == v8) && (v14 = *(a2 + 88), LODWORD(v9) = *(v5 + 20), v14 == v9) && *(a2 + 96) == v13 && *(a2 + 104) == v14)
      {
        v15 = *(a2 + 32);
        *&v22.a = *(a2 + 16);
        *&v22.c = v15;
        *&v22.tx = *(a2 + 48);
        v16 = CGPatternCreateWithImage2();
      }

      else
      {
        v19 = *(a2 + 32);
        *&v22.a = *(a2 + 16);
        *&v22.c = v19;
        *&v22.tx = *(a2 + 48);
        v20 = *(a2 + 88);
        v16 = CGPatternCreate(v7, *&v11, &v22, *(a2 + 96), *(a2 + 104), kCGPatternTilingNoDistortion, (v6 & 0x200) == 0, &id_from_value<CGColor *,CA::Render::Pattern const*&>(ReverseSerializationState const&,CA::Render::Pattern const*&)::pattern_cbs);
        if (v16)
        {
          CGImageRetain(v10);
        }
      }

      v21 = v16;
      return CA_CGPatternColorCreate(v16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = *a1;

    return cg_color_from_values<CA::Render::Color>(v17, a3, a4);
  }
}

id cg_color_from_values<CA::Render::Color>(CGColorSpace *a1, float32x4_t a2, float a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = vcvtq_f64_f32(*a2.f32);
  v15 = vcvt_hight_f64_f32(a2);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(a2)))) & 1) == 0)
  {
    return 0;
  }

  v4 = CAGetColorSpace(35);
  v5 = v4;
  v6 = 0;
  if (a1)
  {
    v4 = a1;
  }

  do
  {
    v7 = v14.f64[v6];
    if (v7 < 0.0 || v7 > 1.0)
    {
      Extended = CAColorSpaceCreateExtended(v4);
      goto LABEL_12;
    }

    ++v6;
  }

  while (v6 != 4);
  Extended = CGColorSpaceRetain(v4);
LABEL_12:
  v11 = Extended;
  v12 = CGColorCreateWithContentHeadroom();
  CA_CGColorGetRGBComponents(v12, v5, v14.f64);
  CGColorRelease(v12);
  if (v15.f64[1] <= 0.0)
  {
    v14 = 0u;
    v15 = 0u;
  }

  else
  {
    v14 = vdivq_f64(v14, vdupq_lane_s64(*&v15.f64[1], 0));
    v15.f64[0] = v15.f64[0] / v15.f64[1];
  }

  v9 = CGColorCreateWithContentHeadroom();
  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

void sub_183C6DF28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

CALayer *ns_object_from_render_object(uint64_t *a1, uint64_t a2, const char *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v5 = *(a2 + 12);
  if (v5 <= 0x1F)
  {
    if (*(a2 + 12) > 0x14u)
    {
      if (*(a2 + 12) > 0x1Au)
      {
        if (v5 != 27)
        {
          if (v5 != 30)
          {
            goto LABEL_98;
          }

          return calayer_from_render_layer(a1, a2);
        }

        goto LABEL_45;
      }

      if (v5 == 21)
      {
        goto LABEL_45;
      }

      if (v5 != 23)
      {
        goto LABEL_98;
      }

      v8 = *(a2 + 56);
      if (!v8)
      {
        v8 = CAGetColorSpace(36);
      }

      v9 = *(a2 + 112);
      v10 = CA::Render::Image::data_size(a2);
      v11 = CFDataCreate(0, v9, v10);
      v12 = CGDataProviderCreateWithCFData(v11);
      v13 = *(a2 + 168);
      if (v13 == 9)
      {
        *decode = xmmword_183E20E00;
        v14 = CGImageMaskCreate(*(a2 + 16), *(a2 + 20), 8uLL, 8uLL, *(a2 + 176), v12, decode, 1);
      }

      else
      {
        if (v13 > 0x23)
        {
          v27 = 0;
          v26 = 0;
          v28 = 0;
        }

        else
        {
          v26 = dword_183E22728[*(a2 + 168)];
          v27 = dword_183E22600[*(a2 + 168)];
          v28 = dword_183E22570[*(a2 + 168)];
        }

        v14 = CGImageCreate(*(a2 + 16), *(a2 + 20), v26, v27, *(a2 + 176), v8, v28, v12, 0, 1, kCGRenderingIntentDefault);
      }

      v29 = v14;
      CFRelease(v11);
      CGDataProviderRelease(v12);
      return v29;
    }

    if (*(a2 + 12) <= 8u)
    {
      if (v5 == 1)
      {
        v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a2 + 16)];
        if (*(a2 + 16))
        {
          v20 = 0;
          do
          {
            v21 = *(a2 + 24 + 8 * v20);
            if (v21)
            {
              v22 = ns_object_from_render_object(a1, v21, 0);
            }

            else
            {
              v22 = 0;
            }

            [(CGPath *)v7 addObject:v22];
            ++v20;
          }

          while (v20 < *(a2 + 16));
        }

        return v7;
      }

      if (v5 != 5)
      {
        goto LABEL_98;
      }

      goto LABEL_45;
    }

    if (v5 != 9)
    {
      if (v5 != 17)
      {
        goto LABEL_98;
      }

      return filter_from_render_filter(a1, a2);
    }

    return 0;
  }

  if (*(a2 + 12) <= 0x37u)
  {
    if (*(a2 + 12) <= 0x34u)
    {
      if (v5 - 32 >= 2)
      {
        if (v5 == 38)
        {
          Mutable = CGPathCreateMutable();
          *&decode[0] = Mutable;
          CA::Render::path_iterate<ReverseSerializationPathIterator>(a2, decode);
          CGPathRetain(Mutable);
          v7 = Mutable;
          CGPathRelease(Mutable);
          return v7;
        }

        goto LABEL_98;
      }

      goto LABEL_45;
    }

    if (v5 != 53)
    {
      if (v5 != 54)
      {
        goto LABEL_98;
      }

      v19 = MEMORY[0x1E696AEC0];

      return [v19 stringWithUTF8String:a2 + 28];
    }

LABEL_45:

    return animation_from_render_animation(a1, a2);
  }

  if (*(a2 + 12) > 0x3Cu)
  {
    if (v5 == 61)
    {
      goto LABEL_45;
    }

    if (v5 != 62)
    {
      goto LABEL_98;
    }

    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = a3;
      if (!a3)
      {
        if (v16 == 1)
        {
          v18 = (a2 + 24);
LABEL_78:
          v31 = MEMORY[0x1E696AD98];
          v32 = v18->f64[0];

          return [v31 numberWithDouble:v32];
        }

        v17 = "NSArray";
      }

      v18 = (a2 + 24);
      if (!strcasecmp(v17, "real") || !strcasecmp(v17, "BOOL"))
      {
        goto LABEL_78;
      }

      if (!strcasecmp(v17, "NSArray"))
      {
        v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v16];
        if (*(a2 + 16))
        {
          v33 = 0;
          do
          {
            -[CGPath addObject:](v7, "addObject:", [MEMORY[0x1E696AD98] numberWithDouble:v18->f64[v33++]]);
          }

          while (v33 < *(a2 + 16));
        }

        return v7;
      }

      if (!strcasecmp(v17, "CGColor"))
      {
        if (v16 != 5)
        {
          __assert_rtn("ns_object_from_render_object", "CAReverseSerialization.mm", 760, "v->count () == 5");
        }

        v34 = *a1;
        v35 = *(a2 + 40);
        v36 = *(a2 + 24);
        v37 = *(a2 + 56);

        return cg_color_from_values<double const*>(v34, v36, v35, v37);
      }

      if (strcasecmp(v17, "CAColorMatrix"))
      {
        if (!strcasecmp(v17, "CGRect"))
        {

          return id_from_value<CGRect,CA::Render::Vector const*&>(a2);
        }

        return 0;
      }

      if (v16 != 20)
      {
        __assert_rtn("ns_object_from_render_object", "CAReverseSerialization.mm", 765, "v->count () == 20");
      }

      v38 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *decode = 0u;
      do
      {
        v40 = *v18;
        v39 = v18[1];
        v18 += 2;
        *&decode[v38] = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v39);
        v38 += 2;
      }

      while (v38 != 10);
      v41[2] = v44;
      v41[3] = v45;
      v41[4] = v46;
      v41[0] = *decode;
      v41[1] = v43;
      return [MEMORY[0x1E696B098] valueWithCAColorMatrix:v41];
    }

    return 0;
  }

  if (v5 != 56)
  {
    if (v5 == 57)
    {
      CFRetain(*(a2 + 128));
      return *(a2 + 128);
    }

LABEL_98:
    __assert_rtn("ns_object_from_render_object", "CAReverseSerialization.mm", 784, "false");
  }

  v23 = *(a2 + 16);
  if (v23 && (v24 = ns_object_from_render_object(a1, v23, 0)) != 0)
  {
    v49.origin.x = *(a2 + 24);
    v49.origin.y = *(a2 + 28);
    v49.size.width = *(a2 + 32);
    v49.size.height = *(a2 + 36);
    v25 = CGImageCreateWithImageInRect(v24, v49);
    if (v25)
    {
      CGImageSetProperty();
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void id_from_value<CGColor *,CA::Render::Pattern const*&>(ReverseSerializationState const&,CA::Render::Pattern const*&)::{lambda(void *,CGContext *)#1}::__invoke(CGImage *a1, CGContext *a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v6 = 0;
  v7 = 0;
  v8 = Width;

  CGContextDrawImage(a2, *&v6, a1);
}

CAFilter *filter_from_render_filter(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [CAFilter filterWithType:CAAtomGetString(*(a2 + 24))];
  if (v4)
  {
    if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map))
    {
      _ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map = 0u;
      *&qword_1EA852250 = 0u;
      dword_1EA852260 = 1065353216;
      __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map);
    }

    if (_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE10once_token != -1)
    {
      dispatch_once(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE10once_token, &__block_literal_global_44);
    }

    get_setters_for_type<CA::Render::Layer>();
    for (i = qword_1EA852250; i; i = *i)
    {
      *__p = 0u;
      v8 = 0u;
      if (*(i + 39) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *(i + 16), *(i + 24));
      }

      else
      {
        *__p = *(i + 16);
        *&v8 = *(i + 32);
      }

      *(&v8 + 1) = *(i + 40);
      (*(&v8 + 1))(v4, a2, 0, __p, a1);
      if (SBYTE7(v8) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v4;
}

CASpringAnimation *animation_from_render_animation(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 12);
  if (v4 > 0x3D)
  {
LABEL_20:
    if (v4 != 5)
    {
      __assert_rtn("animation_from_render_animation", "CAReverseSerialization.mm", 1785, "false");
    }

    v5 = objc_alloc_init(CABasicAnimation);
    if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE13animation_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE13animation_map))
    {
      _ZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE_clEv();
      __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE13animation_map);
    }

    if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE17property_anim_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE17property_anim_map))
    {
      _ZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEv();
      __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE17property_anim_map);
    }

    if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE14basic_anim_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE14basic_anim_map))
    {
      _ZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEv();
      __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE14basic_anim_map);
    }

    get_setters_for_type<CA::Render::Layer>();
    for (i = xmmword_1EA8523F0; i; i = *i)
    {
      *__p = 0u;
      v11 = 0u;
      if (*(i + 39) < 0)
      {
        std::string::__init_copy_ctor_external(__p, i[2], i[3]);
      }

      else
      {
        *__p = *(i + 1);
        *&v11 = i[4];
      }

      *(&v11 + 1) = i[5];
      (*(&v11 + 1))(v5, a2, 0, __p, a1);
      if (SBYTE7(v11) < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v5;
  }

  if (((1 << v4) & 0x2000000300200000) != 0)
  {
    return 0;
  }

  if (v4 != 27)
  {
    if (v4 == 53)
    {
      v5 = objc_alloc_init(CASpringAnimation);
      if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE13animation_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE13animation_map))
      {
        _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE_clEv();
        __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE13animation_map);
      }

      if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE17property_anim_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE17property_anim_map))
      {
        _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEv();
        __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE17property_anim_map);
      }

      if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE14basic_anim_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE14basic_anim_map))
      {
        _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEv();
        __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE14basic_anim_map);
      }

      if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE15spring_anim_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE15spring_anim_map))
      {
        _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEv();
        __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE15spring_anim_map);
      }

      get_setters_for_type<CA::Render::Layer>();
      for (j = xmmword_1EA8525A0; j; j = *j)
      {
        *__p = 0u;
        v11 = 0u;
        if (*(j + 39) < 0)
        {
          std::string::__init_copy_ctor_external(__p, j[2], j[3]);
        }

        else
        {
          *__p = *(j + 1);
          *&v11 = j[4];
        }

        *(&v11 + 1) = j[5];
        (*(&v11 + 1))(v5, a2, 0, __p, a1);
        if (SBYTE7(v11) < 0)
        {
          operator delete(__p[0]);
        }
      }

      return v5;
    }

    goto LABEL_20;
  }

  v5 = objc_alloc_init(CAKeyframeAnimation);
  if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE13animation_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE13animation_map))
  {
    _ZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE_clEv();
    __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE13animation_map);
  }

  if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE17property_anim_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE17property_anim_map))
  {
    _ZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEv();
    __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE17property_anim_map);
  }

  if ((atomic_load_explicit(&_ZGVZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE17keyframe_anim_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE17keyframe_anim_map))
  {
    _ZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEv();
    __cxa_guard_release(&_ZGVZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE17keyframe_anim_map);
  }

  get_setters_for_type<CA::Render::Layer>();
  for (k = xmmword_1EA8524B0; k; k = *k)
  {
    *__p = 0u;
    v11 = 0u;
    if (*(k + 39) < 0)
    {
      std::string::__init_copy_ctor_external(__p, k[2], k[3]);
    }

    else
    {
      *__p = *(k + 1);
      *&v11 = k[4];
    }

    *(&v11 + 1) = k[5];
    (*(&v11 + 1))(v5, a2, 0, __p, a1);
    if (SBYTE7(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5;
}

id cg_color_from_values<double const*>(CGColorSpace *a1, float64x2_t a2, float64x2_t a3, double a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(a2), vceqzq_f64(a3))))) & 1) == 0)
  {
    return 0;
  }

  v5 = CAGetColorSpace(35);
  v6 = v5;
  v7 = 0;
  if (a1)
  {
    v5 = a1;
  }

  do
  {
    v8 = v15.f64[v7];
    if (v8 < 0.0 || v8 > 1.0)
    {
      Extended = CAColorSpaceCreateExtended(v5);
      goto LABEL_12;
    }

    ++v7;
  }

  while (v7 != 4);
  Extended = CGColorSpaceRetain(v5);
LABEL_12:
  v12 = Extended;
  v13 = CGColorCreateWithContentHeadroom();
  CA_CGColorGetRGBComponents(v13, v6, v15.f64);
  CGColorRelease(v13);
  if (v16.f64[1] <= 0.0)
  {
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    v15 = vdivq_f64(v15, vdupq_lane_s64(*&v16.f64[1], 0));
    v16.f64[0] = v16.f64[0] / v16.f64[1];
  }

  v10 = CGColorCreateWithContentHeadroom();
  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

void sub_183C6EF84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t id_from_value<CGRect,CA::Render::Vector const*&>(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) <= 3u)
  {
    __assert_rtn("id_from_value", "CAReverseSerialization.mm", 325, "count >= 4");
  }

  v1 = vsubq_f64(*(a1 + 40), *(a1 + 24));
  v3[0] = *(a1 + 24);
  v3[1] = v1;
  return [MEMORY[0x1E696B098] valueWithBytes:v3 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

void CA::Render::path_iterate<ReverseSerializationPathIterator>(uint64_t a1, CGMutablePathRef *a2)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = &v4[v2];
    do
    {
      v8 = *v4++;
      v7 = v8;
      if (v8 <= 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            v9 = *v5;
            v10 = v5[1];
            v5 += 2;
            CGPathMoveToPoint(*a2, 0, v9, v10);
          }
        }

        else
        {
          CGPathCloseSubpath(*a2);
        }
      }

      else
      {
        switch(v7)
        {
          case 2:
            v11 = *v5;
            v12 = v5[1];
            v5 += 2;
            CGPathAddLineToPoint(*a2, 0, v11, v12);
            break;
          case 3:
            CGPathAddQuadCurveToPoint(*a2, 0, *v5, v5[1], v5[2], v5[3]);
            v5 += 4;
            break;
          case 4:
            CGPathAddCurveToPoint(*a2, 0, *v5, v5[1], v5[2], v5[3], v5[4], v5[5]);
            v5 += 6;
            break;
        }
      }
    }

    while (v4 < v6);
  }
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE_clEv()
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  snake_case_to_camel_case("timing_function", 15, v8);
  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v6[0], *(&v6[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1192, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v8, "preferredFrameRateRange");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v6[0], *(&v6[0] + 1), v8))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1193, "Duplicated Entry !! && map.map.find (preferredFrameRateRange) == map.map.end ()");
  }

  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v8, "preferredFrameRateRange");
  __p[0] = v8;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6, v8, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }

  snake_case_to_camel_case("removed_on_completion", 21, v8);
  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v6[0], *(&v6[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1196, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6, __p, &v5)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if ((atomic_load_explicit(&_ZGVZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavE10timing_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavE10timing_map))
  {
    _ZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEv();
    __cxa_guard_release(&_ZGVZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavE10timing_map);
  }

  *v8 = 0u;
  v9 = 0u;
  v10 = dword_1EA8525E0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v8, qword_1EA8525C8);
  v0 = qword_1EA8525D0;
  if (qword_1EA8525D0)
  {
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(v8, (v0 + 2), (v0 + 2));
      v0 = *v0;
    }

    while (v0);
  }

  for (i = v9; i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(v6, (i + 2), (i + 2));
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(&_ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE13animation_map, v6);
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v8);
  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v6);
}

void sub_183C6F424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_guard_abort(&_ZGVZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavE10timing_map);
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEv()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  for (i = qword_1EA852510; i; i = *i)
  {
    v1 = *(i + 39);
    if (v1 >= 0)
    {
      v2 = (i + 16);
    }

    else
    {
      v2 = *(i + 16);
    }

    if (v1 >= 0)
    {
      v3 = *(i + 39);
    }

    else
    {
      v3 = *(i + 24);
    }

    v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2, v3);
    v5 = v4;
    v6 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_25;
    }

    v7 = vcnt_s8(*(&v19 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *(&v19 + 1))
      {
        v9 = v4 % *(&v19 + 1);
      }
    }

    else
    {
      v9 = (*(&v19 + 1) - 1) & v4;
    }

    v10 = *(v19 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_25;
      }

LABEL_24:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, (i + 16)))
    {
      goto LABEL_24;
    }
  }

  snake_case_to_camel_case("discretizes_time", 16, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1211, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "valueFunction");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1213, "Duplicated Entry !! && map.map.find (valueFunction) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "valueFunction");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "additive");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1214, "Duplicated Entry !! && map.map.find (additive) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "additive");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "highFrameRateReason");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1215, "Duplicated Entry !! && map.map.find (highFrameRateReason) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "highFrameRateReason");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  snake_case_to_camel_case("preferredFrameRateRangeMinimum", 30, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1222, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangeMaximum");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1223, "Duplicated Entry !! && map.map.find (preferredFrameRateRangeMaximum) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangeMaximum");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangePreferred");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1224, "Duplicated Entry !! && map.map.find (preferredFrameRateRangePreferred) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangePreferred");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  snake_case_to_camel_case("cumulative", 10, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1228, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("property", 8, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1235, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "beginTimeMode");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1239, "Duplicated Entry !! && map.map.find (beginTimeMode) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "beginTimeMode");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "delegate");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1240, "Duplicated Entry !! && map.map.find (delegate) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "delegate");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE9_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "keyPath");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1241, "Duplicated Entry !! && map.map.find (keyPath) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "keyPath");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE10_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "frameInterval");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1245, "Duplicated Entry !! && map.map.find (frameInterval) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "frameInterval");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE11_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFramesPerSecond");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1246, "Duplicated Entry !! && map.map.find (preferredFramesPerSecond) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFramesPerSecond");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE12_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v13 = v19;
  v19 = 0uLL;
  _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE17property_anim_map = v13;
  xmmword_1EA852540 = v20;
  dword_1EA852550 = v21;
  if (*(&v20 + 1))
  {
    v14 = *(v20 + 8);
    if ((*(&v13 + 1) & (*(&v13 + 1) - 1)) != 0)
    {
      if (v14 >= *(&v13 + 1))
      {
        v14 %= *(&v13 + 1);
      }
    }

    else
    {
      v14 &= *(&v13 + 1) - 1;
    }

    *(v13 + 8 * v14) = &xmmword_1EA852540;
    v20 = 0uLL;
  }

  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&v19);
}

void sub_183C700A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEv()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  for (i = xmmword_1EA852540; i; i = *i)
  {
    v1 = *(i + 39);
    if (v1 >= 0)
    {
      v2 = i + 2;
    }

    else
    {
      v2 = i[2];
    }

    if (v1 >= 0)
    {
      v3 = *(i + 39);
    }

    else
    {
      v3 = i[3];
    }

    v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2, v3);
    v5 = v4;
    v6 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_25;
    }

    v7 = vcnt_s8(*(&v19 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *(&v19 + 1))
      {
        v9 = v4 % *(&v19 + 1);
      }
    }

    else
    {
      v9 = (*(&v19 + 1) - 1) & v4;
    }

    v10 = *(v19 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_25;
      }

LABEL_24:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, i + 2))
    {
      goto LABEL_24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "byValue");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1260, "Duplicated Entry !! && map.map.find (byValue) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "byValue");
  v16[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, v16)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "fromValue");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1261, "Duplicated Entry !! && map.map.find (fromValue) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "fromValue");
  v16[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, v16)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "toValue");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1262, "Duplicated Entry !! && map.map.find (toValue) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "toValue");
  v16[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, v16)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("end_angle", 9, __p);
  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v16))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1263, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  v18 = v16;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v16, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  snake_case_to_camel_case("start_angle", 11, __p);
  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v16))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1264, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  v18 = v16;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v16, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  snake_case_to_camel_case("rounds_to_integer", 17, __p);
  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v16))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1267, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  v18 = v16;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v16, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v13 = v19;
  v19 = 0uLL;
  _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE14basic_anim_map = v13;
  xmmword_1EA852570 = v20;
  dword_1EA852580 = v21;
  if (*(&v20 + 1))
  {
    v14 = *(v20 + 8);
    if ((*(&v13 + 1) & (*(&v13 + 1) - 1)) != 0)
    {
      if (v14 >= *(&v13 + 1))
      {
        v14 %= *(&v13 + 1);
      }
    }

    else
    {
      v14 &= *(&v13 + 1) - 1;
    }

    *(v13 + 8 * v14) = &xmmword_1EA852570;
    v20 = 0uLL;
  }

  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&v19);
}

void sub_183C708F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEv()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  for (i = xmmword_1EA852570; i; i = *i)
  {
    v1 = *(i + 39);
    if (v1 >= 0)
    {
      v2 = i + 2;
    }

    else
    {
      v2 = i[2];
    }

    if (v1 >= 0)
    {
      v3 = *(i + 39);
    }

    else
    {
      v3 = i[3];
    }

    v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2, v3);
    v5 = v4;
    v6 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_25;
    }

    v7 = vcnt_s8(*(&v19 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *(&v19 + 1))
      {
        v9 = v4 % *(&v19 + 1);
      }
    }

    else
    {
      v9 = (*(&v19 + 1) - 1) & v4;
    }

    v10 = *(v19 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_25;
      }

LABEL_24:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, i + 2))
    {
      goto LABEL_24;
    }
  }

  snake_case_to_camel_case("mass", 4, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1280, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("stiffness", 9, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1281, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("damping", 7, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1282, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("velocity", 8, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1283, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("allows_overdamping", 18, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1284, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &v18)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "initialVelocity");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1285, "Duplicated Entry !! && map.map.find (initialVelocity) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "initialVelocity");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v13 = v19;
  v19 = 0uLL;
  _ZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavE15spring_anim_map = v13;
  xmmword_1EA8525A0 = v20;
  dword_1EA8525B0 = v21;
  if (*(&v20 + 1))
  {
    v14 = *(v20 + 8);
    if ((*(&v13 + 1) & (*(&v13 + 1) - 1)) != 0)
    {
      if (v14 >= *(&v13 + 1))
      {
        v14 %= *(&v13 + 1);
      }
    }

    else
    {
      v14 &= *(&v13 + 1) - 1;
    }

    *(v13 + 8 * v14) = &xmmword_1EA8525A0;
    v20 = 0uLL;
  }

  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&v19);
}

void sub_183C710CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CASpringAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 176)];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"initialVelocity"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:*(a2 + 184)];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:{a3, *(a2 + 176)}];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:{a3, *(a2 + 168)}];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:{a3, *(a2 + 160)}];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE2_clEvENUlP17CASpringAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:{a3, *(a2 + 152)}];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}