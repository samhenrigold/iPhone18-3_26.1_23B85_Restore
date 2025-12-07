void _dispatch_source_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_source_dispose");
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v12 = __swp(0, (a1[11] + 56));
  if (v12)
  {
    _dispatch_source_handler_dispose(v12);
  }

  v11 = __swp(0, (a1[11] + 40));
  if (v11)
  {
    _dispatch_source_handler_dispose(v11);
  }

  v10 = __swp(0, (a1[11] + 48));
  if (v10)
  {
    _dispatch_source_handler_dispose(v10);
  }

  _dispatch_unote_dispose(a1[11], 0);
  a1[11] = 0;
  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t _dispatch_source_xref_dispose(uint64_t *a1)
{
  v4 = *(a1 + 20);
  v3 = 0;
  if ((v4 & 0x4000000) != 0)
  {
    v3 = 0;
    if ((v4 & 0x10000000) == 0)
    {
      v3 = *(a1[11] + 48) != 0;
    }
  }

  if (v3)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a source that has not been cancelled, but has a mandatory cancel handler";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x5AAF8);
  }

  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  return (*(v2 + 64))(a1, 0, 2);
}

uintptr_t dispatch_source_get_mask(dispatch_source_t source)
{
  v2 = *(source + 11);
  if ((*(source + 20) & 0x10000000) != 0)
  {
    return 0;
  }

  if ((*(v2 + 29) & 0x10) != 0)
  {
    return 0x80000000;
  }

  if ((*(v2 + 29) & 2) != 0)
  {
    return *(v2 + 30);
  }

  return *(v2 + 32);
}

uintptr_t dispatch_source_get_handle(dispatch_source_t source)
{
  v3 = *(source + 11);
  if (*(v3 + 28) != -20)
  {
    return *(v3 + 24);
  }

  v2 = _dispatch_timer_flags_to_clock(*(v3 + 30));
  if (!v2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 2;
  }

  if (v2 != 2)
  {
    return *(v3 + 24);
  }

  return 3;
}

uintptr_t dispatch_source_get_data(dispatch_source_t source)
{
  v3 = *(source + 11);
  if ((*(v3 + 29) & 0x10) != 0)
  {
    return 0x80000000;
  }

  if ((*(v3 + 29) & 4) != 0)
  {
    return *(v3 + 64);
  }

  else
  {
    return *(v3 + 64);
  }
}

uint64_t dispatch_source_get_extended_data(uint64_t a1, uintptr_t *a2, unint64_t a3)
{
  v8 = *(a1 + 88);
  if (a3 >= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = a3;
  }

  if (a3)
  {
    v6 = 0;
    if ((*(v8 + 29) & 4) != 0)
    {
      v5 = *(v8 + 64);
      data = v5;
      v6 = HIDWORD(v5);
    }

    else
    {
      data = dispatch_source_get_data(a1);
    }

    if (a3 >= 8)
    {
      *a2 = data;
    }

    if (a3 >= 0x10)
    {
      a2[1] = v6;
    }

    if (a3 > 0x10)
    {
      __memset_chk();
    }
  }

  return v4;
}

void dispatch_source_merge_data(dispatch_source_t source, uintptr_t value)
{
  v5 = *(source + 11);
  if ((*(source + 20) & 0x10800000) == 0)
  {
    v4 = *(v5 + 28);
    switch(v4)
    {
      case -23:
        *(v5 + 72) = value;
        break;
      case -22:
        atomic_fetch_or_explicit((v5 + 72), value, memory_order_relaxed);
        break;
      case -21:
        atomic_fetch_add_explicit((v5 + 72), value, memory_order_relaxed);
        break;
      default:
        v2 = *(v5 + 28);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid source type";
        qword_E42C0 = v2;
        __break(1u);
        JUMPOUT(0x5B0E8);
    }

    v3 = 0;
    if (*source)
    {
      v3 = *source;
    }

    (*(v3 + 64))(source, 0, 2);
  }
}

void _dispatch_source_set_handler(unint64_t a1, const void *a2, uint64_t a3, char a4)
{
  v20 = a4 & 1;
  v33 = _dispatch_thread_getspecific(22);
  if (v33)
  {
    _dispatch_thread_setspecific(22, *(v33 + 16));
    v30 = v33;
  }

  else
  {
    v30 = _dispatch_continuation_alloc_from_heap();
  }

  if (a2)
  {
    v19 = 0;
    if (a3)
    {
      v19 = 4;
    }

    if (v20)
    {
      v32 = _dispatch_Block_copy(a2);
      v13 = _Block_get_invoke_fn(a2);
      v14 = 0;
      if (v13)
      {
        v14 = v13;
      }

      if (v14 == _dispatch_block_special_invoke)
      {
        *v30 = v19 | 0x110;
        v30[5] = v32;
        _dispatch_continuation_init_slow(v30, a1, 1073741888);
      }

      else
      {
        v11 = _Block_get_invoke_fn(a2);
        v12 = 0;
        if (v11)
        {
          v12 = v11;
        }

        v31 = v12;
        if ((v19 & 4) != 0)
        {
          v31 = _dispatch_call_block_and_release;
        }

        *v30 = v19 | 0x110;
        v30[4] = v31;
        v30[5] = v32;
        v30[3] = 0;
        v4 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v4, v30[3], v30);
        if (v30[3] != -1 && MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v30[1] = 0;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      *v30 = v19 | 0x140;
      v30[4] = a2;
      v30[5] = v10;
      v30[3] = 0;
      v5 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v5, v30[3], v30);
      if (v30[3] != -1 && MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      v30[1] = 0;
    }
  }

  else
  {
    *v30 = 256;
    v30[4] = 0;
  }

  for (i = *(a1 + 56); ; i = v7)
  {
    if ((~i & 0x180000000000000) != 0)
    {
      v25 = 0;
      goto LABEL_35;
    }

    v6 = i;
    v7 = i;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v7, i + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      break;
    }
  }

  LOBYTE(v9) = 1;
  if ((i & 0xFF80000000000000) != 0)
  {
    v9 = (HIBYTE(i) >> 1) & 1;
  }

  if (v9)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Too many calls to dispatch_suspend() prior to calling dispatch_set_target_queue() or dispatch_set_*_handler()";
    __break(1u);
    JUMPOUT(0x5BEBCLL);
  }

  v25 = 1;
LABEL_35:
  if (v25 == 1)
  {
    v26 = v30;
    if (v30[4])
    {
      if ((*v30 & 0x40) != 0)
      {
        v30[5] = *(a1 + 32);
      }
    }

    else
    {
      v28 = _dispatch_thread_getspecific(22);
      if (v28)
      {
        v8 = *(v28 + 8) + 1;
      }

      else
      {
        v8 = 1;
      }

      if (v8 <= _dispatch_continuation_cache_limit)
      {
        v30[2] = v28;
        *(v30 + 2) = v8;
        _dispatch_thread_setspecific(22, v30);
        v29 = 0;
      }

      else
      {
        v29 = v30;
      }

      if (v29)
      {
        _dispatch_continuation_free_to_cache_limit(v29);
      }

      v26 = 0;
    }

    v27 = atomic_exchange_explicit((*(a1 + 88) + 8 * a3 + 40), v26, memory_order_release);
    if (v27)
    {
      _dispatch_source_handler_dispose(v27);
    }

    _dispatch_lane_resume(a1, 0);
  }

  else
  {
    v15 = *(a1 + 80);
    if ((HIBYTE(v15) >> 2))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change a handler of this source after it has been activated";
      qword_E42C0 = a3;
      __break(1u);
      JUMPOUT(0x5C100);
    }

    if ((v15 & 0x10000000) == 0)
    {
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      if (a3 == 2)
      {
        _dispatch_bug_deprecated("Setting registration handler after the source has been activated");
      }

      else if (!a2)
      {
        _dispatch_bug_deprecated("Clearing handler after the source has been activated");
      }
    }

    v30[6] = a3;
    _dispatch_barrier_trysync_or_async_f(a1, v30, _dispatch_source_set_handler_slow, 0);
  }
}

void dispatch_source_set_event_handler_f(dispatch_source_t source, dispatch_function_t handler)
{
  v2 = 0;
  if (handler)
  {
    v2 = handler;
  }

  _dispatch_source_set_handler(source, v2, 0, 0);
}

void dispatch_source_set_mandatory_cancel_handler(uint64_t a1, void *a2)
{
  v4 = *(a1 + 80);
  do
  {
    if ((v4 & 0xFBBFFFFF | 0x4000000) == v4)
    {
      break;
    }

    v2 = v4;
    v3 = v4;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v3, v4 & 0xFBBFFFFF | 0x4000000, memory_order_relaxed, memory_order_relaxed);
    if (v3 != v2)
    {
      v4 = v3;
    }
  }

  while (v3 != v2);
  dispatch_source_set_cancel_handler(a1, a2);
}

void dispatch_source_set_cancel_handler_f(dispatch_source_t source, dispatch_function_t handler)
{
  v2 = 0;
  if (handler)
  {
    v2 = handler;
  }

  _dispatch_source_set_handler(source, v2, 1, 0);
}

void dispatch_source_set_mandatory_cancel_handler_f(uint64_t a1, void (__cdecl *a2)(void *))
{
  v4 = *(a1 + 80);
  do
  {
    if ((v4 & 0xFBBFFFFF | 0x4000000) == v4)
    {
      break;
    }

    v2 = v4;
    v3 = v4;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v3, v4 & 0xFBBFFFFF | 0x4000000, memory_order_relaxed, memory_order_relaxed);
    if (v3 != v2)
    {
      v4 = v3;
    }
  }

  while (v3 != v2);
  dispatch_source_set_cancel_handler_f(a1, a2);
}

void dispatch_source_set_registration_handler_f(dispatch_source_t source, dispatch_function_t handler)
{
  v2 = 0;
  if (handler)
  {
    v2 = handler;
  }

  _dispatch_source_set_handler(source, v2, 2, 0);
}

BOOL _dispatch_source_will_reenable_kevent_4NW(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (((v3 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_source_will_reenable_kevent_4NW not called from within the event handler";
    __break(1u);
    JUMPOUT(0x5C704);
  }

  v5 = *(*(a1 + 88) + 16);
  v2 = 0;
  if (v5)
  {
    v2 = 0;
    if ((v5 & 1) == 0)
    {
      return (v5 & 2) == 0;
    }
  }

  return v2;
}

void _dispatch_source_activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v23 = 0;
  v22 = *(a1 + 88);
  v21 = 0;
  v20 = 0;
  v28 = a1;
  v26 = *(a1 + 80);
  v27 = v26;
  v25 = v26;
  if ((HIBYTE(v26) >> 4))
  {
    *(v24 + 116) |= 1u;
    _dispatch_source_refs_finalize_unregistration(v24, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v33 = v22;
    v32 = 0;
    v30 = *(v22 + 40);
    v31 = v30;
    v29 = v30;
    v23 = v30;
    if (v30)
    {
      v38 = v23;
      v37 = 0;
      v66 = v23;
      if (*v23 > 0xFFF)
      {
        v18 = 0;
        if (*v38)
        {
          v18 = *v38;
        }

        if ((*(v18 + 16) & 0xF0) == 0x10)
        {
          v35 = *(v38 + 20);
          v36 = v35;
          v34 = v35;
          v37 = v35;
          v39 = (v35 & 0x80000) != 0;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = (*v38 & 2) != 0;
      }

      if (v39)
      {
        v51 = v24;
        v50 = 0x80000;
        v48 = 0x80000;
        v47 = 0x80000;
        v49 = 0x80000;
        v43 = 0x80000;
        v42 = 0x80000;
        v44 = 0x80000;
        v41 = atomic_fetch_or_explicit((v24 + 80), 0x80000u, memory_order_relaxed);
        v45 = v41;
        v40 = v41;
        v46 = v41 | 0x80000;
      }

      if ((*(v23 + 11) & 0x10) != 0)
      {
        goto LABEL_17;
      }

      v52 = *(v24 + 84);
      v17 = 0;
      if ((v52 & 0x20000000) == 0)
      {
        v17 = (v52 & 0x44000FFF) != 0;
      }

      if (!v17)
      {
LABEL_17:
        v55 = v23[1];
        v54 = 0;
        v65 = (v55 & 0x20000000) == 0;
        v64 = 458;
        if ((v55 & 0x20000000) != 0)
        {
          _dispatch_abort(v64, v65);
        }

        v53 = v55;
        v63 = (v55 & 0x3FFF00) >> 8;
        v8 = (v55 & 0x3FFF00) >> 8;
        v9 = __clz(__rbit32(v8));
        if (v8)
        {
          v10 = v9 + 1;
        }

        else
        {
          v10 = 0;
        }

        v53 |= v10 << 8;
        *(v24 + 84) = v53;
      }

      if ((*v23 & 0x40) != 0)
      {
        v23[5] = *(v24 + 32);
      }
    }

    else
    {
      _dispatch_bug_deprecated("dispatch source activated with no event handler set");
    }

    _dispatch_lane_activate(v24);
    if (((*(v22 + 29) & 1) != 0 || (*(v22 + 29) & 2) != 0) && (*(v24 + 116) & 1) == 0)
    {
      v21 = _dispatch_queue_compute_priority_and_wlh(v24, &v20);
      if (v21)
      {
        v56 = v20;
        if (v20 && v56 != -4)
        {
          v16 = 0;
          if (*v56)
          {
            v16 = *v56;
          }

          if (*(v16 + 16) == 18)
          {
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          v57 = 0;
        }

        v19 = v57;
        if (v57 && *(v22 + 28) == -20 && *(v22 + 24) <= 5u)
        {
          if (!v57[6])
          {
            v19[6] = _dispatch_calloc_typed(6, 32, 0x10A0040FB565BC9);
          }

          *(v22 + 29) |= 1u;
          v59 = v20;
          if (v20)
          {
            if (v59 != -4)
            {
              v58 = v59;
              v78 = v59;
              v75 = 1;
              v74 = 1;
              v76 = 1;
              v70 = 1;
              v69 = 1;
              v71 = 1;
              add_explicit = atomic_fetch_add_explicit((v59 + 96), 1u, memory_order_relaxed);
              v72 = add_explicit;
              v67 = add_explicit;
              v73 = add_explicit + v76;
              v77 = add_explicit + v76;
              if ((add_explicit + v76) <= 0)
              {
                qword_E4290 = "API MISUSE: Resurrection of an object";
                __break(1u);
                JUMPOUT(0x5CDE4);
              }
            }
          }

          v62 = v22;
          v61 = v20;
          v60 = 0;
          v83 = v22;
          v82 = v20;
          v81 = v20;
          v80 = v20;
          *(v22 + 16) = v20;
          v79 = v81;
        }

        _dispatch_source_install(v24, v20, v21, v11, v12, v13, v14, v15);
      }
    }
  }
}

void _dispatch_source_refs_finalize_unregistration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = *(a1 + 80); ; i = v9)
  {
    if ((i & 0x1FFFFFFF | 0x80000000) == i)
    {
      v12 = i;
      goto LABEL_7;
    }

    v8 = i;
    v9 = i;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v9, i & 0x1FFFFFFF | 0x80000000, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      break;
    }
  }

  v12 = i;
LABEL_7:
  if ((v12 & 0x80000000) != 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Source finalized twice";
    qword_E42C0 = v12;
    __break(1u);
    JUMPOUT(0x5CFD4);
  }

  if ((v12 & 0x20000000) != 0)
  {
    _dispatch_wake_by_address(a1 + 80);
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_source_refs_finalize_unregistration");
  _dispatch_release_tailcall(a1);
}

void _dispatch_source_install(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3;
  v15 = *(a1 + 88);
  if (*(a1 + 116))
  {
    _dispatch_abort(665, (*(a1 + 116) & 1) == 0);
  }

  *(a1 + 116) = *(a1 + 116) & 0xFFFE | 1;
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_source_install");
  if ((_dispatch_unote_register(v15, a2, v16) & 1) == 0)
  {
    _dispatch_source_refs_finalize_unregistration(a1, v8, v9, v10, v11, v12, v13, v14);
  }
}

void _dispatch_source_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v31 = a1;
  v30 = a2;
  i = a3;
  v28 = 8;
  v27 = _dispatch_source_invoke2;
  v26 = a1;
  v25[8] = 0;
  *v25 = (a3 & 1) == 0;
  v24 = 0;
  if ((a3 & 3) == 0)
  {
    *(v26 + 16) = -1985229329;
    v23 = _dispatch_thread_getspecific(20);
    v22 = v26;
    v41 = v23;
    v40 = v26;
    v39 = 0;
    v38 = 0;
    v108 = v23;
    v107 = v26;
  }

  i |= v28;
  if ((i & 2) != 0)
  {
    v24 = 0x40020000000001;
  }

  else
  {
    v55 = v26;
    v54 = i;
    v53 = (*(v26 + 80) - 1) << 41;
    v159 = _dispatch_thread_getspecific(3);
    v52 = v159 & 0xFFFFFFFC | 0x20000000000000;
    v50 = 0;
    v49 = 0;
    v48 = 0;
    v51 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v51 |= 0x4000000000uLL;
      v48 = 0;
    }

    else if ((v54 & 0x40000) != 0)
    {
      v48 = 0x4000000000;
    }

    else
    {
      v51 |= 0x4000000000uLL;
      v48 = 1;
    }

    v60 = (v54 & 2) == 0;
    v59 = 1331;
    if ((v54 & 2) != 0)
    {
      _dispatch_abort(v59, v60);
    }

    v112 = _dispatch_thread_getspecific(25);
    v118 = v112 & 0xF00;
    v111 = v118 >> 8;
    v121 = v112 & 0xF000;
    v110 = v121 >> 12;
    v124 = v112 & 0xF0000;
    v109 = (v112 & 0xF0000u) >> 16;
    if (v118 >> 8 <= v121 >> 12)
    {
      v14 = v110;
    }

    else
    {
      v14 = v111;
    }

    if (v14 <= v109)
    {
      v12 = v109;
    }

    else
    {
      if (v111 <= v110)
      {
        v13 = v110;
      }

      else
      {
        v13 = v111;
      }

      v12 = v13;
    }

    v47 = v12;
LABEL_22:
    v46 = 0;
    v45 = (v55 + 56);
    v50 = *(v55 + 56);
    do
    {
      v49 = v50;
      if ((v50 & v51) != 0)
      {
        if (!v48)
        {
          break;
        }

        v49 ^= v48;
      }

      else
      {
        v114 = v50;
        v113 = v47;
        v125 = v50;
        v11 = 0;
        if ((v50 & 0x1000000000) != 0)
        {
          v127 = v114 & 0x700000000;
          v11 = v113 < (v114 & 0x700000000) >> 32;
        }

        if (v11)
        {
          v116 = v50;
          v126 = v50 & 0x700000000;
          v115 = (v50 & 0x700000000) >> 32;
          v130 = _dispatch_thread_getspecific(3);
          v129 = v115;
          if (_dispatch_set_qos_class_enabled)
          {
            v132 = v129;
            v131 = 0;
            if (v129)
            {
              v131 = 1 << (v132 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v134 = v115;
          v133 = _dispatch_thread_getspecific(25);
          v135 = v133 & 0xF0000;
          if (v115 > (v133 & 0xF0000) >> 16)
          {
            v133 = v133 & 0xFFF0FFFF | (v134 << 16);
            _dispatch_thread_setspecific(25, v133);
          }

          v47 = v115;
          goto LABEL_22;
        }

        v49 = v49 & 0x7700000001 | v52;
        v117 = v50;
        if ((v50 & 0x10000000000) != 0 || v50 + v53 < 0x20000000000000)
        {
          v49 |= 0x40000000000000uLL;
        }
      }

      v44 = v49;
      v3 = v50;
      v4 = v50;
      atomic_compare_exchange_strong_explicit(v45, &v4, v49, memory_order_acquire, memory_order_acquire);
      if (v4 != v3)
      {
        v50 = v4;
      }

      v43 = v4 == v3;
      v46 = v4 == v3;
    }

    while (v4 != v3);
    v42 = v46;
    v58 = (v50 & v48) == v48;
    v57 = 1364;
    if ((v50 & v48) != v48)
    {
      _dispatch_abort(v57, v58);
    }

    if ((v50 & v51) != 0)
    {
      v56 = 0;
    }

    else
    {
      v49 &= v48 | 0x60000000000000;
      v50 &= 0x3FFE0000000000uLL;
      v56 = v49 - v50;
    }

    v24 = v56;
  }

  if (v24)
  {
    v21 = 0;
    if ((i & 0x40000) != 0)
    {
      v21 = 0;
    }

    else
    {
      v63 = *(v26 + 84);
      v62 = _dispatch_thread_getspecific(25);
      v61 = v62;
      if (v62)
      {
        if ((v63 & 0xFFF) != 0)
        {
          v61 &= 0x880F0000;
          if ((v62 & 0xFFF) > (v63 & 0xFFFu))
          {
            v10 = v62 & 0xFFF;
          }

          else
          {
            v10 = v63 & 0xFFF;
          }

          v61 |= v10;
          v122 = v63 & 0xF000;
          v119 = v61 & 0xF00;
          if (v122 >> 12 > v119 >> 8)
          {
            v63 &= 0x4400F000u;
          }

          else
          {
            v63 &= 0x40000000u;
          }

          v61 |= v63;
        }

        else
        {
          if ((v61 & 0xFFF) != 0)
          {
            v61 |= 0x40000000u;
          }

          v123 = v63 & 0xF000;
          v120 = v61 & 0xF00;
          if (v123 >> 12 > v120 >> 8)
          {
            v61 = v61 & 0xFFFF0FFF | v63 & 0x400F000;
          }
        }
      }

      else
      {
        v61 = v63 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v61);
      v21 = v62;
    }

    if ((i & 0x100000) != 0)
    {
      v35 = v31;
      v33 = *(v31 + 80);
      v34 = v33;
      v32 = v33;
      if ((v33 & 0x400000) != 0)
      {
        v75 = v31;
        v74 = 0x400000;
        v72 = -4194305;
        v71 = -4194305;
        v73 = -4194305;
        v67 = -4194305;
        v66 = -4194305;
        v68 = -4194305;
        v65 = atomic_fetch_and_explicit((v31 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v69 = v65;
        v64 = v65;
        v70 = v65 & 0xFFBFFFFF;
      }
    }

    v20 = v26;
    v78 = v26;
    v77 = i;
    v141 = v26;
    v140 = 256;
    v147 = 1;
    v146 = 738;
    v145 = v26;
    v143 = *(v26 + 80);
    v144 = v143;
    v142 = v143;
    v139 = v143 & 0x30000;
    v76 = (v143 & 0x30000) << 8;
    if (v76)
    {
      v77 = v77 & 0xFCFFFFFF | v76;
    }

    for (i = v77; ; i |= 0x10u)
    {
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        _dispatch_last_resort_autorelease_pool_push(v30);
      }

      v19 = v26;
      *&v25[1] = v27(v26, v30, i, &v24);
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        v18 = 0uLL;
        v80 = v26;
        v79 = &v18;
        v148 = &v18;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v18);
        _dispatch_thread_setspecific_pair(20, v80, 21, v79);
        _dispatch_last_resort_autorelease_pool_pop(v30);
        v81 = &v18;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v18);
      }

      v37 = *&v25[1] != 1;
      v36 = 2026;
      if (*&v25[1] == 1)
      {
        _dispatch_abort(v36, v37);
      }

      v9 = 0;
      if (*&v25[1])
      {
        v9 = *&v25[1] != -1;
      }

      if (v9)
      {
        break;
      }

      v101 = v26;
      v100 = v24;
      v99 = *&v25[1] == 0;
      v98 = 0;
      v97 = 0;
      v96 = 0;
      v95 = (v26 + 56);
      v98 = *(v26 + 56);
      do
      {
        v97 = (v98 - v100) & 0xFFFFFFF700000001;
        v103 = v98;
        if ((v98 & 0xFF80000000000000) == 0)
        {
          v149 = v98;
          if ((v98 & 0x8000000000) != 0)
          {
            v93 = 0x8000000000;
            v92 = 0x8000000000;
            v94 = 0x8000000000;
            v88 = 0x8000000000;
            v87 = 0x8000000000;
            v89 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v101 + 56), 0x8000000000uLL, memory_order_acquire);
            v90 = xor_explicit;
            v85 = xor_explicit;
            v91 = xor_explicit ^ v94;
            v102 = 0;
            goto LABEL_101;
          }

          if (v99)
          {
            v97 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v97 |= 0x8000000000uLL;
          }
        }

        v84 = v97;
        v5 = v98;
        v6 = v98;
        atomic_compare_exchange_strong_explicit(v95, &v6, v97, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          v98 = v6;
        }

        v83 = v6 == v5;
        v96 = v6 == v5;
      }

      while (v6 != v5);
      v82 = v96;
      v150 = v98;
      v151 = v98;
      v8 = 0;
      if ((v98 & 0x1000000000) != 0)
      {
        v8 = (v150 & 0x800000000) != 0;
      }

      if (v8)
      {
        v128 = v98 & 0x700000000;
        v137 = (v98 & 0x700000000uLL) >> 32;
        v136 = _dispatch_thread_getspecific(25);
        v138 = v136 & 0xF0000;
        if (v137 > (v136 & 0xF0000) >> 16)
        {
          v136 &= 0xFFF0FFFF;
          v136 |= v137 << 16;
          _dispatch_thread_setspecific(25, v136);
        }
      }

      v102 = 1;
LABEL_101:
      if (v102)
      {
        v24 = 0;
        *&v25[1] = 0;
        break;
      }

      *&v25[1] = _dispatch_thread_getspecific(20);
      v7 = 0;
      if (**&v25[1])
      {
        v7 = **&v25[1];
      }

      if (*(v7 + 16) & 0x10000) == 0 && (v25[0])
      {
        break;
      }
    }

    if ((i & 0x40000) == 0)
    {
      v105 = v21;
      v104 = _dispatch_thread_getspecific(25);
      v105 &= 0xFFF0FFFF;
      v105 |= v104 & 0xF0000;
      _dispatch_thread_setspecific(25, v105);
    }
  }

  if (v25[0])
  {
    v106 = v26;
    v152 = v26;
    v157 = 772079660;
    v156 = v26;
    v155 = 0;
    v154 = 0;
    v153 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v158 = v106;
  }

  if (*&v25[1])
  {
    _dispatch_queue_invoke_finish(v26, v30, *&v25[1], v24);
  }

  else
  {
    _dispatch_release_2_tailcall(v26);
  }

  if ((a3 & 0x100000) != 0)
  {
    v16 = _dispatch_thread_getspecific(27);
    v15 = *(v16 + 48);
    if (v15)
    {
      if (*(v15 + 6))
      {
        _dispatch_event_loop_drain_timers(*(v16 + 48), 6u);
      }
    }
  }
}

uint64_t (***_dispatch_source_invoke2(uint64_t a1, uint64_t a2, unsigned int a3, void *a4))()
{
  v31 = 0;
  v30 = _dispatch_thread_getspecific(20);
  v29 = *(a1 + 88);
  v23 = 0;
  if ((a3 & 0x40000) == 0)
  {
    v44 = _dispatch_thread_getspecific(29);
    if (v44)
    {
      _dispatch_abort(453, (v44 & 1) == 0);
    }

    if (v44)
    {
      v42 = *(v44 + 24);
    }

    else
    {
      v42 = -4;
    }

    v41 = *(v29 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = 0;
    if (v41)
    {
      v22 = 0;
      if (v41 != -4)
      {
        v22 = v41 != v42;
      }
    }

    v23 = v22;
  }

  if (v23)
  {
    _dispatch_source_handle_wlh_change(a1);
  }

  if (*(a1 + 48))
  {
    v34 = a3 | 0x4000000;
    v31 = _dispatch_lane_serial_drain(a1, a2, v34, a4);
    a3 = v34 & 0xFBFFFFFF;
  }

  v27 = &_dispatch_mgr_q;
  v26 = 0;
  if (*(v29 + 29))
  {
    v27 = *(a1 + 24);
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    if (v30 != v27)
    {
      return v27;
    }

    v25 = 0x2000000;
    if ((a3 & 0x10000) != 0)
    {
      v25 = _dispatch_thread_getspecific(25);
    }

    v45 = _dispatch_thread_getspecific(29);
    if (v45)
    {
      _dispatch_abort(453, (v45 & 1) == 0);
    }

    if (v45)
    {
      _dispatch_source_install(a1, *(v45 + 24), v25, v10, v11, v12, v13, v14);
    }

    else
    {
      _dispatch_source_install(a1, -4, v25, v10, v11, v12, v13, v14);
    }
  }

  if ((*(a1 + 56) & 0xFF80000000000000) != 0)
  {
    return *(a1 + 24);
  }

  v21 = 0;
  if ((*(v29 + 29) & 2) != 0)
  {
    v21 = *(v29 + 104) != 0;
  }

  if (v21 && (*(a1 + 80) & 0x10800000) == 0)
  {
    if (v30 != v27)
    {
      return v27;
    }

    _dispatch_timer_unote_configure(*(a1 + 88));
  }

  if (*(v29 + 56))
  {
    if (v30 != *(a1 + 24))
    {
      return *(a1 + 24);
    }

    _dispatch_source_registration_callout(a1, v30, a3);
  }

  if ((*(v29 + 16) & 2) != 0)
  {
    _dispatch_source_refs_unregister(a1, 5, v4, v5, v6, v7, v8, v9);
  }

  v28 = *(a1 + 80);
  if ((v28 & 0x10800000) == 0 && *(v29 + 72))
  {
    if (v30 != *(a1 + 24))
    {
      return *(a1 + 24);
    }

    _dispatch_source_latch_and_call(a1, v30, a3);
    v28 = *(a1 + 80);
    if ((v28 & 0x90000000) == 0)
    {
      v20 = 1;
      if (!*(v30 + 24))
      {
        v20 = *(v30 + 84) >= 0;
      }

      v26 = v20;
    }

    *(a1 + 116) = *(a1 + 116) & 0xFFFD | 2;
  }

  if ((v28 & 0x10800000) == 0 || v28 < 0)
  {
    goto LABEL_65;
  }

  if ((*(v29 + 29) & 2) == 0 || (*(v29 + 16)) && v30 != v27)
  {
    return v27;
  }

  v24 = 1;
  if ((v28 & 0x40000000) == 0)
  {
    v24 = 3;
  }

  _dispatch_source_refs_unregister(a1, v24, v4, v5, v6, v7, v8, v9);
  v28 = *(a1 + 80);
  if (v28 < 0)
  {
LABEL_65:
    if ((v28 & 0x10800000) != 0 && v28 < 0)
    {
      if (v30 != *(a1 + 24) && (*(v29 + 40) || *(v29 + 48) || *(v29 + 56)))
      {
        v31 = *(a1 + 24);
      }

      else
      {
        _dispatch_source_cancel_callout(a1, v30, a3);
        v28 = *(a1 + 80);
      }

      v26 = 0;
    }

    if ((v28 & 0x10800000) == 0)
    {
      if ((*(v29 + 29) & 2) != 0)
      {
        if (*(v29 + 104))
        {
          v38 = 1;
        }

        else
        {
          v39 = *(v29 + 16);
          v17 = 0;
          if (v39)
          {
            v17 = 0;
            if ((v39 & 1) == 0)
            {
              v17 = (v39 & 2) == 0;
            }
          }

          v38 = v17 && *(v29 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
        }
      }

      else
      {
        v40 = *(v29 + 16);
        v18 = 0;
        if (v40)
        {
          v18 = 0;
          if ((v40 & 1) == 0)
          {
            v18 = (v40 & 2) == 0;
          }
        }

        v38 = v18;
      }

      if (v38)
      {
        if (v30 != v27)
        {
          return v27;
        }

        if ((*(a1 + 56) & 0xFF80000000000000) != 0)
        {
          return *(a1 + 24);
        }

        if ((*(v29 + 29) & 1) != 0 && (*(v29 + 16) & 0xFFFFFFFFFFFFFFFCLL) == 0xFFFFFFFFFFFFFFFCLL)
        {
          if ((*(a1 + 116) & 2) != 0)
          {
            *(a1 + 116) &= ~2u;
            _dispatch_unote_resume(v29);
          }

          if (v26)
          {
            return *(a1 + 24);
          }
        }

        else
        {
          _dispatch_unote_resume(v29);
          if (!v26)
          {
            v43 = _dispatch_thread_getspecific(29);
            if (v43)
            {
              _dispatch_abort(453, (v43 & 1) == 0);
            }

            v16 = 0;
            if (_dispatch_thread_getspecific(5))
            {
              v16 = 0;
              if (v43)
              {
                v16 = 0;
                if (*(v43 + 24) != -4)
                {
                  v16 = (*(v29 + 16) & 0xFFFFFFFFFFFFFFFCLL) == *(v43 + 24);
                }
              }
            }

            if (v16)
            {
              _dispatch_event_loop_drain(1u);
            }
          }
        }
      }
    }

    return v31;
  }

  if (v31)
  {
    return v31;
  }

  else
  {
    return -1;
  }
}

void _dispatch_source_wakeup(uint64_t a1, unsigned int a2, char a3)
{
  v8 = *(a1 + 88);
  v7 = &_dispatch_mgr_q;
  *&v6[8] = 0;
  *v6 = *(a1 + 80);
  if (*(v8 + 29))
  {
    v7 = (&dword_0 + 1);
  }

  if (*(a1 + 116))
  {
    if ((*v6 & 0x10800000) != 0)
    {
      goto LABEL_55;
    }

    v5 = 0;
    if ((*(v8 + 29) & 2) != 0)
    {
      v5 = *(v8 + 104) != 0;
    }

    if (!v5)
    {
LABEL_55:
      if (*(v8 + 56))
      {
        *&v6[4] = 1;
      }

      else if ((*(v8 + 16) & 2) != 0)
      {
        *&v6[4] = 1;
      }

      else if ((*v6 & 0x10800000) != 0 || !*(v8 + 72))
      {
        if ((*v6 & 0x10800000) == 0 || (*v6 & 0x80000000) != 0)
        {
          if ((*v6 & 0x10800000) != 0 && (*v6 & 0x80000000) != 0 && (*(v8 + 40) || *(v8 + 48) || *(v8 + 56)))
          {
            *&v6[4] = 1;
          }

          else if ((*v6 & 0x10800000) == 0)
          {
            if ((*(v8 + 29) & 2) != 0)
            {
              if (*(v8 + 104))
              {
                v9 = 1;
              }

              else
              {
                v10 = *(v8 + 16);
                v3 = 0;
                if (v10)
                {
                  v3 = 0;
                  if ((v10 & 1) == 0)
                  {
                    v3 = (v10 & 2) == 0;
                  }
                }

                v9 = v3 && *(v8 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
              }
            }

            else
            {
              v11 = *(v8 + 16);
              v4 = 0;
              if (v11)
              {
                v4 = 0;
                if ((v11 & 1) == 0)
                {
                  v4 = (v11 & 2) == 0;
                }
              }

              v9 = v4;
            }

            if (v9)
            {
              *&v6[4] = v7;
            }
          }
        }

        else if (*(v8 + 29) & 2) == 0 || (*(v8 + 16))
        {
          if ((*v6 & 0x40000000) == 0 || (a3 & 0x10) != 0)
          {
            *&v6[4] = v7;
          }
        }

        else
        {
          *&v6[4] = 1;
        }
      }

      else
      {
        *&v6[4] = 1;
      }
    }

    else
    {
      *&v6[4] = v7;
    }
  }

  else
  {
    *&v6[4] = v7;
  }

  if (!*&v6[4])
  {
    *&v6[4] = *(a1 + 48) != 0;
  }

  if (*&v6[4] == 1 && *(a1 + 24) == &_dispatch_mgr_q)
  {
    *&v6[4] = &_dispatch_mgr_q;
  }

  _dispatch_queue_wakeup(a1, a2, a3, *&v6[4]);
}

void dispatch_source_cancel(dispatch_source_t source)
{
  _dispatch_object_debug(source, "%s", v1, v2, v3, v4, v5, v6, "dispatch_source_cancel");
  _dispatch_retain_2(source);
  if ((atomic_fetch_or_explicit((source + 80), 0x10000000u, memory_order_release) & 0x10000000) != 0)
  {
    _dispatch_release_2_tailcall(source);
  }

  else
  {
    v7 = 0;
    if (*source)
    {
      v7 = *source;
    }

    (*(v7 + 64))(source, 0, 3);
  }
}

void dispatch_source_cancel_and_wait(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *(a1 + 88);
  if (*(v31 + 48))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Source has a cancel handler";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x5FAB8);
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "dispatch_source_cancel_and_wait");
  for (i = *(a1 + 80); ; i = v9)
  {
    v32 = i | 0x10000000;
    if ((i & 0x20000000) != 0)
    {
      break;
    }

    if ((i & 0x80000000) == 0 && ((i & 0x40000000) != 0 || (*(v31 + 29) & 2) != 0 || (*(v31 + 29) & 1) == 0))
    {
      v32 = i | 0x30000000;
    }

    v8 = i;
    v9 = i;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v9, v32, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      break;
    }
  }

  if ((i & 0x800000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Dispatch source used after last release";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x5FC2CLL);
  }

  if ((i & 0x80000000) == 0)
  {
    if ((v32 & 0x20000000) == 0)
    {
      v30 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x60000000000000;
      for (j = *(a1 + 56); ; j = v17)
      {
        v25 = 0;
        if (!(j >> 53))
        {
          v25 = (j & 0xFFFFFFFC) == 0;
        }

        if (v25)
        {
          v28 = j & 0x7700000001 | v30;
        }

        else
        {
          if ((i & 0x10000000) != 0)
          {
            break;
          }

          v28 = j | 0x8000000000;
        }

        v16 = j;
        v17 = j;
        atomic_compare_exchange_strong((a1 + 56), &v17, v28);
        if (v17 == v16)
        {
          break;
        }
      }

      if ((j & 0xFF80000000000000) != 0)
      {
        if (j >> 58)
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Source is suspended";
          qword_E42C0 = a1;
          __break(1u);
          JUMPOUT(0x5FE28);
        }

        dispatch_activate(a1);
        return;
      }

      v24 = 0;
      if (!(j >> 53))
      {
        v24 = (j & 0xFFFFFFFC) == 0;
      }

      if (v24)
      {
        if (!(HIBYTE(*(a1 + 80)) >> 7))
        {
          _dispatch_source_refs_unregister(a1, 3, v10, v11, v12, v13, v14, v15);
        }

        if (HIBYTE(*(a1 + 80)) >> 7)
        {
          _dispatch_source_cancel_callout(a1, 0, 0);
        }

        v23 = 0;
        if (*a1)
        {
          v23 = *a1;
        }

        (*(v23 + 64))(a1, 0, 20);
LABEL_47:
        v27 = *(a1 + 80);
        while (1)
        {
          while (1)
          {
            if (HIBYTE(v27) >> 7)
            {
              return;
            }

            if (((HIBYTE(v27) >> 5) & 1) == 0)
            {
              break;
            }

LABEL_54:
            _dispatch_wait_on_address(a1 + 80, v27, 0xFFFFFFFFFFFFFFFFLL, 0);
            v27 = *(a1 + 80);
          }

          v26 = v27;
          v20 = v27;
          v21 = v27;
          atomic_compare_exchange_strong_explicit((a1 + 80), &v21, v27 | 0x20000000, memory_order_relaxed, memory_order_relaxed);
          if (v21 != v20)
          {
            v26 = v21;
          }

          v27 = v26;
          if (v21 == v20)
          {
            v27 = v26 | 0x20000000;
            goto LABEL_54;
          }
        }
      }

      if (((j ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_source_cancel_and_wait called from a source handler";
        qword_E42C0 = a1;
        __break(1u);
        JUMPOUT(0x6001CLL);
      }
    }

    v35 = (_dispatch_thread_getspecific(4) & 0x3FFF00uLL) >> 8;
    v18 = __clz(__rbit32(v35));
    if (v35)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 0;
    }

    v22 = 0;
    if (*a1)
    {
      v22 = *a1;
    }

    (*(v22 + 64))(a1, v19, 2);
    dispatch_activate(a1);
    goto LABEL_47;
  }
}

void _dispatch_source_refs_unregister(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_source_refs_unregister");
  if (_dispatch_unote_unregister(*(a1 + 88), a2))
  {
    _dispatch_source_refs_finalize_unregistration(a1, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v17 = *(a1 + 80);
    do
    {
      if ((v17 & 0xC0000000) != 0)
      {
        break;
      }

      v15 = v17;
      v16 = v17;
      atomic_compare_exchange_strong_explicit((a1 + 80), &v16, v17 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
      if (v16 != v15)
      {
        v17 = v16;
      }
    }

    while (v16 != v15);
  }
}

void _dispatch_source_cancel_callout(uint64_t result, uint64_t a2, int a3)
{
  v5 = *(result + 88);
  v3 = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v3 = _dispatch_autorelease_pool_push();
  }

  v4 = __swp(0, (v5 + 48));
  *(v5 + 72) = 0;
  *(v5 + 64) = 0;
  v10 = __swp(0, (v5 + 40));
  if (v10)
  {
    _dispatch_source_handler_dispose(v10);
  }

  v9 = __swp(0, (v5 + 56));
  if (v9)
  {
    _dispatch_source_handler_dispose(v9);
  }

  if (v4)
  {
    if ((*(result + 80) & 0x10000000) != 0)
    {
      if ((*v4 & 0x40) != 0)
      {
        *(v4 + 40) = *(result + 32);
      }

      __dmb(9u);
      _dispatch_continuation_pop(v4, 0, a3 & 0xFEFFFFFF, a2);
    }

    else
    {
      _dispatch_source_handler_dispose(v4);
    }
  }

  if (v3)
  {
    _dispatch_autorelease_pool_pop(v3);
  }
}

uint64_t _dispatch_source_merge_evt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = BYTE1(a2);
  v21 = a4;
  v20 = ~*(a1 + 8);
  if ((a2 & 0x100) == 0 && !*(a1 + 16) && (*(a1 + 29) & 2) == 0)
  {
    _dispatch_source_refs_finalize_unregistration(v20, a2, a3, a4, a5, a6, a7, a8);
  }

  if ((v22 >> 1))
  {
    if ((*(v20 + 80) & 0x4000000) != 0)
    {
      v8 = *(a1 + 24);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports or file descriptors)";
      qword_E42C0 = v8;
      __break(1u);
      JUMPOUT(0x60748);
    }

    _dispatch_bug_kevent_vanished(a1);
    *(a1 + 72) = 0;
  }

  v9 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tkevent-source[%p]: merged kevent[%p]", 1209, v9, v20, a1);
  _dispatch_object_debug(v20, "%s", v10, v11, v12, v13, v14, v15, "_dispatch_source_merge_evt");
  v19 = 0;
  if (*v20)
  {
    v19 = *v20;
  }

  v24 = (v21 & 0x3FFF00) >> 8;
  v16 = __clz(__rbit32(v24));
  if (v24)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 0;
  }

  return (*(v19 + 64))(v20, v17, 51);
}

uint64_t _dispatch_interval_config_create(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = (*(a4 + 30) & 0x20) != 0;
  v8 = _dispatch_calloc_typed(1, 32, 0x1000040F6D918ACLL);
  *(v8 + 24) = 0;
  if (a1 == -1)
  {
    *v8 = 0x7FFFFFFFFFFFFFFFLL;
    *(v8 + 16) = 0x7FFFFFFFFFFFFFFFLL;
    *(v8 + 8) = 0x7FFFFFFFFFFFFFFFLL;
    return v8;
  }

  else
  {
    if (a1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Start value is not DISPATCH_TIME_NOW or DISPATCH_TIME_FOREVER";
      __break(1u);
      JUMPOUT(0x60978);
    }

    if (!a2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Setting interval to 0";
      __break(1u);
      JUMPOUT(0x609B0);
    }

    v4 = 1892160075;
    if (!v9)
    {
      v4 = 31536000000;
    }

    if (a2 > v4)
    {
      v13 = 31536000000000000;
    }

    else
    {
      v5 = 1000000;
      if (v9)
      {
        v5 = 16666666;
      }

      v13 = a2 * v5;
    }

    if (_dispatch_host_time_nano2mach)
    {
      v18 = _dispatch_host_time_nano2mach(v13);
    }

    else if (v13)
    {
      if (v13 < 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v13 >= 0x5555555555555555)
        {
          v18 = 3 * (v13 / 0x7D);
        }

        else
        {
          v6 = (3 * v13 * 0x624DD2F1A9FBE77uLL) >> 64;
          v18 = (v6 + ((3 * v13 - v6) >> 1)) >> 6;
        }
      }

      else
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v18 = 0;
    }

    v15 = (_dispatch_uptime() + v18) / v18 * v18;
    if (a3 > 0x3E8)
    {
      if (a3 != -1)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Passing an invalid leeway";
        __break(1u);
        JUMPOUT(0x60BB8);
      }

      if (v9)
      {
        if (_dispatch_host_time_nano2mach)
        {
          v17 = _dispatch_host_time_nano2mach(16666666);
        }

        else
        {
          v17 = (((0x2FAF07E * 0x624DD2F1A9FBE77uLL) >> 64) + ((49999998 - ((0x2FAF07E * 0x624DD2F1A9FBE77uLL) >> 64)) >> 1)) >> 6;
        }

        v11 = v17;
      }

      else
      {
        v11 = v18 >> 1;
      }
    }

    else
    {
      v11 = v18 * a3 / 0x3E8;
    }

    *(v8 + 24) = 0;
    *v8 = v15;
    *(v8 + 8) = v15 + v11;
    *(v8 + 16) = v18;
    return v8;
  }
}

uint64_t _dispatch_timer_config_create(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = _dispatch_calloc_typed(1, 32, 0x1000040F6D918ACLL);
  if (v11)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if (v12 != -1)
    {
      _dispatch_bug_deprecated("Setting timer interval to 0 requests a 1ns timer, did you mean FOREVER (a one-shot timer)?");
    }

    v11 = 1;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = 0;
  v6 = 0;
  if (v12 == -1)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = _dispatch_timer_flags_to_clock(*(v9 + 30));
  }

  else
  {
    v21 = v12;
    v20 = 1;
    v19 = &v7;
    v18 = &v6;
    v17 = 0;
    if (v12 == 0x8000000000000000)
    {
      *v19 = 1;
      *v18 = _dispatch_monotonic_time();
    }

    else if (v12 == -2)
    {
      *v19 = 2;
      *v18 = _dispatch_get_nanoseconds();
    }

    else if (v12)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        if ((v21 & 0x4000000000000000) != 0)
        {
          *v19 = 2;
          v17 = -v21;
        }

        else
        {
          *v19 = 1;
          v17 = v21 & 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        *v19 = 0;
        v17 = v21;
      }

      if (v17 > 0x3FFFFFFFFFFFFFFFLL)
      {
        v5 = -1;
      }

      else
      {
        v5 = v17;
      }

      *v18 = v5;
    }

    else
    {
      *v19 = 0;
      *v18 = _dispatch_uptime();
    }
  }

  if (v7 != 2)
  {
    v15 = v11;
    if (_dispatch_host_time_nano2mach)
    {
      v16 = _dispatch_host_time_nano2mach(v15);
    }

    else if (v15)
    {
      if (v15 < 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v15 >= 0x5555555555555555)
        {
          v16 = 3 * (v15 / 0x7D);
        }

        else
        {
          v16 = 3 * v15 / 0x7D;
        }
      }

      else
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v16 = 0;
    }

    v11 = v16;
    if (!v16)
    {
      v11 = 1;
    }

    v13 = v10;
    if (_dispatch_host_time_nano2mach)
    {
      v14 = _dispatch_host_time_nano2mach(v13);
    }

    else if (v13)
    {
      if (v13 < 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v13 < 0x5555555555555555)
        {
          v14 = 3 * v13 / 0x7D;
        }

        else
        {
          v14 = 3 * (v13 / 0x7D);
        }
      }

      else
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v14 = 0;
    }

    v10 = v14;
  }

  if (v11 < 0x7FFFFFFFFFFFFFFFLL && v10 > v11 / 2)
  {
    v10 = v11 / 2;
  }

  *(v8 + 24) = v7;
  *v8 = v6;
  *(v8 + 16) = v11;
  if (v6 + v10 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v8 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v8 + 8) = v6 + v10;
  }

  return v8;
}

void dispatch_after_f(dispatch_time_t when, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v17 = 0;
  if (work)
  {
    v17 = work;
  }

  v35 = when;
  queuea = queue;
  v33 = context;
  block = v17;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if (when == -1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_after called with 'when' == infinity";
    __break(1u);
    JUMPOUT(0x612ECLL);
  }

  v27 = _dispatch_timeout(v35);
  if (v27)
  {
    v28 = _dispatch_after_leeway(v27);
    if (v28 <= 0xF423F)
    {
      v28 = 1000000;
    }

    if (v28 >= 0xDF8475801)
    {
      v28 = 60000000000;
    }

    v29 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queuea);
    v30 = *(v29 + 11);
    v45 = _dispatch_thread_getspecific(22);
    if (v45)
    {
      _dispatch_thread_setspecific(22, *(v45 + 16));
    }

    v36 = v45;
    if (v45)
    {
      v37 = v36;
    }

    else
    {
      v37 = _dispatch_continuation_alloc_from_heap();
    }

    v26 = v37;
    v25 = queuea;
    v15 = 0;
    if (block)
    {
      v15 = block;
    }

    v44 = v25;
    v43 = v26;
    v42 = v33;
    v41 = v15;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    *v26 = 256;
    v43[4] = v41;
    v43[5] = v42;
    if ((v40 & 0x40000000) == 0)
    {
      v60 = 1;
      v63 = _dispatch_thread_getspecific(4);
      v64 = v63;
      v61 = v63 & 0xFFFFFF;
      v68 = 5;
      v67 = 4096;
      if (v61 <= 0x10FF)
      {
        v62 = v61;
      }

      else
      {
        v66 = 5;
        v65 = 4096;
        v62 = 4351;
      }

      v38 = v62;
    }

    v48 = v43;
    v47 = v40;
    v46 = 0;
    v50 = v40 >= 0;
    v49 = 583;
    if (v40 < 0)
    {
      _dispatch_abort(v49, v50);
    }

    if ((v47 & 0x40) == 0)
    {
      v69 = _dispatch_thread_getspecific(28);
      if (v69)
      {
        v79 = v69;
        os_retain(v69);
      }

      v46 = v69;
    }

    v48[3] = v46;
    v4 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v4, v48[3], v48);
    v5 = v48[3];
    v73 = 771817476;
    v72 = v5;
    v71 = v48;
    if (v5 != -1)
    {
      v14 = v72 ? *(v72 + 32) : 0;
      v70 = v14;
      v78 = v73;
      v77 = v14;
      v76 = v71;
      v75 = 0;
      v74 = 0;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v59 = v44;
    v58 = v43;
    v57 = v38;
    v56 = v40;
    v55 = 0;
    v54 = v44;
    if (v38)
    {
      v53 = (v56 & 0x20) != 0;
      v52 = (*(v54 + 21) & 0x40000000) != 0;
      v51 = (*(v54 + 21) & 0xFFF) != 0;
      if ((v56 & 0x20) != 0)
      {
        v57 |= 0x10000000uLL;
        v80 = v57 >> 8;
        v6 = v57 >> 8;
        v7 = __clz(__rbit32(v6));
        if (v6)
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = 0;
        }

        v55 = v8;
      }

      else if (v52 || !v51)
      {
        v81 = v57 >> 8;
        v9 = v57 >> 8;
        v10 = __clz(__rbit32(v9));
        if (v9)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = 0;
        }

        v55 = v11;
      }

      else
      {
        v57 = 0;
      }
    }

    v58[1] = v57;
    v26[6] = v29;
    v24 = queuea;
    v23 = v26;
    v92 = queuea;
    v91 = v26;
    v90 = 0;
    v89 = 0;
    v94 = queuea;
    v93 = v26;
    v22 = v26;
    v21 = v26;
    *(v30 + 40) = v26;
    v20 = v22;
    v19 = 0;
    v18 = 0;
    v88 = v35;
    v87 = 0;
    v86 = &v19;
    v85 = &v18;
    v84 = 0;
    if ((v35 & 0x8000000000000000) != 0)
    {
      if ((v88 & 0x4000000000000000) != 0)
      {
        *v86 = 2;
        v84 = -v88;
      }

      else
      {
        *v86 = 1;
        v84 = v88 & 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *v86 = 0;
      v84 = v88;
    }

    if (v84 >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = v84;
    }

    *v85 = v13;
    if (v19 != 2)
    {
      v82 = v28;
      if (_dispatch_host_time_nano2mach)
      {
        v83 = _dispatch_host_time_nano2mach(v82);
      }

      else if (v82)
      {
        if (v82 < 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v82 >= 0x5555555555555555)
          {
            v83 = 3 * (v82 / 0x7D);
          }

          else
          {
            v12 = (3 * v82 * 0x624DD2F1A9FBE77uLL) >> 64;
            v83 = (v12 + ((3 * v82 - v12) >> 1)) >> 6;
          }
        }

        else
        {
          v83 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v83 = 0;
      }

      v28 = v83;
    }

    *(v30 + 30) |= _dispatch_timer_flags_from_clock(v19);
    *(v30 + 80) = v18;
    *(v30 + 96) = -1;
    *(v30 + 88) = v18 + v28;
    dispatch_activate(v29);
  }

  else
  {
    worka = 0;
    if (block)
    {
      worka = block;
    }

    dispatch_channel_async_f(queuea, v33, worka);
  }
}

void dispatch_after(dispatch_time_t when, dispatch_queue_t queue, dispatch_block_t block)
{
  v35 = when;
  queuea = queue;
  v33 = 0;
  blocka = block;
  v31 = 1;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if (when == -1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_after called with 'when' == infinity";
    __break(1u);
    JUMPOUT(0x6266CLL);
  }

  v27 = _dispatch_timeout(v35);
  if (v27)
  {
    v28 = _dispatch_after_leeway(v27);
    if (v28 <= 0xF423F)
    {
      v28 = 1000000;
    }

    if (v28 >= 0xDF8475801)
    {
      v28 = 60000000000;
    }

    v29 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queuea);
    v30 = *(v29 + 11);
    v53 = _dispatch_thread_getspecific(22);
    if (v53)
    {
      _dispatch_thread_setspecific(22, *(v53 + 16));
    }

    v36 = v53;
    if (v53)
    {
      v37 = v36;
    }

    else
    {
      v37 = _dispatch_continuation_alloc_from_heap();
    }

    v26 = v37;
    v25 = queuea;
    v44 = queuea;
    v43 = v37;
    v42 = blocka;
    v41 = 0;
    v39 = _dispatch_Block_copy(blocka);
    v40 = 272;
    v54 = blocka;
    v16 = _Block_get_invoke_fn(blocka);
    v17 = 0;
    if (v16)
    {
      v17 = v16;
    }

    if (v17 == _dispatch_block_special_invoke)
    {
      *v43 = v40;
      v43[5] = v39;
      inited = _dispatch_continuation_init_slow(v43, v44, v41);
    }

    else
    {
      v14 = _Block_get_invoke_fn(v42);
      v15 = 0;
      if (v14)
      {
        v15 = v14;
      }

      v38 = v15;
      v52 = v44;
      v51 = v43;
      v50 = v39;
      v49 = v15;
      v48 = v41;
      v47 = v40;
      v46 = 0;
      *v43 = v40 | 0x100;
      v51[4] = v49;
      v51[5] = v50;
      if ((v48 & 0x40000000) == 0)
      {
        v69 = 1;
        v72 = _dispatch_thread_getspecific(4);
        v73 = v72;
        v70 = v72 & 0xFFFFFF;
        v77 = 5;
        v76 = 4096;
        if (v70 <= 0x10FF)
        {
          v71 = v70;
        }

        else
        {
          v75 = 5;
          v74 = 4096;
          v71 = 4351;
        }

        v46 = v71;
      }

      v57 = v51;
      v56 = v48;
      v55 = 0;
      v59 = v48 >= 0;
      v58 = 583;
      if (v48 < 0)
      {
        _dispatch_abort(v58, v59);
      }

      if ((v56 & 0x40) == 0)
      {
        v78 = _dispatch_thread_getspecific(28);
        if (v78)
        {
          object = v78;
          os_retain(v78);
        }

        v55 = v78;
      }

      v57[3] = v55;
      v3 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v57[3], v57);
      v4 = v57[3];
      v82 = 771817476;
      v81 = v4;
      v80 = v57;
      if (v4 != -1)
      {
        v13 = v81 ? *(v81 + 32) : 0;
        v79 = v13;
        v87 = v82;
        v86 = v13;
        v85 = v80;
        v84 = 0;
        v83 = 0;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      v68 = v52;
      v67 = v51;
      v66 = v46;
      v65 = v48;
      v64 = 0;
      v63 = v52;
      if (v46)
      {
        v62 = (v65 & 0x20) != 0;
        v61 = (*(v63 + 21) & 0x40000000) != 0;
        v60 = (*(v63 + 21) & 0xFFF) != 0;
        if ((v65 & 0x20) != 0)
        {
          v66 |= 0x10000000uLL;
          v89 = v66 >> 8;
          v5 = v66 >> 8;
          v6 = __clz(__rbit32(v5));
          if (v5)
          {
            v7 = v6 + 1;
          }

          else
          {
            v7 = 0;
          }

          v64 = v7;
        }

        else if (v61 || !v60)
        {
          v90 = v66 >> 8;
          v8 = v66 >> 8;
          v9 = __clz(__rbit32(v8));
          if (v8)
          {
            v10 = v9 + 1;
          }

          else
          {
            v10 = 0;
          }

          v64 = v10;
        }

        else
        {
          v66 = 0;
        }
      }

      v67[1] = v66;
      inited = v64;
    }

    v26[6] = v29;
    v24 = queuea;
    v23 = v26;
    v101 = queuea;
    v100 = v26;
    v99 = 0;
    v98 = 0;
    v103 = queuea;
    v102 = v26;
    v22 = v26;
    v21 = v26;
    *(v30 + 40) = v26;
    v20 = v22;
    v19 = 0;
    v18 = 0;
    v97 = v35;
    v96 = 0;
    v95 = &v19;
    v94 = &v18;
    v93 = 0;
    if ((v35 & 0x8000000000000000) != 0)
    {
      if ((v97 & 0x4000000000000000) != 0)
      {
        *v95 = 2;
        v93 = -v97;
      }

      else
      {
        *v95 = 1;
        v93 = v97 & 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *v95 = 0;
      v93 = v97;
    }

    if (v93 >> 62)
    {
      v12 = -1;
    }

    else
    {
      v12 = v93;
    }

    *v94 = v12;
    if (v19 != 2)
    {
      v91 = v28;
      if (_dispatch_host_time_nano2mach)
      {
        v92 = _dispatch_host_time_nano2mach(v91);
      }

      else if (v91)
      {
        if (v91 < 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v91 >= 0x5555555555555555)
          {
            v92 = 3 * (v91 / 0x7D);
          }

          else
          {
            v11 = (3 * v91 * 0x624DD2F1A9FBE77uLL) >> 64;
            v92 = (v11 + ((3 * v91 - v11) >> 1)) >> 6;
          }
        }

        else
        {
          v92 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v92 = 0;
      }

      v28 = v92;
    }

    *(v30 + 30) |= _dispatch_timer_flags_from_clock(v19);
    *(v30 + 80) = v18;
    *(v30 + 96) = -1;
    *(v30 + 88) = v18 + v28;
    dispatch_activate(v29);
  }

  else
  {
    dispatch_channel_async(queuea, blocka);
  }
}

uint64_t _dispatch_source_handler_dispose(uint64_t a1)
{
  if ((*a1 & 0x10) != 0)
  {
    _Block_release(*(a1 + 40));
  }

  if (*(a1 + 24))
  {
    os_release(*(a1 + 24));
    *(a1 + 24) = -1;
  }

  result = _dispatch_thread_getspecific(22);
  if (result)
  {
    v2 = *(result + 8) + 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2 <= _dispatch_continuation_cache_limit)
  {
    *(a1 + 16) = result;
    *(a1 + 8) = v2;
    result = _dispatch_thread_setspecific(22, a1);
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (v4)
  {
    return _dispatch_continuation_free_to_cache_limit(v4);
  }

  return result;
}

uint64_t *_dispatch_source_set_handler_slow(unint64_t a1)
{
  result = _dispatch_thread_getspecific(20);
  v5 = result;
  v3 = 0;
  if (*result)
  {
    v3 = *result;
  }

  if (*(v3 + 16) != 275)
  {
    _dispatch_abort(323, *(v3 + 16) == 275);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  v7 = a1;
  if (*(a1 + 32))
  {
    if ((*a1 & 0x40) != 0)
    {
      *(a1 + 40) = result[4];
    }
  }

  else
  {
    result = _dispatch_thread_getspecific(22);
    if (result)
    {
      v2 = *(result + 2) + 1;
    }

    else
    {
      v2 = 1;
    }

    if (v2 <= _dispatch_continuation_cache_limit)
    {
      *(a1 + 16) = result;
      *(a1 + 8) = v2;
      result = _dispatch_thread_setspecific(22, a1);
      v9 = 0;
    }

    else
    {
      v9 = a1;
    }

    if (v9)
    {
      result = _dispatch_continuation_free_to_cache_limit(v9);
    }

    v7 = 0;
  }

  v8 = atomic_exchange_explicit((*(v5 + 88) + 40 + 8 * v4), v7, memory_order_release);
  if (v8)
  {
    return _dispatch_source_handler_dispose(v8);
  }

  return result;
}

void _dispatch_source_handle_wlh_change(uint64_t result)
{
  v1 = atomic_fetch_or_explicit((result + 80), 0x8000000u, memory_order_relaxed);
  if ((v1 & 0x400000) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after source was activated";
    __break(1u);
    JUMPOUT(0x63DB8);
  }

  if ((v1 & 0x8000000) == 0)
  {
    _dispatch_bug_deprecated("Changing target queue hierarchy after source was activated");
  }
}

void _dispatch_source_registration_callout(uint64_t a1, uint64_t a2, int a3)
{
  v4 = __swp(0, (*(a1 + 88) + 56));
  if ((*(a1 + 80) & 0x10800000) != 0)
  {
    v3 = 0;
    if ((a3 & 0x1000000) != 0)
    {
      v3 = _dispatch_autorelease_pool_push();
    }

    _dispatch_source_handler_dispose(v4);
    if (v3)
    {
      _dispatch_autorelease_pool_pop(v3);
    }
  }

  else
  {
    if ((*v4 & 0x40) != 0)
    {
      *(v4 + 40) = *(a1 + 32);
    }

    _dispatch_continuation_pop(v4, 0, a3, a2);
  }
}

void _dispatch_source_latch_and_call(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *(a1 + 88);
  v9 = *(v10 + 5);
  v8 = __swp(0, v10 + 18);
  v6 = 0;
  if (*v10)
  {
    v6 = *v10;
  }

  v5 = *(v6 + 9);
  if (v5 == 3)
  {
    *(v10 + 8) = ~v8;
  }

  else if (v5 == 5)
  {
    if (v8)
    {
      v15 = v8 >> 1;
      v16 = *(a1 + 88);
      if (*(v16 + 80) < 0x7FFFFFFFFFFFFFFFuLL)
      {
        v4 = *(v16 + 24) / 3u;
        if (v4)
        {
          v17 = v4 == 1 ? _dispatch_monotonic_time() : _dispatch_get_nanoseconds();
        }

        else
        {
          v17 = _dispatch_uptime();
        }

        if (v17 >= *(v16 + 80))
        {
          v19 = (v17 - *(v16 + 80)) / *(v16 + 96) + 1;
          if (v19 + v15 > 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL - v15;
          }

          if (*(v16 + 96) >= 0x7FFFFFFFFFFFFFFFuLL)
          {
            *(v16 + 80) = -1;
            *(v16 + 88) = -1;
          }

          else
          {
            v18 = v19 * *(v16 + 96);
            *(v16 + 80) += v18;
            *(v16 + 88) += v18;
          }

          v15 += v19;
        }
      }

      *(v10 + 8) = v15;
    }

    else
    {
      *(v10 + 8) = v8 >> 1;
    }
  }

  else
  {
    if (!v8 && *(v10 + 28) == -23)
    {
      return;
    }

    *(v10 + 8) = v8;
  }

  if (v9)
  {
    if (v8)
    {
      if (*(v10 + 28) == -14)
      {
        _dispatch_continuation_get_function_symbol(v9);
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      _dispatch_continuation_pop(v9, 0, a3, a2);
      if (*(v10 + 28) == -14 && MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      if ((*(v10 + 29) & 2) != 0)
      {
        if (v8)
        {
          v3 = 0;
          if ((*(v10 + 29) & 2) != 0)
          {
            v3 = *(v10 + 13) != 0;
          }

          if (v3)
          {
            _dispatch_timer_unote_configure(*(a1 + 88));
          }
        }

        if ((*(v10 + 30) & 0x40) != 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          v7 = 0;
          if ((a3 & 0x1000000) != 0)
          {
            v7 = _dispatch_autorelease_pool_push();
          }

          v14 = __swp(0, v10 + 10);
          if (v14)
          {
            _dispatch_source_handler_dispose(v14);
          }

          if (v7)
          {
            _dispatch_autorelease_pool_pop(v7);
          }

          dispatch_release(a1);
        }
      }
    }

    else
    {
      _dispatch_bug(591, v8 != 0);
    }
  }

  else if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }
}

uint64_t _dispatch_trace_timer_function(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    return *(v3 + 32);
  }

  else
  {
    return 0;
  }
}

unint64_t _dispatch_after_leeway(unint64_t a1)
{
  v1 = (_dispatch_thread_getspecific(4) & 0x3FFF00uLL) >> 8;
  v2 = __clz(__rbit32(v1));
  if (v1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3 <= 3)
  {
    return a1 / 0xA;
  }

  if (v3 != 5 && v3 != 4)
  {
    return a1 / 0x14;
  }

  return a1 / 0xF;
}

unint64_t _dispatch_wait_for_enqueuer(unint64_t *a1, uint64_t a2)
{
  v5 = 10;
  while (1)
  {
    v2 = v5--;
    if (v2 <= 0)
    {
      break;
    }

    v3 = __ldxr(a1);
    if (v3)
    {
      __clrex();
      return v3;
    }

    __wfe();
  }

  return __DISPATCH_WAIT_FOR_ENQUEUER__(a1, a2);
}

uint64_t __DISPATCH_WAIT_FOR_ENQUEUER__(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  while (!*a1)
  {
    ++v3;
    _pthread_yield_to_enqueuer_4dispatch();
  }

  return *a1;
}

void *dispatch_mach_hooks_install_4libxpc(void *result)
{
  if (*result <= 2uLL)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: trying to install hooks with unsupported version";
    qword_E42C0 = result;
    __break(1u);
    JUMPOUT(0x64D7CLL);
  }

  v1 = &_dispatch_mach_xpc_hooks_default;
  atomic_compare_exchange_strong_explicit(&_dispatch_mach_xpc_hooks, &v1, result, memory_order_relaxed, memory_order_relaxed);
  if (v1 != &_dispatch_mach_xpc_hooks_default)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_hooks_install_4libxpc called twice";
    qword_E42C0 = _dispatch_mach_xpc_hooks;
    __break(1u);
    JUMPOUT(0x64E58);
  }

  return result;
}

uint64_t dispatch_mach_create(const char *a1, uint64_t (***a2)(), const void *a3)
{
  v7 = _dispatch_Block_copy(a3);
  v8 = _Block_get_invoke_fn(v7);
  v9 = 0;
  if (v8)
  {
    v9 = v8;
  }

  v4 = 0;
  if (v9)
  {
    v4 = v9;
  }

  return _dispatch_mach_create(a1, a2, v7, v4, 1);
}

uint64_t _dispatch_mach_create(const char *a1, uint64_t (***a2)(), uint64_t a3, uint64_t a4, char a5)
{
  v24 = a1;
  v16 = 0x400000;
  if (a1)
  {
    v15 = _dispatch_strdup_if_mutable(a1);
    if (v15 != v24)
    {
      v16 = 6291456;
      v24 = v15;
    }
  }

  v14 = _dispatch_object_alloc(_OS_dispatch_mach_vtable, 0x88uLL);
  _dispatch_queue_init(v14, v16, 1u, 0x180000000000000);
  v17 = v5;
  *(v5 + 72) = v24;
  *(v5 + 116) = *(v5 + 116) & 0xFFEF | (8 * (a5 & 2));
  *(v5 + 116) = *(v5 + 116) & 0xFF7F | (32 * (a5 & 4));
  v19 = off_DD430(&_dispatch_mach_type_recv, 0, 0);
  if ((*(v19 + 29) & 1) == 0)
  {
    _dispatch_abort(140, 0);
  }

  *(v19 + 8) = ~v17;
  v13 = 0;
  if (a4)
  {
    v13 = a4;
  }

  *(v19 + 40) = v13;
  *(v19 + 48) = a3;
  *(v19 + 29) = *(v19 + 29) & 0xBF | ((a5 & 1) << 6);
  if ((*(v17 + 116) & 0x80) != 0)
  {
    *(v19 + 32) |= 0x200u;
  }

  *(v17 + 88) = v19;
  v18 = off_DD370(&_dispatch_mach_type_send, 0, 9);
  *(v18 + 8) = ~v17;
  *(v17 + 120) = v18;
  if (a2)
  {
    if ((*(a2 + 87) & 8) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x65284);
    }

    _dispatch_retain(a2);
  }

  else
  {
    a2 = &off_E0680;
  }

  *(v17 + 24) = a2;
  _dispatch_object_debug(v17, "%s", v6, v7, v8, v9, v10, v11, "_dispatch_mach_create");
  return v17;
}

void _dispatch_mach_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_mach_dispose");
  _dispatch_unote_dispose(a1[11], 0);
  a1[11] = 0;
  _dispatch_unote_dispose(a1[15], 0);
  a1[15] = 0;
  if (a1[16])
  {
    _dispatch_unote_dispose(a1[16], 0);
    a1[16] = 0;
  }

  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t dispatch_mach_request_no_senders(uint64_t result)
{
  *(result + 116) |= 0x20u;
  v1 = *(result + 56);
  if ((~v1 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x654ECLL);
  }

  return result;
}

uint64_t dispatch_mach_notify_no_senders(uint64_t result, char a2)
{
  *(result + 116) |= 0x20u;
  *(result + 116) = *(result + 116) & 0xFFBF | ((a2 & 1) << 6);
  v2 = *(result + 56);
  if ((~v2 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v2;
    __break(1u);
    JUMPOUT(0x655B4);
  }

  return result;
}

uint64_t dispatch_mach_set_flags(uint64_t result, char a2)
{
  *(result + 116) = *(result + 116) & 0xFF7F | ((a2 & 1) << 7);
  v2 = *(result + 56);
  if ((~v2 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v2;
    __break(1u);
    JUMPOUT(0x6566CLL);
  }

  return result;
}

void dispatch_mach_connect(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 120);
  if (a2 && a2 != -1)
  {
    *(*(a1 + 88) + 24) = a2;
  }

  *(v9 + 92) = a3;
  if (a3 && a3 != -1)
  {
    if (a4)
    {
      dispatch_retain(a4);
      *(a4 + 48) = _dispatch_mach_checkin_options();
      *(v9 + 96) = _dispatch_mach_msg_get_remote_port(a4);
    }

    *(v9 + 48) = a4;
  }

  if ((*(a1 + 116) & 0x20) != 0 && !*(v9 + 48))
  {
    _dispatch_mach_arm_no_senders(a1, 0);
  }

  v8 = atomic_fetch_and_explicit((v9 + 88), 0x7FFFFFFFu, memory_order_relaxed);
  if (!(HIBYTE(v8) >> 7))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Channel already connected";
    qword_E42C0 = v8;
    __break(1u);
    JUMPOUT(0x65814);
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "dispatch_mach_connect");
  dispatch_activate(a1);
}

void _dispatch_mach_arm_no_senders(uint64_t result, char a2)
{
  v7 = result;
  v6 = a2;
  v5 = *(*(result + 88) + 24);
  previous = 0;
  if (v5 && v5 != -1)
  {
    v2 = mach_port_request_notification(mach_task_self_, v5, 70, ((*(v7 + 116) >> 6) & 1) == 0, v5, 0x15u, &previous);
    if (v2 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x65990);
    }

    v11 = v2;
    v10 = 261;
    if (v2)
    {
      _dispatch_bug(v10, v11);
    }
  }

  if (previous)
  {
    if ((v6 & 1) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Mach port notification collision";
      qword_E42C0 = previous;
      __break(1u);
      JUMPOUT(0x65A24);
    }

    v3 = mach_port_deallocate(mach_task_self_, previous);
    if (v3 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x65A88);
    }

    v9 = v3;
    v8 = 269;
    if (v3)
    {
      _dispatch_bug(v8, v9);
    }
  }
}

void _dispatch_mach_merge_msg(uint64_t a1, int a2, mach_msg_header_t *a3, unsigned int a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v18 = a6;
  if ((a2 & 0x200) != 0)
  {
    v7 = *(a1 + 24);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
    qword_E42C0 = v7;
    __break(1u);
    JUMPOUT(0x65B50);
  }

  v8 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: received msg id 0x%x, reply on 0x%08x", 685, v8, a3->msgh_local_port, a3->msgh_id, a3->msgh_remote_port);
  v16 = ~*(a1 + 8);
  if ((HIBYTE(*(79 - *(a1 + 8))) >> 4))
  {
    v9 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: drop msg id 0x%x, reply on 0x%08x", 690, v9, a3->msgh_local_port, a3->msgh_id, a3->msgh_remote_port);
    mach_msg_destroy(a3);
    if ((a2 & 0x10000) != 0)
    {
      free(a3);
    }
  }

  else if (a3->msgh_id == 70 && (*(115 - *(a1 + 8)) & 0x20) != 0)
  {
    is_kernel = _dispatch_mach_msg_sender_is_kernel(a3);
    if (is_kernel)
    {
      v25 = _dispatch_thread_getspecific(22);
      if (v25)
      {
        _dispatch_thread_setspecific(22, *(v25 + 16));
        v24 = v25;
      }

      else
      {
        v24 = _dispatch_continuation_alloc_from_heap();
      }

      *v24 = 260;
      v24[4] = _dispatch_mach_no_senders_invoke;
      v24[5] = v16;
      v24[3] = 0;
      v10 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v10, v24[3], v24);
      if (v24[3] != -1 && MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      v24[1] = 0;
      v13 = 0;
      if (*v16)
      {
        v13 = *v16;
      }

      (*(v13 + 72))(v16, v24, 0);
    }

    else
    {
      _dispatch_bug(696, is_kernel);
    }

    mach_msg_destroy(a3);
    if ((a2 & 0x10000) != 0)
    {
      free(a3);
    }
  }

  else
  {
    recv = _dispatch_mach_msg_create_recv(a3, a4, a5, 0, a2, v18);
    _dispatch_mach_handle_or_push_received_msg(v16, recv, a7);
  }

  v12 = 1;
  if ((*(a1 + 16) & 2) == 0)
  {
    v12 = ((*(v16 + 60) << 32) & 0x180000000000000) == 0x80000000000000;
  }

  if (v12)
  {
    v11 = 0;
    if (*v16)
    {
      v11 = *v16;
    }

    (*(v11 + 64))(v16, 0, 51);
  }

  else
  {
    _dispatch_release_2_tailcall(v16);
  }
}

uint64_t _dispatch_mach_no_senders_invoke(uint64_t result)
{
  if ((*(result + 80) & 0x10000000) == 0)
  {
    v2 = *(result + 88);
    v1 = 0;
    if (*(v2 + 40))
    {
      v1 = *(v2 + 40);
    }

    return _dispatch_client_callout4(*(v2 + 48), 13, 0, 0, v1);
  }

  return result;
}

void *_dispatch_mach_msg_create_recv(_DWORD *a1, unsigned int a2, _DWORD *a3, uint64_t a4, int a5, int a6)
{
  if (a4)
  {
    v20 = (*a1 & 0x1F0000u) >> 16;
    v19 = a1[4];
    if ((v20 == 19 || v20 == 17) && v19)
    {
      v6 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] clear %s", 520, v6, v19, a1, "copy-send");
      if (v20 == 17)
      {
        _voucher_dealloc_mach_voucher(v19);
      }

      a1[4] = 0;
      *a1 &= 0xFFE0FFFF;
    }

    v13 = *(a4 + 40);
    v10 = *(a4 + 56);
    *(a4 + 56) = 0;
  }

  else
  {
    v10 = _voucher_create_with_mach_msgv(a1, a3);
    if ((a6 & 0xFFFFFFu) <= 0x10FFuLL)
    {
      v18 = a6 & 0xFFFFFF;
    }

    else
    {
      v18 = 4351;
    }

    v13 = v18;
  }

  v11 = dispatch_mach_msg_create(a1, a2, (a5 & 0x10000) != 0, 0);
  if ((a5 & 0x10000) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v11[8] = v10;
  v11[7] = v13;
  if (a4)
  {
    v9 = *(a4 + 48);
  }

  else
  {
    v9 = 0;
  }

  v11[4] = v9;
  _dispatch_mach_msg_set_reason(v11, 0, 2);
  v7 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] create", 655, v7, v10, v11);
  if (v11[8] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  return v11;
}

void _dispatch_mach_handle_or_push_received_msg(uint64_t a1, dispatch_object_s *a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  reason = _dispatch_mach_msg_get_reason(a2, &v7);
  if (reason != 2 && (*(v10 + 116) & 0x10) != 0 && ((*(&dword_8 + _dispatch_mach_xpc_hooks))(*(*(v10 + 88) + 48), reason, v9, v7) & 1) != 0)
  {
    *(v9 + 2) = -1985229329;
    dispatch_release(v9);
  }

  else
  {
    v14 = v10;
    v13 = v9;
    v12 = 0;
    v11 = 0;
    v18 = v10;
    v17 = v9;
    v15 = v8 & 0x3FFF00;
    v15 >>= 8;
    v3 = __clz(__rbit32(v15));
    if (v15)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    if (!v4)
    {
      v16 = *(v10 + 84);
      v16 &= 0xF00u;
      v5 = v16 >> 8;
    }

    _dispatch_lane_push(v10, v9, v5);
  }
}

void _dispatch_mach_reply_merge_msg(uint64_t *a1, int a2, mach_msg_header_t *a3, unsigned int a4, _DWORD *a5, int a6, uint64_t a7)
{
  v20 = ~a1[1];
  v19 = (*(79 - a1[1]) & 0x10000000) != 0;
  recv = 0;
  v7 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: received msg id 0x%x, reply on 0x%08x", 746, v7, a3->msgh_local_port, a3->msgh_id, a3->msgh_remote_port);
  if (!v19)
  {
    recv = _dispatch_mach_msg_create_recv(a3, a4, a5, a1, a2, a6);
  }

  if (recv)
  {
    v17 = 0;
    if ((*(v20 + 116) & 0x10) != 0 && *(recv + 4))
    {
      v28 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(*(recv + 4));
      if (!v28)
      {
        v28 = v20;
      }

      v17 = v28;
    }

    if (v17)
    {
      v29 = _dispatch_mach_msg_async_reply_wrap(recv, v20);
      v15 = 0;
      if (*v17)
      {
        v15 = *v17;
      }

      v11 = (*(recv + 7) & 0x3FFF00uLL) >> 8;
      v12 = __clz(__rbit32(v11));
      if (v11)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = 0;
      }

      (*(v15 + 72))(v17, v29, v13, v8, v9, v10);
    }

    else
    {
      _dispatch_mach_handle_or_push_received_msg(v20, recv, a7);
    }
  }

  else
  {
    v14 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: drop msg id 0x%x, reply on 0x%08x", 764, v14, a3->msgh_local_port, a3->msgh_id, a3->msgh_remote_port);
    mach_msg_destroy(a3);
    if ((a2 & 0x10000) != 0)
    {
      free(a3);
    }
  }

  v16 = 101;
  if (v19)
  {
    v16 = 117;
  }

  if ((a1[2] & 2) == 0)
  {
    _dispatch_abort(774, (a1[2] & 2) != 0);
  }

  _dispatch_mach_reply_unregister(v20, a1, v16);
}

void _dispatch_mach_reply_unregister(uint64_t *a1, uint64_t *a2, char a3)
{
  v19 = 0;
  if (*a2)
  {
    v19 = *a2;
  }

  v24 = a1[15];
  v23 = (a3 & 0x10) != 0;
  v22 = 0;
  v16 = _dispatch_thread_getspecific(0);
  v17 = *(a2 + 6);
  v3 = " sync";
  if (v19 != -2)
  {
    v3 = &unk_BBE5B;
  }

  v18 = v3;
  if (a3 < 0)
  {
    _dispatch_log("%u\t%p\tmachport[0x%08x]: unregistering for%s reply%s, ctxt %p", 364, v16, v17, v3, " (canceled)", a2[6]);
  }

  else
  {
    v4 = " (disconnected)";
    if (!v23)
    {
      v4 = &unk_BBE5B;
    }

    _dispatch_log("%u\t%p\tmachport[0x%08x]: unregistering for%s reply%s, ctxt %p", 364, v16, v17, v18, v4, a2[6]);
  }

  if ((a3 & 0x20) != 0)
  {
    v30 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v5 = 0;
    atomic_compare_exchange_strong_explicit((v24 + 40), &v5, v30, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      _dispatch_unfair_lock_lock_slow((v24 + 40), 0x10000);
    }

    _dispatch_mach_reply_list_remove_locked(a2);
    if (!*(v24 + 56) && *(v24 + 88))
    {
      v22 = 1;
    }

    v31 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v32 = atomic_exchange_explicit((v24 + 40), 0, memory_order_release);
    if (v32 != v31)
    {
      _dispatch_unfair_lock_unlock_slow(v24 + 40, v32);
    }
  }

  if (!a2[2] || (_dispatch_unote_unregister(a2, a3 & 0xF) & 1) != 0)
  {
    reply_disconnected = 0;
    v20 = 0;
    if (v23)
    {
      if ((*(a1 + 58) & 0x10) != 0 && a2[6])
      {
        v28 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(a2[6]);
        if (!v28)
        {
          v28 = a1;
        }

        v20 = v28;
      }

      if (v20)
      {
        v7 = 12;
      }

      else
      {
        v7 = 7;
      }

      reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(0, a2, v7);
      if (a2[7])
      {
        _dispatch_abort(396, a2[7] == 0);
      }
    }

    else if (a2[7])
    {
      os_release(a2[7]);
      a2[7] = 0;
    }

    if (v19 != -2)
    {
      _dispatch_unote_dispose(a2, 1);
    }

    if (reply_disconnected)
    {
      if (v20)
      {
        v29 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, a1);
        v15 = 0;
        if (*v20)
        {
          v15 = *v20;
        }

        v11 = (*(reply_disconnected + 7) & 0x3FFF00uLL) >> 8;
        v12 = __clz(__rbit32(v11));
        if (v11)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = 0;
        }

        (*(v15 + 72))(v20, v29, v13, v8, v9, v10);
      }

      else
      {
        _dispatch_mach_handle_or_push_received_msg(a1, reply_disconnected, 0);
      }
    }

    if ((a3 & 0x40) != 0)
    {
      if (v22)
      {
        v14 = 0;
        if (*a1)
        {
          v14 = *a1;
        }

        (*(v14 + 64))(a1, 0, 3);
      }

      else
      {
        _dispatch_release_2_tailcall(a1);
      }
    }
  }

  else
  {
    if (v19 == -2)
    {
      _dispatch_abort(377, 0);
    }

    if (a3 < 0)
    {
      v6 = *(v24 + 56);
      a2[8] = v6;
      if (v6)
      {
        *(*(v24 + 56) + 72) = a2 + 8;
      }

      *(v24 + 56) = a2;
      a2[9] = v24 + 56;
    }
  }
}

double _dispatch_mach_send_barrier_drain_invoke(void *a1, uint64_t a2, int a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v17 = _dispatch_thread_getspecific(20);
  v22 = v17;
  v23 = v17;
  v16 = v17;
  v18 = v17;
  v15 = 516;
  v14 = 0uLL;
  v24 = &v14;
  _dispatch_thread_getspecific_pair(20, &v14, 21, &v14.n128_u64[1]);
  v51 = v24->n128_u64[1];
  _dispatch_thread_setspecific_packed_pair(20, 21, v51);
  v13 = v21;
  v11 = v15;
  v28 = v21;
  v27 = v15;
  v26 = v21[3];
  v25 = v15 & 4;
  v30 = 1;
  v29 = 600;
  if ((v15 & 4) != 0)
  {
    v28[3] = -1;
  }

  if (v26 != -1)
  {
    v44 = 771817480;
    v43 = v26;
    v42 = v28;
    if (v26)
    {
      v10 = v43[8];
    }

    else
    {
      v10 = 0;
    }

    v41 = v10;
    v49 = v44;
    v48 = v10;
    v47 = v42;
    v46 = 0;
    v45 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", 607, v3, v26, v28);
  }

  v55 = v28[1];
  v54 = v26;
  v53 = v25 | 2;
  v52 = 0;
  if (v55 != -1)
  {
    v62 = v55;
    v61 = v53;
    v60 = _dispatch_thread_getspecific(25);
    v75 = v60;
    v78 = v60 & 0xF00;
    v74 = v78 >> 8;
    v73 = v60;
    if (v78 >> 8)
    {
      v73 |= 1 << (v74 + 7);
    }

    v59 = v73;
    v76 = v73;
    v58 = v73 & 0xFFFFFF00;
    v9 = 1;
    if ((v61 & 1) == 0)
    {
      v9 = (v62 & 0x10000000) != 0;
    }

    v57 = v9;
    v64 = v62;
    v62 &= 0xFFFFFFu;
    if (v62)
    {
      if (v62 >= v58)
      {
        if (v57 || (v60 & 0x44000000) != 0)
        {
          v63 = v62;
        }

        else
        {
          v63 = v59;
        }
      }

      else
      {
        v63 = v59;
      }
    }

    else
    {
      v77 = v60 & 0xF000;
      v56 = v77 >> 12;
      if (v77 >> 12)
      {
        v66 = v56;
        v65 = 1 << (v56 + 7);
        v8 = v65 | 0xFF;
      }

      else
      {
        v8 = v59;
      }

      v63 = v8;
    }

    v52 = v63;
  }

  v70 = v52;
  v69 = v54;
  v68 = v53;
  v82 = v52;
  v85 = v52 != -1;
  v84 = 2409;
  if (v52 == -1)
  {
    _dispatch_abort(v84, v85);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v96 = v82;
    v95 = 4261412863;
    v94 = 0;
    v82 &= 0xFFFFFFFF02FFFFFFLL;
    v86 = _dispatch_thread_getspecific(4);
    v81 = v86;
    v80 = 0x1000000;
    v79 = 2281701376;
    if ((v86 & 0x1000000) != 0)
    {
      if (v82)
      {
        v7 = v82;
      }

      else
      {
        v90 = v81;
        v89 = v80;
        v88 = 0;
        v7 = v81 & (~v80 | 0xFFFFFF);
      }

      v83 = v7;
    }

    else
    {
      v93 = v81;
      v92 = v79;
      v91 = 0;
      v81 &= ~v79 | 0xFFFFFF;
      if (v82 == v81)
      {
        v83 = 0;
      }

      else
      {
        v83 = v82;
      }
    }
  }

  else
  {
    v83 = 0;
  }

  v70 = v83;
  if (v83)
  {
    goto LABEL_52;
  }

  if (v69 == -1)
  {
    v71 = -1;
    goto LABEL_53;
  }

  v6 = v69;
  if (v6 != _dispatch_thread_getspecific(28))
  {
LABEL_52:
    v71 = _dispatch_set_priority_and_voucher_slow(v70, v69, v68);
  }

  else
  {
    v67 = (v68 & 4) != 0;
    if ((v68 & 2) != 0)
    {
      if (v67 && v69)
      {
        v87 = v69;
        os_release(v69);
      }

      v69 = -1;
    }

    else if (!v67 && v69)
    {
      object = v69;
      os_retain(v69);
    }

    v71 = v69;
  }

LABEL_53:
  if ((v11 & 0x200) == 0)
  {
    v34 = v18;
    v33 = v21;
    v32 = 0;
    v31 = 0;
    v98 = v18;
    v97 = v21;
  }

  if ((v11 & 4) != 0)
  {
    v37 = v13;
    v36 = _dispatch_thread_getspecific(22);
    if (v36)
    {
      v5 = *(v36 + 8) + 1;
    }

    else
    {
      v5 = 1;
    }

    v35 = v5;
    if (v5 <= _dispatch_continuation_cache_limit)
    {
      *(v37 + 16) = v36;
      *(v37 + 8) = v35;
      _dispatch_thread_setspecific(22, v37);
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    v12 = v38;
  }

  else
  {
    v12 = 0;
  }

  _dispatch_mach_send_invoke(v18, v19, 6u);
  if ((v11 & 0x200) == 0)
  {
    v39 = v13;
    v99 = v13;
    v104 = 772079660;
    v103 = v13;
    v102 = 0;
    v101 = 0;
    v100 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v105 = v39;
  }

  if (v12)
  {
    _dispatch_continuation_free_to_cache_limit(v12);
  }

  v40 = &v14;
  v50 = &v14;
  *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v14).n128_u64[0];
  return result;
}

uint64_t _dispatch_mach_send_invoke(uint64_t a1, int a2, unsigned int a3)
{
  v20 = *(a1 + 120);
  v19 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v16 = 0xFFFFFFFFLL;
  v15 = 0;
  if ((a3 & 2) != 0)
  {
    v16 = 0x10FFFFFFFFLL;
    v15 = 0x1000000000;
  }

  else if ((a3 & 4) == 0)
  {
    v16 = 0x10FFFFFFFFLL;
  }

  result = _dispatch_thread_getspecific(25);
  v24 = (result & 0xF000) >> 12;
  if ((result & 0xF00) >> 8 > v24)
  {
    v13 = (result & 0xF00) >> 8;
  }

  else
  {
    v13 = (result & 0xF000) >> 12;
  }

  if (v13 <= (result & 0xF0000) >> 16)
  {
    v11 = (result & 0xF0000) >> 16;
  }

  else
  {
    if ((result & 0xF00) >> 8 > v24)
    {
      v12 = (result & 0xF00) >> 8;
    }

    else
    {
      v12 = (result & 0xF000) >> 12;
    }

    v11 = v12;
  }

  v14 = v11;
LABEL_15:
  v18 = *(v20 + 64);
  do
  {
    if ((v18 & v16) == v15)
    {
      if (v14 < (v18 & 0x700000000uLL) >> 32)
      {
        v25 = (v18 & 0x700000000uLL) >> 32;
        _dispatch_thread_getspecific(3);
        if (_dispatch_set_qos_class_enabled)
        {
          _pthread_workqueue_override_start_direct();
        }

        result = _dispatch_thread_getspecific(25);
        if (v25 > (result & 0xF0000) >> 16)
        {
          result = _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | (v25 << 16));
        }

        v14 = (v18 & 0x700000000uLL) >> 32;
        goto LABEL_15;
      }

      v17 = (v18 | v19) & 0xFFFFFFC7FFFFFFFFLL;
    }

    else
    {
      if ((a3 & 1) == 0)
      {
        break;
      }

      v17 = v18 | 0x2000000000;
    }

    v9 = v18;
    v10 = v18;
    atomic_compare_exchange_strong_explicit((v20 + 64), &v10, v17, memory_order_acquire, memory_order_acquire);
    if (v10 != v9)
    {
      v18 = v10;
    }
  }

  while (v10 != v9);
  if ((v18 & v16) == v15)
  {
    return _dispatch_mach_send_drain(a1, a2, a3, v4, v5, v6, v7, v8);
  }

  return result;
}

void _dispatch_mach_notification_merge_evt(uint64_t a1, uint64_t a2, int a3)
{
  v3 = ~*(a1 + 8);
  if ((a3 & *(a1 + 32)) != 0)
  {
    _dispatch_mach_send_invoke(v3, 0x40000, 1u);
  }

  _dispatch_release_2_tailcall(v3);
}

uint64_t dispatch_mach_send(uint64_t a1, unint64_t a2, int a3)
{
  if (a3)
  {
    _dispatch_abort(1915, a3);
  }

  result = _dispatch_mach_send_msg(a1, a2, 0, a3 & 0xFFFF0000);
  if (((result ^ 1) & 1) == 0)
  {
    _dispatch_abort(1918, (result ^ 1) & 1);
  }

  return result;
}

uint64_t _dispatch_mach_send_msg(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v16 = *(a1 + 120);
  if (*(a2 + 16) != -1985229329)
  {
    v4 = *(a2 + 16);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Message already enqueued";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x69408);
  }

  if ((*(a1 + 116) & 0x10) != 0 && (a4 & 4) == 0 && _dispatch_mach_msg_get_reply_port(a2))
  {
    v26 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(*(a2 + 32));
    if (!v26)
    {
      v26 = a1;
    }

    if (!v26)
    {
      _dispatch_abort(1839, 0);
    }
  }

  if ((a4 & 0x40000) != 0)
  {
    *(a2 + 56) = 0;
  }

  else
  {
    v23 = 1;
    if ((a4 & 4) != 0)
    {
      v23 = 3;
    }

    v27 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if ((v23 & 2) != 0 || v27 <= 0x10FF)
    {
      v28 = v27;
    }

    else
    {
      v28 = 4351;
    }

    *(a2 + 56) = v28;
  }

  v29 = _dispatch_thread_getspecific(28);
  if (v29)
  {
    os_retain(v29);
  }

  *(a2 + 64) = v29;
  v5 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] set", 1856, v5, *(a2 + 64), a2);
  v24 = a4 | _dispatch_mach_send_options();
  *(a2 + 48) = v24;
  dispatch_retain(a2);
  v21 = (*(a2 + 56) & 0x3FFF00uLL) >> 8;
  v6 = __clz(__rbit32(v21));
  if (v21)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;
  msg = _dispatch_mach_msg_get_msg(a2);
  *(a2 + 52) = _dispatch_mach_msg_get_reply_port(a2);
  v11 = 0;
  if (v24)
  {
    v11 = 8;
  }

  if ((*msg & 0x1F) != 0x12 || *(a2 + 52) || *(v16 + 88) || (*(a1 + 80) & 0x10000000) != 0)
  {
    v22 = *(a2 + 64);
    if (v22 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v10 = a2;
    if (a3)
    {
      v10 = a3;
    }

    v12 = _dispatch_mach_send_push_and_trydrain(a1, v10, v15, v11);
  }

  else
  {
    if (a3)
    {
      _dispatch_abort(1888, a3 == 0);
    }

    v13 = _dispatch_mach_msg_send(a1, a2, 0, 0, v11);
    if (!v13)
    {
      _dispatch_abort(1890, v13);
    }

    v12 = (v13 & 2) != 0;
  }

  if (v12)
  {
    v8 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] clear", 1901, v8, *(a2 + 64), a2);
    if (*(a2 + 64))
    {
      os_release(*(a2 + 64));
    }

    *(a2 + 64) = 0;
    *(a2 + 16) = -1985229329;
    dispatch_release(a2);
  }

  return v12 & 1;
}

uint64_t dispatch_mach_send_with_result(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  if (a4)
  {
    v10 = v13;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_E42C0 = v13;
    __break(1u);
    JUMPOUT(0x69A84);
  }

  v18 = v14;
  v17 = 1930;
  if (v14)
  {
    _dispatch_abort(v17, v18);
  }

  v14 = (HIWORD(v14) << 16) | 1;
  result = _dispatch_mach_send_msg(v16, v15, 0, v14);
  v9 = result;
  v8 = 10;
  v7 = 0;
  if (result)
  {
    result = _dispatch_mach_msg_get_reason(v15, &v7);
    v8 = result;
  }

  *v12 = v8;
  *v11 = v7;
  return result;
}

uint64_t _dispatch_mach_msg_get_reason(uint64_t a1, int *a2)
{
  v4 = *(a1 + 48);
  if ((v4 & 0xFC000000) == 0xF8000000 && ((v4 >> 14) & 0xFFF) == 0x3E0)
  {
    *a2 = 0;
    return v4 & 0x3FFF;
  }

  else
  {
    *a2 = v4;
    v2 = 4;
    if (!v4)
    {
      return 3;
    }

    return v2;
  }
}

uint64_t dispatch_mach_send_and_wait_for_reply(uint64_t a1, uint64_t a2, int a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v12 = a3;
  v11 = 2003;
  if (a3)
  {
    _dispatch_abort(v11, v12);
  }

  v6 &= 0xFFFF0000;
  v4 = _dispatch_mach_send_and_wait_for_reply(v8, v7, v6, &v5);
  v10 = (v5 ^ 1) & 1;
  v9 = 2007;
  if (((v5 ^ 1) & 1) == 0)
  {
    _dispatch_abort(v9, v10);
  }

  return v4;
}

uint64_t _dispatch_mach_send_and_wait_for_reply(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v46 = a1;
  v45 = a2;
  v44 = a3;
  v43 = a4;
  v31 = 0u;
  v42 = 0;
  v41 = 0u;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v32 = v39;
  *&v39[0] = -2;
  *&v40 = *(a2 + 32);
  LODWORD(v42) = _dispatch_thread_getspecific(3);
  v38 = v39;
  v37 = 0;
  v35 = v45;
  reply_port = _dispatch_mach_msg_get_reply_port(v45);
  if (!reply_port)
  {
    reply_port = _dispatch_get_thread_reply_port();
    msg = _dispatch_mach_msg_get_msg(v45);
    v4 = ((*msg >> 8) & 0x1F) == 21;
    v48 = ((*msg >> 8) & 0x1F) == 21;
    v47 = 1965;
    if (!v4)
    {
      _dispatch_abort(v47, v48);
    }

    msg[3] = reply_port;
    v38[30] = 1;
  }

  v44 |= 4u;
  v30 = 1;
  v38 = _dispatch_calloc_typed(1, 88, 0x10E204074BB8FCFLL);
  __copy_assignment_8_8_S_pa2_27361_0_tv64w64_tv128w64_tv192w32_tv224w8_tv232w1_tv233w1_tv234w1_tv235w1_tv236w1_tv237w1_tv238w1_tv239w1_tv240w8_tv248w8_tv256w32_tv288w32_tv320w32_tv384w64_tv448w64_tv512w128_tv640w32(v38, v39);
  v33[0] = 1;
  v33[1] = -1;
  v33[2] = 0;
  v33[3] = -1;
  v33[4] = 0;
  v33[5] = 0;
  v33[6] = v45;
  v33[7] = v38;
  v5 = _dispatch_mach_send_msg(v46, v45, v33, v44);
  *v43 = v5;
  if (v38[30])
  {
    _dispatch_clear_thread_reply_port(reply_port);
    v37 = *(*(v46 + 120) + 92);
  }

  v28 = v14;
  v67 = v46;
  v66 = v38;
  v65 = reply_port;
  v64 = v37;
  v29 = 0;
  if (reply_port)
  {
    v29 = v65 != -1;
  }

  if (!v29)
  {
    v63 = v65;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid reply port";
    qword_E42C0 = v65;
    __break(1u);
    JUMPOUT(0x69F38);
  }

  v62 = v66[6];
  v61 = 0;
  v60 = 0;
  *&v59[8] = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v27 = &vm_page_mask;
  *v59 = (vm_page_mask + 0x4000) & ~vm_page_mask;
  v26 = &v14[-((*v59 + 15) & 0x1FFFFFFF0)];
  bzero(v26, *v59);
  v61 = v26;
  v73 = v26;
  v72 = *v59;
  for (i = ((v26 + vm_page_size) & ~*v27); i < v73 + v72; i += vm_page_size)
  {
    *i = 0;
  }

  v56 = 117440526;
  if (v64 && v64 != -1)
  {
    v55 = v64;
    v56 |= 0x4000u;
  }

  if ((*(v67 + 116) & 0x80) != 0)
  {
    v56 |= 0x200u;
  }

  while (1)
  {
    v20 = 0;
    v6 = _dispatch_thread_getspecific(0);
    v7 = (v56 & 0x100) != 0 ? "poll" : "wait";
    _dispatch_log("%u\t%p\tmachport[0x%08x]: MACH_RCV_MSG %s", 824, v6, v65, v7);
    v57 = mach_msg(v61, v56, 0, *v59, v65, 0, v55);
    *&v59[4] = v61;
    v24 = _dispatch_thread_getspecific(v20);
    v23 = v65;
    v22 = *v59;
    v21 = v56;
    v8 = mach_error_string(v57);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: MACH_RCV_MSG (size %u, opts 0x%x) returned: %s - 0x%x", 831, v24, v23, v22, v21, v8, v57);
    v25 = v57;
    if (!v57)
    {
      break;
    }

    if (v25 == 268451842)
    {
      goto LABEL_37;
    }

    if (v25 != 268451844)
    {
      if (v25 != 268451846 && v25 != 268451849)
      {
        v50 = v57;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from mach_msg_receive";
        qword_E42C0 = v57;
        __break(1u);
        JUMPOUT(0x6A50CLL);
      }

LABEL_37:
      v19 = _dispatch_thread_getspecific(0);
      v17 = v62;
      v18 = v65;
      v9 = mach_error_string(v57);
      _dispatch_log("%u\t%p\tmachport[0x%08x]: sync reply port destroyed, ctxt %p: %s - 0x%x", 858, v19, v18, v17, v9, v57);
      if (*(v66 + 30))
      {
        _dispatch_destruct_reply_port(v65, 2u);
      }

LABEL_55:
      free(v60);
      v68 = 0;
      goto LABEL_56;
    }

    if (v61->msgh_size >= 0xFFFFFFBC)
    {
      msgh_size = v61->msgh_size;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message";
      qword_E42C0 = msgh_size;
      __break(1u);
      JUMPOUT(0x6A280);
    }

    if ((v56 & 4) == 0)
    {
      _dispatch_log("BUG in libdispatch client: dispatch_mach_send_and_wait_for_reply: dropped message too large to fit in memory: id = 0x%x, size = %u", v61->msgh_id, v61->msgh_size);
      goto LABEL_44;
    }

    v58 = v61->msgh_size + 68;
    v60 = malloc_type_malloc();
    v53 = v60;
    v70 = v60;
    v69 = 840;
    if (!v60)
    {
      _dispatch_bug(v69, 0);
    }

    v52 = v53;
    if (v53)
    {
      v61 = v60;
      *v59 = v58;
    }

    v56 |= 0x100u;
    v56 &= ~4u;
  }

  v10 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: received msg id 0x%x, size = %u, reply on 0x%08x", 870, v10, v61->msgh_local_port, v61->msgh_id, v61->msgh_size, v61->msgh_remote_port);
  *v59 = v61->msgh_size + 68;
  if (v60)
  {
    if (*v59 < v58)
    {
      v51 = malloc_type_realloc();
      if (v51)
      {
        v60 = v51;
        v61 = v51;
      }
    }
  }

LABEL_44:
  _dispatch_mach_msg_reply_received(v67, v66, v61->msgh_local_port);
  v61->msgh_local_port = 0;
  v11 = *(v67 + 80);
  v16 = 1;
  if ((v11 & 0x10000000) == 0)
  {
    v16 = v57 != 0;
  }

  if (v16)
  {
    if (!v57)
    {
      mach_msg_destroy(v61);
    }

    goto LABEL_55;
  }

  *&v49[8] = 0;
  *v49 = v60 != 0;
  *&v49[4] = dispatch_mach_msg_create(v61, *v59, *v49, 0);
  if (!v60 || v61 != *&v59[4])
  {
    v15 = *&v59[4];
    v12 = _dispatch_mach_msg_get_msg(*&v49[4]);
    v78 = 771948548;
    v77 = v15;
    v76 = v12;
    v75 = 0;
    v74 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  *(*&v49[4] + 32) = v62;
  v68 = *&v49[4];
LABEL_56:
  v45 = v68;
  free(v38);
  return v45;
}

uint64_t dispatch_mach_send_with_result_and_wait_for_reply(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  if (a4)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_E42C0 = v13;
    __break(1u);
    JUMPOUT(0x6A738);
  }

  v10 = 0;
  v9 = 0;
  v18 = v14;
  v17 = 2023;
  if (v14)
  {
    _dispatch_abort(v17, v18);
  }

  v14 = HIWORD(v14) << 16;
  v14 |= 1u;
  v9 = _dispatch_mach_send_and_wait_for_reply(v16, v15, v14, &v10);
  reason = 10;
  v7 = 0;
  if (v10)
  {
    reason = _dispatch_mach_msg_get_reason(v15, &v7);
  }

  *v12 = reason;
  *v11 = v7;
  return v9;
}

uint64_t dispatch_mach_send_with_result_and_async_reply_4libxpc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  if (a4)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_E42C0 = v14;
    __break(1u);
    JUMPOUT(0x6A868);
  }

  if ((*(v17 + 116) & 0x10) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_send_with_result_and_wait_for_reply is XPC only";
    __break(1u);
    JUMPOUT(0x6A8A4);
  }

  v19 = v15;
  v18 = 2053;
  if (v15)
  {
    _dispatch_abort(v18, v19);
  }

  v15 = (HIWORD(v15) << 16) | 1;
  v10 = v16;
  if (!_dispatch_mach_msg_get_reply_port(v16))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Reply port needed for async send with reply";
    __break(1u);
    JUMPOUT(0x6A930);
  }

  result = _dispatch_mach_send_msg(v17, v16, 0, v15);
  v9 = result;
  v8 = 10;
  v7 = 0;
  if (result)
  {
    result = _dispatch_mach_msg_get_reason(v16, &v7);
    v8 = result;
  }

  *v13 = v8;
  *v12 = v7;
  return result;
}

uint64_t _dispatch_mach_msg_get_reply_port(uint64_t a1)
{
  msg = _dispatch_mach_msg_get_msg(a1);
  v2 = msg[3];
  if (v2 && v2 != -1 && (*msg & 0x1F00u) >> 8 == 21)
  {
    return msg[3];
  }

  else
  {
    return 0;
  }
}

void dispatch_mach_reconnect(uint64_t *a1, unsigned int a2, dispatch_object_s *a3)
{
  v5 = a3;
  v4 = a1[15];
  atomic_fetch_add_explicit((v4 + 88), 1u, memory_order_relaxed);
  if (a2 && a2 != -1 && a3)
  {
    dispatch_retain(a3);
    *(v5 + 12) = _dispatch_mach_checkin_options();
    *(v4 + 96) = _dispatch_mach_msg_get_remote_port(v5);
  }

  else
  {
    if (a3 != -1)
    {
      v5 = 0;
    }

    *(v4 + 96) = 0;
  }

  v9 = _dispatch_thread_getspecific(22);
  if (v9)
  {
    _dispatch_thread_setspecific(22, *(v9 + 16));
    v8 = v9;
  }

  else
  {
    v8 = _dispatch_continuation_alloc_from_heap();
  }

  *v8 = 260;
  v3 = 0;
  if (_dispatch_mach_reconnect_invoke)
  {
    v3 = _dispatch_mach_reconnect_invoke;
  }

  *(v8 + 32) = v3;
  *(v8 + 40) = v8;
  *(v8 + 48) = v5;
  *(v8 + 56) = a2;
  *(v8 + 24) = -1;
  *(v8 + 8) = -1;
  _dispatch_mach_send_push(a1, v8, 0);
}

BOOL _dispatch_mach_reconnect_invoke(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a2;
  v25 = a1;
  v24 = a1;
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_mach_reconnect_invoke");
  v23 = v25[15];
  v22 = v23;
  v34 = v23;
  v32 = *(v23 + 16);
  v33 = v32;
  v31 = v32;
  v35 = v32;
  if (v32)
  {
    v66 = v25;
    v65 = 5;
    dispatch_assert_queue_V2(&_dispatch_mgr_q);
    v64 = v25[15];
    _dispatch_unote_unregister(v64, 5);
    *(v25[15] + 24) = 0;
  }

  if (*(v23 + 92) && *(v23 + 92) != -1)
  {
    _dispatch_mach_msg_disconnected(v25, 0, *(v23 + 92));
    *(v23 + 92) = 0;
  }

  if (*(v23 + 48))
  {
    v21 = *(v23 + 48);
    _dispatch_mach_msg_not_sent(v25, v21, 0);
    *(v23 + 48) = 0;
  }

  *(v25 + 59) &= ~1u;
  i = 0;
  v19 = 0;
  v18 = 0;
  v16 = -112;
  v30 = v25;
  v28 = *(v25 + 20);
  v29 = v28;
  v27 = v28;
  if ((v28 & 0x40000000) == 0)
  {
    v16 = -110;
  }

  v49 = (v23 + 40);
  v51 = _dispatch_thread_getspecific(3);
  v48 = v51 & 0xFFFFFFFC;
  v47 = 0;
  v46 = 0;
  v44 = v51 & 0xFFFFFFFC;
  v43 = v51 & 0xFFFFFFFC;
  v45 = v51 & 0xFFFFFFFC;
  v8 = 0;
  atomic_compare_exchange_strong_explicit((v23 + 40), &v8, v51 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v47 = v8;
  }

  v42 = v8 == 0;
  v46 = v8 == 0;
  v41 = v46;
  if (v8)
  {
    _dispatch_unfair_lock_lock_slow(v49, 0x10000);
  }

  v14 = v18;
  v18 = *(v23 + 56);
  *(v23 + 56) = v14;
  if (v18)
  {
    v18[9] = &v18;
  }

  v15 = *(v23 + 56);
  if (v15)
  {
    *(v15 + 72) = v23 + 56;
  }

  for (i = v18; ; i = v19)
  {
    v11 = 0;
    if (i)
    {
      v19 = i[8];
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      break;
    }

    i[9] = 0;
    _dispatch_mach_reply_unregister(v25, i, v16);
  }

  v17 = *(v23 + 56) == 0;
  v50 = v23 + 40;
  v60 = (v23 + 40);
  v59 = 0;
  v62 = _dispatch_thread_getspecific(3);
  v58 = v62 & 0xFFFFFFFC;
  v55 = 0;
  v54 = 0;
  v56 = 0;
  v53 = atomic_exchange_explicit(v60, 0, memory_order_release);
  v57 = v53;
  v52 = v53;
  v59 = v53;
  if (v53 == v58)
  {
    v61 = 0;
  }

  else
  {
    _dispatch_unfair_lock_unlock_slow(v60, v59);
    v63 = v59;
    v61 = (v59 & 2) != 0;
  }

  if (v17)
  {
    v13 = v26[7];
    v12 = v26[6];
    v36 = v26;
    v39 = v26;
    v38 = _dispatch_thread_getspecific(22);
    if (v38)
    {
      v10 = *(v38 + 8) + 1;
    }

    else
    {
      v10 = 1;
    }

    v37 = v10;
    if (v10 <= _dispatch_continuation_cache_limit)
    {
      v39[2] = v38;
      *(v39 + 2) = v37;
      _dispatch_thread_setspecific(22, v39);
      v40 = 0;
    }

    else
    {
      v40 = v39;
    }

    v36 = v40;
    if (v40)
    {
      _dispatch_continuation_free_to_cache_limit(v36);
    }

    if (v12 == -1)
    {
      *(v25 + 59) = *(v25 + 59) & 0xFFFD | 2;
      v12 = 0;
    }

    if ((*(v25 + 59) & 2) != 0)
    {
      if (v13 && v13 != -1)
      {
        _dispatch_mach_msg_disconnected(v25, 0, v13);
      }

      if (v12)
      {
        _dispatch_mach_msg_not_sent(v25, v12, 0);
      }
    }

    else
    {
      *(v23 + 92) = v13;
      *(v23 + 48) = v12;
    }

    atomic_fetch_add_explicit((v23 + 88), 0xFFFFFFFF, memory_order_relaxed);
  }

  return v17;
}

void _dispatch_mach_send_push(uint64_t *a1, void **a2, unsigned int a3)
{
  v17 = a1[15];
  v14 = 0;
  LODWORD(v12) = 0;
  v11 = 0;
  if (*a2 > 0xFFF)
  {
    v10 = 0;
    if (*a2)
    {
      v10 = *a2;
    }

    v11 = v10 == &unk_DCD08;
  }

  a2[2] = 0;
  _dispatch_thread_setspecific(122, v17 + 72);
  v13 = atomic_exchange_explicit((v17 + 72), a2, memory_order_release);
  if (v13)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  _dispatch_retain_n_unsafe(a1, v3);
  if (v13)
  {
    *(v13 + 16) = a2;
  }

  else
  {
    *(v17 + 80) = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  if (v13)
  {
    v16 = *(v17 + 64);
    do
    {
      v22 = v16;
      if ((v16 & 0x700000000) < a3 << 32)
      {
        v22 = v16 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v15 = v22;
      if (v16 == v22)
      {
        break;
      }

      v6 = v16;
      v7 = v16;
      atomic_compare_exchange_strong_explicit((v17 + 64), &v7, v22, memory_order_relaxed, memory_order_relaxed);
      if (v7 != v6)
      {
        v16 = v7;
      }
    }

    while (v7 != v6);
  }

  else
  {
    v14 = 0xA000000000;
    v12 = 2;
    if (v11)
    {
      v14 = 0xB000000000;
    }

    v16 = *(v17 + 64);
    do
    {
      v23 = v16;
      if ((v16 & 0x700000000) < a3 << 32)
      {
        v23 = v16 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v15 = v23 | v14;
      v4 = v16;
      v5 = v16;
      atomic_compare_exchange_strong_explicit((v17 + 64), &v5, v23 | v14, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v16 = v5;
      }
    }

    while (v5 != v4);
    if (((v16 ^ v15) & 0x8000000000) == 0)
    {
      _dispatch_release_2_no_dispose(a1);
    }
  }

  v19 = (v15 & 0x700000000) >> 32;
  if ((v16 & 0xFFFFFFFC) != 0)
  {
    v24 = v16 | 3;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    if (v16 & 0x700000000) < v19 << 32 && (_dispatch_set_qos_class_enabled)
    {
      _pthread_workqueue_override_start_direct_check_owner();
    }

    goto LABEL_49;
  }

  if ((v14 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(a1, v19);
LABEL_49:
    _dispatch_release_2_tailcall(a1);
    return;
  }

  if (v12 || *(v17 + 88) || (a1[10] & 0x10000000) != 0)
  {
    v9 = 0;
    if (*a1)
    {
      v9 = *a1;
    }

    (*(v9 + 64))(a1, v19, v12 | 1);
  }

  else
  {
    if ((v16 & 0x1000000000) == 0)
    {
      goto LABEL_49;
    }

    v8 = 0;
    if (*a1)
    {
      v8 = *a1;
    }

    (*(v8 + 64))(a1, v19, 1);
  }
}

uint64_t dispatch_mach_get_checkin_port(uint64_t a1)
{
  if ((*(a1 + 80) & 0x10000000) != 0)
  {
    return -1;
  }

  else
  {
    return *(*(a1 + 120) + 96);
  }
}

BOOL dispatch_mach_can_handoff_4libxpc()
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "mach_msg")
    {
      v3 = i;
      goto LABEL_7;
    }
  }

  v3 = 0;
LABEL_7:
  v1 = 0;
  if (v3)
  {
    v1 = 0;
    if (v3[2])
    {
      return *(v3[2] + 56) == 0;
    }
  }

  return v1;
}

void dispatch_mach_handoff_reply_f(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v9 = _dispatch_mach_handoff_context(a2);
  v8 = v9[2];
  _dispatch_mach_handoff_set_wlh(v8, a1);
  _dispatch_retain(a1);
  v9[3] = a1;
  *v8 = 260;
  v8[4] = a4;
  v8[5] = a3;
  v15 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v15 <= 0x10FF)
  {
    v16 = v15;
  }

  else
  {
    v16 = 4351;
  }

  v17 = _dispatch_thread_getspecific(28);
  if (v17)
  {
    os_retain(v17);
  }

  v8[3] = v17;
  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v4, v8[3], v8);
  if (v8[3] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v14 = v16;
  v13 = 0;
  if (v16)
  {
    if ((*(a1 + 84) & 0x40000000) != 0 || (*(a1 + 84) & 0xFFF) == 0)
    {
      v5 = v16 >> 8;
      v6 = __clz(__rbit32(v5));
      if (v5)
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = 0;
      }

      v13 = v7;
    }

    else
    {
      v14 = 0;
    }
  }

  v8[1] = v14;
  *(v9 + 8) = v13;
  *v8 = &unk_DCE58;
}

void *_dispatch_mach_handoff_context(unsigned int a1)
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "mach_msg")
    {
      v6 = i;
      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_7:
  if (!v6 || !v6[2])
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Trying to handoff IPC from non IPC context";
    __break(1u);
    JUMPOUT(0x6C338);
  }

  v2 = 0;
  if (*v6[2])
  {
    v2 = *v6[2];
  }

  if (*(v2 + 16) == 515)
  {
    v6[2] = _dispatch_calloc_typed(1, 80, 0x10E204016CB3A18);
    v3 = v6[2];
    *(v3 + 72) = 1;
  }

  else
  {
    v3 = v6[2];
    atomic_fetch_add_explicit((v3 + 72), 1u, memory_order_relaxed);
  }

  if (*(v3 + 56))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Calling dispatch_mach_handoff_reply multiple times from the same context";
    __break(1u);
    JUMPOUT(0x6C308);
  }

  *(v3 + 56) = a1;
  return v6;
}

uint64_t _dispatch_mach_handoff_set_wlh(uint64_t result, uint64_t a2)
{
  v4 = result;
  while (*(a2 + 24))
  {
    if ((*(a2 + 80) & 0x400000) != 0)
    {
      v5 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
      v2 = 0;
      atomic_compare_exchange_strong_explicit((a2 + 100), &v2, v5, memory_order_acquire, memory_order_acquire);
      if (v2)
      {
        _dispatch_unfair_lock_lock_slow((a2 + 100), 0x10000);
      }

      atomic_fetch_and_explicit((a2 + 80), 0xFFBFFFFF, memory_order_relaxed);
      result = _dispatch_thread_getspecific(3);
      v6 = atomic_exchange_explicit((a2 + 100), 0, memory_order_release);
      if (v6 == (result & 0xFFFFFFFC))
      {
        v7 = 0;
      }

      else
      {
        result = _dispatch_unfair_lock_unlock_slow(a2 + 100, v6);
        v7 = (v6 & 2) != 0;
      }

      if (v7)
      {
        result = _dispatch_thread_getspecific(25);
        if (!((result & 0xF0000) >> 16))
        {
          result = _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | 0x10000);
        }
      }
    }

    if ((*(a2 + 56) & 0x2000000000) != 0)
    {
      *(v4 + 64) = a2;
      return result;
    }

    a2 = *(a2 + 24);
  }

  *(v4 + 64) = 0;
  return result;
}

void dispatch_mach_handoff_reply(unint64_t a1, unsigned int a2, const void *a3)
{
  v10 = _dispatch_mach_handoff_context(a2);
  v9 = v10[2];
  _dispatch_mach_handoff_set_wlh(v9, a1);
  _dispatch_retain(a1);
  v10[3] = a1;
  v13 = _dispatch_Block_copy(a3);
  v7 = _Block_get_invoke_fn(a3);
  v8 = 0;
  if (v7)
  {
    v8 = v7;
  }

  if (v8 == _dispatch_block_special_invoke)
  {
    *v9 = 276;
    v9[5] = v13;
    inited = _dispatch_continuation_init_slow(v9, a1, 0);
  }

  else
  {
    _Block_get_invoke_fn(a3);
    *v9 = 276;
    v9[4] = _dispatch_call_block_and_release;
    v9[5] = v13;
    v17 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v17 <= 0x10FF)
    {
      v18 = v17;
    }

    else
    {
      v18 = 4351;
    }

    v19 = _dispatch_thread_getspecific(28);
    if (v19)
    {
      os_retain(v19);
    }

    v9[3] = v19;
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v9[3], v9);
    if (v9[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v16 = v18;
    v15 = 0;
    if (v18)
    {
      if ((*(a1 + 84) & 0x40000000) != 0 || (*(a1 + 84) & 0xFFF) == 0)
      {
        v4 = v18 >> 8;
        v5 = __clz(__rbit32(v4));
        if (v4)
        {
          v6 = v5 + 1;
        }

        else
        {
          v6 = 0;
        }

        v15 = v6;
      }

      else
      {
        v16 = 0;
      }
    }

    v9[1] = v16;
    inited = v15;
  }

  *(v10 + 8) = inited;
  v9[6] = *v9;
  *v9 = &unk_DCE58;
}

void _dispatch_mach_ipc_handoff_invoke(void *a1, uint64_t a2, int a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a1;
  memset(__b, 0, sizeof(__b));
  __b[0] = 0;
  __b[1] = "mach_msg";
  __b[2] = v21;
  __b[3] = 0;
  LODWORD(__b[4]) = 0;
  v19 = _dispatch_thread_getspecific(20);
  v18 = v24[6];
  v17 = v24[7];
  v16 = __swp(0, v21 + 16);
  if (v16)
  {
    if (v16)
    {
      v16 = ~v16;
    }

    else
    {
      _dispatch_sync_ipc_handoff_begin(v16, v17, (v21 + 16));
    }
  }

  v24[2] = -1985229329;
  v24[7] = 0;
  v36 = __b;
  __b[0] = _dispatch_thread_getspecific(23);
  _dispatch_thread_setspecific(23, v36);
  v15 = v24;
  v28 = v24;
  v27 = v18;
  v26 = v24[3];
  v25 = v18 & 4;
  v30 = 1;
  v29 = 600;
  if ((v18 & 4) != 0)
  {
    v28[3] = -1;
  }

  if (v26 != -1)
  {
    v50 = 771817480;
    v49 = v26;
    v48 = v28;
    if (v26)
    {
      v13 = v49[8];
    }

    else
    {
      v13 = 0;
    }

    v47 = v13;
    v55 = v50;
    v54 = v13;
    v53 = v48;
    v52 = 0;
    v51 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", 607, v3, v26, v28);
  }

  v59 = v28[1];
  v58 = v26;
  v57 = v25 | 2;
  v56 = 0;
  if (v59 != -1)
  {
    v66 = v59;
    v65 = v57;
    v64 = _dispatch_thread_getspecific(25);
    v79 = v64;
    v82 = v64 & 0xF00;
    v78 = v82 >> 8;
    v77 = v64;
    if (v82 >> 8)
    {
      v77 |= 1 << (v78 + 7);
    }

    v63 = v77;
    v80 = v77;
    v62 = v77 & 0xFFFFFF00;
    v12 = 1;
    if ((v65 & 1) == 0)
    {
      v12 = (v66 & 0x10000000) != 0;
    }

    v61 = v12;
    v68 = v66;
    v66 &= 0xFFFFFFu;
    if (v66)
    {
      if (v66 >= v62)
      {
        if (v61 || (v64 & 0x44000000) != 0)
        {
          v67 = v66;
        }

        else
        {
          v67 = v63;
        }
      }

      else
      {
        v67 = v63;
      }
    }

    else
    {
      v81 = v64 & 0xF000;
      v60 = v81 >> 12;
      if (v81 >> 12)
      {
        v70 = v60;
        v69 = 1 << (v60 + 7);
        v11 = v69 | 0xFF;
      }

      else
      {
        v11 = v63;
      }

      v67 = v11;
    }

    v56 = v67;
  }

  v74 = v56;
  v73 = v58;
  v72 = v57;
  v86 = v56;
  v89 = v56 != -1;
  v88 = 2409;
  if (v56 == -1)
  {
    _dispatch_abort(v88, v89);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v100 = v86;
    v99 = 4261412863;
    v98 = 0;
    v86 &= 0xFFFFFFFF02FFFFFFLL;
    v90 = _dispatch_thread_getspecific(4);
    v85 = v90;
    v84 = 0x1000000;
    v83 = 2281701376;
    if ((v90 & 0x1000000) != 0)
    {
      if (v86)
      {
        v10 = v86;
      }

      else
      {
        v94 = v85;
        v93 = v84;
        v92 = 0;
        v10 = v85 & (~v84 | 0xFFFFFF);
      }

      v87 = v10;
    }

    else
    {
      v97 = v85;
      v96 = v83;
      v95 = 0;
      v85 &= ~v83 | 0xFFFFFF;
      if (v86 == v85)
      {
        v87 = 0;
      }

      else
      {
        v87 = v86;
      }
    }
  }

  else
  {
    v87 = 0;
  }

  v74 = v87;
  if (v87)
  {
    goto LABEL_56;
  }

  if (v73 == -1)
  {
    v75 = -1;
    goto LABEL_57;
  }

  v9 = v73;
  if (v9 != _dispatch_thread_getspecific(28))
  {
LABEL_56:
    v75 = _dispatch_set_priority_and_voucher_slow(v74, v73, v72);
  }

  else
  {
    v71 = (v72 & 4) != 0;
    if ((v72 & 2) != 0)
    {
      if (v71 && v73)
      {
        v91 = v73;
        os_release(v73);
      }

      v73 = -1;
    }

    else if (!v71 && v73)
    {
      object = v73;
      os_retain(v73);
    }

    v75 = v73;
  }

LABEL_57:
  if ((v18 & 0x200) == 0)
  {
    v34 = v19;
    v33 = v24;
    v32 = 0;
    v31 = 0;
    v102 = v19;
    v101 = v24;
  }

  v14 = 0;
  if ((v22 & 0x1000000) != 0)
  {
    v14 = _dispatch_autorelease_pool_push();
  }

  v4 = v24[4];
  v43 = v24[5];
  v42 = v4;
  if (v4 == _dispatch_call_block_and_release && v43)
  {
    v7 = _Block_get_invoke_fn(v43);
    v8 = 0;
    if (v7)
    {
      v8 = v7;
    }

    v6 = v8;
  }

  else
  {
    v6 = v42;
  }

  v41 = v6;
  v111 = v43;
  v110 = v6;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  _dispatch_client_callout(v43, v42);
  v113 = v43;
  v112 = v41;
  if (v14)
  {
    _dispatch_autorelease_pool_pop(v14);
  }

  if ((v18 & 0x200) == 0)
  {
    v35 = v15;
    v103 = v15;
    v108 = 772079660;
    v107 = v15;
    v106 = 0;
    v105 = 0;
    v104 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v109 = v35;
  }

  v44 = __b;
  v5 = _dispatch_thread_getspecific(23) == __b;
  v46 = v5;
  v45 = 449;
  if (!v5)
  {
    _dispatch_abort(v45, v46);
  }

  _dispatch_thread_setspecific(23, *v44);
  if (__b[3])
  {
    _dispatch_mach_ipc_handoff_async(__b);
  }

  else
  {
    _dispatch_ipc_handoff_release(v21);
  }

  if (v16)
  {
    _dispatch_sync_ipc_handoff_end(v16, v17);
  }
}

void _dispatch_mach_ipc_handoff_async(uint64_t a1)
{
  v5 = *(a1 + 16);
  v4 = *(v5 + 56);
  v3 = *(v5 + 64);
  v2 = 0;
  if (**(a1 + 24))
  {
    v2 = **(a1 + 24);
  }

  (*(v2 + 72))(*(a1 + 24), *(a1 + 16), *(a1 + 32));
  if (v3)
  {
    _dispatch_sync_ipc_handoff_begin(v3, v4, v5 + 64);
    v1 = v3;
    atomic_compare_exchange_strong_explicit((v5 + 64), &v1, ~v3, memory_order_relaxed, memory_order_relaxed);
  }

  _dispatch_ipc_handoff_release(v5);
  _dispatch_release_tailcall(*(a1 + 24));
}

void _dispatch_ipc_handoff_release(uint64_t a1)
{
  if (!atomic_fetch_add_explicit((a1 + 72), 0xFFFFFFFF, memory_order_relaxed))
  {
    free(a1);
  }
}

double _dispatch_mach_msg_invoke(void *a1, uint64_t a2, int a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = 0uLL;
  v21 = &v15;
  _dispatch_thread_getspecific_pair(20, &v15, 21, &v15.n128_u64[1]);
  v61 = v21->n128_u64[1];
  _dispatch_thread_setspecific_packed_pair(20, 21, v61);
  v19 = v21->n128_u64[0];
  v20 = v19;
  v37 = v18;
  v36 = v16;
  v35 = v19;
  v34 = 0;
  v33 = 0;
  reason = _dispatch_mach_msg_get_reason(v18, &v33);
  v31 = 7;
  memset(__b, 0, sizeof(__b));
  __b[0] = 0;
  __b[1] = "mach_msg";
  __b[2] = v37;
  __b[3] = 0;
  LODWORD(__b[4]) = 0;
  v47 = __b;
  __b[0] = _dispatch_thread_getspecific(23);
  _dispatch_thread_setspecific(23, v47);
  v29 = v35;
  v28 = v37;
  v45 = v35;
  v44 = v37;
  v43 = 0;
  v42 = 0;
  v108 = v35;
  v107 = v37;
  v34 = *(v35 + 88);
  v37[2] = -1985229329;
  v3 = v37[8];
  v54 = 771817488;
  v53 = v3;
  v52 = v37;
  if (v3 != -1)
  {
    v14 = v53 ? *(v53 + 32) : 0;
    v51 = v14;
    v59 = v54;
    v58 = v14;
    v57 = v52;
    v56 = 0;
    v55 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] adopt", 2467, v4, v37[8], v37);
  v5 = v37[8];
  v65 = v37[7];
  v64 = v5;
  v63 = v31;
  v62 = 0;
  if (v65 != -1)
  {
    v72 = v65;
    v71 = v63;
    v70 = _dispatch_thread_getspecific(25);
    v85 = v70;
    v88 = v70 & 0xF00;
    v84 = v88 >> 8;
    v83 = v70;
    if (v88 >> 8)
    {
      v83 |= 1 << (v84 + 7);
    }

    v69 = v83;
    v86 = v83;
    v68 = v83 & 0xFFFFFF00;
    v13 = 1;
    if ((v71 & 1) == 0)
    {
      v13 = (v72 & 0x10000000) != 0;
    }

    v67 = v13;
    v74 = v72;
    v72 &= 0xFFFFFFu;
    if (v72)
    {
      if (v72 >= v68)
      {
        if (v67 || (v70 & 0x44000000) != 0)
        {
          v73 = v72;
        }

        else
        {
          v73 = v69;
        }
      }

      else
      {
        v73 = v69;
      }
    }

    else
    {
      v87 = v70 & 0xF000;
      v66 = v87 >> 12;
      if (v87 >> 12)
      {
        v76 = v66;
        v75 = 1 << (v66 + 7);
        v12 = v75 | 0xFF;
      }

      else
      {
        v12 = v69;
      }

      v73 = v12;
    }

    v62 = v73;
  }

  v80 = v62;
  v79 = v64;
  v78 = v63;
  v92 = v62;
  v95 = v62 != -1;
  v94 = 2409;
  if (v62 == -1)
  {
    _dispatch_abort(v94, v95);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v106 = v92;
    v105 = 4261412863;
    v104 = 0;
    v92 &= 0xFFFFFFFF02FFFFFFLL;
    v96 = _dispatch_thread_getspecific(4);
    v91 = v96;
    v90 = 0x1000000;
    v89 = 2281701376;
    if ((v96 & 0x1000000) != 0)
    {
      if (v92)
      {
        v11 = v92;
      }

      else
      {
        v100 = v91;
        v99 = v90;
        v98 = 0;
        v11 = v91 & (~v90 | 0xFFFFFF);
      }

      v93 = v11;
    }

    else
    {
      v103 = v91;
      v102 = v89;
      v101 = 0;
      v91 &= ~v89 | 0xFFFFFF;
      if (v92 == v91)
      {
        v93 = 0;
      }

      else
      {
        v93 = v92;
      }
    }
  }

  else
  {
    v93 = 0;
  }

  v80 = v93;
  if (v93)
  {
    goto LABEL_49;
  }

  if (v79 == -1)
  {
    v81 = -1;
    goto LABEL_50;
  }

  v10 = v79;
  if (v10 != _dispatch_thread_getspecific(28))
  {
LABEL_49:
    v81 = _dispatch_set_priority_and_voucher_slow(v80, v79, v78);
  }

  else
  {
    v77 = (v78 & 4) != 0;
    if ((v78 & 2) != 0)
    {
      if (v77 && v79)
      {
        v97 = v79;
        os_release(v79);
      }

      v79 = -1;
    }

    else if (!v77 && v79)
    {
      object = v79;
      os_retain(v79);
    }

    v81 = v79;
  }

LABEL_50:
  v37[8] = 0;
  v27 = 0;
  if ((v36 & 0x1000000) != 0)
  {
    v27 = _dispatch_autorelease_pool_push();
  }

  if ((v36 & 4) != 0)
  {
    _dispatch_client_callout3(*(v34 + 48), reason, v37, *(&dword_18 + _dispatch_mach_xpc_hooks));
  }

  else
  {
    if ((*(v35 + 116) & 4) == 0)
    {
      _dispatch_mach_connect_invoke(v35);
    }

    if (reason == 2 && (v26 = v35, v41 = v35, v39 = *(v35 + 80), v40 = v39, v38 = v39, (v39 & 0x10000000) != 0))
    {
      msg = _dispatch_mach_msg_get_msg(v37);
      v6 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tmachport[0x%08x]: drop msg id 0x%x, reply on 0x%08x", 2492, v6, msg->msgh_local_port, msg->msgh_id, msg->msgh_remote_port);
      mach_msg_destroy(msg);
    }

    else
    {
      v9 = 0;
      if (*(v34 + 40))
      {
        v9 = *(v34 + 40);
      }

      _dispatch_client_callout4(*(v34 + 48), reason, v37, v33, v9);
    }
  }

  if (v27)
  {
    _dispatch_autorelease_pool_pop(v27);
  }

  v24 = v37;
  v46 = v37;
  v109 = v37;
  v114 = 772079660;
  v113 = v37;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v115 = v46;
  v23 = v37;
  dispatch_release(v37);
  v48 = __b;
  v7 = _dispatch_thread_getspecific(23) == __b;
  v50 = v7;
  v49 = 449;
  if (!v7)
  {
    _dispatch_abort(v49, v50);
  }

  _dispatch_thread_setspecific(23, *v48);
  if (__b[3])
  {
    _dispatch_mach_ipc_handoff_async(__b);
  }

  v22 = &v15;
  v60 = &v15;
  *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v15).n128_u64[0];
  return result;
}

double _dispatch_mach_barrier_invoke(void *a1, uint64_t a2, int a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = 0uLL;
  v24 = a1[7];
  v22 = a1[6];
  v53 = a1;
  v16 = 0;
  if (*a1)
  {
    v16 = *a1;
  }

  v21 = *(v16 + 16);
  if (v21 == 1024)
  {
    v29 = &v25;
    _dispatch_thread_getspecific_pair(20, &v25, 21, &v25.n128_u64[1]);
    v64 = v29->n128_u64[1];
    _dispatch_thread_setspecific_packed_pair(20, 21, v64);
  }

  v23 = *(v24 + 88);
  if (((*(v24 + 116) >> 2) & 1) == 0)
  {
    v20 = 0;
    if ((v26 & 0x1000000) != 0)
    {
      v20 = _dispatch_autorelease_pool_push();
    }

    _dispatch_mach_connect_invoke(v24);
    if (v20)
    {
      _dispatch_autorelease_pool_pop(v20);
    }
  }

  v19 = v28;
  v33 = v28;
  v32 = v22;
  v31 = v28[3];
  v30 = v22 & 4;
  v35 = 1;
  v34 = 600;
  if ((v22 & 4) != 0)
  {
    v33[3] = -1;
  }

  if (v31 != -1)
  {
    v57 = 771817480;
    v56 = v31;
    v55 = v33;
    if (v31)
    {
      v15 = v56[8];
    }

    else
    {
      v15 = 0;
    }

    v54 = v15;
    v62 = v57;
    v61 = v15;
    v60 = v55;
    v59 = 0;
    v58 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", 607, v3, v31, v33);
  }

  v68 = v33[1];
  v67 = v31;
  v66 = v30 | 2;
  v65 = 0;
  if (v68 != -1)
  {
    v75 = v68;
    v74 = v66;
    v73 = _dispatch_thread_getspecific(25);
    v88 = v73;
    v91 = v73 & 0xF00;
    v87 = v91 >> 8;
    v86 = v73;
    if (v91 >> 8)
    {
      v86 |= 1 << (v87 + 7);
    }

    v72 = v86;
    v89 = v86;
    v71 = v86 & 0xFFFFFF00;
    v14 = 1;
    if ((v74 & 1) == 0)
    {
      v14 = (v75 & 0x10000000) != 0;
    }

    v70 = v14;
    v77 = v75;
    v75 &= 0xFFFFFFu;
    if (v75)
    {
      if (v75 >= v71)
      {
        if (v70 || (v73 & 0x44000000) != 0)
        {
          v76 = v75;
        }

        else
        {
          v76 = v72;
        }
      }

      else
      {
        v76 = v72;
      }
    }

    else
    {
      v90 = v73 & 0xF000;
      v69 = v90 >> 12;
      if (v90 >> 12)
      {
        v79 = v69;
        v78 = 1 << (v69 + 7);
        v13 = v78 | 0xFF;
      }

      else
      {
        v13 = v72;
      }

      v76 = v13;
    }

    v65 = v76;
  }

  v83 = v65;
  v82 = v67;
  v81 = v66;
  v95 = v65;
  v98 = v65 != -1;
  v97 = 2409;
  if (v65 == -1)
  {
    _dispatch_abort(v97, v98);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v109 = v95;
    v108 = 4261412863;
    v107 = 0;
    v95 &= 0xFFFFFFFF02FFFFFFLL;
    v99 = _dispatch_thread_getspecific(4);
    v94 = v99;
    v93 = 0x1000000;
    v92 = 2281701376;
    if ((v99 & 0x1000000) != 0)
    {
      if (v95)
      {
        v12 = v95;
      }

      else
      {
        v103 = v94;
        v102 = v93;
        v101 = 0;
        v12 = v94 & (~v93 | 0xFFFFFF);
      }

      v96 = v12;
    }

    else
    {
      v106 = v94;
      v105 = v92;
      v104 = 0;
      v94 &= ~v92 | 0xFFFFFF;
      if (v95 == v94)
      {
        v96 = 0;
      }

      else
      {
        v96 = v95;
      }
    }
  }

  else
  {
    v96 = 0;
  }

  v83 = v96;
  if (v96)
  {
    goto LABEL_61;
  }

  if (v82 == -1)
  {
    v84 = -1;
    goto LABEL_62;
  }

  v11 = v82;
  if (v11 != _dispatch_thread_getspecific(28))
  {
LABEL_61:
    v84 = _dispatch_set_priority_and_voucher_slow(v83, v82, v81);
  }

  else
  {
    v80 = (v81 & 4) != 0;
    if ((v81 & 2) != 0)
    {
      if (v80 && v82)
      {
        v100 = v82;
        os_release(v82);
      }

      v82 = -1;
    }

    else if (!v80 && v82)
    {
      object = v82;
      os_retain(v82);
    }

    v84 = v82;
  }

LABEL_62:
  if ((v22 & 0x200) == 0)
  {
    v39 = v24;
    v38 = v28;
    v37 = 0;
    v36 = 0;
    v111 = v24;
    v110 = v28;
  }

  if ((v22 & 4) != 0)
  {
    v42 = v19;
    v41 = _dispatch_thread_getspecific(22);
    if (v41)
    {
      v10 = *(v41 + 8) + 1;
    }

    else
    {
      v10 = 1;
    }

    v40 = v10;
    if (v10 <= _dispatch_continuation_cache_limit)
    {
      *(v42 + 16) = v41;
      *(v42 + 8) = v40;
      _dispatch_thread_setspecific(22, v42);
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    v18 = v43;
  }

  else
  {
    v18 = 0;
  }

  v17 = 0;
  if ((v26 & 0x1000000) != 0)
  {
    v17 = _dispatch_autorelease_pool_push();
  }

  v4 = v28[4];
  v52 = v28[5];
  v51 = v4;
  if (v4 == _dispatch_call_block_and_release && v52)
  {
    v8 = _Block_get_invoke_fn(v52);
    v9 = 0;
    if (v8)
    {
      v9 = v8;
    }

    v7 = v9;
  }

  else
  {
    v7 = v51;
  }

  v50 = v7;
  v120 = v52;
  v119 = v7;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  _dispatch_client_callout(v52, v51);
  v122 = v52;
  v121 = v50;
  v6 = 0;
  if (*(v23 + 40))
  {
    v6 = *(v23 + 40);
  }

  _dispatch_client_callout4(*(v23 + 48), 6, 0, 0, v6);
  if (v17)
  {
    _dispatch_autorelease_pool_pop(v17);
  }

  if ((v22 & 0x200) == 0)
  {
    v44 = v19;
    v112 = v19;
    v117 = 772079660;
    v116 = v19;
    v115 = 0;
    v114 = 0;
    v113 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v118 = v44;
  }

  if (v18)
  {
    _dispatch_continuation_free_to_cache_limit(v18);
  }

  if (v21 == 1024)
  {
    v45 = &v25;
    v63 = &v25;
    *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v25).n128_u64[0];
  }

  return result;
}

uint64_t _dispatch_mach_connect_invoke(uint64_t a1)
{
  v3 = *(a1 + 88);
  v2 = 0;
  if (*(v3 + 40))
  {
    v2 = *(v3 + 40);
  }

  result = _dispatch_client_callout4(*(v3 + 48), 1, 0, 0, v2);
  *(a1 + 116) = *(a1 + 116) & 0xFFFB | 4;
  return result;
}

void dispatch_mach_send_barrier_f(_DWORD *a1, void *a2, void *a3)
{
  v12 = _dispatch_thread_getspecific(22);
  if (v12)
  {
    _dispatch_thread_setspecific(22, *(v12 + 16));
    v10 = v12;
  }

  else
  {
    v10 = _dispatch_continuation_alloc_from_heap();
  }

  *v10 = &stru_B8 + 76;
  v10[4] = a3;
  v10[5] = a2;
  v14 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v14 <= 0x10FF)
  {
    v15 = v14;
  }

  else
  {
    v15 = 4351;
  }

  v16 = _dispatch_thread_getspecific(28);
  if (v16)
  {
    os_retain(v16);
  }

  v10[3] = v16;
  v3 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v10[3], v10);
  if (v10[3] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v13 = v15;
  if (v15 && (a1[21] & 0x40000000) == 0 && (a1[21] & 0xFFF) != 0)
  {
    v13 = 0;
  }

  v10[1] = v13;
  v10[6] = *v10;
  v10[7] = a1;
  v6 = 0;
  if (&unk_DCD08)
  {
    v6 = &unk_DCD08;
  }

  *v10 = v6;
  v11 = (v10[1] & 0x3FFF00) >> 8;
  v4 = __clz(__rbit32(v11));
  if (v11)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  _dispatch_mach_send_push(a1, v10, v5);
}

void dispatch_mach_send_barrier(unint64_t a1, const void *a2)
{
  v13 = _dispatch_thread_getspecific(22);
  if (v13)
  {
    _dispatch_thread_setspecific(22, *(v13 + 16));
    v10 = v13;
  }

  else
  {
    v10 = _dispatch_continuation_alloc_from_heap();
  }

  v11 = _dispatch_Block_copy(a2);
  v6 = _Block_get_invoke_fn(a2);
  v7 = 0;
  if (v6)
  {
    v7 = v6;
  }

  if (v7 == _dispatch_block_special_invoke)
  {
    *v10 = 276;
    v10[5] = v11;
    _dispatch_continuation_init_slow(v10, a1, 0);
  }

  else
  {
    _Block_get_invoke_fn(a2);
    *v10 = 276;
    v10[4] = _dispatch_call_block_and_release;
    v10[5] = v11;
    v15 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v15 <= 0x10FF)
    {
      v16 = v15;
    }

    else
    {
      v16 = 4351;
    }

    v17 = _dispatch_thread_getspecific(28);
    if (v17)
    {
      os_retain(v17);
    }

    v10[3] = v17;
    v2 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v2, v10[3], v10);
    if (v10[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v14 = v16;
    if (v16 && (*(a1 + 84) & 0x40000000) == 0 && (*(a1 + 84) & 0xFFF) != 0)
    {
      v14 = 0;
    }

    v10[1] = v14;
  }

  v10[6] = *v10;
  v10[7] = a1;
  v5 = 0;
  if (&unk_DCD08)
  {
    v5 = &unk_DCD08;
  }

  *v10 = v5;
  v12 = (v10[1] & 0x3FFF00uLL) >> 8;
  v3 = __clz(__rbit32(v12));
  if (v12)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  _dispatch_mach_send_push(a1, v10, v4);
}

uint64_t dispatch_mach_receive_barrier_f(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = _dispatch_thread_getspecific(22);
  if (v14)
  {
    _dispatch_thread_setspecific(22, *(v14 + 16));
    v13 = v14;
  }

  else
  {
    v13 = _dispatch_continuation_alloc_from_heap();
  }

  *v13 = 260;
  v13[4] = a3;
  v13[5] = a2;
  v17 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v17 <= 0x10FF)
  {
    v18 = v17;
  }

  else
  {
    v18 = 4351;
  }

  v19 = _dispatch_thread_getspecific(28);
  if (v19)
  {
    os_retain(v19);
  }

  v13[3] = v19;
  v3 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v13[3], v13);
  if (v13[3] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v16 = v18;
  v15 = 0;
  if (v18)
  {
    if ((*(a1 + 21) & 0x40000000) != 0 || (*(a1 + 21) & 0xFFF) == 0)
    {
      v4 = v18 >> 8;
      v5 = __clz(__rbit32(v4));
      if (v4)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = 0;
      }

      v15 = v6;
    }

    else
    {
      v16 = 0;
    }
  }

  v13[1] = v16;
  v13[6] = *v13;
  v13[7] = a1;
  v9 = 0;
  if (&unk_DCD40)
  {
    v9 = &unk_DCD40;
  }

  *v13 = v9;
  v8 = 0;
  if (*a1)
  {
    v8 = *a1;
  }

  return (*(v8 + 72))(a1, v13, v15);
}

uint64_t dispatch_mach_receive_barrier(uint64_t *a1, const void *a2)
{
  v16 = _dispatch_thread_getspecific(22);
  if (v16)
  {
    _dispatch_thread_setspecific(22, *(v16 + 16));
    v13 = v16;
  }

  else
  {
    v13 = _dispatch_continuation_alloc_from_heap();
  }

  v14 = _dispatch_Block_copy(a2);
  v9 = _Block_get_invoke_fn(a2);
  v10 = 0;
  if (v9)
  {
    v10 = v9;
  }

  if (v10 == _dispatch_block_special_invoke)
  {
    *v13 = 276;
    v13[5] = v14;
    inited = _dispatch_continuation_init_slow(v13, a1, 0);
  }

  else
  {
    _Block_get_invoke_fn(a2);
    *v13 = 276;
    v13[4] = _dispatch_call_block_and_release;
    v13[5] = v14;
    v19 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v19 <= 0x10FF)
    {
      v20 = v19;
    }

    else
    {
      v20 = 4351;
    }

    v21 = _dispatch_thread_getspecific(28);
    if (v21)
    {
      os_retain(v21);
    }

    v13[3] = v21;
    v2 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v2, v13[3], v13);
    if (v13[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v18 = v20;
    v17 = 0;
    if (v20)
    {
      if ((*(a1 + 21) & 0x40000000) != 0 || (*(a1 + 21) & 0xFFF) == 0)
      {
        v3 = v20 >> 8;
        v4 = __clz(__rbit32(v3));
        if (v3)
        {
          v5 = v4 + 1;
        }

        else
        {
          v5 = 0;
        }

        v17 = v5;
      }

      else
      {
        v18 = 0;
      }
    }

    v13[1] = v18;
    inited = v17;
  }

  v13[6] = *v13;
  v13[7] = a1;
  v8 = 0;
  if (&unk_DCD40)
  {
    v8 = &unk_DCD40;
  }

  *v13 = v8;
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  return (*(v7 + 72))(a1, v13, inited);
}

void dispatch_mach_cancel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "dispatch_mach_cancel");
  _dispatch_retain(a1);
  if ((atomic_fetch_or_explicit((a1 + 80), 0x10000000u, memory_order_relaxed) & 0x10000000) == 0)
  {
    dispatch_mach_reconnect(a1, 0, 0xFFFFFFFFFFFFFFFFLL);
  }

  _dispatch_release_tailcall(a1);
}

void _dispatch_mach_activate(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  v1 = 0;
  _dispatch_lane_activate(a1);
  if ((*(v3 + 116) & 1) == 0)
  {
    v2 = _dispatch_queue_compute_priority_and_wlh(v3, &v1);
    if (v2)
    {
      _dispatch_mach_install(v3, v1, v2);
    }
  }
}

uint64_t _dispatch_mach_install(uint64_t result, uint64_t a2, unsigned int a3)
{
  v9 = result;
  v6 = (*(result + 80) & 0x10000000) != 0;
  v5 = *(result + 88);
  if (*(result + 116))
  {
    _dispatch_abort(2673, (*(result + 116) & 1) == 0);
  }

  *(result + 116) |= 1u;
  v4 = *(*(result + 120) + 88);
  if (HIBYTE(v4) >> 7)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Channel never connected";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x72218);
  }

  if (!*(result + 84))
  {
    *(result + 84) = a3;
  }

  if (!v6 && (*(result + 116) & 0x10) != 0)
  {
    result = (*(&stru_20.cmd + _dispatch_mach_xpc_hooks))(*(v5 + 48));
    if (result)
    {
      v3 = off_DD4B0(&_dispatch_xpc_type_sigterm, 15, 0);
      *(v3 + 8) = ~v9;
      *(v9 + 128) = v3;
      result = _dispatch_unote_register(*(v9 + 128), a2, a3);
    }
  }

  if (!v6 && *(v5 + 24))
  {
    if ((*(v5 + 29) & 1) == 0)
    {
      _dispatch_abort(2701, *(v5 + 29) & 1);
    }

    return _dispatch_unote_register(v5, a2, a3);
  }

  return result;
}

void _dispatch_mach_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v28 = a1;
  v27 = a2;
  i = a3;
  v25 = 8;
  v24 = _dispatch_mach_invoke2;
  v23 = a1;
  v22[8] = 0;
  *v22 = (a3 & 1) == 0;
  v21 = 0;
  if ((a3 & 3) == 0)
  {
    *(v23 + 16) = -1985229329;
    v20 = _dispatch_thread_getspecific(20);
    v19 = v23;
    v38 = v20;
    v37 = v23;
    v36 = 0;
    v35 = 0;
    v42 = v20;
    v41 = v23;
  }

  i |= v25;
  if ((i & 2) != 0)
  {
    v21 = 0x40020000000001;
  }

  else
  {
    v75 = v23;
    v74 = i;
    v73 = (*(v23 + 80) - 1) << 41;
    v81 = _dispatch_thread_getspecific(3);
    v72 = v81 & 0xFFFFFFFC | 0x20000000000000;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v71 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v71 |= 0x4000000000uLL;
      v68 = 0;
    }

    else if ((v74 & 0x40000) != 0)
    {
      v68 = 0x4000000000;
    }

    else
    {
      v71 |= 0x4000000000uLL;
      v68 = 1;
    }

    v80 = (v74 & 2) == 0;
    v79 = 1331;
    if ((v74 & 2) != 0)
    {
      _dispatch_abort(v79, v80);
    }

    v85 = _dispatch_thread_getspecific(25);
    v87 = v85 & 0xF00;
    v84 = v87 >> 8;
    v86 = v85 & 0xF000;
    v83 = v86 >> 12;
    v91 = v85 & 0xF0000;
    v82 = (v85 & 0xF0000u) >> 16;
    if (v87 >> 8 > v86 >> 12)
    {
      v14 = v84;
    }

    else
    {
      v14 = v83;
    }

    if (v14 <= v82)
    {
      v12 = v82;
    }

    else
    {
      if (v84 <= v83)
      {
        v13 = v83;
      }

      else
      {
        v13 = v84;
      }

      v12 = v13;
    }

    v67 = v12;
LABEL_22:
    v66 = 0;
    v65 = (v75 + 56);
    v70 = *(v75 + 56);
    do
    {
      v69 = v70;
      if ((v70 & v71) != 0)
      {
        if (!v68)
        {
          break;
        }

        v69 ^= v68;
      }

      else
      {
        v140 = v70;
        v139 = v67;
        v143 = v70;
        v11 = 0;
        if ((v70 & 0x1000000000) != 0)
        {
          v141 = v140 & 0x700000000;
          v11 = v139 < (v140 & 0x700000000) >> 32;
        }

        if (v11)
        {
          v89 = v70;
          v90 = v70 & 0x700000000;
          v88 = (v70 & 0x700000000) >> 32;
          v93 = _dispatch_thread_getspecific(3);
          v92 = v88;
          if (_dispatch_set_qos_class_enabled)
          {
            v95 = v92;
            v94 = 0;
            if (v92)
            {
              v94 = 1 << (v95 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v97 = v88;
          v96 = _dispatch_thread_getspecific(25);
          v98 = v96 & 0xF0000;
          if (v88 > (v96 & 0xF0000) >> 16)
          {
            v96 = v96 & 0xFFF0FFFF | (v97 << 16);
            _dispatch_thread_setspecific(25, v96);
          }

          v67 = v88;
          goto LABEL_22;
        }

        v69 = v69 & 0x7700000001 | v72;
        v142 = v70;
        if ((v70 & 0x10000000000) != 0 || v70 + v73 < 0x20000000000000)
        {
          v69 |= 0x40000000000000uLL;
        }
      }

      v64 = v69;
      v3 = v70;
      v4 = v70;
      atomic_compare_exchange_strong_explicit(v65, &v4, v69, memory_order_acquire, memory_order_acquire);
      if (v4 != v3)
      {
        v70 = v4;
      }

      v63 = v4 == v3;
      v66 = v4 == v3;
    }

    while (v4 != v3);
    v62 = v66;
    v78 = (v70 & v68) == v68;
    v77 = 1364;
    if ((v70 & v68) != v68)
    {
      _dispatch_abort(v77, v78);
    }

    if ((v70 & v71) != 0)
    {
      v76 = 0;
    }

    else
    {
      v69 &= v68 | 0x60000000000000;
      v70 &= 0x3FFE0000000000uLL;
      v76 = v69 - v70;
    }

    v21 = v76;
  }

  if (v21)
  {
    v18 = 0;
    if ((i & 0x40000) != 0)
    {
      v18 = 0;
    }

    else
    {
      v101 = *(v23 + 84);
      v100 = _dispatch_thread_getspecific(25);
      v99 = v100;
      if (v100)
      {
        if ((v101 & 0xFFF) != 0)
        {
          v99 &= 0x880F0000;
          if ((v100 & 0xFFF) > (v101 & 0xFFFu))
          {
            v10 = v100 & 0xFFF;
          }

          else
          {
            v10 = v101 & 0xFFF;
          }

          v99 |= v10;
          v103 = v101 & 0xF000;
          v105 = v99 & 0xF00;
          if (v103 >> 12 > v105 >> 8)
          {
            v101 &= 0x4400F000u;
          }

          else
          {
            v101 &= 0x40000000u;
          }

          v99 |= v101;
        }

        else
        {
          if ((v99 & 0xFFF) != 0)
          {
            v99 |= 0x40000000u;
          }

          v102 = v101 & 0xF000;
          v104 = v99 & 0xF00;
          if (v102 >> 12 > v104 >> 8)
          {
            v99 = v99 & 0xFFFF0FFF | v101 & 0x400F000;
          }
        }
      }

      else
      {
        v99 = v101 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v99);
      v18 = v100;
    }

    if ((i & 0x100000) != 0)
    {
      v32 = v28;
      v30 = *(v28 + 80);
      v31 = v30;
      v29 = v30;
      if ((v30 & 0x400000) != 0)
      {
        v61 = v28;
        v60 = 0x400000;
        v58 = -4194305;
        v57 = -4194305;
        v59 = -4194305;
        v53 = -4194305;
        v52 = -4194305;
        v54 = -4194305;
        v51 = atomic_fetch_and_explicit((v28 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v55 = v51;
        v50 = v51;
        v56 = v51 & 0xFFBFFFFF;
      }
    }

    v17 = v23;
    v108 = v23;
    v107 = i;
    v146 = v23;
    v145 = 256;
    v152 = 1;
    v151 = 738;
    v150 = v23;
    v148 = *(v23 + 80);
    v149 = v148;
    v147 = v148;
    v144 = v148 & 0x30000;
    v106 = (v148 & 0x30000) << 8;
    if (v106)
    {
      v107 = v107 & 0xFCFFFFFF | v106;
    }

    for (i = v107; ; i |= 0x10u)
    {
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        _dispatch_last_resort_autorelease_pool_push(v27);
      }

      v16 = v23;
      *&v22[1] = v24(v23, v27, i, &v21);
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        v15 = 0uLL;
        v110 = v23;
        v109 = &v15;
        v153 = &v15;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v15);
        _dispatch_thread_setspecific_pair(20, v110, 21, v109);
        _dispatch_last_resort_autorelease_pool_pop(v27);
        v40 = &v15;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v15);
      }

      v34 = *&v22[1] != 1;
      v33 = 2026;
      if (*&v22[1] == 1)
      {
        _dispatch_abort(v33, v34);
      }

      v9 = 0;
      if (*&v22[1])
      {
        v9 = *&v22[1] != -1;
      }

      if (v9)
      {
        break;
      }

      v130 = v23;
      v129 = v21;
      v128 = *&v22[1] == 0;
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v124 = (v23 + 56);
      v127 = *(v23 + 56);
      do
      {
        v126 = (v127 - v129) & 0xFFFFFFF700000001;
        v132 = v127;
        if ((v127 & 0xFF80000000000000) == 0)
        {
          v154 = v127;
          if ((v127 & 0x8000000000) != 0)
          {
            v122 = 0x8000000000;
            v121 = 0x8000000000;
            v123 = 0x8000000000;
            v117 = 0x8000000000;
            v116 = 0x8000000000;
            v118 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v130 + 56), 0x8000000000uLL, memory_order_acquire);
            v119 = xor_explicit;
            v114 = xor_explicit;
            v120 = xor_explicit ^ v123;
            v131 = 0;
            goto LABEL_101;
          }

          if (v128)
          {
            v126 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v126 |= 0x8000000000uLL;
          }
        }

        v113 = v126;
        v5 = v127;
        v6 = v127;
        atomic_compare_exchange_strong_explicit(v124, &v6, v126, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          v127 = v6;
        }

        v112 = v6 == v5;
        v125 = v6 == v5;
      }

      while (v6 != v5);
      v111 = v125;
      v155 = v127;
      v156 = v127;
      v8 = 0;
      if ((v127 & 0x1000000000) != 0)
      {
        v8 = (v155 & 0x800000000) != 0;
      }

      if (v8)
      {
        v133 = v127 & 0x700000000;
        v135 = (v127 & 0x700000000uLL) >> 32;
        v134 = _dispatch_thread_getspecific(25);
        v136 = v134 & 0xF0000;
        if (v135 > (v134 & 0xF0000) >> 16)
        {
          v134 &= 0xFFF0FFFF;
          v134 |= v135 << 16;
          _dispatch_thread_setspecific(25, v134);
        }
      }

      v131 = 1;
LABEL_101:
      if (v131)
      {
        v21 = 0;
        *&v22[1] = 0;
        break;
      }

      *&v22[1] = _dispatch_thread_getspecific(20);
      v7 = 0;
      if (**&v22[1])
      {
        v7 = **&v22[1];
      }

      if (*(v7 + 16) & 0x10000) == 0 && (v22[0])
      {
        break;
      }
    }

    if ((i & 0x40000) == 0)
    {
      v138 = v18;
      v137 = _dispatch_thread_getspecific(25);
      v138 &= 0xFFF0FFFF;
      v138 |= v137 & 0xF0000;
      _dispatch_thread_setspecific(25, v138);
    }
  }

  if (v22[0])
  {
    v39 = v23;
    v43 = v23;
    v48 = 772079660;
    v47 = v23;
    v46 = 0;
    v45 = 0;
    v44 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v49 = v39;
  }

  if (*&v22[1])
  {
    _dispatch_queue_invoke_finish(v23, v27, *&v22[1], v21);
  }

  else
  {
    _dispatch_release_2_tailcall(v23);
  }
}

uint64_t _dispatch_mach_invoke2(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v27 = 0;
  v26 = _dispatch_thread_getspecific(20);
  v25 = *(a1 + 120);
  v24 = *(a1 + 88);
  v20 = 0;
  if ((a3 & 0x40000) == 0)
  {
    v20 = 0;
    if (v24)
    {
      v37 = _dispatch_thread_getspecific(29);
      if (v37)
      {
        _dispatch_abort(453, (v37 & 1) == 0);
      }

      if (v37)
      {
        v34 = *(v37 + 24);
      }

      else
      {
        v34 = -4;
      }

      v33 = *(v24 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      v19 = 0;
      if (v33)
      {
        v19 = 0;
        if (v33 != -4)
        {
          v19 = v33 != v34;
        }
      }

      v20 = v19;
    }
  }

  if (v20)
  {
    _dispatch_mach_handle_wlh_change(a1);
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    if ((a3 & 0x40000) != 0)
    {
      return *(a1 + 24);
    }

    v22 = 0x2000000;
    if ((a3 & 0x10000) != 0)
    {
      v22 = _dispatch_thread_getspecific(25);
    }

    v38 = _dispatch_thread_getspecific(29);
    if (v38)
    {
      _dispatch_abort(453, (v38 & 1) == 0);
    }

    if (v38)
    {
      _dispatch_mach_install(a1, *(v38 + 24), v22);
    }

    else
    {
      _dispatch_mach_install(a1, -4, v22);
    }
  }

  if (!*(a1 + 48))
  {
    goto LABEL_28;
  }

  if (v26 != *(a1 + 24))
  {
    v27 = *(a1 + 24);
    goto LABEL_28;
  }

  while (1)
  {
    while (1)
    {
      v27 = _dispatch_lane_serial_drain(a1, a2, a3, a4);
LABEL_28:
      v23 = *(a1 + 80);
      if (v27 || (v23 & 0x10000000) != 0)
      {
        break;
      }

      v35 = *(v24 + 16);
      v18 = 0;
      if (v35)
      {
        v18 = 0;
        if ((v35 & 1) == 0)
        {
          v18 = (v35 & 2) == 0;
        }
      }

      if (!v18)
      {
        break;
      }

      _dispatch_unote_resume(v24);
      if (v26 == *(a1 + 24) && !v26[3] && !*(v25 + 72) && (*(v26 + 21) & 0x80000000) != 0)
      {
        v36 = _dispatch_thread_getspecific(29);
        if (v36)
        {
          _dispatch_abort(453, (v36 & 1) == 0);
        }

        v17 = 0;
        if (_dispatch_thread_getspecific(5))
        {
          v17 = 0;
          if (v36)
          {
            v17 = 0;
            if (*(v36 + 24) != -4)
            {
              v17 = (*(v24 + 16) & 0xFFFFFFFFFFFFFFFCLL) == *(v36 + 24);
            }
          }
        }

        if (v17)
        {
          _dispatch_event_loop_drain(1u);
          if (*(a1 + 48))
          {
            continue;
          }
        }
      }

      v23 = *(a1 + 80);
      break;
    }

    if (*(v25 + 72))
    {
      if ((*(v25 + 30) & 1) == 0 || *(v25 + 88))
      {
        if (*(v25 + 88))
        {
          v16 = *(v25 + 16) != 0;
        }

        else
        {
          v16 = *(a1 + 118) & 1;
        }

        v15 = 0;
        if (v16)
        {
          v15 = v26 != &_dispatch_mgr_q;
        }

        if (v15)
        {
          if (v27)
          {
            return v27;
          }

          else
          {
            return &_dispatch_mgr_q;
          }
        }

        v21 = 0;
        if (v26 != &_dispatch_mgr_q)
        {
          v21 = 4;
        }

        _dispatch_mach_send_invoke(a1, a3, v21);
        if (!v27 && *(a1 + 48))
        {
          v27 = *(a1 + 24);
        }
      }

      if (!v27 && *(v25 + 72))
      {
        v27 = -1;
      }
    }

    if ((v23 & 0x10000000) == 0)
    {
      return v27;
    }

    if ((v23 & 0x80000000) == 0 && !_dispatch_mach_cancel(a1, v4, v5, v6, v7, v8, v9, v10))
    {
      if (v27)
      {
        return v27;
      }

      else
      {
        return -1;
      }
    }

    if ((*(a1 + 116) & 8) != 0)
    {
      return v27;
    }

    if (v26 != *(a1 + 24))
    {
      break;
    }

    if ((*(a1 + 56) & 0xFF80000000000000) != 0)
    {
      return *(a1 + 24);
    }

    if (!*(a1 + 48))
    {
      _dispatch_mach_cancel_invoke(a1, a3);
      return v27;
    }
  }

  if (v27)
  {
    return v27;
  }

  else
  {
    return *(a1 + 24);
  }
}

void _dispatch_mach_wakeup(uint64_t a1, unsigned int a2, char a3)
{
  v5 = *(a1 + 120);
  *&v4[8] = 0;
  *v4 = *(a1 + 80);
  if (*(a1 + 116))
  {
    if (*(a1 + 48))
    {
      *&v4[4] = 1;
    }

    else if (*(v5 + 72))
    {
      if ((*(v5 + 64) & 0xFFFFFFFC) == 0 && ((*(v5 + 30) & 1) == 0 || *(v5 + 88)))
      {
        if (*(v5 + 88))
        {
          v3 = *(v5 + 16) != 0;
        }

        else
        {
          v3 = *(a1 + 118) & 1;
        }

        if (v3)
        {
          *&v4[4] = &_dispatch_mgr_q;
        }

        else
        {
          *&v4[4] = 1;
        }
      }
    }

    else if (((*v4 & 0x10000000) == 0 || (*v4 & 0x40000000) == 0 || (a3 & 0x10) != 0) && (*v4 & 0x10000000) != 0 && (*(a1 + 116) & 8) == 0)
    {
      *&v4[4] = 1;
    }
  }

  else
  {
    *&v4[4] = 1;
  }

  if (*&v4[4] == 1 && *(a1 + 24) == &_dispatch_mgr_q)
  {
    *&v4[4] = &_dispatch_mgr_q;
  }

  _dispatch_queue_wakeup(a1, a2, a3, *&v4[4]);
}

uint64_t _dispatch_xpc_sigterm_merge_evt(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = ~*(a1 + 8);
  _dispatch_barrier_async_detached_f(v9, v9, _dispatch_mach_sigterm_invoke);
  v8 = 0;
  if (*v9)
  {
    v8 = *v9;
  }

  v4 = (*&a4 & 0x3FFF00uLL) >> 8;
  v5 = __clz(__rbit32(v4));
  if (v4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  return (*(v8 + 64))(v9, v6, 19);
}

uint64_t _dispatch_mach_sigterm_invoke(uint64_t a1)
{
  result = _dispatch_unote_unregister(*(a1 + 128), 5);
  if ((*(a1 + 80) & 0x10000000) == 0)
  {
    v3 = *(a1 + 88);
    v2 = 0;
    if (*(v3 + 40))
    {
      v2 = *(v3 + 40);
    }

    return _dispatch_client_callout4(*(v3 + 48), 11, 0, 0, v2);
  }

  return result;
}

void *dispatch_mach_msg_create(uint64_t a1, unint64_t a2, int a3, uint64_t *a4)
{
  v6 = 1;
  if (a2 >= 0x18)
  {
    v5 = 0;
    if (a3)
    {
      v5 = a1 == 0;
    }

    v6 = v5;
  }

  if (v6)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Empty message";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0x745ACLL);
  }

  v7 = 96;
  if (!a3)
  {
    v7 = a2 + 88;
    if (a2 - 8 >= 0xFFFFFFFFFFFFFFA0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Message size too large";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x7462CLL);
    }
  }

  v8 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, v7);
  if (a3)
  {
    v8[11] = a1;
  }

  else if (a1)
  {
    __memcpy_chk();
  }

  v8[2] = -1985229329;
  v8[3] = &off_E0600;
  *(v8 + 18) = a3;
  v8[10] = a2;
  if (a4)
  {
    *a4 = _dispatch_mach_msg_get_msg(v8);
  }

  return v8;
}

uint64_t _dispatch_mach_msg_get_msg(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return *(a1 + 88);
  }

  else
  {
    return a1 + 88;
  }
}

void _dispatch_mach_msg_dispose(uint64_t a1)
{
  if (*(a1 + 64))
  {
    os_release(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  v1 = *(a1 + 72);
  if (v1)
  {
    if (v1 == 1)
    {
      free(*(a1 + 88));
    }

    else if (v1 == 2)
    {
      v2 = mach_vm_deallocate(mach_task_self_, *(a1 + 88), *(a1 + 80));
      if (v2)
      {
        _dispatch_bug(3009, v2);
      }
    }
  }
}

uint64_t dispatch_mach_msg_get_msg(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 80);
  }

  return _dispatch_mach_msg_get_msg(a1);
}

uint64_t _dispatch_mach_msg_async_reply_invoke(void *a1, uint64_t a2, int a3)
{
  v16 = a1[7];
  v27 = a1[6];
  v26 = a3 | 4;
  v25 = v16;
  v24 = 0;
  v23 = 0;
  reason = _dispatch_mach_msg_get_reason(v27, &v23);
  v21 = 7;
  memset(__b, 0, sizeof(__b));
  __b[0] = 0;
  __b[1] = "mach_msg";
  __b[2] = v27;
  __b[3] = 0;
  LODWORD(__b[4]) = 0;
  v37 = __b;
  __b[0] = _dispatch_thread_getspecific(23);
  _dispatch_thread_setspecific(23, v37);
  v35 = v25;
  v34 = v27;
  v33 = 0;
  v32 = 0;
  v101 = v25;
  v100 = v27;
  v24 = *(v25 + 88);
  v27[2] = -1985229329;
  v3 = v27[8];
  v49 = 771817488;
  v48 = v3;
  v47 = v27;
  if (v3 != -1)
  {
    v15 = v48 ? *(v48 + 32) : 0;
    v46 = v15;
    v54 = v49;
    v53 = v15;
    v52 = v47;
    v51 = 0;
    v50 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] adopt", 2467, v4, v27[8], v27);
  v5 = v27[8];
  v58 = v27[7];
  v57 = v5;
  v56 = v21;
  v55 = 0;
  if (v58 != -1)
  {
    v65 = v58;
    v64 = v56;
    v63 = _dispatch_thread_getspecific(25);
    v78 = v63;
    v81 = v63 & 0xF00;
    v77 = v81 >> 8;
    v76 = v63;
    if (v81 >> 8)
    {
      v76 |= 1 << (v77 + 7);
    }

    v62 = v76;
    v79 = v76;
    v61 = v76 & 0xFFFFFF00;
    v14 = 1;
    if ((v64 & 1) == 0)
    {
      v14 = (v65 & 0x10000000) != 0;
    }

    v60 = v14;
    v67 = v65;
    v65 &= 0xFFFFFFu;
    if (v65)
    {
      if (v65 >= v61)
      {
        if (v60 || (v63 & 0x44000000) != 0)
        {
          v66 = v65;
        }

        else
        {
          v66 = v62;
        }
      }

      else
      {
        v66 = v62;
      }
    }

    else
    {
      v80 = v63 & 0xF000;
      v59 = v80 >> 12;
      if (v80 >> 12)
      {
        v69 = v59;
        v68 = 1 << (v59 + 7);
        v13 = v68 | 0xFF;
      }

      else
      {
        v13 = v62;
      }

      v66 = v13;
    }

    v55 = v66;
  }

  v73 = v55;
  v72 = v57;
  v71 = v56;
  v85 = v55;
  v88 = v55 != -1;
  v87 = 2409;
  if (v55 == -1)
  {
    _dispatch_abort(v87, v88);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v99 = v85;
    v98 = 4261412863;
    v97 = 0;
    v85 &= 0xFFFFFFFF02FFFFFFLL;
    v89 = _dispatch_thread_getspecific(4);
    v84 = v89;
    v83 = 0x1000000;
    v82 = 2281701376;
    if ((v89 & 0x1000000) != 0)
    {
      if (v85)
      {
        v12 = v85;
      }

      else
      {
        v93 = v84;
        v92 = v83;
        v91 = 0;
        v12 = v84 & (~v83 | 0xFFFFFF);
      }

      v86 = v12;
    }

    else
    {
      v96 = v84;
      v95 = v82;
      v94 = 0;
      v84 &= ~v82 | 0xFFFFFF;
      if (v85 == v84)
      {
        v86 = 0;
      }

      else
      {
        v86 = v85;
      }
    }
  }

  else
  {
    v86 = 0;
  }

  v73 = v86;
  if (v86)
  {
    goto LABEL_49;
  }

  if (v72 == -1)
  {
    v74 = -1;
    goto LABEL_50;
  }

  v11 = v72;
  if (v11 != _dispatch_thread_getspecific(28))
  {
LABEL_49:
    v74 = _dispatch_set_priority_and_voucher_slow(v73, v72, v71);
  }

  else
  {
    v70 = (v71 & 4) != 0;
    if ((v71 & 2) != 0)
    {
      if (v70 && v72)
      {
        v90 = v72;
        os_release(v72);
      }

      v72 = -1;
    }

    else if (!v70 && v72)
    {
      object = v72;
      os_retain(v72);
    }

    v74 = v72;
  }

LABEL_50:
  v27[8] = 0;
  v19 = 0;
  if ((v26 & 0x1000000) != 0)
  {
    v19 = _dispatch_autorelease_pool_push();
  }

  if ((v26 & 4) != 0)
  {
    _dispatch_client_callout3(*(v24 + 48), reason, v27, *(&dword_18 + _dispatch_mach_xpc_hooks));
  }

  else
  {
    if ((*(v25 + 116) & 4) == 0)
    {
      _dispatch_mach_connect_invoke(v25);
    }

    if (reason == 2 && (v31 = v25, v29 = *(v25 + 80), v30 = v29, v28 = v29, (v29 & 0x10000000) != 0))
    {
      msg = _dispatch_mach_msg_get_msg(v27);
      v6 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tmachport[0x%08x]: drop msg id 0x%x, reply on 0x%08x", 2492, v6, msg->msgh_local_port, msg->msgh_id, msg->msgh_remote_port);
      mach_msg_destroy(msg);
    }

    else
    {
      v10 = 0;
      if (*(v24 + 40))
      {
        v10 = *(v24 + 40);
      }

      _dispatch_client_callout4(*(v24 + 48), reason, v27, v23, v10);
    }
  }

  if (v19)
  {
    _dispatch_autorelease_pool_pop(v19);
  }

  v36 = v27;
  v102 = v27;
  v107 = 772079660;
  v106 = v27;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v108 = v36;
  dispatch_release(v27);
  v38 = __b;
  v7 = _dispatch_thread_getspecific(23) == __b;
  v40 = v7;
  v39 = 449;
  if (!v7)
  {
    _dispatch_abort(v39, v40);
  }

  _dispatch_thread_setspecific(23, *v38);
  if (__b[3])
  {
    _dispatch_mach_ipc_handoff_async(__b);
  }

  _dispatch_release(a1[7]);
  v41 = a1;
  v44 = a1;
  result = _dispatch_thread_getspecific(22);
  v43 = result;
  if (result)
  {
    v9 = *(v43 + 8) + 1;
  }

  else
  {
    v9 = 1;
  }

  v42 = v9;
  if (v9 <= _dispatch_continuation_cache_limit)
  {
    v44[2] = v43;
    *(v44 + 2) = v42;
    result = _dispatch_thread_setspecific(22, v44);
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  v41 = v45;
  if (v45)
  {
    return _dispatch_continuation_free_to_cache_limit(v41);
  }

  return result;
}

uint64_t dispatch_mach_msg_get_filter_policy_id(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Filter id should be non-NULL";
    qword_E42C0 = 0;
    __break(1u);
    JUMPOUT(0x75748);
  }

  result = dispatch_mach_msg_get_msg(a1, 0);
  if (!result)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Messsage should be non-NULL";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x757A0);
  }

  v5 = (result + ((*(result + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v5)
  {
    v3 = *v5;
    qword_E4290 = "BUG IN LIBDISPATCH: Trailer format is invalid";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x75808);
  }

  if (v5[1] < 0x44)
  {
    v4 = v5[1];
    qword_E4290 = "BUG IN LIBDISPATCH: Trailer doesn't contain filter policy id";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x75878);
  }

  *a2 = v5[15];
  return result;
}

uint64_t dispatch_mig_server(uint64_t a1, size_t a2, uint64_t (*a3)(mach_msg_header_t *, mach_msg_header_t *))
{
  v39 = a1;
  v38 = a2;
  v37 = a3;
  v36 = 117442818;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 1000;
  v27 = 0;
  v26 = 0;
  v25 = a2 + 68;
  v24 = *(a1 + 88);
  v13 = &v6[-((a2 + 83) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v13, a2 + 68);
  v33 = v13;
  v13[1].msgh_remote_port = 0;
  v49 = v33;
  v48 = v25;
  for (i = ((v33 + vm_page_size) & ~vm_page_mask); i < v49 + v48; i += vm_page_size)
  {
    *i = 0;
  }

  v12 = &v6[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v12, v25);
  v32 = v12;
  v12->msgh_size = 0;
  v46 = v32;
  v45 = v25;
  for (j = ((v32 + vm_page_size) & ~vm_page_mask); j < v46 + v45; j += vm_page_size)
  {
    *j = 0;
  }

  v36 |= 4u;
  v35 = v36;
  while (1)
  {
    v22 = v39;
    v43 = v39;
    v41 = *(v39 + 80);
    v42 = v41;
    v40 = v41;
    v23 = v41;
    v20 = *(v39 + 56);
    v21 = v20;
    v19 = v20;
    v50 = v20;
    if ((v20 & 0xFF80000000000000) != 0 || (v23 & 0x10000000) != 0 || (--v28, !v28))
    {
      v36 &= ~2u;
      v35 &= ~2u;
      if ((v35 & 1) == 0)
      {
        break;
      }
    }

    v31 = mach_msg(v32, v35, v32->msgh_size, v25, *(v24 + 24), 0, 0);
    v35 = v36;
    if (v31)
    {
      v11 = v31;
      if (v31 != 268435460 && v31 != 268435459)
      {
        if (v11 != 268451842)
        {
          if (v11 == 268451843)
          {
            if (v32->msgh_remote_port || (v26 & 1) != 0)
            {
              return 0;
            }
          }

          else
          {
            if (v11 == 268451844)
            {
              v35 &= 0xFFFFFFFA;
              v18 = v32->msgh_size + 68;
              v17 = malloc_type_malloc();
              if (v17)
              {
                v25 = v18;
                v32 = v17;
              }

              if (!mach_msg(v32, v35, 0, v25, *(v24 + 24), 0, 0))
              {
                _dispatch_log("BUG in libdispatch client: dispatch_mig_server received message larger than requested size %zd: id = 0x%x, size = %d", v38, v32->msgh_id, v32->msgh_size);
                mach_msg_destroy(v32);
              }

              if (v17)
              {
                free(v17);
              }
            }

            _dispatch_bug_mach_client("dispatch_mig_server: mach_msg() failed", v31);
          }
        }
      }

      else
      {
        _dispatch_mig_consume_unsent_message(v32);
      }

      return v31;
    }

    if ((v35 & 2) == 0)
    {
      return v31;
    }

    if (v29)
    {
      v29 = 0;
    }

    v26 = 1;
    v34 = v33;
    v33 = v32;
    v32 = v34;
    v52 = voucher_create_with_mach_msg(v33);
    v55 = v52;
    v54 = _dispatch_thread_getspecific(28);
    v64 = v54;
    v63 = v55;
    if (v54 == v55)
    {
      v65 = -1;
    }

    else
    {
      if (v64)
      {
        v62 = 0;
        v61 = 0;
      }

      _dispatch_thread_setspecific(28, v63);
      if (v63)
      {
        v60 = 0;
        v59 = 0;
      }

      v3 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", 400, v3, v63, v64);
      if (v63)
      {
        v10 = v63[8];
      }

      else
      {
        v10 = 0;
      }

      v58 = v10;
      if (v64)
      {
        v9 = v64[8];
      }

      else
      {
        v9 = 0;
      }

      v57 = v9;
      if (v58 == v9)
      {
        v8 = -1;
      }

      else
      {
        v8 = v58;
      }

      v65 = v8;
    }

    v56 = v65;
    if (v65 != -1)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v56);
    }

    v51 = v54;
    if (v54)
    {
      v53 = v51;
      os_release(v51);
    }

    v4 = v32;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *&v32->msgh_bits = 0u;
    *&v4->msgh_voucher_port = v16;
    v27 = v37(v33, v32);
    if (v27)
    {
      v30 = _dispatch_mig_return_code(v32);
    }

    else
    {
      v30 = -303;
    }

    v7 = v30;
    if (v30 == -305)
    {
      v32->msgh_remote_port = 0;
    }

    else if (v7)
    {
      v33->msgh_remote_port = 0;
      mach_msg_destroy(v33);
    }

    if (v32->msgh_remote_port)
    {
      v35 |= 1u;
      if ((v32->msgh_bits & 0x1F) != 0x12)
      {
        v35 |= 0x10u;
      }
    }
  }

  return v31;
}

void _dispatch_mig_consume_unsent_message(mach_msg_header_t *a1)
{
  msgh_local_port = a1->msgh_local_port;
  if (msgh_local_port && msgh_local_port != -1)
  {
    v2 = 0;
    v1 = (a1->msgh_bits >> 8) & 0x1F;
    if (v1 == 16)
    {
      v2 = mach_port_mod_refs(mach_task_self_, msgh_local_port, 1u, -1);
    }

    else if (v1 == 18 || v1 == 17)
    {
      v2 = mach_port_deallocate(mach_task_self_, msgh_local_port);
    }

    if (v2 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x761B8);
    }

    if (v2)
    {
      _dispatch_bug(3179, v2);
    }
  }

  mach_msg_destroy(a1);
}

uint64_t _dispatch_mig_return_code(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return a1[8];
  }
}

uint64_t dispatch_mach_mig_demux(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25[3] = a4;
  v13 = 0;
  v25[0] = 0;
  v25[1] = "mach_mig_demux";
  v25[2] = a1;
  msg = dispatch_mach_msg_get_msg(a4, 0);
  msgh_id = msg->msgh_id;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v22 = _dispatch_mach_mig_resolve(msgh_id, v27, v26);
  if (v22)
  {
    v30 = v25;
    v11 = 23;
    v25[0] = _dispatch_thread_getspecific(23);
    _dispatch_thread_setspecific(23, v30);
    v20 = *(v22 + 32) + 68;
    v12 = &v8 - ((v20 + 15) & 0x1FFFFFFF0);
    bzero(v12, v20);
    v21 = v12;
    v36 = v12;
    v35 = v20;
    for (i = (&v12[vm_page_size] & ~vm_page_mask); i < &v36[v35]; i += vm_page_size)
    {
      *i = 0;
    }

    v4 = v21;
    LODWORD(v17) = msg->msgh_bits & 0x1F;
    DWORD1(v17) = 36;
    *(&v17 + 1) = msg->msgh_remote_port;
    LODWORD(v18) = 0;
    HIDWORD(v18) = msgh_id + 100;
    v5 = v17;
    *(v21 + 2) = v18;
    *v4 = v5;
    (*(v22 + 8))(msg, v21);
    v10 = _dispatch_mig_return_code(v21);
    if (v10 == -305)
    {
      v21[2] = 0;
    }

    else if (v10)
    {
      msg->msgh_remote_port = 0;
      mach_msg_destroy(msg);
    }

    if (v21[2])
    {
      v16 = 1;
      if ((*v21 & 0x1F) != 0x12)
      {
        v16 |= 0x10u;
      }

      v19 = mach_msg(v21, v16, v21[1], 0, 0, 0, 0);
      v9 = v19;
      if (v19)
      {
        if ((v9 - 268435459) >= 2)
        {
          if (v19 == -301)
          {
            v15 = -301;
            qword_E4290 = "MIG_REPLY_MISMATCH";
            qword_E42C0 = -301;
            __break(1u);
            JUMPOUT(0x765B8);
          }

          v14 = v19;
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_mig_demux: mach_msg(MACH_SEND_MSG) failed";
          qword_E42C0 = v19;
          __break(1u);
          JUMPOUT(0x765F4);
        }

        _dispatch_mig_consume_unsent_message(v21);
      }
    }

    v31 = v25;
    v6 = _dispatch_thread_getspecific(23) == v25;
    v33 = v6;
    v32 = 449;
    if (!v6)
    {
      _dispatch_abort(v32, v33);
    }

    _dispatch_thread_setspecific(23, *v31);
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _dispatch_mach_mig_resolve(int a1, uint64_t a2, unint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (i >= a3)
    {
      return 0;
    }

    if (*(*(a2 + 8 * i) + 8) <= a1 && a1 < *(*(a2 + 8 * i) + 12))
    {
      break;
    }
  }

  if (*(*(a2 + 8 * i) + 32 + 40 * (a1 - *(*(a2 + 8 * i) + 8)) + 8))
  {
    return *(a2 + 8 * i) + 32 + 40 * (a1 - *(*(a2 + 8 * i) + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch_mach_mig_demux_get_context()
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "mach_mig_demux")
    {
      v2 = i;
      goto LABEL_7;
    }
  }

  v2 = 0;
LABEL_7:
  if (!v2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_mig_demux_get_context not called from dispatch_mach_mig_demux context";
    __break(1u);
    JUMPOUT(0x76868);
  }

  return v2[2];
}

uint64_t _dispatch_mach_msg_set_reason(uint64_t result, int a2, uint64_t a3)
{
  if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
  {
    _dispatch_abort(606, a3 & 0xFFFFFFFFFFFFC000);
  }

  if (!a2 && a3)
  {
    v3 = a3 | 0xF8F80000;
  }

  else
  {
    v3 = a2;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t _dispatch_mach_reply_list_remove_locked(uint64_t result)
{
  if (!*(result + 72))
  {
    _dispatch_abort(319, *(result + 72) != 0);
  }

  if (*(result + 64))
  {
    *(*(result + 64) + 72) = *(result + 72);
  }

  **(result + 72) = *(result + 64);
  *(result + 64) = -1;
  *(result + 72) = -1;
  *(result + 72) = 0;
  return result;
}

void *_dispatch_mach_msg_create_reply_disconnected(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a1;
  v8 = 0;
  if (a1)
  {
    v5 = *(v9 + 52);
  }

  else
  {
    v5 = *(v11 + 24);
  }

  v7 = v5;
  if (v5)
  {
    if (v11 && (v6[1] = v11, v17 = v11, v15 = *(v11 + 16), v16 = v15, v14 = v15, (v18 = v15) == 0) && (*(v11 + 30) & 1) != 0)
    {
      if (*(v11 + 56))
      {
        os_release(*(v11 + 56));
        *(v11 + 56) = 0;
      }

      _dispatch_destruct_reply_port(v7, 1u);
      return 0;
    }

    else
    {
      v6[0] = 0;
      v8 = dispatch_mach_msg_create(0, 0x18uLL, 0, v6);
      *(v6[0] + 12) = v7;
      if (v9)
      {
        v8[7] = *(v9 + 56);
        v8[4] = *(v9 + 32);
        v8[8] = *(v9 + 64);
        if (v8[8])
        {
          v19 = v8[8];
          os_retain(v19);
        }
      }

      else
      {
        v8[7] = *(v11 + 40);
        v8[4] = *(v11 + 48);
        v8[8] = *(v11 + 56);
        *(v11 + 56) = 0;
      }

      _dispatch_mach_msg_set_reason(v8, 0, v10);
      v3 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tmachport[0x%08x]: reply disconnected, ctxt %p", 1014, v3, *(v6[0] + 12), v8[4]);
      return v8;
    }
  }

  else
  {
    if (!v9 && *(v11 + 56))
    {
      os_release(*(v11 + 56));
      *(v11 + 56) = 0;
    }

    return 0;
  }
}

void _dispatch_destruct_reply_port(unsigned int a1, unsigned int a2)
{
  v2 = thread_destruct_special_reply_port();
  if (v2 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x76CF0);
  }

  if (v2)
  {
    _dispatch_bug(524, v2);
  }
}

uint64_t _dispatch_mach_send_drain(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a3;
  v41 = *(a1 + 120);
  v37 = (*(v41 + 64) & 0x700000000uLL) >> 32;
  v33 = 0;
  v32 = 0;
  do
  {
LABEL_2:
    if (!*(v41 + 72))
    {
      v36 = *(v41 + 64);
      do
      {
        if ((v36 & 0x2000000000) != 0)
        {
          v35 = v36 & 0xFFFFFFC7FFFFFFFFLL;
        }

        else
        {
          v35 = 0;
        }

        v10 = v36;
        v11 = v36;
        atomic_compare_exchange_strong_explicit((v41 + 64), &v11, v35, memory_order_release, memory_order_relaxed);
        if (v11 != v10)
        {
          v36 = v11;
        }
      }

      while (v11 != v10);
      goto LABEL_81;
    }

    v31 = *(v41 + 80);
    if (!v31)
    {
      v31 = _dispatch_wait_for_enqueuer((v41 + 80), v41 + 72);
    }

    v38 = v31;
    while (1)
    {
      v30 = v42;
      v42 &= ~8u;
      v29 = v38[2];
      *(v41 + 80) = v29;
      if (!v29)
      {
        v28 = *(v41 + 72);
        while (v38 == (v28 & 0xFFFFFFFFFFFFFFF8))
        {
          v8 = v28;
          v9 = v28;
          atomic_compare_exchange_strong_explicit((v41 + 72), &v9, 0, memory_order_release, memory_order_relaxed);
          if (v9 != v28)
          {
            v28 = v9;
          }

          if (v9 == v8)
          {
            goto LABEL_16;
          }
        }

        v27 = v38[2];
        if (!v27)
        {
          v27 = _dispatch_wait_for_enqueuer(v38 + 2, v41 + 72);
        }

        v29 = v27;
        *(v41 + 80) = v27;
      }

LABEL_16:
      v25 = 0;
      if (*v38 > 0xFFFuLL)
      {
        v24 = 0;
        if (*v38)
        {
          v24 = *v38;
        }

        v25 = *(v24 + 16) == 768;
      }

      if (v25)
      {
        if ((v42 & 4) == 0)
        {
          goto LABEL_58;
        }

        _dispatch_continuation_pop(v38, 0, a2, a1);
        goto LABEL_48;
      }

      if (*v38 <= 0xFFFuLL && (*v38 & 1) != 0)
      {
        v39 = v38[6];
        v40 = v38[7];
        goto LABEL_35;
      }

      if (*v38 > 0xFFFuLL)
      {
        break;
      }

      if (*(v41 + 16) && _dispatch_thread_getspecific(20) != &_dispatch_mgr_q)
      {
        *(a1 + 118) = *(a1 + 118) & 0xFFFE | 1;
        v32 |= 2u;
        goto LABEL_58;
      }

      if (!_dispatch_mach_reconnect_invoke(a1, v38, a3, a4, a5, a6, a7, a8))
      {
        goto LABEL_58;
      }

LABEL_48:
      v38 = v29;
      if (!v29)
      {
        goto LABEL_2;
      }
    }

    v39 = v38;
    v40 = 0;
LABEL_35:
    if (*(v39 + 8) != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v23 = 1;
    if (!*(v41 + 88))
    {
      v23 = (*(a1 + 80) & 0x10000000) != 0;
    }

    if (v23)
    {
      _dispatch_mach_msg_not_sent(a1, v39, v40);
      goto LABEL_48;
    }

    v34 = _dispatch_mach_msg_send(a1, v39, v40, v37, v30);
    if (v34)
    {
      if ((v34 & 2) != 0)
      {
        v33 = 1;
      }

      goto LABEL_48;
    }

    if (*(a1 + 118))
    {
      v32 |= 2u;
    }

LABEL_58:
    v38[2] = v29;
    v22 = 0;
    if (!v29)
    {
      v12 = 0;
      atomic_compare_exchange_strong_explicit((v41 + 72), &v12, v38, memory_order_release, memory_order_relaxed);
      v22 = v12 != 0;
    }

    if (v22)
    {
      v26 = *(v41 + 80);
      if (!v26)
      {
        v26 = _dispatch_wait_for_enqueuer((v41 + 80), v41 + 72);
      }

      v38[2] = v26;
    }

    *(v41 + 80) = v38;
    v21 = 0;
    if (*v38 > 0xFFFuLL)
    {
      v20 = 0;
      if (*v38)
      {
        v20 = *v38;
      }

      v21 = *(v20 + 16) == 768;
    }

    if (v21)
    {
      v36 = *(v41 + 64);
      do
      {
        v35 = v36 & 0xFFFFFFC700000000 | 0x3000000000;
        v13 = v36;
        v14 = v36;
        atomic_compare_exchange_strong_explicit((v41 + 64), &v14, v35, memory_order_release, memory_order_relaxed);
        if (v14 != v13)
        {
          v36 = v14;
        }
      }

      while (v14 != v13);
    }

    else
    {
      v36 = *(v41 + 64);
      do
      {
        if ((v36 & 0x2800000000) != 0)
        {
          v35 = v36 & 0xFFFFFFC7FFFFFFFFLL;
        }

        else
        {
          v35 = v36 & 0xFFFFFFDF00000000 | 0x2000000000;
        }

        v15 = v36;
        v16 = v36;
        atomic_compare_exchange_strong_explicit((v41 + 64), &v16, v35, memory_order_release, memory_order_relaxed);
        if (v16 != v15)
        {
          v36 = v16;
        }
      }

      while (v16 != v15);
    }

LABEL_81:
    if ((v36 & 0x800000000) != 0)
    {
      v47 = (v36 & 0x700000000uLL) >> 32;
      v46 = _dispatch_thread_getspecific(25);
      if (v47 > (v46 & 0xF0000u) >> 16)
      {
        _dispatch_thread_setspecific(25, v46 & 0xFFF0FFFF | (v47 << 16));
      }
    }

    v37 = (v35 & 0x700000000) >> 32;
  }

  while (v35);
  if ((v35 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(a1, v37);
    v45 = v33 & 1;
  }

  else
  {
    if (!v35 && (*(a1 + 118) & 2) != 0 && (*(a1 + 116) & 8) == 0)
    {
      v32 |= 0x12u;
    }

    if (((v36 ^ v35) & 0x8000000000) != 0)
    {
      if (v32)
      {
        v32 |= 1u;
      }

      else
      {
        _dispatch_release_2(a1);
      }
    }

    if (v32)
    {
      v19 = 0;
      if (*a1)
      {
        v19 = *a1;
      }

      if (*(a1 + 118))
      {
        v18 = (v35 & 0x700000000) >> 32;
      }

      else
      {
        v18 = 0;
      }

      (*(v19 + 64))(a1, v18, v32, a4, a5, a6, a7, a8);
    }

    v45 = v33;
  }

  return v45 & 1;
}

void _dispatch_mach_msg_not_sent(uint64_t a1, dispatch_object_s *a2, uint64_t a3)
{
  v24 = dispatch_semaphore_signal;
  v25 = _dispatch_lane_invoke;
  v35 = a2;
  v34 = a1;
  v33 = a3;
  v32 = a2;
  reply_disconnected = 0;
  v30 = 0;
  msg = _dispatch_mach_msg_get_msg(a2);
  v28 = *(v32 + 12);
  v3 = _dispatch_thread_getspecific(0);
  v4 = msg[2];
  v5 = msg[5];
  v6 = *(v32 + 4);
  v7 = msg[4];
  v8 = *(v32 + 13);
  v23 = &v18;
  _dispatch_log("%u\t%p\tmachport[0x%08x]: not sent msg id 0x%x, ctxt %p, msg_opts 0x%x, kvoucher 0x%08x, reply on 0x%08x", 1030, v3, v4, v5, v6, v28, v7, v8);
  v9 = 0;
  if ((v28 & 2) == 0)
  {
    v9 = 5;
  }

  v27 = v9;
  if ((*(v34 + 116) & 0x10) != 0 && *(v32 + 4))
  {
    v10 = *(v32 + 4);
    v38 = v34;
    v37 = v10;
    v36 = 0;
    v36 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(v10);
    if (!v36)
    {
      v36 = v38;
    }

    v30 = v36;
  }

  v26 = v32;
  if (v33)
  {
    v22 = v33;
  }

  else
  {
    v22 = 0;
  }

  if (v30)
  {
    v11 = 12;
  }

  else
  {
    v11 = 7;
  }

  reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(v26, v22, v11);
  _dispatch_mach_msg_set_reason(v32, 0, v27);
  _dispatch_mach_handle_or_push_received_msg(v34, v32, 0);
  if (reply_disconnected)
  {
    if (v30)
    {
      v46 = v34;
      v45 = reply_disconnected;
      v44 = v30;
      v43 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, v34);
      v42 = v44;
      v41 = v43;
      v50 = v44;
      v49 = v43;
      v48 = 0;
      v47 = 0;
      v53 = v44;
      v52 = v43;
      v19 = *v44;
      v20 = v44;
      v21 = 0;
      if (v19)
      {
        v21 = v19;
      }

      v15 = *(v21 + 72);
      v40 = v44;
      v39 = v43;
      v51 = *(v45 + 7);
      v51 &= 0x3FFF00uLL;
      v51 >>= 8;
      v16 = __clz(__rbit32(v51));
      if (v51)
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = 0;
      }

      v15(v40, v39, v17, v12, v13, v14);
    }

    else
    {
      _dispatch_mach_handle_or_push_received_msg(v34, reply_disconnected, 0);
    }
  }
}