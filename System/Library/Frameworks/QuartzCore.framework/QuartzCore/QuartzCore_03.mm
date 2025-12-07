uint64_t CA::OGL::MetalContext::begin_rendering(uint64_t a1, float16x4_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3936);
  *(a1 + 3936) = v4 & 0xFF7F;
  if (byte_1ED4E985F == 1 && (v4 & 0x40) == 0)
  {
    if (x_log_get_metal_perf(void)::once != -1)
    {
      dispatch_once(&x_log_get_metal_perf(void)::once, &__block_literal_global_10_8314);
    }

    v20 = x_log_get_metal_perf(void)::log;
    *(a1 + 5184) = mach_continuous_time();
    v21 = os_signpost_id_generate(v20);
    *(a1 + 5192) = v21;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = v21;
      if (os_signpost_enabled(v20))
      {
        v23 = *(a1 + 8);
        v24 = *(a1 + 636);
        *buf = 67240706;
        *v27 = v23;
        *&v27[4] = 1026;
        *&v27[6] = v24;
        *&v27[10] = 2114;
        *&v27[12] = _MXSignpostMetricsSnapshot();
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, "Rendering", "context=%{public,name=context}u update=0x%{public,name=update}x\n%{public, signpost:metrics}@", buf, 0x18u);
      }
    }
  }

  if (*(a1 + 3608))
  {
    if ((*(a1 + 3936) & 4) == 0)
    {
      v5 = *(a1 + 600);
      if (v5)
      {
        v6 = (*(*v5 + 16))(v5);
        if (v6)
        {
          if ((*(v6 + 672) & 0x1C00) == 0)
          {
            [*(a1 + 3600) setDefaultCaptureScope:*(a1 + 3608)];
          }
        }
      }

      *(a1 + 3936) |= 4u;
    }

    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (!*&dword_1ED4E96F0 || ([*(a1 + 3600) isCapturing] & 1) != 0)
    {
      goto LABEL_28;
    }

    if ([*(a1 + 3600) supportsDestination:2])
    {
      v7 = objc_opt_new();
      [v7 setDateFormat:@"yyyyMMdd-HHmmssSSS"];
      v8 = -[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreAnimation-%@.gputrace", objc_msgSend(v7, "stringFromDate:", objc_msgSend(MEMORY[0x1E695DF00], "date"))]);
      v9 = objc_opt_new();
      [v9 setCaptureObject:*(a1 + 3512)];
      [v9 setDestination:2];
      [v9 setOutputURL:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", v8)}];
      v25 = 0;
      if ([*(a1 + 3600) startCaptureWithDescriptor:v9 error:&v25])
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v10 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          if (initialized[0] != -1)
          {
            dispatch_once_f(initialized, 0, init_debug);
          }

          v11 = *&dword_1ED4E96F0;
          v12 = [(NSString *)v8 UTF8String];
          *buf = 67109378;
          *v27 = v11;
          *&v27[4] = 2080;
          *&v27[6] = v12;
          _os_log_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEFAULT, "Capturing %d GPU frames to %s\n", buf, 0x12u);
        }

        goto LABEL_28;
      }

      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v17 = x_log_get_ogl_metal(void)::log;
      if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v19 = [objc_msgSend(v25 "localizedDescription")];
      *buf = 136315138;
      *v27 = v19;
      v14 = "Unable to capture to GPU trace file: %s\n";
      v15 = v17;
      v16 = 12;
    }

    else
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v13 = x_log_get_ogl_metal(void)::log;
      if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v14 = "Capture to a GPU trace file is not supported. Try setting env var: METAL_CAPTURE_ENABLED=1\n";
      v15 = v13;
      v16 = 2;
    }

    _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
LABEL_28:
    [*(a1 + 3608) beginScope];
  }

  *(a1 + 3920) = 1;
  return CA::OGL::Context::begin_rendering(a1, a2);
}

uint64_t CA::OGL::Context::begin_rendering(uint64_t a1, float16x4_t *a2)
{
  for (i = 0; i != 93; ++i)
  {
    *(a1 + 4 * i + 884) = CAGetDebugValueFloat(i);
  }

  *(a1 + 1368) = 0;
  v5 = *(a1 + 24);
  *(v5 + 496) = 0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 432) = 0u;
  *(v5 + 448) = 0u;
  *(v5 + 400) = 0u;
  *(v5 + 416) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  v6 = *(a1 + 16);
  *(v6 + 496) = 0;
  *(v6 + 464) = 0u;
  *(v6 + 480) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 448) = 0u;
  *(v6 + 400) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 0u;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 65) &= ~1u;
  *(a1 + 64) = 0;
  *(a1 + 104) = (*(*a1 + 232))(a1, 3);
  (*(*a1 + 280))(a1);
  result = (*(*a1 + 232))(a1, 8);
  *(a1 + 108) = result == 0;
  v8 = *(a1 + 16);
  *(v8 + 96) = xmmword_183E21110;
  *(v8 + 112) = xmmword_183E21110;
  *(v8 + 128) = xmmword_183E21110;
  *(v8 + 497) &= ~1u;
  v9 = *(a1 + 16);
  *(v9 + 496) = a2[10].i8[0];
  *(v9 + 288) = vcvtq_f32_f16(a2[5]);
  *(v9 + 304) = vcvtq_f32_f16(a2[6]);
  *(v9 + 280) = a2[7];
  v10 = a2[1];
  if (v10.i8[0])
  {
    v11 = *&v10 != 1;
  }

  else
  {
    v11 = *(*&v10 + 4) == 12;
  }

  if (v11)
  {
    v12 = 24;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 1384) = v12 | *(a1 + 1384) & 0xFFE7;
  *(a1 + 656) = a2;
  return result;
}

double CA::OGL::MetalContext::init_state(CA::OGL::MetalContext *this)
{
  if (!*(this + 84))
  {
    __assert_rtn("init_state", "ogl-metal.mm", 4917, "current_surface () && no such thing as current fbo");
  }

  *(*(this + 3) + 16) = 0;
  *(*(this + 3) + 17) = 0;
  *(*(this + 3) + 18) = 0;
  *(*(this + 3) + 19) = 0;
  *(*(this + 3) + 20) = 0;
  v1 = *(this + 3);
  *(v1 + 496) = 1;
  *(v1 + 96) = xmmword_183E21110;
  *(v1 + 112) = xmmword_183E21110;
  *(v1 + 128) = xmmword_183E21110;
  *(this + 65) &= ~1u;
  result = NAN;
  *(this + 7) = -1;
  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::begin_update(uint64_t this, CA::Render::Update *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  v2 = this + 25558;
  if (*(this + 29523))
  {
    return this;
  }

  v4 = this;
  if ((*(a2 + 1378) & 4) != 0)
  {
    goto LABEL_6;
  }

  if (*(this + 656) && CA::WindowServer::Display::is_enabled_for_vsync_render(this))
  {
    if ((*(a2 + 1378) & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (CA::WindowServer::Display::is_enabled_for_replay_render_with_mode(v4))
    {
      goto LABEL_8;
    }
  }

  this = (*(*v4 + 2272))(v4);
  if (!this)
  {
    return this;
  }

LABEL_8:
  if (*(v2 + 3964) == 1)
  {
    *(v2 + 3950) = 1;
    *(a2 + 172) &= ~0x80000uLL;
  }

  CA::WindowServer::IOMFBDisplay::mark_buffers_non_static(v4, *(a2 + 40));
  CA::WindowServer::IOMFBDisplay::update_color_matrix(v4, *(a2 + 10));
  v5 = *(v2 + 3979);
  v98 = 0;
  v99 = 0x3F80000000000000;
  v100 = 0;
  v101 = 0x3F80000000000000;
  __s2 = 1065353216;
  *(v2 + 3979) = memcmp((v4 + 27008), &__s2, 0x24uLL) != 0;
  if ((*(v4 + 904) & 0x10) == 0)
  {
    goto LABEL_11;
  }

  v7 = *(a2 + 4);
  if ((v7 & 1) == 0)
  {
    if (*(v7 + 4) != 6)
    {
      goto LABEL_16;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_19;
  }

  if (v7 == 1)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (CADeviceNeedsSurfaceAlphaUnpremultiply::once != -1)
  {
    dispatch_once(&CADeviceNeedsSurfaceAlphaUnpremultiply::once, &__block_literal_global_92);
  }

  v6 = CADeviceNeedsSurfaceAlphaUnpremultiply::needs;
LABEL_19:
  *(v2 + 3996) = v6 & 1;
  v8 = (*(*v4 + 952))(v4);
  v9 = CA::WindowServer::Display::edr_headroom(v4);
  *(v2 + 3993) = 0;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v10 = *(&xmmword_1ED4E96DC + 2);
  if (*(v2 + 3937) & 1) != 0 || (*(v4 + 672) & 0x1C00) == 0x1000 || (BYTE3(xmmword_1ED4E982C))
  {
    goto LABEL_30;
  }

  v11 = *(&xmmword_1ED4E96DC + 3);
  if (CADeviceNeedsLumaBoost::once != -1)
  {
    dispatch_once(&CADeviceNeedsLumaBoost::once, &__block_literal_global_67);
  }

  if (CADeviceNeedsLumaBoost::needs_luma_bost != 1 || (v12 = v9 * v8, (v12 / *(a2 + 101)) >= v11) || ((*(*v4 + 864))(v4) & 1) != 0 || *(v4 + 40))
  {
LABEL_30:
    *(v2 + 1274) = 1065353216;
LABEL_31:
    v13 = 0;
    *(v2 + 3995) = 0;
    *(v2 + 1278) = 0;
    *(v2 + 1290) = 0;
    goto LABEL_32;
  }

  v56 = CA::WindowServer::Display::Mode::operator==(*(v4 + 656), *(v4 + 664));
  v57 = (v2 + 1274);
  *(v2 + 1274) = 1065353216;
  if (!v56)
  {
    goto LABEL_31;
  }

  v58 = IOMobileFramebufferCopyProperty();
  if (v58)
  {
    v59 = v58;
    valuePtr.i32[0] = 0;
    CFNumberGetValue(v58, kCFNumberIntType, &valuePtr);
    CFRelease(v59);
    v60 = valuePtr.i32[0] * 0.000015259;
    *v57 = v60;
  }

  else
  {
    v60 = *v57;
  }

  v75 = (v2 + 1282);
  v76 = (v60 * v12) / *(a2 + 101);
  v77 = 1.0;
  if (v76 >= v10)
  {
    v77 = 0.0;
    if (v76 <= v11 && v10 != v11)
    {
      v79 = (((((((v76 * 0.000008375) + -0.00027092) * v76) + 0.0038907) * v76) + -0.094163) * v76) + 1.156;
      if (v79 > 1.0)
      {
        v79 = 1.0;
      }

      if (v79 >= 0.0)
      {
        v77 = v79;
      }

      else
      {
        v77 = 0.0;
      }
    }
  }

  v80 = *(v2 + 3994);
  v81 = *v75;
  v82 = *(v4 + 26296);
  *(v2 + 3994) = v82 != 0;
  if (v82)
  {
    *(v2 + 1286) = 0;
  }

  else
  {
    if ((v80 & 1) != 0 || (*(v2 + 3995) & 1) == 0)
    {
      v83 = (v2 + 1290);
      v84 = 2;
    }

    else
    {
      v83 = (v2 + 1290);
      v84 = 1;
    }

    *v83 = v84;
  }

  v85 = (*(*v4 + 760))(v4) * 0.666666667;
  v86 = *(v2 + 1290);
  v87 = (v2 + 1286);
  v88 = *(v2 + 1286);
  if (v86 == 2)
  {
    v88 = v88 + v85;
  }

  else if (v86 == 1)
  {
    v88 = v88 - v85;
  }

  v89 = 1.0;
  v90 = v88 > 1.0 || v88 < 0.0;
  if (v88 < 0.0 && v88 <= 1.0)
  {
    v89 = 0.0;
  }

  if (v90)
  {
    v88 = v89;
  }

  *v87 = v88;
  *v75 = v88 * v77;
  *(v2 + 3995) = 0;
  if (CADeviceSupportsAndromeda::once != -1)
  {
    dispatch_once(&CADeviceSupportsAndromeda::once, &__block_literal_global_95);
  }

  if (CADeviceSupportsAndromeda::supports_andromeda)
  {
    v91 = (*(*v4 + 1272))(v4);
    v92 = *v75;
    if ((LODWORD(v91) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v93 = 1.0 - v91;
      if (v93 > 1.0)
      {
        v93 = 1.0;
      }

      if (v93 < 0.0)
      {
        v93 = 0.0;
      }

      v92 = v92 * v93;
      *v75 = v92;
    }
  }

  else
  {
    v92 = *v75;
  }

  *(v2 + 1278) = (*(a2 + 101) * v11) / *v57;
  v13 = v92 == 0.0;
  if (v92 == 0.0 || *v87 == 0.0 || *v87 == 1.0)
  {
    *(v2 + 1290) = 0;
  }

  if (v81 != 0.0 || v92 == 0.0)
  {
    if (v81 == 0.0)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_32:
  if (*(v2 + 3999) != 1)
  {
    goto LABEL_38;
  }

  v14 = *(v2 + 3946);
  if (*(v2 + 3947) != v14)
  {
    LOBYTE(v15) = *(v2 + 3938);
    goto LABEL_37;
  }

  v15 = *(v2 + 3938);
  if (*(v2 + 3944) != v15)
  {
LABEL_37:
    *(v2 + 3947) = v14;
    *(v2 + 3944) = v15;
    *(v2 + 4000) = 1;
    *(v2 + 935) = 1;
  }

LABEL_38:
  v16 = *(v2 + 3948);
  if (*(v2 + 3949) != v16)
  {
    *(v2 + 3949) = v16;
    *(v2 + 4002) = 1;
  }

  v17 = 0;
  v18 = *(a2 + 38);
  v19 = *(v4 + 26296);
  if (v19 && (v18 & 0x200000) == 0)
  {
    if ((v18 & 4) != 0)
    {
      goto LABEL_48;
    }

    if ((v18 & 2) == 0)
    {
      v13 = 1;
    }

    if (v13 || (*v2 & 1) != 0 || (*(v2 + 3964) & 1) != 0 || (*(v4 + 640) & 4) != 0 && CA::WindowServer::Display::clones_support_detaching(*(v4 + 40)) && (v19 = *(v4 + 26296), (v55 = *(*v19 + 40)) != 0) && (CA::Render::LayerNode::clear_above_and_black_below(v55, 1, v53, v54) & 1) == 0)
    {
LABEL_48:
      CA::WindowServer::IOMFBDisplay::release_detached_handle(v19);
      *(v19 + 292) = *(v19 + 292) & 0xFC | 1;
      *(v2 + 3936) = 1;
      *(v2 + 1130) = *(v2 + 1132);
      v21 = *(v19 + 112);
      v22 = vceqzq_f64(v21);
      if ((vorrq_s8(vdupq_laneq_s64(v22, 1), v22).u64[0] & 0x8000000000000000) != 0 || (v23 = vceqq_f64(v21, v21), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v23), 1), v23).u64[0] & 0x8000000000000000) != 0))
      {
        valuePtr = 0uLL;
      }

      else
      {
        v24 = *(v19 + 96);
        v25 = vcvtmq_s64_f64(vmaxnmq_f64(v24, vdupq_n_s64(0xC1BFFFFFFF000000)));
        valuePtr = vuzp1q_s32(v25, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v24, v21), vdupq_n_s64(0x41C0000000000000uLL))), v25));
      }

      for (i = *(v4 + 26288); i; i = *i)
      {
        if (i[2])
        {
          CA::shape_union(i + 2, &valuePtr, v20);
        }
      }

      *v2 = 0;
      v27 = *(a2 + 38);
      if ((v27 & 0x8000) != 0)
      {
        *(a2 + 38) = v27 | 0x10000;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  pthread_mutex_lock((v4 + 25848));
  v28 = v4 + 25912;
  v29 = v4 + 25912 + 48 * *(v2 + 274);
  v95 = (a2 + 16);
  if (v5 == *(v2 + 3979))
  {
    v30 = (a2 + 16);
  }

  else
  {
    v30 = (v4 + 216);
  }

  v31 = *v30;
  updated = CA::WindowServer::IOMFBDisplay::update_display_edr_factor(v4);
  v34 = *(a2 + 38);
  *(v29 + 40) &= ~0x10u;
  if ((v18 & 0x200000) != 0)
  {
    if (v17)
    {
      __assert_rtn("begin_update", "windowserver-iomfb-display.cpp", 3389, "!invalidated_detached");
    }

    v35 = *(v28 + 48 * *(v2 + 278) + 8);
    if (v35)
    {
      ++*(v35 + 8);
      *(v29 + 8) = v35;
      *(v29 + 40) |= 0x10u;
      kdebug_trace();
    }

    goto LABEL_101;
  }

  v36 = updated;
  if (v31)
  {
    if (v31 != 1)
    {
      goto LABEL_96;
    }
  }

  else if (*(v31 + 4) != 6)
  {
    goto LABEL_96;
  }

  if ((*(*v4 + 1576))(v4) & 1) != 0 || (*(v4 + 640) & 4) != 0 || ((v36 | (*(*v4 + 2312))(v4)) & 1) != 0 || (*(a2 + 307))
  {
LABEL_96:
    if ((v34 & 0x100000) == 0)
    {
      for (j = *(v4 + 26288); j; j = *j)
      {
        if (j[2])
        {
          CA::shape_union(j + 2, v31, v33);
        }
      }
    }

    goto LABEL_101;
  }

  if (*(v2 + 282) < 2u)
  {
    v37 = 1;
  }

  else
  {
    v37 = v17;
  }

  if ((v37 & 1) == 0)
  {
    v38 = *(v28 + 48 * *(v2 + 278) + 8);
    if (v38)
    {
      if ((*(v38 + 68) & 0x20) == 0 && !*(v38 + 24))
      {
        v39 = *(v38 + 32);
        if (v39)
        {
          v40 = *(v39 + 236);
          v41 = (v40 & 0x8000000) == 0 || (*(v4 + 905) & 4) == 0;
          if (v41 && (v40 & 0x200000000) == 0)
          {
            if (*(v38 + 16))
            {
              if ((*(v38 + 68) & 8) == 0 && *(v38 + 64) == *(v2 + 1282))
              {
                v43 = *(v38 + 32);
                if ((CA::WindowServer::IOMFBDisplay::edr_factor_changed(v4, v38, a2) & 1) == 0 && (*(*v43 + 232))(v43) == *(a2 + 40))
                {
                  ++*(v38 + 8);
                  *(v29 + 8) = v38;
                  *(v29 + 40) |= 0x10u;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_101:
  buffer = CA::WindowServer::IOMFBDisplay::allocate_buffer(v4, v29, (*(v4 + 904) >> 10) & 1, *(a2 + 40));
  v47 = buffer;
  if ((v34 & 0x100000) != 0)
  {
    v48 = (buffer + 4);
    if (*(v47 + 2))
    {
      CA::shape_union(v48, v31, v46);
    }
  }

  v49 = *(v47 + 2);
  if (v49 && (v50 = *(v47 + 4)) != 0 && (*(v50 + 240) & 2) == 0 && (CA::WindowServer::IOMFBDisplay::edr_factor_changed(v4, v47, a2) & 1) == 0 && (v47[17] & 8) == 0 && (!CA::WindowServer::IOMFBDisplay::use_assembly_surface(v4) || *(v47 + 5)) && *(v47 + 16) == *(v2 + 1282))
  {
    v51 = (*(**(v47 + 4) + 232))(*(v47 + 4)) != *(a2 + 40);
    if ((v18 & 0x200000) != 0)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v51 = 1;
    if ((v18 & 0x200000) != 0)
    {
LABEL_113:
      v49 = 1;
      v52 = (v4 + 216);
      goto LABEL_145;
    }
  }

  v52 = (v4 + 216);
  if (!v51)
  {
    v62 = *(v47 + 4);
    if (!v62)
    {
      goto LABEL_144;
    }

    v63 = *(v62 + 64);
    if (v63 != 1647534392 && v63 != 643969848)
    {
      goto LABEL_144;
    }

    v65 = *(a2 + 38);
    if ((v65 & 0x2000) != 0)
    {
      LODWORD(v66) = 1;
    }

    else
    {
      LODWORD(v66) = 1;
      if ((v65 & 2) == 0 && (BYTE10(xmmword_1ED4E980C) & 1) == 0)
      {
        v66 = (*(v62 + 236) >> 33) & 1;
      }
    }

    if (v66 == ((*(v62 + 236) >> 30) & 1))
    {
LABEL_144:
      v51 = 0;
      goto LABEL_145;
    }
  }

  v49 = *(v4 + 216);
  v61 = *v95;
  if (*v95)
  {
    if (v61 != 1)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

  if (*(v61 + 4) == 6)
  {
LABEL_126:
    *(v2 + 3998) = 1;
  }

LABEL_127:
  if ((*(v29 + 40) & 0x10) != 0)
  {
    --v47[2];
    *(v29 + 8) = 0;
    v47 = CA::WindowServer::IOMFBDisplay::allocate_buffer(v4, v29, (*(v4 + 904) >> 10) & 1, *(a2 + 40));
    *(v29 + 40) &= ~0x10u;
  }

  v51 = 1;
LABEL_145:
  *(v47 + 68) &= ~0x20u;
  v47[16] = *(v2 + 1282);
  CA::Render::Update::set_shape(a2, v49);
  v67 = *(v47 + 3);
  if (v67)
  {
    v68 = CA::Shape::Union(v49, v67);
    CA::Render::Update::set_shape(a2, v68);
    CA::Shape::unref(v68);
    CA::Shape::unref(*(v47 + 3));
    *(v47 + 3) = 0;
  }

  v69 = *(v47 + 68);
  *(v47 + 68) = v69 & 0xEF;
  if ((ca_debug_options & 1) == 0 && (byte_1ED4E981F & 1) == 0)
  {
    goto LABEL_149;
  }

  if (ca_debug_options)
  {
    v94 = *(v47 + 2);
    if ((byte_1ED4E981F & 1) == 0)
    {
      goto LABEL_205;
    }
  }

  else
  {
    v94 = 0;
    if ((byte_1ED4E981F & 1) == 0)
    {
      goto LABEL_205;
    }
  }

  if (v51)
  {
    *(v47 + 68) = v69 | 0x10;
    *(a2 + 172) |= 0x20000000000000uLL;
    v94 = v49;
  }

LABEL_205:
  if (v94)
  {
    if (v94)
    {
      if (v94 != 1)
      {
LABEL_210:
        *(v47 + 3) = CA::Shape::ref(v94, v67);
        CA::Render::Update::set_color_flush_shape(a2, v94);
      }
    }

    else if (*(v94 + 4) != 6)
    {
      goto LABEL_210;
    }
  }

LABEL_149:
  v70 = CA::Shape::intersect(v49, *v52);
  v71 = CA::Shape::area(v70);
  v72 = fminf(v71 / CA::Shape::area(*v52), 1.0);
  CA::Shape::unref(v70);
  if (v72 <= 0.0)
  {
    v73 = 0;
  }

  else
  {
    v73 = (ceilf(v72 * 10.0) + -1.0);
    ++*(v4 + 4 * v73 + 25576);
  }

  *(v2 + 98) = v73;
  v74 = mach_absolute_time();
  *(v4 + 26776) = CATimeWithHostTime(v74);
  CA::WindowServer::IOMFBDisplay::update_brightness_deadline(v4, *(a2 + 10));
  return pthread_mutex_unlock((v4 + 25848));
}

_DWORD *CA::WindowServer::IOMFBDisplay::allocate_buffer(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    v7 = *(a1 + 26288);
    if (!v7)
    {
      goto LABEL_17;
    }

    v4 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v11 = v7[4];
      if ((!v11 || (*(*v11 + 232))(v11) == a4 && (!a3 || (*(v7[4] + 239) & 8) == 0)) && !*(v7 + 2))
      {
        v12 = v7[2];
        if (v12)
        {
          v13 = CA::Shape::area(v12);
          if (v13 < v10)
          {
            v4 = v7;
            v10 = v13;
          }
        }

        else
        {
          v10 = 0;
          v4 = v7;
        }
      }

      v7 = *v7;
    }

    while (v7);
    if (v4)
    {
      ++v4[2];
    }

    else
    {
LABEL_17:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v4 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x48uLL, 0x1020040B1711252uLL);
      *v4 = *(a1 + 26288);
      *(a1 + 26288) = v4;
      v4[2] = 1;
    }

    *(a2 + 8) = v4;
  }

  return v4;
}

CA::Shape *CA::Render::Update::set_shape(CA::Render::Update *this, const CA::Shape *a2)
{
  result = *(this + 2);
  if (result != a2)
  {
    CA::Shape::unref(result);
    result = CA::Shape::ref(a2, v5);
    *(this + 2) = result;
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::update_frame_interval_reason_statistics(CA::WindowServer::IOMFBDisplay *this, double a2, double a3, unsigned int *a4, unsigned int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = COERCE_DOUBLE(atomic_load(this + 3548));
  if (v5 > a3)
  {
    a3 = v5;
  }

  v6 = atomic_load(*(this + 96));
  if (v6 == 1)
  {
    v7 = a2 - a3;
    if (a2 - a3 >= 0.0 && v7 >= (*(*this + 776))(this) + -0.001)
    {
      v11 = v7 + -0.001;
      if (v7 + -0.001 >= 0.00833333333)
      {
        if (v11 >= 0.0125)
        {
          if (v11 >= 0.0166666667)
          {
            v12 = v11 >= 0.0208333333;
            if (v11 < 0.0208333333)
            {
              v13 = 0;
            }

            else
            {
              v13 = -1;
            }
          }

          else
          {
            v12 = 0;
            v13 = 4;
          }
        }

        else
        {
          v12 = 0;
          v13 = 8;
        }
      }

      else
      {
        v12 = 0;
        v13 = 12;
      }

      v14 = (v11 * 1000.0 + 1.0);
      os_unfair_lock_lock(this + 7074);
      os_unfair_lock_lock(this + 7082);
      memset(v30, 0, sizeof(v30));
      v31 = 1065353216;
      v15 = *(this + 3538);
      for (i = *(this + 3539); v15 != i; v15 += 28)
      {
        if ((*(v15 + 24) & 1) == 0)
        {
          for (j = 8; j != 24; j += 4)
          {
            v17 = *(v15 + j);
            v28 = v17;
            if (!v17)
            {
              break;
            }

            v29 = &v28;
            v18 = std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 7084, v17, &v29);
            v19 = v18;
            if (!v12)
            {
              ++*(v18 + v13 + 20);
            }

            v20 = v28;
            if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v30, v28))
            {
              *(v19 + 9) += v14;
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v30, v20, &v28);
            }
          }
        }
      }

      v21 = a4;
      if (a5)
      {
        v22 = a5;
        do
        {
          v23 = *v21++;
          v28 = v23;
          v29 = &v28;
          v24 = std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 7084, v23, &v29);
          v25 = v24;
          if (!v12)
          {
            ++*(v24 + v13 + 20);
          }

          if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v30, v28))
          {
            *(v25 + 9) += v14;
          }

          --v22;
        }

        while (v22);
      }

      v29 = &kCAHighFrameRateReasonTotal;
      v26 = std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 7084, 0xFFFFFFFF, &v29);
      if (!v12)
      {
        ++*(v26 + v13 + 20);
      }

      *(v26 + 9) += v14;
      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v30);
      os_unfair_lock_unlock(this + 7082);
      os_unfair_lock_unlock(this + 7074);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t CA::WindowServer::IOMFBDisplay::edr_factor_changed(CA::WindowServer::IOMFBDisplay *a1, uint64_t a2, uint64_t a3)
{
  CA::Render::Update::render_edr_factor();
  v7 = v6;
  v8 = *(a3 + 404);
  v9 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (CA::WindowServer::IOMFBDisplay::use_assembly_surface(a1))
    {
      v9 = *(a2 + 40);
    }

    v10 = v9;
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    v10 = *(a2 + 32);
    if (!v9)
    {
      return 0;
    }
  }

  if (((*(*a1 + 1552))(a1) & 1) == 0 && (1.0 / v8) != (*(*v10 + 200))(v10))
  {
    return 1;
  }

  result = (*(*a1 + 1552))(a1);
  if (!result)
  {
    return result;
  }

  return (1.0 / v7) != v10[17];
}

CA::WindowServer::IOMFBDisplay *CA::WindowServer::IOMFBDisplay::update_brightness_deadline(CA::WindowServer::IOMFBDisplay *this, double a2)
{
  v2 = *(this + 3348);
  if (v2 != 0.0 && v2 <= a2)
  {
    v4 = this;
    CA::WindowServer::IOMFBDisplay::save_brightness_preferences(this, 0);
    (*(*v4 + 984))(v4);
    this = (*(*v4 + 960))(v4);
    *(v4 + 3348) = 0;
  }

  return this;
}

void CA::Render::Updater::prepare_transform_layers(uint64_t a1, CA::Render::LayerNode *a2, __n128 a3, __n128 a4)
{
  v4 = *(a2 + 1);
  if (v4 != a2)
  {
    do
    {
      v7 = *v4;
      v8 = *(v4 + 1);
      *(v7 + 8) = v8;
      *v8 = v7;
      *v4 = v4;
      *(v4 + 1) = v4;
      if ((*(*a1 + 1376) & 1) == 0 && (*(v4 + 27) & 4) == 0)
      {
        v9 = *(*(v4 + 4) + 152);
        if (v9)
        {
          v10 = v9[13];
          if ((v10 & 0x3C) != 0)
          {
            CA::Render::Updater::update_handle(*a1, v9, *(a1 + 64), *(a1 + 8), a3, a4);
            v11 = *(v4 + 4);
            v12 = *(v11 + 112);
            if ((*(v11 + 13) & 0x20) != 0)
            {
              if (v12)
              {
                v16 = *(v12 + 152);
                if (v16)
                {
                  CA::BoundsImpl::Union(v9 + 15, v16[15], v16[16]);
                }
              }
            }

            else if (v12)
            {
              v13 = *(v12 + 16);
              if (v13)
              {
                v14 = v12 + 24;
                do
                {
                  if (*v14)
                  {
                    v15 = *(*v14 + 152);
                    if (v15)
                    {
                      CA::BoundsImpl::Union(v9 + 15, v15[15], v15[16]);
                    }
                  }

                  v14 += 8;
                  --v13;
                }

                while (v13);
              }
            }

            v10 = v9[13];
            v17 = v10 | 4;
            if ((v10 & 0x300) == 0)
            {
              v17 = v9[13];
            }

            v18 = *&v9[13] & 0x300 | v17 & 0x100;
            v19 = v17 | ((v17 & 0x100) >> 5);
            if (v18)
            {
              v10 = v19;
            }

            v9[12] = 0;
          }

          v9[13] = (v10 & 0xFFFFFFFFFFFFFFFDLL);
        }
      }

      *(v4 + 11) = 0;
      if (atomic_fetch_add(v4 + 4, 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v4, a2);
      }

      v4 = v8;
    }

    while (v8 != a2);
  }
}

BOOL CA::Shape::equal(CA::Shape *this, const CA::Shape *a2)
{
  if (this == a2)
  {
    return 1;
  }

  if ((a2 | this))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 != *(a2 + 1))
  {
    return 0;
  }

  v3 = (this + 12);
  v4 = (a2 + 12);
  v5 = v2 - 3;
  while (1)
  {
    result = v5 == 0;
    if (!v5)
    {
      break;
    }

    --v5;
    v8 = *v3++;
    v7 = v8;
    v9 = *v4++;
    if (v7 != v9)
    {
      return 0;
    }
  }

  return result;
}

double std::__introsort<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,false>(unint64_t result, __int128 *a2, uint64_t a3, char a4, double a5)
{
  while (2)
  {
    v210 = a2 - 360;
    v211 = a2 - 12;
    v209 = a2 - 552;
    v9 = result;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          result = v9;
          v10 = a2 - v9;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 6);
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v85 = *(*(v9 + 216) + 112);
                v86 = *(*(a2 - 21) + 112);
                if (v85 >= *(*(v9 + 24) + 112))
                {
                  if (v86 >= v85)
                  {
                    return a5;
                  }

                  *&a5 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>((v9 + 192), v211).n128_u64[0];
                  if (*(*(v9 + 216) + 112) >= *(*(v9 + 24) + 112))
                  {
                    return a5;
                  }

                  v88 = (v9 + 192);
                  v87 = v9;
                }

                else
                {
                  if (v86 < v85)
                  {
                    goto LABEL_112;
                  }

                  *&a5 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v9, (v9 + 192)).n128_u64[0];
                  if (*(*(a2 - 21) + 112) >= *(*(v9 + 216) + 112))
                  {
                    return a5;
                  }

                  v87 = (v9 + 192);
LABEL_113:
                  v88 = a2 - 12;
                }

                *&a5 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v87, v88).n128_u64[0];
                return a5;
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,0>(v9, v9 + 192, v9 + 384, v211);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,0>(v9, v9 + 192, v9 + 384, v9 + 576, v211);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return a5;
            }

            if (v11 == 2)
            {
              if (*(*(a2 - 21) + 112) >= *(*(v9 + 24) + 112))
              {
                return a5;
              }

LABEL_112:
              v87 = v9;
              goto LABEL_113;
            }
          }

          if (v10 <= 4607)
          {
            v89 = (v9 + 192);
            v91 = v9 == a2 || v89 == a2;
            if (a4)
            {
              if (!v91)
              {
                v92 = 0;
                v93 = v9;
                do
                {
                  v94 = v89;
                  v95 = *(v93 + 216);
                  if (*(v95 + 112) < *(*(v93 + 24) + 112))
                  {
                    v238 = *(v94 + 2);
                    v231 = *v94;
                    v96 = *(v93 + 224);
                    v97 = *(v93 + 240);
                    v98 = *(v93 + 256);
                    v99 = *(v93 + 272);
                    v100 = *(v93 + 288);
                    v101 = *(v93 + 304);
                    v246 = *(v93 + 320);
                    v253 = *(v93 + 336);
                    *v260 = *(v93 + 352);
                    v102 = v92;
                    *&v260[12] = *(v93 + 364);
                    while (1)
                    {
                      v103 = v102;
                      v104 = (v9 + v102);
                      v105 = v104[1];
                      v104[12] = *v104;
                      v104[13] = v105;
                      v106 = v104[3];
                      v104[14] = v104[2];
                      v104[15] = v106;
                      v107 = v104[5];
                      v104[16] = v104[4];
                      v104[17] = v107;
                      v108 = v104[7];
                      v104[18] = v104[6];
                      v104[19] = v108;
                      v109 = v104[8];
                      v110 = v104[9];
                      v111 = v104[10];
                      *(v104 + 364) = *(v104 + 172);
                      v104[21] = v110;
                      v104[22] = v111;
                      v104[20] = v109;
                      if (!v103)
                      {
                        break;
                      }

                      v112 = *(*(v104 - 21) + 112);
                      v102 = v103 - 192;
                      if (*(v95 + 112) >= v112)
                      {
                        v113 = (v9 + v103 + 128);
                        v114 = v9 + v102 + 192;
                        goto LABEL_135;
                      }
                    }

                    v113 = v104 + 8;
                    v114 = v9;
LABEL_135:
                    *v114 = v231;
                    *(v114 + 16) = v238;
                    *(v114 + 24) = v95;
                    *(v114 + 32) = v96;
                    *(v114 + 48) = v97;
                    *(v114 + 64) = v98;
                    *(v114 + 80) = v99;
                    *(v114 + 96) = v100;
                    *(v114 + 112) = v101;
                    a5 = *&v246;
                    *(v113 + 44) = *&v260[12];
                    v113[1] = v253;
                    v113[2] = *v260;
                    *v113 = v246;
                  }

                  v89 = v94 + 12;
                  v92 += 192;
                  v93 = v94;
                }

                while (v94 + 12 != a2);
              }
            }

            else if (!v91)
            {
              v189 = (v9 + 80);
              do
              {
                v190 = v89;
                v191 = *(result + 216);
                if (*(v191 + 112) < *(*(result + 24) + 112))
                {
                  v241 = *(v190 + 16);
                  v234 = *v190;
                  v192 = *(result + 224);
                  v193 = *(result + 240);
                  v194 = *(result + 256);
                  v195 = *(result + 272);
                  v196 = *(result + 288);
                  v197 = *(result + 304);
                  v249 = *(result + 320);
                  v256 = *(result + 336);
                  *v263 = *(result + 352);
                  v198 = v189;
                  *&v263[12] = *(result + 364);
                  do
                  {
                    v199 = v198;
                    v200 = *(v198 - 4);
                    v198[7] = *(v198 - 5);
                    v198[8] = v200;
                    v201 = *(v198 - 2);
                    v198[9] = *(v198 - 3);
                    v198[10] = v201;
                    v202 = *v198;
                    v198[11] = *(v198 - 1);
                    v198[12] = v202;
                    v203 = v198[2];
                    v198[13] = v198[1];
                    v198[14] = v203;
                    v204 = v198[3];
                    v205 = v198[4];
                    v206 = v198[5];
                    *(v198 + 284) = *(v198 + 92);
                    v198[16] = v205;
                    v198[17] = v206;
                    v198[15] = v204;
                    v207 = *(v198 - 31);
                    v198 -= 12;
                  }

                  while (*(v191 + 112) < *(v207 + 112));
                  v208 = v199 - 5;
                  *v208 = v234;
                  *(v208 + 2) = v241;
                  *(v208 + 3) = v191;
                  v208[2] = v192;
                  v208[3] = v193;
                  v208[4] = v194;
                  *v199 = v195;
                  v199[1] = v196;
                  v199[2] = v197;
                  a5 = *&v249;
                  *(v199 + 92) = *&v263[12];
                  v199[4] = v256;
                  v199[5] = *v263;
                  v199[3] = v249;
                }

                v89 = (v190 + 192);
                v189 += 12;
                result = v190;
              }

              while ((v190 + 192) != a2);
            }

            return a5;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v115 = (v11 - 2) >> 1;
              v116 = v115;
              do
              {
                v117 = v116;
                if (v115 >= v116)
                {
                  v118 = (2 * v116) | 1;
                  v119 = v9 + 192 * v118;
                  if (2 * v116 + 2 < v11)
                  {
                    v120 = *(*(v119 + 24) + 112);
                    v121 = *(*(v119 + 216) + 112);
                    v122 = v120 >= v121;
                    v123 = v120 >= v121 ? 0 : 192;
                    v119 += v123;
                    if (!v122)
                    {
                      v118 = 2 * v116 + 2;
                    }
                  }

                  v124 = v9 + 192 * v116;
                  v125 = *(v124 + 24);
                  if (*(*(v119 + 24) + 112) >= *(v125 + 112))
                  {
                    v239 = *(v124 + 16);
                    v232 = *v124;
                    v126 = *(v124 + 32);
                    v127 = *(v124 + 48);
                    v128 = *(v124 + 64);
                    v129 = *(v124 + 80);
                    v130 = *(v124 + 96);
                    v131 = *(v124 + 112);
                    *&v261[12] = *(v124 + 172);
                    v254 = *(v124 + 144);
                    *v261 = *(v124 + 160);
                    v247 = *(v124 + 128);
                    do
                    {
                      v132 = v124;
                      v124 = v119;
                      v133 = *(v119 + 16);
                      *v132 = *v119;
                      v132[1] = v133;
                      v132[2] = *(v119 + 32);
                      v132[3] = *(v119 + 48);
                      v132[4] = *(v119 + 64);
                      v132[5] = *(v119 + 80);
                      v132[6] = *(v119 + 96);
                      v132[7] = *(v119 + 112);
                      v134 = *(v119 + 128);
                      v135 = *(v119 + 144);
                      v136 = *(v119 + 160);
                      *(v132 + 172) = *(v119 + 172);
                      v132[9] = v135;
                      v132[10] = v136;
                      v132[8] = v134;
                      if (v115 < v118)
                      {
                        break;
                      }

                      v137 = (2 * v118) | 1;
                      v119 = v9 + 192 * v137;
                      v138 = 2 * v118 + 2;
                      if (v138 < v11)
                      {
                        v139 = *(*(v119 + 24) + 112);
                        v140 = *(*(v119 + 216) + 112);
                        v141 = v139 >= v140;
                        v142 = v139 >= v140 ? 0 : 192;
                        v119 += v142;
                        if (!v141)
                        {
                          v137 = v138;
                        }
                      }

                      v118 = v137;
                    }

                    while (*(*(v119 + 24) + 112) >= *(v125 + 112));
                    *v124 = v232;
                    *(v124 + 16) = v239;
                    *(v124 + 24) = v125;
                    *(v124 + 32) = v126;
                    *(v124 + 48) = v127;
                    *(v124 + 64) = v128;
                    *(v124 + 80) = v129;
                    *(v124 + 96) = v130;
                    *(v124 + 112) = v131;
                    *(v124 + 128) = v247;
                    *(v124 + 144) = v254;
                    *(v124 + 160) = *v261;
                    *(v124 + 172) = *&v261[12];
                  }
                }

                v116 = v117 - 1;
              }

              while (v117);
              v143 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 6);
              do
              {
                v144 = 0;
                v145 = a2;
                v224 = *v9;
                v225 = *(v9 + 16);
                v147 = *(v9 + 32);
                v146 = *(v9 + 40);
                v149 = *(v9 + 48);
                v148 = *(v9 + 56);
                v151 = *(v9 + 64);
                v150 = *(v9 + 72);
                v153 = *(v9 + 80);
                v152 = *(v9 + 88);
                v155 = *(v9 + 96);
                v154 = *(v9 + 104);
                v157 = *(v9 + 112);
                v156 = *(v9 + 120);
                *&v242[12] = *(v9 + 172);
                v240 = *(v9 + 144);
                *v242 = *(v9 + 160);
                v158 = v9;
                v233 = *(v9 + 128);
                do
                {
                  v159 = &v158[12 * v144];
                  v160 = v159 + 12;
                  v161 = (2 * v144) | 1;
                  v144 = 2 * v144 + 2;
                  if (v144 >= v143)
                  {
                    v144 = v161;
                  }

                  else
                  {
                    v162 = *(*(v159 + 27) + 112);
                    v163 = *(*(v159 + 51) + 112);
                    v164 = v159 + 24;
                    if (v162 >= v163)
                    {
                      v144 = v161;
                    }

                    else
                    {
                      v160 = v164;
                    }
                  }

                  v165 = v160[1];
                  *v158 = *v160;
                  v158[1] = v165;
                  v158[2] = v160[2];
                  v158[3] = v160[3];
                  v158[4] = v160[4];
                  v158[5] = v160[5];
                  v158[6] = v160[6];
                  v158[7] = v160[7];
                  v166 = v160[8];
                  v167 = v160[9];
                  v168 = v160[10];
                  *(v158 + 172) = *(v160 + 172);
                  v158[9] = v167;
                  v158[10] = v168;
                  v158[8] = v166;
                  v158 = v160;
                }

                while (v144 <= ((v143 - 2) >> 1));
                a2 -= 12;
                if (v160 == v145 - 12)
                {
                  *v160 = v224;
                  v160[1] = v225;
                  *(v160 + 4) = v147;
                  *(v160 + 5) = v146;
                  *(v160 + 6) = v149;
                  *(v160 + 7) = v148;
                  *(v160 + 8) = v151;
                  *(v160 + 9) = v150;
                  *(v160 + 10) = v153;
                  *(v160 + 11) = v152;
                  *(v160 + 12) = v155;
                  *(v160 + 13) = v154;
                  *(v160 + 14) = v157;
                  *(v160 + 15) = v156;
                  a5 = *&v233;
                  *(v160 + 172) = *&v242[12];
                  v160[9] = v240;
                  v160[10] = *v242;
                  v160[8] = v233;
                }

                else
                {
                  v169 = *(v145 - 11);
                  *v160 = *a2;
                  v160[1] = v169;
                  v160[2] = *(v145 - 10);
                  v160[3] = *(v145 - 9);
                  v160[4] = *(v145 - 8);
                  v160[5] = *(v145 - 7);
                  v160[6] = *(v145 - 6);
                  v160[7] = *(v145 - 5);
                  v170 = *(v145 - 4);
                  v171 = *(v145 - 3);
                  v172 = *(v145 - 2);
                  *(v160 + 172) = *(v145 - 20);
                  v160[9] = v171;
                  v160[10] = v172;
                  v160[8] = v170;
                  *a2 = v224;
                  *(v145 - 11) = v225;
                  *(v145 - 20) = v147;
                  *(v145 - 19) = v146;
                  *(v145 - 18) = v149;
                  *(v145 - 17) = v148;
                  *(v145 - 16) = v151;
                  *(v145 - 15) = v150;
                  *(v145 - 14) = v153;
                  *(v145 - 13) = v152;
                  *(v145 - 12) = v155;
                  *(v145 - 11) = v154;
                  *(v145 - 10) = v157;
                  *(v145 - 9) = v156;
                  a5 = *&v233;
                  *(v145 - 20) = *&v242[12];
                  *(v145 - 3) = v240;
                  *(v145 - 2) = *v242;
                  *(v145 - 4) = v233;
                  v173 = v160 - v9 + 192;
                  if (v173 >= 193)
                  {
                    v174 = (-2 - 0x5555555555555555 * (v173 >> 6)) >> 1;
                    v175 = v9 + 192 * v174;
                    v176 = *(v160 + 3);
                    if (*(*(v175 + 24) + 112) < *(v176 + 112))
                    {
                      v227 = *(v160 + 2);
                      v226 = *v160;
                      v177 = v160[2];
                      v178 = v160[3];
                      v179 = v160[4];
                      v180 = v160[5];
                      v181 = v160[6];
                      v182 = v160[7];
                      *&v262[12] = *(v160 + 172);
                      v255 = v160[9];
                      *v262 = v160[10];
                      v248 = v160[8];
                      do
                      {
                        v183 = v160;
                        v160 = v175;
                        v184 = *(v175 + 16);
                        *v183 = *v175;
                        v183[1] = v184;
                        v183[2] = *(v175 + 32);
                        v183[3] = *(v175 + 48);
                        v183[4] = *(v175 + 64);
                        v183[5] = *(v175 + 80);
                        v183[6] = *(v175 + 96);
                        v183[7] = *(v175 + 112);
                        v185 = *(v175 + 128);
                        v186 = *(v175 + 144);
                        v187 = *(v175 + 160);
                        *(v183 + 172) = *(v175 + 172);
                        v183[9] = v186;
                        v183[10] = v187;
                        v183[8] = v185;
                        if (!v174)
                        {
                          break;
                        }

                        v174 = (v174 - 1) >> 1;
                        v175 = v9 + 192 * v174;
                      }

                      while (*(*(v175 + 24) + 112) < *(v176 + 112));
                      *v160 = v226;
                      *(v160 + 2) = v227;
                      *(v160 + 3) = v176;
                      v160[2] = v177;
                      v160[3] = v178;
                      v160[4] = v179;
                      v160[5] = v180;
                      v160[6] = v181;
                      v160[7] = v182;
                      v160[8] = v248;
                      v160[9] = v255;
                      v160[10] = *v262;
                      a5 = *&v262[12];
                      *(v160 + 172) = *&v262[12];
                    }
                  }
                }
              }

              while (v143-- > 2);
            }

            return a5;
          }

          v12 = v11 >> 1;
          v13 = v9 + 192 * (v11 >> 1);
          v14 = *(*(a2 - 21) + 112);
          if (v10 > 0x6000)
          {
            v15 = *(*(v13 + 24) + 112);
            if (v15 >= *(*(result + 24) + 112))
            {
              if (v14 >= v15 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v13, v211), *(*(v13 + 24) + 112) >= *(*(result + 24) + 112)))
              {
LABEL_26:
                v21 = result + 192 * v12;
                v22 = v21 - 192;
                v23 = *(*(v21 - 168) + 112);
                v24 = *(*v210 + 112);
                if (v23 >= *(*(result + 216) + 112))
                {
                  if (v24 >= v23 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v22, a2 - 24), *(*(v22 + 24) + 112) >= *(*(result + 216) + 112)))
                  {
LABEL_39:
                    v27 = result + 192 * v12;
                    v28 = *(*(v27 + 216) + 112);
                    v29 = *(*v209 + 112);
                    if (v28 >= *(*(result + 408) + 112))
                    {
                      if (v29 >= v28 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>((v27 + 192), a2 - 36), *(*(v27 + 216) + 112) >= *(*(result + 408) + 112)))
                      {
LABEL_48:
                        v32 = *(*(v13 + 24) + 112);
                        v33 = *(*(v27 + 216) + 112);
                        if (v32 >= *(*(v22 + 24) + 112))
                        {
                          if (v33 >= v32)
                          {
                            goto LABEL_57;
                          }

                          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v13, (v27 + 192));
                          if (*(*(v13 + 24) + 112) >= *(*(v22 + 24) + 112))
                          {
                            goto LABEL_57;
                          }

                          v35 = v22;
                          v34 = v13;
                        }

                        else if (v33 >= v32)
                        {
                          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v22, v13);
                          if (*(*(v27 + 216) + 112) >= *(*(v13 + 24) + 112))
                          {
LABEL_57:
                            v228 = *result;
                            v235 = *(result + 16);
                            v36 = *(result + 32);
                            v37 = *(result + 48);
                            *&v257[12] = *(result + 172);
                            v250 = *(result + 144);
                            *v257 = *(result + 160);
                            v243 = *(result + 128);
                            v38 = *(v13 + 16);
                            *result = *v13;
                            *(result + 16) = v38;
                            v39 = *(v13 + 48);
                            *(result + 32) = *(v13 + 32);
                            *(result + 48) = v39;
                            v40 = *(v13 + 128);
                            v41 = *(v13 + 144);
                            v42 = *(v13 + 160);
                            *(result + 172) = *(v13 + 172);
                            *(result + 144) = v41;
                            *(result + 160) = v42;
                            *(result + 128) = v40;
                            v43 = *(v13 + 64);
                            v44 = *(v13 + 80);
                            v45 = *(v13 + 96);
                            v46 = *(v13 + 112);
                            *v13 = v228;
                            *(v13 + 16) = v235;
                            *(v13 + 32) = v36;
                            *(v13 + 48) = v37;
                            v47 = *(result + 64);
                            v48 = *(result + 80);
                            *(result + 64) = v43;
                            *(result + 80) = v44;
                            *(v13 + 64) = v47;
                            *(v13 + 80) = v48;
                            v49 = *(result + 96);
                            v50 = *(result + 112);
                            *(result + 96) = v45;
                            *(result + 112) = v46;
                            *(v13 + 96) = v49;
                            *(v13 + 112) = v50;
                            *(v13 + 172) = *&v257[12];
                            *(v13 + 144) = v250;
                            *(v13 + 160) = *v257;
                            *(v13 + 128) = v243;
                            goto LABEL_58;
                          }

                          v34 = (v27 + 192);
                          v35 = v13;
                        }

                        else
                        {
                          v34 = (v27 + 192);
                          v35 = v22;
                        }

                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v35, v34);
                        goto LABEL_57;
                      }

                      v30 = (result + 384);
                      v31 = (v27 + 192);
                    }

                    else
                    {
                      v30 = (result + 384);
                      if (v29 >= v28)
                      {
                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v30, (v27 + 192));
                        if (*(*v209 + 112) >= *(*(v27 + 216) + 112))
                        {
                          goto LABEL_48;
                        }

                        v30 = (v27 + 192);
                      }

                      v31 = a2 - 36;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v30, v31);
                    goto LABEL_48;
                  }

                  v25 = (result + 192);
                  v26 = v22;
                }

                else
                {
                  v25 = (result + 192);
                  if (v24 >= v23)
                  {
                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v25, v22);
                    if (*(*v210 + 112) >= *(*(v22 + 24) + 112))
                    {
                      goto LABEL_39;
                    }

                    v25 = v22;
                  }

                  v26 = a2 - 24;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v25, v26);
                goto LABEL_39;
              }

              v16 = result;
              v17 = v13;
            }

            else
            {
              v16 = result;
              if (v14 >= v15)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(result, v13);
                if (*(*(a2 - 21) + 112) >= *(*(v13 + 24) + 112))
                {
                  goto LABEL_26;
                }

                v16 = v13;
              }

              v17 = a2 - 12;
            }

            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v16, v17);
            goto LABEL_26;
          }

          v18 = *(*(result + 24) + 112);
          if (v18 < *(*(v13 + 24) + 112))
          {
            v19 = v13;
            if (v14 >= v18)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v13, result);
              if (*(*(a2 - 21) + 112) >= *(*(result + 24) + 112))
              {
                goto LABEL_58;
              }

              v19 = result;
            }

            v20 = a2 - 12;
            goto LABEL_34;
          }

          if (v14 < v18)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(result, v211);
            if (*(*(result + 24) + 112) < *(*(v13 + 24) + 112))
            {
              v19 = v13;
              v20 = result;
LABEL_34:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v19, v20);
            }
          }

LABEL_58:
          --a3;
          if (a4)
          {
            break;
          }

          v51 = *(result + 24);
          v52 = *(v51 + 112);
          if (*(*(result - 168) + 112) < v52)
          {
            goto LABEL_61;
          }

          v237 = *(result + 16);
          v230 = *result;
          v221 = *(result + 48);
          v223 = *(result + 32);
          v217 = *(result + 80);
          v219 = *(result + 64);
          v213 = *(result + 112);
          v215 = *(result + 96);
          *&v259[12] = *(result + 172);
          v245 = *(result + 128);
          v252 = *(result + 144);
          *v259 = *(result + 160);
          if (v52 >= *(*(a2 - 21) + 112))
          {
            v72 = result + 192;
            do
            {
              v9 = v72;
              if (v72 >= a2)
              {
                break;
              }

              v73 = *(*(v72 + 24) + 112);
              v72 += 192;
            }

            while (v52 >= v73);
          }

          else
          {
            v70 = result;
            do
            {
              v9 = v70 + 192;
              v71 = *(*(v70 + 216) + 112);
              v70 += 192;
            }

            while (v52 >= v71);
          }

          v74 = a2;
          if (v9 < a2)
          {
            v75 = a2;
            do
            {
              v74 = v75 - 12;
              v76 = *(*(v75 - 21) + 112);
              v75 -= 12;
            }

            while (v52 < v76);
          }

          while (v9 < v74)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v9, v74);
            v77 = *(v51 + 112);
            do
            {
              v78 = *(v9 + 216);
              v9 += 192;
            }

            while (v77 >= *(v78 + 112));
            do
            {
              v79 = *(v74 - 21);
              v74 -= 12;
            }

            while (v77 < *(v79 + 112));
          }

          v80 = (v9 - 192);
          if (v9 - 192 != result)
          {
            v81 = *(v9 - 176);
            *result = *v80;
            *(result + 16) = v81;
            *(result + 32) = *(v9 - 160);
            *(result + 48) = *(v9 - 144);
            *(result + 64) = *(v9 - 128);
            *(result + 80) = *(v9 - 112);
            *(result + 96) = *(v9 - 96);
            *(result + 112) = *(v9 - 80);
            v82 = *(v9 - 64);
            v83 = *(v9 - 48);
            v84 = *(v9 - 32);
            *(result + 172) = *(v9 - 20);
            *(result + 144) = v83;
            *(result + 160) = v84;
            *(result + 128) = v82;
          }

          a4 = 0;
          *(v9 - 176) = v237;
          *v80 = v230;
          *(v9 - 168) = v51;
          *(v9 - 160) = v223;
          *(v9 - 144) = v221;
          *(v9 - 128) = v219;
          *(v9 - 112) = v217;
          *(v9 - 96) = v215;
          *(v9 - 80) = v213;
          a5 = *&v245;
          *(v9 - 20) = *&v259[12];
          *(v9 - 48) = v252;
          *(v9 - 32) = *v259;
          *(v9 - 64) = v245;
        }

        v51 = *(result + 24);
        v52 = *(v51 + 112);
LABEL_61:
        v236 = *(result + 16);
        v229 = *result;
        v220 = *(result + 48);
        v222 = *(result + 32);
        v216 = *(result + 80);
        v218 = *(result + 64);
        v212 = *(result + 112);
        v214 = *(result + 96);
        *&v258[12] = *(result + 172);
        v251 = *(result + 144);
        *v258 = *(result + 160);
        v53 = result;
        v244 = *(result + 128);
        do
        {
          v54 = v53;
          v53 += 192;
        }

        while (*(*(v54 + 216) + 112) < v52);
        v55 = a2;
        if (v54 == result)
        {
          v58 = a2;
          while (v53 < v58)
          {
            v56 = v58 - 12;
            v59 = *(*(v58 - 21) + 112);
            v58 -= 12;
            if (v59 < v52)
            {
              goto LABEL_71;
            }
          }

          v56 = v58;
        }

        else
        {
          do
          {
            v56 = v55 - 12;
            v57 = *(*(v55 - 21) + 112);
            v55 -= 12;
          }

          while (v57 >= v52);
        }

LABEL_71:
        if (v53 >= v56)
        {
          v9 = v53;
        }

        else
        {
          v60 = v56;
          v9 = v53;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v9, v60);
            v61 = *(v51 + 112);
            do
            {
              v62 = *(v9 + 216);
              v9 += 192;
            }

            while (*(v62 + 112) < v61);
            do
            {
              v63 = *(v60 - 21);
              v60 -= 12;
            }

            while (*(v63 + 112) >= v61);
          }

          while (v9 < v60);
        }

        v64 = (v9 - 192);
        if (v9 - 192 != result)
        {
          v65 = *(v9 - 176);
          *result = *v64;
          *(result + 16) = v65;
          *(result + 32) = *(v9 - 160);
          *(result + 48) = *(v9 - 144);
          *(result + 64) = *(v9 - 128);
          *(result + 80) = *(v9 - 112);
          *(result + 96) = *(v9 - 96);
          *(result + 112) = *(v9 - 80);
          v66 = *(v9 - 64);
          v67 = *(v9 - 48);
          v68 = *(v9 - 32);
          *(result + 172) = *(v9 - 20);
          *(result + 144) = v67;
          *(result + 160) = v68;
          *(result + 128) = v66;
        }

        *(v9 - 176) = v236;
        *v64 = v229;
        *(v9 - 168) = v51;
        *(v9 - 160) = v222;
        *(v9 - 144) = v220;
        *(v9 - 128) = v218;
        *(v9 - 112) = v216;
        *(v9 - 96) = v214;
        *(v9 - 80) = v212;
        *(v9 - 20) = *&v258[12];
        *(v9 - 48) = v251;
        *(v9 - 32) = *v258;
        *(v9 - 64) = v244;
        if (v53 >= v56)
        {
          break;
        }

LABEL_84:
        std::__introsort<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,false>(result, (v9 - 192), a3, a4 & 1);
        a4 = 0;
      }

      v69 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *>(result, (v9 - 192));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *>(v9, a2))
      {
        break;
      }

      if (!v69)
      {
        goto LABEL_84;
      }
    }

    a2 = (v9 - 192);
    if (!v69)
    {
      continue;
    }

    return a5;
  }
}

void CA::WindowServer::Server::get_active_display_count(CA::WindowServer::Server *this, Object *a2, _BYTE *a3, void *a4)
{
  var0 = a2[6].var0;
  if ((*(var0 + 905) & 8) == 0 && (*(*var0 + 95))(var0) != 0.0)
  {
    ++*a3;
    v7 = a3[8] == 1 && fabs((*(*a2[6].var0 + 95))(a2[6].var0) + -0.00416666667) < 0.005;
    a3[8] = v7;
  }
}

void CA::WindowServer::IOMFBServer::set_edr_enabled(CA::WindowServer::IOMFBServer *this, BOOL a2, BOOL a3, float a4, CA::Render::Update *a5)
{
  v5 = MEMORY[0x1EEE9AC00](this);
  v7 = v6;
  v8 = *&v5;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v59 = *MEMORY[0x1E69E9840];
  if (CADeviceHasBacklight::once != -1)
  {
    dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
  }

  if (CADeviceHasBacklight::has_backlight != 1 || (*(*(v14 + 96) + 905) & 0x10) == 0 || !CA::WindowServer::IOMFBServer::edr_client(v14))
  {
    return;
  }

  v15 = *(v14 + 96);
  if ((*(v14 + 1446) & 4) == 0 && v12 && (*(v15 + 29568) & 1) == 0)
  {
    CA::WindowServer::IOMFBServer::register_libedr_callbacks(v14);
    v15 = *(v14 + 96);
  }

  if (v12)
  {
    v16 = *(v15 + 704);
    if (v16)
    {
      v17 = COERCE_FLOAT(atomic_load((v16 + 4)));
      v18 = 1.0;
      if (v17 > 1.0)
      {
        v19 = *(*(v14 + 96) + 704);
        if (v19)
        {
          v20 = atomic_load((v19 + 4));
          v18 = *&v20;
        }
      }
    }

    else
    {
      v18 = 1.0;
    }

    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (v18 >= *&dword_1ED4E9694)
    {
      v22 = dword_1ED4E9694;
    }

    else
    {
      *&v22 = v18;
    }

    if (*&dword_1ED4E9694 <= 1.0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *&v22;
    }

    if (v8 <= 1.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = v8;
    }

    if (v24 >= v23)
    {
      v21 = v23;
    }

    else
    {
      v21 = v24;
    }

    if (*(*(v14 + 96) + 29568))
    {
      goto LABEL_33;
    }

    if (v21 > 1.0)
    {
      v26 = CA::WindowServer::IOMFBServer::edr_client(v14);
      CA::EDRClient::set_edr_max_headroom(v26, v21);
LABEL_46:
      if (v21 == *(v14 + 1152))
      {
        return;
      }

      *(v14 + 1152) = v21;
      goto LABEL_48;
    }

LABEL_38:
    v27 = CA::WindowServer::IOMFBServer::edr_client(v14);
    if (CADeviceHasBacklight::once != -1)
    {
      dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
    }

    if (CADeviceHasBacklight::has_backlight == 1)
    {
      pthread_mutex_lock((v27 + 64));
      if (*(v27 + 145) != v12 || *(v27 + 148) != 0.0)
      {
        *(v27 + 145) = v12;
        *(v27 + 148) = 0;
        v28 = CA::EDRClient::client(v27);
        if (v28)
        {
          v29 = *(v27 + 128);
          block.n128_u64[0] = MEMORY[0x1E69E9820];
          block.n128_u64[1] = 0x40000000;
          v50 = ___ZN2CA9EDRClient15set_edr_enabledEb_block_invoke;
          v51 = &__block_descriptor_tmp_3_18913;
          v53 = v12;
          v52 = v28;
          dispatch_async(v29, &block);
        }
      }

      pthread_mutex_unlock((v27 + 64));
    }

    goto LABEL_46;
  }

  v21 = 1.0;
  if ((*(v15 + 29568) & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  if (v21 == *(v14 + 1152))
  {
    return;
  }

  *(v14 + 1152) = v21;
  v25 = *(v14 + 248);
  if (v25)
  {
    (*(v25 + 16))(v25, v12, v10, v21);
  }

LABEL_48:
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
    if (!v7)
    {
      return;
    }
  }

  else if (!v7)
  {
    return;
  }

  block.n128_u16[0] = 512;
  block.n128_u32[1] = -1;
  block.n128_f32[2] = v21;
  block.n128_f32[3] = v21;
  X::small_vector_base<CA::Render::Update::EDRRequest>::push_back((v7 + 1216), &block);
  v30 = v58;
  memset(v58, 0, sizeof(v58));
  v54 = v58;
  v55 = v58;
  v56 = v58;
  v57 = 8;
  v31 = *(v7 + 1216);
  v32 = *(v7 + 1224);
  v33 = v32 - v31;
  v34 = (v32 - v31) >> 4;
  if (v34 >= 9)
  {
    X::small_vector_base<CA::Render::Update::EDRRequest>::grow(&v54, v34);
    v30 = v55;
  }

  if (v31 != v32)
  {
    do
    {
      v35 = *v31;
      v31 += 16;
      *v30++ = v35;
    }

    while (v31 != v32);
    v30 = v55;
  }

  v55 = (v30 + v33);
  if (v54 != v30 + v33)
  {
    theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v37 = v54;
    if (v55 != v54)
    {
      v38 = 0;
      v39 = 0;
      do
      {
        v40 = &v37[v38];
        v41 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        bzero(&block, 0x1000uLL);
        proc_pidpath(*(v40 + 1), &block, 0x1000u);
        v42 = strrchr(&block, 47);
        if (v42)
        {
          p_block = (v42 + 1);
        }

        else
        {
          p_block = &block;
        }

        v44 = CFStringCreateWithCString(0, p_block, 0x8000100u);
        if (v44)
        {
          v45 = v44;
          CFDictionarySetValue(v41, @"process", v44);
          CFRelease(v45);
        }

        CA_CFDictionarySetInt(v41, @"request_type", *v40);
        v46 = *(v40 + 2);
        if (v46 == 3.4028e38)
        {
          v46 = 10000.0;
        }

        CA_CFDictionarySetFloat(v41, @"headroom", v46);
        v47 = *(v40 + 3);
        if (v47 == 3.4028e38)
        {
          v47 = 10000.0;
        }

        CA_CFDictionarySetFloat(v41, @"max_desired_headroom", v47);
        CFArrayAppendValue(Mutable, v41);
        if (v41)
        {
          CFRelease(v41);
        }

        ++v39;
        v37 = v54;
        v38 += 16;
      }

      while (v39 < (v55 - v54) >> 4);
    }

    CFDictionarySetValue(theDict, @"EDRRequests", Mutable);
    if (CA::WindowServer::IOMFBDisplay::post_edr_requests_power_log(CA::Render::Update const*)::once != -1)
    {
      dispatch_once(&CA::WindowServer::IOMFBDisplay::post_edr_requests_power_log(CA::Render::Update const*)::once, &__block_literal_global_474_23296);
    }

    if (CA::WindowServer::IOMFBDisplay::post_edr_requests_power_log(CA::Render::Update const*)::edr_requests_telemetry_id)
    {
      pps_send_telemetry();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  if (v54 != v56)
  {
    free(v54);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::ignore_update_p(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 659) & 0x10) != 0)
  {
    v3 = *(a2 + 304) & 0xALL;
    v4 = *(a1 + 29527) | (v3 != 0);
    *(a1 + 29527) = v4;
    if (!atomic_load((*(a1 + 768) + 4)))
    {
      v6 = v3 != 0;
      v7 = atomic_load((*(a1 + 768) + 5));
      if (v7 == 1)
      {
        v4 = v6;
      }
    }

    v2 = v4 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void CA::WindowServer::IOMFBDisplay::update_server_source_frame_interval_range(os_unfair_lock_s *this, const CAFrameIntervalRange *a2, int a3, int a4)
{
  v8 = this + 7068;
  v9 = (*(*&this->_os_unfair_lock_opaque + 2264))(this);
  v10 = *&v8->_os_unfair_lock_opaque != *&a2->var0 || v8[2]._os_unfair_lock_opaque != a2->var2;
  v11 = v9 | a4;
  v12 = BYTE1(v8[325]._os_unfair_lock_opaque);
  if (v10 || (v12 == a3 ? (v13 = BYTE2(v8[325]._os_unfair_lock_opaque) == v11) : (v13 = 0), !v13))
  {
    if (BYTE2(v8[325]._os_unfair_lock_opaque) != v11)
    {
      v10 = 1;
    }

    if (v10)
    {
      v14 = *&a2->var0;
      v8[2]._os_unfair_lock_opaque = a2->var2;
      *&v8->_os_unfair_lock_opaque = v14;
      BYTE2(v8[325]._os_unfair_lock_opaque) = v11;
      if (v11)
      {
        var0 = 2;
      }

      else
      {
        var0 = a2->var0;
      }

      if (v11)
      {
        var1 = 2;
      }

      else
      {
        var1 = a2->var1;
      }

      if (v11)
      {
        var2 = 2;
      }

      else
      {
        var2 = a2->var2;
      }

      CA::WindowServer::IOMFBDisplay::register_frame_interval_range(this, 0, var0, var1, var2, a3);
    }

    if (v12 != a3)
    {
      BYTE1(v8[325]._os_unfair_lock_opaque) = a3;
      os_unfair_lock_lock(this + 7061);
      CA::WindowServer::IOMFBDisplay::recompute_server_frame_interval_locked(this);

      os_unfair_lock_unlock(this + 7061);
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::update_display_edr_factor(CA::WindowServer::Display::Mode **this)
{
  if (CADeviceDisplaySupportsEDRFactor::once != -1)
  {
    dispatch_once(&CADeviceDisplaySupportsEDRFactor::once, &__block_literal_global_63);
  }

  if (CADeviceDisplaySupportsEDRFactor::supports_edr != 1)
  {
    return 0;
  }

  v2 = (this + 3304);
  (*(*this + 134))(this);
  v3 = (*(*this + 194))(this);
  v4 = 0.0;
  if (v3)
  {
    if (CA::WindowServer::Display::Mode::hdr_type(this[82]) > 2)
    {
      v4 = (*(*this + 137))(this);
    }

    else
    {
      v4 = 1.0 / CA::WindowServer::Display::edr_headroom(this);
    }
  }

  if (*v2 == v4)
  {
    return 0;
  }

  *v2 = v4;
  if (!(*(*this + 236))(this))
  {
    return 1;
  }

  if ((*(*this + 240))(this))
  {
    *(this + 29564) = 1;
  }

  v5 = (*(*this + 238))(this);
  result = 1;
  if (v5)
  {
    *(this + 29563) = 1;
  }

  return result;
}

uint64_t CA::WindowServer::IOSurface::protection_options(CA::WindowServer::IOSurface *this)
{
  result = *(this + 33);
  if (result)
  {
    return IOSurfaceGetProtectionOptions();
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::mark_buffers_non_static(uint64_t this, uint64_t a2)
{
  v2 = *(this + 26288);
  if (v2)
  {
    v4 = this;
    do
    {
      this = v2[4];
      if (this)
      {
        v5 = (*(*this + 232))(this);
        this = v2[4];
        if ((v5 != a2 || *(this + 56) != v4[52] || *(this + 60) != v4[53]) && (*(this + 239) & 4) != 0)
        {
          this = (*(*this + 232))(this);
          if (this)
          {
            v6 = v2[4];
            if ((*(v6 + 236) & 0xC000000) == 0x4000000)
            {
              *(v6 + 236) &= 0xFFFFFFFFF3FFFFFFLL;
              --v4[6388];
            }
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

void CA::WindowServer::IOMFBDisplay::update_color_matrix(CA::WindowServer::IOMFBDisplay *this, double a2)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!CA::WindowServer::IOMFBDisplay::needs_harmony_update(this))
  {
    return;
  }

  v5 = *(this + 3366);
  v6 = (a2 - *(this + 3365)) / v5;
  v4.n128_u64[0] = 1.0;
  if (v6 < 0.0 && v6 <= 1.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = (a2 - *(this + 3365)) / v5;
  }

  if (v6 <= 1.0)
  {
    if (v5 != 0.0 && v8 != 1.0)
    {
      v9 = 0;
      v10 = this + 26936;
      v11 = this + 26972;
      v4.n128_u32[0] = 1.0;
      v12 = this + 27008;
      do
      {
        v13 = 0;
        *&v59[8] = 0;
        *v59 = 0;
        LODWORD(v69) = 0;
        v14 = 0.0;
        v68 = 0;
        do
        {
          v14 = v14 + (*&v10[v13] * *&v10[v13]);
          v13 += 4;
        }

        while (v13 != 12);
        v15 = sqrtf(v14);
        if (v15 <= 0.0)
        {
          *&v59[8] = 0;
          *v59 = 0;
        }

        else
        {
          v16 = 0;
          v17 = 1.0 / v15;
          do
          {
            *&v59[v16] = *&v10[v16] * v17;
            v16 += 4;
          }

          while (v16 != 12);
        }

        v18 = 0;
        v19 = 0.0;
        do
        {
          v19 = v19 + (*&v11[v18] * *&v11[v18]);
          v18 += 4;
        }

        while (v18 != 12);
        v20 = sqrtf(v19);
        if (v20 <= 0.0)
        {
          LODWORD(v69) = 0;
          v68 = 0;
        }

        else
        {
          v21 = 0;
          v22 = 1.0 / v20;
          do
          {
            *(&v68 + v21) = *&v11[v21] * v22;
            v21 += 4;
          }

          while (v21 != 12);
        }

        v23 = 0;
        LODWORD(v77) = 0;
        v76 = 0;
        do
        {
          v24 = *&v59[v23] + v8 * (*(&v68 + v23) - *&v59[v23]);
          *(&v76 + v23) = v24;
          v23 += 4;
        }

        while (v23 != 12);
        v25 = 0;
        v26 = 0.0;
        do
        {
          v26 = v26 + (*(&v76 + v25) * *(&v76 + v25));
          v25 += 4;
        }

        while (v25 != 12);
        v27 = sqrtf(v26);
        if (v27 <= 0.0)
        {
          v30 = this + 12 * v9 + 27008;
          *(v30 + 2) = 0;
          *v30 = 0;
        }

        else
        {
          v28 = 0;
          v29 = 1.0 / v27;
          do
          {
            *&v12[v28] = *(&v76 + v28) * v29;
            v28 += 4;
          }

          while (v28 != 12);
        }

        v31 = 0;
        v32 = 0.0;
        do
        {
          v32 = v32 + (*&v10[v31] * *&v10[v31]);
          v31 += 4;
        }

        while (v31 != 12);
        v33 = 0;
        v34 = 0.0;
        do
        {
          v34 = v34 + (*&v11[v33] * *&v11[v33]);
          v33 += 4;
        }

        while (v33 != 12);
        v35 = 0;
        v36 = sqrtf(v32);
        v37 = v36 + v8 * (sqrtf(v34) - v36);
        do
        {
          *&v12[v35] = *&v12[v35] * v37;
          v35 += 4;
        }

        while (v35 != 12);
        ++v9;
        v10 += 12;
        v11 += 12;
        v12 += 12;
      }

      while (v9 != 3);
      goto LABEL_45;
    }

    v4.n128_f64[0] = v8;
  }

  v38 = *(this + 26988);
  *(this + 1688) = *(this + 26972);
  *(this + 27056) = 1;
  *(this + 1689) = v38;
  *(this + 6760) = *(this + 6751);
  *(this + 6763) = *(this + 6762);
  v8 = v4.n128_f64[0];
LABEL_45:
  if ((*(this + 336) & 0x1C00) != 0x800)
  {
    if (!(*(*this + 1888))(this, v4))
    {
      goto LABEL_51;
    }

    if (CADeviceUseHarmonyXYZD50::once != -1)
    {
      dispatch_once(&CADeviceUseHarmonyXYZD50::once, &__block_literal_global_308);
    }

    if (CADeviceUseHarmonyXYZD50::use_d50_xyz == 1)
    {
      memset(v59, 0, 60);
      *&v59[12] = *(this + 1688);
      *&v59[28] = *(this + 1689);
      *&v59[44] = *(this + 6760);
      CA::WindowServer::IOMFBDisplay::swap_set_icc_matrix(this, 6, *(this + 6), 0, v59);
    }

    else
    {
LABEL_51:
      v39 = 0;
      memset(v59, 0, 72);
      v40 = this + 27008;
      v41 = v59;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          v43 = *&v40[4 * i];
          v44 = v43 < 0.0;
          if (v43 >= 0.0)
          {
            v45 = v43;
          }

          else
          {
            v45 = -v43;
          }

          v46 = vcvtd_n_s64_f64(v45, 0x20uLL);
          if (v44)
          {
            v46 = -v46;
          }

          *&v41[8 * i] = v46;
        }

        ++v39;
        v41 += 24;
        v40 += 12;
      }

      while (v39 != 3);
      if (*(this + 25704) == 1)
      {
        v76 = 0;
        v77 = &v76;
        v78 = 0x2000000000;
        v79 = 0;
        v68 = MEMORY[0x1E69E9820];
        v69 = 0x40000000;
        v70 = ___ZN2CA19IOMobileFramebuffer10set_matrixE20IOMFB_MatrixLocationPA3_A3_Ky_block_invoke;
        v71 = &unk_1E6DFA1E0;
        v72 = &v76;
        v73 = this + 25696;
        v75 = 9;
        v74 = v59;
        BMMonitorBlockExecutionWithSignature();
        _Block_object_dispose(&v76, 8);
      }

      else
      {
        IOMobileFramebufferSetMatrix();
      }
    }

    IOMobileFramebufferSetBrightnessCorrection();
  }

  if (BYTE9(xmmword_1ED4E97EC) == 1)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v47 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(this + 6);
      v49 = *(this + 6752);
      v50 = *(this + 6753);
      v51 = *(this + 6754);
      v52 = *(this + 6755);
      v53 = *(this + 6756);
      v54 = *(this + 6757);
      v55 = *(this + 6758);
      v56 = *(this + 6759);
      v57 = *(this + 6760);
      v58 = *(this + 6763);
      *v59 = 67111936;
      *&v59[4] = v48;
      *&v59[8] = 2048;
      *&v59[10] = v49;
      *&v59[18] = 2048;
      *&v59[20] = v50;
      *&v59[28] = 2048;
      *&v59[30] = v51;
      *&v59[38] = 2048;
      *&v59[40] = v52;
      *&v59[48] = 2048;
      *&v59[50] = v53;
      *&v59[58] = 2048;
      *&v59[60] = v54;
      *&v59[68] = 2048;
      *&v59[70] = v55;
      v60 = 2048;
      v61 = v56;
      v62 = 2048;
      v63 = v57;
      v64 = 2048;
      v65 = v58;
      v66 = 2048;
      v67 = v8;
      _os_log_impl(&dword_183AA6000, v47, OS_LOG_TYPE_DEFAULT, "display %d harmony matrix [%g, %g, %g; %g, %g, %g; %g, %g, %g], scale %g, t: %g\n", v59, 0x76u);
    }
  }
}

void ___ZN2CA12MachPortUtil9ClientIPC6createEPKc_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E69E99E0];
  while (1)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    memset(msg, 0, sizeof(msg));
    v3 = mach_msg(msg, 258, 0, 0xB4u, v1, 0, 0);
    if (v3)
    {
      break;
    }

    v12 = 0;
    *&v11[8] = 0;
    v8 = msg[0] & 0x1F;
    LODWORD(v9) = 36;
    *v11 = (*&msg[20] + 100);
    HIDWORD(v9) = *&msg[8];
    v10 = 0;
    if ((*&msg[20] - 40418) >= 0xFFFFFFEE && (v4 = CACCARenderClient_subsystem[5 * (*&msg[20] - 40400) + 5]) != 0)
    {
      (v4)(msg, &v8);
    }

    else
    {
      *&v11[4] = *v2;
      v12 = -303;
      mach_msg_destroy(msg);
    }
  }

  v5 = v3;
  if (v3 != 268451843)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v6 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v7 = mach_error_string(v5);
      v8 = 136315394;
      v9 = v7;
      LOWORD(v10) = 1024;
      *(&v10 + 2) = v5;
      _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "CARenderServerProcessClientMessage mach_msg failed with %s [0x%x]", &v8, 0x12u);
    }
  }
}

void invoke_collectable_callback(_BYTE *a1)
{
  pthread_mutex_lock(&collectable_mutex);
  if (a1[112] == 1)
  {
    do
    {
      pthread_cond_wait(&collectable_cond, &collectable_mutex);
    }

    while ((a1[112] & 1) != 0);
  }

  if (*(a1 + 12))
  {
    a1[112] = 1;
    pthread_mutex_unlock(&collectable_mutex);
    (*(a1 + 12))(a1, *(a1 + 13));
    pthread_mutex_lock(&collectable_mutex);
    a1[112] = 0;
    pthread_cond_broadcast(&collectable_cond);
  }

  pthread_mutex_unlock(&collectable_mutex);

  CFRelease(a1);
}

uint64_t CA::Render::ImageQueue::forward_dm(os_unfair_lock_s *this, CA::Render::Context *a2, CA::Render::Update *a3, float a4, int a5, unsigned int a6, _BYTE *a7, BOOL *a8)
{
  v210 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    LOBYTE(v167) = 0;
    return v167 & 1;
  }

  v12 = a2;
  v13 = this;
  os_unfair_lock_lock(this + 14);
  v15 = *&v13[6]._os_unfair_lock_opaque;
  if (!v15 || *(v15 + 12) != 57)
  {
    goto LABEL_275;
  }

  v203 = *(*&v13[4]._os_unfair_lock_opaque + 24);
  if (CADeviceSupportsHDRProcessing::once != -1)
  {
    dispatch_once(&CADeviceSupportsHDRProcessing::once, &__block_literal_global_199);
  }

  if (CADeviceSupportsHDRProcessing::supports_hdr != 1)
  {
    goto LABEL_275;
  }

  v16 = *&v13[6]._os_unfair_lock_opaque;
  v17 = *&v13[20]._os_unfair_lock_opaque;
  os_unfair_lock_opaque = *(a3 + 130);
  if (!os_unfair_lock_opaque)
  {
    os_unfair_lock_opaque = v13[102]._os_unfair_lock_opaque;
    *(a3 + 130) = os_unfair_lock_opaque;
  }

  v190 = os_unfair_lock_opaque;
  v187 = a7;
  v19 = 1.0;
  v193 = v16;
  v195 = a3;
  v200 = v12;
  v205 = v13;
  while (1)
  {
    v20 = CA::Render::ImageQueue::hdr_processor(v13, v14);
    if (!(*(*v20 + 40))(v20, v16, a3))
    {
      a5 = -1;
    }

    v22 = CA::Render::ImageQueue::hdr_processor(v13, v21);
    if (!(*(*v22 + 48))(v22, v16, a3))
    {
      a4 = v19;
    }

    v199 = a5;
    if (a5 == -1)
    {
      v23 = 0;
    }

    else
    {
      v23 = a5;
    }

    v196 = v23;
    v24 = a4;
    if ((*&v13[57]._os_unfair_lock_opaque + 0.01 < a4) | *(a3 + 172) & 1)
    {
      v17 = 0;
    }

    v201 = *&v13[98]._os_unfair_lock_opaque;
    v25 = *&v13[100]._os_unfair_lock_opaque;
    v191 = v17;
    if (v17)
    {
      v26 = v17;
    }

    else
    {
      v26 = v16;
    }

    v27 = *(v26 + 184);
    if (a6)
    {
      goto LABEL_72;
    }

    if (BYTE5(xmmword_1ED4E980C))
    {
      goto LABEL_284;
    }

    v28 = *(a3 + 130);
    v29 = CA::Render::ImageQueue::resolved_display_attributes(v13, a3);
    v30 = v29;
    if ((*(v29 + 62) & 1) != 0 || *(v29 + 68) == 2)
    {
      if ((*(*v16 + 288))(v16))
      {
        if ((*(v30 + 66) & 1) == 0)
        {
          v31 = *(v16 + 16);
          memset(v208, 0, 132);
          *buf = 132;
          if (!IOSurfaceGetBulkAttachments() && *buf == 132 && v208[60] != 18)
          {
            if (v208[60] == 16 && v208[59] <= 0xCu && ((1 << v208[59]) & 0x1202) != 0)
            {
              v32 = IOSurfaceCopyValue(v31, _kHDRProcessingDolbyVisionRPUDataKey);
              if (!v32)
              {
                goto LABEL_257;
              }

              goto LABEL_39;
            }

            v34 = IOSurfaceCopyAllValues(v31);
            if (CFDictionaryGetValue(v34, _kHDRProcessingDolbyVisionRPUDataKey))
            {
              if (v34)
              {
                v32 = v34;
LABEL_39:
                CFRelease(v32);
              }
            }

            else
            {
              Bool = CA_CFDictionaryGetBool(v34, @"isHLG");
              if (v34)
              {
                CFRelease(v34);
              }

              if (!Bool)
              {
LABEL_257:
                if ((*(v195 + 1381) & 0x10) == 0)
                {
                  v170 = *(v30 + 28);
                  if (v170 == 0.0)
                  {
                    v170 = 1.0;
                  }

                  v171 = *(v16 + 184) | 4;
                  *(v16 + 184) = v171;
                  if (*(v16 + 37) != v170)
                  {
                    *(v193 + 37) = v170;
                    CA::Render::iosurface_set_edr_factor(*(v193 + 16), v33, v170);
                    v171 = *(v193 + 184);
                  }

                  v16 = v193;
                  *(v193 + 184) = v171 | 8;
                  *(v195 + 172) |= 0x10000000000000uLL;
LABEL_284:
                  v13 = v205;
                  if ((*(*v16 + 304))(v16) && a4 != *(v205 + 103))
                  {
                    if (v187)
                    {
                      *v187 = 1;
                    }

                    v13 = v205;
                    *(v205 + 103) = a4;
                    v16 = v193;
                  }

                  v167 = (*(v16 + 184) >> 4) & 1;
                  goto LABEL_276;
                }
              }
            }
          }
        }
      }
    }

    v35 = v16[4];
    v36 = v16[5];
    if ((!v28 && (v27 & 0x10) != 0 || v28 == 3 && (v16[92] & 0x10) != 0) && *(v30 + 64) == 1)
    {
      v37 = (*(*v16 + 288))(v16);
      if (v37)
      {
        if ((byte_1ED4E985E & 1) != 0 || (CA::CAPSEProcessor::needs_processing(v37) & 1) == 0)
        {
          v38 = v196 & 7;
          v39 = v38 == 4 || v38 == 7;
          if (!v39 && v16[4] >> 10 <= 4 && v16[5] <= 0xFFF)
          {
            if (CADeviceSupportsDCP::once[0] != -1)
            {
              dispatch_once(CADeviceSupportsDCP::once, &__block_literal_global_341);
            }

            if (CADeviceSupportsDCP::has_dcp != 1)
            {
              goto LABEL_315;
            }

            CacheMode = v16[91];
            if (CacheMode == -1)
            {
              CacheMode = IOSurfaceGetCacheMode();
              v16[91] = CacheMode;
            }

            if ((CacheMode & 0xF00) == 0x700)
            {
LABEL_315:
              if (CA::Render::display_tonemap_supports_pixel_format(v16[36]))
              {
                if ((v13[110]._os_unfair_lock_opaque & 1) == 0 && *(v30 + 40) * 1.01 < v24 && *(v30 + 48) * 0.99 > v24 && (CA::ScalerStatistics::should_enhance(v35, v36, (a4 * v35), (a4 * v36)) & 1) == 0 && *&v13[105]._os_unfair_lock_opaque == 0.0 && *&v13[104]._os_unfair_lock_opaque == v19 && CA::CAHDRProcessor::can_display_tonemap(*(v16 + 16), v41) && (CA::CAHDRProcessor::is_hdr10plus_screen_recording(v16, v42) & 1) == 0)
                {
                  CA::Render::Surface::reload_iosurface_color_attributes(v16, 0x7E);
                  if (((*(*v16 + 280))(v16) & 1) == 0)
                  {
                    v172 = *&v13[20]._os_unfair_lock_opaque;
                    if (v172)
                    {
                      if (atomic_fetch_add(v172 + 2, 0xFFFFFFFF) == 1)
                      {
                        (*(*v172 + 16))(v172);
                      }

                      *(v205 + 10) = 0;
                    }

                    *(v193 + 184) |= 0x100u;
                    v208[75] = 0;
                    *&v208[116] = 0x3F80000000000000;
                    *&v208[144] = 0;
                    memset(v208, 0, 20);
                    *&v208[32] = 0u;
                    *&v208[20] = xmmword_183E20F10;
                    *&v208[36] = 1065353216;
                    *&v208[48] = xmmword_183E20F20;
                    *&v208[64] = 0;
                    *&v208[71] = 0;
                    *&v208[76] = 0x100000001;
                    memset(&v208[84], 0, 32);
                    *&v208[124] = 0uLL;
                    *&v208[140] = -1;
                    v173 = CA::Render::ImageQueue::hdr_processor(v205, v43);
                    X::Ref<CA::CAHDRProcessor>::operator=(v208, v173);
                    v208[144] = (*(*v193 + 288))(v193) ^ 1;
                    *&v208[8] = *v30;
                    v174 = *(v30 + 16);
                    v175 = *(v30 + 32);
                    v176 = *(v30 + 48);
                    *&v208[72] = *(v30 + 64);
                    *&v208[56] = v176;
                    *&v208[40] = v175;
                    *&v208[24] = v174;
                    v177 = *(v30 + 80);
                    v178 = *(v30 + 96);
                    v179 = *(v30 + 112);
                    *&v208[136] = *(v30 + 128);
                    *&v208[120] = v179;
                    *&v208[104] = v178;
                    *&v208[88] = v177;
                    *&v208[148] = *(v205 + 105);
                    v180 = *v208;
                    if (*v208)
                    {
                      atomic_fetch_add((*v208 + 16), 1u);
                    }

                    *&v206[88] = *&v208[88];
                    *&v206[104] = *&v208[104];
                    *&v206[120] = *&v208[120];
                    v207 = *&v208[136];
                    *&v206[24] = *&v208[24];
                    *&v206[40] = *&v208[40];
                    *&v206[56] = *&v208[56];
                    *&v206[72] = *&v208[72];
                    *v206 = v180;
                    *&v206[8] = *&v208[8];
                    CA::Render::OnDemandTonemapCfg::operator=((v193 + 46), v206);
                    if (v180 && atomic_fetch_add(v180 + 4, 0xFFFFFFFF) == 1)
                    {
                      (*(*v180 + 8))(v180);
                    }

                    if (*(v30 + 68) == 2)
                    {
                      v182 = *(v30 + 28);
                      if (v182 == 0.0)
                      {
                        v182 = 1.0;
                      }

                      *(v193 + 184) |= 4u;
                      if (*(v193 + 37) != v182)
                      {
                        *(v193 + 37) = v182;
                        CA::Render::iosurface_set_edr_factor(*(v193 + 16), v181, v182);
                      }
                    }

                    if (byte_1ED4E983D == 1)
                    {
                      if (x_log_get_render(void)::once[0] != -1)
                      {
                        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                      }

                      v184 = x_log_get_render(void)::log;
                      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
                      {
                        v185 = v193[30];
                        *buf = 67109120;
                        *&buf[4] = v185;
                        _os_log_debug_impl(&dword_183AA6000, v184, OS_LOG_TYPE_DEBUG, "Try Display TM, and Skip MSR/GPU TM on surface (0x%x)", buf, 8u);
                      }
                    }

                    v183 = *v208;
                    if (*v208 && atomic_fetch_add((*v208 + 16), 0xFFFFFFFF) == 1)
                    {
                      (*(*v183 + 8))(v183);
                    }

                    v16 = v193;
                    goto LABEL_284;
                  }
                }
              }
            }
          }
        }
      }
    }

    a3 = v195;
    v12 = v200;
LABEL_72:
    v44 = 0;
    if ((v27 & 0x10) != 0 && v25 != 0.0)
    {
      if (*(a3 + 344))
      {
        v44 = 0;
      }

      else
      {
        v44 = byte_1ED4E981E ^ 1;
      }
    }

    v189 = *(v16 + 360);
    v45 = *&v13[96]._os_unfair_lock_opaque;
    if (!v45)
    {
      operator new[]();
    }

    ID = IOSurfaceGetID(*(v16 + 16));
    v188 = v16[8];
    v47 = *&v13[42]._os_unfair_lock_opaque;
    v48 = *&v13[50]._os_unfair_lock_opaque;
    *&v208[96] = *&v13[46]._os_unfair_lock_opaque;
    *&v208[112] = v48;
    *&v208[128] = *&v13[54]._os_unfair_lock_opaque;
    v49 = *&v13[26]._os_unfair_lock_opaque;
    v50 = *&v13[34]._os_unfair_lock_opaque;
    *&v208[32] = *&v13[30]._os_unfair_lock_opaque;
    *&v208[48] = v50;
    *&v208[64] = *&v13[38]._os_unfair_lock_opaque;
    *&v208[80] = v47;
    *v208 = *&v13[22]._os_unfair_lock_opaque;
    *&v208[16] = v49;
    v192 = *&v13[56]._os_unfair_lock_opaque;
    v51 = CA::Render::ImageQueue::resolved_display_attributes(v13, a3);
    v54 = 0.0;
    v202 = v51;
    if ((*(v51 + 62) & 1) == 0 && (*(v51 + 68) - 2) >= 3)
    {
      v54 = *&v13[105]._os_unfair_lock_opaque;
    }

    v197 = v44;
    if (v44)
    {
      for (i = 0; i != 576; i += 192)
      {
        if (*(v45 + i))
        {
          v56 = (*(*v16 + 256))(v16);
          v57 = (*(**(v45 + i) + 256))();
          v58 = *(v45 + i);
          if (v56 != v57)
          {
            if (v58)
            {
LABEL_93:
              if (atomic_fetch_add(v58 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v58 + 16))(v58);
              }

              *(v45 + i) = 0;
            }

            v59 = v45 + i;
            v60 = *(v45 + i + 8);
            if (v60)
            {
              if (atomic_fetch_add(v60 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v60 + 16))(v60);
              }

              *(v59 + 8) = 0;
            }

            *(v59 + 16) = 0xFFF0000000000000;
            *(v59 + 24) = 0;
            *(v59 + 32) = 1065353216;
            *(v59 + 40) = xmmword_183E20F30;
            *(v59 + 56) = xmmword_183E20F40;
            *(v59 + 72) = 0;
            *(v59 + 80) = xmmword_183E20F20;
            *(v59 + 96) = 0;
            *(v59 + 104) = 0;
            *(v59 + 108) = 0x100000001;
            *(v59 + 116) = 0u;
            *(v59 + 132) = 0u;
            *(v59 + 148) = 0x3F80000000000000;
            *(v59 + 164) = 0;
            *(v59 + 156) = 0;
            *(v59 + 172) = -1;
            *(v59 + 184) = 0;
            *(v59 + 180) = 0;
            continue;
          }

          if (v16[4] != v58[4] || v16[5] != v58[5] || a4 != *(v45 + i + 32) || *(v45 + i + 184) != a6 || v54 != *(v45 + i + 180))
          {
            goto LABEL_93;
          }
        }
      }
    }

    v194 = v45;
    if ((v27 & 0x10) == 0)
    {
      break;
    }

    v61 = 0;
    v62 = 0;
    v63 = 1;
    do
    {
      v64 = v45 + v61;
      if (*(v45 + v61 + 28) == ID && *(v64 + 16) == *&v13[10]._os_unfair_lock_opaque && *(v45 + v61 + 24) == v13[113]._os_unfair_lock_opaque && *(v45 + v61 + 32) == a4)
      {
        v65 = v45 + v61;
        if (*(v45 + v61 + 184) == a6)
        {
          CA::Render::ImageQueue::hdr_processor(v13, v52);
          if ((CA::CAHDRProcessor::should_invalidate_tonemapping((v65 + 40), v202, *(v65 + 180), v54) & 1) == 0 && (*(a3 + 1381) & 8) == 0)
          {
            v152 = *(v64 + 8);
            v153 = *&v13[20]._os_unfair_lock_opaque;
            if (v153 != v152)
            {
              if (v153 && atomic_fetch_add(v153 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v153 + 16))(v153);
              }

              if (v152)
              {
                v154 = v152 + 2;
                if (!atomic_fetch_add(v152 + 2, 1u))
                {
                  v152 = 0;
                  atomic_fetch_add(v154, 0xFFFFFFFF);
                }
              }

              *&v13[20]._os_unfair_lock_opaque = v152;
              v153 = v152;
            }

            *&v13[22]._os_unfair_lock_opaque = *(v65 + 40);
            v155 = *(v65 + 56);
            v156 = *(v65 + 72);
            v157 = *(v65 + 88);
            *&v13[38]._os_unfair_lock_opaque = *(v65 + 104);
            *&v13[34]._os_unfair_lock_opaque = v157;
            *&v13[30]._os_unfair_lock_opaque = v156;
            *&v13[26]._os_unfair_lock_opaque = v155;
            v158 = *(v65 + 120);
            v159 = *(v65 + 136);
            v160 = *(v65 + 152);
            *&v13[54]._os_unfair_lock_opaque = *(v65 + 168);
            *&v13[50]._os_unfair_lock_opaque = v160;
            *&v13[46]._os_unfair_lock_opaque = v159;
            *&v13[42]._os_unfair_lock_opaque = v158;
            v13[56]._os_unfair_lock_opaque = *(v64 + 180);
            v13[57]._os_unfair_lock_opaque = *(v64 + 32);
            CA::Render::Surface::ensure_scheduled_block(v153);
            if (byte_1ED4E983D != 1)
            {
              goto LABEL_163;
            }

            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v164 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
            {
              v165 = v193[30];
              v13 = v205;
              v166 = *(*(v205 + 10) + 120);
              *v206 = 67109376;
              *&v206[4] = v165;
              *&v206[8] = 1024;
              *&v206[10] = v166;
              _os_log_debug_impl(&dword_183AA6000, v164, OS_LOG_TYPE_DEBUG, "No Display TM, using previously MSR/GPU tonemapped ForwardDMCache src (0x%x), tm_cache_surf (0x%x)", v206, 0xEu);
              a3 = v195;
              v12 = v200;
              v86 = v197;
            }

            else
            {
              a3 = v195;
              v12 = v200;
              v86 = v197;
              v13 = v205;
            }

LABEL_164:
            v111 = *&v13[20]._os_unfair_lock_opaque;
            if (v111)
            {
              if (a4 != *&v13[103]._os_unfair_lock_opaque)
              {
                if (v187)
                {
                  *v187 = 1;
                }

                *&v13[103]._os_unfair_lock_opaque = a4;
              }

              *(v111 + 32) = v188;
              atomic_fetch_add((v111 + 36), 1u);
              LOBYTE(v13[101]._os_unfair_lock_opaque) = 1;
              *(*&v13[20]._os_unfair_lock_opaque + 360) = v189;
            }

            goto LABEL_170;
          }
        }
      }

      v63 = v62++ < 2;
      v61 += 192;
    }

    while (v61 != 576);
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    *&v13[22]._os_unfair_lock_opaque = *v202;
    v67 = *(v202 + 16);
    v68 = *(v202 + 32);
    v69 = *(v202 + 48);
    *&v13[38]._os_unfair_lock_opaque = *(v202 + 64);
    *&v13[34]._os_unfair_lock_opaque = v69;
    *&v13[30]._os_unfair_lock_opaque = v68;
    *&v13[26]._os_unfair_lock_opaque = v67;
    v70 = *(v202 + 80);
    v71 = *(v202 + 96);
    v72 = *(v202 + 112);
    *&v13[54]._os_unfair_lock_opaque = *(v202 + 128);
    *&v13[50]._os_unfair_lock_opaque = v72;
    *&v13[46]._os_unfair_lock_opaque = v71;
    *&v13[42]._os_unfair_lock_opaque = v70;
    *&v13[56]._os_unfair_lock_opaque = v54;
    v73 = CA::Render::ImageQueue::hdr_processor(v13, v52);
    v76 = (*(*v73 + 56))(v73, a3);
    v16 = v193;
    v77 = *(v193 + 7);
    a5 = v199;
    if (v77)
    {
      CA::Render::iosurface_set_bulk_from_colorspace(*(v193 + 16), v77, v74, v75);
    }

    if (byte_1ED4E983D == 1)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v162 = x_log_get_render(void)::log;
      v16 = v193;
      a3 = v195;
      a5 = v199;
      v19 = 1.0;
      v13 = v205;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
      {
        v163 = v193[30];
        *v206 = 67109120;
        *&v206[4] = v163;
        _os_log_debug_impl(&dword_183AA6000, v162, OS_LOG_TYPE_DEBUG, "No Display TM, using MSR/GPU TM on surface (0x%x)", v206, 8u);
      }
    }

    v78 = CA::Render::ImageQueue::hdr_processor(v13, v77);
    v79 = (*(*v16 + 288))(v16) ^ 1;
    v80 = (*(*v16 + 280))(v16);
    LOWORD(v186) = 0;
    v81 = (*(*v78 + 24))(v78, v16, a3, v202, v76, v196, v79 | a6, v80, a4, v54, v186);
    if (v81)
    {
      v82 = v81;
      v13[102]._os_unfair_lock_opaque = *(a3 + 520);
      v83 = *&v13[20]._os_unfair_lock_opaque;
      *&v13[20]._os_unfair_lock_opaque = v82;
      v12 = v200;
      if (v83 && atomic_fetch_add(v83 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v83 + 16))(v83);
      }

      *&v13[57]._os_unfair_lock_opaque = a4;
      v84 = v16[3];
      v85 = v84 >> 8;
      v86 = v197;
      if (a5 == -1)
      {
        v87 = *(v82 + 12);
      }

      else
      {
        v87 = *(v82 + 12) & 0xFFFFF8FF | (image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[concat_table[(8 * a5) | image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[(v84 >> 8) & 7]]] << 8);
        v85 &= 0xFFFFF8u;
      }

      *(v82 + 12) = v87 | (v85 << 8);
      *(v82 + 368) = *(v82 + 368) & 0xFFDF | v16[92] & 0x20;
      v191 = v82;
      if (*(a3 + 344))
      {
        v63 = 0;
        goto LABEL_164;
      }

      v89 = 0;
      v90 = 0;
      v91 = 1;
      do
      {
        v92 = v89;
        if (v25 > 0.0 && ((v93 = v45 + 192 * v91, v94 = *(v93 + 16), v95 = v45 + 192 * v90, v96 = *(v95 + 16), v94 < v96) && *(v93 + 24) == *(v95 + 24) || v94 == v96 && *(v93 + 24) < *(v95 + 24)) || v25 < 0.0 && ((v97 = v45 + 192 * v91, v98 = *(v97 + 16), v99 = v45 + 192 * v90, v100 = *(v99 + 16), v98 > v100) && *(v97 + 24) == *(v99 + 24) || v98 == v100 && *(v97 + 24) < *(v99 + 24)))
        {
          v90 = v91;
        }

        v89 = 1;
        v91 = 2;
      }

      while ((v92 & 1) == 0);
      v101 = v45 + 192 * v90;
      v102 = *v101;
      if (*v101 != v16)
      {
        if (v102 && atomic_fetch_add(v102 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v102 + 16))(v102);
        }

        v103 = (v16 + 2);
        if (!atomic_fetch_add(v16 + 2, 1u))
        {
          v16 = 0;
          atomic_fetch_add(v103, 0xFFFFFFFF);
        }

        *v101 = v16;
      }

      v104 = *(v101 + 8);
      if (v104 != v82)
      {
        if (v104 && atomic_fetch_add(v104 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v104 + 16))(v104);
        }

        v105 = v82;
        if (!atomic_fetch_add((v82 + 8), 1u))
        {
          v105 = 0;
          atomic_fetch_add((v82 + 8), 0xFFFFFFFF);
        }

        *(v101 + 8) = v105;
      }

      v63 = 0;
      *(v101 + 28) = ID;
      *(v101 + 16) = *&v13[10]._os_unfair_lock_opaque;
      *(v101 + 24) = v13[113];
      *(v101 + 32) = a4;
      *(v101 + 40) = *v202;
      v106 = *(v202 + 16);
      v107 = *(v202 + 32);
      v108 = *(v202 + 48);
      *(v101 + 104) = *(v202 + 64);
      *(v101 + 88) = v108;
      *(v101 + 72) = v107;
      *(v101 + 56) = v106;
      v109 = *(v202 + 80);
      v110 = *(v202 + 96);
      v53 = *(v202 + 112);
      *(v101 + 168) = *(v202 + 128);
      *(v101 + 152) = v53;
      *(v101 + 136) = v110;
      *(v101 + 120) = v109;
      *(v101 + 180) = v54;
      *(v101 + 184) = a6;
LABEL_163:
      v86 = v197;
      goto LABEL_164;
    }

    v12 = v200;
    if (CADeviceSupportsToneMapAcceleratorSwitching::once != -1)
    {
      dispatch_once(&CADeviceSupportsToneMapAcceleratorSwitching::once, &__block_literal_global_294);
    }

    if (CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching != 1 || v190 == *(a3 + 130))
    {
      LOBYTE(v167) = 0;
      LOBYTE(v13[101]._os_unfair_lock_opaque) = 0;
      goto LABEL_276;
    }

    memset(v206, 0, 48);
    CA::Shape::operator=(v206, CA::RectTraits<int>::infinity);
    CA::shape_union(a3 + 2, v206, v88);
    v17 = 0;
LABEL_243:
    v190 = *(a3 + 130);
  }

  v63 = 0;
  v86 = v197;
LABEL_170:
  if ((v86 & 1) == 0)
  {
    goto LABEL_274;
  }

  LODWORD(v53.f64[0]) = 1.0;
  if (*(v205 + 27) >= 1.0 && *&v208[20] >= 1.0)
  {
    CA::Render::ImageQueue::hdr_processor(v205, v52);
    if (CA::CAHDRProcessor::should_invalidate_tonemapping(v208, v205 + 22, v192, *(v205 + 56)))
    {
      goto LABEL_274;
    }
  }

  v113 = 0;
  v114 = 0;
  v115 = *(a3 + 15);
  v198 = (v45 + 28);
  v116 = v115;
  while (2)
  {
    v117 = v45 + 192 * v113;
    v118 = -(*(v117 + 16) - *(v205 + 5));
    if (v25 >= 0.0)
    {
      v118 = *(v117 + 16) - *(v205 + 5);
    }

    v119 = COERCE_UNSIGNED_INT64(fabs(*(v117 + 16) - *(v205 + 5))) < 0x7FF0000000000000;
    v120 = v118 >= 0.208333333 || !v119;
    if (!v120 && v118 >= 0.0 && *(v117 + 24) >= *(v205 + 113))
    {
      goto LABEL_230;
    }

    v121 = *v117;
    if (*v117)
    {
      if (atomic_fetch_add(v121 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v121 + 16))(v121);
      }

      *v117 = 0;
    }

    v122 = *(v117 + 8);
    if (v122)
    {
      if (atomic_fetch_add(v122 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v122 + 16))(v122);
      }

      *(v117 + 8) = 0;
    }

    *(v117 + 40) = xmmword_183E20F30;
    *(v117 + 16) = 0xFFF0000000000000;
    *(v117 + 24) = 0;
    *(v117 + 32) = 1065353216;
    *(v117 + 56) = xmmword_183E20F40;
    *(v117 + 72) = 0;
    *(v117 + 80) = xmmword_183E20F20;
    *(v117 + 96) = 0;
    *(v117 + 104) = 0;
    *(v117 + 108) = 0x100000001;
    *(v117 + 116) = 0u;
    *(v117 + 132) = 0u;
    *(v117 + 148) = 0x3F80000000000000;
    *(v117 + 164) = 0;
    *(v117 + 156) = 0;
    *(v117 + 172) = -1;
    *(v117 + 180) = 0;
    *(v117 + 184) = 0;
    if (v114 > 1 || !v63 && v114 == 1)
    {
      goto LABEL_230;
    }

    memset(v206, 0, sizeof(v206));
    if (v116 > 0.200000003)
    {
      goto LABEL_274;
    }

LABEL_196:
    if (!CAShmemImageQueueCopyImageInfo(v205, *(v205 + 111), v203, a3, v206, 0, 0, 0, v201 + v116 * v25, v25, v53) || (v123 = CA::Render::Context::lookup_object(*(v12 + 17), *(v12 + 37), *&v206[48], 0, 0, 0)) == 0 || (v124 = (*(*v123 + 80))(v123)) == 0 || (v125 = v124, *(v124 + 12) != 57))
    {
LABEL_228:
      if (!*(v117 + 8))
      {
        v168 = *v117;
        if (*v117)
        {
          if (atomic_fetch_add(v168 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v168 + 16))(v168);
          }

          *v117 = 0;
        }

        *(v117 + 160) = 0u;
        *(v117 + 176) = 0u;
        *(v117 + 128) = 0u;
        *(v117 + 144) = 0u;
        *(v117 + 96) = 0u;
        *(v117 + 112) = 0u;
        *(v117 + 64) = 0u;
        *(v117 + 80) = 0u;
        *(v117 + 32) = 0u;
        *(v117 + 48) = 0u;
        *v117 = 0u;
        *(v117 + 16) = 0u;
        goto LABEL_274;
      }

      v116 = v116 + v115;
      goto LABEL_230;
    }

    CA::Render::Surface::reload_iosurface_needs_film_grain(v124);
    if (!*(v125 + 128) || (*(v125 + 368) & 0x10) == 0)
    {
LABEL_230:
      if (++v113 == 3)
      {
        goto LABEL_274;
      }

      continue;
    }

    break;
  }

  CA::Render::update_texture_flags(v125, v203, *&v206[8], *&v206[20]);
  v126 = IOSurfaceGetID(*(v125 + 128));
  v130 = v126;
  v131 = v198;
  v132 = 3;
  do
  {
    if (*(v131 - 3) == *&v206[56] && *(v131 - 1) == *&v206[4] && *v131 == v126)
    {
      v116 = v116 + v115;
      v12 = v200;
      if (v116 <= 0.200000003)
      {
        goto LABEL_196;
      }

      goto LABEL_274;
    }

    v131 += 48;
    --v132;
  }

  while (v132);
  if (*(v125 + 56))
  {
    CA::Render::iosurface_set_bulk_from_colorspace(*(v193 + 16), *(v193 + 7), v128, v129);
  }

  if (byte_1ED4E983D == 1)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v150 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v151 = *(v125 + 120);
      *buf = 67109120;
      *&buf[4] = v151;
      _os_log_debug_impl(&dword_183AA6000, v150, OS_LOG_TYPE_DEBUG, "Pre-warming using MSR/GPU tonemapping on surface (0x%x)", buf, 8u);
    }
  }

  v133 = CA::Render::ImageQueue::hdr_processor(v205, v127);
  v134 = (*(*v125 + 288))(v125) ^ 1;
  v135 = (*(*v125 + 280))(v125);
  LOWORD(v186) = 256;
  v136 = v134 | a6;
  a3 = v195;
  v137 = (*(*v133 + 24))(v133, v125, v195, v202, 1, v196, v136, v135, a4, v54, v186);
  if (v137)
  {
    v138 = v137;
    *(v205 + 102) = *(v195 + 130);
    v139 = *(v125 + 12);
    v140 = v139 >> 8;
    if (v199 == -1)
    {
      v141 = *(v137 + 12);
    }

    else
    {
      v141 = *(v137 + 12) & 0xFFFFF8FF | (image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[concat_table[(8 * v199) | image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[(v139 >> 8) & 7]]] << 8);
      v140 &= 0xFFFFF8u;
    }

    *(v137 + 12) = v141 | (v140 << 8);
    *(v137 + 368) = *(v137 + 368) & 0xFFDF | *(v125 + 368) & 0x20;
    *(v117 + 28) = v130;
    v142 = *v117;
    v12 = v200;
    v45 = v194;
    if (*v117 != v125)
    {
      if (v142 && atomic_fetch_add(v142 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v142 + 16))(v142);
      }

      v143 = (v125 + 8);
      if (!atomic_fetch_add((v125 + 8), 1u))
      {
        v125 = 0;
        atomic_fetch_add(v143, 0xFFFFFFFF);
      }

      *v117 = v125;
    }

    v144 = *(v117 + 8);
    *(v117 + 8) = v138;
    if (v144 && atomic_fetch_add(v144 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v144 + 16))(v144);
    }

    *(v117 + 16) = *&v206[56];
    *(v117 + 24) = *&v206[4];
    *(v117 + 32) = a4;
    v145 = *(v202 + 128);
    v147 = *(v202 + 96);
    v146 = *(v202 + 112);
    *(v117 + 120) = *(v202 + 80);
    *(v117 + 136) = v147;
    *(v117 + 152) = v146;
    *(v117 + 168) = v145;
    v149 = *(v202 + 48);
    v148 = *(v202 + 64);
    v53 = *(v202 + 32);
    *(v117 + 56) = *(v202 + 16);
    *(v117 + 72) = v53;
    *(v117 + 88) = v149;
    *(v117 + 104) = v148;
    *(v117 + 40) = *v202;
    *(v117 + 180) = v54;
    *(v117 + 184) = a6;
    ++v114;
    goto LABEL_228;
  }

  if (CADeviceSupportsToneMapAcceleratorSwitching::once != -1)
  {
    dispatch_once(&CADeviceSupportsToneMapAcceleratorSwitching::once, &__block_literal_global_294);
  }

  v16 = v193;
  a5 = v199;
  v12 = v200;
  v19 = 1.0;
  v17 = v191;
  v13 = v205;
  if (CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching == 1 && v190 != *(v195 + 130))
  {
    CA::Render::Update::invalidate(v195, CA::RectTraits<int>::infinity);
    goto LABEL_243;
  }

LABEL_274:
  v13 = v205;
LABEL_275:
  LOBYTE(v167) = v13[101]._os_unfair_lock_opaque;
LABEL_276:
  os_unfair_lock_unlock(v13 + 14);
  return v167 & 1;
}

void sub_183AD49CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void CA::Render::ImageQueue::pse_mitigate(CA::Render::ImageQueue *this, CA::Render::Update *a2)
{
  if ((*(a2 + 1381) & 4) != 0)
  {
    os_unfair_lock_lock(this + 14);
    v5 = *(this + 3);
    if (v5 && *(v5 + 12) == 57 && *(this + 5) != 0.0)
    {
      v6 = *(this + 10) ? *(this + 10) : *(this + 3);
      if ((*(v6 + 368) & 0x20) != 0 && !*(this + 8))
      {
        if (!*(this + 9))
        {
          v7 = X::Allocator0::operator new(0x20uLL);
          if (v7)
          {
            *v7 = objc_opt_new();
          }

          *(this + 9) = v7;
        }

        v8 = CA::Render::ImageQueue::resolved_display_attributes(this, a2);
        v9 = CA::CAPSEProcessor::process_surface(*(this + 9), v6, *(this + 5), *(v8 + 12), *(v8 + 20));
        v10 = *(this + 8);
        *(this + 8) = v9;
        if (v10)
        {
          if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v10 + 16))(v10);
          }

          v9 = *(this + 8);
        }

        if (v9)
        {
          atomic_fetch_add(v9 + 9, 1u);
        }
      }
    }

    os_unfair_lock_unlock(this + 14);
  }
}

void CAShmemImageQueueCollectable(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    v4 = *(a1 + 44) != a3;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 28);
  v6 = v4 | a4;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (a2 && a3)
    {
      *(a1 + 44) = a3;
LABEL_12:
      *(a1 + 76) = CA::MachPortUtil::call_with_timeout<int (*)(unsigned int,unsigned int,unsigned int),unsigned int>(a2, *(a1 + 76), "IQCollectable", _CACImageQueueCollectable, v5) == 268435460;
      return;
    }

    if (a2)
    {
      goto LABEL_12;
    }

    if (CA::MachPortUtil::reply_queue(void)::once[0] != -1)
    {
      v9 = *(a1 + 28);
      dispatch_once(CA::MachPortUtil::reply_queue(void)::once, &__block_literal_global_10344);
      v5 = v9;
    }

    v8 = CA::MachPortUtil::reply_queue(void)::queue;

    dispatch_async_f(v8, v5, collectable_callback);
  }
}

uint64_t CA::MachPortUtil::call_with_timeout<int (*)(unsigned int,unsigned int,unsigned int),unsigned int>(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  v5 = a5;
  v9 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v10 = a4(a1, 0, a5);
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  if (v10 == 268435460)
  {
    if (v9 - 1 > 0xFFFFFFFD || mach_port_mod_refs(*MEMORY[0x1E69E9A60], v9, 0, 1))
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v13 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = a3;
        v14 = "%s failed to retain right";
        v15 = v13;
        v16 = 12;
LABEL_14:
        _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      }
    }

    else
    {
      if (CA::MachPortUtil::reply_queue(void)::once[0] != -1)
      {
        dispatch_once(CA::MachPortUtil::reply_queue(void)::once, &__block_literal_global_10344);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = ___ZN2CA12MachPortUtil17call_with_timeoutIPFijjjEJjEEEijjbPKcT_DpT0__block_invoke;
      v18[3] = &__block_descriptor_tmp_102_15235;
      v19 = v9;
      v20 = 2;
      v21 = v5;
      v22 = a2;
      v18[4] = a4;
      v18[5] = a3;
      dispatch_async(CA::MachPortUtil::reply_queue(void)::queue, v18);
    }
  }

  else
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v17 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = a3;
      v25 = 1024;
      v26 = v11;
      v27 = 2080;
      v28 = mach_error_string(v11);
      v14 = "%s client message err=0x%x : %s";
      v15 = v17;
      v16 = 28;
      goto LABEL_14;
    }
  }

  return v11;
}

uint64_t _CACImageQueueCollectable(mach_port_t a1, mach_msg_timeout_t timeout, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a3;
  *&v6.msgh_bits = 19;
  v6.msgh_voucher_port = 0;
  v6.msgh_id = 40403;
  v6.msgh_remote_port = a1;
  v6.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v6);
  }

  v4 = mach_msg(&v6, 17, 0x24u, 0, 0, timeout, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((v6.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v6.msgh_local_port);
    }

    mach_msg_destroy(&v6);
  }

  return v4;
}

BOOL CA::Render::Layer::append_texture_transform(CA::Render::Layer *this, CA::Transform *a2, CA::Render::Texture *a3, CA::Render::Object *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((*(this + 46) & 2) != 0)
  {
    return 0;
  }

  v7 = (a3 + 16);
  v8 = *(a3 + 4);
  v10 = (a3 + 20);
  v9 = *(a3 + 5);
  v11 = v9;
  v42.f64[0] = v8;
  v42.f64[1] = v9;
  v44 = 0;
  v43[0] = xmmword_183E20E00;
  v43[1] = 0u;
  v12 = 0.0;
  v43[2] = xmmword_183E20E60;
  memset(&v43[3], 0, 32);
  v43[5] = xmmword_183E20E00;
  v43[6] = 0u;
  v43[7] = xmmword_183E20E60;
  __asm { FMOV            V0.2D, #1.0 }

  v39 = _Q0;
  v43[8] = _Q0;
  if (*(a4 + 12) != 56)
  {
    v18 = *(a3 + 3);
    if ((v18 & 0x6400) == 0)
    {
      goto LABEL_15;
    }

    if ((v18 & 0x100) != 0)
    {
      _Q0.f64[0] = 0.0;
      v24 = CA::Transform::translate(v43, _Q0, -v9, 0.0);
      v24.f64[0] = 1.0;
      _Q0.f64[0] = CA::Transform::scale(v43, v24, -1.0, 1.0);
      v18 = *(a3 + 3);
      if ((v18 & 0x200) == 0)
      {
LABEL_7:
        if ((v18 & 0x400) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_26;
      }
    }

    else if ((v18 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    _Q0.f64[0] = -*(a3 + 4);
    v25 = CA::Transform::translate(v43, _Q0, 0.0, 0.0);
    v25.f64[0] = -1.0;
    _Q0.f64[0] = CA::Transform::scale(v43, v25, 1.0, 1.0);
    v18 = *(a3 + 3);
    if ((v18 & 0x400) == 0)
    {
LABEL_8:
      if ((v18 & 0x4000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

LABEL_26:
    _Q0.f64[0] = 0.0;
    CA::Transform::translate(v43, _Q0, -*(a3 + 5), 0.0);
    _Q0.f64[0] = CA::Transform::rotate90(v43, v26, v27, v28);
    v18 = *(a3 + 3);
    if ((v18 & 0x4000) == 0)
    {
LABEL_9:
      if ((v18 & 0x2000) == 0)
      {
LABEL_11:
        LODWORD(v40.f64[0]) = 0;
        v41 = 0;
        if ((v18 & 0x6400) != 0)
        {
          v7 = &v40;
          v10 = &v41;
          CA::Render::Texture::displayed_size_(a3, &v40, &v41);
        }

        LODWORD(_Q0.f64[0]) = LODWORD(v7->f64[0]);
        v8 = *&_Q0.f64[0];
        LODWORD(_Q0.f64[0]) = *v10;
        v11 = *&_Q0.f64[0];
        goto LABEL_14;
      }

LABEL_10:
      _Q0.f64[0] = *(a3 + 8);
      _Q0.f64[0] = CA::Transform::scale(v43, _Q0, 1.0, 1.0);
      v18 = *(a3 + 3);
      goto LABEL_11;
    }

LABEL_27:
    _Q0.f64[0] = -*(a3 + 12);
    _Q0 = CA::Transform::translate(v43, _Q0, -*(a3 + 13), 0.0);
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  LODWORD(_Q0.f64[0]) = *(a4 + 8);
  v8 = *&_Q0.f64[0];
  v11 = *(a4 + 9);
LABEL_14:
  v42.f64[0] = v8;
  v42.f64[1] = v11;
LABEL_15:
  v19 = *(this + 17);
  if (!v19)
  {
    v23 = *(this + 38);
    if (!*(this + 38))
    {
      v22 = 0;
      v21 = 0.0;
LABEL_30:
      _Q0.f64[0] = v21;
      CA::Transform::scale_2d_right(v43, _Q0, a2, a3, a4);
      v8 = v8 * v21;
      v11 = v11 * v21;
      v42.f64[0] = v8;
      v42.f64[1] = v11;
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }

    if (v23 == 1)
    {
      goto LABEL_37;
    }

    v20 = v23;
LABEL_22:
    v22 = *(this + 17);
    v21 = 1.0 / v20;
    goto LABEL_30;
  }

  v20 = *(v19 + 304);
  if (v20 != 1.0)
  {
    if (v20 == 0.0)
    {
      v21 = 0.0;
      v22 = *(this + 17);
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  v22 = *(this + 17);
LABEL_31:
  v29 = *(v22 + 40);
  if (v29)
  {
    v30 = v29[3];
    if (v30 < 0.0)
    {
      return 0;
    }

    v31 = v29[4];
    if (v31 < 0.0)
    {
      return 0;
    }

    v32 = v29[5];
    if (v32 > 1.0)
    {
      return 0;
    }

    v33 = v29[6];
    if (v33 > 1.0)
    {
      return 0;
    }

    _Q0.f64[0] = -(v30 * v8);
    CA::Transform::translate_right(v43, _Q0, -(v31 * v11), v12);
    v8 = (v32 - v30) * v8;
    v11 = (v33 - v31) * v11;
    v42.f64[0] = v8;
    v42.f64[1] = v11;
  }

LABEL_37:
  v40 = v39;
  if ((*(this + 5) & 0xF000) != 0x9000 || *(this + 9) != 0.0 || *(this + 10) != 0.0 || v19 && *(v19 + 32) || *(this + 11) != v8 || *(this + 12) != v11)
  {
    CA::Render::Layer::append_contents_transform(this, a2, &v42, &v40);
    v34 = v40;
    CA::Transform::concat_left(a2, v43, v35, v36);
    if (v34.f64[0] == 1.0 && v34.f64[1] == 1.0)
    {
      return 1;
    }

    v37 = *(this + 17);
    return !v37 || !*(v37 + 48);
  }

  CA::Transform::concat_left(a2, v43, a3, a4);
  return 1;
}

double CA::Transform::scale_2d_right(CA::Transform *this, __n128 a2, uint64_t a3, uint64_t a4, const double *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2.n128_f64[0] != 1.0)
  {
    v5 = *(this + 144);
    if ((v5 & 0x10) != 0)
    {
      v19 = 8;
      v9[1] = 0u;
      v10 = 0;
      v12 = 0u;
      v13 = 0u;
      v15 = 0u;
      v16 = xmmword_183E20E60;
      v9[0] = a2.n128_u64[0];
      v11 = a2.n128_u64[0];
      v14 = 0x3FF0000000000000uLL;
      v17 = a2.n128_u64[0];
      v18 = 1.0 / a2.n128_f64[0];
      a2.n128_f64[0] = CA::Transform::concat(this, v9, a4, a5);
    }

    else
    {
      v6 = *(this + 16) * a2.n128_f64[0];
      v7 = *(this + 17) / a2.n128_f64[0];
      *(this + 16) = v6;
      *(this + 17) = v7;
      *(this + 144) = v5 & 0xE7 | (8 * (v6 != 1.0));
      *this = vmulq_n_f64(*this, a2.n128_f64[0]);
      *(this + 2) = vmulq_n_f64(*(this + 2), a2.n128_f64[0]);
      a2 = vmulq_n_f64(*(this + 6), a2.n128_f64[0]);
      *(this + 6) = a2;
    }
  }

  return a2.n128_f64[0];
}

uint64_t CA::HDRProcessorInternal::supports_scaling_transforms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 520);
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if (CADeviceHasHardwareAcceleratedHDR::has_capability != 1 || (v4 <= 3 ? (v5 = v4 == 2) : (v5 = 1), v5))
  {
    v6 = 0;
  }

  else if ((*(*a2 + 280))(a2))
  {
    if (CADeviceSupportsFilmGrainScaling::once != -1)
    {
      dispatch_once(&CADeviceSupportsFilmGrainScaling::once, &__block_literal_global_211);
    }

    v6 = CADeviceSupportsFilmGrainScaling::supports_film_grain_scaling;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t CA::Render::ImageQueue::hdr_processor(CA::Render::ImageQueue *this, CA::Render::Context *a2)
{
  if (!*(this + 47))
  {
    CA::CAHDRProcessor::new_hdr_processor(this);
  }

  return *(this + 47);
}

BOOL CA::HDRProcessorInternal::supports_rotation_transforms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 520);
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  v5 = v3 < 2 || v3 == 3;
  return CADeviceHasHardwareAcceleratedHDR::has_capability == 1 && v5;
}

void _XImageQueueCollectable(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    CAImageQueueCollectable(result[8]);
    *(a2 + 32) = 0;
  }
}

BOOL CA::OGL::MetalContext::update(CA::OGL::MetalContext *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 75);
  if (v2 && (v3 = (*(*v2 + 16))(v2)) != 0)
  {
    v4 = *(v3 + 180) * *(v3 + 176);
    if (CADeviceUseCIF10::once != -1)
    {
      dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
    }

    v5 = 10;
    if (CADeviceUseCIF10::enable_cif10)
    {
      v5 = 20;
    }

    v6 = v5 * v4;
    if (v6 <= 0x200000)
    {
      v6 = 0x200000;
    }
  }

  else
  {
    v6 = 0x8000000;
  }

  *(this + 104) = v6;
  v7 = *(this + 84);
  if (!v7)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v8 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "Can't run metal against null surface\n", v10, 2u);
    }
  }

  return v7 != 0;
}

void CA::OGL::Context::prepare_context(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2 + 504;
  *(a1 + 24) = a2;
  *(a1 + 872) = global_feature_flags | *(a1 + 632);
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  for (i = 0; i != 93; ++i)
  {
    *(a1 + 884 + 4 * i) = CAGetDebugValueFloat(i);
  }

  *(a1 + 656) = 0;
}

float CAGetDebugValueFloat(unsigned int a1)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  result = 0.0;
  if (a1 <= 0x5C)
  {
    return *&debug_values[a1];
  }

  return result;
}

void CA::IOMobileFramebuffer::swap_begin(CA::IOMobileFramebuffer *this, unsigned int *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1)
  {
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x2000000000;
    v4 = 0;
    BMMonitorBlockExecutionWithSignature();
    _Block_object_dispose(v3, 8);
  }

  else if (!IOMobileFramebufferSwapBegin())
  {
    *(this + 16) = 0;
  }
}

void CAImageQueueCollectable(int a1)
{
  pthread_mutex_lock(&collectable_mutex);
  v2 = collectable_list;
  if (collectable_list)
  {
    while (1)
    {
      v3 = *v2;
      if (*(*v2 + 7) == a1)
      {
        break;
      }

      v2 = v2[1];
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    CFRetain(*v2);
    pthread_mutex_unlock(&collectable_mutex);
    v4 = v3[9];
    if (v4)
    {

      dispatch_async_f(v4, v3, invoke_collectable_callback);
    }

    else
    {

      invoke_collectable_callback(v3);
    }
  }

  else
  {
LABEL_4:

    pthread_mutex_unlock(&collectable_mutex);
  }
}

void layer_private_cleanup_callbacks(_CAMetalLayerPrivate *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 208);
  os_unfair_lock_lock(a1 + 52);
  v3 = [*(a1 + 27) copy];
  [*(a1 + 27) removeAllObjects];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        [v7 setStatus:3];
        [v7 didPresentAtTime:0.0];
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(v2);

  v8 = (a1 + 184);
  os_unfair_lock_lock(a1 + 46);
  v9 = [*(a1 + 24) copy];
  [*(a1 + 24) removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * j) didScheduledPresent];
      }

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(v8);
}

double CA::Rect::apply_transform_interior(int8x16_t *this, const CA::Transform *a2)
{
  v17[8] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 144);
  if ((v4 & 0x10) != 0)
  {
    if (CA::Mat4Impl::mat4_is_rectilinear(a2, a2))
    {

      *&result = CA::Mat4Impl::mat4_apply_to_rect(a2, this, v10).u64[0];
    }

    else
    {
      v11 = *this[1].i64;
      result = *&this[1].i64[1];
      if (v11 <= result)
      {
        v12 = *&this[1].i64[1];
      }

      else
      {
        v12 = *this[1].i64;
      }

      if (v12 < 1.79769313e308)
      {
        v13 = 0;
        v14 = *&this->i64[1];
        v17[0] = *this->i64;
        v17[1] = v14;
        v17[2] = v11 + v17[0];
        v17[3] = v14;
        v17[4] = v11 + v17[0];
        v17[5] = result + v14;
        v17[6] = v17[0];
        v17[7] = result + v14;
        do
        {
          CA::Mat4Impl::mat4_apply_to_point2(a2, &v17[v13], v10);
          v13 += 2;
        }

        while (v13 != 8);
        CA::Rect::set_corners_interior(this, v17);
      }
    }
  }

  else
  {
    v6 = *this[1].i64;
    result = *&this[1].i64[1];
    if (v6 <= result)
    {
      v7 = *&this[1].i64[1];
    }

    else
    {
      v7 = *this[1].i64;
    }

    if (v7 < 1.79769313e308)
    {
      if ((*(a2 + 144) & 8) != 0)
      {
        v8 = *&this->i64[1];
        *this->i64 = *this->i64 * *(a2 + 16);
        *&this->i64[1] = v8 * *(a2 + 16);
        v6 = *(a2 + 16) * v6;
        *this[1].i64 = v6;
        result = *(a2 + 16) * result;
        *&this[1].i64[1] = result;
        v4 = *(a2 + 144);
      }

      if ((v4 & 4) != 0)
      {
        v15 = this->i64[0];
        *this->i64 = -(result + *&this->i64[1]);
        this->i64[1] = v15;
        *this[1].i64 = result;
        *&this[1].i64[1] = v6;
        v4 = *(a2 + 144);
        v9 = v6;
        if ((v4 & 2) == 0)
        {
LABEL_24:
          v16 = *&this->i64[1];
          if (v4)
          {
            v16 = -(v9 + v16);
            *&this->i64[1] = v16;
          }

          *this->i64 = *this->i64 + *(a2 + 12);
          result = v16 + *(a2 + 13);
          *&this->i64[1] = result;
          return result;
        }
      }

      else
      {
        v9 = result;
        result = v6;
        if ((v4 & 2) == 0)
        {
          goto LABEL_24;
        }
      }

      *this->i64 = -(result + *this->i64);
      v4 = *(a2 + 144);
      goto LABEL_24;
    }
  }

  return result;
}

BOOL CA::Rect::set_corners_interior(_BOOL8 result, double *a2)
{
  v3 = result;
  v41 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v37 = v5;
  v38 = v7;
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v39 = v9;
  v40 = v11;
  v33 = v4;
  v34 = v6;
  v35 = v8;
  v36 = v10;
  if (v5 <= v7)
  {
    v7 = v5;
  }

  else
  {
    v37 = v7;
    v38 = v5;
  }

  if (v9 <= v11)
  {
    v11 = v9;
  }

  else
  {
    v39 = v11;
    v40 = v9;
  }

  if (v4 <= v6)
  {
    v6 = v4;
  }

  else
  {
    v33 = v6;
    v34 = v4;
  }

  if (v8 <= v10)
  {
    v10 = v8;
  }

  else
  {
    v35 = v10;
    v36 = v8;
  }

  v12 = v7 < v11;
  v13 = 2;
  if (v7 >= v11)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(&v37 + (v7 < v11));
  v16 = *(&v37 + v14);
  if (v15 < v16)
  {
    v17 = *(&v37 + (v7 < v11));
  }

  else
  {
    ++v14;
    v17 = v16;
  }

  if (v6 >= v10)
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  v19 = *(&v33 + (v6 < v10));
  v20 = *(&v33 + v18);
  if (v6 >= v10)
  {
    v13 = 1;
  }

  if (v19 < v20)
  {
    v21 = *(&v33 + (v6 < v10));
  }

  else
  {
    v13 = v6 < v10;
    ++v18;
    v21 = v20;
  }

  if (v7 >= v11 || v15 >= v16)
  {
    v23 = 2;
    if (v7 >= v11)
    {
      v23 = 1;
    }

    if (v15 < v16)
    {
      v12 = v23;
    }

    v22 = *(&v37 + v12);
    if (v14 <= 3 && v22 >= *(&v37 + v14))
    {
      v22 = *(&v37 + v14);
    }
  }

  else
  {
    v22 = *(&v37 + v14);
  }

  if (v6 >= v10 || v19 >= v20)
  {
    v24 = *(&v33 + v13);
    if (v18 <= 3 && v24 >= *(&v33 + v18))
    {
      v24 = *(&v33 + v18);
    }
  }

  else
  {
    v24 = *(&v33 + v18);
  }

  v25 = 0;
  v26 = a2 + 1;
  v27 = 0.0;
  v28 = 3;
  do
  {
    v27 = v27 + *v26 * a2[2 * v28] - a2[2 * v28 + 1] * *(v26 - 1);
    v28 = v25++;
    v26 += 2;
  }

  while (v25 != 4);
  v29 = (v24 - v21) * (v22 - v17);
  if (v27 < 0.0)
  {
    v27 = -v27;
  }

  if (COERCE__INT64(fabs((v24 - v21) * (v22 - v17))) <= 0x7FEFFFFFFFFFFFFFLL && ((v30 = v27 * 0.5, v31 = v27 * 0.25, v29 <= v30) ? (v32 = v29 <= v31) : (v32 = 1), !v32 && (result = CA::point_inside_quad(a2, v17, v21)) && (result = CA::point_inside_quad(a2, v22, v21)) && (result = CA::point_inside_quad(a2, v22, v24)) && (result = CA::point_inside_quad(a2, v17, v24))))
  {
    *v3 = v17;
    v3[1] = v21;
    v3[2] = v22 - v17;
    v3[3] = v24 - v21;
  }

  else
  {
    *v3 = 0u;
    *(v3 + 1) = 0u;
  }

  return result;
}

BOOL CA::point_inside_quad(double *a1, double a2, double a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (v3 - v5) * (a2 - *a1) + (v4 - *a1) * (a3 - v3);
  v7 = a1[4];
  v8 = a1[5];
  v9 = (v5 - v8) * (a2 - v4) + (v7 - v4) * (a3 - v5);
  v10 = a1[6];
  v11 = a1[7];
  v12 = (v8 - v11) * (a2 - v7) + (v10 - v7) * (a3 - v8);
  v13 = (v11 - v3) * (a2 - v10) + (a3 - v11) * (*a1 - v10);
  if (v6 <= 0.0 && v9 <= 0.0 && v12 <= 0.0 && v13 <= 0.0)
  {
    return 1;
  }

  v15 = v6 >= 0.0;
  if (v9 < 0.0)
  {
    v15 = 0;
  }

  if (v12 < 0.0)
  {
    v15 = 0;
  }

  return v13 >= 0.0 && v15;
}

void *CA::OGL::MetalBufferPool::set_encoder(void *this, objc_object *a2)
{
  if (a2)
  {
    v3 = this;
    *(this + 10) = 0u;
    *(this + 11) = 0u;
    *(this + 8) = 0u;
    *(this + 9) = 0u;
    *(this + 6) = 0u;
    *(this + 7) = 0u;
    *(this + 4) = 0u;
    *(this + 5) = 0u;
    this[24] = a2;
    this[25] = [(objc_object *)a2 methodForSelector:sel_setVertexBuffer_offset_atIndex_];
    v3[26] = [(objc_object *)a2 methodForSelector:sel_setFragmentBuffer_offset_atIndex_];
    v3[27] = [(objc_object *)a2 methodForSelector:sel_setVertexBufferOffset_atIndex_];
    v3[28] = [(objc_object *)a2 methodForSelector:sel_setFragmentBufferOffset_atIndex_];
    this = [(objc_object *)a2 methodForSelector:sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_];
    v3[29] = this;
  }

  return this;
}

double CA::OGL::MetalContext::update_encoder_state(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 3536);
  if (v7)
  {
    v16[0] = 0;
    v16[1] = 0;
    v8 = 44;
    if ((*(a2 + 308) & 0x400) == 0)
    {
      v8 = 40;
    }

    v9 = *(a2 + v8);
    v10 = *(a1 + 672);
    if (v10)
    {
      v11 = *(v10 + 144) >> 1;
      LOBYTE(v10) = v11 & 0x1F;
      v9 >>= v11;
    }

    v12 = 40;
    if ((*(a2 + 308) & 0x400) == 0)
    {
      v12 = 44;
    }

    v13 = (*(a2 + v12) >> v10);
    *&v16[2] = v9;
    *&v16[3] = v13;
    v17 = xmmword_183E20E60;
    [v7 setViewport:v16];
    *(a1 + 3856) |= 2u;
  }

  if ((a3 & 4) != 0)
  {
    [*(a1 + 3536) setFrontFacingWinding:{0, a4, a5}];
    if ((a3 & 8) == 0)
    {
LABEL_11:
      if ((a3 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_11;
  }

  [*(a1 + 3536) setCullMode:{0, a4, a5}];
  if ((a3 & 0x20) == 0)
  {
LABEL_12:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(a5) = 1.0;
  [*(a1 + 3536) setDepthBias:0.0 slopeScale:a5 clamp:0.0];
  if ((a3 & 0x80) == 0)
  {
LABEL_13:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  [*(a1 + 3536) setTriangleFillMode:{0, a4, a5}];
  if ((a3 & 0x100) == 0)
  {
LABEL_14:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_23:
    [*(a1 + 3536) setDepthStencilState:{*(a1 + 4704), a4, a5}];
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_22:
  [*(a1 + 3536) setBlendColorRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  if ((a3 & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((a3 & 0x400) != 0)
  {
LABEL_16:
    [*(a1 + 3536) setVisibilityResultMode:0 offset:{0, a4, a5}];
  }

LABEL_17:
  *(a1 + 3856) |= a3;
  *(a1 + 3976) = -1;
  *(a1 + 3968) = 0;
  v14 = *(a1 + 4016);
  *(a1 + 4032) = 2143289344;
  *(a1 + 4520) = 2143289344;
  *(a1 + 4020) = 0x7FC000007FC00000;
  *(a1 + 4464) = 9;
  *(a1 + 4480) = 2143289344;
  *(a1 + 4512) = -1;
  result = 0.0;
  *(a1 + 4528) = 0u;
  *(a1 + 4544) = 0u;
  *(a1 + 4560) = 0u;
  *(a1 + 4576) = 0u;
  *(a1 + 4592) = 0u;
  *(a1 + 4608) = 0u;
  *(a1 + 4624) = 0u;
  *(a1 + 4640) = 0u;
  *(a1 + 4656) = 0;
  *(a1 + 4016) = v14 & 0xE0;
  *(a1 + 65) = *(a1 + 65) & 0xFE | ((a3 & 0x40) != 0);
  *(a1 + 48) = -1;
  return result;
}

void CA::OGL::LayerNode::prepare_sublayers_roi_if_needed(CA::OGL::LayerNode *this)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if ((*(this + 240) & 2) == 0)
  {
    CA::OGL::LayerNode::prepare_sublayers_if_needed(this);
    *(this + 31) = CA::OGL::prepare_layers_roi(*(this + 1), *(this + 31), this + 56, this + 32);
    if ((*(*(this + 2) + 32) & 0x84000000000) == 0x4000000000 && (BYTE11(xmmword_1ED4E98AC) & 1) == 0)
    {
      v2[0] = 1;
      CA::OGL::LayerNode::prepare_sublayers_sdf_blending(this, v2);
      CA::Shape::unref(v2[0]);
    }

    *(this + 240) |= 2u;
  }
}

uint64_t CA::OGL::MetalContext::start_render_encoder(CA::OGL::MetalContext *this)
{
  LODWORD(v2) = 0;
  v3 = this + 4680;
  v65 = *MEMORY[0x1E69E9840];
  v61 = sel_setFragmentTexture_atIndex_;
  v62 = sel_setRenderPipelineState_;
  v59 = sel_setScissorRect_;
  v60 = sel_setFragmentSamplerState_atIndex_;
  v58 = sel_drawPrimitives_vertexStart_vertexCount_instanceCount_;
  for (i = *(this + 442); ; i = 0)
  {
    v5 = *(this + 84);
    if (i && (v6 = *(this + 589)) != 0 && *(v6 + 288) != *(v6 + 286))
    {
      v9 = *(this + 595);
      if (*(this + 692))
      {
        v10 = 2;
      }

      else
      {
        v10 = 8;
      }

      v11 = v9[10];
      LOBYTE(v12) = 1;
      if (v11 > v10)
      {
        return 1;
      }
    }

    else
    {
      v7 = *(this + 2);
      if (v7)
      {
        v8 = *(v7 + 497);
        v9 = *(this + 595);
        if (*(this + 692))
        {
          v10 = 2;
        }

        else
        {
          v10 = 8;
        }

        v11 = v9[10];
        if (v11 > v10)
        {
          if ((v8 & 4) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        v12 = (v8 >> 2) & 1;
      }

      else
      {
        v9 = *(this + 595);
        if (*(this + 692))
        {
          v10 = 2;
        }

        else
        {
          v10 = 8;
        }

        v11 = v9[10];
        if (v11 > v10)
        {
LABEL_24:
          CA::OGL::MetalContext::flush(this, 0);
          i = *(this + 442);
          goto LABEL_25;
        }

        LOBYTE(v12) = 0;
      }
    }

    if (v11 == v10 && !((v9[6] <= (v9[7] - (v9[7] >> 4))) | v12 & 1))
    {
      goto LABEL_24;
    }

LABEL_25:
    if (i)
    {
      return 1;
    }

    HIDWORD(v63) = v2;
    v13 = *(this + 589);
    if (v13)
    {
      v14 = *(v5 + 272) == v13;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = *(this + 589);
    }

    else
    {
      v15 = v5;
    }

    v16 = *(v15 + 144);
    if ((v16 & 0x20000000) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = v16 >> 31;
    }

    if ((*(v5 + 308) << 12) >= 1)
    {
      v18 = 0;
      do
      {
        v19 = *(this + 84);
        if (v19)
        {
          LODWORD(v19) = (*(v19 + 144) >> 1) & 0x1F;
        }

        v20 = *(v5 + 286);
        if (((1 << v18) & v20) != 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        if (((1 << v18) & v20) != 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = v17;
        }

        if (((v18 == 2) & ((*(v5 + 92) & 0x2000u) >> 13)) != 0)
        {
          v23 = 2;
        }

        else
        {
          v23 = v22;
        }

        v24 = *&v3[8 * v18];
        [v24 setLoadAction:v23];
        [v24 setLevel:v21];
        ++v18;
      }

      while (v18 < (*(v5 + 308) << 60) >> 60);
    }

    [*(this + 584) setFineGrainedBackgroundVisibilityEnabled:*(v5 + 286) != 0];
    CA::OGL::MetalContext::stop_encoders(this);
    if ((CA::OGL::MetalContext::start_command_buffer(this, *(this + 455), v25) & 1) == 0)
    {
      return 0;
    }

    CA::OGL::MetalContext::SharedEvent::encode_all((this + 2776), this, v26);
    v27 = [*(this + 441) renderCommandEncoderWithDescriptor:*(this + 584)];
    *(this + 442) = v27;
    if (!v27)
    {
      break;
    }

    if (byte_1ED4E9879 == 1)
    {
      v28 = mach_continuous_time();
      v27 = *(this + 442);
    }

    else
    {
      v28 = 0;
    }

    *(this + 457) = v28;
    ++*(this + 874);
    *(this + 445) = [v27 methodForSelector:v62];
    *(this + 446) = [*(this + 442) methodForSelector:v61];
    *(this + 447) = [*(this + 442) methodForSelector:v60];
    *(this + 448) = [*(this + 442) methodForSelector:v59];
    *(this + 449) = [*(this + 442) methodForSelector:v58];
    CA::OGL::MetalBufferPool::set_encoder(*(this + 595), *(this + 442));
    v29 = *(v5 + 144);
    *(v5 + 144) = v29 | 0x80000000;
    v30 = *(v5 + 92);
    if ((v29 & 0x20000000) != 0 && (v30 & 0x800) == 0)
    {
      *(v5 + 144) = v29 & 0x1FFFFFFF | 0xC0000000;
      *(v5 + 264) = *(v5 + 256);
    }

    if ((v30 & 0x40) != 0)
    {
      *(v5 + 308) |= 0x100u;
    }

    v31 = *(v5 + 24);
    if (!v31)
    {
      v31 = *(this + 172);
      if (!v31)
      {
        *(this + 916) = 0;
        *(this + 459) = 0;
        *(this + 920) = 0;
LABEL_65:
        v33 = *(this + 442);
        v34 = @"com.apple.coreanimation.assembly-encoder";
LABEL_66:
        [v33 setLabel:v34];
        goto LABEL_67;
      }
    }

    v32 = *(v31 + 388) & 0x1FFFF;
    *(this + 916) = v32;
    *(this + 459) = 0;
    *(this + 920) = 0;
    if (byte_1ED4E9879)
    {
      v50 = *(v31 + 24);
      if (v50)
      {
        *(this + 459) = CA::Render::Object::render_id(v50);
      }

      v51 = *(v31 + 16);
      if (v51)
      {
        v52 = *(v51 + 40);
        if (v52)
        {
          v53 = *(v52 + 24);
          if (v53)
          {
            LODWORD(v53) = *(v53 + 16);
          }

          *(this + 920) = v53;
        }
      }
    }

    if (!v32)
    {
      goto LABEL_65;
    }

    if (byte_1ED4E98BE != 1)
    {
      v33 = *(this + 442);
      v34 = @"com.apple.coreanimation.offscreen-encoder";
      goto LABEL_66;
    }

    v44 = [@"com.apple.coreanimation.offscreen-encoder:" mutableCopy];
    v45 = *(v31 + 24);
    if (v45)
    {
      v46 = *(v45 + 128);
      if (v46)
      {
        v45 = v46 + 28;
      }

      else
      {
        v45 = 0;
      }
    }

    v47 = v44;
    [v44 appendFormat:@" [%s]", v45];
    for (j = 0; j != 32; ++j)
    {
      if ((v32 >> j))
      {
        if (j <= 0x10)
        {
          v49 = CA::Render::offscreen_flag_names[j];
        }

        else
        {
          v49 = 0;
        }

        [v47 appendFormat:@" [%s]", v49];
      }
    }

    [*(this + 442) setLabel:v47];

LABEL_67:
    CA::OGL::MetalContext::update_encoder_state(this, v5, 0, v35, v36);
    if ((v63 & 0x100000000) != 0)
    {
      return 1;
    }

    if (v17 != 1)
    {
      CA::OGL::Context::marked_destination(this, v37, v38, v39, v40, v41, v42, v43, v56, v57, v58, v59, v60, v61, v62, v63, *buf, v65, v66);
      if ((v16 & 0x20000000) != 0)
      {
        *(v5 + 144) |= 0x40000000u;
      }
    }

    v2 = 1;
    if (*(this + 442))
    {
      return v2;
    }
  }

  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v55 = x_log_get_ogl_metal(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_183AA6000, v55, OS_LOG_TYPE_ERROR, "Unable to start render command encoder\n", buf, 2u);
  }

  return 0;
}

void CA::OGL::Context::marked_destination(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v27 = *MEMORY[0x1E69E9840];
  *(this + 1384) |= 0x880u;
  v19 = *(this + 672);
  if (v19)
  {

    CA::OGL::Context::marked_surface(this, v19, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
  }

  else if (*(this + 900) && (BYTE2(xmmword_1ED4E97EC) & 1) != 0)
  {
    v21 = 0u;
    v22 = 0u;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    memset(v20, 0, 48);
    v20[3] = *(this + 608);
    v22 = 0uLL;
    *(&v21 + 1) = 0;
    LODWORD(v26) = -2147483647;
    CA::OGL::export_surface(this, v20, "dest", a4, a5, a6, a7, a8, 0, 0, 0, 0);
  }
}

void CA::OGL::Context::marked_surface(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(a2 + 144) = *(a2 + 144) & 0x3FFFFFFF | 0x80000000;
  v19 = *(result + 624);
  if (v19)
  {
    *(a2 + 4) = *(v19 + 272);
  }

  if (*(result + 900))
  {
    if (BYTE2(xmmword_1ED4E97EC))
    {
      CA::OGL::export_surface(result, a2, "surf", a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }
  }
}

void CA::OGL::ImagingNode::render(uint64_t result, uint64_t a2, unsigned int a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(result + 8);
  if (*(v3 + 101))
  {
    return;
  }

  v6 = *v3;
  if (*(result + 229))
  {
    ++*(v6 + 1292);
    CA::OGL::ImagingNode::render(*(result + 24), a2, a3);
    --*(v6 + 1292);
    return;
  }

  v71 = *(result + 8);
  v78 = 0;
  v79 = 0;
  v77 = 0x3F8000003F800000;
  v7 = *(result + 236);
  v8 = (v7 >> 25) & 1;
  if (!a2)
  {
    v8 = 0;
  }

  v9 = 1.0;
  v70 = v8;
  if (v8 == 1)
  {
    if ((v7 & 0x4400000) != 0x4000000)
    {
      v70 = 0;
      goto LABEL_21;
    }

    v10 = 0;
    v11 = result + 24;
    v12 = &v78;
    v13 = &v77;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = *(v11 + 8 * v10);
      if (v16)
      {
        CA::OGL::ImagingNode::remove_feature_passthrough_aware(v16, a2);
        v17 = *(v11 + 8 * v10);
        v18 = v17[6];
        if (v18)
        {
          *v13 = 1065353216;
          *(v17[1] + 88) -= *(v18 + 44) * *(v18 + 40) * (*(v18 + 146) & 0x1F);
          v17[6] = 0;
          v19 = 1.0;
        }

        else
        {
          v18 = (*(*v17 + 80))(v17, v13, *(result + 236) & 0x1FFFF);
          v19 = *v13;
        }

        *v12 = v18;
        if (v19 > v9 && v19 < 1.0)
        {
          v9 = v19;
        }
      }

      v14 = 0;
      v13 = (&v77 + 4);
      v12 = &v79;
      v10 = 1;
    }

    while ((v15 & 1) != 0);
  }

  if (!a2)
  {
LABEL_23:
    v21 = 0;
    v22 = &v78;
    v23 = &v77;
    v24 = 1;
    do
    {
      v25 = v24;
      v26 = *(result + 24 + 8 * v21);
      if (v26)
      {
        v27 = v26[6];
        if (v27)
        {
          *v23 = 1065353216;
          *(v26[1] + 88) -= *(v27 + 44) * *(v27 + 40) * (*(v27 + 146) & 0x1F);
          v26[6] = 0;
        }

        else
        {
          v27 = (*(*v26 + 80))(v26, v23, *(result + 236) & 0x1FFFF);
        }

        *v22 = v27;
      }

      v24 = 0;
      v23 = (&v77 + 4);
      v22 = &v79;
      v21 = 1;
    }

    while ((v25 & 1) != 0);
LABEL_30:
    v28 = *(result + 64);
    memset(v76, 0, sizeof(v76));
    if (v9 != 1.0)
    {
      CA::Shape::operator=(v76, (*(v6 + 672) + 48));
      *(result + 64) = v76;
    }

    *(result + 56) = CA::OGL::Context::set_gstate(v6, (result + 56));
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    if ((*(result + 238) & 0x40) != 0)
    {
      CA::OGL::MaskCorners::begin(v74, result, v29);
    }

    if (*(*(v6 + 656) + 80) == 42 && !*(*(v6 + 672) + 8))
    {
      v30 = *(v6 + 600);
      if (!v30 || (buf[0] = 0, (*(*v30 + 80))(v30, CA::OGL::Display::has_detached_layers(void)const::$_0::__invoke, buf), (buf[0] & 1) == 0))
      {
        *(result + 136) = 43;
        *(*(v6 + 16) + 496) = 43;
      }
    }

    v31 = *v71;
    if (*(*(*v71 + 656) + 80) == 42 && ((*v31)[29])(*v71, 27))
    {
      v73 = 0uLL;
      CA::Shape::get_bounds(v31[82][1], &v73);
      v32 = v31[84];
      v33 = v32 + 6;
      v34 = (v31 + 76);
      if (v32)
      {
        v34 = v32 + 6;
      }

      v35 = *(&v73 + 8);
      v36 = vclez_s32(*(&v73 + 8));
      if ((vpmax_u32(v36, v36).u32[0] & 0x80000000) == 0)
      {
        v37 = v34[1];
        v38 = vclez_s32(v37);
        if ((vpmax_u32(v38, v38).u32[0] & 0x80000000) != 0 || (*&v39 = vmax_s32(*&v73, *v34), v40 = vsub_s32(vmin_s32(vadd_s32(*&v73, *(&v73 + 8)), vadd_s32(*v34, v37)), *&v39), v41 = vclez_s32(v40), (vpmax_u32(v41, v41).u32[0] & 0x80000000) != 0))
        {
          v35 = 0;
          *(&v73 + 1) = 0;
        }

        else
        {
          *(&v39 + 1) = v40;
          v73 = v39;
          v35 = v40;
        }
      }

      v42 = vclez_s32(v35);
      if ((vpmax_u32(v42, v42).u32[0] & 0x80000000) == 0)
      {
        v43 = v32[7];
        v44 = vclez_s32(v43);
        if ((vpmax_u32(v44, v44).u32[0] & 0x80000000) != 0 || (v45 = vadd_s32(*&v73, v35), *&v46 = vmax_s32(*&v73, *v33), v47 = vsub_s32(vmin_s32(v45, vadd_s32(*v33, v43)), *&v46), v48 = vclez_s32(v47), (vpmax_u32(v48, v48).u32[0] & 0x80000000) != 0))
        {
          *(&v73 + 1) = 0;
        }

        else
        {
          *(&v46 + 1) = v47;
          v73 = v46;
        }
      }

      v49 = ((*v31)[87])(v31, 1, &v73, 2063, @"implicit-backdrop-vibrant-color-matrix");
      v50 = v49;
      if (!v49)
      {
        goto LABEL_61;
      }

      if ((*(v49 + 93) & 8) != 0)
      {
        v83 = 0;
        *&v81[16] = 0u;
        v82 = 0u;
        *&buf[16] = 0u;
        *v81 = 0u;
        *buf = 0u;
        v60 = v31[82];
        *&buf[8] = *(v60 + 1);
        v61 = v60[4];
        *&buf[24] = v60[3];
        *v81 = v61;
        *&v81[8] = *(v60 + 5);
        *&v81[24] = v60[7];
        v62 = *(v60 + 40);
        LODWORD(v82) = *(v60 + 16);
        v83 = v62 & 0x5FF;
        *(&v82 + 1) = v60[9];
        *buf = CA::OGL::Context::set_gstate(v31, buf);
        CA::OGL::Context::push_surface(v31, v50, 0, 8, 0);
        CA::OGL::capture_in_place_backdrop(v71, 1);
        CA::OGL::Context::pop_surface(v31, v63, v64, v65, v66, v67, v68, v69);
        CA::OGL::Context::set_gstate(v31, *v31[82]);
LABEL_61:
        v52 = 0;
        v53 = &v78;
        v54 = 1;
        do
        {
          v55 = v54;
          v56 = *(result + 24 + 8 * v52);
          if (v56 && *v53 && (*(*v53 + 148) & 0x100) != 0)
          {
            (*(*v56 + 88))(v56);
          }

          v54 = 0;
          v53 = &v79;
          v52 = 1;
        }

        while ((v55 & 1) != 0);
        (*(*result + 112))(result, &v78, &v77, v9);
        if (v50)
        {
          CA::OGL::Context::release_surface(*v71, v50);
        }

        if ((*(result + 238) & 0x40) != 0)
        {
          CA::OGL::MaskCorners::finish(v74, result);
        }

        CA::OGL::Context::set_gstate(v6, **(v6 + 656));
        *(result + 64) = v28;
        goto LABEL_72;
      }

      if (x_log_get_ogl(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
      }

      v51 = x_log_get_ogl(void)::log;
      if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_183AA6000, v51, OS_LOG_TYPE_FAULT, "Unable to render backdrop-aware vibrant color matrix filter while existing memoryless offscreen surface in use", buf, 2u);
      }

      CA::OGL::Context::release_surface(v31, v50);
    }

    v50 = 0;
    goto LABEL_61;
  }

LABEL_21:
  if ((*(*a2 + 16))(a2, a3, v9))
  {
    if (v70)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

LABEL_72:
  v57 = &v78;
  v58 = 1;
  do
  {
    v59 = v58;
    if (*v57)
    {
      CA::OGL::Context::release_surface(v6, *v57);
    }

    v58 = 0;
    v57 = &v79;
  }

  while ((v59 & 1) != 0);
}

void CA::OGL::render_layers(CA::OGL *result, uint64_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2;
    v4 = *result;
    while (1)
    {
      v5 = v2[22];
      *(v4 + 1376) = v2;
      *(v4 + 1384) &= ~0x800u;
      if (byte_1ED4E9879 == 1)
      {
        v6 = mach_continuous_time();
      }

      else
      {
        v6 = 0;
      }

      if (BYTE1(xmmword_1ED4E97DC) == 1)
      {
        *(v5 + 236) = *(v5 + 236) & 0xFFE1FFFF | 0x120000;
      }

      v7 = v2[23];
      v8 = v7 != 0;
      if (v7)
      {
        v9 = *(v4 + 680);
        v10 = *(v4 + 672);
        if (v9 != v10 || (!v9 ? (v11 = 0) : (v11 = (*(v10 + 144) >> 1) & 0x1F), *(v4 + 668) != v11))
        {
          CA::OGL::Context::prepare_destination_(v4);
        }

        if ((*(v4 + 1384) & 0x200) != 0)
        {
          CA::OGL::Context::flatten_detached_layers_(v4);
        }

        *(v2[23] + 240) = *(v4 + 672);
      }

      if ((v2[5] & 8) != 0)
      {
        v12 = *(v4 + 680);
        v13 = *(v4 + 672);
        if (v12 != v13 || (!v12 ? (v14 = 0) : (v14 = (*(v13 + 144) >> 1) & 0x1F), *(v4 + 668) != v14))
        {
          CA::OGL::Context::prepare_destination_(v4);
        }

        if ((*(v4 + 1384) & 0x200) != 0)
        {
          CA::OGL::Context::flatten_detached_layers_(v4);
        }

        CA::OGL::capture_backdrop(result, v2);
        if (BYTE12(xmmword_1ED4E97DC) == 1)
        {
          *(v5 + 236) = *(v5 + 236) & 0xFFE1FFFF | 0x120000;
        }

        v8 = 1;
      }

      CA::OGL::ImagingNode::render(v5, 0, 0);
      v15 = v2[23];
      if (v15)
      {
        *(v15 + 240) = 0;
      }

      v16 = *(v2[3] + 152);
      if (!v16)
      {
        goto LABEL_43;
      }

      v17 = *(v2 + 193);
      v18 = *(v2 + 97);
      v19 = v18 & 0x1FFFF;
      if (*(v2 + 193) || v19)
      {
        goto LABEL_36;
      }

      if (*(v16 + 100) >> 28)
      {
        break;
      }

LABEL_43:
      if (v6 && (v8 || (*(v4 + 1384) & 0x800) != 0))
      {
        if (x_log_get_render_trace(void)::once != -1)
        {
          dispatch_once(&x_log_get_render_trace(void)::once, &__block_literal_global_2897);
        }

        v24 = *(*(result + 1) + 272);
        if (v24)
        {
          v25 = x_log_get_render_trace(void)::log;
          if (os_signpost_enabled(x_log_get_render_trace(void)::log))
          {
            v26 = v2[3];
            if (v26)
            {
              v26 = *(v26 + 128);
              if (v26)
              {
                v27 = *(v26 + 24);
                v26 += 28;
                if (!v27)
                {
                  v26 = 0;
                }
              }
            }

            *buf = 136446466;
            v30 = v26;
            v31 = 2050;
            v32 = v6;
            _os_signpost_emit_with_name_impl(&dword_183AA6000, v25, OS_SIGNPOST_EVENT, v24, "RenderLayer", "ID is update layer=%{public,name=layer}s begin=%{public,signpost.description:begin_time}llu", buf, 0x16u);
          }
        }
      }

      *(v4 + 1376) = v2[1];
      *(v4 + 1384) &= ~0x800u;
      v28 = *v2;
      CA::OGL::Renderer::dealloc_layer(result, v2);
      v2 = v28;
      if (!v28)
      {
        return;
      }
    }

    v19 = 0;
LABEL_36:
    v20 = *(*result + 636);
    if (*(v16 + 96) == v20)
    {
      v21 = *(v16 + 100);
    }

    else
    {
      v21 = 0;
      *(v16 + 96) = v20;
    }

    v22 = v17 + (v21 >> 28);
    if (v22 >= 0xF)
    {
      v23 = -268435456;
    }

    else
    {
      v23 = v22 << 28;
    }

    *(v16 + 100) = (v21 | v18) & 0xFFE0000 | v21 & 0x1FFFF | v19 | v23;
    goto LABEL_43;
  }
}

void CA::OGL::LayerNode::apply(CA::OGL::LayerNode *this, __n128 a2, __n128 a3, float64x2_t a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, const int *a10)
{
  v94 = *MEMORY[0x1E69E9840];
  v10 = *(this + 2);
  v11 = *(v10 + 32);
  if ((v11 & 8) != 0)
  {
    return;
  }

  v13 = *(this + 1);
  if ((v11 & 0x8000000000) != 0)
  {
    v14 = *v13;
    v15 = *(*(v10 + 24) + 136);
    if (v15)
    {
      v15 = *v15;
    }

    v16 = *(v14 + 16);
    v17 = *(v10 + 192);
    if (v17)
    {
      v18 = *(*(v17 + 24) + 136);
      v19 = 0;
      if (v18)
      {
        v20 = *v18;
        if (v20)
        {
          v19.i32[0] = *(v20 + 140);
        }
      }

      v21 = *(v10 + 104);
      if ((*(v17 + 32) & 0x180000000400) == 0)
      {
        a2.n128_u32[0] = *(v10 + 108);
LABEL_15:
        v22 = *(v16 + 496);
        *(v16 + 497) |= 1u;
        if (*(v15 + 17) == 1)
        {
          v23 = *(v14 + 16);
          v23[31].i8[0] = 58;
          v24 = a2.n128_f32[0];
          a2.n128_u32[0] = v21;
        }

        else
        {
          v25 = *(v10 + 40);
          if ((v25 & 0x80) != 0)
          {
            *(*(v14 + 16) + 497) &= ~1u;
            v23 = *(v14 + 16);
            v26 = 1;
          }

          else
          {
            v23 = *(v14 + 16);
            if ((v25 & 0x40) != 0)
            {
              v26 = 57;
            }

            else
            {
              v26 = 3;
            }
          }

          v23[31].i8[0] = v26;
          v24 = *&v21;
        }

        *v19.i32 = fmaxf(*v19.i32, 0.0001);
        v27 = vdupq_lane_s32(v19, 0);
        v23[18] = v27;
        if (*(v15 + 16) == 1)
        {
          v28 = *(*(v10 + 16) + 48);
          if (v28)
          {
            v29 = (*(*v28 + 80))(*(*(v10 + 16) + 48), a2);
            if (v29)
            {
              v30 = v29;
              v31 = *v13;
              v32 = *(*v13 + 656);
              v93 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              memset(v80, 0, sizeof(v80));
              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v63 = 0u;
              CA::OGL::ContentsGeometry::ContentsGeometry(&v63, v10, v32, v29, v28, v31);
              if (LOBYTE(v80[0]) == 1)
              {
                v33 = *(v10 + 24);
                v34 = *(v33 + 136);
                if (v34)
                {
                  v35 = *v34;
                }

                else
                {
                  v35 = 0;
                }

                *(&v83 + 3) = 257;
                DWORD2(v81) = 0;
                v36 = *(v33 + 40);
                if ((v36 & 0xFu) > 0xAuLL)
                {
                  v37 = 1;
                }

                else
                {
                  v37 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v36 & 0xF];
                }

                v38 = v36 >> 4;
                if (v38 > 0xA)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v38];
                }

                if (v34)
                {
                  v40 = v34[78];
                }

                else
                {
                  v40 = 0.0;
                }

                *(v31[2] + 8) = 0x3C003C003C003C00;
                if (BYTE2(v83) == 1 && (BYTE1(v83) & 1) == 0)
                {
                  v41 = (*(*v31 + 648))(v31, v30, 1);
                }

                else
                {
                  v41 = 0;
                }

                v42 = *(v10 + 24);
                if (v42)
                {
                  v42 = *(v42 + 128);
                  if (v42)
                  {
                    v43 = *(v42 + 24);
                    v42 += 28;
                    if (!v43)
                    {
                      v42 = 0;
                    }
                  }
                }

                v44 = CA::OGL::Context::bind_image(v31, 0, v30, DWORD1(v81), v37, v39, v41, &v63, v40, (v80 + 4), v42);
                if (v44)
                {
                  v45 = v44;
                  v62 = v37;
                  v46 = (*(*v30 + 104))(v30);
                  v49 = v46;
                  v50 = *(v35 + 20);
                  v51 = *(v35 + 24) - v50;
                  if (v46 <= 0x1C && ((0x17826000u >> v46) & 1) != 0)
                  {
                    _D0 = 1065353216;
                  }

                  else
                  {
                    v53 = (*(*v30 + 112))(v30);
                    __asm { FMOV            V0.2S, #-1.0 }

                    *&_D0 = ~(-1 << v53) / ~(-1 << (v53 - 1));
                  }

                  if (((v49 < 0x19) & (0x1800200u >> v49)) != 0)
                  {
                    v58 = 47;
                  }

                  else
                  {
                    v58 = 46;
                  }

                  *(v31[2] + 17) = v58;
                  v59 = v31[2];
                  *(v59 + 400) = v51;
                  *(v59 + 404) = v50;
                  *(v59 + 408) = _D0;
                  CA::OGL::ContentsGeometry::fill_and_unbind(&v63, v31, v45, v62, v47, v48, v40);
                }
              }
            }
          }
        }

        else if (!*(v15 + 16))
        {
          v27.i32[0] = 1166016512;
          if (v24 <= 4096.0)
          {
            *v27.i32 = v24;
          }

          if (*v27.i32 < 1.0)
          {
            *v27.i32 = 1.0;
          }

          v23[1].i8[0] = 1;
          a4.f64[0] = 0.0;
          LODWORD(a7) = 1.0;
          CA::OGL::emit_sdf_bounds_internal(v14, v10, 0, 1, a2.n128_f32[0], *v27.i64, a4, 0.0, 0.0, a7, *(v15 + 7));
          *(*(v14 + 16) + 16) = 0;
        }

        *(*(v14 + 16) + 497) &= ~1u;
        *(*(v14 + 16) + 496) = v22;
        goto LABEL_63;
      }
    }

    else
    {
      v21 = *(v10 + 104);
      v19 = 0;
    }

    a2.n128_u32[0] = 1166016512;
    goto LABEL_15;
  }

  if ((v11 & 0x200005120) != 0)
  {
    CA::OGL::render_contents_background(*(this + 1), v10, a9, a10, a2.n128_f64[0], a3, a4);
  }

LABEL_63:
  v60 = *(v10 + 32);
  if ((v60 & 0x2000) != 0)
  {
    v61 = **(*(v10 + 24) + 136);
    *&v63 = &unk_1EF1F5980;
    *(&v63 + 1) = v13;
    *&v64 = v10;
    (*(*v61 + 232))(v61, &v63);
    v60 = *(v10 + 32);
  }

  if ((v60 & 0x200) != 0)
  {
    CA::OGL::LayerNode::prepare_sublayers_roi_if_needed(this);
    CA::OGL::render_layers(v13, *(this + 31));
    *(this + 31) = 0;
    *(this + 240) &= 0xFCu;
    v60 = *(v10 + 32);
  }

  if ((v60 & 0x1080) != 0)
  {
    CA::OGL::render_border(v13, v10);
    if ((*(v10 + 33) & 0x10) != 0 && (*(*(v10 + 24) + 48) & 0x80) != 0)
    {

      CA::OGL::render_shadow_path(v13, v10);
    }
  }
}

float16x4_t *CA::OGL::Context::set_gstate(uint64_t a1, float16x4_t *a2)
{
  result = *(a1 + 656);
  if (result != a2)
  {
    v4 = *(a1 + 16);
    *(v4 + 496) = a2[10].i8[0];
    *(v4 + 288) = vcvtq_f32_f16(a2[5]);
    *(v4 + 304) = vcvtq_f32_f16(a2[6]);
    *(v4 + 280) = a2[7];
    v5 = a2[1];
    if (v5.i8[0])
    {
      if (*&v5 == 1)
      {
        goto LABEL_4;
      }
    }

    else if (*(*&v5 + 4) != 12)
    {
LABEL_4:
      v6 = 0;
      v7 = 0;
      goto LABEL_9;
    }

    if ((*(a1 + 1384) & 8) != 0 && *&result[1] == *&v5)
    {
      goto LABEL_10;
    }

    v7 = 8;
    v6 = 16;
LABEL_9:
    *(a1 + 64) = 0;
    *(a1 + 1384) = v7 | v6 | *(a1 + 1384) & 0xFFE7;
LABEL_10:
    *(a1 + 656) = a2;
  }

  return result;
}

unint64_t CA::OGL::Context::ClippedArray::start(CA::OGL::Context::ClippedArray *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 656);
  result = *(v3 + 8);
  if ((result & 1) == 0 && *(result + 4) == 12)
  {
    v5 = *(result + 32) - *(result + 28);
    if (v5 <= *(result + 36) - *(result + 20))
    {
      v5 = *(result + 36) - *(result + 20);
    }

    if (v5 >= 0x3FFFFFFF)
    {
      LOBYTE(v6) = 0;
      *(this + 49) = 0;
      v7 = this + 49;
      v8 = this + 32;
LABEL_14:
      *(this + 50) = 1;
      goto LABEL_15;
    }
  }

  v9 = *(this + 5);
  if (v9)
  {
    result = CA::Shape::contains(result, v9);
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(this + 49) = v6;
  v7 = this + 49;
  v8 = this + 32;
  if ((*(this + 32) & 1) != 0 || !v6)
  {
    goto LABEL_14;
  }

  v10 = *(v2 + 1384);
  *(this + 50) = (v10 & 8) != 0;
  if ((v10 & 8) != 0)
  {
LABEL_15:
    if (*(this + 33))
    {
      *(v2 + 144) = 0;
      *(v2 + 112) = v2 + 1386;
      *(v2 + 120) = xmmword_183E20E50;
      v12 = *(v2 + 1384) & 0xFFDF;
      *(v2 + 1384) = v12;
      LOBYTE(v6) = *v7;
    }

    else
    {
      v12 = *(v2 + 1384);
    }

    v11 = v12 & 0xFFBF | ((v6 & 3) << 6);
    goto LABEL_19;
  }

  *(v2 + 64) = 1;
  v11 = *(v2 + 1384) & 0xFFBF;
LABEL_19:
  *(v2 + 1384) = v11;
  if ((*v8 & 1) == 0 && *v7 == 1 && (v11 & 0x10) != 0)
  {
    v13 = 0uLL;
    result = CA::Shape::get_bounds(*(v3 + 8), &v13);
    *(v2 + 32) = v13;
    *(v2 + 64) = 1;
    *(v2 + 1384) &= ~0x10u;
  }

  *(this + 48) = 0;
  return result;
}

uint64_t CA::OGL::MetalBufferPool::encode_vertex_arg(CA::OGL::MetalBufferPool *this, uint64_t a2, const void *__src, unsigned int a4, unsigned int a5)
{
  if ((a5 & (a5 - 1)) != 0)
  {
    __assert_rtn("get_buffer", "ogl-metal.mm", 3452, "x_power_of_two (alignment)");
  }

  v9 = *(this + 1);
  if (v9)
  {
    v10 = *(this + 11);
    if (v10 <= a5)
    {
      v10 = a5;
    }

    v11 = *(this + 6);
    v12 = *(this + 7);
    v13 = (v10 + v11 - 1) & -v10;
    if ((v12 == v13 || v12 < v13 + a4) && v11 != 0)
    {
      CA::OGL::MetalBufferPool::retire_metal_buffer(this, v9);
    }
  }

  else
  {
    result = CA::OGL::MetalBufferPool::allocate_buffer(this, a4);
    *(this + 1) = result;
    if (!result)
    {
      return result;
    }

    ++*(this + 10);
    *(this + 4) = [result contents];
    v13 = 0;
    *(this + 7) = [*(this + 1) length];
  }

  if (__src)
  {
    memcpy((*(this + 4) + v13), __src, a4);
  }

  *(this + 6) = v13 + a4;
  v17 = *(this + 1);
  v18 = *(this + 24);
  if (*(this + a2 + 8) == v17)
  {
    (*(this + 27))(v18, sel_setVertexBufferOffset_atIndex_, v13, a2);
  }

  else
  {
    (*(this + 25))(v18, sel_setVertexBuffer_offset_atIndex_, *(this + 1), v13, a2);
    *(this + a2 + 8) = v17;
  }

  return 1;
}

void CA::OGL::Renderer::dealloc_layer(CA::OGL::Renderer *a1, uint64_t a2)
{
  v4 = *(a2 + 176);
  if (v4)
  {
    v5 = v4[57] - 1;
    --*(v4 + 228);
    if (!v5)
    {
      CA::OGL::ImagingNode::finalize(v4, a1);
    }
  }

  v6 = *(a2 + 184);
  if (v6)
  {
    v7 = v6[57] - 1;
    --*(v6 + 228);
    if (!v7)
    {
      CA::OGL::ImagingNode::finalize(v6, a1);
    }
  }

  v8 = *(a2 + 208);
  if (v8)
  {
    CA::OGL::Renderer::dealloc_layer(a1, v8);
  }

  if ((*(a2 + 40) & 0x20) != 0)
  {
    free(*(a2 + 88));
  }

  v9 = *(a2 + 384);
  if (*(a2 + 384))
  {
    v10 = *(a2 + 216);
    v11 = *(a1 + 10);
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = *v10;
      *v11 = v12;
      --v9;
    }

    while (v9);
    *(a1 + 10) = v11;
  }

  v13 = *(a2 + 160);
  if (v13)
  {
    CA::Shape::unref(v13);
  }

  *a2 = *(a1 + 8);
  *(a1 + 8) = a2;
}

uint64_t CA::OGL::state_image_texture_unit(uint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 17);
  v4 = (v2 + 40);
  v5 = a2;
  do
  {
    v6 = *v3++;
    result = result + CA::OGL::image_plane_count[v6];
    v7 = *v4;
    if (*v4)
    {
      v8 = *(v7 + 80);
      v9 = v8 == 0;
      v10 = v8 != 0;
      v11 = *(v7 + 56);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      result = (v13 + result);
    }

    ++v4;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t CA::OGL::ImagingNode::finalize(CA::OGL::ImagingNode *this, CA::OGL::Renderer *a2)
{
  v4 = 0;
  v5 = this + 24;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *&v5[8 * v4];
    if (v8)
    {
      v9 = v8[57] - 1;
      --*(v8 + 228);
      if (!v9)
      {
        CA::OGL::ImagingNode::finalize(v8, a2);
      }
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  v10 = *(this + 6);
  if (v10)
  {
    CA::OGL::Context::release_surface(*a2, v10);
  }

  result = (**this)(this);
  *this = *(a2 + 9);
  *(a2 + 9) = this;
  return result;
}

void CA::OGL::LayerNode::~LayerNode(CA::OGL::LayerNode *this)
{
  *this = &unk_1EF1FD580;
  v2 = *(this + 1);
  v3 = *(this + 31);
  if (v3)
  {
    do
    {
      v4 = *v3;
      CA::OGL::Renderer::dealloc_layer(v2, v3);
      v3 = v4;
    }

    while (v4);
    v2 = *(this + 1);
  }

  v5 = *(this + 32);
  if (v5)
  {
    do
    {
      v6 = *v5;
      CA::OGL::Renderer::dealloc_layer(v2, v5);
      v5 = v6;
    }

    while (v6);
  }
}

{
  CA::OGL::LayerNode::~LayerNode(this);
  abort();
}

uint64_t CA::OGL::MetalBufferPool::encode_fragment_arg(CA::OGL::MetalBufferPool *this, uint64_t a2, const void *__src, unsigned int a4, unsigned int a5)
{
  if ((a5 & (a5 - 1)) != 0)
  {
    __assert_rtn("get_buffer", "ogl-metal.mm", 3452, "x_power_of_two (alignment)");
  }

  v9 = *(this + 1);
  if (v9)
  {
    v10 = *(this + 11);
    if (v10 <= a5)
    {
      v10 = a5;
    }

    v11 = *(this + 6);
    v12 = *(this + 7);
    v13 = (v10 + v11 - 1) & -v10;
    if ((v12 == v13 || v12 < v13 + a4) && v11 != 0)
    {
      CA::OGL::MetalBufferPool::retire_metal_buffer(this, v9);
    }
  }

  else
  {
    result = CA::OGL::MetalBufferPool::allocate_buffer(this, a4);
    *(this + 1) = result;
    if (!result)
    {
      return result;
    }

    ++*(this + 10);
    *(this + 4) = [result contents];
    v13 = 0;
    *(this + 7) = [*(this + 1) length];
  }

  if (__src)
  {
    memcpy((*(this + 4) + v13), __src, a4);
  }

  *(this + 6) = v13 + a4;
  v17 = *(this + 1);
  v18 = *(this + 24);
  if (*(this + a2 + 14) == v17)
  {
    (*(this + 28))(v18, sel_setFragmentBufferOffset_atIndex_, v13, a2);
  }

  else
  {
    (*(this + 26))(v18, sel_setFragmentBuffer_offset_atIndex_, *(this + 1), v13, a2);
    *(this + a2 + 14) = v17;
  }

  return 1;
}

uint64_t CA::OGL::Context::ClippedArray::next_rect(CA::OGL::Context **this, int32x2_t *a2)
{
  v4 = *this;
  if (*(this + 48) == 1)
  {
    if (*(this + 33) == 1 && (*(this + 50) & 1) == 0)
    {
      CA::OGL::Context::array_flush(*this);
      if ((*(v4 + 1384) & 0x20) == 0)
      {
        while (1)
        {
          while (1)
          {
            if (!CA::ShapeIterator::iterate((this + 1), a2))
            {
              goto LABEL_14;
            }

            v5 = this[5];
            if (v5)
            {
              break;
            }

            v11 = a2->i32[0];
LABEL_12:
            *(v4 + 32) = v11;
            *(v4 + 36) = a2->i32[1];
            *(v4 + 40) = a2[1].i32[0];
            *(v4 + 44) = a2[1].i32[1];
            CA::OGL::Context::array_flush(v4);
          }

          v6 = v5[1];
          v7 = vclez_s32(v6);
          if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) == 0)
          {
            v8 = a2[1];
            v9 = vclez_s32(v8);
            if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) == 0)
            {
              v10 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*v5, v6), vadd_s32(*a2, v8)), vmax_s32(*v5, *a2)));
              if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) == 0)
              {
                v11 = *a2;
                goto LABEL_12;
              }
            }
          }
        }
      }
    }

LABEL_14:
    while (*(this + 49) == 1 && CA::ShapeIterator::iterate((this + 1), a2))
    {
      v12 = this[5];
      if (v12)
      {
        v13 = v12[1];
        v14 = vclez_s32(v13);
        if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
        {
          continue;
        }

        v15 = a2[1];
        v16 = vclez_s32(v15);
        if ((vpmax_u32(v16, v16).u32[0] & 0x80000000) != 0)
        {
          continue;
        }

        v17 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*v12, v13), vadd_s32(*a2, v15)), vmax_s32(*v12, *a2)));
        if ((vpmax_u32(v17, v17).u32[0] & 0x80000000) != 0)
        {
          continue;
        }
      }

      if ((*(this + 50) & 1) == 0)
      {
        *(v4 + 32) = a2->i32[0];
        *(v4 + 36) = a2->i32[1];
        *(v4 + 40) = a2[1].i32[0];
        *(v4 + 44) = a2[1].i32[1];
        if (*(this + 33) == 1)
        {
          *(v4 + 144) = 0;
          *(v4 + 112) = v4 + 1386;
          *(v4 + 120) = xmmword_183E20E50;
          *(v4 + 1384) &= ~0x20u;
        }
      }

      return 1;
    }

    if (*(this + 33) == 1 && *(this + 50) == 1)
    {
      CA::OGL::Context::array_flush(v4);
    }

    if ((*(v4 + 1384) & 8) == 0)
    {
      *(v4 + 64) = 0;
    }

    if (BYTE4(ca_debug_options) != 1)
    {
      return 0;
    }

    result = (*(*v4 + 864))(v4);
    if (result)
    {
      (*(*v4 + 456))(v4, 1);
      return 0;
    }
  }

  else
  {
    *(this + 48) = 1;
    if (*(this + 49))
    {
      goto LABEL_14;
    }

    *a2->i8 = xmmword_183E21120;
    return 1;
  }

  return result;
}

uint64_t CA::OGL::Context::array_flush(uint64_t this)
{
  v1 = *(this + 120);
  if (v1)
  {
    return (*(*this + 344))(this, *(this + 108), v1, *(this + 112), *(this + 136), 0, *(this + 144), *(*(this + 656) + 16));
  }

  v2 = *(this + 144);
  if (v2)
  {
    return (*(*this + 344))(this, *(this + 108), v2, 0, *(this + 136), 0, *(this + 144), *(*(this + 656) + 16));
  }

  return this;
}

void CA::OGL::MetalContext::draw(CA::OGL::Context *this, uint64_t a2, unsigned __int32 a3, unsigned int a4, char *a5, size_t a6, unsigned int a7, int a8, int a9, unsigned __int16 *a10, void *a11, uint64_t a12)
{
  v512 = *MEMORY[0x1E69E9840];
  v12 = *(this + 84);
  if (!v12)
  {
    __assert_rtn("draw", "ogl-metal.mm", 8727, "current_metal_surface () != nullptr");
  }

  if (*(this + 85) != v12 || *(this + 167) != ((*(v12 + 144) >> 1) & 0x1F))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  if ((*(this + 692) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  if (!CA::OGL::MetalContext::start_render_encoder(this))
  {
    return;
  }

  v18 = *(this + 84);
  if ((*(v18 + 93) & 8) != 0 && (*(v18 + 147) & 0x20) != 0)
  {
    CA::OGL::MetalContext::clear_memoryless_texture_(this, v18);
    v18 = *(this + 84);
  }

  memset(v499, 0, sizeof(v499));
  if (*(v18 + 272))
  {
    v19 = *(v18 + 272);
  }

  else
  {
    v19 = v18;
  }

  v20 = *(this + 2);
  v21 = v20[16];
  v22 = &CA::OGL::MetalContext::texture_function_info[4 * v21];
  v23 = *v22 & 0x3F;
  if (a2)
  {
    v24 = a2 == 1;
  }

  else
  {
    v24 = 2;
  }

  _ZF = (*v22 & 0x3F) != 0 || v18 == 0;
  if (_ZF || ((v26 = *(v18 + 88), v26 != 0.0) ? (v27 = v26 == 1.0) : (v27 = 1), v27))
  {
    v28 = 0;
  }

  else
  {
    v28 = 8 * (*(this + 872) != 1.0);
  }

  v29 = &CA::OGL::MetalContext::fragment_shader_type_info[16 * v23];
  v30 = v20[496];
  if (v20[496] && (v22[3] & 8) == 0)
  {
    if (v30 == 1)
    {
      v30 = 62;
    }

    if ((v20[497] & 1) == 0)
    {
      v30 = 62;
    }
  }

  if ((v20[497] & 2) != 0)
  {
    v31 = ((v29[8] >> 5) & 1) << 27;
  }

  else
  {
    v31 = 0;
  }

  v32 = ((v24 << 19) | (v30 << 8) | v21) & 0x183F7F | ((*(v19 + 308) & 3) << 21);
  v33 = *(this + 829);
  v34 = (v33 << 20) & 0x40000000;
  v35 = (v33 << 12) & 0x10000000;
  if (v20 && (v20[497] & 8) != 0 || (v37 = *(*(this + 82) + 24)) != 0 && (*(v37 + 144) & 0x10) != 0 && (*(v37 + 24) != 0.0 || *(v37 + 56) != 0.0))
  {
    v36 = 0x20000000;
  }

  else
  {
    v36 = 0;
  }

  v38 = v34 | v36 | v35 | v31 | v32;
  *(v499 + 14) = v38;
  *(&v499[1] + 7) = (((*(v19 + 286) != 0) << 24) | ((*(v19 + 192) & 0x3FF) << 8)) & 0xFDFFFFFF | (((*(v19 + 92) >> 13) & 1) << 25) | 0xF80000;
  __n = this;
  __src = a5;
  v480 = a2;
  v477 = a4;
  v478 = a6;
  if (v23)
  {
    if (v24)
    {
      __assert_rtn("get_pipeline_spec", "ogl-metal.mm", 6151, "layout == VertexLayout_Surface");
    }

    if ((v29[8] & 0x40) != 0)
    {
      v38 = v38 & 0x78F83F7F | ((*(v18 + 284) & 3) << 24);
      *(v499 + 14) = v38;
    }

    else if ((v22[3] & 0x10) == 0 && *(v18 + 284))
    {
      __assert_rtn("get_pipeline_spec", "ogl-metal.mm", 6159, "surf->backing_attachment == 0");
    }

    if (CA::OGL::tex_image_count[v38 & 0x7F])
    {
      v45 = 0;
      v46 = v499;
      do
      {
        *v46 |= 0xE000u;
        v46 = (v46 + 7);
        ++v45;
      }

      while (v45 < CA::OGL::tex_image_count[BYTE14(v499[0]) & 0x7F]);
    }

    CA::OGL::MetalContext::Pipeline::Spec::lift_blend_function(v499);
    v48 = BYTE14(v499[0]);
    if ((HIWORD(v499[0]) & 0x3F00) != 0x3E00)
    {
      __assert_rtn("get_pipeline_spec", "ogl-metal.mm", 6168, "spec.fragment.blend_function == OGL_BLEND_NONE");
    }

    *(&v499[1] + 3) = 0;
    v49 = (*(v499 + 14) >> 20) & 0x300;
    if ((*(v499 + 14) & 0x4000000) == 0)
    {
      *(&v499[1] + 5) = CA::OGL::MetalContext::fragment_shader_type_info[16 * (CA::OGL::MetalContext::texture_function_info[4 * (BYTE14(v499[0]) & 0x7F)] & 0x3F) + 8] & 0x1F | (32 * ((*(v499 + 14) >> 19) & 3)) | v49;
      v50 = CA::OGL::tex_image_count[BYTE14(v499[0]) & 0x7F];
      v51 = this;
      if (CA::OGL::tex_image_count[BYTE14(v499[0]) & 0x7F])
      {
        v52 = &v499[1] + 3;
        v53 = v499;
        do
        {
          v54 = *v53;
          v53 = (v53 + 7);
          *v52 = *v52 & 0xFC | byte_183E28164[v54 & 0x3F] & 3;
          ++v52;
          --v50;
        }

        while (v50);
      }

      goto LABEL_124;
    }

LABEL_123:
    v51 = __n;
    *(&v499[1] + 5) = v49 | 0x80;
    goto LABEL_124;
  }

  v39 = v21 & 0x7F;
  v40 = *(v18 + 192);
  *(v499 + 14) = v38 & 0x78FF3F7F | (((*(this + 692) >> 12) & 7) << 16) & 0xFCFFFFFF | ((*(v18 + 284) & 3) << 24) | (((v40 - 550) < 6) << 31);
  v42 = v40 == 115 || v40 == 125;
  v43 = v28 | (4 * (v20[321] != 0)) | v42 | (2 * (v20[323] != 0));
  if (v35)
  {
    if (CADeviceUseCIF10::once != -1)
    {
      dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
    }

    if (CADeviceUseCIF10::enable_cif10)
    {
      v44 = 16;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 16;
  }

  BYTE2(v499[1]) = (v43 | v44) & 0x9F | (32 * ((*(this + 948) >> 1) & 3));
  if (CA::OGL::tex_image_count[v39])
  {
    v55 = 0;
    v56 = (v499 + 3);
    do
    {
      v57 = *(__n + 2);
      v58 = *(v57 + v55 + 17);
      v59 = v58 & 0x3F | ((*(v57 + v55 + 19) & 7) << 6);
      v60 = v59 | 0xE000;
      if ((0x42000FFFE00uLL >> v58))
      {
        v61 = 0;
      }

      else
      {
        v61 = *(v57 + 8 * CA::OGL::state_image_texture_unit(*(__n + 2), v55) + 176) & 0xFFFFFFFFFFFFFFFCLL;
        if (v61)
        {
          v62 = 0;
          v60 = v59 | (*(v61 + 125) << 13);
          goto LABEL_81;
        }
      }

      v62 = 1;
LABEL_81:
      v63 = *(v57 + 8 * v55 + 40);
      if (v63)
      {
        v64 = *(v63 + 36);
        v65 = *v56 & 0xFC000000 | (v64 >> 5) & 0x1FFFFFF;
        *(v56 - 1) = CGColorSpaceGetNumberOfComponents(*(v63 + 16)) & 7 | (8 * v64);
        *v56 = v65 | (*(v63 + 36) >> 31 << 25);
        v66 = (v64 & 0x1F) > 0x15 || ((1 << (v64 & 0x1F)) & 0x348000) == 0;
        if (!v66 || ((v70 = (v64 >> 5) & 0x1F, v116 = v70 > 0x15, v71 = (1 << v70) & 0x348000, !v116) ? (v72 = v71 == 0) : (v72 = 1), !v72 || ((v73 = (v64 >> 10) & 0x1F, v116 = v73 > 0x15, v74 = (1 << v73) & 0x348000, !v116) ? (v75 = v74 == 0) : (v75 = 1), !v75 || ((v76 = (v64 >> 15) & 0x1F, v116 = v76 > 0x15, v77 = (1 << v76) & 0x348000, !v116) ? (v78 = v77 == 0) : (v78 = 1), !v78 || ((v79 = (v64 >> 20) & 0x1F, v116 = v79 > 0x15, v80 = (1 << v79) & 0x348000, !v116) ? (v81 = v80 == 0) : (v81 = 1), !v81 || (v82 = (v64 >> 25) & 0x1F, v82 <= 0x15) && ((1 << v82) & 0x348000) != 0)))))
        {
          BYTE2(v499[1]) |= 0x10u;
        }
      }

      if (v62)
      {
        LOWORD(v67) = 0;
      }

      else
      {
        v68 = *(v61 + 52);
        v69 = HIWORD(v68) & 0xF;
        v67 = (v68 >> 20) & 0xF;
        if (v69 > v67)
        {
          LOWORD(v67) = v69;
        }

        if ((v67 & 0xFC) == 0)
        {
          LOWORD(v67) = 0;
        }
      }

      *(v56 - 3) = (v60 & 0xE1FF) + (v67 << 9);
      ++v55;
      v56 = (v56 + 7);
    }

    while (v55 < CA::OGL::tex_image_count[BYTE14(v499[0]) & 0x7F]);
  }

  CA::OGL::MetalContext::Pipeline::Spec::lift_blend_function(v499);
  *(&v499[1] + 3) = 0;
  v48 = BYTE14(v499[0]);
  v49 = (*(v499 + 14) >> 20) & 0x300;
  if ((*(v499 + 14) & 0x4000000) != 0)
  {
    goto LABEL_123;
  }

  *(&v499[1] + 5) = CA::OGL::MetalContext::fragment_shader_type_info[16 * (CA::OGL::MetalContext::texture_function_info[4 * (BYTE14(v499[0]) & 0x7F)] & 0x3F) + 8] & 0x1F | (32 * ((*(v499 + 14) >> 19) & 3)) | v49;
  v83 = CA::OGL::tex_image_count[BYTE14(v499[0]) & 0x7F];
  v51 = __n;
  if (CA::OGL::tex_image_count[BYTE14(v499[0]) & 0x7F])
  {
    v84 = &v499[1] + 3;
    v85 = v499;
    do
    {
      v86 = *v85;
      v85 = (v85 + 7);
      *v84 = *v84 & 0xFC | byte_183E28164[v86 & 0x3F] & 3;
      ++v84;
      --v83;
    }

    while (v83);
  }

LABEL_124:
  memset(v498, 0, sizeof(v498));
  v87 = *(v51 + 218);
  v88 = *(v51 + 873);
  if (v87 & 0x40000) != 0 || (v87 & 0x80000) == 0 && (byte_1ED4E9827)
  {
    v89 = 0;
    LOBYTE(v90) = 0;
    memset(v507, 0, sizeof(v507));
  }

  else
  {
    v90 = byte_1ED4E9828 | ((v87 & 0x80000u) >> 19);
    v91 = CA::OGL::MetalContext::texture_function_info[4 * (v48 & 0x7F)] & 0x3F;
    v89 = v91 == 0;
    memset(v507, 0, sizeof(v507));
    if (byte_1ED4E9828 & 1 | ((v87 & 0x80000) != 0) && !v91)
    {
      v417 = 0;
      v418 = 0;
      v98 = 0;
      *v504 = 0uLL;
      v505 = 0uLL;
      LOBYTE(v90) = 1;
      goto LABEL_700;
    }
  }

  v92 = std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::find<CA::OGL::MetalContext::Pipeline::Spec>(v51 + 335, v499, v47);
  v98 = v92 != 0;
  if (!v92)
  {
    if (v87 & 0x400000 | v88 & 8)
    {
      v419 = mach_continuous_time();
      v420 = CA::OGL::MetalContext::Pipeline::Spec::name(v499);
      pipeline_state = CA::OGL::MetalContext::load_pipeline_state(__n, v420);
      if (pipeline_state)
      {
        v422 = pipeline_state;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v423 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
        v99 = v423;
        if (v423)
        {
          *v423 = 0;
          *(v423 + 1) = 0;
          *(v423 + 12) = 0;
          *(v423 + 2) = 0;
          *(v423 + 26) = 1;
        }

        v504[0] = v499;
        std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::__emplace_unique_key_args<CA::OGL::MetalContext::Pipeline::Spec,std::piecewise_construct_t const&,std::tuple<CA::OGL::MetalContext::Pipeline::Spec const&>,std::tuple<>>(__n + 670, v499, v504)[6] = v423;
        v424 = *(__n + 341);
        *(__n + 341) = v424 + 1;
        *(v99 + 2) = v424;
        if (atomic_load(v99))
        {
          __assert_rtn("set_pipeline_state", "ogl-metal.mm", 1542, "!is_complete ()");
        }

        atomic_store(v422, v99);
        *(v99 + 25) = 1;
        ++*(__n + 680);
        v426 = CA::OGL::MetalContext::begin_new_render_pipeline(v420, 1, v419);
        CA::OGL::MetalContext::end_new_render_pipeline(__n, v426, 0x24, 1);
        v498[0] = v499[0];
        v498[1] = v499[1];
        v51 = __n;
        goto LABEL_135;
      }

      v51 = __n;
      if ((v87 & 0x400000) != 0 && (BYTE7(v499[1]) & 1) == 0)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v438 = x_log_get_ogl_metal(void)::log;
        v51 = __n;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v464 = [(NSString *)v420 UTF8String];
          LODWORD(v504[0]) = 136315138;
          *(v504 + 4) = v464;
          _os_log_error_impl(&dword_183AA6000, v438, OS_LOG_TYPE_ERROR, "Required precompiled pipeline not found: %s\n", v504, 0xCu);
        }
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v439 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
    v99 = v439;
    if (v439)
    {
      *v439 = 0;
      *(v439 + 1) = 0;
      *(v439 + 12) = 0;
      *(v439 + 2) = 0;
      *(v439 + 26) = 1;
    }

    v504[0] = v499;
    std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::__emplace_unique_key_args<CA::OGL::MetalContext::Pipeline::Spec,std::piecewise_construct_t const&,std::tuple<CA::OGL::MetalContext::Pipeline::Spec const&>,std::tuple<>>(v51 + 670, v499, v504)[6] = v439;
    v51 = __n;
    v440 = *(__n + 341);
    *(__n + 341) = v440 + 1;
    *(v99 + 2) = v440;
    *(v99 + 25) = 1;
    goto LABEL_697;
  }

  v99 = v92[6];
  v100 = *(v51 + 341);
  *(v51 + 341) = v100 + 1;
  *(v99 + 2) = v100;
  if (!atomic_load(v99))
  {
    if (*(v99 + 1))
    {
      v98 = 0;
      v418 = 0;
LABEL_698:
      *v504 = 0u;
      v505 = 0u;
      if (!v89)
      {
        v503 = 0uLL;
        v502 = 0uLL;
        goto LABEL_704;
      }

      v417 = v99;
LABEL_700:
      CA::OGL::MetalContext::Pipeline::Spec::get_generic(&v502, v499);
      *v504 = v502;
      v505 = v503;
      v442 = std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::find<CA::OGL::MetalContext::Pipeline::Spec>(__n + 335, v504, v441);
      v443 = v442;
      v444 = v442 == 0;
      if (v442)
      {
        v445 = v442[6];
        v503 = 0u;
        v502 = 0u;
        if (!v445)
        {
          v99 = v417;
          v51 = __n;
LABEL_704:
          v417 = 0;
          v498[0] = v499[0];
          v498[1] = v499[1];
          v444 = v418;
          v446 = v98;
          LOBYTE(v98) = 0;
LABEL_722:
          if (!atomic_load(v99))
          {
            v451 = MEMORY[0x1E696AEC0];
            v466 = CA::OGL::MetalContext::Pipeline::Spec::encode_segment(v498);
            v467 = CA::OGL::MetalContext::FragmentShader::Spec::name(v498);
            v496 = 32;
            v452 = CA::OGL::MetalContext::begin_new_render_pipeline([v451 stringWithFormat:@"%@_%@"], 1, 0);
            if (v446)
            {
              v496 = 160;
            }

            if (v444)
            {
              v453 = CA::OGL::MetalContext::create_pipeline_state(__n, v498, &v496, 0);
              if (v453 == 0 && (v90 & 1) != 0)
              {
                if (x_log_get_ogl_metal(void)::once != -1)
                {
                  dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
                }

                v454 = x_log_get_ogl_metal(void)::log;
                if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
                {
                  v460 = [CA::OGL::MetalContext::Pipeline::Spec::name(v504) UTF8String];
                  *buf = 136315138;
                  v501 = v460;
                  _os_log_error_impl(&dword_183AA6000, v454, OS_LOG_TYPE_ERROR, "Required precompiled pipeline not found: %s\n", buf, 0xCu);
                }
              }

              if (atomic_load(v99))
              {
                __assert_rtn("set_pipeline_state", "ogl-metal.mm", 1542, "!is_complete ()");
              }

              atomic_store(v453, v99);
              v456 = __n;
              ++*(__n + 680);
              v457 = v496;
            }

            else
            {
              CA::OGL::MetalContext::Pipeline::wait_for_completion(v99);
              v457 = (v496 | 8);
              v456 = __n;
            }

            CA::OGL::MetalContext::end_new_render_pipeline(v456, v452, v457, 0);
            v51 = __n;
            ++*(__n + 318);
          }

          if (v417)
          {
            CA::OGL::MetalContext::dispatch_async_pipeline(v51, &v502, v417, 0, v98);
          }

          if (!atomic_load(v99))
          {
            __assert_rtn("get_pipeline", "ogl-metal.mm", 7664, "pipeline && pipeline->is_complete ()");
          }

          v459 = *(v51 + 341);
          *(v51 + 341) = v459 + 1;
          *(v99 + 2) = v459;
          goto LABEL_135;
        }
      }

      else
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v447 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
        v445 = v447;
        if (v447)
        {
          *v447 = 0;
          v447[1] = 0;
          *(v447 + 12) = 0;
          v447[2] = 0;
          *(v447 + 26) = 1;
        }

        *&v502 = v504;
        std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::__emplace_unique_key_args<CA::OGL::MetalContext::Pipeline::Spec,std::piecewise_construct_t const&,std::tuple<CA::OGL::MetalContext::Pipeline::Spec const&>,std::tuple<>>(__n + 670, v504, &v502)[6] = v447;
        v448 = *(__n + 341);
        *(__n + 341) = v448 + 1;
        v445[2] = v448;
        *(v445 + 25) = 0;
        v503 = 0u;
        v502 = 0u;
      }

      v449 = atomic_load(v445);
      if (v449 || (v90 & 1) != 0 && *(v445 + 26) == 1)
      {
        CA::OGL::MetalContext::Pipeline::Spec::push_blend_function(v499);
        v498[0] = *v504;
        v498[1] = v505;
        v446 = 0;
        if (v418)
        {
          v502 = v507[0];
          v503 = v507[1];
        }

        else
        {
          v417 = 0;
          LOBYTE(v98) = 0;
        }

        v99 = v445;
      }

      else
      {
        v498[0] = v499[0];
        v498[1] = v499[1];
        if (v443)
        {
          v99 = v417;
          v444 = v418;
          v446 = v98;
          v417 = 0;
        }

        else
        {
          v99 = v417;
          v502 = *v504;
          v503 = v505;
          v444 = v418;
          v446 = v98;
          v417 = v445;
        }

        LOBYTE(v98) = 0;
      }

      v51 = __n;
      goto LABEL_722;
    }

LABEL_697:
    v507[0] = v499[0];
    v507[1] = v499[1];
    v418 = 1;
    goto LABEL_698;
  }

  if (*(v99 + 24) == 1)
  {
    v427 = CA::OGL::MetalContext::Pipeline::Spec::name(v499);
    v51 = __n;
    CA::OGL::MetalContext::emit_new_render_pipeline(__n, v427);
    *(v99 + 24) = 0;
  }

  v498[0] = v499[0];
  v498[1] = v499[1];
  CA::OGL::MetalContext::Pipeline::wait_for_completion(v99);
LABEL_135:
  if (!atomic_load(v99))
  {
    return;
  }

  v103 = atomic_load(v99);
  if (*(v51 + 496) != v103)
  {
    *(v51 + 496) = v103;
    (*(v51 + 445))(*(v51 + 442), sel_setRenderPipelineState_);
    v51 = __n;
  }

  v104 = *(v51 + 84);
  v105 = *(v104 + 272) ? *(v104 + 272) : *(v51 + 84);
  v106 = v105[32];
  v107 = *(v51 + 64);
  if (v107 == 1)
  {
    v108 = *(v51 + 40);
    v109 = *(v51 + 9);
    if ((v105[38].i16[2] & 0x200) != 0)
    {
      v109 = v106.i32[1] - (v109 + v108.i32[1]);
      v110 = v105[6].i32[1];
    }

    else
    {
      v110 = -v105[6].i32[1];
    }

    v111 = v110 + v109;
    if ((v105[38].i16[2] & 0x400) != 0)
    {
      v112.i32[0] = v105[7].i32[1] - v108.i32[1] - v111;
      v112.i32[1] = *(v51 + 8) - v105[6].i32[0];
      v108 = vrev64_s32(v108);
    }

    else
    {
      v112.i32[0] = *(v51 + 8) - v105[6].i32[0];
      v112.i32[1] = v111;
    }

    v115 = vmin_s32(v106, vadd_s32(v108, v112));
    v114 = vmax_s32(v112, 0);
    v106 = vsub_s32(v115, v114);
  }

  else
  {
    v113 = (*(v104 + 144) >> 1) & 0x1F;
    if (v113)
    {
      v106 = vmax_s32(vshl_s32(v106, vneg_s32(vdup_n_s32(v113))), 0x100000001);
    }

    v114 = 0;
  }

  v116 = v106.i32[0] <= 0 || v106.i32[1] <= 0;
  v117 = !v116;
  if (*&v114 != *(v51 + 6) || *&v106 != *(v51 + 7))
  {
    if (v117)
    {
      v118 = *(v51 + 448);
      v119 = *(v51 + 442);
      v489 = v114;
      v492 = v106;
      *&v120 = v114.u32[0];
      *(&v120 + 1) = v114.u32[1];
      v121 = v120;
      *&v120 = v106.u32[0];
      *(&v120 + 1) = v106.u32[1];
      v507[0] = v121;
      v507[1] = v120;
      v118(v119, sel_setScissorRect_, v507);
      v51 = __n;
      LOBYTE(v107) = *(__n + 64);
      v114 = v489;
      v106 = v492;
    }

    *(v51 + 6) = v114;
    *(v51 + 7) = v106;
    *(v51 + 964) |= 0x40u;
  }

  *(v51 + 65) = *(v51 + 65) & 0xFE | v107;
  if (!v117)
  {
    return;
  }

  v122 = *(v498 + 14);
  if ((*(v498 + 14) & 0x4000000) != 0)
  {
    v123 = CA::OGL::MetalBufferPool::alloc_fragment_arg(*(v51 + 595), 0, 0x34u, 4u);
    v51 = __n;
    if (v123)
    {
      CA::OGL::MetalContext::FragmentShader::Spec::get_config(v507, v499, v124, v125, v126, v127, v128, v129, v130);
      *v123 = v507[0];
      v123[1] = v507[1];
      v123[2] = v508;
      *(v123 + 48) = v509;
    }
  }

  v131 = v51 + 4064;
  v132 = *(v499 + 14);
  v133 = BYTE14(v499[0]) & 0x7F;
  if ((CA::OGL::MetalContext::texture_function_info[4 * v133] & 0x3F) != 0)
  {
    v134 = 0;
    v135 = v51 + 4064;
    goto LABEL_270;
  }

  v493 = v51 + 4064;
  v136 = 0;
  v137 = 0;
  v138 = (v499 + 7);
  v139 = 0uLL;
  v510 = 0u;
  v511 = 0u;
  v508 = 0u;
  v509 = 0u;
  memset(v507, 0, sizeof(v507));
  v140 = *(v51 + 2);
  v141 = v140 + 400;
  v142 = *(v140 + 376);
  v143 = v499;
  v144 = 1;
  v145 = CA::OGL::tex_image_count;
  v490 = v140;
  do
  {
    v146 = v144;
    v147 = &v507[3 * v136];
    if (v142)
    {
      if (v132 & 0x4000000) != 0 || (v148 = v145[v133], v136 < v148) && (CA::OGL::MetalContext::image_function_info[2 * (*v143 & 0x3F)])
      {
        v149 = *v142;
        if ((v149 - 5) <= 0xFFFFFFFB)
        {
          __assert_rtn("encode_uniform_image_arg", "ogl-metal.mm", 9398, "rs->op >= RenderState::distance_fill && rs->op <= RenderState::distance_outer_stroke");
        }

        if (*(v142 + 4))
        {
          v150 = -1.0;
        }

        else
        {
          v150 = 1.0;
        }

        *v147 = v150;
        *(v147 + 1) = v142[4];
        if (v149 == 1)
        {
          *(v147 + 2) = v142[2];
          *(v147 + 3) = 0;
        }

        else
        {
          *v504 = v139;
          HIDWORD(v505) = HIDWORD(v139);
          v506 = 0x3F80000000000000;
          *&v505 = --0.0000305175998;
          DWORD2(v505) = -1082130432;
          v154 = (v142 + 2);
          v155 = vld1_dup_f32(v154);
          v156 = vmla_n_f32(v155, v504[v149], *(v142 + 3));
          *(v147 + 1) = vbsl_s8(vdup_lane_s32(vcgt_f32(v156, vdup_lane_s32(v156, 1)), 0), vrev64_s32(v156), v156);
        }

        goto LABEL_191;
      }
    }

    else
    {
      v148 = v145[v133];
    }

    if (v136 >= v148)
    {
      goto LABEL_192;
    }

    v151 = *v143 & 0x3F;
    v152 = CA::OGL::MetalContext::image_function_info[2 * v151];
    if ((v152 & 0x10) != 0)
    {
      *v147 = *(v141 + 48 * v136 + 32);
      if ((v152 & 0x20) == 0)
      {
        goto LABEL_191;
      }

      goto LABEL_190;
    }

    if ((CA::OGL::MetalContext::image_function_info[2 * v151] & 0x20) != 0)
    {
      *v147 = *(v141 + 48 * v136 + 32);
LABEL_190:
      v157 = (v141 + 48 * v136);
      v158 = v157[1];
      v147[1] = *v157;
      v147[2] = v158;
      goto LABEL_191;
    }

    if (((0x3FFFFF8FFFFFuLL >> v151) & 1) == 0)
    {
      v153 = v145;
      memcpy(v147, (v141 + 48 * v136), 16 * CA::OGL::MetalContext::image_function_info[2 * v151 + 1]);
      v139 = 0uLL;
      v145 = v153;
      v140 = v490;
LABEL_191:
      v137 = v507;
      goto LABEL_192;
    }

    if ((CA::OGL::MetalContext::image_function_info[2 * v151] & 0x40) != 0)
    {
      v159 = (v141 + 48 * v136);
      *v147 = *v159;
      *(v147 + 12) = *(v159 + 12);
      goto LABEL_191;
    }

LABEL_192:
    v144 = 0;
    v143 = (v499 + 7);
    v136 = 1;
  }

  while ((v146 & 1) != 0);
  v131 = v493;
  v160 = (v493 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v137)
  {
    v161 = 0;
    v134 = 0;
    do
    {
      v162 = *(v137 + v161);
      if (*(v160 + v161) != v162)
      {
        *(v160 + v161) = v162;
        v134 = 1;
      }

      v161 += 4;
    }

    while (v161 != 96);
    v132 = *(v499 + 14);
  }

  else
  {
    v134 = 0;
  }

  v163 = *(&CA::OGL::MetalContext::blend_function_info + 3 * ((v132 >> 8) & 0x3F));
  v51 = __n;
  if ((v163 & 0xE) != 0)
  {
    v510 = 0u;
    v511 = 0u;
    v508 = 0u;
    v509 = 0u;
    memset(v507, 0, sizeof(v507));
    if ((v163 & 2) != 0)
    {
      v165 = *(v140 + 304);
      v507[0] = *(v140 + 288);
      v507[1] = v165;
      goto LABEL_209;
    }

    if ((v163 & 8) != 0)
    {
      v166 = *(v140 + 280);
      v164 = (v160 + 103) & 0xFFFFFFFFFFFFFFF0;
      if (v166)
      {
        goto LABEL_210;
      }
    }

    else
    {
      if ((v163 & 4) == 0)
      {
        goto LABEL_207;
      }

      LODWORD(v507[0]) = *(v140 + 288);
LABEL_209:
      v164 = (v160 + 103) & 0xFFFFFFFFFFFFFFF0;
      v166 = v507;
LABEL_210:
      for (i = 0; i != 24; ++i)
      {
        _S0 = *(v166 + i);
        __asm { FCVT            H0, S0 }

        if (*(v164 + 2 * i) != _H0)
        {
          *(v164 + 2 * i) = _H0;
          v134 = 1;
        }
      }
    }
  }

  else
  {
LABEL_207:
    v164 = (v160 + 103) & 0xFFFFFFFFFFFFFFF0;
  }

  v172 = BYTE2(v499[1]);
  if ((BYTE2(v499[1]) & 4) != 0)
  {
    v184 = *(v140 + 321);
    v185 = 1.0;
    _S9 = 1.0;
    if (v184)
    {
      _S9 = *(v140 + 328);
      if ((*(v140 + 322) & 1) == 0)
      {
        v187 = *(v140 + 328);
        v188 = v145;
        v189 = powf(v187, 1.0 / *(__n + 144));
        v145 = v188;
        v140 = v490;
        _S9 = v189;
      }
    }

    if ((v184 & 2) != 0)
    {
      v185 = *(v140 + 332);
      if ((*(v140 + 322) & 2) == 0)
      {
        v190 = v145;
        v191 = powf(*(v140 + 332), 1.0 / *(__n + 144));
        v145 = v190;
        v185 = v191;
      }
    }

    v192 = 0;
    v193 = 0;
    v173 = (v164 + 49) & 0xFFFFFFFFFFFFFFFELL;
    v131 = v493;
    do
    {
      v194 = v192;
      __asm { FCVT            H0, S9 }

      if (*(v173 + 2 * v193) != _H0)
      {
        *(v173 + 2 * v193) = _H0;
        v134 = 1;
      }

      v192 = 1;
      _S9 = v185;
      v193 = 1;
    }

    while ((v194 & 1) == 0);
    v172 = BYTE2(v499[1]);
    if ((BYTE2(v499[1]) & 8) == 0)
    {
      goto LABEL_233;
    }

LABEL_216:
    v174 = fmaxf(*(__n + 872), 0.000001);
    v175 = 1.0 / *(__n + 144);
    v176 = v145;
    _S8 = powf(v174, v175);
    v178 = powf(1.0 / v174, v175);
    v145 = v176;
    v179 = 0;
    v180 = 0;
    v181 = (v173 + 5) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v182 = v179;
      __asm { FCVT            H1, S8 }

      if (*(v181 + 2 * v180) != _H1)
      {
        *(v181 + 2 * v180) = _H1;
        v134 = 1;
      }

      v179 = 1;
      _S8 = v178;
      v180 = 1;
    }

    while ((v182 & 1) == 0);
    v172 = BYTE2(v499[1]);
    if ((BYTE2(v499[1]) & 2) != 0)
    {
LABEL_234:
      v196 = *(v140 + 323);
      if (*(v181 + 4) != v196)
      {
        *(v181 + 4) = v196;
        v172 = BYTE2(v499[1]);
        v134 = 1;
      }
    }
  }

  else
  {
    v173 = (v164 + 49) & 0xFFFFFFFFFFFFFFFELL;
    if ((BYTE2(v499[1]) & 8) != 0)
    {
      goto LABEL_216;
    }

LABEL_233:
    v181 = (v173 + 5) & 0xFFFFFFFFFFFFFFFELL;
    if ((v172 & 2) != 0)
    {
      goto LABEL_234;
    }
  }

  if ((v172 & 4) != 0)
  {
    v197 = *(*(__n + 2) + 322);
    if (*(v181 + 5) != v197)
    {
      *(v181 + 5) = v197;
      v134 = 1;
    }
  }

  *&v507[0] = 0x3F80000000000000;
  v198 = BYTE14(v499[0]) & 0x7F;
  if ((CA::OGL::MetalContext::texture_function_info[4 * v198 + 3] & 4) != 0 || (*(&CA::OGL::MetalContext::blend_function_info + 3 * ((*(v499 + 14) >> 8) & 0x3F)) & 2) != 0)
  {
    v200 = *(*(__n + 84) + 192);
    if (v200 == 125 || v200 == 115)
    {
      *v507 = -COERCE_DOUBLE(0x7F0000007FLL);
    }

    else
    {
      if ((v200 - 550) > 5)
      {
        v341 = 0x3F80000000000000;
      }

      else
      {
        v341 = 0x3FA00000BF400000;
        *&v507[0] = 0x3FA00000BF400000;
      }

      if ((BYTE2(v499[1]) & 8) != 0)
      {
        v342 = v145;
        v343 = powf(1.0 / fmaxf(*(__n + 872), 0.000001), 1.0 / *(__n + 144));
        v145 = v342;
        *&v507[0] = vmul_n_f32(v341, v343);
      }
    }

    v201 = 0;
    v202 = 0;
    v199 = (v181 + 9) & 0xFFFFFFFFFFFFFFFCLL;
    v203 = v507;
    do
    {
      v204 = v201;
      _S0 = *v203;
      __asm { FCVT            H0, S0 }

      if (*(v199 + 2 * v202) != _H0)
      {
        *(v199 + 2 * v202) = _H0;
        v134 = 1;
      }

      v201 = 1;
      v203 = v507 + 1;
      v202 = 1;
    }

    while ((v204 & 1) == 0);
    v198 = BYTE14(v499[0]) & 0x7F;
  }

  else
  {
    v199 = (v181 + 9) & 0xFFFFFFFFFFFFFFFCLL;
  }

  v207 = v145[v198];
  if (!v207)
  {
    goto LABEL_261;
  }

  if ((CA::OGL::MetalContext::texture_filter_info[(LOWORD(v499[0]) >> 9) & 0xF] & 1) == 0)
  {
    v212 = 0;
    while (v207 - 1 != v212)
    {
      v213 = *v138;
      v138 = (v138 + 7);
      ++v212;
      if (CA::OGL::MetalContext::texture_filter_info[(v213 >> 9) & 0xF])
      {
        if (v212 < v207)
        {
          goto LABEL_252;
        }

        break;
      }
    }

LABEL_261:
    v210 = (v199 + 19) & 0xFFFFFFFFFFFFFFF0;
    goto LABEL_262;
  }

LABEL_252:
  v208 = 0;
  v209 = *(__n + 2) + 336;
  v210 = (v199 + 19) & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v211 = *(v209 + v208);
    if (*(v210 + v208) != v211)
    {
      *(v210 + v208) = v211;
      v134 = 1;
    }

    v208 += 4;
  }

  while (v208 != 32);
LABEL_262:
  if (CA::OGL::MetalContext::coord_function_info[(LOWORD(v499[0]) >> 6) & 7])
  {
    v214 = 0;
    v215 = *(__n + 2) + 384;
    v216 = (v210 + 47) & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v217 = *(v215 + v214);
      if (*(v216 + v214) != v217)
      {
        *(v216 + v214) = v217;
        v134 = 1;
      }

      v214 += 4;
    }

    while (v214 != 16);
  }

  else
  {
    v216 = (v210 + 47) & 0xFFFFFFFFFFFFFFF0;
  }

  v135 = (v216 + 16);
  v133 = BYTE14(v499[0]) & 0x7F;
LABEL_270:
  v218 = &CA::OGL::MetalContext::texture_function_info[4 * v133];
  if (v218[3])
  {
    v219 = 0;
    v220 = *(v51 + 2) + 24;
    v221 = (v135 + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      _S0 = *(v220 + 4 * v219);
      __asm { FCVT            H0, S0 }

      if (*(v221 + 2 * v219) != _H0)
      {
        *(v221 + 2 * v219) = _H0;
        v134 = 1;
      }

      ++v219;
    }

    while (v219 != 4);
    v135 = (v221 + 8);
  }

  else
  {
    v224 = 0;
    v225 = v218 + 1;
    v226 = (v51 + 160);
    do
    {
      v227 = v225[v224];
      if ((v227 & 0x78) == 0)
      {
        break;
      }

      v228 = ((v227 >> 3) & 0xF) * (v227 & 7);
      v229 = v225[v224] & 7;
      if ((v227 & 0x80000000) != 0)
      {
        v238 = 2 * v229 - 1;
        v239 = &v135[v238];
        v240 = v239 / (2 * v229) * 2 * v229;
        v233 = v239 & (-2 * v229);
        if ((v238 & (2 * v229)) != 0)
        {
          v233 = v240;
        }

        if (v228)
        {
          for (j = 0; j != v228; ++j)
          {
            _S0 = v226[j];
            __asm { FCVT            H0, S0 }

            if (*(v233 + 2 * j) != _H0)
            {
              *(v233 + 2 * j) = _H0;
              v134 = 1;
            }
          }
        }

        v237 = 1;
      }

      else
      {
        v230 = 4 * v229 - 1;
        v231 = &v135[v230];
        v232 = v231 / (4 * v229) * 4 * v229;
        v233 = v231 & (-4 * v229);
        if ((v230 & (4 * v229)) != 0)
        {
          v233 = v232;
        }

        if (v228)
        {
          v234 = v226;
          v235 = v233;
          v236 = v228;
          do
          {
            if (*v235 != *v234)
            {
              *v235 = *v234;
              v134 = 1;
            }

            ++v235;
            ++v234;
            --v236;
          }

          while (v236);
        }

        v237 = 2;
      }

      v135 = (v233 + (v228 << v237));
      ++v224;
      v226 += 20;
    }

    while (v224 != 5);
  }

  if ((v135 - v131) <= 0x100)
  {
    v244 = 256;
  }

  else
  {
    v244 = v135 - v131;
  }

  if ((v135 - v131) >= 0x191)
  {
    __assert_rtn("encode_fragment_uniforms", "ogl-metal.mm", 9365, "uintptr_t (dst) - uintptr_t (_encoded.frag_uniform) <= kMaxUniformSize");
  }

  if ((v134 & 1) != 0 || (*(v51 + 4016) & 2) == 0)
  {
    v245 = CA::OGL::MetalBufferPool::encode_fragment_arg(*(v51 + 595), 1, v131, v244, 0x10u);
    v51 = __n;
    if (!v245)
    {
      return;
    }

    *(__n + 4016) |= 2u;
  }

  if ((v122 & 0x4000000) != 0)
  {
LABEL_310:
    if (*(v51 + 2232) != *(*(v51 + 2) + 60))
    {
      v249 = CA::OGL::MetalBufferPool::alloc_fragment_arg(*(v51 + 595), 3, 0x30u, 8u);
      v51 = __n;
      if (!v249)
      {
        return;
      }

      v250 = 0;
      v251 = *(__n + 2);
      v252 = v251 + 60;
      v253 = v251 + 62;
      v254 = 1;
      do
      {
        v255 = 0;
        v256 = v254;
        v257 = *(v252 + v250);
        v258 = *(v253 + v250);
        v259 = v257 - 1;
        _ZF = v258 == 0;
        v260 = v258 - 1;
        v261 = _ZF || v257 == 0;
        v262 = &CA::OGL::ycbcr_matrices + 48 * v257;
        v93 = (&CA::OGL::ycbcr_matrix_book + 96 * v259);
        v263 = v93 + 48 * v260;
        if (v261)
        {
          v263 = v262;
        }

        v264 = (v249 + 7) & 0xFFFFFFFFFFFFFFF8;
        do
        {
          _S0 = *&v263[4 * v255];
          __asm { FCVT            H0, S0 }

          if (*(v264 + 2 * v255) != _H0)
          {
            *(v264 + 2 * v255) = _H0;
          }

          ++v255;
        }

        while (v255 != 12);
        v254 = 0;
        v249 = (v264 + 24);
        v250 = 1;
      }

      while ((v256 & 1) != 0);
    }

LABEL_323:
    if ((v122 & 0x4000000) == 0)
    {
      goto LABEL_324;
    }

LABEL_330:
    v269 = CA::OGL::tex_image_count[BYTE14(v499[0]) & 0x7F];
    v270 = v51 + 4512;
    if (*(v51 + 1128) == -1)
    {
      v274 = v269 == 0;
      v271 = BYTE2(v498[1]);
    }

    else
    {
      v271 = BYTE2(v498[1]);
      v272 = BYTE2(v498[1]) ^ *(v51 + 4016);
      LODWORD(v273) = (v272 >> 4) & 1;
      v274 = v269 == 0;
      if ((v272 & 0x10) == 0 && CA::OGL::tex_image_count[BYTE14(v499[0]) & 0x7F])
      {
        v275 = 0;
        do
        {
          v273 = *(*(v51 + 2) + 40 + 8 * v275);
          if (v273)
          {
            LOBYTE(v273) = *(v273 + 8) != *&v270[4 * v275];
          }

          if (v273)
          {
            break;
          }

          ++v275;
        }

        while (v275 < v269);
      }

      if ((v273 & 1) == 0)
      {
LABEL_339:
        if ((v122 & 0x4000000) == 0)
        {
          goto LABEL_340;
        }

LABEL_382:
        v276 = 2;
        v483 = 2;
        goto LABEL_383;
      }
    }

    if ((v271 & 0x10) != 0)
    {
      v281 = 1344;
    }

    else
    {
      v281 = 672;
    }

    if ((v271 & 0x10) != 0)
    {
      v282 = 16;
    }

    else
    {
      v282 = 8;
    }

    v283 = CA::OGL::MetalBufferPool::alloc_fragment_arg(*(v51 + 595), 4, v281, v282);
    v51 = __n;
    if (!v283)
    {
      return;
    }

    if (!v274)
    {
      v284 = 0;
      v285 = *(__n + 2) + 40;
      v286 = 3;
      if ((v271 & 0x10) != 0)
      {
        v286 = 4;
      }

      v287 = BYTE2(v498[1]);
      do
      {
        *&v270[4 * v284] = 0;
        v288 = *(v285 + 8 * v284);
        if (v288)
        {
          v289 = 0;
          v93 = *(v288 + 48);
          v103 = *(v288 + 36);
          do
          {
            v290 = (v103 >> (5 * v289)) & 0x1FLL;
            v94 = &v283[((42 * v284) << v286) + ((7 * v289) << v286)];
            v244 = 4 * CA::ColorProgram::kOpcodeParamCount[v290];
            LODWORD(v96) = v93 != 0;
            v95 = (v96 & (0x3FE7FEuLL >> v290));
            if ((v287 & 0x10) != 0)
            {
              if (v95)
              {
                v94 = ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
                v95 = v93;
                v96 = v244;
                do
                {
                  if (*v94 != *v95)
                  {
                    *v94 = *v95;
                  }

                  v94 += 4;
                  v95 += 4;
                  --v96;
                }

                while (v96);
              }
            }

            else if (v95)
            {
              v94 = ((v94 + 7) & 0xFFFFFFFFFFFFFFF8);
              v95 = v93;
              v96 = v244;
              do
              {
                _S0 = *v95;
                __asm { FCVT            H0, S0 }

                if (*v94 != _H0)
                {
                  *v94 = _H0;
                }

                v94 += 2;
                v95 += 4;
                --v96;
              }

              while (v96);
            }

            v93 = (v93 + 4 * v244);
            ++v289;
          }

          while (v289 != 6);
          *&v270[4 * v284] = *(v288 + 8);
        }

        ++v284;
      }

      while (v284 != v269);
    }

    if (v269 <= 1)
    {
      do
      {
        v293 = v269;
        *&v270[4 * v269] = 0;
        v269 = 1;
      }

      while (!v293);
    }

    *(__n + 4016) = *(__n + 4016) & 0xEF | BYTE2(v498[1]) & 0x10;
    if ((v122 & 0x4000000) == 0)
    {
      goto LABEL_340;
    }

    goto LABEL_382;
  }

  v246 = CA::OGL::tex_image_count[v122 & 0x7F];
  if (CA::OGL::tex_image_count[v122 & 0x7F])
  {
    v247 = v498;
    while (1)
    {
      v248 = *v247;
      v247 = (v247 + 7);
      if ((CA::OGL::MetalContext::image_function_info[2 * (v248 & 0x3F)] & 2) != 0)
      {
        goto LABEL_310;
      }

      if (!--v246)
      {
        goto LABEL_323;
      }
    }
  }

LABEL_324:
  v267 = CA::OGL::tex_image_count[v122 & 0x7F];
  if (CA::OGL::tex_image_count[v122 & 0x7F])
  {
    v268 = (v498 + 3);
    while (*(v268 - 1) <= 7u && (*v268 & 0x1FFFFFF) == 0)
    {
      v268 = (v268 + 7);
      if (!--v267)
      {
        goto LABEL_339;
      }
    }

    goto LABEL_330;
  }

LABEL_340:
  v276 = CA::OGL::tex_image_count[v122 & 0x7F];
  if ((v122 & 0x7F) == 0x3C)
  {
    v483 = 2;
  }

  else
  {
    v483 = CA::OGL::tex_image_count[v122 & 0x7F];
    if (!CA::OGL::tex_image_count[v122 & 0x7F])
    {
      if ((v122 & 0x4000000) != 0)
      {
        goto LABEL_515;
      }

      goto LABEL_344;
    }
  }

LABEL_383:
  v294 = 0;
  v482 = v276;
  v494 = v51 + 4528;
  v491 = v51 + 4648;
  v295 = &unk_1E6DFA000;
  v296 = 3;
  v297 = &unk_1E6DFA000;
  v473 = 0x3E00000001FLL;
  v472 = xmmword_183E21420;
  v474 = (v51 + 4744);
  v471 = xmmword_183E21430;
  v470 = xmmword_183E21440;
  while (2)
  {
    v298 = 0;
    v487 = v499 + 8 * v294 - v294;
    v488 = v498 + 8 * v294 - v294;
    v485 = v295[428];
    v486 = v297[429];
    v484 = v296;
    while (2)
    {
      if ((*(v498 + 14) & 0x4000000) == 0)
      {
        v299 = BYTE14(v498[0]) & 0x7F;
        v300 = v299 == 60 ? 2 : CA::OGL::tex_image_count[v299];
        if (v300 <= v294 || v298 >= CA::OGL::image_plane_count[*v488 & 0x3FLL] || v294 < CA::OGL::tex_image_count[v299] && (*v488 & 0x8000) == 0)
        {
          goto LABEL_463;
        }
      }

      v301 = *(v51 + 2);
      v302 = *(v301 + 8 * (v298 + CA::OGL::state_image_texture_unit(v301, v294)) + 176);
      if ((*(v499 + 14) & 0x4000000) != 0 || ((v303 = BYTE14(v499[0]) & 0x7F, v303 != 60) ? (v304 = CA::OGL::tex_image_count[v303]) : (v304 = 2), v304 > v294 && v298 < CA::OGL::image_plane_count[*v487 & 0x3FLL] && (v294 >= CA::OGL::tex_image_count[v303] || (*v487 & 0x8000) != 0)))
      {
        v306 = v302 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v302 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          return;
        }

        v307 = v302 & 3;
        v308 = v306 + 64;
        if (!*(v306 + 64 + 8 * v307))
        {
          return;
        }

        v309 = *(v306 + 123);
        if ((v309 & 8) == 0)
        {
          v310 = 0;
          goto LABEL_451;
        }

        v311 = *(v51 + 416);
        if (!v311)
        {
          v311 = malloc_type_calloc(8uLL, 0x100uLL, 0x80040B8603338uLL);
          v51 = __n;
          *(__n + 416) = v311;
          v309 = *(v306 + 123);
        }

        v312 = (*(v306 + 52) >> 18) & 0xC | WORD1(*(v306 + 52)) & 3 | (*(v306 + 52) >> 47) & 0x30 | ((v309 & 1) << 6) & 0x7F | (((v309 >> 4) & 1) << 7);
        v310 = v311[v312];
        if (v310)
        {
LABEL_451:
          v327 = atomic_load(v51 + 593);
          *(v306 + 112) = v327;
          if ((*(v306 + 123) & 0x20) != 0)
          {
            if (v298)
            {
              __assert_rtn("encode_image_plane", "ogl-metal.mm", 9828, "plane == 0");
            }

            v103 = *(v308 + 8 * v307);
            if (*&v494[8 * v296] == v103 && *&v491[8 * v294] == v310)
            {
              goto LABEL_463;
            }

            *&v494[8 * v296] = v103;
            *&v491[8 * v294] = v310;
            [*(v51 + 442) setFragmentTexture:? atTextureIndex:? samplerState:? atSamplerIndex:?];
          }

          else
          {
            v103 = *(v308 + 8 * v307);
            if (*&v494[8 * v296] != v103)
            {
              *&v494[8 * v296] = v103;
              (*(v51 + 446))(*(v51 + 442), v485);
              v51 = __n;
            }

            if (v298 || !v310 || *&v491[8 * v294] == v310)
            {
              goto LABEL_463;
            }

            *&v491[8 * v294] = v310;
            (*(v51 + 447))(*(v51 + 442), v486, v310, v294);
          }

LABEL_462:
          v51 = __n;
          goto LABEL_463;
        }

        v313 = objc_opt_new();
        v314 = v313;
        if ((*(__n + 3316) & 2) == 0 || (v315 = *(v306 + 123), (v315 & 0x10) != 0))
        {
          v316 = 0;
        }

        else
        {
          v316 = v315 ^ 1;
        }

        v317 = *(v306 + 54) & 0xF;
        if ((*(v306 + 54) & 0xF) == 0 || v317 == 8)
        {
          v319 = 0;
        }

        else if (v317 == 3 && (v316 & 1) != 0)
        {
          v319 = 2;
        }

        else
        {
          v319 = 1;
        }

        [v313 setMinFilter:v319];
        v320 = (*(v306 + 52) >> 20) & 0xF;
        if (v320)
        {
          v321 = v320 == 8;
        }

        else
        {
          v321 = 1;
        }

        if (v321)
        {
          v322 = 0;
        }

        else if (v320 == 3 && (v316 & 1) != 0)
        {
          v322 = 2;
        }

        else
        {
          v322 = 1;
        }

        [v314 setMagFilter:v322];
        v323 = *(v306 + 52);
        v324 = (v323 >> 51) & 3;
        if (((v323 >> 51) & 3) > 1)
        {
          if (v324 != 2)
          {
            if (x_log_get_ogl_metal(void)::once != -1)
            {
              dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
            }

            v465 = x_log_get_ogl_metal(void)::log;
            if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
            {
              *&v507[0] = 0x304000100;
              _os_log_error_impl(&dword_183AA6000, v465, OS_LOG_TYPE_ERROR, "CoreAnimation: Invalid TextureEdgeMode 0x%x", v507, 8u);
            }

            abort();
          }

          v324 = 4;
        }

        else if (v324)
        {
          v324 = 2;
        }

        [v314 setTAddressMode:v324];
        [v314 setSAddressMode:v324];
        v325 = *(v306 + 123);
        if (v325)
        {
          v326 = *(v306 + 54) & 0xF;
          if (v326 == 2)
          {
LABEL_447:
            [v314 setMipFilter:v326];
            v325 = *(v306 + 123);
            goto LABEL_448;
          }

          if (v326 == 7)
          {
            v326 = 1;
            goto LABEL_447;
          }
        }

LABEL_448:
        if ((v325 & 0x10) != 0)
        {
          [v314 setMaxAnisotropy:8];
        }

        v310 = [*(__n + 438) newSamplerStateWithDescriptor:v314];

        v51 = __n;
        *(*(__n + 416) + 8 * v312) = v310;
        goto LABEL_451;
      }

      v305 = CA::OGL::MetalContext::encode_placeholder_texture(v51, v296);
      v51 = __n;
      if (!v305)
      {
        return;
      }

      if (!v298)
      {
        v103 = *(__n + 435);
        if (!v103)
        {
          v103 = [*(__n + 438) newSamplerStateWithDescriptor:objc_opt_new()];
          v51 = __n;
          *(__n + 435) = v103;
          if (!v103)
          {
            return;
          }
        }

        if (*&v491[8 * v294] != v103)
        {
          *&v491[8 * v294] = v103;
          (*(v51 + 447))(*(v51 + 442), v486);
          goto LABEL_462;
        }
      }

LABEL_463:
      ++v298;
      v296 += 2;
      if (v298 != 3)
      {
        continue;
      }

      break;
    }

    if (v294 < v482)
    {
      v328 = *(v498 + 14);
      if (*(v498 + 14) & 0x4000000) != 0 || (v488[2] & 0xF8) == 0x38 || (v337 = *(v488 + 3), (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v337), xmmword_183E21410), xmmword_183E21420)))) || (v337 & 0x1F00000) == 0x700000)
      {
        v244 = (v294 + 10);
        if (BYTE1(v499[1]) & 4) != 0 || (v487[2] & 0xF8) == 0x38 || (v338 = *(v487 + 3), (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v338), xmmword_183E21410), xmmword_183E21420)))) || (v338 & 0x1F00000) == 0x700000)
        {
          v329 = *(*(v51 + 2) + 8 * *(*(v51 + 2) + v294 + 56) + 176) & 0xFFFFFFFFFFFFFFFCLL;
          v330 = atomic_load(v474);
          *(v329 + 112) = v330;
          v103 = *(v329 + 64);
          if (*&v494[8 * v244] != v103)
          {
            *&v494[8 * v244] = v103;
            (*(v51 + 446))(*(v51 + 442), sel_setFragmentTexture_atIndex_);
            v51 = __n;
          }
        }

        else
        {
          v339 = CA::OGL::MetalContext::encode_placeholder_texture(v51, v294 + 10);
          v51 = __n;
          if (!v339)
          {
            return;
          }
        }

        v328 = *(v498 + 14);
      }

      if ((v328 & 0x4000000) != 0 || (v331 = v488[2], (v331 - 64) < 0x18) || (v332 = *(v488 + 3), (v332 & 0x1F) - 8 < 3) || ((v332 >> 5) & 0x1F) - 8 < 3 || ((v332 >> 10) & 0x1F) - 8 < 3 || ((v332 >> 15) & 0x1F) - 8 < 3 || (v331 & 0xF8) == 0x98 || ((v332 >> 20) & 0x1F) - 8 < 3 || (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v332), xmmword_183E21430), xmmword_183E21440))) & 1) != 0 || (v332 & 0x1F) == 0x13)
      {
        v244 = (v294 + 12);
        if ((BYTE1(v499[1]) & 4) != 0 || (v333 = v487[2], (v333 - 64) < 0x18) || (v334 = *(v487 + 3), (v334 & 0x1F) - 8 < 3) || ((v334 >> 5) & 0x1F) - 8 < 3 || ((v334 >> 10) & 0x1F) - 8 < 3 || ((v334 >> 15) & 0x1F) - 8 < 3 || (v333 & 0xF8) == 0x98 || ((v334 >> 20) & 0x1F) - 8 < 3 || (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v334), xmmword_183E21430), xmmword_183E21440))) & 1) != 0 || (v334 & 0x1F) == 0x13)
        {
          v335 = *(*(v51 + 2) + 8 * *(*(v51 + 2) + v294 + 58) + 176) & 0xFFFFFFFFFFFFFFFCLL;
          v336 = atomic_load(v51 + 593);
          *(v335 + 112) = v336;
          v103 = *(v335 + 64);
          if (*&v494[8 * v244] != v103)
          {
            *&v494[8 * v244] = v103;
            (*(v51 + 446))(*(v51 + 442), sel_setFragmentTexture_atIndex_);
            v51 = __n;
          }
        }

        else
        {
          v340 = CA::OGL::MetalContext::encode_placeholder_cube(v51, v294 + 12);
          v51 = __n;
          if (!v340)
          {
            return;
          }
        }
      }
    }

    ++v294;
    v296 = v484 + 1;
    v295 = &unk_1E6DFA000;
    v297 = &unk_1E6DFA000;
    if (v294 != v483)
    {
      continue;
    }

    break;
  }

  v122 = *(v498 + 14);
  if ((*(v498 + 14) & 0x4000000) != 0)
  {
    goto LABEL_515;
  }

LABEL_344:
  v277 = v122 & 0x7F;
  if ((CA::OGL::MetalContext::texture_function_info[4 * v277 + 3] & 0x20) != 0 || !CA::OGL::tex_image_count[v277])
  {
LABEL_517:
    if ((v122 & 0xC000000) != 0)
    {
      if (!CA::OGL::MetalContext::encode_noise_texture(v51, v93, v103, v244, v94, v95, v96, v97))
      {
        return;
      }

      v51 = __n;
      if (!CA::OGL::MetalContext::encode_noise_scale(__n, v345))
      {
        return;
      }

      v122 = *(v498 + 14);
    }

    if ((CA::OGL::MetalContext::texture_function_info[4 * (v122 & 0x7F) + 3] & 0x40) != 0)
    {
      v346 = CA::OGL::MetalContext::encode_edr_resolve(v51, v93);
      v51 = __n;
      if (!v346)
      {
        return;
      }

      v122 = *(v498 + 14);
    }

    if ((v122 & 0x4000000) == 0 && (BYTE2(v498[1]) & 4) == 0)
    {
      v347 = v122 & 0x7F;
      if ((CA::OGL::MetalContext::texture_function_info[4 * v347 + 3] & 0x80) == 0)
      {
        v348 = CA::OGL::tex_image_count[v347];
        if (!v348)
        {
          goto LABEL_565;
        }

        v349 = (v498 + 3);
        while (1)
        {
          v350 = *(v349 - 1) >> 3;
          if (v350 == 11)
          {
            break;
          }

          v351 = *v349;
          v352 = *v349 & 0x1F;
          v353 = (*v349 >> 5) & 0x1F;
          v354 = v352 == 11 || v353 == 11;
          v355 = (v351 >> 10) & 0x1F;
          v356 = v354 || v355 == 11;
          v357 = (v351 >> 15) & 0x1F;
          v358 = v356 || v357 == 11;
          v359 = (v351 >> 20) & 0x1F;
          v360 = v358 || v359 == 12;
          v361 = v360 || v357 == 12;
          v362 = v361 || v355 == 12;
          v363 = v362 || v353 == 12;
          v364 = v363 || v352 == 12;
          v365 = v364 || v350 == 12;
          if (v365 || v359 == 11)
          {
            break;
          }

          v349 = (v349 + 7);
          if (!--v348)
          {
            goto LABEL_565;
          }
        }
      }
    }

    v367 = CA::OGL::MetalContext::encode_gamma_luts(v51);
    v51 = __n;
    if (!v367)
    {
      return;
    }

    v122 = *(v498 + 14);
LABEL_565:
    if ((v122 & 0x4000000) == 0)
    {
      v368 = CA::OGL::tex_image_count[v122 & 0x7F];
      if (!CA::OGL::tex_image_count[v122 & 0x7F])
      {
        goto LABEL_573;
      }

      v369 = v498;
      while (1)
      {
        v370 = *v369;
        v369 = (v369 + 7);
        if ((CA::OGL::MetalContext::texture_filter_info[(v370 >> 9) & 0xF] & 2) != 0)
        {
          break;
        }

        if (!--v368)
        {
          goto LABEL_573;
        }
      }
    }

    v371 = CA::OGL::MetalContext::encode_asg77_weights(v51, v93);
    v51 = __n;
    if (!v371)
    {
      return;
    }

    v122 = *(v498 + 14);
LABEL_573:
    if ((v122 & 0x4000000) != 0 || (CA::OGL::MetalContext::texture_function_info[4 * (v122 & 0x7F) + 3] & 0x100) != 0)
    {
      CA::OGL::MetalContext::encode_fragment_data(*(v51 + 595), a12);
      v122 = *(v498 + 14);
      v51 = __n;
    }

    if ((v122 & 0x4000000) != 0 || (CA::OGL::MetalContext::texture_function_info[4 * (v122 & 0x7F) + 3] & 0x200) != 0)
    {
      v372 = CA::OGL::MetalContext::encode_lut_texture(v51, *(v499 + 14));
      v51 = __n;
      if (!v372)
      {
        return;
      }
    }

    v373 = *(v498 + 14);
    if ((*(v498 + 14) & 0x4000000) != 0)
    {
      v374 = 2;
    }

    else
    {
      v374 = CA::OGL::tex_image_count[BYTE14(v499[0]) & 0x7F];
    }

    v375 = *(&v498[1] + 5);
    if ((BYTE5(v498[1]) & 0x80) != 0)
    {
      v377 = CA::OGL::MetalBufferPool::alloc_vertex_arg(*(v51 + 595), 0, 4u, 4u);
      v51 = __n;
      if (v377)
      {
        *v377 = BYTE3(v499[1]) & 3 | ((BYTE4(v499[1]) & 3) << 8) | (((*(&v499[1] + 5) >> 5) & 3) << 16);
      }
    }

    else
    {
      LOBYTE(v376) = 0;
      if ((BYTE5(v498[1]) & 0x60) != 0 || (*(&v498[1] + 3) & 0x303) == 0)
      {
        goto LABEL_594;
      }
    }

    CA::OGL::MetalContext::flip_texture_matrices(v51, v374);
    if (v374 > 1 || (*(v51 + 4016) & 1) == 0 || memcmp(v51 + 3984, v51 + 3120, 16 * v374))
    {
      v378 = CA::OGL::MetalBufferPool::encode_vertex_arg(*(v51 + 595), 3, v51 + 3120, 16 * v374, 0x10u);
      v51 = __n;
      if (!v378)
      {
        return;
      }

      memcpy(__n + 3984, __n + 3120, 16 * v374);
      *(__n + 4016) = *(__n + 4016) & 0xFE | v374 & 1;
    }

    v376 = (v375 >> 7) & 1;
LABEL_594:
    if (v376 & 1) != 0 || ((0x9F10uLL >> (v375 & 0x1F)))
    {
      v379 = BYTE5(v499[1]) & 0x1F;
      if ((vminvq_u32(vceqq_f32(*(v51 + 252), *(v51 + 10))) & 0x80000000) == 0 || v379 == 8 && (vminvq_u32(vceqq_f32(*(v51 + 253), *(v51 + 11))) & 0x80000000) == 0)
      {
        v380 = CA::OGL::MetalContext::vertex_shader_type_info[24 * (BYTE5(v499[1]) & 0x1F) + 16];
        v381 = CA::OGL::MetalBufferPool::encode_vertex_arg(*(v51 + 595), 5, v51 + 160, 4 * (v380 & 0xFu), 4 * (v380 & 0xFu));
        v51 = __n;
        if (!v381)
        {
          return;
        }

        if ((0x160EFuLL >> v379))
        {
          *(__n + 1008) = 2143289344;
        }

        else
        {
          *(__n + 252) = *(__n + 10);
          if (v379 == 8)
          {
            *(__n + 253) = *(__n + 11);
          }
        }
      }
    }

    if (*(v51 + 994) != *(v51 + 166) || a11)
    {
      v382 = CA::OGL::MetalBufferPool::alloc_vertex_arg(*(v51 + 595), 2, 0x40u, 0x10u);
      v51 = __n;
      if (!v382)
      {
        return;
      }

      if (a11 || (v387 = *(__n + 171)) == 0)
      {
        v384 = *(__n + 3048);
        v385 = *(__n + 3064);
        v386 = *(__n + 3096);
        v382[2] = *(__n + 3080);
        v382[3] = v386;
        *v382 = v384;
        v382[1] = v385;
      }

      else
      {
        CA::Mat4Impl::mat4_concat(v382, v387, __n + 381, v383);
      }

      *(__n + 994) = *(__n + 166);
    }

    if ((v375 & 0x80) != 0 || (v375 & 0x60) == 0 && (*(&v498[1] + 3) & 0x202) != 0)
    {
      v388 = *(v51 + 2);
      v390 = *(v388 + 64);
      v391 = *(v388 + 72);
      v389 = (v388 + 64);
      v392 = *(v51 + 560) == v390 && *(v51 + 561) == v391;
      v393 = v392 && *(v51 + 562) == v389[2];
      if (!v393 || *(v51 + 563) != v389[3])
      {
        v395 = CA::OGL::MetalBufferPool::encode_vertex_arg(*(v51 + 595), 4, v389, 0x20u, 0x10u);
        v51 = __n;
        if (!v395)
        {
          return;
        }

        v396 = *(__n + 2);
        v397 = *(v396 + 80);
        *(__n + 280) = *(v396 + 64);
        *(__n + 281) = v397;
      }
    }

    v398 = a10;
    if (a11)
    {
      if (v480 == 3)
      {
        v399 = 1;
      }

      else
      {
        v399 = 2;
      }

      v400 = *(v51 + 171);
      v497[0] = &unk_1EF1FBC80;
      v497[1] = v51;
      v497[3] = v497;
      v401 = CA::OGL::clip_primitives(v399, a3, a10, __src, 0, a11, v400, 0, 0, v497, 1u);
      std::__function::__value_func<BOOL ()(CA::OGL::Vertex *,unsigned int)>::~__value_func[abi:nn200100](v497);
      if (!v401)
      {
        return;
      }

      ++*(v51 + 166);
      goto LABEL_679;
    }

    if (v478)
    {
      v409 = a9 + a8;
      if (a10 && v480 == 3 && v409 > a3)
      {
        v410 = CA::OGL::MetalBufferPool::alloc_vertex_arg(*(v51 + 595), 1, v478 * a3, 0x10u);
        v411 = __n;
        if (!v410)
        {
          return;
        }

        if (a3)
        {
          v412 = a3;
          do
          {
            v413 = *v398++;
            memcpy(v410, &__src[v413 * v478], v478);
            v410 += v478;
            --v412;
          }

          while (v412);
        }

        goto LABEL_677;
      }

      v411 = __n;
      if (!CA::OGL::MetalBufferPool::encode_vertex_arg(*(v51 + 595), 1, __src, v409 * v478, a7))
      {
        return;
      }
    }

    else
    {
      v414 = *(v51 + 595);
      v415 = *(__src + 4);
      v416 = *(v414 + 192);
      if (*(v414 + 72) == v415)
      {
        (*(v414 + 216))(v416, sel_setVertexBufferOffset_atIndex_, *(__src + 10), 1);
      }

      else
      {
        (*(v414 + 200))(v416, sel_setVertexBuffer_offset_atIndex_, *(__src + 4), *(__src + 10), 1);
        *(v414 + 72) = v415;
      }

      v411 = __n;
    }

    if (a10)
    {
      if (v477 != 1)
      {
        __assert_rtn("encode_draw", "ogl-metal.mm", 10287, "instance_count == 1");
      }

      v428 = *(v411 + 595);
      v429 = 2 * a3;
      v430 = *(v428 + 8);
      if (v430)
      {
        if (*(v428 + 44) <= 4u)
        {
          v431 = 4;
        }

        else
        {
          v431 = *(v428 + 44);
        }

        v432 = *(v428 + 24);
        v433 = *(v428 + 28);
        v434 = (v431 + v432 - 1) & -v431;
        _CF = v433 != v434 && v433 >= v434 + v429;
        if (!_CF && v432)
        {
          CA::OGL::MetalBufferPool::retire_metal_buffer(v428, v430);
        }
      }

      else
      {
        buffer = CA::OGL::MetalBufferPool::allocate_buffer(v428, v429);
        *(v428 + 8) = buffer;
        if (!buffer)
        {
          return;
        }

        ++*(v428 + 40);
        *(v428 + 32) = [buffer contents];
        v434 = 0;
        *(v428 + 28) = [*(v428 + 8) length];
      }

      memcpy((*(v428 + 32) + v434), a10, v429);
      *(v428 + 24) = v434 + v429;
      (*(v428 + 232))(*(v428 + 192), sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_, v480, a3, 0, *(v428 + 8), v434);
      goto LABEL_678;
    }

LABEL_677:
    (*(v411 + 449))(*(v411 + 442), sel_drawPrimitives_vertexStart_vertexCount_instanceCount_, v480, 0, a3, v477);
LABEL_678:
    v51 = __n;
LABEL_679:
    v437.i32[0] = 1;
    v437.i32[1] = a3;
    *(v51 + 157) = vadd_s32(*(v51 + 1256), v437);
    if ((v373 & 0x4000000) != 0)
    {
      ++*(v51 + 319);
    }

    if (byte_1ED4E9879 == 1)
    {
      if (x_log_get_metal_trace(void)::once != -1)
      {
        dispatch_once(&x_log_get_metal_trace(void)::once, &__block_literal_global_13_8335);
      }

      v51 = __n;
      v461 = *(__n + 159);
      if (v461)
      {
        v462 = x_log_get_metal_trace(void)::log;
        if (os_signpost_enabled(x_log_get_metal_trace(void)::log))
        {
          v463 = CA::OGL::MetalContext::TextureFunction_codes[BYTE14(v499[0]) & 0x7F];
          LODWORD(v507[0]) = 136446466;
          *(v507 + 4) = v463;
          WORD6(v507[0]) = 1026;
          *(v507 + 14) = a3;
          _os_signpost_emit_with_name_impl(&dword_183AA6000, v462, OS_SIGNPOST_EVENT, v461, "Draw", "ID is update texture_function=%{public,name=texture_function}s draw_count=%{public,name=draw_count}d", v507, 0x12u);
        }
      }
    }

    CA::OGL::Context::marked_destination(v51, v402, v403, v404, v405, v406, v407, v408, v466, v467, v468, v469, v470, *(&v470 + 1), v471, *(&v471 + 1), v472, *(&v472 + 1), v473);
    return;
  }

  v278 = 0;
  v122 = *(v498 + 14);
  v279 = v498;
  while (1)
  {
    v280 = *v279;
    v279 = (v279 + 7);
    if (((0x42000FFFE00uLL >> v280) & 1) == 0)
    {
      break;
    }

    if (++v278 >= CA::OGL::tex_image_count[BYTE14(v498[0]) & 0x7F])
    {
      goto LABEL_517;
    }
  }

LABEL_515:
  v344 = CA::OGL::MetalContext::encode_lod_bias(v51, v499);
  v51 = __n;
  if (v344)
  {
    v122 = *(v498 + 14);
    goto LABEL_517;
  }
}