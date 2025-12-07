uint64_t CA::Render::Update::pop_dependence_group(CA::Render::Update *this, CA::Render::LayerNode *a2)
{
  v3 = *(this + 109);
  v4 = *(v3 - 24);
  if (v4)
  {
    do
    {
      v5 = v4[3];
      if (atomic_fetch_add(v5 + 4, 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v5, a2);
      }

      v4 = *v4;
    }

    while (v4);
    v3 = *(this + 109);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v3 - 40);
  *(this + 109) = result;
  return result;
}

_OWORD *CA::Render::LayerNodeAllocator::alloc_node(CA::Render::LayerNodeAllocator *this)
{
  if (CA::Render::LayerNodeAllocator::alloc_node(void)::once != -1)
  {
    dispatch_once(&CA::Render::LayerNodeAllocator::alloc_node(void)::once, &__block_literal_global_9144);
  }

  if (!CA::Render::LayerNodeAllocator::_free_offsets_count)
  {
    if (x_malloc_get_zone::once == -1)
    {
      goto LABEL_10;
    }

LABEL_13:
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    goto LABEL_10;
  }

  os_unfair_lock_lock(&CA::Render::LayerNodeAllocator::_lock);
  v1 = CA::Render::LayerNodeAllocator::_free_offsets_count;
  if (CA::Render::LayerNodeAllocator::_free_offsets_count)
  {
    --CA::Render::LayerNodeAllocator::_free_offsets_count;
    v2 = *(CA::Render::LayerNodeAllocator::_free_offsets + 2 * (v1 - 1));
    os_unfair_lock_unlock(&CA::Render::LayerNodeAllocator::_lock);
    result = (CA::Render::LayerNodeAllocator::_data + 288 * v2);
    if (!CA::Render::LayerNodeAllocator::_data)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  os_unfair_lock_unlock(&CA::Render::LayerNodeAllocator::_lock);
  if (x_malloc_get_zone::once != -1)
  {
    goto LABEL_13;
  }

LABEL_10:
  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x120uLL, 0xDEEC3011uLL);
  if (result)
  {
LABEL_11:
    result[16] = 0u;
    result[17] = 0u;
    result[14] = 0u;
    result[15] = 0u;
    result[12] = 0u;
    result[13] = 0u;
    result[10] = 0u;
    result[11] = 0u;
    result[8] = 0u;
    result[9] = 0u;
    result[6] = 0u;
    result[7] = 0u;
    result[4] = 0u;
    result[5] = 0u;
    result[2] = 0u;
    result[3] = 0u;
    result[1] = 0u;
  }

LABEL_12:
  *result = result;
  *(result + 1) = result;
  *(result + 12) = result + 6;
  *(result + 13) = result + 6;
  *(result + 4) = 1;
  *(result + 3) = 4;
  return result;
}

uint64_t ___ZN2CA12WindowServer11IOMFBServer20try_swap_begin_asyncEj_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  v2 = *(a1 + 40);
  pthread_mutex_lock((v1 + 25848));
  if (*(v1 + 26064) == v2)
  {
    v3 = v1 + 48 * *(v1 + 25832);
    if (!*(v3 + 25936))
    {
      CA::IOMobileFramebuffer::swap_begin((v1 + 25696), (v3 + 25936));
    }

    *(v1 + 26064) = 0;
  }

  return pthread_mutex_unlock((v1 + 25848));
}

uint64_t CA::WindowServer::Display::render_display(CA::WindowServer::Display *this, CA::Shape **a2, CA::Render::Update *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a2;
  *(v7 + 600) = CA::WindowServer::Display::ogl_display(this);
  *(v7 + 608) = *(this + 200);
  if ((*(*this + 1888))(this))
  {
    v8 = (*(*this + 1848))(this);
    if (v8)
    {
      CA::OGL::Context::set_colorspace(v7, v8);
    }
  }

  v9 = (*(*v7 + 1160))(v7);
  v10 = (*(*this + 472))(this, 1, v9, *(a3 + 40), 0, 0);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_22;
  }

  v12 = *(v10 + 64);
  if (v12 != 643969848 && v12 != 1647534392)
  {
    if ((*(v10 + 236) & 0x200000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = *(a3 + 38);
  if (v14 & 0x2000) != 0 || (v14 & 2) != 0 || (BYTE10(xmmword_1ED4E980C))
  {
    v15 = (v10 + 236);
    v16 = *(v10 + 236);
    if ((v16 & 0x40000000) != 0)
    {
      goto LABEL_20;
    }

    v17 = v16 | 0x80000000;
    goto LABEL_18;
  }

  v15 = (v10 + 236);
  v16 = *(v10 + 236);
  if (((v16 >> 30) & 1) == ((v16 >> 33) & 1))
  {
    goto LABEL_20;
  }

  v17 = v16 | 0x80000000;
  if ((v16 & 0x200000000) != 0)
  {
LABEL_18:
    v16 = v17 | 0x240000000;
    goto LABEL_19;
  }

  v16 = v16 & 0xFFFFFFFD3FFFFFFFLL | 0x80000000;
LABEL_19:
  *v15 = v16;
LABEL_20:
  if ((v16 & 0x200000000) != 0)
  {
LABEL_21:
    CA::Render::Update::set_shape(a3, *(this + 27));
  }

LABEL_22:
  CA::OGL::Renderer::prepare_clip_shape(a2, *(a3 + 2));
  CA::Render::Update::render_edr_factor();
  v19 = v18;
  if (v11)
  {
    v20 = CA::Render::fourcc_to_format(*(v11 + 16));
    if (((v20 < 0x1D) & (0x17826000u >> v20)) != 0)
    {
      v19 = 1.0;
    }
  }

  (*(*v7 + 1128))(v7, v19);
  if (v11 && (*(*v7 + 1008))(v7, v11))
  {
    if ((*(*this + 1552))(this))
    {
      CA::Render::Update::render_edr_factor();
      (*(*v11 + 224))(v11, 0, 1.0 / v21);
    }

    else
    {
      (*(*v11 + 224))(v11, 0, *(a3 + 101));
      v19 = 1.0 / *(a3 + 101);
    }

    (*(*v11 + 208))(v11, v19);
    if ((*(*v11 + 200))(v11) < 1.0 && (*(*this + 1560))(this))
    {
      v23 = CA::WindowServer::Display::all_clones_support_edr_fixup(this);
      v24 = 0x4000000000;
      if (!v23)
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    *(v11 + 236) = *(v11 + 236) & 0xFFFFFFBFFFFFFFFFLL | v24;
    CA::OGL::Renderer::render(a2, a3, v11[2], v22);
    *(v11 + 236) &= ~0x200000000uLL;
    (*(*v7 + 1008))(v7, 0);
  }

  v25 = a2[2];
  if (v25)
  {
    CA::Shape::unref(v25);
    a2[2] = 0;
  }

  (*(*v7 + 1128))(v7, 1.0);
  *(v7 + 600) = 0;
  v26 = *(v7 + 1384);
  if ((v26 & 0x80) != 0)
  {
    (*(*this + 488))(this);
  }

  objc_autoreleasePoolPop(v6);
  return (v26 >> 7) & 1;
}

atomic_uint *CA::CASharedEvent::History::add(atomic_uint *result, uint64_t a2, int a3, atomic_uint a4, atomic_uint a5, atomic_uint a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a4 != 1)
  {
    v13 = result;
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (byte_1ED4E987C == 1)
    {
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v16 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_INFO))
      {
        v17 = CA::CASharedEvent::UsageString[a4];
        v18 = CA::CASharedEvent::OperationString[a5];
        v19 = CA::CASharedEvent::AccessString[a6];
        v20 = "No Surface or Display";
        if (a2)
        {
          if (*(a2 + 8))
          {
            v20 = "";
          }
        }

        v21[0] = 67110402;
        v21[1] = a3;
        v22 = 2080;
        v23 = v17;
        v24 = 2080;
        v25 = v18;
        v26 = 2080;
        v27 = v19;
        v28 = 2048;
        v29 = a7;
        v30 = 2080;
        v31 = v20;
        _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_INFO, "IOSurfaceID: 0x%x  usage: %s  operation: %s  access: %s  value: %#llx %s", v21, 0x3Au);
      }
    }

    v14 = atomic_fetch_add(v13, 1u) & 0x3F;
    result = mach_continuous_time();
    v15 = &v13[8 * v14];
    *(v15 + 1) = result;
    v15[4] = a4;
    v15[5] = a5;
    v15[6] = a6;
    *(v15 + 4) = a7;
  }

  return result;
}

uint64_t CA::CASharedEvent::get_wait_value(uint64_t a1, atomic_uint a2, atomic_uint a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 == 16 && (*(a1 + 80) - 8) <= 5)
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (byte_1ED4E987C == 1)
    {
      v16 = a3;
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v13 = x_log_get_sharedevent(void)::log;
      a3 = 1;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_INFO))
      {
        v14 = CA::CASharedEvent::AccessString[v16];
        v15 = *(a1 + 16);
        *buf = 67109634;
        *&buf[4] = v15;
        *v18 = 2080;
        *&v18[2] = "Render::Surface";
        *&v18[10] = 2080;
        *&v18[12] = v14;
        _os_log_impl(&dword_183AA6000, v13, OS_LOG_TYPE_INFO, "IOSurfaceID: 0x%x  usage: %s  access: %s  force read access when detached", buf, 0x1Cu);
      }
    }

    else
    {
      a3 = 1;
    }
  }

  if (*(a1 + 40) == 1)
  {
    bzero(buf, 0x3E0uLL);
    CA::SurfaceUtil::CASurfaceQuerySharedEvent(buf, *(a1 + 8));
    CA::CASharedEvent::update_from_iosurface_list(a1, *buf, *v18);
    v6 = *buf;
    v7 = *v18;
    if (*buf != *v18)
    {
      do
      {
        v8 = *v6;
        v6 += 4;
      }

      while (v6 != v7);
      v6 = *buf;
    }

    if (v6 != *&v18[8])
    {
      free(v6);
    }
  }

  v9 = 48;
  if (a3 == 1)
  {
    v9 = 72;
  }

  v10 = *(a1 + v9);
  v11 = *(a1 + 120);
  if (v11)
  {
    CA::CASharedEvent::History::add(v11, *a1, *(a1 + 16), a2, 1, a3, *(a1 + v9));
  }

  return v10;
}

void CA::OGL::MetalContext::shared_event_submit(CA::OGL::MetalContext *this, CA::CASharedEvent *a2, const char *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v4 = a4;
  v5 = a3;
  if (*(this + 441))
  {
    CA::OGL::MetalContext::stop_encoders(this);
  }

  else
  {
    CA::OGL::MetalContext::start_command_buffer(this, *(this + 455), a3);
  }

  if (!*(this + 441))
  {
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v11 = x_log_get_sharedevent(void)::log;
    if (!os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v17 = 0;
    v12 = "Invalid command buffer";
    v13 = &v17;
LABEL_23:
    _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    return;
  }

  v8 = *(a2 + 4);
  if (v8)
  {
    if (v5)
    {
      wait_value = CA::CASharedEvent::get_wait_value(a2, 15, v4);
      v10 = *(this + 441);

      [v10 encodeWaitForEvent:v8 value:wait_value];
    }

    else
    {
      v14 = CA::CASharedEvent::inc_signal_value(a2, 15, v4);
      [*(this + 441) encodeSignalEvent:v8 value:v14];
      v15 = atomic_load(this + 593);

      CA::OGL::MetalContext::SharedEvent::add_encoded((this + 2912), v15, a2, v14);
    }

    return;
  }

  if (x_log_get_sharedevent(void)::once != -1)
  {
    dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
  }

  v11 = x_log_get_sharedevent(void)::log;
  if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
  {
    v16 = 0;
    v12 = "Invalid metal shared event";
    v13 = &v16;
    goto LABEL_23;
  }
}

uint64_t CA::OGL::MetalContext::make_buffer_current(CA::OGL::MetalContext *this, CA::WindowServer::Surface *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    result = CA::OGL::MetalContext::get_surface(this, a2, 1);
    if (!result)
    {
      return result;
    }

    v11 = result;
    *(this + 455) = (*(*a2 + 232))(a2);
    CA::OGL::Context::push_surface(this, v11, *(v11 + 144) >= 0, 0, 0);
    *(this + 427) = v11;
    *(this + 428) = *(v11 + 192);
  }

  else
  {
    *(this + 455) = 0;
    CA::OGL::Context::pop_surface(this, 0, a3, a4, a5, a6, a7, a8);
    v12 = *(this + 85);
    v13 = *(this + 84);
    if (v12 != v13 || (!v12 ? (v14 = 0) : (v14 = (*(v13 + 144) >> 1) & 0x1F), *(this + 167) != v14))
    {
      CA::OGL::Context::prepare_destination_(this);
    }

    *(this + 3416) = 0u;
  }

  return 1;
}

atomic_uint *CA::CASharedEvent::update_signal_value(atomic_uint *result, uint64_t a2, atomic_uint a3, atomic_uint a4)
{
  if ((a3 - 8) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
    if (*(result + 8))
    {
      goto LABEL_6;
    }
  }

  *(result + 8) = v4;
LABEL_6:
  result[20] = a3;
  if (a4 == 2)
  {
    *(result + 9) = a2;
  }

  if (*(result + 15))
  {
    return CA::CASharedEvent::History::add(*(result + 15), *result, result[4], a3, 2, a4, a2);
  }

  return result;
}

uint64_t CA::CASharedEvent::inc_signal_value(uint64_t a1, atomic_uint a2, atomic_uint a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48) + 1;
  *(a1 + 48) = v5;
  CA::CASharedEvent::update_signal_value(a1, v5, a2, a3);
  if (*(a1 + 40) == 1)
  {
    v6 = *(a1 + 48);
    *(a1 + 112) = v6;
    HIDWORD(v10) = 0;
    *(&v10 + 1) = 0;
    v7 = *(a1 + 8);
    v9[0] = *(a1 + 32);
    v9[1] = 0;
    v9[2] = v6;
    LODWORD(v10) = a3 == 2;
    CA::SurfaceUtil::CASurfaceAppendSharedEvent(v7, v9);
  }

  return v5;
}

void CAMarkStatistic(uint64_t a1, double a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if (v4 <= 0.0)
  {
    *(a1 + 56) = a2;
  }

  else if (v4 + 1.0 < a2)
  {
    if (BYTE10(ca_debug_options) == 1)
    {
      memset(v23, 0, sizeof(v23));
      v5 = CARecordCurrentDisplayGet();
      if (v5)
      {
        X::Stream::printf(v23, "display %u: ", v5);
      }

      X::Stream::printf(v23, "%d transactions", *(a1 + 16) - *(a1 + 80));
      v6 = *(a1 + 20) - *(a1 + 84);
      if (v6)
      {
        v7 = *(a1 + 24) - *(a1 + 88);
        v8 = v6;
        v9 = "frames";
        if (v6 == 1)
        {
          v9 = "frame";
        }

        v10 = v7 / v8;
        if (v7 == v6)
        {
          v11 = "pass";
        }

        else
        {
          v11 = "passes";
        }

        X::Stream::printf(v23, "; %d %s (%.3gs duration, %.3gfps frame rate, %.3g %s, %.2gs gap)", v6, v9, a2 - *(a1 + 56), v8 / (a2 - *(a1 + 56)), v10, v11, *(a1 + 72));
      }

      v12 = *(a1 + 32) - *(a1 + 92);
      if (v12)
      {
        v13 = "es";
        if (v12 == 1)
        {
          v13 = "";
        }

        X::Stream::printf(v23, "; %d cache miss%s", v12, v13);
      }

      v14 = *(a1 + 40);
      if (v14 != 0.0)
      {
        X::Stream::printf(v23, "; %.3g MP area", v14 * 0.000001);
      }

      if (*(a1 + 28))
      {
        X::Stream::printf(v23, "; %d draw calls", *(a1 + 28));
      }

      v15 = *(a1 + 48);
      if (v15 != 0.0)
      {
        X::Stream::printf(v23, "; %.3g MB uploaded", v15 * 0.000001);
      }

      if (x_log_get_CADebug(void)::once != -1)
      {
        dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
      }

      v16 = x_log_get_CADebug(void)::log;
      if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = x_stream_get(v23);
        _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
      }

      if (*v23)
      {
        free(*v23);
      }
    }

    if (BYTE8(ca_debug_options) == 1)
    {
      if (x_log_get_CADebug(void)::once != -1)
      {
        dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
      }

      v17 = x_log_get_CADebug(void)::log;
      if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *CAGetStatsStruct(0) * 0.000001;
        v19 = *(CAGetStatsStruct(0) + 1) * 0.000001;
        *v23 = 134218240;
        *&v23[4] = v18;
        *&v23[12] = 2048;
        *&v23[14] = v19;
        _os_log_impl(&dword_183AA6000, v17, OS_LOG_TYPE_DEFAULT, "CoreAnimation buffers: currently %.3gMB; maximum %.3gMB\n", v23, 0x16u);
      }
    }

    *(a1 + 80) = *(a1 + 16);
    v20 = *(a1 + 32);
    *(a1 + 88) = *(a1 + 24);
    *(a1 + 92) = v20;
    *(a1 + 56) = a2;
    *(a1 + 72) = 0;
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }
}

CA::Shape **CA::WindowServer::AccelServer::render_update(CA::WindowServer::Display **this, CA::Render::Update *a2, unsigned int *a3)
{
  v6 = (*(*this + 54))(this);
  if (v6)
  {
    v8 = v6;
    if (CA::WindowServer::Display::render_display(this[12], v6, a2))
    {
      *a3 |= 3u;
    }

    if (BYTE5(xmmword_1ED4E97EC) == 1)
    {
      (*(**v8 + 472))(*v8, "com.apple.GL.event.frameboundary.end");
    }

    v9 = *(a2 + 10);

    return CA::OGL::Renderer::collect(v8, a2, v9);
  }

  else
  {

    return CA::WindowServer::Server::render_update(this, a2, v7);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::use_assembly_surface(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = this + 25560;
  if (!(*(*this + 80))(this))
  {
    goto LABEL_20;
  }

  v3 = *(this + 3339);
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = *(this + 3415);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= v3)
    {
      v7 = v4 % v3;
    }
  }

  else
  {
    v7 = (v3 - 1) & v4;
  }

  v8 = *(*(this + 3338) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_20:
    LOBYTE(v3) = 0;
    goto LABEL_21;
  }

  v10 = vdupq_n_s64(0x3F59000000000000uLL);
  v11 = vdupq_n_s64(0x40847AE147AE147BuLL);
  v12 = vdupq_n_s64(0x3FFFFFE0000000uLL);
  while (1)
  {
    v13 = v9[1];
    if (v4 == v13)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v13 >= v3)
      {
        v13 %= v3;
      }
    }

    else
    {
      v13 &= v3 - 1;
    }

    if (v13 != v7)
    {
      goto LABEL_20;
    }

LABEL_19:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  if (v9[2] != v4)
  {
    v14.i64[0] = v9[2];
    v14.i64[1] = *(this + 3415);
    v15 = vshrn_n_s64(v14, 0x1DuLL);
    v16.i64[0] = v15.i32[0] & 0x1FFFFFF;
    v16.i64[1] = v15.i32[1] & 0x1FFFFFF;
    v17 = vbslq_s8(v12, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v16), v10)), v11)), 0x1DuLL), v14);
    if ((vmovn_s64(vceqq_s64(v17, vdupq_laneq_s64(v17, 1))).u32[0] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  LOBYTE(v3) = *(v9 + 44);
LABEL_21:
  if (*(this + 904) & 0x10) != 0 && ((byte_1ED4E9887 & 1) != 0 || v2[3952] != 1) || (v2[1128] == 2) | v3 & 1 || ((*(*this + 1576))(this))
  {
    return 1;
  }

  if (*v2 == 1)
  {
    return CA::WindowServer::Display::all_clones_are_screen_recording(this) ^ 1;
  }

  return 0;
}

float CA::WindowServer::Display::edr_headroom(CA::WindowServer::Display *this)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  result = *&dword_1ED4E968C;
  if (*&dword_1ED4E968C == 0.0)
  {
    v3 = *(this + 88);
    if (v3)
    {
      return COERCE_FLOAT(atomic_load(v3));
    }

    else
    {
      return 1.0;
    }
  }

  return result;
}

uint64_t CA::WindowServer::Display::Mode::hdr_type(unint64_t this)
{
  v1 = (this >> 55) & 0x1F;
  if (!this || (this & 0x10000000) != 0)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if (((v1 - 22) & 0xFFFFFFFD) != 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (CADeviceIsVirtualized::is_virtualized == 1)
    {
      return v3;
    }

    else
    {
      return 2;
    }
  }

  else if ((v1 - 16) > 0xC)
  {
    return 1;
  }

  else
  {
    return dword_183E24180[(v1 - 16)];
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::needs_passthrough(CA::WindowServer::IOMFBDisplay *this)
{
  if (CA::WindowServer::Display::Mode::is_hdr((this + 656)))
  {
    v2 = *(this + 29533) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL CA::WindowServer::Display::Mode::is_hdr(CA::WindowServer::Display::Mode *this)
{
  if (*this)
  {
    v1 = (*this & 0x10000000) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return ((*this >> 55) & 0x1F) - 16 < 0xD;
  }

  if (CADeviceIsVirtualized::once[0] != -1)
  {
    dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
  }

  if (CADeviceIsVirtualized::is_virtualized != 1)
  {
    return 0;
  }

  v3 = (*this >> 55) & 0x1FLL;
  return v3 == 22 || v3 == 24;
}

void CA::WindowServer::Server::render_for_time(uint64_t a1)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v549.i64[0] = v6;
  v671[32] = *MEMORY[0x1E69E9840];
  if ((*(*(v1 + 96) + 905) & 8) != 0)
  {
    return;
  }

  v7 = v4;
  v8 = v3;
  v9 = v5;
  v10 = v1;
  v539 = v2;
  v11 = objc_autoreleasePoolPush();
  v562 = 0;
  CARecordCurrentDisplay::CARecordCurrentDisplay(&v562, *(*(v10 + 96) + 24));
  v529 = *(v10 + 96);
  v526 = mach_absolute_time();
  v12 = mach_absolute_time();
  *&v660[8] = 0;
  *v660 = 0;
  mach_get_times();
  v13 = *&v660[8];
  v14 = CATimeWithHostTime(*v660);
  add = atomic_fetch_add(CA::Render::Update::_update_counter, 1u);
  pthread_mutex_lock((v10 + 24));
  if (*(v10 + 824) != 1)
  {
    v548 = add + 1;
    v519 = v12;
    v528 = v13;
    if (byte_1ED4E985F == 1)
    {
      if (x_log_get_server_perf(void)::once != -1)
      {
        dispatch_once(&x_log_get_server_perf(void)::once, &__block_literal_global_5_17300);
      }

      v514 = x_log_get_server_perf(void)::log;
      v521 = os_signpost_id_generate(x_log_get_server_perf(void)::log);
      if (v521 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v514))
      {
        v505 = *(*(v10 + 96) + 24);
        v506 = _MXSignpostMetricsSnapshot();
        *v660 = 67240706;
        *&v660[4] = v505;
        *&v660[8] = 1026;
        *&v660[10] = v548;
        *&v660[14] = 2114;
        *&v660[16] = v506;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v514, OS_SIGNPOST_INTERVAL_BEGIN, v521, "Rendering", "display=%{public,name=display}u update=0x%{public,name=update}x\n%{public, signpost:metrics}@", v660, 0x18u);
      }
    }

    else
    {
      v521 = 0;
      v514 = MEMORY[0x1E69E9C18];
    }

    kdebug_trace();
    v518 = *(*(v10 + 96) + 24);
    os_unfair_lock_lock((v10 + 152));
    v16 = *(v10 + 160);
    *(v10 + 160) = 0;
    os_unfair_lock_unlock((v10 + 152));
    if (v16)
    {
      v17 = 0;
      do
      {
        v18 = v17;
        v17 = v16;
        v16 = v16[1];
        v17[1] = v18;
      }

      while (v16);
      do
      {
        v19 = v17[1];
        (*(*v17 + 16))(v17, v10);
        (*(*v17 + 8))(v17);
        v17 = v19;
      }

      while (v19);
    }

    os_unfair_lock_lock((v10 + 16));
    v21 = *(v10 + 128);
    v22 = *(*(v10 + 96) + 768);
    v23 = atomic_load(v22 + 1);
    if (v23 != 1)
    {
      atomic_store(*&v14, &CA::Render::Context::_begin_time_threshold);
    }

    v552 = v21;
    v538 = v8;
    if (v21)
    {
      v24 = 8 * v21;
      if ((8 * v21) > 0x1000)
      {
        v25 = malloc_type_malloc(8 * v21, 0xBA5BC6E4uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v20);
        v25 = &v513 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v25, v24);
      }

      v29 = 0;
      v26 = 0;
      v30 = 0;
      v31 = *(v10 + 112);
      v28 = 0.0;
      v32 = v552;
      do
      {
        v33 = *(v31 + v29);
        atomic_fetch_add((v33 + 8), 1u);
        *&v25[8 * v30] = v33;
        v34 = *(v33 + 656);
        if (v28 >= v34)
        {
          v35 = *(v33 + 656);
        }

        else
        {
          v35 = v28;
        }

        if (v28 == 0.0)
        {
          v35 = *(v33 + 656);
        }

        if (v34 != 0.0)
        {
          v28 = v35;
        }

        v31 = *(v10 + 112);
        v26 += (*(*(v31 + v29) + 12) >> 17) & 1;
        ++v30;
        v29 += 16;
      }

      while (v32 != v30);
      v27 = v24 > 0x1000;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v28 = 0.0;
    }

    v36 = *(v10 + 176);
    *(v10 + 176) = 0;
    os_unfair_lock_unlock((v10 + 16));
    v515 = (*(*v10 + 48))(v10);
    if (CADeviceNeedsISPWorkaround::once[0] != -1)
    {
      dispatch_once(CADeviceNeedsISPWorkaround::once, &__block_literal_global_116);
    }

    v530 = v25;
    v520 = v11;
    v522 = v27;
    if (CADeviceNeedsISPWorkaround::isp_workaround)
    {
      v37 = *(v10 + 96);
      v38 = v22;
      if (*(v10 + 834) == 1)
      {
        v39 = (*(v37 + 672) & 0x1C00) != 1024;
LABEL_34:
        v40 = *(v37 + 904);
        v554 = v36;
        if ((v40 & 0x10000) != 0)
        {
          if (x_log_get_flipbook(void)::once != -1)
          {
            dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
          }

          v507 = x_log_get_flipbook(void)::log;
          v39 = 0;
          if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *v660 = 0;
            _os_log_impl(&dword_183AA6000, v507, OS_LOG_TYPE_DEFAULT, "entering flipbook, disallowing detaching", v660, 2u);
            v39 = 0;
          }
        }

        v41 = (*(**(v10 + 96) + 2264))(*(v10 + 96));
        v42 = *(v10 + 832);
        if (v42 == 1)
        {
          *(v10 + 832) = 0;
        }

        v537 = HIWORD(v40) & 1;
        v43 = *(v10 + 833);
        *(v10 + 833) = 0;
        v44 = atomic_load(v38 + 1);
        if (!atomic_load(v38))
        {
          v46 = atomic_load(v38 + 1);
          if (v46 == 1)
          {
            v47 = atomic_load(v38 + 3);
            v48 = v552 == v26 ? 0 : v44;
            if (!v47)
            {
              v44 = v48;
            }
          }
        }

        v543 = v38;
        _ZF = v552 == v26 || v530 == 0;
        v523 = v44;
        if (_ZF)
        {
          v527 = 0;
          v50 = 0;
          *&v542[4] = 0;
          v544 = 0;
          v525 = 0;
          v51 = 248;
          v52 = INFINITY;
          v53 = v554;
          goto LABEL_50;
        }

        v527 = 0;
        v550 = 0;
        v546.i32[0] = 0;
        v525 = 0;
        v544 = 0;
        *&v542[8] = 0;
        HIDWORD(v513) = v40;
        LODWORD(v536) = (v40 & 0x10000) == 0;
        LODWORD(v551) = v39 & (v41 ^ 1);
        v553.i32[0] = v551 ^ 1 | v42;
        *v542 = v7 & 1;
        v535 = (*v542 << 8);
        *&v534 = v559;
        v517 = v602;
        v61 = v530 - 8;
        LODWORD(v547) = 3;
        v524.f64[0] = INFINITY;
        v533 = xmmword_183E20F10;
        v532 = xmmword_183E20F20;
        v531 = 0x40000000;
        v516 = 0.01;
        while (1)
        {
          v62 = *(v10 + 96);
          os_unfair_lock_lock((v10 + 16));
          v63 = *(v10 + 288);
          os_unfair_lock_unlock((v10 + 16));
          v64 = (*(*v62 + 336))(v62, *v542 | 8u, v9, v63);
          if (v64)
          {
            v51 = v64;
            v53 = v554;
            if (v64 == 255)
            {
              v199 = (*(**(v10 + 96) + 2272))(*(v10 + 96));
              v52 = v524.f64[0];
              if (v199)
              {
                v200 = *(v10 + 96);
                os_unfair_lock_lock((v10 + 16));
                v201 = *(v10 + 288);
                os_unfair_lock_unlock((v10 + 16));
                v202 = (*(*v200 + 368))(v200, *v542, v9, v201);
                v550 = v550 & 0xFFFF00FFFFFFFFFFLL | (v202 << 40);
                if (!v202)
                {
                  memset(v660, 0, 24);
                  CA::WindowServer::Server::blanked_render_sil_indicators(v660, v9, v10);
                  v59 = *v660;
                  v544 |= *&v660[16];
                  v450 = v53;
                  if (v52 >= *v660)
                  {
                    v501 = v52 <= *v660 || *v660 == 0.0;
                    v502 = *&v542[4];
                    if (!v501)
                    {
                      v502 = 0;
                    }

                    *&v542[4] = *&v660[8] | v502;
                  }

                  else
                  {
                    v59 = v52;
                  }

                  v452 = v543;
                  v551 = 0;
                  v553.i64[0] = 0;
                  goto LABEL_626;
                }

                v51 = v202;
                v544 |= 0x1000000uLL;
                if (v52 >= v9)
                {
                  v553.i64[0] = 0;
                  v551 = 0;
                  v499 = v52 <= v9 || v9 == 0.0;
                  v500 = *&v542[4] | 0x1000000;
                  if (!v499)
                  {
                    v500 = 0x1000000;
                  }

                  *&v542[4] = v500;
                  v60 = 255;
                  v59 = v9;
                  goto LABEL_619;
                }

                v553.i64[0] = 0;
                v551 = 0;
                v60 = 255;
                goto LABEL_307;
              }

              v51 = 255;
              v50 = v550;
            }

            else
            {
              v50 = v550;
              v52 = v524.f64[0];
            }

LABEL_50:
            CA::WindowServer::Server::invalidate(v10, v53);
            v54 = *(v10 + 96);
            v55 = *(v54 + 82);
            v550 = v50 & 0xFFFF00FFFFFFFFFFLL | (v51 << 40);
            if (v55 && CA::WindowServer::Display::is_enabled_for_vsync_render(v54))
            {
              v544 |= 0x1000000uLL;
              v56 = v52 <= v9 || v9 == 0.0;
              v57 = *&v542[4];
              v58 = *&v542[4] | 0x1000000;
              if (!v56)
              {
                v58 = 0x1000000;
              }

              v553.i64[0] = 0;
              v551 = 0;
              if (v52 >= v9)
              {
                v59 = v9;
              }

              else
              {
                v59 = v52;
              }

              if (v52 >= v9)
              {
                v57 = v58;
              }

              *&v542[4] = v57;
              v60 = v51;
              goto LABEL_619;
            }

            v553.i64[0] = 0;
            v551 = 0;
            v60 = v51;
LABEL_307:
            v59 = v52;
            goto LABEL_619;
          }

          v65 = mach_absolute_time();
          v66 = CATimeWithHostTime(v65);
          v67 = *(v10 + 96);
          bzero(v587, 0x570uLL);
          v68 = (v67 + 200);
          LODWORD(v67) = (*(*v67 + 344))(v67);
          v69 = (*(**(v10 + 96) + 352))();
          CA::Render::Update::Update(v587, &v631, 0x2000uLL, v9, v549.i64[0], v548, v67, v69, v68, *(v10 + 184));
          if (!v587[0])
          {
            v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0xF50000000000;
            v59 = v524.f64[0];
            v160 = v554;
            goto LABEL_590;
          }

          v70 = (*(*v10 + 424))(v10);
          if (v70)
          {
            _ZF = v70 == CFRunLoopGetCurrent();
            v71 = v554;
            if (_ZF)
            {
              (*(*v529 + 376))(v529, v526, *v542, *(v10 + 296), v9, v14);
              v525 = 1;
            }
          }

          else
          {
            v71 = v554;
          }

          v72 = *(v10 + 96);
          if (v72[188] != v611)
          {
            v607 |= 4uLL;
            v72[188] = v611;
          }

          v598 = v538;
          if ((v72[160] & 0x100) != 0)
          {
            v73 = (*(*v72 + 144))(v72);
            if (!v73)
            {
              v73 = (*(**(v10 + 96) + 800))(*(v10 + 96));
            }

            v606 = vcvtad_u64_f64(1.0 / ((*(**(v10 + 96) + 776))(*(v10 + 96)) * v73));
            v72 = *(v10 + 96);
          }

          v74 = 32;
          if (!*(v10 + 825))
          {
            v74 = 0;
          }

          v75 = v74 | v629 & 0xFFFFFFFFFFFFFEDFLL | v535;
          v629 = v75;
          if (*(v10 + 826) == 1)
          {
            v76 = (*(*v72 + 1640))(v72);
            v75 = v629;
            v77 = 0x80000;
            if ((v551 & ~v76 & 1) == 0)
            {
              v77 = 0;
            }

            v72 = *(v10 + 96);
          }

          else
          {
            v77 = 0;
          }

          v629 = v75 & 0xFFFFFFFFFFF7FFFFLL | v77;
          v78 = (*(*v72 + 768))(v72);
          v617 = v14;
          v593 = v78;
          v594 = v14;
          v79 = atomic_load(v543 + 1);
          v629 = v629 & 0xFFFFFFFFFFFDFFFFLL | ((v79 == 1) << 17);
          v595 = (*(*v10 + 520))(v10);
          v80 = 512;
          if (!*(v10 + 836))
          {
            v80 = 0;
          }

          v629 = v629 & 0xFFFFFFFFFFFFFDFFLL | v80;
          v81 = (*(**(v10 + 96) + 2216))();
          v82 = 1024;
          if ((v81 & v536) == 0)
          {
            v82 = 0;
          }

          v629 = v629 & 0xFFFFFFFFFFFFFBFFLL | v82;
          v608 = (*(**(v10 + 96) + 1416))();
          (*(**(v10 + 96) + 1520))(v660);
          v601 = *v660;
          v84 = *(v10 + 96);
          if ((HIBYTE(xmmword_1ED4E97EC) & 1) == 0)
          {
            v629 = v629 & 0xFFFFFFFFFFEFFFFFLL | (((v84[160] >> 4) & 1) << 20);
          }

          if ((v84[160] & 0x100) != 0)
          {
            v85 = (*(*v84 + 128))(v84);
            if (v85)
            {
              v86 = atomic_load((*(v85 + 24) + 40));
            }

            else
            {
              v86 = 0;
            }

            v87 = (*(**(v10 + 96) + 776))(*(v10 + 96));
            v88 = (*(**(v10 + 96) + 784))();
            if (v600)
            {
              __assert_rtn("initialize_frame_rate_range_group", "render-updater.cpp", 12597, "_frame_rate_range_group == nullptr");
            }

            v600 = [[CAFrameRateRangeGroup alloc] initWithHeartbeatRate:v88 minimumFrameDuration:1 supportsVRR:0 compatQuantaMode:v86 & 1 serverCompatQuantaMode:v87];
            v89 = (*(**(v10 + 96) + 808))();
            v90 = 0x800000000;
            if (!v89)
            {
              v90 = 0;
            }

            v91 = v629 & 0xFFFFFFF7FFFFFFFFLL | v90;
            v629 = v91;
            v84 = *(v10 + 96);
            if ((v84[160] & 0x100) != 0)
            {
              v629 = v91 | 0x400000000;
            }

            v71 = v554;
          }

          v561 = 0;
          v560[1] = 0;
          v560[0] = 0;
          if (v553.i8[0])
          {
            v629 |= 0x8000uLL;
          }

          if (v71)
          {
            CA::shape_union(v588, v71, v83);
            v84 = *(v10 + 96);
          }

          v92 = (*(*v84 + 536))(v84);
          v93 = 0x200000;
          if ((v92 & (v546.i32[0] ^ 1)) == 0)
          {
            v93 = 0;
          }

          v94 = v629 & 0xFFFFFFFFFF9FFFFFLL | v93;
          v95 = 0x400000;
          if ((v92 & (v546.i32[0] ^ 1)) == 0)
          {
            v95 = 0;
          }

          v629 = v94 | v95;
          if (CADeviceNeedsP3ShapeTracking::once != -1)
          {
            dispatch_once(&CADeviceNeedsP3ShapeTracking::once, &__block_literal_global_53);
          }

          v96 = 0x800000;
          if (!CADeviceNeedsP3ShapeTracking::p3_tracking)
          {
            v96 = 0;
          }

          v629 = v629 & 0xFFFFFFFFFF7FFFFFLL | v96;
          v97 = (*(**(v10 + 96) + 544))();
          v98 = 0x2000000;
          if (v97)
          {
            v98 = 50331648;
          }

          v629 = v98 | v629 & 0xFFFFFFFFFCFFFFFFLL;
          v584[0] = 0u;
          *&v585[0] = 0;
          v585[4] = 0u;
          BYTE3(v585[2]) = 0;
          *(v584 + 12) = v533;
          *(v585 + 8) = v532;
          *(&v585[1] + 1) = 0;
          *(&v585[1] + 15) = 0;
          *(&v585[2] + 4) = 0x100000001;
          *(&v585[2] + 12) = 0u;
          *(&v585[3] + 12) = 0u;
          BYTE12(v585[4]) = 0;
          HIDWORD(v584[1]) = 1065353216;
          LODWORD(v586[0]) = 1065353216;
          *(v586 + 12) = 0;
          *(v586 + 4) = 0;
          DWORD1(v586[1]) = -1;
          (*(**(v10 + 96) + 1072))();
          CA::WindowServer::Display::reconciled_display_attributes(v584, *(v10 + 96));
          CA::Render::Update::set_display_attributes(&v610, v584);
          if (!CA::Render::DisplayAttributes::operator==(v10 + 352, v584))
          {
            v629 |= 0x20000000000uLL;
            v99 = v586[0];
            *(v10 + 448) = v585[4];
            *(v10 + 464) = v99;
            *(v10 + 480) = *&v586[1];
            v100 = v585[1];
            *(v10 + 384) = v585[0];
            *(v10 + 400) = v100;
            v101 = v585[3];
            *(v10 + 416) = v585[2];
            *(v10 + 432) = v101;
            v102 = v584[1];
            *(v10 + 352) = v584[0];
            *(v10 + 368) = v102;
          }

          v618 = v28;
          v558[0] = MEMORY[0x1E69E9820];
          v558[1] = v531;
          v559[0] = ___ZN2CA12WindowServer6Server15render_for_timeEdPK11CVTimeStampyPK17CATimingReferencej_block_invoke;
          v559[1] = &__block_descriptor_tmp_42_17304;
          v559[2] = v10;
          _Block_release(v619);
          v619 = _Block_copy(v558);
          v103 = *(v10 + 96);
          v104 = *(v103 + 872);
          v105 = *(v103 + 876);
          v106 = *(v103 + 880);
          v107 = *(v103 + 884);
          v555 = __PAIR64__(v105, LODWORD(v104));
          v556 = __PAIR64__(v107, v106);
          v108 = __sincosf_stret(v104);
          cosval = v108.__cosval;
          sinval = v108.__sinval;
          v624 = v105;
          v625 = v106;
          v626 = v107;
          *v660 = *(v103 + 888);
          if (v555 != *v660 || v556 != *&v660[8])
          {
            v629 |= 0x800000000000uLL;
            *(v103 + 888) = v104;
            *(v103 + 892) = v105;
            *(v103 + 896) = v106;
            *(v103 + 900) = v107;
          }

          v569[0] = 0;
          v569[1] = 0;
          CA::Render::Fence::BatchWaitLock::BatchWaitLock(v569);
          v110 = v552;
          if (v552)
          {
            v111 = 0;
            v112 = INFINITY;
            v113 = 1.0;
            do
            {
              v114 = *&v61[8 * v110];
              pthread_mutex_lock((v114 + 72));
              if (v43)
              {
                *(v114 + 12) |= 0x2000u;
              }

              CA::Render::Update::add_context(v587, v114);
              if ((v561 & 0x100) == 0)
              {
                CA::WindowServer::get_context_logical_bounds(v114, (&v561 + 1), v560, &v561, v115);
              }

              --v110;
              if (*(v114 + 488) < v112)
              {
                v112 = *(v114 + 488);
              }

              *(v114 + 488) = 0x7FF0000000000000;
              v116 = *(v114 + 584);
              v111 |= (v116 & 0x80) >> 7;
              *(v114 + 584) = v116 & 0xFF7F;
              pthread_mutex_unlock((v114 + 72));
            }

            while (v110);
            v117 = 8;
            if ((v111 & 1) == 0)
            {
              v117 = 0;
            }

            v540 = v117;
            v71 = v554;
          }

          else
          {
            v540 = 0;
            v112 = INFINITY;
            v113 = 1.0;
          }

          CA::Render::Fence::BatchWaitLock::invalidate(v569);
          _Block_release(v619);
          v619 = _Block_copy(0);
          if (v71)
          {
            CA::Render::Update::invalidate_backdrops(v587, v71, 0, 1);
          }

          CA::Render::Update::added_all_contexts(v587, v118, v119);
          v120 = v600;
          if (v600)
          {
            v121 = (v629 >> 36) & 7;
            if (v121 && v121 != 6)
            {
              v122 = v121 > 1;
              if (initialize_velocity_thresholds(void)::once != -1)
              {
                dispatch_once(&initialize_velocity_thresholds(void)::once, &__block_literal_global_19_18974);
              }

              v123 = 0.0;
              if ((v122 - v121) < 0xFFFFFFFFFFFFFFFCLL)
              {
                v124 = 0.0;
                v125 = 0.0;
              }

              else
              {
                v124 = 0.0;
                v125 = 0.0;
                if (has_velocity_thresholds)
                {
                  v126 = (&velocity_threshold_frame_rate_ranges + 12 * (v122 - v121) + 48);
                  LODWORD(v124) = *v126;
                  LODWORD(v123) = v126[1];
                  LODWORD(v125) = v126[2];
                }
              }

              v127 = (v629 >> 36) & 7;
              if (v127 == 1 || v127 == 2 && (v629 & 0x40000000000000) != 0)
              {
                v125 = 0.0;
              }

              [(CAFrameRateRangeGroup *)v120 addFrameRateRange:v124, v123, v125];
            }

            *v660 = xmmword_183E20FF0;
            CA::Render::post_notification(0x3Bu, 0, v660, 0);
            LODWORD(v645.f64[1]) = 0;
            v645.f64[0] = 0.0;
            *&v645.f64[0] = [(CAFrameRateRangeGroup *)v120 arbitratedIntervalRange];
            LODWORD(v645.f64[1]) = v128;
            if ((!*v660 || v660[8] == 1) && ![(CAFrameRateRangeGroup *)v120 hasCompatQuantaIntent])
            {
              (*(**(v10 + 96) + 272))(*(v10 + 96));
            }

            (*(**(v10 + 96) + 2160))(*(v10 + 96));
            (*(**(v10 + 96) + 1984))();
          }

          atomic_store(*&v594, &CA::Render::Context::_begin_time_threshold);
          v129 = (*(&v607 + 1) & 0x180) != 0;
          if (initialized[0] != -1)
          {
            dispatch_once_f(initialized, 0, init_debug);
          }

          v130 = *&dword_1ED4E9690;
          if (*&dword_1ED4E9690 > v113 && *&dword_1ED4E9690 != *&CA::WindowServer::Server::render_for_time(double,CVTimeStamp const*,unsigned long long,CATimingReference const*,unsigned int)::last_desired_headroom)
          {
            CA::WindowServer::Server::render_for_time(double,CVTimeStamp const*,unsigned long long,CATimingReference const*,unsigned int)::last_desired_headroom = dword_1ED4E9690;
            if (BYTE14(xmmword_1ED4E980C) == 1)
            {
              kdebug_trace();
            }

            if ((v628 - v627) <= 0xFF)
            {
              *v660 = 256;
              *&v660[4] = -1;
              *&v660[8] = v130;
              *&v660[12] = v130;
              X::small_vector_base<CA::Render::Update::EDRRequest>::push_back(&v627, v660);
            }
          }

          if (v130 != 0.0)
          {
            goto LABEL_172;
          }

          v131 = v620;
          if ((*(&v607 + 1) & 0x180) != 0 && v620 <= v621)
          {
            v131 = v621;
          }

          if (v131 <= v113 || (*(*(v10 + 96) + 906) & 2) != 0)
          {
            break;
          }

          v129 = 1;
LABEL_173:
          v132 = *(v10 + 96);
          *(v132 + 736) = v131;
          if (v131 > v113 || (*(v132 + 906) & 2) != 0)
          {
            if ((*(v132 + 640) & 4) != 0)
            {
              v133 = 1;
              if ((*(v132 + 906) & 2) == 0 && (byte_1ED4E9864 & 1) == 0)
              {
                v133 = CA::WindowServer::Display::all_clones_are_screen_recording(v132);
                v132 = *(v10 + 96);
              }
            }

            else
            {
              v133 = 1;
            }
          }

          else
          {
            v133 = 0;
          }

          if (BYTE11(xmmword_1ED4E988C))
          {
            v541.i32[0] = 0;
            v137 = 0;
            v134 = 0.0;
            goto LABEL_199;
          }

          if (v129)
          {
            if (v131 >= *(v132 + 728))
            {
              *(v132 + 712) = v9;
              *(v132 + 728) = v131;
            }

            else if (v131 >= *(v132 + 732))
            {
              *(v132 + 720) = v9;
              *(v132 + 732) = v131;
            }
          }

          v134 = *(v132 + 712);
          v135 = v134 + 15.0 < v9;
          if (v134 + 15.0 < v9)
          {
            v136 = *(v132 + 732);
            if (v136 <= v113)
            {
              v541.i32[0] = 0;
              v137 = 0;
              *(v132 + 728) = -1082130432;
LABEL_199:
              v545.i32[0] = 1;
              goto LABEL_200;
            }

            v134 = *(v132 + 720);
            *(v132 + 712) = v134;
            *(v132 + 728) = v136;
            *(v132 + 732) = -1082130432;
            v131 = v136;
          }

          else
          {
            v131 = *(v132 + 728);
          }

          v545.i32[0] = 0;
          v137 = 1;
          v541.i32[0] = v135;
          if (((v129 | v133) & 1) == 0 && v131 > 0.0)
          {
            if (BYTE14(xmmword_1ED4E980C) == 1)
            {
              kdebug_trace();
            }

            if ((v628 - v627) <= 0xFF)
            {
              *v660 = 128;
              *&v660[4] = -1;
              *&v660[8] = v131;
              *&v660[12] = v131;
              X::small_vector_base<CA::Render::Update::EDRRequest>::push_back(&v627, v660);
            }

            v545.i32[0] = 0;
            v132 = *(v10 + 96);
          }

LABEL_200:
          v138 = *(v132 + 904);
          if ((*(*v10 + 128))(v10) && v129 | v133 | v137)
          {
            v140 = v587;
            v141 = v10;
            v142 = 1;
            v139.n128_f32[0] = v131;
          }

          else
          {
            v139.n128_u64[0] = 0;
            v141 = v10;
            v142 = 0;
            v140 = 0;
          }

          (*(*v10 + 512))(v141, v142, (v138 >> 17) & 1, v140, v139);
          v143 = v609;
          v144 = v551;
          if (v609)
          {
            v145 = *(v10 + 96);
            if ((v145[160] & 4) == 0)
            {
              v146 = (*(*v145 + 1416))(v145);
              v143 = v609;
              if (v146)
              {
                v143 = v609 | v146;
                v609 |= v146;
              }
            }
          }

          if (*(v10 + 304) != v143)
          {
            v147 = *(v10 + 96);
            memset(v660, 0, 48);
            CA::Shape::operator=(v660, (v147 + 168));
            CA::shape_union(v588, v660, v148);
            *(v10 + 304) = v609;
          }

          if ((v629 & 0x8000000000) != 0 && (*(**(v10 + 96) + 600))(*(v10 + 96)))
          {
            v149 = *(v10 + 96);
            memset(v660, 0, 48);
            CA::Shape::operator=(v660, (v149 + 168));
            CA::shape_union(v588, v660, v150);
          }

          if (*(v10 + 831) == 1)
          {
            v151 = *(v10 + 96);
            memset(v660, 0, 48);
            CA::Shape::operator=(v660, (v151 + 168));
            CA::shape_union(v588, v660, v152);
            *(v10 + 831) = 0;
          }

          v153 = mach_absolute_time();
          v612 = CATimeWithHostTime(v153) - v66;
          v155 = *(v10 + 96);
          if (HIBYTE(v561) == 1)
          {
            if (CA::WindowServer::Display::set_logical_bounds(v155, v560, v561))
            {
              goto LABEL_220;
            }
          }

          else
          {
            v156 = *(v155 + 904);
            if ((v156 & 8) != 0)
            {
              *(v155 + 184) = 0;
              *(v155 + 192) = 0;
              *(v155 + 904) = v156 & 0xFFFFFFB7;
              if (CA::WindowServer::Display::update_actual_bounds(v155))
              {
LABEL_220:
                memset(v660, 0, 48);
                CA::Shape::operator=(v660, v68);
                CA::shape_union(v588, v660, v157);
                v553.i32[0] = 1;
                goto LABEL_223;
              }
            }
          }

          if (v605 == CA::Render::LayerHost::_seed[0])
          {
            v158 = v547;
            goto LABEL_229;
          }

LABEL_223:
          v158 = v547 - 1;
          if (v547 >= 1)
          {
            if (v554)
            {
              CA::Shape::unref(v554);
            }

            v159 = v588[0];
            if (v588[0])
            {
              v159 = CA::Shape::ref(v588[0], v154);
            }

            v554 = v159;
            v546.i32[0] |= (v607 & 2) == 0;
            v629 |= 0x10uLL;
            goto LABEL_303;
          }

LABEL_229:
          if ((v545.i32[0] | v129 & (v541.i32[0] ^ 1)))
          {
            *&v542[4] = 0;
            v544 = 0;
            v524.f64[0] = INFINITY;
            v160 = v554;
          }

          else
          {
            v524.f64[0] = v134 + 15.0;
            v160 = v554;
            *&v542[4] = 0x80000000000;
            v544 = 0x80000000000;
          }

          (*(**(v10 + 96) + 2016))(*(v10 + 96));
          v162 = v161;
          if ((*(**(v10 + 96) + 2032))() && (v163 = (*(**(v10 + 96) + 752))(*(v10 + 96)), round(100.0 / v163) * v516 == 60.0) && round(v162 / (*(**(v10 + 96) + 752))(*(v10 + 96))) >= 2.0)
          {
            *(v10 + 830) = 1;
            v164 = v607;
          }

          else
          {
            v164 = v607;
            *(v10 + 830) = (v607 & 0x800) != 0;
          }

          if ((v164 & 0x1000104) != 0 || v588[0] && CA::Shape::area(v588[0]) || (*(**(v10 + 96) + 320))(*(v10 + 96)) || (CA::WindowServer::Display::benchmark_mode(0, v192) & 1) != 0 || (v193 = *(v10 + 96), (v193[905] & 0x20) != 0))
          {
            *(*(v10 + 96) + 904) &= ~0x2000u;
            v165 = 1;
          }

          else
          {
            v194 = (*(*v193 + 496))(v193, v603);
            v165 = v194 ^ 1;
            if (v607 & 0x40000) == 0 && (v194)
            {
              v504 = 0xF60000000000;
LABEL_325:
              v203 = v524.f64[0];
              v550 = v550 & 0xFFFF00FFFFFFFFFFLL | v504;
LABEL_573:
              v418 = CA::Render::Update::build_hit_test_tree(v587, 0, v195, 1.0);
              os_unfair_lock_lock((v10 + 340));
              v419 = *(v10 + 344);
              *(v10 + 344) = v418;
              os_unfair_lock_unlock((v10 + 340));
              if (v419)
              {
                CA::Render::HitTestTree::unref(v419);
              }

              if ((*(*v10 + 432))(v10))
              {
                v420 = (*(*v10 + 432))(v10);
                v421 = v589;
                v422 = *v420;
                v423 = v604;
                *(v422 + 159) = v603;
                *(v422 + 160) = v423;
                CA::Render::Update::release_objects(v587);
                v424 = *v420;
                v424[81] = v421;
                (*(*v424 + 264))();
              }

              if (BYTE5(ca_debug_options) == 1)
              {
                CA::WindowServer::print_layer_trees(v517, v589);
              }

              v59 = v590;
              if (v203 >= v590)
              {
                v425 = v203 <= v590 || v590 == 0.0;
                v426 = *&v542[4];
                if (!v425)
                {
                  v426 = 0;
                }

                *&v542[4] = v591 | v426;
              }

              else
              {
                v59 = v203;
              }

              v544 |= v592;
              if ((v599 + 1) >= 2)
              {
                (*(*v10 + 392))(v10);
              }

              (*(**(v10 + 96) + 2008))(*(v10 + 96), v596, v597);
              CA::Render::Fence::BatchWaitLock::invalidate(v569);
LABEL_590:
              v427 = v160;
              (*(**(v10 + 96) + 2024))(*(v10 + 96), v630);
              v428 = *(v10 + 200);
              if (v428)
              {
                v429 = *v428;
                v430 = v604;
                *(v429 + 159) = v603;
                *(v429 + 160) = v430;
                CA::Render::Update::release_objects(v587);
                v431 = *v428;
                v431[81] = v9;
                (*(*v431 + 264))();
              }

              v432 = (*(*v10 + 432))(v10);
              if (v432)
              {
                v434 = v432;
                v435 = *v432;
                v553.i64[0] = *(*v432 + 1256);
                v551 = *(v435 + 1264);
                if ((CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::initialized & 1) == 0)
                {
                  CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::initialized = 1;
                  v660[0] = 0;
                  v436 = *MEMORY[0x1E695E8A8];
                  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PerfWarnings", *MEMORY[0x1E695E8A8], v660);
                  if (v660[0])
                  {
                    CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::enable_warnings = AppBooleanValue != 0;
                  }

                  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PerfTimeThreshold", v436, v660);
                  if (v660[0])
                  {
                    *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::time_threshold = (AppIntegerValue * 0.001);
                  }

                  v439 = CFPreferencesGetAppIntegerValue(@"PerfInputDelayThreshold", v436, v660);
                  if (v660[0])
                  {
                    *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::input_delay_threshold = (v439 * 0.001);
                  }

                  v440 = CFPreferencesGetAppIntegerValue(@"PerfOffscreenThreshold", v436, v660);
                  if (v660[0])
                  {
                    CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::passes_threshold = v440;
                  }
                }

                if (CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::enable_warnings & 1) != 0 || (BYTE10(xmmword_1ED4E97EC))
                {
                  v441 = mach_absolute_time();
                  v442 = CATimeWithHostTime(v441);
                  if (v442 >= *(v10 + 312) + 5.0)
                  {
                    v443 = v612;
                    v444 = v613;
                    if (v616 == 0.0)
                    {
                      v445 = v616;
                    }

                    else
                    {
                      v445 = v589 - v616;
                    }

                    v446 = *v434;
                    v447 = *(*v434 + 1264);
                    v448 = *(v446 + 1272);
                    if (initialized[0] != -1)
                    {
                      dispatch_once_f(initialized, 0, init_debug);
                    }

                    v53 = v427;
                    if (*&dword_1ED4E967C)
                    {
                      *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::time_threshold = (*&dword_1ED4E967C * 0.001);
                    }

                    if (*&dword_1ED4E9680)
                    {
                      *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::input_delay_threshold = (*&dword_1ED4E9680 * 0.001);
                    }

                    v449 = *&dword_1ED4E9684;
                    if (*&dword_1ED4E9684)
                    {
                      CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::passes_threshold = *&dword_1ED4E9684;
                    }

                    else
                    {
                      v449 = CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::passes_threshold;
                    }

                    if (v444 + v443 <= *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::time_threshold && v445 <= *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::input_delay_threshold && v447 <= v449)
                    {
                      goto LABEL_618;
                    }

                    LODWORD(v554) = v447;
                    memset(v660, 0, 24);
                    CA::WindowServer::show_layer_trees(v660, v517, v589);
                    if (*v660)
                    {
                      v497 = CFStringCreateWithCString(0, *v660, 0x8000100u);
                      v498 = v448;
                      if (*v660)
                      {
                        free(*v660);
                        memset(v660, 0, 24);
                      }
                    }

                    else
                    {
                      v498 = v448;
                      v497 = 0;
                    }

                    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CA_CFDictionarySetDouble(Mutable, @"WarningTime", v442);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateTime", v589);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateInputTime", v616);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateInputDelay", v445);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateCreationTime", v612);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateRenderTime", v613);
                    CA_CFDictionarySetInt(Mutable, @"UpdatePrepareLayerCount", v614);
                    CA_CFDictionarySetInt(Mutable, @"UpdatePrepareLayer0Count", v615);
                    CA_CFDictionarySetInt(Mutable, @"RenderOffscreenPasses", v554);
                    CA_CFDictionarySetInt(Mutable, @"RenderShaderCompiles", v498);
                    if (v497)
                    {
                      CFDictionarySetValue(Mutable, @"LayerTree", v497);
                      CFRelease(v497);
                    }

                    *(v10 + 312) = v442;
                    *(v10 + 320) = Mutable;
                    notify_post("com.apple.CoreAnimation.CAWindowServer.Performance");
                  }
                }
              }

              else
              {
                v553.i64[0] = 0;
                v551 = 0;
              }

              v53 = v427;
LABEL_618:
              CA::Render::Update::~Update(v587, v433);
              v60 = 0;
              v51 = BYTE5(v550);
LABEL_619:
              if (!v537 || v51 < 4)
              {
                v450 = v53;
                v452 = v543;
                if (!v552)
                {
LABEL_633:
                  if (v522)
                  {
                    free(v530);
                  }

                  v456 = v450;
                  v457 = v544;
                  if (v537)
                  {
                    v523 = 1;
                  }

                  v458 = atomic_load(v452 + 3);
                  (*(*v10 + 184))(v10, v523, v458);
                  if (v456)
                  {
                    CA::Shape::unref(v456);
                  }

                  v459 = *&v542[4];
                  if (v552 == v26 || !*(*(v10 + 96) + 656) || (v460 = atomic_load(v452 + 1)) == 0 || (v461 = atomic_load(v452 + 5)) == 0)
                  {
                    (*(*v10 + 496))(v10);
                  }

                  if (xmmword_1ED4E97DC == 1)
                  {
                    v457 |= 0x2000000000000000uLL;
                    if (v59 >= v9)
                    {
                      if (v59 <= v9 || v9 == 0.0)
                      {
                        v459 |= 0x2000000000000000uLL;
                      }

                      else
                      {
                        v459 = 0x2000000000000000;
                      }

                      v59 = v9;
                    }
                  }

                  v462 = atomic_load(v452 + 1);
                  if (v462 == 1 && (v463 = atomic_load(v452 + 5), v463 == 1))
                  {
                    if (!atomic_load(v452 + 3))
                    {
                      v465 = (*(**(v10 + 96) + 320))(*(v10 + 96));
                      if (v59 <= v9 || v9 == 0.0)
                      {
                        v467 = v459;
                      }

                      else
                      {
                        v467 = 0;
                      }

                      v468 = v465 | v467;
                      if (v59 >= v9)
                      {
                        v469 = v9;
                      }

                      else
                      {
                        v469 = v59;
                      }

                      if (v59 < v9)
                      {
                        v468 = v459;
                      }

                      if (v465)
                      {
                        v59 = v469;
                        v459 = v468;
                        v457 |= v465;
                      }
                    }
                  }

                  else if (((*(**(v10 + 96) + 2272))(*(v10 + 96)) & 1) == 0)
                  {
                    v457 |= 0x40000uLL;
                    if (v59 <= v9 + 0.1)
                    {
                      if (v59 >= v9 + 0.1 || v9 + 0.1 == 0.0)
                      {
                        v459 |= 0x40000uLL;
                      }

                      else
                      {
                        v459 = 0x40000;
                      }

                      v59 = v9 + 0.1;
                    }

                    v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0xF70000000000;
                  }

                  v471 = *(*(v10 + 96) + 48);
                  pthread_mutex_unlock((v10 + 24));
                  *v660 = v59;
                  *&v660[8] = v459;
                  *&v660[16] = v457;
                  (*(*v10 + 176))(v10, v660, v9);
                  v472 = atomic_load(v452 + 3);
                  if (v472 && v471)
                  {
                    *v660 = 0;
                    *&v660[8] = vdupq_n_s64(0x80000uLL);
                    (*(*v471 + 176))(v471, v660, 0.0);
                  }

                  if (BYTE6(ca_debug_options) == 1)
                  {
                    memset(v660, 0, 24);
                    CA::Render::show_statistics(v660);
                    if (x_log_get_windowserver(void)::once != -1)
                    {
                      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                    }

                    v509 = x_log_get_windowserver(void)::log;
                    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      v510 = x_stream_get(v660);
                      v631 = 136315138;
                      v632 = v510;
                      _os_log_impl(&dword_183AA6000, v509, OS_LOG_TYPE_DEFAULT, "render_for_time statistics:\n%s", &v631, 0xCu);
                    }

                    if (*v660)
                    {
                      free(*v660);
                    }
                  }

                  CA::Render::collect(0, v9);
                  *v660 = 0;
                  *&v660[8] = 0;
                  mach_get_times();
                  v473 = *&v660[8];
                  pthread_mutex_lock((v10 + 528));
                  v474 = *(v10 + 600);
                  v475 = *(v10 + 592);
                  v476 = &v474[-v475];
                  v477 = 0xCCCCCCCCCCCCCCCDLL * (&v474[-v475] >> 3);
                  v478 = *(v10 + 616);
                  if (v477 == v478)
                  {
                    if (v474 != (v475 + 40))
                    {
                      memmove(*(v10 + 592), (v475 + 40), &v474[-v475 - 42]);
                      v474 = *(v10 + 600);
                      v475 = *(v10 + 592);
                    }

                    if (v474 <= v475)
                    {
                      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
                    }

                    v474 -= 40;
                    *(v10 + 600) = v474;
                    v478 = *(v10 + 616);
                    v476 = &v474[-v475];
                    v477 = 0xCCCCCCCCCCCCCCCDLL * (&v474[-v475] >> 3);
                  }

                  v479 = v477 + 1;
                  if (v478 < v479)
                  {
                    v480 = *(v10 + 608);
                    v481 = (v478 + 1) | ((v478 + 1) >> 1) | (((v478 + 1) | ((v478 + 1) >> 1)) >> 2);
                    v482 = v481 | (v481 >> 4) | ((v481 | (v481 >> 4)) >> 8);
                    v483 = v482 | (v482 >> 16) | ((v482 | (v482 >> 16)) >> 32);
                    if (v483 + 1 > v479)
                    {
                      v484 = v483 + 1;
                    }

                    else
                    {
                      v484 = v479;
                    }

                    v485 = malloc_type_malloc(40 * v484, 0x100004053E81896uLL);
                    v486 = v485;
                    v487 = *(v10 + 592);
                    v488 = *(v10 + 600);
                    if (v487 != v488)
                    {
                      v489 = v485;
                      do
                      {
                        v490 = *v487;
                        v491 = v487[1];
                        *(v489 + 4) = *(v487 + 4);
                        *v489 = v490;
                        *(v489 + 1) = v491;
                        v489 += 40;
                        v487 = (v487 + 40);
                      }

                      while (v487 != v488);
                    }

                    if (v475 != v480)
                    {
                      free(*(v10 + 592));
                    }

                    *(v10 + 592) = v486;
                    v474 = &v476[v486];
                    *(v10 + 600) = &v476[v486];
                    *(v10 + 616) = v484;
                  }

                  v492 = v527;
                  *v474 = v528;
                  *(v474 + 1) = v473;
                  *(v474 + 2) = v492;
                  LODWORD(v492) = v518;
                  *(v474 + 6) = v548;
                  *(v474 + 7) = v492;
                  v493 = BYTE5(v550);
                  *(v474 + 4) = v550;
                  *(v10 + 600) += 40;
                  pthread_mutex_unlock((v10 + 528));
                  v494 = v521;
                  if (v521 + 1 >= 2 && os_signpost_enabled(v514))
                  {
                    v511 = CA::WindowServer::Server::RenderIntervalInfo::render_status_to_legacy_reason_code(v493);
                    v512 = _MXSignpostMetricsSnapshot();
                    *v660 = 67240450;
                    *&v660[4] = v511;
                    *&v660[8] = 2114;
                    *&v660[10] = v512;
                    _os_signpost_emit_with_name_impl(&dword_183AA6000, v514, OS_SIGNPOST_INTERVAL_END, v494, "Rendering", "reason=%{public,name=reason}d\n%{public, signpost:metrics}@", v660, 0x12u);
                  }

                  kdebug_trace();
                  v495 = mach_absolute_time();
                  v11 = v520;
                  qword_1EA850F08 += v495 - v519;
                  if (v525)
                  {
                    (*(*v529 + 384))(v529);
                  }

                  goto LABEL_694;
                }

LABEL_629:
                v453 = v530;
                v454 = v552;
                do
                {
                  v455 = *v453;
                  if (atomic_fetch_add((*v453 + 8), 0xFFFFFFFF) == 1)
                  {
                    (*(*v455 + 16))(v455);
                  }

                  v453 += 8;
                  --v454;
                }

                while (v454);
                goto LABEL_633;
              }

              if (x_log_get_flipbook(void)::once != -1)
              {
                dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
              }

              v450 = v53;
              v451 = x_log_get_flipbook(void)::log;
              if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                *v660 = 67109376;
                *&v660[4] = v60;
                *&v660[8] = 1024;
                *&v660[10] = v51;
                _os_log_impl(&dword_183AA6000, v451, OS_LOG_TYPE_DEFAULT, "non-detached render failed with can_update_status 0x%x, render_status 0x%x", v660, 0xEu);
              }

              v537 = 1;
              v452 = v543;
LABEL_626:
              if (!v552)
              {
                goto LABEL_633;
              }

              goto LABEL_629;
            }
          }

          if (!(*(**(v10 + 96) + 216))(*(v10 + 96)) || ((*(**(v10 + 96) + 328))(*(v10 + 96), v587) & 1) != 0)
          {
            if (CA::WindowServer::Display::is_enabled_for_vsync_render(*(v10 + 96)))
            {
              v544 |= 0x40000uLL;
              v203 = v524.f64[0];
              if (v524.f64[0] >= v9)
              {
                v204 = v524.f64[0] <= v9 || v9 == 0.0;
                v205 = *&v542[4] | 0x40000;
                if (!v204)
                {
                  v205 = 0x40000;
                }

                *&v542[4] = v205;
                v203 = v9;
              }

              v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0xF70000000000;
              CA::WindowServer::Server::invalidate(v10, v588[0]);
              goto LABEL_573;
            }

            v504 = 0xFF0000000000;
            goto LABEL_325;
          }

          v166 = mach_absolute_time();
          v167 = CATimeWithHostTime(v166);
          if (v165)
          {
            v168 = 0;
          }

          else
          {
            v168 = 8;
          }

          v557 = v168;
          (*(**(v10 + 96) + 400))();
          v629 = v629 & 0xFFFFFFFFFFFFFFF7 | v540;
          if ((*&v112 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v616 = v112;
            CAHostTimeWithTime(v112);
            kdebug_trace();
          }

          if (v602[1] == v517)
          {
            v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0x20000000000;
            goto LABEL_327;
          }

          os_unfair_lock_lock((v10 + 16));
          v169 = *(v10 + 288);
          *(v10 + 288) = v9;
          os_unfair_lock_unlock((v10 + 16));
          if (v169 != 0.0)
          {
            if (v600)
            {
              *v660 = 0;
              v170 = [(CAFrameRateRangeGroup *)v600 reasonsWithCount:v660];
              if (v170)
              {
                (*(**(v10 + 96) + 1992))(*(v10 + 96), v170, *v660, v9, v169);
              }
            }
          }

          if (HIBYTE(ca_debug_options))
          {
            CARecordFrame(0, 0, 0, 0, v9, 0.0, 0.0);
LABEL_327:
            v206 = (*(**(v10 + 96) + 408))(*(v10 + 96), v587, v557, 0);
            v203 = v524.f64[0];
            v207 = HIDWORD(v513);
            if ((v206 & 0x40000000000) != 0)
            {
              *v660 = 0;
              *&v660[8] = vdupq_n_s64(0x40000000000uLL);
              (*(*v10 + 176))(v10, v660, 0.0);
            }

            if ((v206 & 0xFFFFFBFFFFFFFFFFLL) != 0)
            {
              v544 |= 0x2000000uLL;
              if (v203 >= v9)
              {
                v208 = v203 <= v9 || v9 == 0.0;
                v209 = *&v542[4] | 0x2000000;
                if (!v208)
                {
                  v209 = 0x2000000;
                }

                *&v542[4] = v209;
                v203 = v9;
              }

              *(*(v10 + 96) + 904) |= 0x2000u;
              v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0xF90000000000;
              if ((v206 & 0x1000000) != 0)
              {
                *(v10 + 831) = 1;
              }
            }

            else
            {
              v537 = 0;
              if ((v207 & 0x10000) != 0)
              {
                *(*(v10 + 96) + 904) &= ~0x10000u;
              }
            }

            if (*(v10 + 504) != *(v10 + 512))
            {
              *&v533 = (*(*v10 + 432))(v10);
              if (v533)
              {
                v210 = v589;
                v538 = CAHostTimeWithTime(v589);
                v212 = *(v10 + 504);
                v211 = *(v10 + 512);
                if (v212 != v211)
                {
                  v540 = v671;
                  v535 = *v533;
                  v213 = 1.0;
                  v532 = xmmword_183E20E00;
                  v214 = 1.0;
                  v215.f64[0] = NAN;
                  v215.f64[1] = NAN;
                  v546 = vnegq_f64(v215);
                  v539 = v211;
                  v531 = &v651;
                  while (1)
                  {
                    stream_and_lock = CA::Render::ContentStream::get_or_create_stream_and_lock(*v212, 0, 0);
                    if (stream_and_lock)
                    {
                      break;
                    }

LABEL_558:
                    v212 += 52;
                    if (v212 == v211)
                    {
                      goto LABEL_561;
                    }
                  }

                  v221 = stream_and_lock;
                  if (*(stream_and_lock + 408) != 1)
                  {
                    goto LABEL_557;
                  }

                  v222 = *(v212 + 17);
                  if (v222 > 0.0 && v210 - *(stream_and_lock + 49) < v222)
                  {
                    goto LABEL_557;
                  }

                  v551 = stream_and_lock;
                  v223 = v540;
                  *(v540 + 224) = 0u;
                  *(v223 + 15) = 0u;
                  *(v223 + 12) = 0u;
                  *(v223 + 13) = 0u;
                  *(v223 + 10) = 0u;
                  *(v223 + 11) = 0u;
                  *(v223 + 8) = 0u;
                  *(v223 + 9) = 0u;
                  *(v223 + 6) = 0u;
                  *(v223 + 7) = 0u;
                  *(v223 + 4) = 0u;
                  *(v223 + 5) = 0u;
                  *(v223 + 2) = 0u;
                  *(v223 + 3) = 0u;
                  *v223 = 0u;
                  *(v223 + 1) = 0u;
                  v667 = v223;
                  v668 = v223;
                  v669 = v223;
                  v224 = *(v212 + 10);
                  v225 = *(v212 + 11);
                  v226 = v225 - v224;
                  v670 = 32;
                  if (v226 >= 0x21)
                  {
                    X::small_vector_base<X::Ref<CA::Render::Context>>::grow(&v667, v226);
                    v224 = *(v212 + 10);
                    v225 = *(v212 + 11);
                  }

                  while (v224 != v225)
                  {
                    v227 = CA::Render::Context::context_by_id(*v224);
                    if (v227)
                    {
                      v228 = v227;
                      v229 = v668;
                      v230 = v668 - v667 + 1;
                      if (v670 < v230)
                      {
                        X::small_vector_base<X::Ref<CA::Render::Context>>::grow(&v667, v230);
                        v229 = v668;
                      }

                      *v229 = v228;
                      v668 = (v229 + 1);
                    }

                    ++v224;
                  }

                  v231 = v551;
                  if (*(v551 + 400) && (xmmword_1ED4E97DC & 1) == 0)
                  {
                    v232 = v667;
                    v233 = v668;
                    while (v232 != v233)
                    {
                      v234 = *v232;
                      pthread_mutex_lock((*v232 + 72));
                      v235 = CA::Render::Context::root_layer_handle(*v232);
                      if (v235 && v235[22] >= v603)
                      {
                        pthread_mutex_unlock((v234 + 72));
                        v231 = v551;
                        goto LABEL_367;
                      }

                      pthread_mutex_unlock((v234 + 72));
                      ++v232;
                    }

                    memset(&v660[24], 0, 32);
                    *v660 = v538;
                    *&v660[8] = CAHostTimeWithTime(v617);
                    v236 = *(v551 + 404);
                    *&v660[16] = 2;
                    *&v660[20] = v236;
                    CA::Render::ContentStream::produce_surface(v551, 0, v660, 0);
                    v160 = v554;
LABEL_548:
                    v405 = v667;
                    v406 = v668;
                    if (v667 != v668)
                    {
                      do
                      {
                        v407 = *v405;
                        if (*v405 && atomic_fetch_add(v407 + 2, 0xFFFFFFFF) == 1)
                        {
                          (*(*v407 + 16))(v407);
                        }

                        ++v405;
                      }

                      while (v405 != v406);
                      v405 = v667;
                    }

                    v221 = v551;
                    if (v405 != v669)
                    {
                      free(v405);
                    }

                    v211 = v539;
LABEL_557:
                    pthread_mutex_unlock(v221);
                    goto LABEL_558;
                  }

LABEL_367:
                  v567 = 0uLL;
                  v568 = 0;
                  v237 = v231[41];
                  if (v231[40] == v237)
                  {
                    v238 = 0;
                  }

                  else
                  {
                    v567 = *(v237 - 24);
                    v568 = *(v237 - 8);
                    v231[41] = v237 - 24;
                    if (v231[46] != v231[47])
                    {
                      CA::Render::free_pending_names(v535, (v551 + 368));
                    }

                    v238 = v567;
                    if (!v567)
                    {
                      __assert_rtn("get_next_surface", "render-content-stream.cpp", 438, "surf.iosurface");
                    }

                    if (!v568)
                    {
                      v568 = (*(*v535 + 56))(v535, v567);
                    }

                    v231 = v551;
                    std::vector<CA::Render::ContentStreamSurface>::push_back[abi:nn200100](v551 + 344, &v567);
                  }

                  v565 = 0uLL;
                  v566 = 0;
                  if (!v231[37])
                  {
                    __assert_rtn("get_intermediate_surface", "render-content-stream.cpp", 451, "_intermediate_surf.iosurface");
                  }

                  if (!v231[39])
                  {
                    v231[39] = (*(*v535 + 56))(v535);
                  }

                  v239 = *(v231 + 37);
                  v565 = v239;
                  v566 = v231[39];
                  v240 = DWORD2(v567);
                  if (!DWORD2(v567) || !DWORD2(v565))
                  {
                    ++*(v551 + 404);
                    v160 = v554;
                    goto LABEL_548;
                  }

                  *&v239 = *(v212 + 2);
                  v536 = v239;
                  v241 = v667;
                  v242 = v668;
                  if ((v607 & 0x84002) != 0)
                  {
LABEL_381:
                    v583 = 0;
                    v243 = 0uLL;
                    v581 = 0u;
                    v582 = 0u;
                    v579 = 0u;
                    v580 = 0u;
                    v577 = 0u;
                    v578 = 0u;
                    v575 = 0u;
                    v576 = 0u;
                    v574 = 0u;
                    goto LABEL_382;
                  }

                  if (v667 != v668)
                  {
                    v254 = v667;
                    while (*(*v254 + 161) == *(*(v10 + 96) + 24) && (*(*v254 + 13) & 2) != 0)
                    {
                      if (++v254 == v668)
                      {
                        goto LABEL_404;
                      }
                    }

                    goto LABEL_381;
                  }

LABEL_404:
                  if (*(v212 + 19) != *(v212 + 18))
                  {
                    goto LABEL_381;
                  }

                  v255 = *(v212 + 7);
                  v583 = 0;
                  v243 = 0uLL;
                  v581 = 0u;
                  v582 = 0u;
                  v579 = 0u;
                  v580 = 0u;
                  v577 = 0u;
                  v578 = 0u;
                  v575 = 0u;
                  v576 = 0u;
                  v574 = 0u;
                  if (!v255)
                  {
                    v253 = 1;
                    v243.i64[0] = *((*(**(v10 + 96) + 464))(*(v10 + 96), 1) + 56);
                    v553 = v243;
                    v243.i64[1] = 0;
                    v549 = 0u;
                    goto LABEL_408;
                  }

LABEL_382:
                  if (v667 != v668)
                  {
                    v549 = v243;
                    v553 = v243;
                    while (1)
                    {
                      v244 = CA::Render::Context::root_layer_handle(*v241);
                      if (!v244)
                      {
                        goto LABEL_396;
                      }

                      v245 = *(v244 + 2);
                      if (!v245)
                      {
                        goto LABEL_396;
                      }

                      CA::Render::Layer::frame(v660, v245, 0);
                      v218.i64[1] = *&v660[24];
                      v243.i64[0] = *&v660[24];
                      if (*&v660[16] > *&v660[24])
                      {
                        v243.i64[0] = *&v660[16];
                      }

                      if (*v243.i64 < 1073741820.0)
                      {
                        __asm { FMOV            V3.2D, #0.5 }

                        v243 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(v546, _Q3, *v660), *v660));
                        *v243.i8 = vmovn_s64(v243);
                        v249 = vaddq_f64(*v660, *&v660[16]);
                        v218 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(v546, _Q3, v249), v249));
                        *v218.i8 = vsub_s32(vmovn_s64(v218), *v243.i8);
                      }

                      else
                      {
                        *v243.i8 = vdup_n_s32(0xE0000001);
                        v218.i64[0] = 0xC0000000C0000000;
                      }

                      *(&v219 + 1) = v553.i64[1];
                      *&v219 = vclez_s32(*v553.i8);
                      v250 = vpmax_u32(*&v219, *&v219).u32[0];
                      *&v219 = vclez_s32(*v218.i8);
                      v251 = vpmax_u32(*&v219, *&v219).u32[0];
                      if ((v250 & 0x80000000) != 0)
                      {
                        if ((v251 & 0x80000000) == 0)
                        {
                          goto LABEL_395;
                        }
                      }

                      else if ((v251 & 0x80000000) == 0)
                      {
                        *(&v219 + 1) = v553.i64[1];
                        v252 = vadd_s32(*v243.i8, *v218.i8);
                        *v243.i8 = vmin_s32(*v549.i8, *v243.i8);
                        *v218.i8 = vsub_s32(vmax_s32(vadd_s32(*v549.i8, *v553.i8), v252), *v243.i8);
LABEL_395:
                        v549 = v243;
                        v243.i64[0] = v218.i64[0];
                        v553 = v243;
                      }

LABEL_396:
                      if (++v241 == v242)
                      {
                        v253 = 0;
                        goto LABEL_408;
                      }
                    }
                  }

                  v253 = 0;
                  v549 = v243;
                  v553 = v243;
LABEL_408:
                  v256 = *(v212 + 72);
                  v257 = *(v212 + 73);
                  v243.i64[0] = 1.0;
                  v218.i64[0] = 1.0;
                  LODWORD(v547) = v256 | v257;
                  if ((v256 | v257))
                  {
                    v258 = v257;
                    *&v219 = 1.0;
                    if (v257)
                    {
                      v259 = vdiv_f32(vcvt_f32_s32(*&v536), vcvt_f32_s32(*v553.i8));
                      if (v259.f32[1] < v259.f32[0])
                      {
                        v259.f32[0] = v259.f32[1];
                      }

                      if (v259.f32[0] > v213)
                      {
                        v259.f32[0] = v213;
                      }

                      *&v219 = v259.f32[0];
                    }

                    if (v256)
                    {
                      v260.i64[0] = v553.i32[0];
                      v260.i64[1] = v553.i32[1];
                      v220 = vdupq_lane_s64(v219, 0);
                      v261 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_s64(v260), *&v219));
                      if (v261.f32[0] != 0.0)
                      {
                        *(&v219 + 1) = *(&v536 + 1);
                        v262.f32[0] = v536;
                        v263 = v261.f32[1] == 0.0 || v261.f32[0] == v262.f32[0];
                        if (!v263 && v261.f32[1] != SDWORD1(v536))
                        {
                          v262.f32[1] = SDWORD1(v536);
                          v220 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(v262, v261)), *&v219);
                        }
                      }

                      *&v219 = v220.f64[1];
                      if (v257)
                      {
                        if (v220.f64[1] >= v220.f64[0])
                        {
                          *&v219 = v220.f64[0];
                        }

                        goto LABEL_428;
                      }
                    }

                    else
                    {
LABEL_428:
                      *&v220.f64[0] = v219;
                    }

                    v574 = v532;
                    v575 = 0uLL;
                    v265.f64[1] = 1.0;
                    v576 = xmmword_183E20E60;
                    v577 = 0u;
                    v578 = 0u;
                    v545 = v219;
                    if (v220.f64[0] == *&v219)
                    {
                      *&v582 = v220.f64[0];
                      *(&v582 + 1) = v214 / v220.f64[0];
                      v266 = 8 * (v220.f64[0] != v214);
                      v267 = v220.f64[0];
                    }

                    else
                    {
                      __asm { FMOV            V1.2D, #1.0 }

                      v582 = _Q1;
                      v266 = 16;
                      v267 = *&v219;
                    }

                    *(&v579 + 1) = *(&v532 + 1);
                    v580 = 0uLL;
                    v581 = xmmword_183E20E60;
                    *&v574 = v220.f64[0];
                    *(&v576 + 1) = v267;
                    *&v579 = 0x3FF0000000000000;
                    v265.f64[0] = -v549.i32[0];
                    LOBYTE(v583) = v266;
                    v541 = v220;
                    v269 = CA::Transform::translate(&v574, v265, -v549.i32[1], 0.0);
                    if (v258)
                    {
                      v269.f64[0] = trunc((v536 - *v541.i64 * v553.i32[0]) * 0.5 / *v541.i64);
                      CA::Transform::translate(&v574, v269, trunc((SDWORD1(v536) - *v545.i64 * v553.i32[1]) * 0.5 / *v545.i64), 0.0);
                    }

                    v243 = v545;
                    v218 = v541;
                  }

                  v541 = v218;
                  *&v564 = 0;
                  *(&v564 + 1) = v536;
                  v270 = v212[8];
                  v545 = v243;
                  if (v270 && v212[9] && (*v660 = vcvt_f32_u32(*(v212 + 6)), CA::Transform::apply_to_point2(&v574, v660, v217), v272 = vclez_s32(*(&v564 + 8)), v273 = vpmax_u32(v272, v272), (v273 & 0x80000000) == 0))
                  {
                    LODWORD(v273) = v212[8];
                    LODWORD(v271) = v212[9];
                    v274 = (*v541.i64 * v273);
                    v275 = (*v545.i64 * v271);
                    v276 = vclez_s32(__PAIR64__(v275, v274));
                    if ((vpmax_u32(v276, v276).u32[0] & 0x80000000) != 0 || (v277 = vcvt_s32_f32(*v660), *&v278 = vmax_s32(v277, 0), v279 = vsub_s32(vmin_s32(*(&v564 + 8), vadd_s32(__PAIR64__(v275, v274), v277)), *&v278), v280 = vclez_s32(v279), (vpmax_u32(v280, v280).u32[0] & 0x80000000) != 0))
                    {
                      *&v278 = 0;
                      *(&v564 + 1) = 0;
                    }

                    else
                    {
                      *(&v278 + 1) = v279;
                      v564 = v278;
                    }
                  }

                  else
                  {
                    *&v278 = 0;
                  }

                  v281 = v212[12];
                  if (v281)
                  {
                    v282 = v212[13];
                    if (v282)
                    {
                      v283 = vclez_s32(*(&v564 + 8));
                      if ((vpmax_u32(v283, v283).u32[0] & 0x80000000) == 0)
                      {
                        v284 = vclez_s32(__PAIR64__(v282, v281));
                        if ((vpmax_u32(v284, v284).u32[0] & 0x80000000) != 0 || (v285 = *(v212 + 10), v286 = vadd_s32(*&v278, *(&v564 + 8)), *&v278 = vmax_s32(*&v278, v285), v287 = vsub_s32(vmin_s32(v286, vadd_s32(v285, __PAIR64__(v282, v281))), *&v278), v288 = vclez_s32(v287), (vpmax_u32(v288, v288).u32[0] & 0x80000000) != 0))
                        {
                          *(&v564 + 1) = 0;
                        }

                        else
                        {
                          *(&v278 + 1) = v287;
                          v564 = v278;
                        }
                      }
                    }
                  }

                  if (v253)
                  {
                    v289 = (*(**(v10 + 96) + 464))(*(v10 + 96), 1);
                    v292 = CA::WindowServer::IOSurface::wrap_buffer(*(v10 + 96), v238, 0, 0);
                    v295 = v212[8];
                    v296 = v212[9];
                    if (v295)
                    {
                      v297 = v296 == 0;
                    }

                    else
                    {
                      v297 = 1;
                    }

                    v298 = v297;
                    LODWORD(v293.f64[0]) = v289[14];
                    LODWORD(v294) = v289[15];
                    v293.f64[0] = *&v293.f64[0];
                    v299 = v294;
                    v645 = 0uLL;
                    v646.f64[0] = v293.f64[0];
                    v646.f64[1] = v299;
                    v300 = 0.0;
                    v301 = 0.0;
                    if (!v297)
                    {
                      LODWORD(v293.f64[0]) = v212[6];
                      LODWORD(v299) = v212[7];
                      v301 = *&v293.f64[0];
                      v300 = *&v299;
                      v293.f64[0] = v295;
                      v299 = v296;
                      v645.f64[0] = v301;
                      v645.f64[1] = v300;
                      v646.f64[0] = v295;
                      v646.f64[1] = v296;
                    }

                    v302 = v212[12];
                    v303 = v212[13];
                    if (v302)
                    {
                      v304 = v303 == 0;
                    }

                    else
                    {
                      v304 = 1;
                    }

                    v305 = v304;
                    if (v304)
                    {
                      goto LABEL_517;
                    }

                    LODWORD(v526) = v305;
                    LODWORD(v534) = v298;
                    *&v536 = v210;
                    v306 = v203;
                    v307 = v302;
                    v308 = v303;
                    v293.f64[0] = *(v212 + 5);
                    v524 = v293;
                    v309 = LODWORD(v293.f64[0]);
                    v310 = HIDWORD(v293.f64[0]);
                    *v660 = v574;
                    *&v660[16] = v575;
                    *&v660[32] = v576;
                    *&v660[48] = v577;
                    v661 = v578;
                    v662 = v579;
                    v663 = v580;
                    v664 = v581;
                    v665 = v582;
                    v666 = v583 & 0x1F;
                    CA::Transform::invert(v660, v290, v291);
                    *&v633.f64[0] = vcvt_f32_u32(*&v524.f64[0]);
                    *&v311 = v309 + v307;
                    *&v312 = v310 + v308;
                    *&v570[0].f64[0] = __PAIR64__(v312, v311);
                    CA::Transform::apply_to_point2(v660, v633.f64, v313);
                    CA::Transform::apply_to_point2(v660, v570[0].f64, v314);
                    v293 = v646;
                    v315 = vclezq_f64(v646);
                    if ((vorrq_s8(vdupq_laneq_s64(v315, 1), v315).u64[0] & 0x8000000000000000) != 0)
                    {
                      v203 = v306;
                      v210 = *&v536;
                      v213 = 1.0;
                      v214 = 1.0;
                    }

                    else
                    {
                      v316 = vceqz_f32(vsub_f32(*&v633.f64[0], *&v570[0].f64[0]));
                      v317.i64[0] = v316.i32[0];
                      v317.i64[1] = v316.i32[1];
                      v203 = v306;
                      v213 = 1.0;
                      v214 = 1.0;
                      if ((vorrq_s8(vdupq_laneq_s64(v317, 1), v317).u64[0] & 0x8000000000000000) == 0)
                      {
                        v318 = vcvtq_f64_f32(*&v633.f64[0]);
                        v319 = vmaxnmq_f64(v645, v318);
                        v293 = vsubq_f64(vminnmq_f64(vaddq_f64(v645, v646), vaddq_f64(v318, vcvtq_f64_f32(vabd_f32(*&v633.f64[0], *&v570[0].f64[0])))), v319);
                        v320 = vclezq_f64(v293);
                        v210 = *&v536;
                        v298 = v534;
                        v305 = v526;
                        if ((vorrq_s8(vdupq_laneq_s64(v320, 1), v320).u64[0] & 0x8000000000000000) != 0)
                        {
                          v300 = v645.f64[1];
                          v646 = 0uLL;
                          v293 = 0uLL;
                        }

                        else
                        {
                          v645 = v319;
                          v646 = v293;
                          v300 = v319.f64[1];
                        }

LABEL_516:
                        v301 = v645.f64[0];
                        v299 = v293.f64[1];
LABEL_517:
                        *v660 = v301;
                        *&v660[8] = v300;
                        *&v660[16] = v293.f64[0];
                        *&v660[24] = v299;
                        if (v547)
                        {
                          *&v359 = v301;
                          *&v360 = v300;
                          *&v633.f64[0] = __PAIR64__(v360, v359);
                          *&v361 = v293.f64[0] + v301;
                          *&v362 = v299 + v300;
                          *&v570[0].f64[0] = __PAIR64__(v362, v361);
                          CA::Transform::apply_to_point2(&v574, v633.f64, v291);
                          CA::Transform::apply_to_point2(&v574, v570[0].f64, v363);
                          v364 = 0;
                          *v660 = vcvtq_f64_f32(*&v633.f64[0]);
                          *&v660[16] = vcvtq_f64_f32(vabd_f32(*&v633.f64[0], *&v570[0].f64[0]));
                        }

                        else
                        {
                          v364 = v298 & v305;
                        }

                        v365 = (*(**(v10 + 96) + 1848))(*(v10 + 96));
                        if (!v365)
                        {
                          v365 = CAGetColorSpace(36);
                        }

                        if ((*(*v535 + 656))(v535, v292[16]))
                        {
                          if (v365 == *(v551 + 272))
                          {
                            goto LABEL_526;
                          }

                          v366 = CGColorSpaceEqualToColorSpaceIgnoringRange();
                          if ((v364 | v366))
                          {
                            if (v366)
                            {
LABEL_526:
                              v367 = v535;
                              v368 = (*(*v535 + 1016))(v535, v289, 0);
                              v369 = (*(*v367 + 1016))(v367, v292, 1);
                              (*(*v367 + 776))(v367, v369, v368, 1, 0, v660, &v645);
                              (*(*v367 + 456))(v367, 0);
                              goto LABEL_530;
                            }

LABEL_528:
                            v370 = (*(*v289 + 168))(v289);
                            v371 = (*(*v292 + 168))(v292);
                            CA::VideoToolbox::copy_surface(*(v551 + 280), v370, v371);
LABEL_530:
                            CA::WindowServer::Surface::unref(v292);
                            v378 = 0;
                            v547 = 0u;
                            v534 = 0u;
                            v160 = v554;
LABEL_540:
                            v649 = 0;
                            *&v645.f64[0] = v538;
                            *&v645.f64[1] = CAHostTimeWithTime(v617);
                            v393 = v551;
                            *&v646.f64[0] = __PAIR64__(*(v551 + 404), v378);
                            LOBYTE(v649) = 1;
                            *&v394 = *v541.i64;
                            *&v395 = *v545.i64;
                            *&v646.f64[1] = __PAIR64__(v395, v394);
                            v396.i64[0] = v547;
                            v397.i64[0] = v547;
                            v398 = v534;
                            v397.i64[1] = v534;
                            if ((vmaxv_u16(vmovn_s32(vtstq_s32(v397, v397))) & 1) == 0)
                            {
                              *&v633.f64[0] = vcvt_f32_s32(*v549.i8);
                              CA::Transform::apply_to_point2(&v574, v633.f64, v392);
                              v399 = vcvt_s32_f32(*&v633.f64[0]);
                              *v396.i8 = v399;
                              v396.i32[2] = (*v541.i64 * v553.i32[0]);
                              v396.i32[3] = (*v545.i64 * v553.i32[1]);
                              v400 = vextq_s8(v396, v396, 8uLL).u64[0];
                              v401 = vclez_s32(v400);
                              if ((vpmax_u32(v401, v401).u32[0] & 0x80000000) == 0)
                              {
                                v402 = vclez_s32(*(&v564 + 8));
                                if ((vpmax_u32(v402, v402).u32[0] & 0x80000000) != 0 || (*v396.i8 = vmax_s32(v399, *&v564), v403 = vsub_s32(vmin_s32(vadd_s32(v400, v399), vadd_s32(*&v564, *(&v564 + 8))), *v396.i8), v404 = vclez_s32(v403), (vpmax_u32(v404, v404).u32[0] & 0x80000000) != 0))
                                {
                                  v396 = v399;
                                }

                                else
                                {
                                  v396.u64[1] = v403;
                                }
                              }

                              v398 = vextq_s8(v396, v396, 8uLL).u64[0];
                              v393 = v551;
                            }

                            v647 = vcvt_f32_s32(*v396.i8);
                            v648 = vcvt_f32_s32(v398);
                            CA::Render::ContentStream::produce_surface(v393, SHIDWORD(v567), &v645, v603);
                            goto LABEL_548;
                          }
                        }

                        else if (v364)
                        {
                          goto LABEL_528;
                        }

                        v372 = CA::WindowServer::IOSurface::wrap_buffer(*(v10 + 96), v565, 0, 0);
                        v373 = v535;
                        v374 = (*(*v535 + 1016))(v535, v289, 0);
                        v375 = (*(*v373 + 1016))(v373, v372, 1);
                        (*(*v373 + 776))(v373, v375, v374, 1, 0, v660, &v645);
                        (*(*v373 + 456))(v373, 0);
                        v376 = (*(*v372 + 168))(v372);
                        v377 = (*(*v292 + 168))(v292);
                        CA::VideoToolbox::copy_surface(*(v551 + 280), v376, v377);
                        CA::WindowServer::Surface::unref(v372);
                        goto LABEL_530;
                      }

                      v646 = 0uLL;
                      v293 = 0uLL;
                      v210 = *&v536;
                    }

                    v298 = v534;
                    v305 = v526;
                    goto LABEL_516;
                  }

                  bzero(&v645, 0x570uLL);
                  CA::Render::Update::Update(&v645, v660, 0x2000uLL, v210, 0, 0, 0, 0, &v564, 0);
                  v659 = v659 & 0xFFFFFFFEFFF7DFDELL | 0x100002001;
                  v655 = (*(**(v10 + 96) + 1416))();
                  v321 = (*(**(v10 + 96) + 1616))();
                  v322 = 128;
                  if (!v321)
                  {
                    v322 = 0;
                  }

                  v659 = v659 & 0xFFFFFFFFFFFFFF7FLL | v322;
                  if (CADeviceNeedsP3ShapeTracking::once != -1)
                  {
                    dispatch_once(&CADeviceNeedsP3ShapeTracking::once, &__block_literal_global_53);
                  }

                  v160 = v554;
                  v323 = 0x800000;
                  if (!CADeviceNeedsP3ShapeTracking::p3_tracking)
                  {
                    v323 = 0;
                  }

                  v659 = v659 & 0xFFFFFFFFFF7FFFFFLL | v323;
                  v644 = 0;
                  memset(v643, 0, sizeof(v643));
                  CA::WindowServer::Display::reconciled_display_attributes(v643, *(v10 + 96));
                  CA::Render::Update::set_display_attributes(v657, v643);
                  v657[34] = v611;
                  v324 = *(v10 + 96);
                  v325 = *(v324 + 876);
                  v327 = __sincosf_stret(*(v324 + 872));
                  v328 = *(v324 + 880);
                  v657[201] = LODWORD(v327.__cosval);
                  v657[202] = LODWORD(v327.__sinval);
                  v657[203] = v325;
                  v658 = v328;
                  v659 |= 0x800000000000uLL;
                  v573 = 0;
                  v329 = *(v212 + 18);
                  v330 = *(v212 + 19);
                  memset(v572, 0, sizeof(v572));
                  LODWORD(v573) = 1065353216;
                  v571 = &unk_1EF200FF8;
                  v331 = (v330 - v329) & 0x3FFFFFFFCLL;
                  if (v331)
                  {
                    v332 = v329;
                    do
                    {
                      v333 = *v332++;
                      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v572, v333, v329);
                      v329 = v332;
                      v331 -= 4;
                    }

                    while (v331);
                    v329 = *(v212 + 18);
                    v330 = *(v212 + 19);
                    v160 = v554;
                  }

                  v334 = v551;
                  if (v330 != v329)
                  {
                    v656 = &v571;
                  }

                  v336 = *(v212 + 10);
                  v335 = *(v212 + 11);
                  if (v336 == v335)
                  {
                    CA::Render::Update::added_all_contexts(&v645, v326, v329);
                    v547 = 0u;
                    v534 = 0u;
                  }

                  else
                  {
                    v337 = 0;
                    v338 = 0;
                    do
                    {
                      v339 = CA::Render::Context::context_by_id(*v336);
                      if (v339)
                      {
                        v342 = v339;
                        pthread_mutex_lock((v339 + 72));
                        v343 = 0;
                        v642 = 0;
                        v641 = 0u;
                        v640 = 0u;
                        v639 = 0u;
                        v638 = 0u;
                        v637 = 0u;
                        v636 = 0u;
                        v635 = 0u;
                        v634 = 0u;
                        v633 = 0u;
                        if (v547)
                        {
                          v344 = CA::Render::Context::root_layer_handle(v342);
                          if (v344 && *(v344 + 2))
                          {
                            memset(v563, 0, sizeof(v563));
                            v345 = CA::Render::Context::root_layer_handle(v342);
                            if (v345)
                            {
                              v345 = *(v345 + 2);
                            }

                            CA::Render::Layer::compute_frame_transform(v345, 0, v563, 0);
                            v633 = v574;
                            v634 = v575;
                            v635 = v576;
                            v636 = v577;
                            v637 = v578;
                            v638 = v579;
                            v639 = v580;
                            v640 = v581;
                            v641 = v582;
                            LOBYTE(v642) = v642 & 0xE0 | v583 & 0x1F;
                            CA::Transform::set(v570, v563, 1);
                            v343 = &v633;
                            CA::Transform::concat_left(&v633, v570, v346, v347);
                          }

                          else
                          {
                            v343 = &v633;
                          }
                        }

                        v348 = CA::Render::Context::root_layer_handle(v342);
                        if (v348)
                        {
                          v349 = *(v348 + 2);
                        }

                        else
                        {
                          v349 = 0;
                        }

                        CA::Render::Update::add_context(&v645, v342, v349, v343);
                        v350 = *(v212 + 7);
                        if (v350 && !v337)
                        {
                          v351 = CA::Render::Context::lookup_object(*(v342 + 136), *(v342 + 148), v350, 0, 30, 0);
                          if (v351)
                          {
                            v337 = *(v351 + 152);
                          }

                          else
                          {
                            v337 = 0;
                          }
                        }

                        pthread_mutex_unlock((v342 + 72));
                        ++v338;
                        if (atomic_fetch_add((v342 + 8), 0xFFFFFFFF) == 1)
                        {
                          (*(*v342 + 16))(v342);
                        }
                      }

                      ++v336;
                    }

                    while (v336 != v335);
                    CA::Render::Update::added_all_contexts(&v645, v340, v341);
                    v353 = 0uLL;
                    if (v337)
                    {
                      v354 = v652;
                      v355 = 0uLL;
                      v356 = v531;
                      if (v652 != v531)
                      {
                        do
                        {
                          layernode_for_handle = CA::WindowServer::find_layernode_for_handle(v354, v337, v352);
                          v354 = v354[1];
                        }

                        while (v354 != v356 && layernode_for_handle == 0);
                        if (layernode_for_handle)
                        {
                          *&v353 = layernode_for_handle[22];
                          *&v355 = layernode_for_handle[23];
                        }

                        else
                        {
                          v353 = 0uLL;
                          v355 = 0uLL;
                        }
                      }
                    }

                    else
                    {
                      v355 = 0uLL;
                    }

                    v547 = v353;
                    v534 = v355;
                    if (v338 && v566)
                    {
                      v526 = objc_autoreleasePoolPush();
                      v379 = v535;
                      *(v535 + 608) = 0;
                      *(v379 + 616) = v536;
                      *(v379 + 1384) |= 2u;
                      v380 = CGColorSpaceRetain(*(v379 + 560));
                      v381 = CAGetColorSpace(35);
                      CA::OGL::Context::set_colorspace(v379, v381);
                      v634 = 0u;
                      v635 = 0u;
                      v633 = 0u;
                      CA::Shape::operator=(&v633, &v564);
                      CA::shape_union(&v646, &v633, v382);
                      v383 = v533;
                      CA::OGL::Renderer::prepare_clip_shape(v533, *&v646.f64[0]);
                      v384 = (*(*v379 + 24))(v379, 0, &v566, 1, 0, 0);
                      v384.n128_u32[0] = v212[16];
                      *&v633.f64[0] = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v384.n128_u64[0]))), vdupq_n_s32(0x3B808081u)));
                      (*(*v379 + 1000))(v379, &CA::Shape::_infinite_shape, &v633);
                      CA::OGL::Renderer::render(v383, &v645, 0, v385);
                      (*(*v379 + 456))(v379, 1);
                      CA::OGL::Context::set_colorspace(v379, v380);
                      CGColorSpaceRelease(v380);
                      (*(*v379 + 24))(v379, 0, 0, 0, 0, 0);
                      *(v379 + 1384) &= ~2u;
                      v386 = *(v383 + 2);
                      if (v386)
                      {
                        CA::Shape::unref(v386);
                        *(v383 + 2) = 0;
                      }

                      v387 = v650;
                      v388 = *v383;
                      v389 = v654;
                      *(v388 + 159) = v653;
                      *(v388 + 160) = v389;
                      CA::Render::Update::release_objects(&v645);
                      v390 = *v383;
                      v390[81] = v387;
                      (*(*v390 + 264))();
                      objc_autoreleasePoolPop(v526);
                      CA::VideoToolbox::copy_surface(*(v551 + 280), v565, v567);
                      v378 = 0;
                      v160 = v554;
                      goto LABEL_539;
                    }

                    v240 = DWORD2(v567);
                    v160 = v554;
                    v334 = v551;
                  }

                  CA::Render::ContentStream::reuse_surface(v334, v240);
                  v568 = 0;
                  v378 = 1;
                  v567 = 0uLL;
LABEL_539:
                  v571 = &unk_1EF200FB0;
                  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v572);
                  CA::Render::Update::~Update(&v645, v391);
                  goto LABEL_540;
                }
              }
            }

LABEL_561:
            if (*v542)
            {
              if ((byte_1ED4E98A1 & 1) == 0)
              {
                v408 = mach_absolute_time() + v515;
                goto LABEL_568;
              }

LABEL_569:
              v417 = mach_absolute_time();
              v613 = CATimeWithHostTime(v417) - v167;
              CA::WindowServer::Server::set_needs_global_light(v10, HIDWORD(v607) & 1);
              if (*(v10 + 836) == 1)
              {
                CA::WindowServer::Server::report_car_play_regions(v10, v587);
              }

              if ((*(**(v10 + 96) + 1648))(*(v10 + 96)))
              {
                dispatch_semaphore_signal(*(v10 + 88));
              }

              goto LABEL_573;
            }

            v409 = (*(**(v10 + 96) + 1056))(*(v10 + 96));
            v410 = *(v10 + 96);
            if (v409)
            {
              v411 = (*(*v410 + 776))(v410);
              v412 = CAHostTimeWithTime(v411);
              v408 = CAHostTimeWithTime(v9) - (v412 >> 3);
            }

            else
            {
              if ((v410[160] & 0x100) == 0)
              {
                goto LABEL_569;
              }

              v413 = (*(*v410 + 776))(v410);
              v414 = CAHostTimeWithTime(v413);
              v415 = v414 * (*(**(v10 + 96) + 784))();
              v416 = CAHostTimeWithTime(v9);
              v408 = v515 + v416 - (v415 + (v414 >> 1));
            }

LABEL_568:
            (*(*v10 + 536))(v10, v408);
            goto LABEL_569;
          }

          v171 = (*(*v10 + 432))(v10);
          if (v171)
          {
            (*(**v171 + 208))(*v171, v528);
          }

          if ((*(*(v10 + 96) + 640) & 0x100) != 0)
          {
            if (CADeviceSupportsNextSwapAnnouncement::once[0] != -1)
            {
              dispatch_once(CADeviceSupportsNextSwapAnnouncement::once, &__block_literal_global_425);
            }

            if (CADeviceSupportsNextSwapAnnouncement::b == 1)
            {
              (*(**(v10 + 96) + 2256))(*(v10 + 96), v587, v169);
            }
          }

          if ((v557 & 8) == 0 && (*(**(v10 + 96) + 2304))(*(v10 + 96), v603))
          {
            (*(*v10 + 552))(v10, v603);
          }

          (*(*v10 + 472))(v10, v587, &v557);
          v172 = (*(*v10 + 432))(v10);
          if (v172)
          {
            v173 = *v172;
            v174 = *(*v172 + 1264);
            if (v174 >= 0xFFFF)
            {
              v175 = 0xFFFF;
            }

            else
            {
              v175 = *(*v172 + 1264);
            }

            if (v174 >= 0)
            {
              v176 = v175;
            }

            else
            {
              v176 = 0;
            }

            v177 = v550 & 0xFFFFFF0000000000 | v176;
            v178 = v173[318];
            if (v178 >= 0xFF)
            {
              v179 = 255;
            }

            else
            {
              v179 = v173[318];
            }

            v180 = v179 << 16;
            if (v178 >= 0)
            {
              v181 = v180;
            }

            else
            {
              v181 = 0;
            }

            v182 = v177 | v181;
            v183 = v173[317];
            if (v183 >= 0xFF)
            {
              v184 = 255;
            }

            else
            {
              v184 = v173[317];
            }

            v185 = v184 << 24;
            if (v183 >= 0)
            {
              v186 = v185;
            }

            else
            {
              v186 = 0;
            }

            v187 = v182 | v186;
            v188 = v173[319];
            if (v188 >= 0xFF)
            {
              v189 = 255;
            }

            else
            {
              v189 = v173[319];
            }

            if (v188 >= 0)
            {
              v190 = v189;
            }

            else
            {
              v190 = 0;
            }

            v191 = v187 | (v190 << 32);
            (*(**(v10 + 96) + 2000))(*(v10 + 96));
            v527 = v539;
          }

          else
          {
            v191 = v550;
          }

          if ((v557 & 3) == 0)
          {
            v191 = v191 & 0xFFFF00FFFFFFFFFFLL | 0x10000000000;
          }

          v550 = v191;
          if ((*(**(v10 + 96) + 576))(*(v10 + 96), v587))
          {
            goto LABEL_327;
          }

          _VF = __OFSUB__(v158--, 1);
          if (v158 < 0 != _VF)
          {
            goto LABEL_327;
          }

          if (v160)
          {
            CA::Shape::unref(v160);
          }

          v554 = CA::Shape::new_shape((*(v10 + 96) + 168), v196);
          v144 = 0;
          v629 |= 0x10uLL;
LABEL_303:
          LODWORD(v547) = v158;
          CA::Render::Fence::BatchWaitLock::invalidate(v569);
          CA::Render::Update::~Update(v587, v198);
          LODWORD(v551) = v144;
          v553.i32[0] |= v144 ^ 1;
        }

        if (v131 == v113)
        {
          v129 = 0;
        }

LABEL_172:
        v131 = v130;
        goto LABEL_173;
      }
    }

    else
    {
      v38 = v22;
      v37 = *(v10 + 96);
    }

    v39 = 1;
    goto LABEL_34;
  }

  pthread_mutex_unlock((v10 + 24));
  qword_1EA850F08 += mach_absolute_time() - v12;
LABEL_694:
  v496 = pthread_getspecific(current_display_slot);
  if (v496)
  {
    if (*v496)
    {
      --*v496;
    }
  }

  objc_autoreleasePoolPop(v11);
}

BOOL CA::WindowServer::Display::is_enabled_for_vsync_render(CA::WindowServer::Display *this)
{
  v1 = *(this + 96);
  if (((*(*this + 240))(this) & 1) != 0 || (v2 = atomic_load(v1 + 1), v2 != 1))
  {
    v3 = atomic_load(v1);
    if (v3 != 1)
    {
      return 0;
    }
  }

  v4 = atomic_load(v1);
  if (v4 != 1)
  {
    v5 = atomic_load(v1 + 1);
    if (v5 != 1)
    {
      return 0;
    }
  }

  v6 = atomic_load(v1 + 5);
  if (v6 != 1)
  {
    return 0;
  }

  v7 = atomic_load(v1 + 3);
  return v7 == 0;
}

uint64_t CA::WindowServer::IOMFBDisplay::dbv_flash_workaround_active(CA::WindowServer::IOMFBDisplay *this)
{
  if (*(this + 29584) == 1)
  {
    if (*(this + 29585) == 1)
    {
      v1 = *(this + 29586) ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void std::vector<CAFrameIntervalRange>::insert(uint64_t a1, char *__src, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 2) + 1;
    if (v12 > 0x1555555555555555)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 2);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xAAAAAAAAAAAAAAALL)
    {
      v15 = 0x1555555555555555;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CAFrameIntervalRange>>(v15);
    }

    v17 = 4 * (v13 >> 2);
    v18 = v17;
    if (!(0xAAAAAAAAAAAAAAABLL * (v13 >> 2)))
    {
      if (v13 < 1)
      {
        if (v11 == __src)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x5555555555555556 * (v13 >> 2);
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<CAFrameIntervalRange>>(v23);
      }

      v17 = 4 * (v13 >> 2) - 12 * ((1 - 0x5555555555555555 * ((4 * (v13 >> 2)) >> 2) + ((1 - 0x5555555555555555 * ((4 * (v13 >> 2)) >> 2)) >> 63)) >> 1);
      v18 = v17;
    }

    v24 = *a3;
    *(v17 + 8) = *(a3 + 2);
    *v17 = v24;
    v25 = v18 + 12;
    memcpy((v18 + 12), __src, *(a1 + 8) - __src);
    v26 = *a1;
    v30 = v25 + *(a1 + 8) - __src;
    *(a1 + 8) = __src;
    v27 = (__src - v26);
    v28 = (v17 - (__src - v26));
    memcpy(v28, v26, v27);
    v29 = *a1;
    *a1 = v28;
    *(a1 + 8) = v30;
    if (v29)
    {

      operator delete(v29);
    }
  }

  else if (__src == v6)
  {
    v16 = *a3;
    *(v6 + 8) = *(a3 + 2);
    *v6 = v16;
    *(a1 + 8) = v6 + 12;
  }

  else
  {
    v8 = __src + 12;
    if (v6 < 0xC)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = v6 + 12;
      v10 = *(v6 - 12);
      *(v6 + 8) = *(v6 - 4);
      *v6 = v10;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 12, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v19 = v9 <= a3 || __src > a3;
    v20 = 12;
    if (v19)
    {
      v20 = 0;
    }

    v21 = (a3 + v20);
    v22 = *v21;
    *(__src + 2) = *(v21 + 2);
    *__src = v22;
  }
}

void sub_183B240E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= *&v2)
        {
          v7 %= *&v2;
        }
      }

      else
      {
        v7 &= *&v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBServer::edr_client(CA::WindowServer::IOMFBServer *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(this + 143);
  if (!v1)
  {
    if ((*(*(this + 12) + 905) & 0x10) != 0)
    {
      operator new();
    }

    return 0;
  }

  return v1;
}

BOOL CA::WindowServer::IOMFBDisplay::is_ready(CA::WindowServer::IOMFBDisplay *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!atomic_load((*(this + 96) + 4)))
  {
    v3 = atomic_load((*(this + 96) + 5));
    if (v3 == 1 && !CA::IOMobileFramebuffer::swap_wait((this + 25696), 0, 2147483651))
    {
      os_unfair_lock_lock(this + 189);
      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v4 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Display::complete_powering_on", v8, 2u);
      }

      atomic_store(1u, (*(this + 96) + 4));
      os_unfair_lock_unlock(this + 189);
      pthread_mutex_lock(this + 9);
      CA::WindowServer::IOMFBDisplay::update_framebuffer_locked(this, 0);
      pthread_mutex_unlock(this + 9);
    }
  }

  if (atomic_load((*(this + 96) + 4)))
  {
    return 1;
  }

  v7 = atomic_load((*(this + 96) + 5));
  return v7 != 0;
}

uint64_t CA::WindowServer::IOMFBDisplay::needs_harmony_update(CA::WindowServer::IOMFBDisplay *this)
{
  if (*(this + 29495) & 1) != 0 || (LOBYTE(v1) = 0, (*(this + 336) & 0x1C00) != 0x1000) && (*(this + 29511))
  {
    v2 = atomic_load((*(this + 96) + 4));
    if (v2 || (v1 = atomic_load((*(this + 96) + 5))) != 0)
    {
      LOBYTE(v1) = *(this + 27056) ^ 1;
    }
  }

  return v1 & 1;
}

uint64_t CA::Render::Fence::BatchWaitLock::invalidate(uint64_t this)
{
  v19[1] = *MEMORY[0x1E69E9840];
  __swp(this + 8, (this + 8));
  if (((this + 8) & 1) == 0)
  {
    v1 = this;
    pthread_mutex_lock(&CA::Render::Fence::_bwait_mutex);
    v2 = pthread_self();
    v18 = 0;
    if (pthread_threadid_np(v2, &v18))
    {
      __assert_rtn("invalidate", "render-fence.cpp", 1951, "r == noErr");
    }

    v3 = *v1;
    if (*v1 != v18)
    {
      __assert_rtn("invalidate", "render-fence.cpp", 1952, "_tid == tid");
    }

    v4 = CA::Render::Fence::_bwait_readers_by_tid;
    if (!CA::Render::Fence::_bwait_readers_by_tid)
    {
      __assert_rtn("invalidate", "render-fence.cpp", 1954, "_bwait_readers_by_tid != nullptr");
    }

    v5 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(CA::Render::Fence::_bwait_readers_by_tid, *v1);
    if (!v5)
    {
      __assert_rtn("invalidate", "render-fence.cpp", 1956, "ri != _bwait_readers_by_tid->end ()");
    }

    v6 = *(v5 + 6);
    if (v6 == 1)
    {
      v7 = *(v4 + 8);
      v8 = v5[1];
      v9 = vcnt_s8(v7);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= *&v7)
        {
          v8 %= *&v7;
        }
      }

      else
      {
        v8 &= *&v7 - 1;
      }

      v10 = *(*v4 + 8 * v8);
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10 != v5);
      if (v11 == (v4 + 16))
      {
        goto LABEL_26;
      }

      v12 = v11[1];
      if (v9.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      if (v12 != v8)
      {
LABEL_26:
        if (!*v5)
        {
          goto LABEL_27;
        }

        v13 = *(*v5 + 8);
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v8)
        {
LABEL_27:
          *(*v4 + 8 * v8) = 0;
        }
      }

      v14 = *v5;
      if (*v5)
      {
        v15 = *(v14 + 8);
        if (v9.u32[0] > 1uLL)
        {
          if (v15 >= *&v7)
          {
            v15 %= *&v7;
          }
        }

        else
        {
          v15 &= *&v7 - 1;
        }

        if (v15 != v8)
        {
          *(*v4 + 8 * v15) = v11;
          v14 = *v5;
        }
      }

      *v11 = v14;
      *v5 = 0;
      --*(v4 + 24);
      operator delete(v5);
      v16 = CA::Render::Fence::_bwait_readers_by_tid;
      if (*(CA::Render::Fence::_bwait_readers_by_tid + 16))
      {
        return pthread_mutex_unlock(&CA::Render::Fence::_bwait_mutex);
      }

      v17 = *CA::Render::Fence::_bwait_readers_by_tid;
      *CA::Render::Fence::_bwait_readers_by_tid = 0;
      if (v17)
      {
        operator delete(v17);
      }

      MEMORY[0x1865EA9A0](v16, 0x10A0C408EF24B1CLL);
      CA::Render::Fence::_bwait_readers_by_tid = 0;
    }

    else
    {
      v19[0] = v1;
      *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v4, v3, v19) + 6) = v6 - 1;
      if (CA::Render::Fence::_bwait_readers_by_tid)
      {
        return pthread_mutex_unlock(&CA::Render::Fence::_bwait_mutex);
      }
    }

    if (CA::Render::Fence::_bwait_writer_pending == 1)
    {
      pthread_cond_signal(&CA::Render::Fence::_bwait_cond_writer);
    }

    return pthread_mutex_unlock(&CA::Render::Fence::_bwait_mutex);
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::dirty_update_surface(CA::WindowServer::IOMFBDisplay *this)
{
  pthread_mutex_lock((this + 25848));
  v2 = *(this + 6 * *(this + 6458) + 3240);
  if (v2)
  {
    *(v2 + 68) = *(v2 + 68) & 0xFA | 1;
    if (CA::WindowServer::IOMFBDisplay::use_assembly_surface(this))
    {
      *(v2 + 68) |= 2u;
    }
  }

  return pthread_mutex_unlock((this + 25848));
}

uint64_t CA::OGL::Renderer::collect(CA::OGL::Renderer *this, const CA::Render::Update *a2, double a3)
{
  v5 = *this;
  if (a2)
  {
    v6 = *(a2 + 70);
    *(v5 + 636) = *(a2 + 68);
    *(v5 + 640) = v6;
    CA::Render::Update::release_objects(a2);
    v5 = *this;
  }

  else
  {
    *(v5 + 636) = -1;
  }

  *(v5 + 648) = a3;
  v7 = *(*v5 + 264);

  return v7();
}

uint64_t CA::WindowServer::IOMFBDisplay::color_flush_shape(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = *(v2 + 4) == 6;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return *(a2 + 72);
  }
}

void CA::OGL::update_backdrop_luma(Rect **this, CA::OGL::Renderer *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (((*this)[109].top & 0x2000) == 0)
  {
    v4 = this[1];
    v5.i32[1] = 0;
    v5.i64[1] = 0;
    memset(v87, 0, sizeof(v87));
    v83 = v87;
    v84 = v87;
    v85 = v87;
    v86 = 16;
    v6 = v4[68];
    if (v6)
    {
      v7 = 0;
      v70 = 0;
      v5.i32[0] = 1073741822;
      v69 = v5;
      v68 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      do
      {
        v8 = *(*&v6 + 8);
        v9 = *(*(v8 + 32) + 136);
        if (v9)
        {
          v10 = *v9;
          if (*v9)
          {
            if ((*(v10 + 12) & 0x4FF) == 0x403)
            {
              v11 = *(v8 + 256);
              if (v11)
              {
                os_unfair_lock_lock((v11 + 52));
                v12 = *(v11 + 56);
                v82 = v12;
                if (v12)
                {
                  os_unfair_lock_lock((v12 + 40));
                  v13 = *(v12 + 48);
                  if (v13 && *(v13 + 8) == v2)
                  {
                    if (*(v13 + 40))
                    {
                      X::small_vector_base<CA::Render::BackdropGroup *>::push_back(&v83, &v82);
                    }

                    v14 = *(v13 + 68);
                    v15 = *(v11 + 104);
                    *(v11 + 152) = v14 != v15;
                    if (v14 != v15)
                    {
                      v16 = *(v11 + 96);
                      v17 = *&v4[10];
                      if (v16 - v17 <= 0.035)
                      {
                        if (v16 != 0.0 || (*&this[1][172].top & 1) != 0)
                        {
                          if ((*(v13 + 224) & 4) != 0 && (v21 = *(v13 + 48)) != 0 && (*(v10 + 14) & 4) != 0 || (*(v13 + 40) ? (v21 = *(v13 + 40)) : (v21 = *(v13 + 32)), v21))
                          {
                            v22 = *(*&v6 + 96);
                            if (initialized[0] != -1)
                            {
                              v67 = v21;
                              dispatch_once_f(initialized, 0, init_debug);
                              v21 = v67;
                            }

                            if (*&dword_1ED4E9774 != 0.0)
                            {
                              v22 = *&dword_1ED4E9774;
                            }

                            v23 = *(v11 + 96);
                            v24 = round((v23 + v22) * 4.0) * 0.25;
                            v25 = ceil(v23 * 4.0 + 0.04) * 0.25;
                            if (v24 <= v23)
                            {
                              v26 = v25;
                            }

                            else
                            {
                              v26 = v24;
                            }

                            *(v11 + 96) = v26;
                            *(v11 + 104) = *(v13 + 68);
                            if (v70 <= 0x31)
                            {
                              v28 = v21[6];
                              v27 = v21[7];
                              v80 = 0;
                              v81 = v27;
                              v77 = *(v10 + 56);
                              v29 = *(v10 + 72);
                              v30 = *(v10 + 80);
                              v78 = v29;
                              v79 = v30;
                              if (v29 >= v30)
                              {
                                v29 = v30;
                              }

                              if (v29 > 0.0 && !*&v21[9])
                              {
                                v64 = v21;
                                v75 = 0u;
                                v76 = 0u;
                                CA::Render::BackdropGroup::subrect_to_master(&v75, v12, &v77, *(*&v6 + 8));
                                CA::Rect::apply_transform(&v75, (v13 + 72), v31);
                                if (*(v12 + 632))
                                {
                                  v63 = *(v12 + 632);
                                  CA::BoundsImpl::Union(&v75, *(v12 + 640), *(v12 + 656));
                                  CA::Render::MeshTransform::apply_rect(v74, v63, v54, v75, v76, v75, v76);
                                  v75 = v74[0];
                                  v76 = v74[1];
                                }

                                if ((*(v13 + 224) & 0x10) != 0)
                                {
                                  v38 = v76.f64[1];
                                  if (v76.f64[0] <= v76.f64[1])
                                  {
                                    v39 = v76.f64[1];
                                  }

                                  else
                                  {
                                    v39 = v76.f64[0];
                                  }

                                  if (v39 < 1.79769313e308)
                                  {
                                    v40 = v76.f64[0] >= v76.f64[1] ? v76.f64[1] : v76.f64[0];
                                    if (v40 > 0.0)
                                    {
                                      v41 = vrndpq_f64(v75);
                                      v42 = vsubq_f64(vrndmq_f64(vaddq_f64(v75, v76)), v41);
                                      v75 = v41;
                                      v76 = v42;
                                      v38 = v42.f64[1];
                                    }
                                  }
                                }

                                else
                                {
                                  *v33.i8 = CA::OGL::Context::raster_round_rect(v74, v2, v75.f64);
                                  if (v74[0].i32[2] <= v74[0].i32[3])
                                  {
                                    v34 = v74[0].i32[3];
                                  }

                                  else
                                  {
                                    v34 = v74[0].i32[2];
                                  }

                                  v33.i32[0] = v34;
                                  v35.i64[0] = v74[0].i32[0];
                                  v35.i64[1] = v74[0].i32[1];
                                  v36 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v33, v69), 0), v68, vcvtq_f64_s64(v35));
                                  v37 = v74[0].i32[2];
                                  if (v34 > 1073741822)
                                  {
                                    v37 = 1.79769313e308;
                                  }

                                  v75 = v36;
                                  if (v34 <= 1073741822)
                                  {
                                    v38 = v74[0].i32[3];
                                  }

                                  else
                                  {
                                    v38 = 1.79769313e308;
                                  }

                                  v76.f64[0] = v37;
                                  v76.f64[1] = v38;
                                }

                                v43 = *(v13 + 24);
                                if (v43 != 1.0)
                                {
                                  v44 = v43;
                                  if (v76.f64[0] < 1.79769313e308)
                                  {
                                    v75.f64[0] = v75.f64[0] * v44;
                                    v76.f64[0] = v76.f64[0] * v44;
                                  }

                                  if (v38 < 1.79769313e308)
                                  {
                                    v75.f64[1] = v75.f64[1] * v44;
                                    v76.f64[1] = v38 * v44;
                                  }
                                }

                                v74[0] = 0uLL;
                                CA::Bounds::set_exterior(v74, v32, v75, v76);
                                v80 = vsub_s32(*v74[0].i8, v28);
                                v81 = v74[0].i64[1];
                                CA::BoundsImpl::intersect(&v80, 0, v27);
                                v21 = v64;
                              }

                              v45 = *(v11 + 16);
                              v46 = v45[4];
                              v47 = atomic_load(v45 + 57);
                              if (!v47)
                              {
                                if (v45[64])
                                {
                                  v48 = 0;
                                }

                                else
                                {
                                  v61 = *(v11 + 16);
                                  v65 = v21;
                                  v48 = getpid();
                                  v45 = v61;
                                  v21 = v65;
                                }

                                v49 = 0;
                                atomic_compare_exchange_strong(v45 + 57, &v49, v48);
                                if (v49)
                                {
                                  v47 = v49;
                                }

                                else
                                {
                                  v47 = v48;
                                }
                              }

                              v62 = *(v10 + 16);
                              v66 = v47;
                              v50 = v21;
                              v60 = v21[5].u32[1] | (v21[5].u32[0] << 32);
                              kdebug_trace();
                              v51 = CA::Render::Context::context_by_id(v46);
                              if (v51)
                              {
                                v71[0] = MEMORY[0x1E69E9820];
                                v71[1] = 0x40000000;
                                v71[2] = ___ZN2CA3OGL20update_backdrop_lumaERNS0_8RendererE_block_invoke;
                                v71[3] = &__block_descriptor_tmp_20452;
                                v72 = v46;
                                v73 = v66;
                                v71[4] = v62;
                                v71[5] = v60;
                                v71[6] = v50;
                                v71[7] = v51;
                                if (v50[9])
                                {
                                  ___ZN2CA3OGL20update_backdrop_lumaERNS0_8RendererE_block_invoke(v71, NAN);
                                }

                                else
                                {
                                  v52 = v50;
                                  v53 = v51;
                                  if ((*(*v2 + 808))(v2, v52, &v80, v71))
                                  {
                                    v7 |= (*(*v2 + 144))(v2) != 0;
                                  }

                                  else if (atomic_fetch_add(v53 + 2, 0xFFFFFFFF) == 1)
                                  {
                                    (*(*v53 + 16))(v53);
                                  }
                                }
                              }

                              ++v70;
                            }
                          }
                        }

                        else
                        {
                          v18 = round(v17 * 4.0) * 0.25;
                          v19 = ceil(v17 * 4.0 + 0.04) * 0.25;
                          if (v18 <= v17)
                          {
                            v20 = v19;
                          }

                          else
                          {
                            v20 = v18;
                          }

                          *(v11 + 96) = v20;
                        }
                      }
                    }
                  }

                  os_unfair_lock_unlock((v12 + 40));
                }

                os_unfair_lock_unlock((v11 + 52));
              }
            }
          }
        }

        v6 = **&v6;
      }

      while (v6);
      if (v7)
      {
        (*(*v2 + 456))(v2, 0);
      }
    }

    v55 = v83;
    v56 = v84;
    if (v83 != v84)
    {
      do
      {
        v57 = *v55;
        os_unfair_lock_lock(*v55 + 10);
        v58 = *&v57[12]._os_unfair_lock_opaque;
        if (v58)
        {
          if (*(v58 + 8) == v2)
          {
            v59 = *(v58 + 40);
            if (v59)
            {
              CA::OGL::Context::release_surface(v2, v59);
              *(v58 + 40) = 0;
            }
          }
        }

        os_unfair_lock_unlock(v57 + 10);
        ++v55;
      }

      while (v55 != v56);
      v55 = v83;
    }

    if (v55 != v85)
    {
      free(v55);
    }
  }
}

char *CAGetDebugMessage()
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (debug_message)
  {
    return &debug_message;
  }

  else
  {
    return 0;
  }
}

void CA::OGL::MetalContext::end_rendering(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  *(a1 + 3936) |= 0x80u;
  *&v2 = CA::OGL::Context::end_rendering(a1);
  *(a1 + 2928) = *(a1 + 2920);
  *(a1 + 2913) = 0;
  *(a1 + 2792) = *(a1 + 2784);
  *(a1 + 2777) = 0;
  v3 = *(a1 + 3608);
  if (!v3)
  {
    goto LABEL_10;
  }

  if (*(a1 + 1068) != 1)
  {
LABEL_9:
    [v3 endScope];
    goto LABEL_10;
  }

  if (([*(a1 + 3600) isCapturing] & 1) == 0)
  {
    v3 = *(a1 + 3608);
    goto LABEL_9;
  }

  CA::OGL::MetalContext::flush(a1, 0);
  [*(a1 + 3608) endScope];
  [*(a1 + 3600) stopCapture];
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v4 = x_log_get_ogl_metal(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Finished capturing GPU frames\n", &v40, 2u);
  }

LABEL_10:
  if (*(a1 + 5192))
  {
    if (x_log_get_metal_perf(void)::once != -1)
    {
      dispatch_once(&x_log_get_metal_perf(void)::once, &__block_literal_global_10_8314);
    }

    v37 = *(a1 + 5192);
    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v38 = x_log_get_metal_perf(void)::log;
      if (os_signpost_enabled(x_log_get_metal_perf(void)::log))
      {
        v39 = _MXSignpostMetricsSnapshot();
        v40 = 138543362;
        v41 = v39;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v38, OS_SIGNPOST_INTERVAL_END, v37, "Rendering", "\n%{public, signpost:metrics}@", &v40, 0xCu);
      }
    }

    *(a1 + 5192) = 0;
  }

  pthread_mutex_lock((a1 + 2496));
  if (*(a1 + 2480) >= 0x385uLL)
  {
    v5 = *(a1 + 2472);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (!v6 || *(v5[5] + 8) < *(v6 + 8))
        {
          v7 = v5;
          v6 = v5[5];
        }

        v5 = *v5;
      }

      while (v5);
      if (v6)
      {

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v6);
        v8 = *(a1 + 2464);
        v9 = v7[1];
        v10 = vcnt_s8(v8);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          if (v9 >= *&v8)
          {
            v9 %= *&v8;
          }
        }

        else
        {
          v9 &= *&v8 - 1;
        }

        v11 = *(a1 + 2456);
        v12 = *(v11 + 8 * v9);
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12 != v7);
        if (v13 == (a1 + 2472))
        {
          goto LABEL_38;
        }

        v14 = v13[1];
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v9)
        {
LABEL_38:
          if (!*v7)
          {
            goto LABEL_39;
          }

          v15 = *(*v7 + 8);
          if (v10.u32[0] > 1uLL)
          {
            if (v15 >= *&v8)
            {
              v15 %= *&v8;
            }
          }

          else
          {
            v15 &= *&v8 - 1;
          }

          if (v15 != v9)
          {
LABEL_39:
            *(v11 + 8 * v9) = 0;
          }
        }

        v16 = *v7;
        if (*v7)
        {
          v17 = *(v16 + 8);
          if (v10.u32[0] > 1uLL)
          {
            if (v17 >= *&v8)
            {
              v17 %= *&v8;
            }
          }

          else
          {
            v17 &= *&v8 - 1;
          }

          if (v17 != v9)
          {
            *(*(a1 + 2456) + 8 * v17) = v13;
            v16 = *v7;
          }
        }

        *v13 = v16;
        *v7 = 0;
        --*(a1 + 2480);
        operator delete(v7);
      }
    }
  }

  pthread_mutex_unlock((a1 + 2496));
  pthread_mutex_lock((a1 + 2608));
  if (*(a1 + 2592) >= 0x65uLL)
  {
    v18 = *(a1 + 2584);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if (!v19 || *(v18[3] + 8) < *(v19 + 8))
        {
          v20 = v18;
          v19 = v18[3];
        }

        v18 = *v18;
      }

      while (v18);
      if (v19)
      {

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v19);
        v21 = *(a1 + 2576);
        v22 = v20[1];
        v23 = vcnt_s8(v21);
        v23.i16[0] = vaddlv_u8(v23);
        if (v23.u32[0] > 1uLL)
        {
          if (v22 >= *&v21)
          {
            v22 %= *&v21;
          }
        }

        else
        {
          v22 &= *&v21 - 1;
        }

        v24 = *(a1 + 2568);
        v25 = *(v24 + 8 * v22);
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25 != v20);
        if (v26 == (a1 + 2584))
        {
          goto LABEL_75;
        }

        v27 = v26[1];
        if (v23.u32[0] > 1uLL)
        {
          if (v27 >= *&v21)
          {
            v27 %= *&v21;
          }
        }

        else
        {
          v27 &= *&v21 - 1;
        }

        if (v27 != v22)
        {
LABEL_75:
          if (!*v20)
          {
            goto LABEL_76;
          }

          v28 = *(*v20 + 8);
          if (v23.u32[0] > 1uLL)
          {
            if (v28 >= *&v21)
            {
              v28 %= *&v21;
            }
          }

          else
          {
            v28 &= *&v21 - 1;
          }

          if (v28 != v22)
          {
LABEL_76:
            *(v24 + 8 * v22) = 0;
          }
        }

        v29 = *v20;
        if (*v20)
        {
          v30 = *(v29 + 8);
          if (v23.u32[0] > 1uLL)
          {
            if (v30 >= *&v21)
            {
              v30 %= *&v21;
            }
          }

          else
          {
            v30 &= *&v21 - 1;
          }

          if (v30 != v22)
          {
            *(*(a1 + 2568) + 8 * v30) = v26;
            v29 = *v20;
          }
        }

        *v26 = v29;
        *v20 = 0;
        --*(a1 + 2592);
        operator delete(v20);
      }
    }
  }

  pthread_mutex_unlock((a1 + 2608));
  if (*(a1 + 2720) >= 0x3E9u)
  {
    v31 = *(a1 + 2696);
    if (v31)
    {
      v32 = 0;
      do
      {
        v33 = v31[6];
        if (*(v33 + 25) == 1)
        {
          if (atomic_load(v33))
          {
            if (!v32 || *(v33 + 16) < *(v32 + 16))
            {
              v32 = v31[6];
            }
          }
        }

        v31 = *v31;
      }

      while (v31);
      if (v32)
      {
        if (*(v32 + 25) != 1 || (v35 = atomic_load(v32)) == 0)
        {
          __assert_rtn("purge_pipeline_state", "ogl-metal.mm", 7140, "can_purge ()");
        }

        CA::OGL::MetalContext::Pipeline::wait_for_completion(v32);
        v36 = atomic_load(v32);

        atomic_store(0, v32);
        *(v32 + 24) = 0;
        --*(a1 + 2720);
      }
    }
  }
}

float CA::OGL::Context::end_rendering(CA::OGL::Context *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = (this + 88);
  v2 = *(this + 11);
  if (v2)
  {
    memset(v12, 0, sizeof(v12));
    do
    {
      X::Stream::printf(v12, "\n  %ux%u surface %p", v2[10], v2[11], v2);
      v4 = *v3;
      if (!v4)
      {
        __assert_rtn("operator++", "x-list-template.h", 121, "*_ptr != nullptr");
      }

      v5 = *(v4 + 16);
      v3 = (v4 + 16);
      v2 = v5;
    }

    while (v5);
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v6 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_FAULT))
    {
      v11 = x_stream_get(v12);
      *buf = 136315138;
      v14 = v11;
      _os_log_fault_impl(&dword_183AA6000, v6, OS_LOG_TYPE_FAULT, "Transient surfaces left over after rendering complete:%s", buf, 0xCu);
    }

    if (v12[0])
    {
      free(v12[0]);
    }
  }

  v7 = *(this + 85);
  v8 = *(this + 84);
  if (v7 != v8 || (!v7 ? (v9 = 0) : (v9 = (*(v8 + 144) >> 1) & 0x1F), *(this + 167) != v9))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  (*(*this + 288))(this);
  *(this + 82) = 0;
  if (*&dword_1ED4E9648 > 0.0)
  {
    *&dword_1ED4E9648 = *&dword_1ED4E9648 + -1.0;
  }

  if (*&dword_1ED4E96F0 > 0.0)
  {
    *&dword_1ED4E96F0 = *&dword_1ED4E96F0 + -1.0;
  }

  result = *&dword_1ED4E9670;
  if (*&dword_1ED4E9670 > 0.0)
  {
    result = *&dword_1ED4E9670 + -1.0;
    *&dword_1ED4E9670 = *&dword_1ED4E9670 + -1.0;
  }

  return result;
}

double CA::OGL::MetalContext::restore_state(CA::OGL::MetalContext *this)
{
  v1 = *(this + 3);
  *(v1 + 96) = xmmword_183E21110;
  *(v1 + 112) = xmmword_183E21110;
  *(v1 + 128) = xmmword_183E21110;
  *(v1 + 496) = 1;
  *(v1 + 497) &= ~1u;
  *(this + 65) &= ~1u;
  result = NAN;
  *(this + 7) = -1;
  return result;
}

void CARecordFrame(unsigned int a1, __int32 a2, unsigned int a3, char a4, double a5, float64_t a6, float64_t a7)
{
  v11 = CAGetStatsStruct(a4);
  v12.f64[0] = a6;
  v12.f64[1] = a7;
  *(v11 + 10) = vaddq_f64(*(v11 + 10), v12);
  v13.i32[0] = 1;
  v13.i32[1] = a2;
  v13.i64[1] = __PAIR64__(a3, a1);
  *(v11 + 5) = vaddq_s32(*(v11 + 5), v13);
  v14 = *(v11 + 8);
  v15 = *(v11 + 9);
  if (v14 <= 0.0)
  {
    v14 = a5;
  }

  v16 = a5 - v14;
  *(v11 + 8) = a5;
  if (v16 > v15)
  {
    *(v11 + 9) = v16;
  }

  CAMarkStatistic(v11, a5);
}

void CA::OGL::render_subclass(CA::OGL::Renderer &,CA::OGL::Layer const*)::visitor::visit_subclass(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (byte_1ED4E989C == 1)
  {
    v54 = *(*v4 + 600);
    if (v54)
    {
      v55 = (*(*v54 + 16))(v54);
      if (v55)
      {
        (*(*v55 + 2192))(v55, *(a2 + 16));
      }
    }
  }

  should_render_secure_indicators_with_gpu = CA::OGL::should_render_secure_indicators_with_gpu(*v4, v4[1], *(v3 + 16));
  v6 = should_render_secure_indicators_with_gpu;
  if (should_render_secure_indicators_with_gpu)
  {
    v7 = *(a2 + 16);
    if ((v7 - 3) <= 0xFFFFFFFB)
    {
      v8 = *(a2 + 24);
      if (v8 == 0xFFFF)
      {
        if (x_log_get_secure_indicators(void)::once != -1)
        {
          dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
        }

        v22 = x_log_get_secure_indicators(void)::log;
        if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v7;
          *&buf[8] = 1024;
          *&buf[10] = 0xFFFF;
          v23 = "Invalid secure indicator,frame (%u, %u)";
          goto LABEL_32;
        }
      }

      else
      {
        v66 = 0;
        if (MEMORY[0x1EEE910F8])
        {
          FrameData = SILManagerIndicatorGetFrameData();
          if (FrameData)
          {
            v11 = FrameData;
            v12 = *(v3 + 24);
            v13 = *(v12 + 88);
            v64 = *(v12 + 72);
            v65 = v13;
            v63 = *(*(*v4 + 656) + 24);
            CA::Rect::apply_transform(&v64, v63, v10);
            v14 = v65.f64[0];
            v15 = HIDWORD(v66);
            if (v65.f64[0] != HIDWORD(v66) || (v16 = v65.f64[1], v17 = v66, v65.f64[1] != v66))
            {
              if (x_log_get_secure_indicators(void)::once != -1)
              {
                dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
              }

              v18 = x_log_get_secure_indicators(void)::log;
              if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_ERROR))
              {
                v53 = v65.f64[1];
                *buf = 67109888;
                *&buf[4] = HIDWORD(v66);
                *&buf[8] = 1024;
                *&buf[10] = v66;
                *&buf[14] = 2048;
                *v74 = v14;
                WORD4(v74[0]) = 2048;
                *(v74 + 10) = v65.f64[1];
                _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "SILManager flipbook size (%u, %u) mismatched provided size (%f, %f)", buf, 0x22u);
                v16 = v53;
              }

              else
              {
                v16 = v65.f64[1];
              }

              v17 = v66;
              v15 = HIDWORD(v66);
              if (v14 <= v16)
              {
                v19 = v16;
              }

              else
              {
                v19 = v14;
              }

              if (v19 < 1.79769313e308)
              {
                v20 = v14 >= v16 ? v16 : v14;
                if (v20 > 0.0)
                {
                  v21.f64[0] = (v14 - HIDWORD(v66)) * 0.5;
                  v21.f64[1] = (v16 - v66) * 0.5;
                  v64 = vaddq_f64(v64, v21);
                  v65.f64[0] = HIDWORD(v66);
                  v65.f64[1] = v66;
                  if (HIDWORD(v66) && v66)
                  {
                    v16 = v66;
                    v14 = HIDWORD(v66);
                  }

                  else
                  {
                    v65 = 0uLL;
                    v16 = 0.0;
                    v14 = 0.0;
                  }
                }
              }
            }

            v24 = *(*(v3 + 16) + 116);
            v25 = *v4;
            v26 = (*(**v4 + 632))(*v4, 1, v15, v17, 0);
            if (v26)
            {
              v27 = v26;
              v26[1].i32[1] |= 0x800000u;
              v82 = 0uLL;
              v28 = CA::OGL::Context::bind_image(v25, 0, v26, 2048, 1u, 1, 0, 0, 0.0, &v82, 0);
              if (v28)
              {
                v29.i32[0] = v24;
                v29.i32[1] = v24 >> 8;
                v29.i32[2] = HIWORD(v24);
                v30.i64[0] = 0xFF000000FFLL;
                v30.i64[1] = 0xFF000000FFLL;
                v31 = vandq_s8(v29, v30);
                v31.i32[3] = vshrq_n_u32(vdupq_n_s32(v24), 0x18uLL).i32[3];
                v61 = vmulq_f32(vcvtq_f32_u32(v31), vdupq_n_s32(0x3B808081u));
                v62 = v28;
                (*(*v25 + 640))(v25, v28, v27, 0, 0, 0, v15, v17, v11, 1);
                v81 = 0;
                v35.f64[1] = 0.0;
                *buf = xmmword_183E20E00;
                v74[0] = 0u;
                v36.i64[1] = 0x3FF0000000000000;
                v74[1] = xmmword_183E20E60;
                v75 = 0u;
                v76 = 0u;
                v77 = xmmword_183E20E00;
                v78 = 0u;
                v79 = xmmword_183E20E60;
                __asm { FMOV            V2.2D, #1.0 }

                v80 = _Q2;
                v42 = *(v63 + 144);
                if ((v42 & 2) != 0)
                {
                  v82 = vextq_s8(v82, v82, 8uLL);
                }

                v43 = vcvt_f16_f32(v61);
                if ((v42 & 4) != 0)
                {
                  v44 = v64.f64[0] + v14 * 0.5;
                  v45 = -v44;
                  *buf = xmmword_183E20E00;
                  v46 = v64.f64[1] + v16 * 0.5;
                  v47 = -v46;
                  v74[0] = 0uLL;
                  v75 = 0u;
                  v76 = 0u;
                  v74[1] = xmmword_183E20E60;
                  v77 = xmmword_183E20E00;
                  *&v78 = v44;
                  *(&v78 + 1) = v46;
                  *(&v79 + 1) = 0x3FF0000000000000;
                  v80 = _Q2;
                  *&v79 = 0;
                  LOBYTE(v81) = 0;
                  CA::Transform::rotate90(buf, v32, v33, v34);
                  v48.f64[0] = v45;
                  v35 = CA::Transform::translate(buf, v48, v47, 0.0);
                }

                *(v25[2] + 497) |= 1u;
                *(v25[2] + 8) = v43;
                v35.f64[0] = 1.0;
                v36.i64[0] = 1.0;
                v49 = CA::OGL::transform_filter_bits(v63, v32, v35, v36, _Q2);
                v50.i64[0] = 1.0;
                v52 = CA::OGL::rect_filter_bits(v63, v49, v64, v65, v50, 1.0, v51);
                v67[0] = &v64;
                v67[1] = buf;
                v68 = v52;
                v69 = 0;
                v71 = 0;
                v70 = 0;
                v72 = 0;
                CA::OGL::fill_rect_tex(v25, v67, &v82);
                *(v25[2] + 8) = 0x3C003C003C003C00;
                *(v25[2] + 497) &= ~1u;
                (*(*v25 + 560))(v25, v62, 0);
              }

              if (atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v27 + 16))(v27);
              }
            }

            free(v11);
            goto LABEL_44;
          }
        }

        if (x_log_get_secure_indicators(void)::once != -1)
        {
          dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
        }

        v22 = x_log_get_secure_indicators(void)::log;
        if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v7;
          *&buf[8] = 1024;
          *&buf[10] = v8;
          v23 = "Failed to get secure indicator data (%u, %u)";
LABEL_32:
          _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xEu);
        }
      }
    }
  }

LABEL_44:
  *(v4 + 101) = v6 ^ 1;
  if (BYTE4(xmmword_1ED4E988C) == 1)
  {
    v56 = *(*v4 + 600);
    if (v56)
    {
      v57 = (*(*v56 + 16))(v56);
      if (v57)
      {
        if (((*(*v57 + 2200))(v57, *(a2 + 16), *(a2 + 24)) & 1) == 0)
        {
          v59 = *v4;
          v60 = *(*(*v4 + 656) + 24);
          *buf = *(v3 + 24) + 72;
          *&buf[8] = v60;
          memset(v74, 0, sizeof(v74));
          CA::OGL::fill_color_rect(v59, buf, 0x80408080, 0.0, v58);
        }
      }
    }
  }
}

{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a2 + 24);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v6)))))
    {
      if ((*(v2 + 13) & 0xE) != 0)
      {
        v7 = *v4;
        v8 = *(*v4 + 82);
        v9 = vcvt_f16_f32(v6);
        if (*&v8[4] != 0x3C003C003C003C00)
        {
          _Q1 = vcvtq_f32_f16(v8[4]);
          _S2 = _Q1.i32[1];
          _KR00_8 = _Q1.i64[1];
          __asm
          {
            FCVT            H1, S1
            FCVT            H4, S2
            FCVT            H3, S3
            FCVT            H2, S5
          }

          _D1.i16[1] = _H4;
          _D1.i16[2] = _H3;
          _D1.i16[3] = _S2;
          if (*&v9 == 0x3C003C003C003C00)
          {
            v9 = _D1;
          }

          else
          {
            v9 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(_D1), vcvtq_f32_f16(v9)));
          }
        }

        v65[0].f64[0] = 0.0;
        *&v67.f64[0] = v9;
        CA::OGL::colormatched_layer_color(v65, v4, v5, &v67, *(a2 + 40));
        *(*(v7 + 2) + 8) = v65[0].f64[0];
        v23 = *(v7 + 2);
        if (*(v23 + 496) >= 2u)
        {
          *(v23 + 497) |= 1u;
        }

        v24 = *(v2 + 72);
        v61 = *(v2 + 56);
        v62 = v24;
        v25 = *&v8[3];
        *&v67.f64[0] = &v61;
        v67.f64[1] = v25;
        v68 = 0xFF0000003FuLL;
        v69 = 0uLL;
        CA::OGL::fill_round_rect(v7, &v67, 0xF, 0, *(v2 + 88), *(v2 + 96));
        *(*(v7 + 2) + 497) &= ~1u;
      }

      else
      {
        v19 = *(a2 + 136);
        v20 = CA::Render::Path::bounding_rect(*(a2 + 16));
        v22 = *(v20 + 16);
        v67 = *v20;
        v21 = v67;
        v68 = v22;
        v21.i32[0] = *(a2 + 24);
        CA::OGL::render_shape(v4, v5, v2, v21, *(a2 + 28), *(a2 + 32), *(a2 + 36), *(a2 + 40), v19, &v67, *(a2 + 48), 0);
      }
    }

    v26 = *(a2 + 104);
    if (v26 != 0.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(a2 + 56))))) & 1) != 0)
    {
      if (!*(a2 + 128) && *(a2 + 88) == 0.0 && *(a2 + 96) == 1.0 && (v60 = *(a2 + 56), v27 = *(v2 + 72), v67 = *(v2 + 56), v68 = v27, CA::BoundsImpl::inset(&v67, v26 * -0.5, v26 * -0.5), v26 < v68.f64[0] * 0.5) && v26 < v68.f64[1] * 0.5 && ((v28 = *(v2 + 12), (v28 & 0x400) != 0) || v68.f64[0] == v68.f64[1] && (v28 & 0x800) != 0 || (v28 & 0x200) != 0 && (*(a2 + 137) == 1 || !*(a2 + 137) && *(a2 + 112) >= 1.41421356)))
      {
        v29 = *v4;
        v30 = *(*v4 + 82);
        v31 = vcvt_f16_f32(v60);
        v32 = *(a2 + 72);
        if (*&v30[4] != 0x3C003C003C003C00)
        {
          _Q2 = vcvtq_f32_f16(v30[4]);
          _S5 = _Q2.i32[1];
          _KR08_8 = _Q2.i64[1];
          __asm { FCVT            H2, S2 }

          if (*&v31 == 0x3C003C003C003C00)
          {
            __asm
            {
              FCVT            H1, S5
              FCVT            H4, S4
            }

            _Q2.i16[1] = _H1;
            __asm { FCVT            H1, S3 }

            _Q2.i16[2] = _H4;
            _Q2.i16[3] = _H1;
            v31 = *_Q2.f32;
          }

          else
          {
            __asm
            {
              FCVT            H5, S5
              FCVT            H4, S4
              FCVT            H3, S3
            }

            _Q2.i16[1] = _H5;
            _Q2.i16[2] = _H4;
            _Q2.i16[3] = _H3;
            v31 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(*_Q2.f32), vcvtq_f32_f16(v31)));
          }
        }

        v66 = 0;
        *&v67.f64[0] = v31;
        CA::OGL::colormatched_layer_color(&v66, v4, v5, &v67, v32);
        *(*(v29 + 2) + 8) = v66;
        v52 = *(v29 + 2);
        if (*(v52 + 496) >= 2u)
        {
          *(v52 + 497) |= 1u;
        }

        v53 = *(v2 + 72);
        v65[0] = *(v2 + 56);
        v65[1] = v53;
        v69 = 0u;
        v70 = 0u;
        v55 = *(v2 + 88);
        v54 = *(v2 + 96);
        v56 = *(a2 + 104);
        v67.f64[0] = v55;
        v67.f64[1] = v54;
        CA::BoundsImpl::inset(v65, -(v56 * 0.5), -(v56 * 0.5));
        if (*(a2 + 137) << 8 == 256 || v55 > 0.0 || v54 > 0.0)
        {
          v67.f64[0] = v55 + v56 * 0.5;
          v67.f64[1] = v54 + v56 * 0.5;
        }

        v59 = v30[3];
        *&v61 = v65;
        *(&v61 + 1) = v59;
        v62 = 0xFF0000003FuLL;
        v63 = 0;
        v64 = 0;
        v68 = v67;
        v69 = v67;
        v70 = v67;
        CA::OGL::stroke_uneven_round_rect(v29, &v61, v67.f64, 0, v56, v57, v58);
        *(*(v29 + 2) + 497) &= ~1u;
      }

      else
      {
        v39 = *(*(*v4 + 82) + 24);
        if ((*(v39 + 144) & 0x10) != 0)
        {
          v41 = vaddvq_f64(vmulq_f64(*v39, *v39));
          v42 = vaddvq_f64(vmulq_f64(*(v39 + 32), *(v39 + 32)));
          v43 = *(v39 + 120);
          v40 = 1.0;
          if (v43 != 1.0)
          {
            v44 = 1.0 / (v43 * v43);
            v41 = v44 * v41;
            v42 = v44 * v42;
          }

          _ZF = v42 == 1.0 && v41 == 1.0;
          v46 = (sqrt(v42) + sqrt(v41)) * 0.5;
          if (!_ZF)
          {
            v40 = v46;
          }
        }

        else
        {
          v40 = *(v39 + 128);
        }

        CA::Render::ShapeLayer::stroke_path(&v61, v40, a2);
        v47 = v61;
        *v48.i64 = CA::Render::ShapeLayer::stroke_bounds(&v67, a2);
        v48.i32[0] = *(a2 + 56);
        CA::OGL::render_shape(v4, v5, v47, v48, *(a2 + 60), *(a2 + 64), *(a2 + 68), *(a2 + 72), 0, &v67, *(a2 + 80), *(a2 + 104) < 0.0);
        if (v47 && atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v47 + 16))(v47);
        }
      }
    }
  }
}

{
  v2 = *(a2 + 24);
  if (v2 && v2[31]._os_unfair_lock_opaque)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    os_unfair_lock_lock(v2 + 6);
    CA::OGL::render_emitter_cells(v4, v5, a2, *(a2 + 32), &v2[28]);

    os_unfair_lock_unlock(v2 + 6);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::detached_layers_valid_p(CA::WindowServer::IOMFBDisplay *this, const CA::Render::Update *a2)
{
  v57[1] = *MEMORY[0x1E69E9840];
  if ((*(*this + 1576))(this))
  {
    return 1;
  }

  v4 = *(this + 3287);
  if (!v4 || !*(v4 + 24) || (*(v4 + 292) & 1) != 0)
  {
    return 1;
  }

  v7 = *(this + 6856);
  switch(v7)
  {
    case 3:
      v53 = 216;
      if ((*(v4 + 40) & 8) == 0)
      {
        v53 = 208;
      }

      if (!(*(*this + 2432))(this, *(v4 + v53)))
      {
        return 0;
      }

      v8 = (this + 25848);
      pthread_mutex_lock((this + 25848));
      v54 = *(this + 6 * *(this + 6458) + 3240);
      if (!v54 || (v55 = *(v54 + 32)) == 0 || (*(*this + 2432))(this, *(v55 + 56)))
      {
        v5 = 1;
        goto LABEL_50;
      }

      goto LABEL_49;
    case 2:
      v8 = (this + 25848);
      pthread_mutex_lock((this + 25848));
      v33 = *(this + 3287);
      v34 = *(this + 6 * *(this + 6458) + 3240);
      v57[0] = 0;
      v35 = *(this + 52);
      v37 = *(v33 + 208);
      v36 = *(v33 + 216);
      v38 = *(v33 + 40);
      if ((v38 & 8) != 0)
      {
        v39 = *(v33 + 216);
      }

      else
      {
        v39 = *(v33 + 208);
      }

      if ((v38 & 8) != 0)
      {
        v36 = *(v33 + 208);
      }

      v40.n128_f32[0] = CA::WindowServer::layer_bandwidth_v2(*(*(v33 + 24) + 64), (v57 + 4), v57, v30, v39, v31, v32, v36, *(v33 + 248), v35);
      if ((*(*this + 2432))(this, v37, v40))
      {
        if (!v34)
        {
          goto LABEL_40;
        }

        v46 = *(v34 + 32);
        if (!v46 || (*(v34 + 68) & 4) != 0 || (*(a2 + 304) & 8) == 0)
        {
          goto LABEL_40;
        }

        v47 = *(v46 + 56);
        v56 = v47;
        v48.i64[0] = v47;
        v48.i64[1] = HIDWORD(v47);
        v49 = vcvtq_f64_u64(v48);
        v50 = *(this + 40);
        v51 = *(this + 41);
        if (v50 <= v51)
        {
          v50 = *(this + 41);
        }

        v52 = 1.79769313e308;
        if (v50 <= 1073741822)
        {
          v52 = v51;
        }

        CA::WindowServer::layer_bandwidth_v2(*(v46 + 64), (v57 + 4), v57, v41, v49.f64[0], v42, v43, v49.f64[1], v52, v35);
        if ((*(*this + 2432))(this, v56))
        {
LABEL_40:
          v44.n128_u32[0] = HIDWORD(v57[0]);
          v45.n128_u32[0] = v57[0];
          v29 = (*(*this + 2440))(this, v44, v45);
LABEL_41:
          v5 = v29;
LABEL_50:
          pthread_mutex_unlock(v8);
          return v5;
        }
      }

LABEL_49:
      v5 = 0;
      goto LABEL_50;
    case 1:
      v8 = (this + 25848);
      pthread_mutex_lock((this + 25848));
      v9 = *(this + 3287);
      v10 = *(v9 + 208);
      v11 = *(v9 + 40);
      if ((v11 & 8) != 0)
      {
        v12 = *(v9 + 216);
      }

      else
      {
        v12 = *(v9 + 208);
      }

      if ((v11 & 8) == 0)
      {
        v10 = *(v9 + 216);
      }

      v13 = *(this + 6 * *(this + 6458) + 3240);
      v14 = *(v9 + 240) / v12;
      v15 = *(v9 + 248) / v10;
      v16 = CA::WindowServer::Surface::bits_per_pixel(*(*(v9 + 24) + 64));
      v18.n128_f32[0] = v14 * 8.0;
      v19 = v16 / ((v14 * 8.0) * v15);
      v20 = (ceilf(1.0 / v15) * v16) / v18.n128_f32[0];
      if (v13)
      {
        v21 = *(v13 + 32);
        if (v21)
        {
          if ((*(v13 + 68) & 4) == 0 && (*(a2 + 304) & 8) != 0)
          {
            v17.n128_u32[0] = v21[14];
            v18.n128_u32[0] = v21[15];
            v17.n128_f64[0] = v17.n128_u64[0];
            v18.n128_f64[0] = v18.n128_u64[0];
            v22 = *(this + 40);
            v23 = *(this + 41);
            v24 = v22;
            v25 = v23;
            if (v22 <= v23)
            {
              v22 = *(this + 41);
            }

            if (v22 > 1073741822)
            {
              v24 = 1.79769313e308;
              v25 = 1.79769313e308;
            }

            v26 = v24 / v17.n128_f64[0];
            v27 = v25 / v18.n128_f64[0];
            v28 = CA::WindowServer::Surface::bits_per_pixel(v21[16]);
            v19 = (v28 / ((v26 * 8.0) * v27)) + v19;
            v20 = ((ceilf(1.0 / v27) * v28) / (v26 * 8.0)) + v20;
          }
        }
      }

      v17.n128_f32[0] = v19;
      v18.n128_f32[0] = v20;
      v29 = (*(*this + 2440))(this, v17, v18);
      goto LABEL_41;
  }

  return 1;
}

void CA::Render::SDFElementLayer::~SDFElementLayer(CA::Render::SDFElementLayer *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAAF4;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  --dword_1ED4EAAF4;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void CA::OGL::MetalBufferPool::pool_flush(CA::OGL::MetalBufferPool *this, unint64_t a2, int a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(this + 1);
    if (v5)
    {
      if (*(this + 6))
      {
        CA::OGL::MetalBufferPool::retire_metal_buffer(this, v5);
      }
    }
  }

  os_unfair_lock_lock(this + 14);
  v6 = *(this + 43);
  if (v6)
  {
    v7 = (this + 344);
    v8 = *(this + 43);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8);
    do
    {
      v10 = *(v6 + 4);
      v11 = v10 > a2;
      v12 = v10 <= a2;
      if (v11)
      {
        v7 = v6;
      }

      v6 = *&v6[8 * v12];
    }

    while (v6);
    v13 = v9;
    if (v9 != v7)
    {
      v14 = v9;
      do
      {
        v15 = v14[5];
        v29[0] = v15;
        if ([v15 length] == 0x40000)
        {
          v16 = *(this + 35);
          if (v16 >= 0x10)
          {
            v17 = *(this + 34);
            v18 = *(*(*(this + 31) + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v17 & 0x1FF));
            v28 = v18;
            *(this + 34) = v17 + 1;
            *(this + 35) = v16 - 1;
            std::deque<objc_object  {objcproto9MTLBuffer}*>::__maybe_remove_front_spare[abi:nn200100](this + 240);
            v19 = *(this + 41);
            if (v19 >= 0x40)
            {
              v20 = *(*(*(this + 37) + ((*(this + 40) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 40) & 0x1FFLL));
              ++*(this + 40);
              *(this + 41) = v19 - 1;
              std::deque<objc_object  {objcproto9MTLBuffer}*>::__maybe_remove_front_spare[abi:nn200100](this + 288);
            }

            std::deque<objc_object  {objcproto9MTLBuffer}*>::push_back(this + 36, &v28);
            [v18 setPurgeableState:3];
          }

          std::deque<objc_object  {objcproto9MTLBuffer}*>::push_back(this + 30, v29);
        }

        else
        {
        }

        v21 = v14[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v14[2];
            v23 = *v22 == v14;
            v14 = v22;
          }

          while (!v23);
        }

        v14 = v22;
      }

      while (v22 != v7);
      v13 = v7;
    }

    if (v9 != v13)
    {
      do
      {
        v24 = v9[1];
        v25 = v9;
        if (v24)
        {
          do
          {
            v26 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v26 = v25[2];
            v23 = *v26 == v25;
            v25 = v26;
          }

          while (!v23);
        }

        if (*(this + 42) == v9)
        {
          *(this + 42) = v26;
        }

        v27 = *(this + 43);
        --*(this + 44);
        std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v27, v9);
        operator delete(v9);
        v9 = v26;
      }

      while (v26 != v13);
    }
  }

  os_unfair_lock_unlock(this + 14);
}

void *CA::Render::Update::release_objects(void *this)
{
  v1 = this[44];
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = v1;
      atomic_compare_exchange_strong(v2 + 44, &v3, 0);
      if (v3 == v1)
      {
        do
        {
          this = *v1;
          if (atomic_fetch_add((*v1 + 8), 0xFFFFFFFF) == 1)
          {
            this = (*(*this + 16))(this);
          }

          v1 = v1[1];
        }

        while (v1);
      }

      v1 = v2[44];
    }

    while (v1);
  }

  return this;
}

void CA::OGL::MetalContext::collect(CA::OGL::MetalContext *this, _BOOL4 a2)
{
  CA::OGL::MetalContext::purge_deferred_surfaces(this);
  v4 = *(this + 595);
  v5 = atomic_load(this + 594);
  CA::OGL::MetalBufferPool::pool_flush(v4, v5, 0);
  if (a2)
  {
    os_unfair_lock_lock((v4 + 56));
    v6 = *(v4 + 248);
    v7 = *(v4 + 256);
    if (v7 == v6)
    {
      v11 = (v4 + 280);
      v7 = *(v4 + 248);
    }

    else
    {
      v8 = *(v4 + 272);
      v9 = &v6[v8 >> 9];
      v10 = (*v9 + 8 * (v8 & 0x1FF));
      v11 = (v4 + 280);
      v12 = *(v6 + (((*(v4 + 280) + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v4 + 280) + v8) & 0x1FF);
      if (v10 != v12)
      {
        do
        {

          if (v10 - *v9 == 4096)
          {
            v13 = v9[1];
            ++v9;
            v10 = v13;
          }
        }

        while (v10 != v12);
        v6 = *(v4 + 248);
        v7 = *(v4 + 256);
      }
    }

    *v11 = 0;
    v14 = v7 - v6;
    if (v14 >= 3)
    {
      do
      {
        operator delete(*v6);
        v15 = *(v4 + 256);
        v6 = (*(v4 + 248) + 8);
        *(v4 + 248) = v6;
        v14 = (v15 - v6) >> 3;
      }

      while (v14 > 2);
    }

    if (v14 == 1)
    {
      v16 = 256;
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_16;
      }

      v16 = 512;
    }

    *(v4 + 272) = v16;
LABEL_16:
    v17 = *(v4 + 296);
    v18 = *(v4 + 304);
    if (v18 == v17)
    {
      v22 = (v4 + 328);
      v18 = *(v4 + 296);
    }

    else
    {
      v19 = *(v4 + 320);
      v20 = &v17[v19 >> 9];
      v21 = (*v20 + 8 * (v19 & 0x1FF));
      v22 = (v4 + 328);
      v23 = *(v17 + (((*(v4 + 328) + v19) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v4 + 328) + v19) & 0x1FF);
      if (v21 != v23)
      {
        do
        {

          if (v21 - *v20 == 4096)
          {
            v24 = v20[1];
            ++v20;
            v21 = v24;
          }
        }

        while (v21 != v23);
        v17 = *(v4 + 296);
        v18 = *(v4 + 304);
      }
    }

    *v22 = 0;
    v25 = v18 - v17;
    if (v25 >= 3)
    {
      do
      {
        operator delete(*v17);
        v26 = *(v4 + 304);
        v17 = (*(v4 + 296) + 8);
        *(v4 + 296) = v17;
        v25 = (v26 - v17) >> 3;
      }

      while (v25 > 2);
    }

    if (v25 == 1)
    {
      v27 = 256;
    }

    else
    {
      if (v25 != 2)
      {
LABEL_30:
        os_unfair_lock_unlock((v4 + 56));
        goto LABEL_31;
      }

      v27 = 512;
    }

    *(v4 + 320) = v27;
    goto LABEL_30;
  }

LABEL_31:

  CA::OGL::Context::collect(this, a2);
}

void CA::OGL::Context::collect(CA::OGL::Context *this, char a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = *(this + 105);
  if (v4)
  {
    v5 = *(this + 81);
    v89 = 0;
    v90 = 0.0;
    if (v5 != 0.0)
    {
      v90 = v5 + -5.0;
      if (v5 + -5.0 > *(v4 + 32))
      {
        v89 = v4;
        *(v4 + 32) = 0x7FF0000000000000;
        os_unfair_lock_lock((v4 + 40));
        x_hash_table_remove_if (*(v4 + 16), CA::Render::TileCache::collect_entry, &v89);
        os_unfair_lock_unlock((v4 + 40));
      }
    }

    if (*(v4 + 24))
    {
      os_unfair_lock_lock((v4 + 40));
      v6 = *(v4 + 24);
      *(v4 + 24) = 0;
      os_unfair_lock_unlock((v4 + 40));
      if (v6)
      {
        v7 = v6;
        do
        {
          v8 = *v7;
          CA::Render::tile_cache_entry_release_images(v4, *v7);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v8);
          v7 = v7[1];
        }

        while (v7);
        do
        {
          v9 = v6[1];
          free(v6);
          v6 = v9;
        }

        while (v9);
      }
    }
  }

  v10 = *(this + 106);
  if (v10)
  {
    if (*(v10 + 16))
    {
      v11 = *(this + 81);
      os_unfair_lock_lock((v10 + 40));
      v12 = *(v10 + 16);
      *(v10 + 16) = 0;
      os_unfair_lock_unlock((v10 + 40));
      if (v12)
      {
        v15 = 15;
        v16 = v12;
        do
        {
          v16 = v16[1];
          if (v15 < 2)
          {
            break;
          }

          --v15;
        }

        while (v16);
        if (v16)
        {
          v17 = v16[1];
          if (v17)
          {
            do
            {
              CA::Render::ShadowCache::free_bounds_entry(*v17, v13, v14);
              v17 = *(v17 + 8);
            }

            while (v17);
            v18 = v16[1];
            if (v18)
            {
              do
              {
                v19 = v18[1];
                free(v18);
                v18 = v19;
              }

              while (v19);
            }

            v16[1] = 0;
          }
        }

        v20 = v12;
        do
        {
          v21 = *v20;
          v20 = v20[1];
          if (*(v21 + 96) + 60.0 < v11)
          {
            x_list_remove(v12, v21);
            v12 = v22;
            v23 = *(v21 + 104);
            if (v23)
            {
              if (atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v23 + 16))(v23);
              }

              *(v21 + 104) = 0;
            }

            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            malloc_zone_free(malloc_zone, v21);
          }
        }

        while (v20);
        os_unfair_lock_lock((v10 + 40));
        if (v12)
        {
          v24 = *(v10 + 16);
          v89 = v24;
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *(v24 + 8);
            }

            while (v24);
            v26 = (v25 + 8);
          }

          else
          {
            v26 = &v89;
          }

          *v26 = v12;
          *(v10 + 16) = v89;
        }
      }

      else
      {
        os_unfair_lock_lock((v10 + 40));
      }

      os_unfair_lock_unlock((v10 + 40));
    }

    if (*(v10 + 32))
    {
      os_unfair_lock_lock((v10 + 40));
      v27 = *(v10 + 32);
      *(v10 + 32) = 0;
      os_unfair_lock_unlock((v10 + 40));
      if (v27)
      {
        do
        {
          v28 = *v27;
          v29 = v27[19];
          if (v29)
          {
            v27[20] = v29;
            operator delete(v29);
          }

          v30 = v27[16];
          if (v30)
          {
            v27[17] = v30;
            operator delete(v30);
          }

          v31 = v27[2];
          if (v31 && atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v31 + 16))(v31);
          }

          v32 = v27[1];
          if (v32 && atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v27);
          v27 = v28;
        }

        while (v28);
      }
    }

    if (*(v10 + 24))
    {
      os_unfair_lock_lock((v10 + 40));
      v33 = *(v10 + 24);
      *(v10 + 24) = 0;
      os_unfair_lock_unlock((v10 + 40));
      if (v33)
      {
        do
        {
          v35 = *v33;
          v34 = v33[1];
          if (v34 && atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v34 + 16))(v34);
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v33);
          v33 = v35;
        }

        while (v35);
      }
    }
  }

  if (*(this + 305) && (BYTE5(xmmword_1ED4E98AC) & 1) == 0)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(this + 302);
  }

  os_unfair_lock_lock(this + 178);
  v36 = *(this + 96);
  v37 = (this + 760);
  ptr = *(this + 95);
  v88 = v36;
  *(this + 760) = 0u;
  v38 = *(this + 98);
  v86 = v38;
  *(this + 98) = 0;
  if (v36)
  {
    v39 = v36;
    do
    {
      *(*v39 + 60) = 0;
      v39 = v39[1];
    }

    while (v39);
  }

  os_unfair_lock_unlock(this + 178);
  if (a2)
  {
    v40 = -1;
    if (!v38)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v40 = *(this + 160);
    if (!v38)
    {
      goto LABEL_80;
    }
  }

  v41 = &v86;
  do
  {
    v42 = *v38;
    if ((*(*v38 + 148) & 1) != 0 && *(v42 + 4) > v40)
    {
      v41 = v38 + 1;
    }

    else
    {
      *v41 = x_list_remove_head(v38);
      CA::OGL::Context::release_surface(this, v42);
    }

    v38 = *v41;
  }

  while (*v41);
  v36 = v88;
LABEL_80:
  if (v36)
  {
    v43 = &v88;
    do
    {
      v44 = *v36;
      v45 = *(*v36 + 20);
      if (v45 > v40)
      {
        if (v45 == *(this + 159))
        {
          goto LABEL_89;
        }
      }

      else if (v40 != -1)
      {
        goto LABEL_87;
      }

      if (!(*(*this + 680))(this, *v36, v45 <= v40))
      {
LABEL_89:
        v43 = v36 + 1;
        goto LABEL_90;
      }

LABEL_87:
      v36 = x_list_remove_head(v36);
      *v43 = v36;
      *(v44 + 20) = 0;
      v46 = *(v44 + 8);
      if (v46)
      {
        (*(*v46 + 200))(v46);
        *(v44 + 8) = 0;
LABEL_90:
        v36 = *v43;
      }
    }

    while (v36);
  }

  v47 = ptr;
  if (ptr)
  {
    p_ptr = &ptr;
    do
    {
      v49 = *v47;
      if ((v40 == -1 || *(v49 + 20) > v40) && !(*(*this + 680))(this, *v47, v40 == -1))
      {
        p_ptr = (v47 + 1);
      }

      else
      {
        *p_ptr = x_list_remove_head(v47);
        (*(*this + 688))(this, v49);
        v50 = *(v49 + 32);
        if (v50)
        {
          CA::WindowServer::Surface::unref(v50);
        }

        v51 = *(v49 + 40);
        if (v51)
        {
          CA::WindowServer::Surface::unref(v51);
        }

        v52 = *(v49 + 8);
        if (v52)
        {
          (*(*v52 + 200))(v52);
          *(v49 + 8) = 0;
        }

        if ((*(v49 + 59) & 2) != 0)
        {
          x_list_remove(*(this + 97), v49);
          *(this + 97) = v53;
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v49);
      }

      v47 = *p_ptr;
    }

    while (*p_ptr);
    v47 = ptr;
  }

  v54 = v86;
  v55 = v88;
  if (v86 || v88 || v47)
  {
    os_unfair_lock_lock(this + 178);
    v56 = *(this + 98);
    v89 = v56;
    if (v56)
    {
      do
      {
        v57 = v56;
        v56 = *(v56 + 8);
      }

      while (v56);
      v58 = (v57 + 8);
    }

    else
    {
      v58 = &v89;
    }

    *v58 = v54;
    *(this + 98) = v89;
    if (v55)
    {
      do
      {
        v59 = v55[1];
        if (*(*v55 + 61))
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v55);
        }

        else
        {
          *(*v55 + 60) = 1;
          v55[1] = *(this + 96);
          *(this + 96) = v55;
        }

        v55 = v59;
      }

      while (v59);
    }

    v60 = *v37;
    v88 = 0;
    v89 = v60;
    if (v60)
    {
      do
      {
        v61 = v60;
        v60 = *(v60 + 8);
      }

      while (v60);
      v62 = (v61 + 8);
    }

    else
    {
      v62 = &v89;
    }

    *v62 = v47;
    *v37 = v89;
    os_unfair_lock_unlock(this + 178);
  }

  v63 = *(this + 97);
  if (v63)
  {
    v64 = (this + 776);
    do
    {
      v65 = *v63;
      if (*(*v63 + 20) > v40 || v40 == -1 && !(*(*this + 680))(this, *v63, 1))
      {
        v64 = v63 + 1;
      }

      else
      {
        *v64 = x_list_remove_head(v63);
        *(v65 + 52) &= ~0x200000000000000uLL;
        (*(*this + 688))(this, v65);
      }

      v63 = *v64;
    }

    while (*v64);
  }

  v66 = *(this + 100);
  if (v66)
  {
    v68 = *v66;
    v67 = v66[1];
    if (*v66 != v67)
    {
      while (1)
      {
        v69 = *(v68 + 26) - 1;
        *(v68 + 26) = v69;
        if (!v69)
        {
          break;
        }

        v68 += 32;
        if (v68 == v67)
        {
          goto LABEL_160;
        }
      }

      if (v68 != v67)
      {
        v70 = v68 + 32;
        if (v68 + 32 != v67)
        {
          do
          {
            v71 = *(v70 + 26) - 1;
            *(v70 + 26) = v71;
            if (v71)
            {
              *v68 = *v70;
              v72 = *(v70 + 8);
              *(v70 + 8) = 0;
              v73 = *(v68 + 8);
              *(v68 + 8) = v72;
              if (v73 && atomic_fetch_add(v73 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v73 + 16))(v73);
              }

              v74 = *(v70 + 16);
              *(v70 + 16) = 0;
              v75 = *(v68 + 16);
              *(v68 + 16) = v74;
              if (v75 && atomic_fetch_add(v75 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v75 + 16))(v75);
              }

              *(v68 + 24) = *(v70 + 24);
              v68 += 32;
            }

            v70 += 32;
          }

          while (v70 != v67);
          v66 = *(this + 100);
          v67 = v66[1];
        }
      }
    }

    if (v68 != v67)
    {
      while (v67 != v68)
      {
        v67 -= 32;
        std::__destroy_at[abi:nn200100]<CA::OGL::TransientRenderTexture,0>(v67);
      }

      v66[1] = v68;
    }
  }

LABEL_160:
  v76 = this + 808;
  if (*(this + 102) != (this + 808))
  {
    v77 = *(this + 101);
    if (v77 != v76)
    {
      while ((a2 & 1) != 0 || (*(this + 159) - *(v77 + 6)) > 0x1D || *(this + 103) > *(this + 104))
      {
        v79 = *v77;
        v78 = *(v77 + 1);
        *(v79 + 1) = v78;
        *v78 = v79;
        *v77 = v77;
        *(v77 + 1) = v77;
        v80 = *(v77 + 6);
        if (v80)
        {
          *(this + 103) -= *(v80 + 60) * *(v80 + 56) * (*(v80 + 146) & 0x1F);
          CA::OGL::Context::release_surface(this, v80);
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v77);
        v77 = v79;
        if (v79 == v76)
        {
          goto LABEL_176;
        }
      }
    }

    v79 = v77;
LABEL_176:
    while (v79 != v76)
    {
      if (*(v79 + 6) && *(v79 + 6) < *(this + 159))
      {
        (*(*this + 872))(this);
      }

      v79 = *(v79 + 1);
    }
  }

  v82 = (this + 80);
  v81 = *(this + 10);
  if (v81)
  {
    do
    {
      if ((a2 & 1) != 0 || (v84 = *v81 - 1, v83 = *v81 == 1, *v81 = v84, v83))
      {
        *v82 = *(v81 + 8);
        (*(*this + 800))(this, v81);
      }

      else
      {
        if (v84 <= 2)
        {
          (*(*this + 872))(this, v81, 2);
        }

        v82 = (v81 + 8);
      }

      v81 = *v82;
    }

    while (*v82);
  }

  if (a2)
  {
    v85 = *(this + 86);
    if (v85)
    {
      if (*v85 == 1)
      {
        CA::OGL::Context::release_surface(this, v85);
        *(this + 86) = 0;
      }
    }
  }
}

void CA::Render::GradientLayer::~GradientLayer(CA::Render::GradientLayer *this)
{
  *this = &unk_1EF204CF8;
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 15);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 14);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  CA::Render::InterpolatedFunction::~InterpolatedFunction(this + 2);
  --dword_1ED4EAA88;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v6);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_zone;

  malloc_zone_free(v7, this);
}

{
  *this = &unk_1EF204CF8;
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 15);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 14);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  CA::Render::InterpolatedFunction::~InterpolatedFunction(this + 2);
  --dword_1ED4EAA88;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v6);
  }
}

void CA::Render::InterpolatedFunction::~InterpolatedFunction(void **this)
{
  *this = &unk_1EF1FBE88;
  free(this[4]);
  free(this[6]);
  --dword_1ED4EAA80;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v2);
  }
}

{
  CA::Render::InterpolatedFunction::~InterpolatedFunction(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::Update::mark_composited(CA::Render::Update *this)
{
  v1 = *(this + 111);
  if (v1)
  {
    v2 = *(this + 111);
    atomic_compare_exchange_strong(this + 111, &v2, 0);
    if (v2 == v1)
    {
      v3 = *v1;
      if (*v1 != v1 + 1)
      {
        do
        {
          v4 = v3[4];
          if (*(v4 + 12) != 25)
          {
            __assert_rtn("mark_composited", "render-updater.cpp", 12032, "obj->type () == Render::kTypeImageQueue");
          }

          CA::Render::ImageQueue::did_composite(v3[4]);
          if (atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v4 + 16))(v4);
          }

          v5 = v3[1];
          if (v5)
          {
            do
            {
              v6 = v5;
              v5 = *v5;
            }

            while (v5);
          }

          else
          {
            do
            {
              v6 = v3[2];
              v7 = *v6 == v3;
              v3 = v6;
            }

            while (!v7);
          }

          v3 = v6;
        }

        while (v6 != v1 + 1);
      }

      std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v1[1]);

      JUMPOUT(0x1865EA9A0);
    }
  }
}

void std::deque<objc_object  {objcproto9MTLBuffer}*>::push_back(unint64_t *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  v4 = a1[1];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x200)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<objc_object  {objcproto9MTLBuffer}**>>(v12);
    }

    a1[4] = v7 - 512;
    v13[0] = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<objc_object  {objcproto9MTLBuffer}**>::emplace_back<objc_object  {objcproto9MTLBuffer}*&>(a1, v13);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  *(*(v4 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++a1[5];
}

void sub_183B281C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void CA::WindowServer::IOMFBDisplay::update_blend_display_color_spaces(CA::WindowServer::IOMFBDisplay *this)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((*(*this + 1888))(this) && (byte_1ED4E9840 & 1) == 0)
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v2 = (this + 25832);
    v3 = *&dword_1ED4E96F8;
    if (v3)
    {
      v4 = CAGetColorSpace(v3);
      (*(*this + 1864))(this, v4);
      if (initialized[0] != -1)
      {
        dispatch_once_f(initialized, 0, init_debug);
      }
    }

    v5 = *&dword_1ED4E96FC;
    if (v5)
    {
      v6 = CAGetColorSpace(v5);
      (*(*this + 1880))(this, v6);
    }

    if ((*(this + 29561) & 1) != 0 || *(this + 29562) == 1)
    {
      v7 = CA::WindowServer::IOMFBDisplay::color_program_cache(this);
      v7[83] = 1;
      *(this + 6890) = -1;
      v8 = (this + 48 * *v2);
      if (!v8[6484])
      {
        CA::IOMobileFramebuffer::swap_begin((this + 25696), v8 + 6484);
      }

      *(this + 6516) = 0;
      v9 = CAGetColorSpace(37);
      if (*(this + 29561) == 1 && (*(this + 905) & 2) != 0)
      {
        v10 = (*(*this + 1856))(this);
        if (BYTE13(xmmword_1ED4E982C) == 1)
        {
          v19 = CGColorSpaceCopyICCProfileDescription();
          if (v19)
          {
            v20 = v19;
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            if (x_log_get_color(void)::once != -1)
            {
              dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
            }

            v21 = x_log_get_color(void)::log;
            if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_INFO))
            {
              v22 = *(this + 6);
              *buf = 67109378;
              v24 = v22;
              v25 = 2080;
              CString = CA_CFStringGetCString(v20, &v27, 128);
              _os_log_impl(&dword_183AA6000, v21, OS_LOG_TYPE_INFO, "Display %u setting IOMFB blending colorspace to '%s'", buf, 0x12u);
            }

            CFRelease(v20);
            v2 = (this + 25832);
          }
        }

        CA::ColorProgram::Cache::set_colorspace(v7, v9);
        v11 = CA::ColorProgram::Cache::lookup(v7, v10, 0, 0);
        if (v11)
        {
          CA::WindowServer::IOMFBDisplay::set_icc_matrix_and_trc(this, v11, 4u, 12, 0xFFFFFFFF, 1.0);
        }

        *(v2 + 3729) = 0;
      }

      if (*(v2 + 3730) == 1)
      {
        (*(*this + 1872))(this);
        if (BYTE13(xmmword_1ED4E982C) == 1)
        {
          v14 = CGColorSpaceCopyICCProfileDescription();
          if (v14)
          {
            v15 = v14;
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            if (x_log_get_color(void)::once != -1)
            {
              dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
            }

            v16 = x_log_get_color(void)::log;
            if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_INFO))
            {
              v17 = *(this + 6);
              v18 = CA_CFStringGetCString(v15, &v27, 128);
              *buf = 67109378;
              v24 = v17;
              v25 = 2080;
              CString = v18;
              _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_INFO, "Display %u setting IOMFB display colorspace to '%s'", buf, 0x12u);
            }

            CFRelease(v15);
          }
        }

        v12 = (*(*this + 1872))(this);
        CA::ColorProgram::Cache::set_colorspace(v7, v12);
        v13 = CA::ColorProgram::Cache::lookup(v7, v9, 0, 0);
        if (v13)
        {
          CA::WindowServer::IOMFBDisplay::set_icc_matrix_and_trc(this, v13, 5u, 15, 0xFFFFFFFF, 1.0);
        }

        *(v2 + 3730) = 0;
      }
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::update_system_gamma(CA::WindowServer::IOMFBDisplay *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E9700 != 0.0)
  {
    memset(v5, 0, sizeof(v5));
    *(v5 + 4) = dword_1ED4E9700 | 0x3F80000000000000;
    v6 = 0;
    (*(*this + 1912))(this, v5);
  }

  result = (*(*this + 1888))(this);
  if (result && *(this + 29563) == 1 && (byte_1ED4E9840 & 1) == 0)
  {
    v3 = (this + 48 * *(this + 6458));
    if (!v3[6484])
    {
      CA::IOMobileFramebuffer::swap_begin((this + 25696), v3 + 6484);
    }

    *(this + 6516) = 0;
    v4 = (*(*this + 1904))(this);
    result = CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4, 14, 7);
    *(this + 29563) = 0;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::update_blackpoint_adaptation(CA::WindowServer::IOMFBDisplay *this)
{
  result = (*(*this + 1888))(this);
  if (result && *(this + 29564) == 1 && (byte_1ED4E9840 & 1) == 0)
  {
    v3 = (this + 48 * *(this + 6458));
    if (!v3[6484])
    {
      CA::IOMobileFramebuffer::swap_begin((this + 25696), v3 + 6484);
    }

    *(this + 6516) = 0;
    v4 = (*(*this + 1920))(this);
    result = CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4, 17, 7);
    *(this + 29564) = 0;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::update_gamma_adjustment(CA::WindowServer::IOMFBDisplay *this)
{
  result = (*(*this + 1888))(this);
  if (result && *(this + 29565) == 1 && (byte_1ED4E9840 & 1) == 0)
  {
    v3 = (this + 48 * *(this + 6458));
    if (!v3[6484])
    {
      CA::IOMobileFramebuffer::swap_begin((this + 25696), v3 + 6484);
    }

    *(this + 6516) = 0;
    v4 = (*(*this + 1936))(this);
    CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4, 16, 1);
    CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4 + 36, 16, 2);
    result = CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4 + 72, 16, 4);
    *(this + 29565) = 0;
  }

  return result;
}

double CA::WindowServer::IOMFBDisplay::update_user_adjustment(CA::WindowServer::IOMFBDisplay *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = (this + 24576);
  if ((*(this + 27100) & 1) == 0)
  {
    memset(v11, 0, 60);
    v3 = *(this + 27076);
    *(v11 + 12) = *(this + 27060);
    *(&v11[1] + 12) = v3;
    HIDWORD(v11[2]) = *(this + 6773);
    CA::WindowServer::IOMFBDisplay::swap_set_icc_matrix(this, 7, *(this + 6), 0, v11);
    IOMobileFrameBufferSwapSetUserLuminanceAdjustment();
    *(v1 + 2524) = 1;
    if (BYTE13(xmmword_1ED4E982C) == 1)
    {
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v5 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_INFO))
      {
        v6 = *(this + 6);
        v7 = v1[630];
        v8[0] = 67109376;
        v8[1] = v6;
        v9 = 2048;
        v10 = v7;
        _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_INFO, "Display %u setting IOMFB display luminance adjustment to %f", v8, 0x12u);
      }
    }
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_framebuffer_ax_matrix(CA::WindowServer::IOMFBDisplay *this)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = (this + 27104);
  if (*(this + 29513) & 1) != 0 || (*(this + 27172))
  {
    return 0;
  }

  memset(v42, 0, 60);
  v4 = 12;
  v5 = this + 27104;
  do
  {
    v6 = v42 + v4;
    *v6 = *v5;
    *(v6 + 2) = *(v5 + 2);
    v4 += 12;
    v5 += 16;
  }

  while (v4 != 48);
  result = IOMobileFramebufferSwapSetColorMatrix();
  if (!result)
  {
    *buf = vcvts_n_u32_f32(v1[16], 0x10uLL);
    result = IOMobileFramebufferSetParameter();
    if (BYTE9(xmmword_1ED4E97EC) == 1)
    {
      v20 = result;
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v7 = x_log_get_windowserver(void)::log;
      v8 = os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT);
      result = v20;
      if (v8)
      {
        v9 = *(this + 6);
        v10 = *v1;
        v11 = v1[1];
        v12 = v1[2];
        v13 = v1[4];
        v14 = v1[5];
        v15 = v1[6];
        v16 = v1[8];
        v17 = v1[9];
        v18 = v1[10];
        v19 = v1[16];
        *buf = 67111680;
        *&buf[4] = v9;
        v22 = 2048;
        v23 = v10;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v12;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = v14;
        v32 = 2048;
        v33 = v15;
        v34 = 2048;
        v35 = v16;
        v36 = 2048;
        v37 = v17;
        v38 = 2048;
        v39 = v18;
        v40 = 2048;
        v41 = v19;
        _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEFAULT, "Display %u accessibility matrix [%g, %g, %g; %g, %g, %g; %g, %g, %g], scale %g\n", buf, 0x6Cu);
        result = v20;
      }
    }

    *(v1 + 68) = 1;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::fb_swap_set_layer(CA::WindowServer::IOMFBDisplay *this, CA::IOMobileFramebuffer *a2, uint64_t a3, IOSurfaceRef buffer, const CA::Rect *a5, const CA::Rect *a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  if (buffer)
  {
    IOSurfaceGetID(buffer);
    kdebug_trace();
    ID = IOSurfaceGetID(buffer);
  }

  else
  {
    kdebug_trace();
    ID = 0;
  }

  if (*(a2 + a3 + 4) != ID)
  {
    *(a2 + 16) = 1;
    *(a2 + a3 + 4) = ID;
  }

  v24 = *(a2 + 3);
  v16.n128_u64[0] = *a5;
  v17.n128_u64[0] = *(a5 + 1);
  v18.n128_u64[0] = *(a5 + 2);
  v19.n128_u64[0] = *(a5 + 3);
  v20.n128_u64[0] = *a6;
  v21.n128_u64[0] = *(a6 + 1);
  v22.n128_u64[0] = *(a6 + 2);
  v23.n128_u64[0] = *(a6 + 3);

  return MEMORY[0x1EEE11BA8](v24, a3, buffer, a7, v16, v17, v18, v19, v20, v21, v22, v23);
}

void CA::WindowServer::IOMFBDisplay::swap_brightness(os_unfair_lock_s *this)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = this + 6374;
  if (LOBYTE(this[7396]._os_unfair_lock_opaque) != 1 || (v3 = atomic_load((*&this[192]._os_unfair_lock_opaque + 4)), v3 == 1) && (v4 = atomic_load((*&this[192]._os_unfair_lock_opaque + 5)), v4 == 1) && (this[7396]._os_unfair_lock_opaque & 0x100) != 0)
  {
    os_unfair_lock_lock(this + 6868);
    v5 = *&this[6870]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 6868);
    if (!v5 || LOBYTE(v2[1018]._os_unfair_lock_opaque) != 1 || (byte_1ED4E983F & 1) != 0)
    {
LABEL_152:
      (*(*&this->_os_unfair_lock_opaque + 1000))(this, 0);
      return;
    }

    v6 = (*(*&this->_os_unfair_lock_opaque + 952))(this);
    if (!CA::WindowServer::Display::Mode::is_hdr(&this[164]))
    {
      v6 = CA::WindowServer::Display::edr_headroom(this) * v6;
    }

    if (HIBYTE(v2[1018]._os_unfair_lock_opaque) == 1)
    {
      HIBYTE(v2[1018]._os_unfair_lock_opaque) = 0;
      *&this[6864]._os_unfair_lock_opaque = vdupq_n_s64(0x7FF8000000000000uLL);
      v2[240]._os_unfair_lock_opaque = 2143289344;
      v2[244]._os_unfair_lock_opaque = 2143289344;
      v2[246]._os_unfair_lock_opaque = 2143289344;
      v2[248]._os_unfair_lock_opaque = 2143289344;
      v2[242]._os_unfair_lock_opaque = 2143289344;
      v2[251]._os_unfair_lock_opaque = 2143289344;
      v2[253]._os_unfair_lock_opaque = 2143289344;
      if (x_log_get_brightness(void)::once != -1)
      {
        dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
      }

      v74 = x_log_get_brightness(void)::log;
      if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        os_unfair_lock_opaque = this[6]._os_unfair_lock_opaque;
        *buf = 67109120;
        *&buf[4] = os_unfair_lock_opaque;
        _os_log_impl(&dword_183AA6000, v74, OS_LOG_TYPE_DEFAULT, "Display %u forcing swap brightness values\n", buf, 8u);
      }
    }

    v7 = *&this[6864]._os_unfair_lock_opaque;
    v8 = v6 != v7;
    if (v6 == v7)
    {
      v14 = NAN;
    }

    else
    {
      v10 = IOMobileFramebufferSwapSetBrightness();
      if (v10)
      {
        v11 = v10;
        if (x_log_get_brightness(void)::once != -1)
        {
          dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
        }

        v12 = x_log_get_brightness(void)::log;
        if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v13 = this[6]._os_unfair_lock_opaque;
          *buf = 67109376;
          *&buf[4] = v13;
          *&buf[8] = 1024;
          *&buf[10] = v11;
          _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "Display %u swap brightness failed: 0x%x", buf, 0xEu);
        }
      }

      *&this[6864]._os_unfair_lock_opaque = v6;
      v9 = v6;
      v14 = v9;
    }

    v20 = (*(*&this->_os_unfair_lock_opaque + 968))(this);
    if (*&this[6866]._os_unfair_lock_opaque == v20)
    {
      v25 = 0x7FF8000000000000;
    }

    else
    {
      v21 = IOMobileFramebufferSwapSetBrightnessLimit();
      if (v21)
      {
        v22 = v21;
        if (x_log_get_brightness(void)::once != -1)
        {
          dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
        }

        v23 = x_log_get_brightness(void)::log;
        if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v24 = this[6]._os_unfair_lock_opaque;
          *buf = 67109376;
          *&buf[4] = v24;
          *&buf[8] = 1024;
          *&buf[10] = v22;
          _os_log_impl(&dword_183AA6000, v23, OS_LOG_TYPE_DEFAULT, "Display %u swap brightness limit failed: 0x%x\n", buf, 0xEu);
        }
      }

      *&this[6866]._os_unfair_lock_opaque = v20;
      v25 = *&v20;
      v8 = 1;
    }

    if (CADeviceSupportsRTPLC::once[0] != -1)
    {
      dispatch_once(CADeviceSupportsRTPLC::once, &__block_literal_global_356);
    }

    if (CADeviceSupportsRTPLC::rtplc != 1 || (v26 = *&v2[259]._os_unfair_lock_opaque * 3.14159265, (LODWORD(v26) & 0x7FFFFFFFu) > 0x7F7FFFFF) || *&v2[240]._os_unfair_lock_opaque == v26)
    {
      v27 = NAN;
    }

    else
    {
      IOMobileFramebufferSwapSetAmbientLux();
      *&v2[240]._os_unfair_lock_opaque = v26;
      v27 = v26;
    }

    if (CADeviceSupportsTwilight::once != -1)
    {
      dispatch_once(&CADeviceSupportsTwilight::once, &__block_literal_global_359);
    }

    v28 = NAN;
    if (CADeviceSupportsTwilight::twilight == 1 && (byte_1ED4E9865 & 1) == 0)
    {
      v29 = (*(*&this->_os_unfair_lock_opaque + 1272))(this);
      if ((LODWORD(v29) & 0x7FFFFFFFu) > 0x7F7FFFFF || v29 == *&v2[244]._os_unfair_lock_opaque)
      {
        v28 = NAN;
      }

      else
      {
        v30 = IOMobileFramebufferSetTwilightStrength();
        if (v30)
        {
          v31 = v30;
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v32 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v33 = this[6]._os_unfair_lock_opaque;
            *buf = 67109632;
            *&buf[4] = v33;
            *&buf[8] = 2048;
            *&buf[10] = v29;
            v80 = 1024;
            LODWORD(v81) = v31;
            _os_log_impl(&dword_183AA6000, v32, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_twilight_strength %g failed: 0x%x\n", buf, 0x18u);
          }
        }

        *&v2[244]._os_unfair_lock_opaque = v29;
        v28 = v29;
      }
    }

    if ((byte_1ED4E9867 & 1) != 0 || (v34 = (*(*&this->_os_unfair_lock_opaque + 1288))(this), (LODWORD(v34) & 0x7FFFFFFFu) > 0x7F7FFFFF) || v34 == *&v2[246]._os_unfair_lock_opaque)
    {
      v39 = NAN;
    }

    else
    {
      v35 = IOMobileFramebufferSetAmmoliteStrength();
      if (v35)
      {
        v36 = v35;
        if (x_log_get_brightness(void)::once != -1)
        {
          dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
        }

        v37 = x_log_get_brightness(void)::log;
        if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v38 = this[6]._os_unfair_lock_opaque;
          *buf = 67109632;
          *&buf[4] = v38;
          *&buf[8] = 2048;
          *&buf[10] = v34;
          v80 = 1024;
          LODWORD(v81) = v36;
          _os_log_impl(&dword_183AA6000, v37, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_aml_strength %g failed: 0x%x\n", buf, 0x18u);
        }
      }

      *&v2[246]._os_unfair_lock_opaque = v34;
      v39 = v34;
    }

    if (CADeviceSupportsGCP::once != -1)
    {
      dispatch_once(&CADeviceSupportsGCP::once, &__block_literal_global_488);
    }

    v40 = NAN;
    if (CADeviceSupportsGCP::b == 1 && (byte_1ED4E98A8 & 1) == 0)
    {
      v41 = (*(*&this->_os_unfair_lock_opaque + 1304))(this);
      if ((LODWORD(v41) & 0x7FFFFFFFu) > 0x7F7FFFFF || v41 == *&v2[248]._os_unfair_lock_opaque)
      {
        v40 = NAN;
      }

      else
      {
        v42 = *&this[6424]._os_unfair_lock_opaque;
        if (init_iomfb(void)::once != -1)
        {
          dispatch_once(&init_iomfb(void)::once, &__block_literal_global_14192);
        }

        if (iomfb_swap_set_contrast_preservation_f)
        {
          v43 = iomfb_swap_set_contrast_preservation_f(v42, v41);
        }

        else
        {
          v43 = -536870212;
        }

        if (byte_1ED4E989D == 1)
        {
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v76 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v77 = this[6]._os_unfair_lock_opaque;
            *buf = 67109376;
            *&buf[4] = v77;
            *&buf[8] = 2048;
            *&buf[10] = v41;
            _os_log_impl(&dword_183AA6000, v76, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_contrast_preservation: %g\n", buf, 0x12u);
          }
        }

        if (v43)
        {
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v44 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v45 = this[6]._os_unfair_lock_opaque;
            *buf = 67109632;
            *&buf[4] = v45;
            *&buf[8] = 2048;
            *&buf[10] = v41;
            v80 = 1024;
            LODWORD(v81) = v43;
            _os_log_impl(&dword_183AA6000, v44, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_contrast_preservation %g failed: 0x%x\n", buf, 0x18u);
          }
        }

        *&v2[248]._os_unfair_lock_opaque = v41;
        v40 = v41;
      }
    }

    if (CADeviceSupportsMedina::once != -1)
    {
      dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
    }

    if (CADeviceSupportsMedina::medina != 1)
    {
      v50 = 0;
      v51 = NAN;
      goto LABEL_137;
    }

    v46 = (*(*&this->_os_unfair_lock_opaque + 1320))(this);
    is_fbi_active = CA::WindowServer::IOMFBDisplay::SecureIndicator::is_fbi_active(&this[6440]);
    if (is_fbi_active)
    {
      if (CAProcessUptime::once[0] != -1)
      {
        dispatch_once(CAProcessUptime::once, &__block_literal_global_19297);
      }

      *buf = 0;
      *&buf[8] = 0;
      gettimeofday(buf, 0);
      if (*buf - *&CAProcessUptime::start_time_s + *&buf[8] * 0.000001 < 4.0)
      {
        CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(&this[6440], 3);
        v46 = 1000.0;
      }
    }

    v48 = fabsf(v46);
    if ((LODWORD(v46) & 0x7FFFFFFFu) >= 0x7F800000 && LOBYTE(v2[68]._os_unfair_lock_opaque) == 3)
    {
      v46 = (*(*&this->_os_unfair_lock_opaque + 952))(this, v48);
      v48 = fabsf(v46);
      v49 = 1;
    }

    else
    {
      v49 = 0;
    }

    if (v48 == INFINITY)
    {
      v60 = *&this[6440]._os_unfair_lock_opaque;
      if (v60)
      {
        if (*v60 || (v61 = sil_mgr_instance(0, 0xFFFFFFFFLL), (*v60 = v61) != 0))
        {
          if (LOBYTE(v2[68]._os_unfair_lock_opaque) == 4)
          {
            v78 = 0;
            if (CA::WindowServer::SILMgr::turn_off_all_regions(*&this[6440]._os_unfair_lock_opaque, 0, 0, &v78) && !v78)
            {
              CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(&this[6440], 2);
              v71 = IOMobileFramebufferSwapSetIndicatorBrightness();
              if (x_log_get_brightness(void)::once != -1)
              {
                dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
              }

              v72 = x_log_get_brightness(void)::log;
              if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                v73 = this[6]._os_unfair_lock_opaque;
                *buf = 67109376;
                *&buf[4] = v73;
                *&buf[8] = 1024;
                *&buf[10] = v71;
                _os_log_impl(&dword_183AA6000, v72, OS_LOG_TYPE_DEFAULT, "Display %u disabling indicator brightness return: 0x%x", buf, 0xEu);
              }

              v2[251]._os_unfair_lock_opaque = 2143289344;
              v46 = 0.0;
            }

            else
            {
              v46 = NAN;
            }

            v50 = 0;
LABEL_125:
            if ((v2[252]._os_unfair_lock_opaque & 0x7FFFFFFF) > 0x7F7FFFFF || *&v2[252]._os_unfair_lock_opaque == *&v2[253]._os_unfair_lock_opaque)
            {
              goto LABEL_136;
            }

            if (MEMORY[0x1EEE8A778])
            {
              v62 = IOMobileFramebufferSwapSetIndicatorBrightnessLimit();
              if (!v62)
              {
LABEL_135:
                v2[253]._os_unfair_lock_opaque = v2[252]._os_unfair_lock_opaque;
LABEL_136:
                v51 = v46;
LABEL_137:
                v66 = (*(*&this->_os_unfair_lock_opaque + 1344))(this);
                if ((LODWORD(v66) & 0x7FFFFFFFu) > 0x7F7FFFFF || v66 == *&v2[242]._os_unfair_lock_opaque)
                {
                  v67 = NAN;
                }

                else
                {
                  v67 = v66;
                  IOMobileFrameBufferSwapSetContrastEnhancerStrength();
                  *&v2[242]._os_unfair_lock_opaque = v66;
                }

                if (v2->_os_unfair_lock_opaque)
                {
                  LOBYTE(v2->_os_unfair_lock_opaque) &= ~1u;
                  if (x_log_get_brightness(void)::once != -1)
                  {
                    dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
                  }

                  v68 = x_log_get_brightness(void)::log;
                  if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
                  {
                    v69 = this[6]._os_unfair_lock_opaque;
                    *buf = 67111168;
                    *&buf[4] = v69;
                    *&buf[8] = 2048;
                    *&buf[10] = v14;
                    v80 = 2048;
                    v81 = v25;
                    v82 = 2048;
                    v83 = v51;
                    v84 = 2048;
                    v85 = v27;
                    v86 = 2048;
                    v87 = v28;
                    v88 = 2048;
                    v89 = v39;
                    v90 = 2048;
                    v91 = v40;
                    v92 = 2048;
                    v93 = v67;
                    _os_log_impl(&dword_183AA6000, v68, OS_LOG_TYPE_DEFAULT, "Display %u swap brightness: %g, limit: %g, indicator brightness: %g, ambient lux: %g, low ambient strength: %g, high ambient strength: %g, contrast preservation: %g, contrast enhancer: %g\n", buf, 0x58u);
                  }
                }

                if ((v8 | v50) == 1)
                {
                  kdebug_trace();
                  if ((v2[1022]._os_unfair_lock_opaque & 0x10000) == 0)
                  {
                    BYTE2(v2[1022]._os_unfair_lock_opaque) = 1;
                    if (x_log_get_windowserver(void)::once != -1)
                    {
                      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                    }

                    v70 = x_log_get_windowserver(void)::log;
                    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_183AA6000, v70, OS_LOG_TYPE_DEFAULT, "DBVFlashWorkaround: _swapped_brightness_after_power_cycle", buf, 2u);
                    }
                  }
                }

                goto LABEL_152;
              }
            }

            else
            {
              v62 = -536870212;
            }

            if (x_log_get_brightness(void)::once != -1)
            {
              dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
            }

            v63 = x_log_get_brightness(void)::log;
            if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v64 = this[6]._os_unfair_lock_opaque;
              v65 = *&v2[252]._os_unfair_lock_opaque;
              *buf = 67109632;
              *&buf[4] = v64;
              *&buf[8] = 2048;
              *&buf[10] = v65;
              v80 = 1024;
              LODWORD(v81) = v62;
              _os_log_impl(&dword_183AA6000, v63, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_indicator_brightness_limit %g failed: 0x%x\n", buf, 0x18u);
            }

            goto LABEL_135;
          }
        }
      }
    }

    else if (v46 != *&v2[251]._os_unfair_lock_opaque)
    {
      if (LOBYTE(v2[68]._os_unfair_lock_opaque) - 1 > 1 || CA::WindowServer::IOMFBDisplay::SecureIndicator::is_fbi_active(&this[6440]))
      {
        if (v49)
        {
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v52 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v53 = this[6]._os_unfair_lock_opaque;
            *buf = 67109376;
            *&buf[4] = v53;
            *&buf[8] = 2048;
            *&buf[10] = v46;
            _os_log_impl(&dword_183AA6000, v52, OS_LOG_TYPE_DEFAULT, "Display %u forcing indicator brightness to current sdr value %f", buf, 0x12u);
          }
        }

        if (is_fbi_active)
        {
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v54 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v55 = this[6]._os_unfair_lock_opaque;
            *buf = 67109376;
            *&buf[4] = v55;
            *&buf[8] = 2048;
            *&buf[10] = v46;
            _os_log_impl(&dword_183AA6000, v54, OS_LOG_TYPE_DEFAULT, "Display %u forcing indicator brightness to %f due to fallback indicator", buf, 0x12u);
          }
        }

        v56 = IOMobileFramebufferSwapSetIndicatorBrightness();
        if (v56)
        {
          v57 = v56;
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v58 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v59 = this[6]._os_unfair_lock_opaque;
            *buf = 67109632;
            *&buf[4] = v59;
            *&buf[8] = 2048;
            *&buf[10] = v46;
            v80 = 1024;
            LODWORD(v81) = v57;
            _os_log_impl(&dword_183AA6000, v58, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_indicator_brightness %g failed: 0x%x\n", buf, 0x18u);
          }
        }

        *&v2[251]._os_unfair_lock_opaque = v46;
        v50 = 1;
        goto LABEL_125;
      }

      v50 = 1;
LABEL_124:
      v46 = NAN;
      goto LABEL_125;
    }

    v50 = 0;
    goto LABEL_124;
  }

  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v15 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = atomic_load((*&this[192]._os_unfair_lock_opaque + 4));
    if (v16 == 1)
    {
      v17 = atomic_load((*&this[192]._os_unfair_lock_opaque + 5));
      v18 = v17 == 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = BYTE1(v2[1022]._os_unfair_lock_opaque);
    *buf = 67109376;
    *&buf[4] = v18;
    *&buf[8] = 1024;
    *&buf[10] = v19;
    _os_log_impl(&dword_183AA6000, v15, OS_LOG_TYPE_DEFAULT, "DBVFlashWorkaround: skipping brightness. Display powered on: %i seen brightness: %i", buf, 0xEu);
  }
}

void CA::WindowServer::IOMFBDisplay::swap_display_headroom_used(CA::WindowServer::IOMFBDisplay *this, const CA::Render::Update *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(this + 336) & 0x1C00) == 0)
  {
    v4 = (*(*this + 1888))(this);
    if (a2)
    {
      if (v4)
      {
        v5 = *(a2 + 38);
        if ((v5 & 0x200000) == 0)
        {
          v6 = (this + 26440);
          v7 = 1.0;
          if ((v5 & 0x8000) != 0)
          {
            v7 = CA::WindowServer::Display::edr_headroom(this);
          }

          if (*v6 != v7)
          {
            *v6 = v7;
            if (x_log_get_brightness(void)::once != -1)
            {
              dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
            }

            v8 = v7;
            v9 = x_log_get_brightness(void)::log;
            if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v10 = *(this + 6);
              v11[0] = 67109376;
              v11[1] = v10;
              v12 = 2048;
              v13 = v8;
              _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "Display %u setting display headroom hint to %g", v11, 0x12u);
            }

            if (*(this + 29568) == 1 && (*(this + 905) & 0x10) != 0)
            {
              IOMobileFramebufferSwapSetDisplayEdrHeadroom();
            }
          }
        }
      }
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::swap_display_edr_factor(uint64_t this)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = this + 26432;
  v2 = *(this + 26432);
  if (*(this + 26436) != v2)
  {
    v3 = this;
    *(this + 26436) = v2;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v4 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(v3 + 24);
      v6 = *v1;
      LODWORD(v7) = 67109376;
      HIDWORD(v7) = v5;
      v8 = 2048;
      v9 = v6;
      _os_log_debug_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEBUG, "Display %u setting display edr to %g", &v7, 0x12u);
    }

    if (*(v1 + 3136) == 1 && (*(v3 + 905) & 0x10) != 0)
    {
      return IOMobileFramebufferSwapSetDisplayEdr();
    }

    else
    {
      v7 = vcvts_n_u32_f32(*v1, 0x10uLL);
      return IOMobileFramebufferSetParameter();
    }
  }

  return this;
}

void CA::WindowServer::IOMFBDisplay::swap_hdr_metadata(CA::WindowServer::IOMFBDisplay *this, const CA::Render::Update *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v2 = this + 25784;
  if ((*(this + 29513) & 1) == 0)
  {
    v5 = *(this + 3415);
    v6 = CA::WindowServer::Display::Mode::hdr_type(v5);
    if (((*(*this + 1576))(this) & 1) == 0)
    {
      if ((v5 & 0xF00000000000000) == 0xD00000000000000)
      {
        if (!*(this + 3222))
        {
          *(this + 3222) = malloc_type_calloc(0x20CuLL, 1uLL, 0x10000405E6460E1uLL);
        }

        cf = 0;
        v7 = *(this + 3287);
        if (v7 && (v8 = *(v7 + 16)) != 0 && (*(*v8 + 168))(v8))
        {
          v9 = (*(**(*(this + 3287) + 16) + 168))(*(*(this + 3287) + 16));
          v10 = IOSurfaceCopyValue(v9, @"DolbyVisionHDMIData");
          cf = v10;
          if (!v10)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (!(*(*this + 80))(this))
          {
            goto LABEL_31;
          }

          v18 = *(a2 + 126);
          if (!v18)
          {
            goto LABEL_31;
          }

          X::CFRef<__CFData const*>::operator=(&cf, v18);
          v10 = cf;
          if (!cf)
          {
            goto LABEL_31;
          }
        }

        v19 = CFGetTypeID(v10);
        if (v19 == CFDataGetTypeID() && CFDataGetLength(cf) >= 524)
        {
          v78.location = 0;
          v78.length = 524;
          CFDataGetBytes(cf, v78, *(this + 3222));
          *v2 = 0;
          goto LABEL_37;
        }

LABEL_31:
        if (*v2 == 5)
        {
LABEL_42:
          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }

        v20 = *(this + 3222);
        if (hdrprocessing_init_once != -1)
        {
          dispatch_once_f(&hdrprocessing_init_once, 0, load_hdrprocessing_symbols);
        }

        if (hdr_handle)
        {
          [hdr_processor_class dolbyIOMFBMetadata:v20 withMinBrightness:? maxBrightness:?];
        }

        *v2 = 5;
LABEL_37:
        v21 = IOMobileFramebufferSwapSetParams();
        if (v21)
        {
          v22 = v21;
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v23 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
          {
            v24 = *(this + 6);
            *buf = 67109376;
            v48 = v24;
            v49 = 1024;
            v50 = v22;
            _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "display %u set hdr metadata returned error %x\n", buf, 0xEu);
          }
        }

        goto LABEL_42;
      }

      if (v6 != 3)
      {
        *v2 = 0;
        return;
      }

      if (v2[3750] == 1 && (BYTE7(xmmword_1ED4E980C) & 1) == 0)
      {
        if (!*(this + 3224))
        {
          *(this + 3224) = malloc_type_calloc(0x49uLL, 1uLL, 0x1000040DFBF9248uLL);
        }

        v11 = *(this + 3287);
        if (v11)
        {
          v12 = *(v11 + 16);
          if (v12)
          {
            if ((*(*v12 + 168))(v12))
            {
              v13 = (*(**(*(this + 3287) + 16) + 168))(*(*(this + 3287) + 16));
              v14 = IOSurfaceCopyValue(v13, @"HDR10PlusData");
              if (v14)
              {
                v15 = v14;
                v16 = CFGetTypeID(v14);
                if (v16 == CFDataGetTypeID())
                {
                  if (BYTE8(xmmword_1ED4E980C) == 1)
                  {
                    BytePtr = CFDataGetBytePtr(v15);
                    Length = CFDataGetLength(v15);
                    if (x_log_get_windowserver(void)::once != -1)
                    {
                      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                    }

                    v28 = x_log_get_windowserver(void)::log;
                    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109634;
                      v48 = Length;
                      v49 = 1040;
                      v50 = Length;
                      v51 = 2096;
                      *v52 = BytePtr;
                      _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_DEFAULT, "HDR10PlusMetadataSEI: Size:%d bytes, %.*P", buf, 0x18u);
                    }
                  }

                  if (CA::CAHDRProcessor::iomfb_hdr10plus_convert_sei_to_metadata(v15, *(this + 3224), v17))
                  {
                    if (BYTE8(xmmword_1ED4E980C) == 1)
                    {
                      if (x_log_get_windowserver(void)::once != -1)
                      {
                        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                      }

                      v29 = x_log_get_windowserver(void)::log;
                      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
                      {
                        v30 = *(this + 3224);
                        v31 = *(v30 + 1);
                        v32 = *(v30 + 5);
                        v33 = *(v30 + 9);
                        v34 = *(v30 + 13);
                        v35 = *(v30 + 17);
                        v36 = *(v30 + 21);
                        v37 = *(v30 + 25);
                        v38 = *(v30 + 29);
                        v39 = *(v30 + 33);
                        v40 = *(v30 + 37);
                        v41 = *(v30 + 41);
                        v42 = *(v30 + 45);
                        v43 = *(v30 + 47);
                        v44 = *(v30 + 67);
                        v45 = *(v30 + 69);
                        LODWORD(v30) = *(v30 + 70);
                        *buf = 67112960;
                        v48 = v31;
                        v49 = 1024;
                        v50 = v32;
                        v51 = 1024;
                        *v52 = v33;
                        *&v52[4] = 1024;
                        *&v52[6] = v34;
                        v53 = 1024;
                        v54 = v35;
                        v55 = 1024;
                        v56 = v36;
                        v57 = 1024;
                        v58 = v37;
                        v59 = 1024;
                        v60 = v38;
                        v61 = 1024;
                        v62 = v39;
                        v63 = 1024;
                        v64 = v40;
                        v65 = 1024;
                        v66 = v41;
                        v67 = 1024;
                        v68 = v42;
                        v69 = 1024;
                        v70 = v43;
                        v71 = 1024;
                        v72 = v44;
                        v73 = 1024;
                        v74 = v45;
                        v75 = 1024;
                        v76 = v30;
                        _os_log_impl(&dword_183AA6000, v29, OS_LOG_TYPE_DEFAULT, "Converted HDR10PlusMetadataParams:TargetedSystemDisplayMaxLum[%u], AverageMaxRGB[%u], distValues[%u, %u, %u, %u, %u, %u, %u, %u, %u], KneePointX[%u], KneePointY[%u], ToneMappingFlag[%u], GraphicsOverlayFlag[%u], vsifTimingMode[%u]\n", buf, 0x62u);
                      }
                    }

                    *v2 = 0;
                    CFRelease(v15);
LABEL_49:
                    IOMobileFramebufferSwapSetParams();
                    return;
                  }
                }

                CFRelease(v15);
              }
            }
          }
        }

        if (*v2 == 3)
        {
          return;
        }

        if (BYTE8(xmmword_1ED4E980C) == 1)
        {
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v25 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_183AA6000, v25, OS_LOG_TYPE_DEFAULT, "HDR10PlusMetadata: Swapping in NULL metadata", buf, 2u);
          }
        }

        **(this + 3224) = 0;
        *v2 = 3;
        goto LABEL_49;
      }
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::finish_update(CA::WindowServer::IOMFBDisplay *this, CA::Render::Update *a2, unsigned int a3, uint64_t a4)
{
  v511 = *MEMORY[0x1E69E9840];
  v7 = this + 25557;
  v498 = a2;
  v8 = objc_autoreleasePoolPush();
  v9 = byte_1ED4E9844;
  v10 = *(a2 + 38);
  v11 = *(this + 3287);
  if (v11 && (*(v11 + 292) & 1) != 0)
  {
    CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
  }

  if (v7[3966] == 1)
  {
    goto LABEL_15;
  }

  if ((*(a2 + 1378) & 4) == 0)
  {
    if (!*(this + 82) || !CA::WindowServer::Display::is_enabled_for_vsync_render(this))
    {
      goto LABEL_10;
    }

    if ((*(a2 + 1378) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  if (CA::WindowServer::Display::is_enabled_for_replay_render_with_mode(this))
  {
    goto LABEL_11;
  }

LABEL_10:
  if (((*(*this + 2272))(this) & 1) == 0)
  {
LABEL_15:
    if (CA::WindowServer::IOMFBDisplay::update_secure_indicators(this, a2, 0.0))
    {
      v12 = 0x40000000000;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_731;
  }

LABEL_11:
  if ((a3 & 8) != 0)
  {
    pthread_mutex_lock((this + 25848));
    v13 = this + 48 * *(v7 + 275);
    if (*(v13 + 6484))
    {
      IOMobileFramebufferSwapCancel();
      *(v13 + 6484) = 0;
    }

    v14 = *(this + 3345);
    if (v14)
    {
      (**v14)(v14);
    }

    v15 = *(this + 3208);
    if (v15)
    {
      *(v15 + 96) |= 2u;
    }

    if (CA::WindowServer::IOMFBDisplay::update_secure_indicators(this, a2, 0.0))
    {
      v12 = 0x40000000000;
    }

    else
    {
      v12 = 0;
    }

    v16 = (this + 25848);
    goto LABEL_730;
  }

  v459 = v7[3993] == 1 && (*(*this + 952))(this) == 0.0 && *(this + 3432) != 0.0;
  if (v7[3965] == 1)
  {
    v7[3966] = 1;
  }

  if ((*(*this + 1576))(this))
  {
    is_hdr = CA::WindowServer::Display::Mode::is_hdr((this + 656));
  }

  else
  {
    is_hdr = 0;
  }

  if ((*(*this + 80))(this))
  {
    *data = this + 656;
    v477 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 6676, *(this + 82), data) + 44);
  }

  else
  {
    v477 = 0;
  }

  v444 = BYTE2(v10);
  v462 = a3;
  v472 = *(this + 152);
  pthread_mutex_lock((this + 25848));
  v18 = (v7 + 283);
  v466 = v7;
  v467 = (v7 + 283);
  if (*(v7 + 283))
  {
    v19 = is_hdr;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v7 + 395;
    do
    {
      v24 = *v23;
      if (!*(v23 - 10) || (v25 = *(v23 - 4), !v25) || (v26 = CA::IOMobileFramebuffer::swap_wait((this + 25696), v25, 0x80000000), v18 = v467, !v26))
      {
        ++v20;
      }

      v21 |= (v24 & 0x20) >> 5;
      ++v22;
      v23 += 48;
    }

    while (v22 < *v18);
    v27 = v20 == 1;
    v7 = v466;
    is_hdr = v19;
  }

  else
  {
    v21 = 0;
    v27 = 0;
  }

  v28 = *(this + 3287);
  v497 = v28;
  if (v28)
  {
    v29 = *(v28 + 292);
    v496 = (v29 & 1) == 0;
    v492 = this;
    v493 = &v498;
    v494 = &v496;
    v495 = &v497;
    if ((v29 & 1) == 0 && (*(this + 160) & 0x10) != 0 && (*(v28 + 45) & 0x20) != 0 && !*(v7 + 1851))
    {
      goto LABEL_257;
    }
  }

  else
  {
    v496 = 0;
    v492 = this;
    v493 = &v498;
    v494 = &v496;
    v495 = &v497;
  }

  v30 = 0.0;
  if ((v7[3987] & 1) == 0 && (v7[3988] & 1) == 0)
  {
    if ((*(this + 160) & 0x100) != 0)
    {
      if (CAPrefers60HzAPT(void)::once != -1)
      {
        dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
      }

      if (CAPrefers60HzAPT(void)::enabled == 1 && (!v496 || (*(v497 + 37) & 8) == 0 || (*(*this + 144))(this) != 2) && !*(v7 + 1851))
      {
        goto LABEL_257;
      }
    }

    if ((*(v498 + 1377) & 1) == 0 || !v496)
    {
      if (BYTE1(xmmword_1ED4E988C) == 1)
      {
LABEL_257:
        v30 = (*(*this + 760))(this);
        goto LABEL_258;
      }

      if (v27 || CA::WindowServer::IOMFBDisplay::finish_update(CA::Render::Update *,unsigned int,unsigned long long)::$_2::operator()(&v492))
      {
        v30 = *(this + 3684);
LABEL_258:
        v31 = 1;
        goto LABEL_56;
      }
    }
  }

  v31 = 0;
LABEL_56:
  v32 = (*(*this + 776))(this) * 0.125;
  if ((*(this + 336) & 0x1C00) != 0 && (*(this + 82) & 0x8000000000000000) != 0 && !BYTE2(xmmword_1ED4E98AC))
  {
    v32 = 0.0;
  }

  v33 = *(v498 + 10) - v32;
  if (v31)
  {
    v33 = v33 + v30;
  }

  if (v33 >= *(v498 + 16) + 0.0001)
  {
    v34 = v33;
  }

  else
  {
    v34 = *(v498 + 16) + 0.0001;
  }

  if (v30 != *(this + 3684))
  {
    *(this + 3684) = v30;
    CAHostTimeWithTime(v30);
    kdebug_trace();
    if (*(this + 3208))
    {
      v35 = CA::WindowServer::IOMFBDisplay::work_interval_deadline(this, v34, *(v498 + 16), (*(v498 + 172) >> 8) & 1);
      v36 = *(this + 3208);
      if (v35 != *(v36 + 16))
      {
        *(v36 + 16) = v35;
        if (*(v36 + 96))
        {
          memset(&data[4], 0, 56);
          *data = 1386695757;
          os_workgroup_interval_update(*(v36 + 48), *(v36 + 16), data);
        }

        else if (*(v36 + 40))
        {
          work_interval_instance_update();
        }
      }
    }
  }

  CAHostTimeWithTime(v30);
  kdebug_trace();
  *&xmmword_1EA850F30 = xmmword_1EA850F30 + CAHostTimeWithTime(v30);
  *(this + 3685) = v30;
  os_unfair_lock_lock(this + 6576);
  CA::WindowServer::IOMFBDisplay::initialize_timings(this, v37);
  v38 = *(this + 3290);
  if (v38)
  {
    atomic_store(CAHostTimeWithTime(v30), (v38 + 8));
  }

  os_unfair_lock_unlock(this + 6576);
  if (v497)
  {
    if (v496)
    {
      if (*v497)
      {
        v39 = CA::Render::Handle::lock_context(*v497);
        if (v39)
        {
          v41 = v39;
          v42 = *(v39 + 384);
          if (v42)
          {
            if (atomic_fetch_add(v42 + 4, 0xFFFFFFFF) == 1)
            {
              CA::Render::LayerNode::delete_node(v42, v40);
            }

            *(v41 + 384) = 0;
          }

          CA::Render::Handle::unlock_context(v41, v40);
        }
      }
    }
  }

  v43 = 0.0;
  if (v7[3992] == 1)
  {
    v43 = CACurrentMediaTimeDelta();
  }

  v44 = v43 + v34;
  v443 = v31;
  if (((*(*this + 2216))(this) & 1) != 0 || (*(*this + 2144))(this))
  {
    if (CA::WindowServer::IOMFBDisplay::update_secure_indicators(this, v498, v44))
    {
      v45 = 0x40000000000;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  v46 = this + 48 * *(v7 + 275) + 25912;
  v461 = (this + 48 * *(v7 + 275) + 25936);
  if (!*v461)
  {
    CA::IOMobileFramebuffer::swap_begin((this + 25696), v461);
  }

  *(v7 + 507) = 0;
  v46[40] &= 0x1Fu;
  if (BYTE6(xmmword_1ED4E97EC) == 1)
  {
    qword_1EA850F28 = *v461;
  }

  *(v498 + 105) = v44;
  v47 = CAHostTimeWithTime(v44);
  *v499 = 1;
  *data = v47;
  IOMobileFramebufferSwapSetTimestamps();
  v48 = CAHostTimeWithTime(*(this + 3347) + v43);
  *v499 = 2;
  *data = v48;
  IOMobileFramebufferSwapSetTimestamps();
  v49 = *(v498 + 102);
  if (v49 != 0.0)
  {
    v50 = CAHostTimeWithTime(v49 + v43);
    *v499 = 3;
    *data = v50;
    IOMobileFramebufferSwapSetTimestamps();
  }

  if ((v7[3951] & 1) != 0 || v7[3936] != ((*(this + 160) >> 2) & 1))
  {
    IOMobileFramebufferSwapSetBackgroundColor();
  }

  v7[3936] = (*(this + 160) & 4) != 0;
  if (v7[4001] == 1)
  {
    IOMobileFramebufferSwapSetColorRemapMode();
    v7[4001] = 0;
  }

  if (v7[4003] == 1)
  {
    iomfb_swap_set_pulse_width_maximization(*(this + 3212), v7[3950]);
    v7[4003] = 0;
  }

  if (*v7 == 1)
  {
    if (CADeviceNeedsIRDCFlush::once != -1)
    {
      dispatch_once(&CADeviceNeedsIRDCFlush::once, &__block_literal_global_463);
    }

    if (CADeviceNeedsIRDCFlush::b == 1)
    {
      IOMobileFramebufferSwapSetParams();
      if (BYTE11(xmmword_1ED4E980C) == 1)
      {
        kdebug_trace();
      }
    }

    *v7 = 0;
  }

  CA::WindowServer::IOMFBDisplay::update_blend_display_color_spaces(this);
  CA::WindowServer::IOMFBDisplay::update_system_gamma(this);
  CA::WindowServer::IOMFBDisplay::update_blackpoint_adaptation(this);
  CA::WindowServer::IOMFBDisplay::update_gamma_adjustment(this);
  v51.n128_f64[0] = CA::WindowServer::IOMFBDisplay::update_user_adjustment(this);
  if (((*(*this + 1576))(this, v51) & 1) == 0 && v7[3954] == 1 && CA::WindowServer::IOMFBDisplay::set_framebuffer_ax_matrix(this))
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v54 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *data = 0;
      _os_log_error_impl(&dword_183AA6000, v54, OS_LOG_TYPE_ERROR, "IOMFB was not able to set accessibility matrix.\n", data, 2u);
    }
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v465 = v46;
  v458 = v8;
  if (*&dword_1ED4E9668)
  {
    pthread_mutex_lock(&CA::WindowServer::IOMFBDisplay::_ctx_lock);
    *data = MEMORY[0x1E69E9820];
    *&data[8] = 0x40000000;
    *&data[16] = ___ZN2CA12WindowServer12IOMFBDisplay7get_ctxEv_block_invoke;
    *&data[24] = &__block_descriptor_tmp_53;
    *&data[32] = this;
    if (CA::WindowServer::IOMFBDisplay::get_ctx(void)::once != -1)
    {
      dispatch_once(&CA::WindowServer::IOMFBDisplay::get_ctx(void)::once, data);
    }

    v55 = CA::WindowServer::IOMFBDisplay::_ctx;
    if (CA::WindowServer::IOMFBDisplay::_ctx)
    {
      os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
      if (CA::Render::FlattenManager::flattened_cache)
      {
        v56 = is_hdr;
        v57 = v45;
        if (initialized[0] != -1)
        {
          dispatch_once_f(initialized, 0, init_debug);
        }

        v58 = 0;
        *v499 = *&dword_1ED4E9668;
        v59 = CA::Render::FlattenManager::flattened_cache;
        *data = &unk_1EF1FD0D8;
        *&data[8] = v499;
        *&data[16] = v55;
        *&data[24] = data;
        v60 = 1 << *CA::Render::FlattenManager::flattened_cache;
        do
        {
          for (i = *(*(v59 + 16) + 8 * v58); i; i = *i)
          {
            X::HashTable<unsigned int,CA::Render::FlattenedCacheEntry *>::foreach(std::function<void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>)::{lambda(void *,void *,void *)#1}::__invoke(i[2], i[3], data);
          }

          ++v58;
        }

        while (v58 != v60);
        std::__function::__value_func<void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>::~__value_func[abi:nn200100](data);
        v45 = v57;
        is_hdr = v56;
        v8 = v458;
      }

      os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
      v46 = v465;
    }

    if (*&dword_1ED4E9668 > 0.0)
    {
      *&dword_1ED4E9668 = *&dword_1ED4E9668 + -1.0;
    }

    pthread_mutex_unlock(&CA::WindowServer::IOMFBDisplay::_ctx_lock);
    v7 = v466;
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }
  }

  if (*&dword_1ED4E966C && *&dword_1ED4E966C > 0.0)
  {
    *&dword_1ED4E966C = *&dword_1ED4E966C + -1.0;
  }

  v62 = v9 | ((v462 & 4) >> 2) | v21;
  if (v496)
  {
    if (is_hdr)
    {
      v63 = 0;
      v64 = v462;
    }

    else
    {
      v64 = v462;
      if (v7[3937] & 1) != 0 || ((v7[3951] | v62))
      {
        v65 = *(v497 + 40);
        v66 = (*(**(v497 + 24) + 168))(*(v497 + 24));
        v67 = *(v497 + 208);
        *data = *(v497 + 192);
        *&data[16] = v67;
        v68 = *(v497 + 240);
        *v499 = *(v497 + 224);
        v500 = v68;
        if (initialized[0] != -1)
        {
          dispatch_once_f(initialized, 0, init_debug);
        }

        if (*&dword_1ED4E9654)
        {
          v69 = CAIOSurfaceWriteToFileWithSuffix(v66, "detached-src");
          if (v69)
          {
            if (*&dword_1ED4E9654 > 0.0)
            {
              *&dword_1ED4E9654 = *&dword_1ED4E9654 + -1.0;
            }

            free(v69);
          }
        }

        LOBYTE(v490) = 0;
        v70 = v65;
        v7 = v466;
        CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v466[1132], *(v497 + 24), data, v499, v70, *(v46 + 6), *(v498 + 68), &v490, v432);
        v46[40] = v46[40] & 0xBF | (v490 << 6);
        v71 = *(this + v466[1132] + 6857);
        ID = IOSurfaceGetID(v66);
        v73 = v466[1132];
        if (v71 == ID)
        {
          v63 = 0;
        }

        else
        {
          v63 = CA::WindowServer::layer_value[v73 + 3];
          v74 = IOSurfaceGetID(v66);
          LODWORD(v73) = v466[1132];
          *(this + v466[1132] + 6857) = v74;
        }

        v64 = v462;
        memset(v504, 0, sizeof(v504));
        *buf = 0u;
        v503 = 0u;
        CA::WindowServer::IOMFBDisplay::swap_set_layer(this, (2 * (v73 == 0)), 0, v504, buf, 0, *v461, *(v498 + 68), 0, v434);
      }

      else
      {
        v63 = 0;
      }
    }

    v75 = v497;
    v76 = *(v497 + 24);
    ++*(v76 + 236);
    *(v46 + 2) = v76;
    if ((*(v75 + 292) & 4) != 0)
    {
      v46[40] |= 2u;
    }
  }

  else
  {
    if (v7[3937] & 1) != 0 || ((v7[3951] | v62))
    {
      memset(data, 0, 32);
      *v499 = 0u;
      v500 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 1, 0, data, v499, 0, *v461, *(v498 + 68), 0, v432);
      memset(data, 0, 32);
      *v499 = 0u;
      v500 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 2, 0, data, v499, 0, *v461, *(v498 + 68), 0, v433);
    }

    v63 = 0;
    v64 = v462;
  }

  v77 = *(v46 + 1);
  *(v77 + 12) = *(v46 + 6);
  if (options_are_visual & 1) == 0 && *(v77 + 32) && (*(v77 + 68) & 4) == 0 && ((*(v498 + 304) & 8) == 0 || v496 && (*(v497 + 37)))
  {
    *(v77 + 68) |= 4u;
  }

  v78 = *(v77 + 16);
  v460 = v77;
  if (!v78)
  {
    goto LABEL_189;
  }

  if ((v78 & 1) == 0)
  {
    if (*(v78 + 1) == 6)
    {
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  if (v78 != 1)
  {
LABEL_188:
    CA::Shape::unref(v78);
    v77 = v460;
LABEL_189:
    *(v77 + 16) = 1;
  }

LABEL_190:
  v79 = *(v77 + 68);
  *(v77 + 68) = v79 & 0xF7;
  if (!v497 || (*(v497 + 292) & 1) != 0 || (*(v498 + 1378) & 0x40) == 0 || (*(v498 + 304) & 4) != 0)
  {
    v80 = 0;
  }

  else
  {
    v80 = *(v498 + 4);
  }

  if (options_are_visual == 1)
  {
    v80 = 0;
    if (is_hdr)
    {
      goto LABEL_198;
    }

LABEL_484:
    if ((*(v77 + 32) || *(v77 + 40)) && (v79 & 4) == 0)
    {
      if (!v80)
      {
        goto LABEL_198;
      }

      if (v80)
      {
        if (v80 != 1)
        {
          goto LABEL_198;
        }
      }

      else if (*(v80 + 4) != 6)
      {
        goto LABEL_198;
      }
    }

    v261 = v7[1131];
    memset(data, 0, 32);
    *v499 = 0u;
    v500 = 0u;
    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v261, 0, data, v499, 0, *v461, *(v498 + 68), 0, v432);
    v451 = 0;
    if ((v64 & 1) == 0)
    {
      goto LABEL_496;
    }

LABEL_493:
    v262 = *(this + 3345);
    if (v262 && (*(*v262 + 8))(*(this + 3345)))
    {
      *(v46 + 4) = (*(*v262 + 16))(v262);
      v64 |= 2u;
    }

    goto LABEL_496;
  }

  if (!is_hdr)
  {
    goto LABEL_484;
  }

LABEL_198:
  v455 = v63;
  if ((v79 & 2) == 0 || (v46[40] & 0x10) != 0)
  {
    v451 = 0;
    goto LABEL_207;
  }

  *(v77 + 68) = v79 & 0xF5;
  v81 = CA::WindowServer::IOMFBDisplay::current_page_surface(this, 1, 0, 0, 0, *(v498 + 40), 0);
  v82 = -536870212;
  if (!v81)
  {
    v92 = 0;
    goto LABEL_450;
  }

  v83 = v81;
  if (v7[3956] != 1)
  {
    goto LABEL_249;
  }

  v84 = v80;
  v85 = (*(*v81 + 232))(v81);
  v86 = (*(*this + 1416))(this);
  if ((v86 | v85) != v86)
  {
    v92 = 0;
    goto LABEL_450;
  }

  v80 = v84;
  if ((v7[3956] & 1) == 0)
  {
LABEL_249:
    v92 = CA::WindowServer::IOMFBDisplay::current_page_surface(this, 0, 1, 0, is_hdr, *(v498 + 40), 0);
    v451 = 0;
    if (v92)
    {
      v82 = 0;
    }

    else
    {
      v82 = -536870212;
    }

    goto LABEL_252;
  }

  v87 = vadd_s32(*(this + 160), 0x100000001);
  v88.i64[0] = (v87.i32[0] & 0xFFFFFFFE);
  v88.i64[1] = (v87.i32[1] & 0xFFFFFFFE);
  v89 = vcvtq_f64_s64(v88);
  *data = 0;
  height = v89.height;
  wireless_surface_options = CA::IOMobileFramebuffer::get_wireless_surface_options(*(this + 3212), *(v498 + 10), v89, data, byte_1ED4E9806 == 1);
  if (wireless_surface_options)
  {
    v82 = wireless_surface_options;
    v92 = 0;
    v451 = 0;
LABEL_252:
    v77 = v460;
    goto LABEL_253;
  }

  v248 = CA::WindowServer::IOSurface::wrap_buffer(this, *data, 0, 0);
  v92 = v248;
  v77 = v460;
  *(v460 + 32) = v248;
  if (!v248)
  {
    v451 = 0;
    v82 = -536870211;
    goto LABEL_253;
  }

  v249 = *(v498 + 42);
  v250 = *(this + 3529);
  if (v249 != -1 && v249 > v250)
  {
    *(this + 3529) = v249;
LABEL_479:
    if (!(*(*v248 + 168))(v248))
    {
      v82 = 0;
      v451 = 1;
      goto LABEL_252;
    }

    (*(**(v460 + 32) + 168))(*(v460 + 32));
    IOSurfaceSetIndexedTimestamp();
    v77 = v460;
    v80 = v84;
    goto LABEL_481;
  }

  if (v250)
  {
    goto LABEL_479;
  }

LABEL_481:
  v82 = 0;
  v451 = 1;
LABEL_253:
  if (v82 != 0 || is_hdr)
  {
    if (!v82)
    {
      goto LABEL_207;
    }

LABEL_450:
    v251 = v466[1131];
    v252 = v466[3956];
    if (!*(this + 3287) && v251 != 2 && (v466[3956] & 1) != 0)
    {
      if ((*(this + 14) & 0x10) != 0)
      {
        v251 = v466[1131];
      }

      else
      {
        v251 = 2;
      }

      v252 = 1;
    }

    if (v82 == -536870191 && (v252 & 1) != 0)
    {
      if (v92 && (*(*v92 + 168))(v92))
      {
        memset(data, 0, 32);
        *v499 = 0u;
        v500 = 0u;
        CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v251, v92, data, v499, 0, *v461, *(v498 + 68), 0, v432);
      }

      v253 = *(v460 + 32);
      v254 = v466;
      if (v253)
      {
        CA::WindowServer::Surface::unref(v253);
        *(v460 + 32) = 0;
      }

      v255 = *(v46 + 2);
      if (v255)
      {
        CA::WindowServer::Surface::unref(v255);
        *(v46 + 2) = 0;
      }
    }

    else
    {
      memset(data, 0, 32);
      *v499 = 0u;
      v500 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v251, 0, data, v499, 0, *v461, *(v498 + 68), 0, v432);
      v254 = v466;
    }

    IOMobileFramebufferSwapCancel();
    *v461 = 0;
    v257 = *(this + 3345);
    if (v257)
    {
      if (v82 == -536870184 && (v462 & 1) != 0 && (v254[3956] & 1) != 0 && (*(*v257 + 8))(*(this + 3345)))
      {
        v258 = (*(*v257 + 16))(v257);
        v259 = *(v498 + 68);
        *data = v258;
        *&data[8] = v259;
        v256 = X::small_vector_base<std::pair<unsigned long,unsigned int>>::push_back(this + 28960, data);
      }

      (**v257)(v257, v256);
    }

    v260 = (v82 != -536870184) << 24;
    v8 = v458;
    goto LABEL_729;
  }

  v131 = *(this + 3345);
  if (v131)
  {
    (**v131)(v131);
  }

  if ((*(this + 904) & 0x40) != 0)
  {
    v132 = 1536;
  }

  else
  {
    v132 = 1024;
  }

  v133 = v498;
  if (v498)
  {
    v132 = (*(v498 + 172) >> 35) & 0x20000 | v132;
  }

  v446 = v80;
  if (v466[3956] == 1)
  {
    v134 = CA::WindowServer::Display::Mode::is_hdr((this + 656));
    v135 = v134;
    if (v466[2] != 1)
    {
      v64 = v462;
      if (v134)
      {
        v135 = 1;
        goto LABEL_426;
      }

LABEL_428:
      v241 = 0uLL;
      memset(data, 0, 32);
      if (v477)
      {
        if (SDWORD2(v472) <= SHIDWORD(v472))
        {
          v242 = HIDWORD(v472);
        }

        else
        {
          v242 = DWORD2(v472);
        }

        v241.i32[0] = 1073741822;
        v52.i32[0] = v242;
        v243.i64[0] = v472;
        v243.i64[1] = SDWORD1(v472);
        v244 = SDWORD2(v472);
        v245 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v52, v241), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v243));
        if (v242 > 1073741822)
        {
          v244 = 1.79769313e308;
        }

        *data = v245;
        if (v242 <= 1073741822)
        {
          *v241.i64 = SHIDWORD(v472);
        }

        else
        {
          *v241.i64 = 1.79769313e308;
        }

        *&data[16] = v244;
        *&data[24] = v241.i64[0];
        v132 = v132 | 0x10000;
        v246 = data;
      }

      else
      {
        v246 = 0;
      }

      v80 = v446;
      v247 = CA::WindowServer::IOMFBDisplay::copy_surface(this, v92, v83, v132, 0, v246, 0, 0, *v241.i32);
      v46[40] = v46[40] & 0xFE | v247;
      v82 = -536870191;
      v77 = v460;
      if ((v247 & 1) == 0)
      {
        goto LABEL_450;
      }

      goto LABEL_207;
    }

    v133 = v498;
    v64 = v462;
  }

  else
  {
    v64 = v462;
    if (v466[2] != 1)
    {
      goto LABEL_428;
    }

    v135 = 0;
  }

  if ((*(v133 + 113) - 2) >= 4 && (v135 & 1) == 0)
  {
    goto LABEL_428;
  }

LABEL_426:
  v510 = 0;
  v508 = 0u;
  v509 = 0u;
  v506 = 0u;
  v507 = 0u;
  memset(data, 0, sizeof(data));
  CA::WindowServer::Display::display_attributes(data, this);
  v238 = v498;
  if ((*(v498 + 305) & 0x380) != 0)
  {
LABEL_427:
    v239 = (*(*v92 + 232))(v92);
    v240 = (*(*this + 624))(this, v92, v83, data, v238, v132, v239, 1);
    goto LABEL_449;
  }

  if (v135 && (*(*v83 + 136))(v83))
  {
    v238 = v498;
    goto LABEL_427;
  }

  v240 = CA::WindowServer::IOMFBDisplay::copy_surface(this, v92, v83, v132, 0, 0, 0, 0, v237);
LABEL_449:
  v46 = v465;
  v465[40] = v465[40] & 0xFE | v240;
  v82 = -536870191;
  v77 = v460;
  v80 = v446;
  if ((v240 & 1) == 0)
  {
    goto LABEL_450;
  }

LABEL_207:
  if (v64 & 1) != 0 && (*(v77 + 68))
  {
    v46[40] |= 1u;
  }

  v93 = *(v77 + 32);
  v8 = v458;
  v7 = v466;
  if (is_hdr)
  {
    v94 = *(v498 + 2);
    *&data[8] = 0;
    *data = 0;
    CA::Shape::get_bounds(v94, data);
    v95 = *&data[8];
    if (*&data[8] >= *&data[12])
    {
      v95 = *&data[12];
    }

    if (v95 <= 0)
    {
      v96 = v460;
      if ((v466[3937] & 1) == 0)
      {
        goto LABEL_310;
      }
    }

    else
    {
      v96 = v460;
    }

    if (v497)
    {
      v97 = *(v497 + 24);
    }

    else
    {
      v97 = 0;
    }

    if (((v97 != 0) & (*(v96 + 68) >> 2)) != 0)
    {
      v98 = 0;
    }

    else
    {
      v98 = *(v96 + 40);
    }

    if (v80)
    {
      if ((v80 & 1) != 0 ? v80 == 1 : *(v80 + 4) == 6)
      {
        v98 = 0;
      }
    }

    v101 = CA::WindowServer::IOMFBDisplay::current_page_surface(this, 0, 1, 0, 1, *(v498 + 40), 0);
    v93 = v101;
    v452 = v97;
    if (!v98 || !v101)
    {
      v468 = 1;
      goto LABEL_270;
    }

    v104 = *(v101 + 14);
    v103 = *(v101 + 15);
    if (__PAIR64__(v103, v104) == *(v98 + 7))
    {
      v468 = 1;
      v46 = v465;
      v7 = v466;
      goto LABEL_270;
    }

    v437 = v45;
    v445 = v80;
    if ((*(this + 226) & 0x40) != 0)
    {
      v105 = 4608;
    }

    else
    {
      v105 = 4096;
    }

    v106 = *(v98 + 16);
    v107 = (*(*v98 + 24))(v98);
    v108 = (*(*v98 + 56))(v98);
    v109 = (*(*v98 + 232))(v98);
    surface = CA::WindowServer::Display::allocate_surface(this, v104, v103, v106, v107, v108, 0, v109, @"CA Backward DM", 0);
    v112 = 0uLL;
    memset(data, 0, 32);
    if (v477)
    {
      if (SDWORD2(v472) <= SHIDWORD(v472))
      {
        v113 = HIDWORD(v472);
      }

      else
      {
        v113 = DWORD2(v472);
      }

      v112.i32[0] = 1073741822;
      v111.i32[0] = v113;
      v114.i64[0] = v472;
      v114.i64[1] = SDWORD1(v472);
      v115 = SDWORD2(v472);
      v116 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v111, v112), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v114));
      if (v113 > 1073741822)
      {
        v115 = 1.79769313e308;
      }

      *data = v116;
      if (v113 <= 1073741822)
      {
        *v112.i64 = SHIDWORD(v472);
      }

      else
      {
        *v112.i64 = 1.79769313e308;
      }

      *&data[16] = v115;
      *&data[24] = v112.i64[0];
      v117 = v105 | 0x10000;
      v118 = data;
    }

    else
    {
      v118 = 0;
      v117 = v105;
    }

    v119 = *(this + 3345);
    v45 = v437;
    if (v119)
    {
      *v112.i32 = (**v119)(v119);
    }

    v120 = CA::WindowServer::IOMFBDisplay::copy_surface(this, surface, v98, v117, 0, v118, 0, 0, *v112.i32);
    if (v120)
    {
      v98 = surface;
LABEL_269:
      v46 = v465;
      v7 = v466;
      v468 = v120 ^ 1;
      v80 = v445;
LABEL_270:
      v122 = *(this + 41);
      if (!v122)
      {
        v64 = v462;
LABEL_305:
        v150 = v468;
        if (!v98)
        {
          v150 = 1;
        }

        if ((v150 & 1) == 0)
        {
          CA::WindowServer::Surface::unref(v98);
        }

        v8 = v458;
        goto LABEL_310;
      }

      v489 = 0;
      HIWORD(v489) = COERCE_UNSIGNED_INT(1.0);
      if (v497)
      {
        v123 = *(v497 + 192);
        v124 = *(v497 + 208);
        v125 = *(v497 + 224);
        v126 = *(v497 + 240);
      }

      else
      {
        v123 = 0uLL;
        v124 = 0uLL;
        v125 = 0uLL;
        v126 = 0uLL;
      }

      *v499 = v123;
      v500 = v124;
      v504[0] = v125;
      v504[1] = v126;
      if (v98 && v93)
      {
        v128 = *(v98 + 14);
        v127 = *(v98 + 15);
        memset(buf, 0, sizeof(buf));
        *&v503 = v128;
        *(&v503 + 1) = v127;
        v130 = *(v93 + 56);
        v129 = *(v93 + 60);
        v490 = 0uLL;
        *&v491 = v130;
        *(&v491 + 1) = v129;
        if (v80)
        {
          if ((v80 & 1) == 0)
          {
            if (*(v80 + 4) == 6)
            {
              goto LABEL_299;
            }

LABEL_294:
            if (v128 == v130 && v127 == v129)
            {
              *&data[8] = 0;
              *data = 0;
              CA::Shape::get_bounds(v80, data);
              v137.i32[1] = *&data[12];
              v138.i64[0] = *data;
              v138.i64[1] = *&data[4];
              v139 = vcvtq_f64_s64(v138);
              v140 = *&data[12];
              v138.i64[0] = *&data[8];
              v138.i64[1] = *&data[12];
              v141 = v138;
              if (*&data[8] > *&data[12])
              {
                v140 = *&data[8];
              }

              v137.i32[0] = v140;
              v136.i32[0] = 1073741822;
              v447 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v137, v136), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v139);
              v142 = vdup_n_s32(v140 > 1073741822);
              v143.i64[0] = v142.u32[0];
              v143.i64[1] = v142.u32[1];
              v440 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v143, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), vcvtq_f64_s64(v141));
              CA::BoundsImpl::intersect(buf, v447, v440);
              CA::BoundsImpl::intersect(&v490, v447, v440);
            }

            goto LABEL_299;
          }

          if (v80 != 1)
          {
            goto LABEL_294;
          }
        }
      }

      else
      {
        *buf = 0u;
        v503 = 0u;
        v490 = 0u;
        v491 = 0u;
      }

LABEL_299:
      v144 = v45;
      v145 = v80;
      memset(data, 0, sizeof(data));
      if (v7[1615])
      {
        v146 = 0;
      }

      else
      {
        v147 = *(this + 1695);
        v148 = *(this + 1696);
        v149 = *(this + 1697);
        *data = *(this + 1694);
        *&data[16] = v147;
        *&data[32] = v148;
        *&data[48] = v149;
        v146 = data;
        CA::Mat4Impl::mat4_scale(data, v102, *(v7 + 1611), *(v7 + 1611), *(v7 + 1611));
        v7[1615] = 1;
      }

      (*(**v122 + 1064))(*v122, v93, v452, v499, v504, v98, buf, &v490, &v489);
      if (v93)
      {
        *(v93 + 236) &= ~0x200000000uLL;
      }

      v64 = v462 | 3;
      v7[1131] = 0;
      v487 = 0u;
      v488 = 0u;
      v485 = 0u;
      v486 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 1, 0, &v487, &v485, 0, *v461, *(v498 + 68), 0, v146);
      v487 = 0u;
      v488 = 0u;
      v485 = 0u;
      v486 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 2, 0, &v487, &v485, 0, *v461, *(v498 + 68), 0, v435);
      v80 = v145;
      v45 = v144;
      goto LABEL_305;
    }

    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v121 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v499 = 0;
      _os_log_error_impl(&dword_183AA6000, v121, OS_LOG_TYPE_ERROR, "Failed to copy surface prior to backwardDM\n", v499, 2u);
      if (!surface)
      {
        goto LABEL_269;
      }
    }

    else if (!surface)
    {
      goto LABEL_269;
    }

    CA::WindowServer::Surface::unref(surface);
    goto LABEL_269;
  }

LABEL_310:
  if (v93)
  {
    memset(v499, 0, sizeof(v499));
    v151 = *(v93 + 56);
    v152.i64[0] = v151;
    v152.i64[1] = HIDWORD(v151);
    v153 = vcvtq_f64_u64(v152);
    if (SDWORD2(v472) <= SHIDWORD(v472))
    {
      v154 = HIDWORD(v472);
    }

    else
    {
      v154 = DWORD2(v472);
    }

    v52.i32[0] = 1073741822;
    v53.i32[0] = v154;
    v500 = v153;
    v155.i64[0] = v472;
    v155.i64[1] = SDWORD1(v472);
    v156 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v53, v52), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v155));
    v157 = SDWORD2(v472);
    if (v154 > 1073741822)
    {
      v157 = 1.79769313e308;
    }

    v504[0] = v156;
    if (v154 <= 1073741822)
    {
      v158 = SHIDWORD(v472);
    }

    else
    {
      v158 = 1.79769313e308;
    }

    v504[1].f64[0] = v157;
    v504[1].f64[1] = v158;
    if (v477)
    {
      v504[0] = 0uLL;
      v504[1] = v153;
    }

    if (v7[3966])
    {
      v159 = 32;
    }

    else
    {
      v159 = 0;
    }

    if ((*(v93 + 239) & 0x40) != 0)
    {
      v160 = (*(*this + 1584))(this) ^ 1;
    }

    else
    {
      v160 = 1;
    }

    (*(*v93 + 128))(v93, v160);
    v161 = v498;
    if (*(v498 + 1379))
    {
      v162 = *(v498 + 7);
      if (v162)
      {
        if (v162)
        {
          if (v162 == 1)
          {
            goto LABEL_341;
          }
        }

        else if (*(v162 + 4) == 6)
        {
          goto LABEL_341;
        }

        memset(buf, 0, sizeof(buf));
        CA::Shape::get_bounds(v162, buf);
        if (*&buf[8] <= *&buf[12])
        {
          v165 = *&buf[12];
        }

        else
        {
          v165 = *&buf[8];
        }

        v163.i32[0] = 1073741822;
        v164.i32[0] = v165;
        v166.i64[0] = *buf;
        v166.i64[1] = *&buf[4];
        v167 = *&buf[8];
        v168 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v164, v163), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v166));
        v169 = *&buf[12];
        if (v165 > 1073741822)
        {
          v167 = 1.79769313e308;
          v169 = 1.79769313e308;
        }

        *data = v168;
        *&data[16] = v167;
        *&data[24] = v169;
        v478 = is_hdr;
        v170 = v45;
        v171 = v80;
        v172 = *(this + 44);
        v173 = *(this + 45);
        CA::WindowServer::IOMFBDisplay::finish_update(CA::Render::Update *,unsigned int,unsigned long long)::$_4::operator()(data, v172, v173, v504[0].f64);
        v174 = v173;
        v80 = v171;
        v45 = v170;
        is_hdr = v478;
        CA::WindowServer::IOMFBDisplay::finish_update(CA::Render::Update *,unsigned int,unsigned long long)::$_4::operator()(data, v172, v174, v499);
        v161 = v498;
      }
    }

LABEL_341:
    LOBYTE(v490) = 0;
    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v466[1131], v93, v499, v504, v159, *(v46 + 6), *(v161 + 68), &v490, v432);
    v46[40] = v46[40] & 0x7F | (v490 << 7);
    v438 = v45;
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v175 = v64;
    v7 = v466;
    if (*&dword_1ED4E9658)
    {
      v176 = (*(*v93 + 168))(v93);
      CA::WindowServer::IOMFBDisplay::dump_framebuffer(this, v176);
    }

    v177 = *(this + v466[1131] + 6857);
    v178 = (*(*v93 + 168))(v93);
    if (v177 != IOSurfaceGetID(v178))
    {
      v455 |= CA::WindowServer::layer_value[v466[1131]];
      v179 = (*(*v93 + 168))(v93);
      *(this + v466[1131] + 6857) = IOSurfaceGetID(v179);
    }

    v64 = v175;
    if ((*(this + 904) & 0x10) != 0)
    {
      v184 = *(this + 19);
      v183 = *(this + 20);
      v185.i64[0] = v183;
      v185.i64[1] = SHIDWORD(v183);
      v186 = vcvtq_f64_s64(v185);
      v188 = *(this + 25);
      v187 = *(this + 26);
      v185.i64[0] = v187;
      v185.i64[1] = SHIDWORD(v187);
      v181 = vdivq_f64(v186, vcvtq_f64_s64(v185));
      v185.i64[0] = v184;
      v185.i64[1] = SHIDWORD(v184);
      v189 = vcvtq_f64_s64(v185);
      v185.i64[0] = v188;
      v185.i64[1] = SHIDWORD(v188);
      v180 = vmlsq_f64(v189, vcvtq_f64_s64(v185), v181);
      v182 = v181.f64[1];
    }

    else
    {
      v180 = 0uLL;
      v181.f64[0] = 1.0;
      v182 = 1.0;
    }

    v63 = v455;
    v190 = *(v498 + 3);
    if (v190)
    {
      v473 = v181.f64[0];
      v479 = v180;
      memset(buf, 0, sizeof(buf));
      CA::Shape::get_bounds(v190, buf);
      if (*&buf[8] <= *&buf[12])
      {
        v193 = *&buf[12];
      }

      else
      {
        v193 = *&buf[8];
      }

      v191.i32[0] = 1073741822;
      v192.i32[0] = v193;
      v194.i64[0] = *buf;
      v194.i64[1] = *&buf[4];
      v195 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v192, v191), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v194));
      v196 = *&buf[12];
      if (v193 <= 1073741822)
      {
        v197 = *&buf[8];
      }

      else
      {
        v197 = 1.79769313e308;
      }

      if (v193 > 1073741822)
      {
        v196 = 1.79769313e308;
      }

      *data = v195;
      *&data[16] = v197;
      *&data[24] = v196;
      if (v466[3982])
      {
        v198 = v80;
      }

      else
      {
        if (v473 != 1.0 && v197 < 1.79769313e308)
        {
          *data = *v195.i64 * v473;
          *&data[16] = v197 * v473;
        }

        if (v182 != 1.0 && v196 < 1.79769313e308)
        {
          *&data[8] = *&v195.i64[1] * v182;
          *&data[24] = v196 * v182;
        }

        v199 = vaddq_f64(*data, v479);
        *data = v199;
        v200 = *&data[24];
        if (*&data[16] <= *&data[24])
        {
          v201 = *&data[24];
        }

        else
        {
          v201 = *&data[16];
        }

        if (v201 < 1.79769313e308)
        {
          if (*&data[16] < *&data[24])
          {
            v200 = *&data[16];
          }

          if (v200 > 0.0)
          {
            *data = vrndmq_f64(v199);
            *&data[16] = vsubq_f64(vrndpq_f64(vaddq_f64(v199, *&data[16])), *data);
          }
        }

        v198 = v80;
        CA::BoundsImpl::intersect(data, v504[0], v504[1]);
        v197 = *&data[16];
        v196 = *&data[24];
      }

      if (v197 >= v196)
      {
        v202 = v196;
      }

      else
      {
        v202 = v197;
      }

      if (v202 > 0.0)
      {
        v203 = IOMobileFramebufferSwapDirtyRegion();
        if (v203)
        {
          v204 = v203;
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v205 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v204;
            _os_log_error_impl(&dword_183AA6000, v205, OS_LOG_TYPE_ERROR, "CADisplayIOMFB: swap_dirty_region returned error %x\n", buf, 8u);
          }
        }
      }

      v46 = v465;
      v80 = v198;
    }

    if (v80)
    {
      v206 = (v80 & 1) != 0 ? v80 == 1 : *(v80 + 4) == 6;
      v207 = v206;
      if (!v207 && !is_hdr)
      {
        memset(data, 0, sizeof(data));
        if (CA::Shape::rect_count(v80) >= 32)
        {
          v208 = 1;
        }

        else
        {
          v208 = 4;
        }

        v209 = CA::Shape::coalesce(v80, data, v208);
        if (v209)
        {
          v211 = v209;
          v210.i64[0] = 0;
          v480 = v210;
          v212 = vclezq_f64(v500);
          v213 = vorrq_s8(vdupq_laneq_s64(v212, 1), v212);
          v214 = v213.f64[0];
          v453 = *v499;
          v215 = vaddq_f64(*v499, v500);
          v448 = v215;
          v216 = &data[8];
          LODWORD(v215.f64[0]) = 1073741822;
          v474 = v215;
          v469 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
          v217 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
          v463 = v217;
          v217.i64[0] = -1;
          v441 = v217;
          do
          {
            v218 = *(v216 - 1);
            v213.f64[0] = *v216;
            v219.i64[0] = v218;
            v219.i64[1] = SHIDWORD(v218);
            v220 = vcvtq_f64_s64(v219);
            v221 = HIDWORD(*v216);
            v219.i64[0] = *v216;
            v219.i64[1] = v221;
            v222 = v219;
            if (v219.i32[0] > v221)
            {
              v221 = *v216;
            }

            LODWORD(v213.f64[0]) = v221;
            v223 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v213, v474), 0), v469, v220);
            v224 = vdup_n_s32(v221 > 1073741822);
            v225.i64[0] = v224.u32[0];
            v225.i64[1] = v224.u32[1];
            v226 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v225, 0x3FuLL)), v463, vcvtq_f64_s64(v222));
            v227 = vclezq_f64(v226);
            v228 = vorrq_s8(vdupq_laneq_s64(v227, 1), v227);
            v229 = v228.i64[0];
            v213 = vdupq_lane_s64(vcgtq_s64(v480, v228).i64[0], 0);
            v230 = vandq_s8(v226, v213);
            if ((v229 & 0x8000000000000000) == 0 && (*&v214 & 0x8000000000000000) == 0)
            {
              v213 = vmaxnmq_f64(v223, v453);
              v231 = vsubq_f64(vminnmq_f64(vaddq_f64(v223, v226), v448), v213);
              v232 = vclezq_f64(v231);
              v230 = vandq_s8(v231, vdupq_lane_s64(vcgtq_s64(vorrq_s8(vdupq_laneq_s64(v232, 1), v232), v441).i64[0], 0));
            }

            if (*v230.i64 >= *&v230.i64[1])
            {
              v233 = *&v230.i64[1];
            }

            else
            {
              v233 = *v230.i64;
            }

            if (v233 > 0.0)
            {
              if (BYTE11(xmmword_1ED4E980C))
              {
                kdebug_trace();
              }

              active = IOMobileFramebufferSwapActiveRegion();
              if (active)
              {
                v235 = active;
                if (x_log_get_windowserver(void)::once != -1)
                {
                  dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                }

                v236 = x_log_get_windowserver(void)::log;
                if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *&buf[4] = v235;
                  _os_log_error_impl(&dword_183AA6000, v236, OS_LOG_TYPE_ERROR, "CADisplayIOMFB: swap_active_region returned error %x\n", buf, 8u);
                }
              }
            }

            v216 += 2;
            --v211;
            v46 = v465;
          }

          while (v211);
        }

        v8 = v458;
        v7 = v466;
        v64 = v175;
        v63 = v455;
      }
    }

    v45 = v438;
    if ((v64 & 1) == 0)
    {
      goto LABEL_496;
    }

    goto LABEL_493;
  }

  v63 = v455;
  if (v64)
  {
    goto LABEL_493;
  }

LABEL_496:
  if ((v64 & 2) != 0)
  {
    v263 = *(this + 3345);
    if (v263)
    {
      (**v263)(v263);
    }
  }

  v264 = mach_absolute_time();
  v265 = CATimeWithHostTime(v264);
  v266 = v498;
  *(v498 + 17) = v265;
  *(v266 + 123) = v63;
  v267 = *(this + 3208);
  if (v267)
  {
    *v267 |= v63;
    *(v267 + 96) |= 2u;
  }

  v268 = CAHostTimeWithTime(*(v266 + 16));
  *v499 = 4;
  *data = v268;
  IOMobileFramebufferSwapSetTimestamps();
  v269 = CAHostTimeWithTime(*(v498 + 17));
  *v499 = 5;
  *data = v269;
  IOMobileFramebufferSwapSetTimestamps();
  CA::WindowServer::IOMFBDisplay::update_contrast_preservation_allowed(this);
  if (!v459)
  {
    CA::WindowServer::IOMFBDisplay::swap_brightness(this);
  }

  CA::WindowServer::IOMFBDisplay::swap_display_edr_factor(this);
  CA::WindowServer::IOMFBDisplay::swap_display_headroom_used(this, v498);
  if (CADeviceSupportsReferenceMode::once != -1)
  {
    dispatch_once(&CADeviceSupportsReferenceMode::once, &__block_literal_global_263);
  }

  if (CADeviceSupportsReferenceMode::supports_ref == 1)
  {
    v270 = mach_absolute_time();
    v271 = CATimeWithHostTime(v270);
    if (v271 - *(this + 3210) > 180.0)
    {
      v272 = v7[1075];
      *data = MEMORY[0x1E69E9820];
      *&data[8] = 0x40000000;
      *&data[16] = ___ZN2CA12WindowServer12IOMFBDisplay32send_refmode_residency_telemetryEv_block_invoke;
      *&data[24] = &__block_descriptor_tmp_88;
      data[32] = v272;
      analytics_send_event_lazy();
      *(this + 3210) = v271;
    }
  }

  CA::WindowServer::IOMFBDisplay::swap_hdr_metadata(this, v498);
  v273 = v498;
  if (CADeviceSupportsHWGainMap::once != -1)
  {
    dispatch_once(&CADeviceSupportsHWGainMap::once, &__block_literal_global_86);
  }

  if (CADeviceSupportsHWGainMap::supports_gain_map != 1)
  {
    goto LABEL_648;
  }

  v274 = *(v273 + 144);
  v442 = *(this + 3220);
  if (CADeviceSupportsMedina::once != -1)
  {
    dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
  }

  if (CADeviceSupportsMedina::medina == 1)
  {
    v275 = *(this + 3220);
    if (v275)
    {
      v276 = *(v275 + 260);
      if (!v274)
      {
        goto LABEL_522;
      }
    }

    else
    {
      v276 = 1;
      if (!v274)
      {
        goto LABEL_522;
      }
    }
  }

  else
  {
    v276 = 0;
    if (!v274)
    {
      goto LABEL_522;
    }
  }

  if ((byte_1ED4E985C & 1) != 0 || (*(*this + 80))(this))
  {
LABEL_522:
    if (!((*(v7 + 1643) == 0) | v276 & 1))
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v277 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *data = 0;
        _os_log_impl(&dword_183AA6000, v277, OS_LOG_TYPE_DEFAULT, "NULL GainMap", data, 2u);
      }

      *(v7 + 1643) = 0;
      IOMobileFramebufferSwapSetGainMap();
    }

    goto LABEL_646;
  }

  v439 = v45;
  v464 = v64;
  v279 = *(this + 19);
  v278 = *(this + 20);
  v280.i64[0] = v278;
  v280.i64[1] = SHIDWORD(v278);
  v281 = vcvtq_f64_s64(v280);
  v283 = *(this + 25);
  v282 = *(this + 26);
  v280.i64[0] = v282;
  v280.i64[1] = SHIDWORD(v282);
  v284 = vdivq_f64(v281, vcvtq_f64_s64(v280));
  v280.i64[0] = v279;
  v280.i64[1] = SHIDWORD(v279);
  v285 = vcvtq_f64_s64(v280);
  v280.i64[0] = v283;
  v280.i64[1] = SHIDWORD(v283);
  v470 = vmlsq_f64(v285, vcvtq_f64_s64(v280), v284);
  v475 = v284;
  bzero(data, 0x500uLL);
  v287 = 0;
  v288 = 0;
  v289 = byte_1ED4E985D;
  v449 = 0u;
  __asm { FMOV            V0.2D, #0.5 }

  v456 = _Q0;
  v293 = 0uLL;
  while (1)
  {
    v294 = v274->f64[1];
    v295 = *(*&v294 + 88);
    *v499 = *(*&v294 + 72);
    v500 = v295;
    v296 = *(*&v294 + 136);
    v297 = 0.0;
    if (v296)
    {
      v297 = *(v296 + 232);
    }

    v481 = v293;
    if ((LOBYTE(v274[10].f64[0]) & 0x10) != 0)
    {
      v299 = vaddvq_f64(vmulq_f64(v274[1], v274[1]));
      v300 = vaddvq_f64(vmulq_f64(v274[3], v274[3]));
      v301 = v274[8].f64[1];
      if (v301 != 1.0)
      {
        v302 = 1.0 / (v301 * v301);
        v299 = v302 * v299;
        v300 = v302 * v300;
      }

      v303 = v300 == 1.0 && v299 == 1.0;
      v304 = (sqrt(v300) + sqrt(v299)) * 0.5;
      if (v303)
      {
        v298 = 1.0;
      }

      else
      {
        v298 = v304;
      }
    }

    else
    {
      v298 = v274[9].f64[0];
    }

    v305 = *(*&v294 + 44);
    CA::Mat4Impl::mat4_apply_to_rect(v274 + 1, v499, v286);
    if (v475.f64[0] != 1.0 && v500.f64[0] < 1.79769313e308)
    {
      *v499 = *v499 * v475.f64[0];
      v500.f64[0] = v500.f64[0] * v475.f64[0];
    }

    v306 = v500.f64[1];
    if (v475.f64[1] != 1.0 && v500.f64[1] < 1.79769313e308)
    {
      v306 = v500.f64[1] * v475.f64[1];
      *&v499[8] = *&v499[8] * v475.f64[1];
      v500.f64[1] = v500.f64[1] * v475.f64[1];
    }

    v308 = v475.f64[0] * v297 * v298;
    v309 = vaddq_f64(v470, *v499);
    if (v308 != 0.0)
    {
      v308 = v308 + 1.0;
    }

    v310 = v500.f64[0];
    if (v500.f64[0] <= v306)
    {
      v311 = v306;
    }

    else
    {
      v311 = v500.f64[0];
    }

    if (v311 < 1.79769313e308)
    {
      if (v500.f64[0] >= v306)
      {
        v312 = v306;
      }

      else
      {
        v312 = v500.f64[0];
      }

      v293 = v481;
      if (v312 > 0.0)
      {
        __asm { FMOV            V4.2D, #-1.0 }

        v309 = vaddq_f64(v309, _Q4);
        v314 = v306 + 2.0;
        v500.f64[0] = v500.f64[0] + 2.0;
        v500.f64[1] = v314;
        if (v310 + 2.0 <= 0.0 || v314 <= 0.0)
        {
          v500 = 0uLL;
        }
      }
    }

    else
    {
      v293 = v481;
    }

    v315 = v500;
    if (v289)
    {
      v335 = v500.f64[1];
      v336 = v500.f64[0] <= v500.f64[1] ? v500.f64[1] : v500.f64[0];
      if (v336 < 1.79769313e308)
      {
        if (v500.f64[0] < v500.f64[1])
        {
          v335 = v500.f64[0];
        }

        if (v335 > 0.0)
        {
          v337 = vaddq_f64(v309, v500);
          v309 = vrndaq_f64(v309);
          v315 = vsubq_f64(vrndaq_f64(v337), v309);
          *v499 = v309;
          v500 = v315;
        }
      }
    }

    v316 = vclezq_f64(v293);
    v317 = vclezq_f64(v315);
    v318 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v317, v316), vzip2q_s64(v317, v316))));
    v319 = v318.i8[0];
    if ((v318.i8[4] & 1) == 0)
    {
      if (v318.i8[0])
      {
        goto LABEL_571;
      }

      v321 = vminnmq_f64(v449, v309);
      v320 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v449, v293), vaddq_f64(v309, v315)), v321);
LABEL_570:
      v449 = v321;
      v293 = v320;
      goto LABEL_571;
    }

    v320 = v315;
    v321 = v309;
    if ((v319 & 1) == 0)
    {
      goto LABEL_570;
    }

LABEL_571:
    v322 = v305 & 3;
    v323 = LOBYTE(v274[10].f64[1]) ? 0.0 : 1.0;
    v504[0] = xmmword_183E218B0;
    LODWORD(v504[1].f64[0]) = 1065353216;
    if (v322 == 3)
    {
      v504[0].f64[0] = 15.8284855;
      *(&v504[0].f64[1] + 4) = 0.000761708822;
      v325 = xmmword_183E218D0;
      v324 = 1;
    }

    else if (v322 == 2)
    {
      v324 = 0;
      v504[0] = xmmword_183E218E0;
      LODWORD(v504[1].f64[0]) = 1061197339;
      v325 = xmmword_183E218F0;
    }

    else
    {
      v324 = 0;
      v325 = xmmword_183E218C0;
    }

    v326 = vmulq_f64(v315, v456);
    v327 = vcvt_f32_f64(vaddq_f64(v326, v309));
    v328 = v308;
    v329 = v308 * 1.52866495;
    *&v329 = v329;
    *&v326.f64[0] = vcvt_f32_f64(v326);
    v330 = vdup_n_s32(0x40390F46u);
    v331 = vsub_f32(v330, vdiv_f32(vmul_f32(*&v326.f64[0], v330), vdup_lane_s32(*&v329, 0)));
    __asm { FMOV            V16.2S, #1.0 }

    v333 = vbsl_s8(vcgt_f32(v331, _D16), _D16, v331);
    v334 = &data[v287];
    *v334 = v327;
    *(v334 + 1) = *&v326.f64[0];
    *(v334 + 4) = v328;
    *(v334 + 5) = LODWORD(v329);
    *(v334 + 6) = 1.0 / *&v329;
    *(v334 + 28) = vbic_s8(v333, vcltz_f32(v333));
    *(v334 + 9) = v323;
    *(v334 + 40) = v325;
    *(v334 + 56) = v504[0];
    *(v334 + 18) = LODWORD(v504[1].f64[0]);
    v334[76] = v324;
    if (v287 == 1200)
    {
      break;
    }

    v274 = *&v274->f64[0];
    v287 += 80;
    ++v288;
    if (!v274)
    {
      v482 = v293;
      goto LABEL_591;
    }
  }

  v482 = v293;
  v288 = 16;
LABEL_591:
  v338 = *(this + 3399);
  v8 = v458;
  if (v288 != *(v466 + 1643) || memcmp(data, *(this + 3399), 80 * v288))
  {
    memcpy(v338, data, 80 * v288);
    *(v466 + 1643) = v288;
    v339 = vceqzq_f64(v482);
    v340 = 0uLL;
    if ((vorrq_s8(vdupq_laneq_s64(v339, 1), v339).u64[0] & 0x8000000000000000) == 0)
    {
      v341 = vceqq_f64(v482, v482);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v341), 1), v341).u64[0] & 0x8000000000000000) == 0)
      {
        v342 = vcvtmq_s64_f64(vmaxnmq_f64(v449, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v340 = vuzp1q_s32(v342, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v449, v482), vdupq_n_s64(0x41C0000000000000uLL))), v342));
      }
    }

    v343 = vextq_s8(v340, v340, 8uLL).u64[0];
    v344 = vclez_s32(v343);
    if ((vpmax_u32(v344, v344).u32[0] & 0x80000000) == 0)
    {
      v345 = *(this + 160);
      v346 = vclez_s32(v345);
      if ((vpmax_u32(v346, v346).u32[0] & 0x80000000) != 0 || (v347 = *(this + 152), v348 = vadd_s32(*v340.i8, v343), *v349.i8 = vmax_s32(*v340.i8, v347), v350 = vsub_s32(vmin_s32(v348, vadd_s32(v347, v345)), *v349.i8), v351 = vclez_s32(v350), (vpmax_u32(v351, v351).u32[0] & 0x80000000) != 0))
      {
        v340.i64[1] = 0;
      }

      else
      {
        v349.u64[1] = v350;
        v340 = v349;
      }
    }

    v352 = v340.i32[2];
    v353 = v340.i32[3];
    v457 = v340.i32[2];
    if (v340.i32[2] >= v340.i32[3])
    {
      v352 = v340.i32[3];
    }

    if (v352 <= 0)
    {
      if ((v276 & 1) == 0)
      {
        IOMobileFramebufferSwapSetGainMap();
      }
    }

    else
    {
      v483 = v340.i64[0];
      v354 = (*(*this + 1064))(this) - 1;
      v436 = 0.5;
      v471 = 0.5;
      if (v354 <= 7)
      {
        v436 = flt_183E31E58[v354];
        v471 = flt_183E31E78[v354];
      }

      v504[0].f64[0] = 0.0;
      v450 = v483;
      v355 = HIDWORD(v483);
      IOMFBGainEncoderCreate();
      if (v353 >= 1)
      {
        v356 = v288;
        v357 = v457 + v483;
        v454 = v353 + HIDWORD(v483);
        do
        {
          IOMFBGainEncoderStartRow();
          if (v457 < 1)
          {
            v365 = -1.0;
            v368 = -1.0;
          }

          else
          {
            v360 = 0;
            v361 = -1.0;
            v362 = -1.0;
            v363 = v450;
            do
            {
              v476 = v362;
              v484 = v361;
              v364 = v357 - v363;
              v365 = 1.0;
              v366 = data;
              v367 = v356;
              v368 = 1.0;
              while (1)
              {
                v369 = CA::GainMapGenerator::Element::gain(v366, v363 + 0.5, v355 + 0.5, v358, v359);
                v370 = HIDWORD(v369);
                v371 = *&v369;
                if (*&v369 == -1.0)
                {
                  break;
                }

                v372 = CA::GainMapGenerator::Element::gain(v366, v471 + v363, v436 + v355, v358, v359);
                v373 = HIDWORD(v372);
                if (*&v372 == -1.0)
                {
                  v370 = HIDWORD(v372);
                  break;
                }

                if (v368 > *&v372)
                {
                  v368 = *&v372;
                }

                if (v365 > v371)
                {
                  v365 = v371;
                }

                if (v364 < SHIDWORD(v372))
                {
                  LODWORD(v373) = v364;
                }

                if (v373 >= v370)
                {
                  v364 = v370;
                }

                else
                {
                  v364 = v373;
                }

                v366 += 10;
                if (!--v367)
                {
                  goto LABEL_626;
                }
              }

              v368 = v366[4].f32[1];
              v365 = v368;
              v364 = v370;
LABEL_626:
              if (v365 == v476 && v368 == v484)
              {
                v365 = v476;
                v368 = v484;
              }

              else if (v360)
              {
                *v499 = v484;
                *&v499[4] = v476;
                *&v499[8] = v484;
                IOMFBGainEncoderEmitRun();
                v360 = 0;
              }

              if (v364 <= 1)
              {
                v375 = 1;
              }

              else
              {
                v375 = v364;
              }

              v363 += v375;
              v360 += v375;
              v361 = v368;
              v362 = v365;
            }

            while (v363 < v357);
          }

          *v499 = v368;
          *&v499[4] = v365;
          *&v499[8] = v368;
          IOMFBGainEncoderEmitRun();
          ++v355;
        }

        while (v355 < v454);
      }

      v376 = IOMFBGainEncoderFinishEncoding();
      IOMobileFramebufferSwapSetGainMap();
      if (v376)
      {
        IOMFBGainMapRelease();
      }

      MEMORY[0x1865E9A10](*&v504[0].f64[0]);
      v8 = v458;
      v64 = v464;
      v45 = v439;
    }
  }

  v46 = v465;
  v7 = v466;
LABEL_646:
  if (v442)
  {
    *(v442 + 260) = 0;
  }

LABEL_648:
  IOMobileFramebufferSwapDebugInfo();
  if ((v7[4030] & 1) == 0)
  {
    v377 = *(this + 3220);
    if (v377)
    {
      if (*v377 || (v378 = sil_mgr_instance(0, 0xFFFFFFFFLL), (*v377 = v378) != 0))
      {
        if (*(this + 3349) != 0.0)
        {
          IOMobileFramebufferSwapSetSecureAnimation();
        }
      }
    }
  }

  v379 = v64;
  if (v7[3971] == 1)
  {
    pthread_mutex_lock((this + 26168));
    atomic_store(*v461, (v7 + 723));
    pthread_mutex_unlock((this + 26168));
  }

  v380 = v7[155];
  v381 = IOMobileFramebufferSwapEnd();
  if (v7[3966] == 1)
  {
    CA::IOMobileFramebuffer::swap_wait((this + 25696), 0, 2);
  }

  if (v459)
  {
    CA::IOMobileFramebuffer::swap_wait((this + 25696), 0, 2);
    *data = 0;
    CA::IOMobileFramebuffer::swap_begin((this + 25696), data);
    CA::WindowServer::IOMFBDisplay::swap_brightness(this);
    IOMobileFramebufferSwapEnd();
    CA::IOMobileFramebuffer::swap_wait((this + 25696), 0, 2);
  }

  if (v451)
  {
    v382 = *(v460 + 32);
    if (v382)
    {
      CA::WindowServer::Surface::unref(v382);
      *(v460 + 32) = 0;
    }
  }

  if (v381)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v383 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v407 = *(this + 6);
      *data = 67109376;
      *&data[4] = v407;
      *&data[8] = 1024;
      *&data[10] = v381;
      _os_log_error_impl(&dword_183AA6000, v383, OS_LOG_TYPE_ERROR, "display %u swap_end returned error %x\n", data, 0xEu);
    }

    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    v384 = v46[40];
    if ((v384 & 0x40) != 0)
    {
      CA::CASharedEvent::force_complete(*(*(v46 + 2) + 16), [*(*(*(v46 + 2) + 16) + 32) signaledValue] + 1, 0, 1);
      v384 = v46[40] & 0xBF;
      v46[40] = v384;
    }

    if (v384 < 0)
    {
      v385 = *(*(*(v46 + 1) + 32) + 16);
      CA::CASharedEvent::force_complete(v385, [v385[4] signaledValue] + 1, 0, 1);
      v46[40] &= ~0x80u;
    }

    *v461 = 0;
    v260 = 0x1000000;
  }

  else
  {
    if ((v7[3954] & 1) == 0)
    {
      CA::WindowServer::IOMFBDisplay::fetch_default_framebuffer(this);
      CA::IOMobileFramebuffer::swap_wait((this + 25696), *v461, 1);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v386 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xE0uLL, 0xDEEC3011uLL);
    v387 = v386;
    if (v386)
    {
      v386[10] = 0;
      v386[9] = v386 + 10;
      v386[13] = 0;
      v386[11] = 0;
      v386[12] = v386 + 13;
      v386[14] = 0;
      v386[15] = v386 + 19;
      v386[16] = v386 + 19;
      v386[17] = v386 + 19;
      v386[18] = 4;
    }

    *&v504[0].f64[0] = v386;
    v388 = v498;
    if (v7[3971] == 1)
    {
      *(v386 + 1) = *(v498 + 68);
      v386[1] = *(v388 + 10);
      *v386 = *v461;
      v389 = *(v460 + 32);
      if (v389)
      {
        v390 = (*(*v389 + 168))(v389);
        if (v390)
        {
          *(v387 + 48) = IOSurfaceGetID(v390);
        }
      }

      *(v387 + 196) = *v467 - (v443 ^ 1);
      v391 = v498;
      v392 = *(v387 + 110) & 0xFFFD | (2 * ((*(v498 + 688) >> 3) & 1));
      *(v387 + 110) = *(v387 + 110) & 0xFFFD | (2 * ((*(v498 + 688) >> 3) & 1));
      v387[2] = *(v391 + 102);
      v387[3] = *(v391 + 15);
      *(v387 + 23) = v32;
      *(v387 + 110) = v392 & 0xFFDF | v444 & 0x20;
      LODWORD(v391) = atomic_load((*(this + 96) + 4));
      if (v391 == 1)
      {
        v393 = atomic_load((*(this + 96) + 5));
        v394 = v393 == 1;
      }

      else
      {
        v394 = 0;
      }

      v396 = *(v387 + 110) & 0xFFFE | v394;
      *(v387 + 110) = v396;
      v397 = v498;
      v398 = v498 + 304;
      *(v387 + 110) = v396 & 0xFDFF | (((*(v498 + 38) & 0x18000) != 0) << 9);
      v399 = *(v397 + 295);
      if ((*(v398 + 1) & 0x180) != 0 && v399 <= *(v397 + 296))
      {
        v399 = *(v397 + 296);
      }

      v400 = *(this + 88);
      if (v400)
      {
        *&v401 = COERCE_FLOAT(atomic_load((v400 + 4)));
        v402 = *&v401;
      }

      else
      {
        v402 = 1.0;
      }

      if (v399 >= v402)
      {
        v405 = *(this + 88);
        v404 = v45;
        if (v405)
        {
          *&v406 = COERCE_FLOAT(atomic_load((v405 + 4)));
          v403 = *&v406;
        }

        else
        {
          v403 = 1.0;
        }
      }

      else
      {
        v403 = *(v498 + 295);
        v404 = v45;
        if ((*(v498 + 305) & 0x180) != 0 && v403 <= *(v498 + 296))
        {
          v403 = *(v498 + 296);
        }
      }

      *(v387 + 54) = v403;
      v408 = v498;
      v409 = CAHostTimeWithTime(*(v498 + 103));
      *&data[8] = 0;
      *data = 0;
      mach_get_times();
      v387[4] = *&data[8] - *data + v409;
      *(v387 + 197) = *(v387 + 197) & 0xF0 | v7[99] & 0xF;
      v410 = CAHostTimeWithTime(*(v408 + 16));
      *&data[8] = 0;
      *data = 0;
      mach_get_times();
      v387[5] = *&data[8] - *data + v410;
      if ((*(v408 + 104) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v411 = CAHostTimeWithTime(*(v408 + 104));
      }

      else
      {
        v411 = -1;
      }

      v46 = v465;
      v387[7] = v411;
      v412 = (4 * (v7[3968] & 1)) | (8 * (v30 > 0.0)) | *(v387 + 110) & 0xFFF3;
      *(v387 + 110) = v412;
      v387[8] = *(v408 + 106);
      v413 = v412 & 0xFF7F | ((v380 & 1) << 7);
      *(v387 + 110) = v413;
      *(v387 + 110) = *(v408 + 688) & 0x100 | v413 & 0xFEFF;
      std::__tree<CA::Render::Object *>::swap(v408 + 120, (v387 + 9));
      v388 = v498;
      v414 = v387 + 12;
      v415 = *(v498 + 117);
      *(v498 + 117) = v387[12];
      v387[12] = v415;
      v416 = (v388 + 944);
      v418 = *(v387 + 13);
      v417 = v387 + 13;
      v419 = *(v388 + 118);
      v420 = *(v388 + 119);
      *(v388 + 59) = v418;
      *v417 = v419;
      v417[1] = v420;
      if (*(v388 + 119))
      {
        v421 = (*v416 + 16);
      }

      else
      {
        v421 = (v388 + 936);
      }

      v395 = v379;
      v45 = v404;
      *v421 = v416;
      if (v420)
      {
        v414 = (*v417 + 16);
      }

      *v414 = v417;
    }

    else
    {
      v395 = v379;
    }

    v7[3968] = 0;
    v422 = CA::WindowServer::IOMFBDisplay::finish_update_(this, v46, v388, v395);
    if (v7[3971] == 1)
    {
      v423 = mach_continuous_time();
      v424 = v504[0].f64[0];
      *(*&v504[0].f64[0] + 48) = v423;
      os_unfair_lock_lock(this + 6518);
      *v499 = v501;
      *&v499[8] = v501;
      v425 = this + 26104;
      *&v500.f64[0] = v501;
      *&v500.f64[1] = 4;
      *&data[8] = 0;
      memset(&data[24], 0, 40);
      v426 = &data[32];
      *data = &data[32];
      *&data[16] = &data[32];
      *&data[24] = *(this + 3266);
      v427 = *(this + 3263);
      if (v427 == *(this + 3265))
      {
        v429 = *(this + 3264);
        for (*&data[8] = &data[v429 - v427 + 32]; v427 != v429; ++v426)
        {
          v430 = *v427;
          v427 += 8;
          *v426 = v430;
        }
      }

      else
      {
        v428 = *(this + 3264);
        *data = *(this + 3263);
        *&data[8] = v428;
        *v425 = 0uLL;
        *(this + 26120) = 0uLL;
      }

      if (v425 != v499)
      {
        X::small_vector_base<void({block_pointer})(__CFDictionary const*)>::move(v425, v499, this + 3267);
      }

      if ((*&v424 + 120) != data)
      {
        X::small_vector_base<void({block_pointer})(__CFDictionary const*)>::move(*&v424 + 120, data, (*&v424 + 152));
      }

      if (*data != *&data[16])
      {
        free(*data);
      }

      if (*v499 != *&v500.f64[0])
      {
        free(*v499);
      }

      std::vector<std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>>::push_back[abi:nn200100](this + 3260, v504);
      os_unfair_lock_unlock(this + 6518);
      pthread_mutex_lock((this + 26168));
      atomic_store(0, (v7 + 723));
      pthread_cond_signal((this + 26232));
      pthread_mutex_unlock((this + 26168));
    }

    if (v422)
    {
      v260 = 0x80000;
    }

    else
    {
      v260 = 0;
    }

    std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](v504, 0);
  }

LABEL_729:
  v12 = v260 | v45;
  v16 = (this + 25848);
LABEL_730:
  pthread_mutex_unlock(v16);
LABEL_731:
  objc_autoreleasePoolPop(v8);
  return v12;
}