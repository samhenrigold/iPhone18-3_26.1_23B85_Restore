void *_dispatch_runloop_root_queue_create_4CF(const char *a1, uint64_t a2)
{
  v17 = _dispatch_thread_getspecific(4);
  if (a2)
  {
    return 0;
  }

  v16 = _dispatch_object_alloc(_OS_dispatch_queue_runloop_vtable, 0x78uLL);
  _dispatch_queue_init(v16, 0x40000, 1u, 0x1000000000);
  v16[3] = &off_E0680;
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    v15 = "runloop-queue";
  }

  v16[9] = v15;
  v14 = 0;
  if ((v17 & 0x22000000) == 0)
  {
    v14 = (v17 & 0x3F00) != 0;
  }

  if (v14)
  {
    if ((v17 & 0x20000000) != 0)
    {
      _dispatch_abort(458, (v17 & 0x20000000) == 0);
    }

    v2 = (v17 & 0x3FFF00u) >> 8;
    v3 = __clz(__rbit32(v2));
    if (v2)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    *(v16 + 21) = v17 | (v4 << 8);
  }

  _dispatch_runloop_queue_handle_init(v16);
  if ((v16[10] & 0x40000) == 0)
  {
    _dispatch_abort(2154, (v16[10] & 0x40000) != 0);
  }

  if ((v16[10] & 0x1000000) != 0)
  {
    _dispatch_abort(2160, (v16[10] & 0x1000000) == 0);
  }

  v22 = v16[7];
  do
  {
    v21 = v22 & 0xFFFFFFFF00000003 | _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL;
    v11 = v22;
    v12 = v22;
    atomic_compare_exchange_strong_explicit((v16 + 7), &v12, v21, memory_order_relaxed, memory_order_relaxed);
    if (v12 != v11)
    {
      v22 = v12;
    }
  }

  while (v12 != v11);
  _dispatch_object_debug(v16, "%s", v5, v6, v7, v8, v9, v10, "_dispatch_runloop_root_queue_create_4CF");
  return v16;
}

void _dispatch_runloop_queue_handle_init(void *a1)
{
  v8 = a1;
  v7 = a1;
  v6 = 0;
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  options.reserved[1] = 0;
  *&options.flags = xmmword_BA888;
  context = v7;
  v3 = 0;
  name = 0;
  v1 = 0;
  if (*v7)
  {
    v1 = *v7;
  }

  if (*(v1 + 16) == 394769)
  {
    options.flags |= 2u;
    options.mpl.mpl_qlimit = 1;
  }

  v3 = mach_port_construct(mach_task_self_, &options, context, &name);
  if (v3 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x3CD08);
  }

  v10 = v3;
  v9 = 7896;
  if (v3)
  {
    _dispatch_bug(v9, v10);
  }

  v6 = name;
  v12 = v7;
  v11 = name;
  v7[4] = name;
  _dispatch_program_is_probably_callback_driven = 1;
}

uint64_t _dispatch_runloop_queue_xref_dispose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_runloop_queue_xref_dispose");
  v10 = (atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) & 0x700000000) >> 32;
  if ((*(a1 + 80) & 0x40000) == 0)
  {
    _dispatch_abort(2174, (*(a1 + 80) & 0x40000) != 0);
  }

  if ((*(a1 + 80) & 0x1000000) != 0)
  {
    _dispatch_abort(2180, (*(a1 + 80) & 0x1000000) == 0);
  }

  atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFFF00000003, memory_order_relaxed);
  v9 = 0;
  if (*a1)
  {
    v9 = *a1;
  }

  result = (*(v9 + 64))(a1, v10, 2);
  if (v10)
  {
    if (_dispatch_set_qos_class_enabled)
    {
      return _pthread_qos_override_end_direct();
    }
  }

  return result;
}

void _dispatch_runloop_queue_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_runloop_queue_dispose");
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_runloop_queue_handle_dispose(a1);
  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_handle_dispose(mach_port_context_t result)
{
  v3 = *(result + 32);
  v1 = 0;
  if (v3)
  {
    v1 = v3 != -1;
  }

  if (v1)
  {
    *(result + 32) = 0;
    v2 = mach_port_destruct(mach_task_self_, v3, -1, result);
    if (v2 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x3D28CLL);
    }

    if (v2)
    {
      _dispatch_bug(7952, v2);
    }
  }
}

BOOL _dispatch_runloop_root_queue_perform_4CF(dispatch_object_s *a1)
{
  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  if (*(v4 + 16) != 395025)
  {
    v3 = 0;
    if (*a1)
    {
      v3 = *a1;
    }

    v1 = *(v3 + 16);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x3D3E8);
  }

  dispatch_retain(a1);
  v5 = _dispatch_runloop_queue_drain_one(a1);
  dispatch_release(a1);
  return v5;
}

BOOL _dispatch_runloop_queue_drain_one(void *a1)
{
  v25 = a1;
  if (!a1[6])
  {
    return 0;
  }

  v24 = 0uLL;
  v124 = _dispatch_thread_getspecific(27);
  v122 = (v124 & 0xFFFFFFFFFFFFFFFELL);
  if ((v124 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFFFCLL)
  {
    v123 = 0;
  }

  else
  {
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\twlh[anon]: set current (releasing %p)", 833, v1, v122);
    v126 = v122;
    if (v122)
    {
      if (v126 != -4)
      {
        v125 = v126;
        v139 = v126;
        v136 = 1;
        v135 = 1;
        v137 = 1;
        v131 = 1;
        v130 = 1;
        v132 = 1;
        add_explicit = atomic_fetch_add_explicit((v126 + 96), 0xFFFFFFFF, memory_order_relaxed);
        v133 = add_explicit;
        v128 = add_explicit;
        v134 = add_explicit - 1;
        v138 = add_explicit - 1;
        if (((add_explicit - 1) & 0x80000000) != 0)
        {
          if (v138 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x3D5DCLL);
          }

          *(v139 + 7) = 0xDEAD000000000000;
          v127 = v139;
          _dispatch_object_dealloc(v139);
        }
      }
    }

    _dispatch_thread_setspecific(27, -4);
    v123 = 1;
  }

  v23 = v123;
  v22 = v25;
  v110 = v25;
  v109 = &v24;
  v114 = &v24;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v24);
  _dispatch_thread_setspecific_pair(20, v110, 21, v109);
  v27 = _dispatch_thread_getspecific(4);
  v21 = v27;
  v78 = v27;
  v77 = 1;
  v81 = (v27 & 0x20000000) == 0;
  v80 = 458;
  if ((v27 & 0x20000000) != 0)
  {
    _dispatch_abort(v80, v81);
  }

  v76 = v78 & 0x8E0000FF;
  v79 = (v78 & 0x3FFF00) >> 8;
  v2 = (v78 & 0x3FFF00) >> 8;
  v3 = __clz(__rbit32(v2));
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v76 |= v4 << 8;
  v20 = v76;
  v100 = _dispatch_thread_getspecific(28);
  if (v100)
  {
    v101 = v100;
    os_retain(v100);
  }

  v19 = v100;
  v104 = v20;
  v103 = _dispatch_thread_getspecific(25);
  v102 = v103;
  if (v103)
  {
    if ((v104 & 0xFFF) != 0)
    {
      v102 &= 0x880F0000;
      if ((v103 & 0xFFF) > (v104 & 0xFFFu))
      {
        v14 = v103 & 0xFFF;
      }

      else
      {
        v14 = v104 & 0xFFF;
      }

      v102 |= v14;
      v106 = v104 & 0xF000;
      v108 = v102 & 0xF00;
      if (v106 >> 12 > v108 >> 8)
      {
        v104 &= 0x4400F000u;
      }

      else
      {
        v104 &= 0x40000000u;
      }

      v102 |= v104;
    }

    else
    {
      if ((v102 & 0xFFF) != 0)
      {
        v102 |= 0x40000000u;
      }

      v105 = v104 & 0xF000;
      v107 = v102 & 0xF00;
      if (v105 >> 12 > v107 >> 8)
      {
        v102 &= 0xFFFF0FFF;
        v102 |= v104 & 0x400F000;
      }
    }
  }

  else
  {
    v102 = v104 & 0xFFF0FFFF;
  }

  _dispatch_thread_setspecific(25, v102);
  v18 = v103;
  v38 = 15;
  v37 = _dispatch_thread_getspecific(25);
  v115 = v37 & 0xF0000;
  if ((v37 & 0xF0000) >> 16 < v38)
  {
    v37 &= 0xFFF0FFFF;
    v37 |= v38 << 16;
    _dispatch_thread_setspecific(25, v37);
  }

  memset(v17, 0, sizeof(v17));
  v45 = v25;
  v44 = v25 + 13;
  v43 = 0;
  v41 = v25[13];
  v42 = v41;
  v40 = v41;
  v43 = v41;
  if (!v41)
  {
    v43 = _dispatch_wait_for_enqueuer(v44, (v45 + 6));
  }

  v39 = v43;
  v16 = v43;
  v75 = v25;
  v74 = v43;
  v73 = v43;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v68 = *(v43 + 16);
  v69 = v68;
  v67 = v68;
  v72 = v68;
  v66 = v68;
  v65 = v68;
  v25[13] = v68;
  v64 = v66;
  if (!v72)
  {
    v61 = 0;
    v62 = 0;
    v63 = v75 + 6;
    v60 = 0;
    v59 = (v75 + 6);
    v70 = v75[6];
    while (1)
    {
      v82 = v70;
      if (v73 != (v70 & 0xFFFFFFFFFFFFFFF8))
      {
        break;
      }

      v71 = 0;
      v49 = 0;
      v5 = v70;
      v6 = v70;
      atomic_compare_exchange_strong_explicit(v59, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        v70 = v6;
      }

      v48 = v6 == v5;
      v60 = v6 == v5;
      if (v6 == v5)
      {
        goto LABEL_46;
      }
    }

    v58 = v73;
    v57 = 0;
    v55 = *(v73 + 16);
    v56 = v55;
    v54 = v55;
    v57 = v55;
    if (!v55)
    {
      v57 = _dispatch_wait_for_enqueuer((v58 + 16), (v75 + 6));
    }

    v53 = v57;
    v72 = v57;
    v52 = v57;
    v51 = v57;
    v75[13] = v57;
    v50 = v52;
LABEL_46:
    v47 = v60;
  }

  v46 = v72;
  v15 = v72;
  _dispatch_continuation_pop_inline(v16, v17, 0x80000, v25);
  if (!v15)
  {
    v13 = 0;
    if (*v25)
    {
      v13 = *v25;
    }

    (*(v13 + 64))(v25, 0);
  }

  v7 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: runloop queue restore", 8223, v7, v19);
  v113 = v18;
  v112 = _dispatch_thread_getspecific(25);
  v113 &= 0xFFF0FFFF;
  v113 |= v112 & 0xF0000;
  _dispatch_thread_setspecific(25, v113);
  v117 = _dispatch_thread_getspecific(25);
  v119 = v117 & 0xF0000;
  v116 = (v117 & 0xF0000) >> 16;
  if ((v117 & 0xF0000) >> 16)
  {
    v117 &= 0xFFF0FFFF;
    _dispatch_thread_setspecific(25, v117);
    v118 = v116 != 15;
  }

  else
  {
    v118 = 0;
  }

  v29 = v21;
  v28 = v19;
  if (v21 == -1)
  {
    v29 = 0;
  }

  v33 = v29;
  v32 = v28;
  v31 = 6;
  v86 = v29;
  v99 = v29 != -1;
  v98 = 2409;
  if (v29 == -1)
  {
    _dispatch_abort(v98, v99);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v97 = v86;
    v96 = 4261412863;
    v95 = 0;
    v86 &= 0xFFFFFFFF02FFFFFFLL;
    v88 = _dispatch_thread_getspecific(4);
    v85 = v88;
    v84 = 0x1000000;
    v83 = 2281701376;
    if ((v88 & 0x1000000) != 0)
    {
      if (v86)
      {
        v12 = v86;
      }

      else
      {
        v94 = v85;
        v93 = v84;
        v92 = 0;
        v12 = v85 & (~v84 | 0xFFFFFF);
      }

      v87 = v12;
    }

    else
    {
      v91 = v85;
      v90 = v83;
      v89 = 0;
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

  v33 = v87;
  if (v87)
  {
LABEL_81:
    v34 = _dispatch_set_priority_and_voucher_slow(v33, v32, v31);
    goto LABEL_82;
  }

  if (v32 != -1)
  {
    v11 = v32;
    if (v11 == _dispatch_thread_getspecific(28))
    {
      v30 = (v31 & 4) != 0;
      if ((v31 & 2) != 0)
      {
        if (v30 && v32)
        {
          object = v32;
          os_release(v32);
        }

        v32 = -1;
      }

      else if (!v30 && v32)
      {
        v36 = v32;
        os_retain(v32);
      }

      v34 = v32;
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v34 = -1;
LABEL_82:
  v111 = &v24;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v24);
  if (v23)
  {
    v8 = _dispatch_thread_getspecific(27) == -4;
    v121 = v8;
    v120 = 879;
    if (!v8)
    {
      _dispatch_abort(v120, v121);
    }

    v9 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\twlh[anon]: clear current", 880, v9);
    _dispatch_thread_setspecific(27, 0);
    _dispatch_thread_setspecific(5, 0);
  }

  _dispatch_force_cache_cleanup();
  return v15 != 0;
}

void _dispatch_runloop_root_queue_wakeup_4CF(uint64_t *a1)
{
  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  if (*(v3 + 16) != 395025)
  {
    v2 = 0;
    if (*a1)
    {
      v2 = *a1;
    }

    v1 = *(v2 + 16);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x3E300);
  }

  _dispatch_runloop_queue_wakeup(a1, 0, 0);
}

uint64_t _dispatch_runloop_root_queue_get_port_4CF(uint64_t *a1)
{
  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  if (*(v4 + 16) != 395025)
  {
    v3 = 0;
    if (*a1)
    {
      v3 = *a1;
    }

    v1 = *(v3 + 16);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x3E440);
  }

  return *(a1 + 8);
}

uint64_t _dispatch_get_main_queue_handle_4CF()
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, &_dispatch_main_q, _dispatch_runloop_queue_handle_init);
  }

  return unk_E0020;
}

void _dispatch_main_queue_callback_4CF()
{
  if (!dword_E0070)
  {
    dword_E0070 = 1;
    _dispatch_main_queue_drain(&_dispatch_main_q);
    dword_E0070 = 0;
  }
}

void _dispatch_main_queue_drain(void *result)
{
  v31 = result;
  v30 = 0uLL;
  if (!result[6])
  {
    return;
  }

  v29 = v31;
  v43 = v31;
  v47 = v31;
  v45 = *(v31 + 20);
  v46 = v45;
  v44 = v45;
  if (((BYTE2(v45) >> 2) & 1) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_main_queue_callback_4CF called after dispatch_main()";
    __break(1u);
    JUMPOUT(0x3E62CLL);
  }

  v26 = v31[7];
  v27 = v26;
  v25 = v26;
  v28 = v26;
  v32 = v26;
  v62 = v26;
  if (((v26 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    v24 = v28;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_main_queue_callback_4CF called from the wrong thread";
    qword_E42C0 = v28;
    __break(1u);
    JUMPOUT(0x3E6C8);
  }

  predicate = &_dispatch_main_q_handle_pred;
  context = v31;
  function = _dispatch_runloop_queue_handle_init;
  if (_dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(predicate, context, function);
  }

  v105 = _dispatch_thread_getspecific(27);
  v103 = (v105 & 0xFFFFFFFFFFFFFFFELL);
  if ((v105 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFFFCLL)
  {
    v104 = 0;
  }

  else
  {
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\twlh[anon]: set current (releasing %p)", 833, v1, v103);
    v107 = v103;
    if (v103)
    {
      if (v107 != -4)
      {
        v106 = v107;
        v120 = v107;
        v117 = 1;
        v116 = 1;
        v118 = 1;
        v112 = 1;
        v111 = 1;
        v113 = 1;
        add_explicit = atomic_fetch_add_explicit((v107 + 96), 0xFFFFFFFF, memory_order_relaxed);
        v114 = add_explicit;
        v109 = add_explicit;
        v115 = add_explicit - 1;
        v119 = add_explicit - 1;
        if (((add_explicit - 1) & 0x80000000) != 0)
        {
          if (v119 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x3E870);
          }

          *(v120 + 7) = 0xDEAD000000000000;
          v108 = v120;
          _dispatch_object_dealloc(v120);
        }
      }
    }

    _dispatch_thread_setspecific(27, -4);
    v104 = 1;
  }

  if ((v104 & 1) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
    __break(1u);
    JUMPOUT(0x3E8E0);
  }

  v23 = v31;
  v94 = v31;
  v93 = &v30;
  v92 = 0;
  v95 = &v30;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v30);
  _dispatch_thread_setspecific_pair(20, v94, 21, v92);
  v33 = _dispatch_thread_getspecific(4);
  v22 = v33;
  v57 = v33;
  v56 = 1;
  v60 = (v33 & 0x20000000) == 0;
  v59 = 458;
  if ((v33 & 0x20000000) != 0)
  {
    _dispatch_abort(v59, v60);
  }

  v55 = v57 & 0x8E0000FF;
  v58 = (v57 & 0x3FFF00) >> 8;
  v2 = (v57 & 0x3FFF00) >> 8;
  v3 = __clz(__rbit32(v2));
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v55 |= v4 << 8;
  v21 = v55;
  v49 = v55 & 0xF00;
  v20 = v49 >> 8;
  v80 = _dispatch_thread_getspecific(28);
  if (v80)
  {
    v81 = v80;
    os_retain(v80);
  }

  v19 = v80;
  LOWORD(v48) = *(v31 + 21);
  v48 &= 0xF00u;
  if (v20 != v48 >> 8)
  {
    _dispatch_main_queue_update_priority_from_thread();
  }

  v84 = v21;
  v83 = _dispatch_thread_getspecific(25);
  v82 = v83;
  if (v83)
  {
    if ((v84 & 0xFFF) != 0)
    {
      v82 &= 0x880F0000;
      if ((v83 & 0xFFF) > (v84 & 0xFFFu))
      {
        v11 = v83 & 0xFFF;
      }

      else
      {
        v11 = v84 & 0xFFF;
      }

      v82 |= v11;
      v86 = v84 & 0xF000;
      v88 = v82 & 0xF00;
      if (v86 >> 12 > v88 >> 8)
      {
        v84 &= 0x4400F000u;
      }

      else
      {
        v84 &= 0x40000000u;
      }

      v82 |= v84;
    }

    else
    {
      if ((v82 & 0xFFF) != 0)
      {
        v82 |= 0x40000000u;
      }

      v85 = v84 & 0xF000;
      v87 = v82 & 0xF00;
      if (v85 >> 12 > v87 >> 8)
      {
        v82 &= 0xFFFF0FFF;
        v82 |= v84 & 0x400F000;
      }
    }
  }

  else
  {
    v82 = v84 & 0xFFF0FFFF;
  }

  _dispatch_thread_setspecific(25, v82);
  v18 = v83;
  v51 = 15;
  v50 = _dispatch_thread_getspecific(25);
  v96 = v50 & 0xF0000;
  if ((v50 & 0xF0000) >> 16 < v51)
  {
    v50 &= 0xFFF0FFFF;
    v50 |= v51 << 16;
    _dispatch_thread_setspecific(25, v50);
  }

  memset(v17, 0, 32);
  v14 = v31[13];
  if (!v14)
  {
    v14 = _dispatch_wait_for_enqueuer(v31 + 13, (v31 + 6));
  }

  v31[13] = 0;
  v61 = atomic_exchange_explicit((v31 + 6), 0, memory_order_release);
  v15 = v61 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14;
  do
  {
    v13 = 0;
    if (v16 != v15)
    {
      v12 = v16[2];
      if (!v12)
      {
        v12 = _dispatch_wait_for_enqueuer(v16 + 2, 0);
      }

      v13 = v12;
    }

    _dispatch_continuation_pop_inline(v16, v17, 0x80000, v31);
    v16 = v13;
  }

  while (v13);
  v10 = 0;
  if (*v31)
  {
    v10 = *v31;
  }

  (*(v10 + 64))(v31, 0);
  v5 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: main queue restore", 8186, v5, v19);
  v91 = v18;
  v90 = _dispatch_thread_getspecific(25);
  v91 &= 0xFFF0FFFF;
  v91 |= v90 & 0xF0000;
  _dispatch_thread_setspecific(25, v91);
  v98 = _dispatch_thread_getspecific(25);
  v100 = v98 & 0xF0000;
  v97 = (v98 & 0xF0000) >> 16;
  if ((v98 & 0xF0000) >> 16)
  {
    v98 &= 0xFFF0FFFF;
    _dispatch_thread_setspecific(25, v98);
    v99 = v97 != 15;
  }

  else
  {
    v99 = 0;
  }

  v35 = v22;
  v34 = v19;
  if (v22 == -1)
  {
    v35 = 0;
  }

  v39 = v35;
  v38 = v34;
  v37 = 6;
  v66 = v35;
  v79 = v35 != -1;
  v78 = 2409;
  if (v35 == -1)
  {
    _dispatch_abort(v78, v79);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v77 = v66;
    v76 = 4261412863;
    v75 = 0;
    v66 &= 0xFFFFFFFF02FFFFFFLL;
    v68 = _dispatch_thread_getspecific(4);
    v65 = v68;
    v64 = 0x1000000;
    v63 = 2281701376;
    if ((v68 & 0x1000000) != 0)
    {
      if (v66)
      {
        v9 = v66;
      }

      else
      {
        v74 = v65;
        v73 = v64;
        v72 = 0;
        v9 = v65 & (~v64 | 0xFFFFFF);
      }

      v67 = v9;
    }

    else
    {
      v71 = v65;
      v70 = v63;
      v69 = 0;
      v65 &= ~v63 | 0xFFFFFF;
      if (v66 == v65)
      {
        v67 = 0;
      }

      else
      {
        v67 = v66;
      }
    }
  }

  else
  {
    v67 = 0;
  }

  v39 = v67;
  if (v67)
  {
LABEL_84:
    v40 = _dispatch_set_priority_and_voucher_slow(v39, v38, v37);
    goto LABEL_85;
  }

  if (v38 != -1)
  {
    v8 = v38;
    if (v8 == _dispatch_thread_getspecific(28))
    {
      v36 = (v37 & 4) != 0;
      if ((v37 & 2) != 0)
      {
        if (v36 && v38)
        {
          object = v38;
          os_release(v38);
        }

        v38 = -1;
      }

      else if (!v36 && v38)
      {
        v42 = v38;
        os_retain(v38);
      }

      v40 = v38;
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v40 = -1;
LABEL_85:
  v89 = &v30;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v30);
  v6 = _dispatch_thread_getspecific(27) == -4;
  v102 = v6;
  v101 = 879;
  if (!v6)
  {
    _dispatch_abort(v101, v102);
  }

  v7 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\twlh[anon]: clear current", 880, v7);
  _dispatch_thread_setspecific(27, 0);
  _dispatch_thread_setspecific(5, 0);
  _dispatch_force_cache_cleanup();
}

uint64_t _dispatch_main_queue_push(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = (_dispatch_thread_getspecific(4) & 0x3FFF00uLL) >> 8;
  v4 = __clz(__rbit32(v3));
  if (v3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  *(a2 + 16) = 0;
  _dispatch_thread_setspecific(122, (a1 + 6));
  v14 = a1[6];
  do
  {
    if (v15 > (v14 & 7u))
    {
      v13 = v15;
    }

    else
    {
      v13 = v14 & 7;
    }

    if ((a2 & 7) != 0)
    {
      _dispatch_abort(1655, (a2 & 7) == 0);
    }

    if ((v13 & 0xFFFFFFF8) != 0)
    {
      _dispatch_abort(1656, (v13 & 0xFFFFFFF8) == 0);
    }

    v6 = v14;
    v7 = v14;
    atomic_compare_exchange_strong_explicit((a1 + 6), &v7, a2 | v13, memory_order_release, memory_order_relaxed);
    if (v7 != v6)
    {
      v14 = v7;
    }
  }

  while (v7 != v6);
  if ((v14 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    *((v14 & 0xFFFFFFFFFFFFFFF8) + 16) = a2;
  }

  else
  {
    a1[13] = a2;
  }

  result = _dispatch_thread_setspecific(122, 0);
  if (v14)
  {
    if ((v14 & 7u) < v15 && (a1[10] & 0x40000) != 0)
    {
      v11 = 0;
      if (*a1)
      {
        v11 = *a1;
      }

      return (*(v11 + 64))(a1, a3, 2);
    }

    else
    {
      if (a3 > (*(a1 + 21) & 0xF00u) >> 8)
      {
        v19 = a3;
      }

      else
      {
        v19 = 0;
      }

      v20 = ((*(a1 + 15) << 32) & 0x700000000) >> 32;
      v10 = 1;
      if (v20)
      {
        v10 = v20 < v19;
      }

      if (v10)
      {
        v9 = 0;
        if (*a1)
        {
          v9 = *a1;
        }

        return (*(v9 + 64))(a1, v19, 0);
      }
    }
  }

  else
  {
    v12 = 0;
    if (*a1)
    {
      v12 = *a1;
    }

    return (*(v12 + 64))(a1, a3, 2);
  }

  return result;
}

void _dispatch_main_queue_wakeup(uint64_t a1, unsigned int a2, char a3)
{
  if ((*(a1 + 80) & 0x40000) != 0)
  {
    if ((*(a1 + 80) & 0x1000000) != 0)
    {
      _dispatch_abort(8394, (*(a1 + 80) & 0x1000000) == 0);
    }

    _dispatch_runloop_queue_wakeup(a1, a2, a3);
  }

  else
  {
    _dispatch_lane_wakeup(a1, a2, a3);
  }
}

void dispatch_main(void)
{
  if (_dispatch_root_queues_pred != -1)
  {
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }

  if (pthread_main_np())
  {
    if (!dword_E0070)
    {
      dword_E0070 = 1;
      _dispatch_main_queue_drain(&_dispatch_main_q);
      dword_E0070 = 0;
      _dispatch_object_debug(&_dispatch_main_q, "%s", v0, v1, v2, v3, v4, v5, "dispatch_main");
      _dispatch_program_is_probably_callback_driven = 1;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      pthread_exit(0);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main called from a block on the main queue";
    __break(1u);
  }

  else
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main() must be called on the main thread";
    __break(1u);
  }

  JUMPOUT(0x3FB68);
}

dispatch_queue_global_t dispatch_get_global_queue(intptr_t identifier, uintptr_t flags)
{
  if ((flags & 0xFFFFFFFFFFFFFFF9) != 0)
  {
    return 0;
  }

  if ((flags & 2) != 0 && (flags & 4) != 0)
  {
    return 0;
  }

  switch(identifier)
  {
    case -32768:
      v4 = 2;
      break;
    case -128:
      v4 = 3;
      break;
    case -2:
      v4 = 3;
      break;
    default:
      if (identifier)
      {
        if (identifier == 2)
        {
          v4 = 5;
        }

        else
        {
          switch(identifier)
          {
            case 5:
              v5 = 1;
              break;
            case 9:
              v5 = 2;
              break;
            case 0x11:
              v5 = 3;
              break;
            case 0x15:
              v5 = 4;
              break;
            case 0x19:
              v5 = 5;
              break;
            case 0x21:
              v5 = 6;
              break;
            default:
              v5 = 0;
              break;
          }

          v4 = v5;
        }
      }

      else
      {
        v4 = 4;
      }

      break;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  if ((flags & 2) != 0)
  {
    v6 = 1;
  }

  else if ((flags & 4) != 0)
  {
    v6 = 2;
  }

  return &(&_dispatch_root_queues)[16 * (3 * v4 + v6 - 3)];
}

uint64_t libdispatch_init()
{
  if (_dispatch_getenv_BOOL("LIBDISPATCH_STRICT", 0))
  {
    _dispatch_mode |= 1u;
  }

  if (_dispatch_getenv_BOOL("LIBDISPATCH_COOPERATIVE_POOL_STRICT", 0))
  {
    _dispatch_mode |= 4u;
  }

  if (getenv("LIBDISPATCH_DISABLE_KEVENT_WQ"))
  {
    _dispatch_kevent_workqueue_enabled = 0;
  }

  v4 = qos_class_main();
  switch(v4)
  {
    case 5u:
      v5 = 1;
      break;
    case 9u:
      v5 = 2;
      break;
    case 0x11u:
      v5 = 3;
      break;
    case 0x15u:
      v5 = 4;
      break;
    case 0x19u:
      v5 = 5;
      break;
    case 0x21u:
      v5 = 6;
      break;
    default:
      v5 = 0;
      break;
  }

  if (v5)
  {
    v3 = (v5 << 8) & 0xF00 | 0xFF;
  }

  else
  {
    v3 = 0;
  }

  dword_E0054 = v3;
  if (!getenv("LIBDISPATCH_DISABLE_SET_QOS"))
  {
    _dispatch_set_qos_class_enabled = 1;
  }

  _dispatch_thread_key_create(&dispatch_priority_key, 0);
  _dispatch_thread_key_create(&dispatch_r2k_key, 0);
  _dispatch_thread_key_create(&dispatch_queue_key, _dispatch_queue_cleanup);
  _dispatch_thread_key_create(&dispatch_frame_key, _dispatch_frame_cleanup);
  _dispatch_thread_key_create(&dispatch_cache_key, _dispatch_cache_cleanup);
  _dispatch_thread_key_create(&dispatch_context_key, _dispatch_context_cleanup);
  _dispatch_thread_key_create(&dispatch_pthread_root_queue_observer_hooks_key, 0);
  _dispatch_thread_key_create(&dispatch_basepri_key, 0);
  _dispatch_thread_key_create(&dispatch_wlh_key, _dispatch_wlh_cleanup);
  _dispatch_thread_key_create(&dispatch_voucher_key, _voucher_thread_cleanup);
  _dispatch_thread_key_create(&dispatch_deferred_items_key, _dispatch_deferred_items_cleanup);
  _dispatch_thread_key_create(&dispatch_quantum_key, 0);
  _dispatch_thread_key_create(&dispatch_dsc_key, 0);
  _dispatch_thread_key_create(&os_workgroup_join_token_key, _os_workgroup_join_token_tsd_cleanup);
  _dispatch_thread_key_create(&os_workgroup_key, _os_workgroup_tsd_cleanup);
  _dispatch_thread_key_create(&dispatch_enqueue_key, 0);
  _dispatch_thread_key_create(&dispatch_msgv_aux_key, &_free);
  _dispatch_thread_key_create(&dispatch_set_threadname_key, 0);
  _dispatch_thread_setspecific(20, &_dispatch_main_q);
  if ((unk_E0050 & 0x40000) == 0)
  {
    _dispatch_abort(2154, (unk_E0050 & 0x40000) != 0);
  }

  if ((unk_E0050 & 0x1000000) != 0)
  {
    _dispatch_abort(2160, (unk_E0050 & 0x1000000) == 0);
  }

  v7 = qword_E0038[0];
  do
  {
    v8 = _dispatch_thread_getspecific(3);
    v0 = v7;
    v1 = v7;
    atomic_compare_exchange_strong_explicit(qword_E0038, &v1, v7 & 0xFFFFFFFF00000003 | v8 & 0xFFFFFFFC, memory_order_relaxed, memory_order_relaxed);
    if (v1 != v0)
    {
      v7 = v1;
    }
  }

  while (v1 != v0);
  v6 = _dispatch_thread_getspecific(25);
  if ((v6 & 0xF0000u) >> 16 < 0xF)
  {
    _dispatch_thread_setspecific(25, v6 & 0xFFF0FFFF | 0xF0000);
  }

  _dispatch_time_init();
  _os_object_atfork_prepare();
  _os_object_atfork_prepare();
  _voucher_init();
  return _workgroup_init();
}

void *_dispatch_thread_key_create(void *result, uint64_t a2)
{
  if (*result && a2)
  {
    result = pthread_key_init_np();
    if (result)
    {
      _dispatch_abort(119, result);
    }
  }

  return result;
}

void _dispatch_queue_cleanup(dispatch_queue_s *a1)
{
  if (a1 != &_dispatch_main_q)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch queue is running";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x4065CLL);
  }

  _dispatch_queue_cleanup2();
}

void _dispatch_frame_cleanup(uint64_t a1)
{
  qword_E4290 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch frame is active";
  qword_E42C0 = a1;
  __break(1u);
}

void _dispatch_cache_cleanup(void *result)
{
  while (1)
  {
    v2 = result;
    if (!result)
    {
      break;
    }

    result = result[2];
    _dispatch_continuation_free_to_heap(v2);
  }
}

void _dispatch_context_cleanup(uint64_t a1)
{
  qword_E4290 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch context is set";
  qword_E42C0 = a1;
  __break(1u);
}

void _dispatch_wlh_cleanup(uint64_t a1)
{
  v2 = (a1 & 0xFFFFFFFFFFFFFFFELL);
  v1 = atomic_fetch_add_explicit(((a1 & 0xFFFFFFFFFFFFFFFELL) + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
  if (v1 < 0)
  {
    if (v1 <= -2)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x40838);
    }

    v2[7] = 0xDEAD000000000000;
    _dispatch_object_dealloc(v2);
  }
}

void _dispatch_deferred_items_cleanup(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Premature thread exit with unhandled deferred items";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x408BCLL);
  }

  _dispatch_free_deferred_unotes((a1 & 0xFFFFFFFFFFFFFFFELL));
}

void _dispatch_queue_atfork_child()
{
  if ((unk_E0050 & 0x40000) != 0)
  {
    if ((unk_E0050 & 0x1000000) != 0)
    {
      _dispatch_abort(2160, (unk_E0050 & 0x1000000) == 0);
    }

    v3 = qword_E0038[0];
    do
    {
      v4 = _dispatch_thread_getspecific(3);
      v0 = v3;
      v1 = v3;
      atomic_compare_exchange_strong_explicit(qword_E0038, &v1, v3 & 0xFFFFFFFF00000003 | v4 & 0xFFFFFFFC, memory_order_relaxed, memory_order_relaxed);
      if (v1 != v0)
      {
        v3 = v1;
      }
    }

    while (v1 != v0);
  }

  if (_dispatch_unsafe_fork)
  {
    unk_E0068 = 256;
    unk_E0030 = 256;
    qword_E0168 = 256;
    qword_E0130 = 256;
    for (i = 0; i < 0x12; ++i)
    {
      (&_dispatch_root_queues)[16 * i + 13] = (&stru_B8 + 72);
      (&_dispatch_root_queues)[16 * i + 6] = (&stru_B8 + 72);
    }
  }
}

void _dispatch_fork_becomes_unsafe_slow()
{
  if ((atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 1u, memory_order_relaxed) & 2) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Transition to multithreaded is prohibited";
    __break(1u);
    JUMPOUT(0x40C50);
  }
}

uint64_t _dispatch_prohibit_transition_to_multithreaded(uint64_t result)
{
  if (result)
  {
    if (atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 2u, memory_order_relaxed))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: The executable is already multithreaded";
      __break(1u);
      JUMPOUT(0x40D10);
    }
  }

  else
  {
    atomic_fetch_and_explicit(&_dispatch_unsafe_fork, 0xFDu, memory_order_relaxed);
  }

  return result;
}

__n128 _dispatch_thread_getspecific_pair(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a3 != a1 + 1)
  {
    _dispatch_abort(295, a3 == a1 + 1);
  }

  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * a1);
  *a2 = result.n128_u64[0];
  *a4 = result.n128_u64[1];
  return result;
}

void _dispatch_block_async_invoke2(void *a1, char a2)
{
  v3 = _Block_get_invoke_fn(a1);
  v4 = 0;
  if (v3)
  {
    v4 = v3;
  }

  if (v4 == _dispatch_block_special_invoke)
  {
    if (a1[4] != 3512316172)
    {
      v2 = a1[4];
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x40F7CLL);
    }

    v10 = a1 + 4;
  }

  else
  {
    v10 = 0;
  }

  v6 = *(v10 + 4);
  if ((v6 >> 2))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x40FE4);
  }

  if ((v6 & 1) == 0)
  {
    (*(v10[5] + 16))();
  }

  if ((v6 & 8) == 0 && !atomic_fetch_add_explicit((v10 + 20), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(v10[6]);
  }

  v5 = __swp(0, v10 + 14);
  if (v5)
  {
    _dispatch_release_2(v5);
  }

  if (a2)
  {
    _Block_release(a1);
  }
}

void _dispatch_lane_non_barrier_complete(uint64_t a1, unsigned int a2)
{
  v9 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL;
  v11 = *(a1 + 56);
  do
  {
    v10 = v11 - 0x20000000000;
    if ((v11 & 0xFFFFFFFC) != 0)
    {
      v10 |= 0x8000000000uLL;
    }

    else if (v10 < 0x20000000000000)
    {
      v15 = v11 - 0x20000000000;
      if ((v10 & 0x10000000000) != 0)
      {
        v14 = v11 + 0x3FFF0000000000;
      }

      else
      {
        v14 = v10 + (*(a1 + 80) << 41) + 0x40000000000000;
      }

      if ((v14 & 0x3FFE0000000000) == 0x20000000000000)
      {
        v15 = v14 & 0xFFFFFF7FFFFFFFFFLL | v9;
      }

      else if ((v11 & 0x8000000000) != 0)
      {
        v15 = v10 | 1;
      }

      v10 = v15;
    }

    v5 = v11;
    v6 = v11;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v6, v10, memory_order_relaxed, memory_order_relaxed);
    if (v6 != v5)
    {
      v11 = v6;
    }
  }

  while (v6 != v5);
  v8 = 0;
  if ((v11 & 0x1000000000) != 0)
  {
    v8 = (v11 & 0x800000000) != 0;
  }

  if (v8)
  {
    v17 = (v11 & 0x700000000uLL) >> 32;
    v16 = _dispatch_thread_getspecific(25);
    if (v17 > (v16 & 0xF0000u) >> 16)
    {
      _dispatch_thread_setspecific(25, v16 & 0xFFF0FFFF | (v17 << 16));
    }
  }

  if (((v11 ^ v10) & 0x40000000000000) != 0)
  {
    _dispatch_lane_barrier_complete(a1, 0, a2);
  }

  else if ((v11 ^ v10))
  {
    if ((a2 & 1) == 0)
    {
      _dispatch_retain_2(a1);
    }

    if ((v10 & 0x2000000000) != 0)
    {
      _dispatch_abort(1026, (v10 & 0x2000000000) == 0);
    }

    v7 = 0;
    if (**(a1 + 24))
    {
      v7 = **(a1 + 24);
    }

    (*(v7 + 72))(*(a1 + 24), a1, (v10 & 0x700000000) >> 32, v2, v3, v4);
  }

  else if (a2)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

__n128 _dispatch_thread_setspecific_pair(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a3 != a1 + 1)
  {
    _dispatch_abort(339, a3 == a1 + 1);
  }

  v5.n128_u64[0] = a2;
  v5.n128_u64[1] = a4;
  result = v5;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * a1) = v5;
  return result;
}

__n128 _dispatch_thread_getspecific_packed_pair(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a2 != a1 + 1)
  {
    _dispatch_abort(318, a2 == a1 + 1);
  }

  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * a1);
  *a3 = result;
  return result;
}

__n128 _dispatch_thread_setspecific_packed_pair(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a2 != a1 + 1)
  {
    _dispatch_abort(360, a2 == a1 + 1);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *a3;
  *(StatusReg + 8 * a1) = *a3;
  return result;
}

void _dispatch_sync_f_slow(uint64_t *a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4, void *a5, uint64_t a6)
{
  v14 = a1;
  v13 = a5;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a6;
  v8 = a1;
  v7 = a5;
  if (a5[3])
  {
    v15 = _dispatch_thread_getspecific(4);
    __b[14] = v15;
    memset(__b, 0, 0x70uLL);
    __b[0] = v9 | 1;
    __b[1] = v15 | 0x10000000;
    __b[2] = 0;
    __b[3] = _dispatch_thread_getspecific(28);
    __b[4] = _dispatch_async_and_wait_invoke;
    __b[5] = __b;
    __b[6] = 0;
    __b[7] = v8;
    __b[8] = v11;
    __b[9] = v12;
    memset(&__b[10], 0, 20);
    HIDWORD(__b[12]) = _dispatch_thread_getspecific(3);
    LOWORD(__b[13]) = 0;
    BYTE2(__b[13]) &= 0xFCu;
    BYTE2(__b[13]) &= ~4u;
    BYTE2(__b[13]) &= ~8u;
    BYTE2(__b[13]) &= ~0x10u;
    BYTE2(__b[13]) &= ~0x20u;
    BYTE2(__b[13]) &= ~0x40u;
    BYTE2(__b[13]) &= ~0x80u;
    v19 = v8;
    v18 = __b;
    v17 = 0;
    v16 = 0;
    v25 = v8;
    v24 = __b;
    __DISPATCH_WAIT_FOR_QUEUE__(__b, v7);
    if (__b[8])
    {
      v26 = v8;
      v23 = v8;
      v22 = __b;
      v21 = 0;
      v20 = 0;
      v28 = v8;
      v27 = __b;
      _dispatch_sync_invoke_and_complete_recurse(v8, v12, v11, v10, __b);
    }

    else
    {
      _dispatch_sync_complete_recurse(v8, __b[7], v10);
    }
  }

  else
  {
    __b[15] = v7;
    _dispatch_sync_function_invoke(v7, v12, v11);
  }
}

void _dispatch_sync_recurse(uint64_t *a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4)
{
  v9 = _dispatch_thread_getspecific(3);
  v8 = a1[3];
  do
  {
    if (*(v8 + 80) == 1)
    {
      v16 = (4096 - *(v8 + 80)) << 41;
      v14 = 0;
      v15 = *(v8 + 56);
      do
      {
        if (v15 != (v16 | v15 & 0x3000000000))
        {
          break;
        }

        v4 = v15;
        v5 = v15;
        atomic_compare_exchange_strong_explicit((v8 + 56), &v5, v9 & 0xFFFFFFFC | 0x60000000000002 | v15 & 0x3000000000, memory_order_acquire, memory_order_acquire);
        if (v5 != v4)
        {
          v15 = v5;
        }

        v14 = v5 == v4;
      }

      while (v5 != v4);
      if (!v14)
      {
        _dispatch_sync_f_slow(a1, a2, a3, a4, v8, 2);
        return;
      }
    }

    else
    {
      if (*(v8 + 48))
      {
        v18 = 0;
      }

      else
      {
        v17 = *(v8 + 56);
        do
        {
          if (v17 >= 0x40000000000000 || (v17 & 0x8000000000) != 0 || (v17 & 0x10000000000) != 0)
          {
            v18 = 0;
            goto LABEL_22;
          }

          v6 = v17;
          v7 = v17;
          atomic_compare_exchange_strong_explicit((v8 + 56), &v7, v17 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
          if (v7 != v6)
          {
            v17 = v7;
          }
        }

        while (v7 != v6);
        v18 = 1;
      }

LABEL_22:
      if ((v18 & 1) == 0)
      {
        _dispatch_sync_f_slow(a1, a2, a3, a4, v8, 0);
        return;
      }
    }

    v8 = *(v8 + 24);
  }

  while (*(v8 + 24));
  _dispatch_sync_invoke_and_complete_recurse(a1, a2, a3, a4, 0);
}

void _dispatch_lane_barrier_sync_invoke_and_complete(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0uLL;
  v29 = a1;
  v28 = &v13;
  v31 = &v13;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v13);
  _dispatch_thread_setspecific_pair(20, v29, 21, v28);
  v23 = v15;
  v22 = v14;
  if (v14 == _dispatch_call_block_and_release && v23)
  {
    v8 = _Block_get_invoke_fn(v23);
    v9 = 0;
    if (v8)
    {
      v9 = v8;
    }

    v7 = v9;
  }

  else
  {
    v7 = v22;
  }

  v21 = v7;
  v25 = v23;
  v24 = v7;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  _dispatch_client_callout(v23, v22);
  v27 = v23;
  v26 = v21;
  v30 = &v13;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v13);
  v32 = a4;
  v37 = 772079660;
  v36 = a4;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v38 = a4;
  v6 = 1;
  if (!*(a1 + 48))
  {
    v6 = *(a1 + 80) > 1u;
  }

  if (!v6)
  {
    v10 = *(a1 + 56);
    while ((v10 & 0xFF80008800000001) == 0)
    {
      v4 = v10;
      v5 = v10;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v5, (v10 - 0x40020000000000) & 0xFFFFFFF000000001, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v10 = v5;
      }

      if (v5 == v4)
      {
        if ((v10 & 0x2000000000) != 0)
        {
          _dispatch_event_loop_assert_not_owned(a1);
        }

        return;
      }
    }
  }

  _dispatch_lane_barrier_complete(a1, 0, 0);
}

uint64_t _dispatch_async_and_wait_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  v9 = *(a1 + 56);
  v8 = 0;
  v8 = (*(a1 + 106) & 3) << 24;
  v7 = 0;
  if ((v8 & 0x1000000) != 0)
  {
    v7 = _dispatch_autorelease_pool_push();
  }

  v6 = 0uLL;
  v24 = v9;
  v27 = v9;
  v26 = &v6;
  v25 = v10 + 80;
  v28 = &v6;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v6);
  _dispatch_thread_setspecific_pair(20, v27, 21, v25);
  v1 = *(v10 + 64);
  v18 = *(v10 + 72);
  v17 = v1;
  if (v1 == _dispatch_call_block_and_release && v18)
  {
    v4 = _Block_get_invoke_fn(v18);
    v5 = 0;
    if (v4)
    {
      v5 = v4;
    }

    v3 = v5;
  }

  else
  {
    v3 = v17;
  }

  v16 = v3;
  v20 = v18;
  v19 = v3;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  _dispatch_client_callout(v18, v17);
  v22 = v18;
  v21 = v16;
  v23 = &v6;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v6);
  if (v7)
  {
    _dispatch_autorelease_pool_pop(v7);
  }

  result = _dispatch_thread_getspecific(20);
  *(v10 + 56) = result;
  *(v10 + 64) = 0;
  if (*(v10 + 48) != -4)
  {
    return _dispatch_event_loop_cancel_waiter(v10);
  }

  v35 = v10 + 96;
  v32 = 1;
  v31 = 1;
  v33 = 1;
  add_explicit = atomic_fetch_add_explicit((v10 + 96), 1u, memory_order_release);
  v34 = add_explicit;
  v29 = add_explicit;
  if (add_explicit)
  {
    return _dispatch_thread_event_signal_slow(v35);
  }

  return result;
}

uint64_t __DISPATCH_WAIT_FOR_QUEUE__(uint64_t a1, void *a2)
{
  for (i = a2[7]; ; i = v3)
  {
    if ((i & 0xFF80000000000000) != 0 || (i & 0x2000000000) == 0 || (i & 2) == 0)
    {
      v20 = i;
      goto LABEL_9;
    }

    v2 = i;
    v3 = i;
    atomic_compare_exchange_strong_explicit((a2 + 7), &v3, i | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      break;
    }
  }

  v20 = i | 0x800000000;
LABEL_9:
  if (((v20 ^ *(a1 + 100)) & 0xFFFFFFFC) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_sync called on queue already owned by current thread";
    qword_E42C0 = v20;
    __break(1u);
    JUMPOUT(0x433FCLL);
  }

  v4 = _dispatch_thread_getspecific_packed_pair(20, 21, (a1 + 80));
  if ((v20 & 0xFF80000000000000) != 0 || (v20 & 0x1000000000) != 0)
  {
    *(a1 + 48) = -4;
  }

  else if ((v20 & 0x2000000000) != 0)
  {
    *(a1 + 48) = a2;
  }

  else
  {
    _dispatch_wait_compute_wlh(a2, a1, v4);
  }

  if (*(a1 + 48) == -4)
  {
    v18 = _dispatch_thread_getspecific(25);
    v17 = (v18 & 0xF00) >> 8;
    v16 = (v18 & 0xF000) >> 12;
    if (v17 <= v16)
    {
      v11 = (v18 & 0xF000) >> 12;
    }

    else
    {
      v11 = (v18 & 0xF00) >> 8;
    }

    if (v11 <= (v18 & 0xF0000u) >> 16)
    {
      v9 = (v18 & 0xF0000u) >> 16;
    }

    else
    {
      if (v17 <= v16)
      {
        v10 = (v18 & 0xF000) >> 12;
      }

      else
      {
        v10 = (v18 & 0xF00) >> 8;
      }

      v9 = v10;
    }

    *(a1 + 105) = v9;
    *(a1 + 104) = v9;
    *(a1 + 96) = 0;
  }

  _dispatch_thread_setspecific(121, a1);
  v8 = 0;
  if (*a2)
  {
    v8 = *a2;
  }

  v14 = (*(a1 + 8) & 0x3FFF00uLL) >> 8;
  v5 = __clz(__rbit32(v14));
  if (v14)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 72))(a2, a1, v6);
  if (*(a1 + 48) == -4)
  {
    if (atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_acquire) != 1)
    {
      _dispatch_thread_event_wait_slow(a1 + 96);
    }
  }

  else if ((*(a1 + 106) & 8) == 0)
  {
    _dispatch_event_loop_wait_for_ownership(a1);
  }

  result = _dispatch_thread_setspecific(121, 0);
  if (*(a1 + 48) == -4)
  {
    if (*(a1 + 96))
    {
      _dispatch_abort(339, *(a1 + 96) == 0);
    }

    if (*(a1 + 105) > *(a1 + 104))
    {
      v15 = *(a1 + 105);
      result = _dispatch_thread_getspecific(25);
      if ((result & 0xF0000) >> 16 < v15)
      {
        return _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | (v15 << 16));
      }
    }
  }

  return result;
}

void _dispatch_sync_complete_recurse(uint64_t *a1, uint64_t *a2, char a3)
{
  v4 = (a3 & 2) != 0;
  do
  {
    if (a1 == a2)
    {
      break;
    }

    if (v4)
    {
      v3 = 0;
      if (*a1)
      {
        v3 = *a1;
      }

      (*(v3 + 64))(a1, 0, 4);
    }

    else
    {
      _dispatch_lane_non_barrier_complete(a1, 0);
    }

    a1 = a1[3];
    v4 = *(a1 + 40) == 1;
  }

  while (a1[3]);
}

void _dispatch_sync_invoke_and_complete_recurse(uint64_t *a1, uint64_t a2, void (*a3)(void (**a1)(void)), char a4, uint64_t a5)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0uLL;
  v27 = a1;
  v26 = &v11;
  v29 = &v11;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v11);
  _dispatch_thread_setspecific_pair(20, v27, 21, v26);
  v21 = v13;
  v20 = v12;
  if (v12 == _dispatch_call_block_and_release && v21)
  {
    v6 = _Block_get_invoke_fn(v21);
    v7 = 0;
    if (v6)
    {
      v7 = v6;
    }

    v5 = v7;
  }

  else
  {
    v5 = v20;
  }

  v19 = v5;
  v23 = v21;
  v22 = v5;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  _dispatch_client_callout(v21, v20);
  v25 = v21;
  v24 = v19;
  v28 = &v11;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v11);
  v30 = a5;
  v35 = 772079660;
  v34 = a5;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v36 = a5;
  _dispatch_sync_complete_recurse(a1, 0, a4);
}

uint64_t _dispatch_wait_compute_wlh(uint64_t result, uint64_t a2, __n128 a3)
{
  v9 = result;
  v10 = *(result + 80);
  if ((v10 & 0x400000) != 0)
  {
    *(a2 + 106) |= 0x40u;
    v13 = (result + 100);
    result = _dispatch_thread_getspecific(3);
    v3 = 0;
    atomic_compare_exchange_strong_explicit((v9 + 100), &v3, result & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      result = _dispatch_unfair_lock_lock_slow(v13, 0x10000);
    }
  }

  v7 = *(v9 + 24);
  for (i = *(v7 + 56); ; i = v5)
  {
    if ((i & 0xFF80000000000000) != 0 || (i & 0x2000000000) == 0 || (i & 2) == 0)
    {
      v12 = HIDWORD(i);
      goto LABEL_12;
    }

    v4 = i;
    v5 = i;
    atomic_compare_exchange_strong_explicit((v7 + 56), &v5, i | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      break;
    }
  }

  v12 = HIDWORD(i) | 8;
LABEL_12:
  if ((v12 & 0xFF800000) != 0 || (v12 & 0x10) != 0)
  {
    *(a2 + 106) &= ~0x40u;
    *(a2 + 48) = -4;
  }

  else if ((v12 & 0x20) != 0)
  {
    result = v7 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v6 = 0;
    if (*v7)
    {
      v6 = *v7;
    }

    if (*(v6 + 16) == 18)
    {
      *(a2 + 106) |= 0x10u;
      *(a2 + 106) &= ~0x40u;
    }

    else if ((*(a2 + 106) & 0x40) != 0 && (atomic_fetch_add_explicit((v7 + 96), 1u, memory_order_relaxed) + 1) <= 0)
    {
      qword_E4290 = "API MISUSE: Resurrection of an object";
      __break(1u);
      JUMPOUT(0x4412CLL);
    }

    *(a2 + 48) = v7;
  }

  else
  {
    result = _dispatch_wait_compute_wlh(v7, a2, a3);
  }

  if ((v10 & 0x400000) != 0)
  {
    if ((*(a2 + 106) & 0x10) != 0)
    {
      atomic_fetch_and_explicit((v9 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }

    result = _dispatch_thread_getspecific(3);
    v14 = atomic_exchange_explicit((v9 + 100), 0, memory_order_release);
    if (v14 == (result & 0xFFFFFFFC))
    {
      v15 = 0;
    }

    else
    {
      result = _dispatch_unfair_lock_unlock_slow(v9 + 100, v14);
      v15 = (v14 & 2) != 0;
    }

    if (v15)
    {
      result = _dispatch_thread_getspecific(25);
      if (!((result & 0xF0000) >> 16))
      {
        return _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | 0x10000);
      }
    }
  }

  return result;
}

void _dispatch_sync_invoke_and_complete(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = 0uLL;
  v25 = a1;
  v24 = &v9;
  v27 = &v9;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v9);
  _dispatch_thread_setspecific_pair(20, v25, 21, v24);
  v19 = v11;
  v18 = v10;
  if (v10 == _dispatch_call_block_and_release && v19)
  {
    v5 = _Block_get_invoke_fn(v19);
    v6 = 0;
    if (v5)
    {
      v6 = v5;
    }

    v4 = v6;
  }

  else
  {
    v4 = v18;
  }

  v17 = v4;
  v21 = v19;
  v20 = v4;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  _dispatch_client_callout(v19, v18);
  v23 = v19;
  v22 = v17;
  v26 = &v9;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v9);
  v28 = a4;
  v33 = 772079660;
  v32 = a4;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v34 = a4;
  _dispatch_lane_non_barrier_complete(a1, 0);
}

void _dispatch_async_and_wait_recurse(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v12 = a1;
  for (i = a4; ; *a2 = i)
  {
    v10 = 1;
    if ((*(v12 + 80) & 0x1000000) == 0)
    {
      v9 = 0;
      if ((*(v12 + 56) & 0x3000000000) != 0)
      {
        v8 = 0;
        if (*(v12 + 24) >= &_dispatch_root_queues)
        {
          v8 = *(v12 + 24) < &unk_E0A80;
        }

        v9 = !v8;
      }

      v10 = v9;
    }

    if (v10)
    {
      *a2 &= ~0x80uLL;
      *(a2 + 56) = v12;
      v13 = 0;
    }

    else if ((i & 2) != 0)
    {
      v16 = (4096 - *(v12 + 80)) << 41;
      v14 = 0;
      v15 = *(v12 + 56);
      do
      {
        if (v15 != (v16 | v15 & 0x3000000000))
        {
          break;
        }

        v4 = v15;
        v5 = v15;
        atomic_compare_exchange_strong_explicit((v12 + 56), &v5, a3 & 0xFFFFFFFC | 0x60000000000002 | v15 & 0x3000000000, memory_order_acquire, memory_order_acquire);
        if (v5 != v4)
        {
          v15 = v5;
        }

        v14 = v5 == v4;
      }

      while (v5 != v4);
      v13 = v14;
    }

    else
    {
      if (*(v12 + 48))
      {
        v18 = 0;
      }

      else
      {
        v17 = *(v12 + 56);
        do
        {
          if (v17 >= 0x40000000000000 || (v17 & 0x8000000000) != 0 || (v17 & 0x10000000000) != 0)
          {
            v18 = 0;
            goto LABEL_28;
          }

          v6 = v17;
          v7 = v17;
          atomic_compare_exchange_strong_explicit((v12 + 56), &v7, v17 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
          if (v7 != v6)
          {
            v17 = v7;
          }
        }

        while (v7 != v6);
        v18 = 1;
      }

LABEL_28:
      v13 = v18;
    }

    if (!v13)
    {
      _dispatch_async_and_wait_f_slow(a1, a4, a2, v12);
      return;
    }

    if ((*(v12 + 84) & 0xFFF) != 0)
    {
      v20 = (*(v12 + 84) & 0xF00u) >> 8;
      v19 = *(v12 + 84);
      if (v20)
      {
        v19 = *(v12 + 84) | (1 << (v20 + 7));
      }

      if (v19 > (*(a2 + 8) & 0xFFFFFFuLL))
      {
        *(a2 + 8) = v19 | 0x10000000;
      }
    }

    if ((*(a2 + 106) & 3) == 0)
    {
      *(a2 + 106) = *(a2 + 106) & 0xFC | ((*(v12 + 80) & 0x30000u) / 0x10000) & 3;
    }

    if (!*(*(v12 + 24) + 24))
    {
      break;
    }

    v12 = *(v12 + 24);
    if (*(v12 + 80) == 1)
    {
      i |= 2uLL;
    }

    else
    {
      i &= ~2uLL;
    }
  }

  _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a2, v12, a4);
}

void _dispatch_async_and_wait_f_slow(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __DISPATCH_WAIT_FOR_QUEUE__(a3, a4);
  if (*(a3 + 64))
  {
    _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a3, *(a3 + 56), a2);
  }

  else
  {
    _dispatch_sync_complete_recurse(a1, *(a3 + 56), a2);
  }
}

void _dispatch_async_and_wait_invoke_and_complete_recurse(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = 0;
  v110 = a3;
  v109 = -4;
  v13 = 0;
  if (*a3)
  {
    v13 = *a3;
  }

  if (*(v13 + 16) == 18 || (v107 = v110[7], v108 = v107, v106 = v107, v111 = v107, (v107 & 0x2000000000) != 0))
  {
    v109 = v110;
  }

  v105 = _dispatch_thread_getspecific(27);
  _dispatch_thread_setspecific(27, v109);
  v21 = v105;
  v22 = (*(v25 + 106) & 3) << 24;
  v20 = 0;
  if ((v22 & 0x1000000) != 0)
  {
    v20 = _dispatch_autorelease_pool_push();
  }

  v19 = 0x40000000;
  v18 = 0uLL;
  v16 = *(v25 + 8);
  v14 = *(v25 + 24);
  v104 = v26;
  v101 = v26;
  v100 = &v18;
  v103 = &v18;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v18);
  _dispatch_thread_setspecific_pair(20, v101, 21, v100);
  v30 = v19;
  v29 = v16;
  v28 = 0;
  v27 = 0;
  if ((v19 & 0x40000000) != 0 && ((v30 & 0x20) != 0 || (v30 & 0x10) == 0))
  {
    v33 = v29;
    v29 &= 0xFFFFFFu;
    v31 = _dispatch_thread_getspecific(4);
    v32 = v31;
    v28 = v31 & 0xFFFFFF;
    if ((v31 & 0xFFFFFF) != 0 && v28 < v29)
    {
      v27 = v28;
    }
  }

  v17 = v27;
  if (v27)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  v37 = v12;
  v36 = v14;
  v35 = 0;
  v82 = v12;
  v95 = v12 != -1;
  v94 = 2409;
  if (v12 == -1)
  {
    _dispatch_abort(v94, v95);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v93 = v82;
    v92 = 4261412863;
    v91 = 0;
    v82 &= 0xFFFFFFFF02FFFFFFLL;
    v84 = _dispatch_thread_getspecific(4);
    v81 = v84;
    v80 = 0x1000000;
    v79 = 2281701376;
    if ((v84 & 0x1000000) != 0)
    {
      if (v82)
      {
        v11 = v82;
      }

      else
      {
        v90 = v81;
        v89 = v80;
        v88 = 0;
        v11 = v81 & (~v80 | 0xFFFFFF);
      }

      v83 = v11;
    }

    else
    {
      v87 = v81;
      v86 = v79;
      v85 = 0;
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

  v37 = v83;
  if (!v83)
  {
    if (v36 == -1)
    {
      v38 = -1;
      goto LABEL_43;
    }

    v10 = v36;
    if (v10 == _dispatch_thread_getspecific(28))
    {
      v34 = (v35 & 4) != 0;
      if ((v35 & 2) != 0)
      {
        if (v34 && v36)
        {
          object = v36;
          os_release(v36);
        }

        v36 = -1;
      }

      else if (!v34 && v36)
      {
        v40 = v36;
        os_retain(v36);
      }

      v38 = v36;
      goto LABEL_43;
    }
  }

  v38 = _dispatch_set_priority_and_voucher_slow(v37, v36, v35);
LABEL_43:
  v15 = v38;
  v60 = v26;
  v59 = v25;
  v58 = 0;
  v57 = 0;
  v114 = v26;
  v113 = v25;
  v4 = *(v25 + 64);
  v47 = *(v25 + 72);
  v46 = v4;
  if (v4 == _dispatch_call_block_and_release && v47)
  {
    v8 = _Block_get_invoke_fn(v47);
    v9 = 0;
    if (v8)
    {
      v9 = v8;
    }

    v7 = v9;
  }

  else
  {
    v7 = v46;
  }

  v45 = v7;
  v97 = v47;
  v96 = v7;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  _dispatch_client_callout(v47, v46);
  v99 = v47;
  v98 = v45;
  v49 = v17;
  v48 = v15;
  if (v17 == -1)
  {
    v49 = 0;
  }

  v53 = v49;
  v52 = v48;
  v51 = 6;
  v65 = v49;
  v78 = v49 != -1;
  v77 = 2409;
  if (v49 == -1)
  {
    _dispatch_abort(v77, v78);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v76 = v65;
    v75 = 4261412863;
    v74 = 0;
    v65 &= 0xFFFFFFFF02FFFFFFLL;
    v67 = _dispatch_thread_getspecific(4);
    v64 = v67;
    v63 = 0x1000000;
    v62 = 2281701376;
    if ((v67 & 0x1000000) != 0)
    {
      if (v65)
      {
        v6 = v65;
      }

      else
      {
        v73 = v64;
        v72 = v63;
        v71 = 0;
        v6 = v64 & (~v63 | 0xFFFFFF);
      }

      v66 = v6;
    }

    else
    {
      v70 = v64;
      v69 = v62;
      v68 = 0;
      v64 &= ~v62 | 0xFFFFFF;
      if (v65 == v64)
      {
        v66 = 0;
      }

      else
      {
        v66 = v65;
      }
    }
  }

  else
  {
    v66 = 0;
  }

  v53 = v66;
  if (v66)
  {
    goto LABEL_76;
  }

  if (v52 == -1)
  {
    v54 = -1;
    goto LABEL_77;
  }

  v5 = v52;
  if (v5 != _dispatch_thread_getspecific(28))
  {
LABEL_76:
    v54 = _dispatch_set_priority_and_voucher_slow(v53, v52, v51);
  }

  else
  {
    v50 = (v51 & 4) != 0;
    if ((v51 & 2) != 0)
    {
      if (v50 && v52)
      {
        v55 = v52;
        os_release(v52);
      }

      v52 = -1;
    }

    else if (!v50 && v52)
    {
      v56 = v52;
      os_retain(v52);
    }

    v54 = v52;
  }

LABEL_77:
  v102 = &v18;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v18);
  if (v20)
  {
    _dispatch_autorelease_pool_pop(v20);
  }

  v61 = v25;
  v115 = v25;
  v120 = 772079660;
  v119 = v25;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v121 = v61;
  v112 = v21;
  _dispatch_thread_setspecific(27, v21);
  _dispatch_sync_complete_recurse(v26, 0, v23);
}

void _dispatch_queue_specific_head_dispose(void *a1)
{
  v7 = a1;
  v6 = &off_E0600;
  i = 0;
  v4 = 0;
  v2 = 0;
  v3 = &v2;
  if (a1[1])
  {
    *v3 = v7[1];
    *(v7[1] + 32) = v3;
    v3 = v7[2];
    v7[1] = 0;
    v7[2] = v7 + 1;
  }

  for (i = v2; ; i = v4)
  {
    v1 = 0;
    if (i)
    {
      v4 = i[3];
      v1 = 1;
    }

    if ((v1 & 1) == 0)
    {
      break;
    }

    if (i[2])
    {
      i[3] = 0;
      i[4] = v7[2];
      *v7[2] = i;
      v7[2] = i + 3;
    }

    else
    {
      free(i);
    }
  }

  if (v7[1])
  {
    _dispatch_barrier_async_detached_f(v6, v7, _dispatch_queue_specific_head_dispose_slow);
  }

  else
  {
    free(v7);
  }
}

void _dispatch_queue_specific_head_dispose_slow(void *a1)
{
  v3 = 0;
  for (i = a1[1]; ; i = v3)
  {
    v2 = 0;
    if (i)
    {
      v3 = i[3];
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      break;
    }

    v1 = 0;
    if (i[2])
    {
      v1 = i[2];
    }

    if (!v1)
    {
      _dispatch_abort(2337, 0);
    }

    v7 = i[1];
    v6 = i[2];
    if (v6 == _dispatch_call_block_and_release)
    {
      if (v7)
      {
        _Block_get_invoke_fn(v7);
      }
    }

    _dispatch_client_callout(v7, v6);
    free(i);
  }

  free(a1);
}

uint64_t _dispatch_non_barrier_waiter_redirect_or_wake(uint64_t *a1, uint64_t a2)
{
  if ((*a2 & 2) != 0)
  {
    _dispatch_abort(1235, (*a2 & 2) == 0);
  }

  while (1)
  {
    v7 = a1[7];
    if (*(a2 + 105) < ((v7 & 0x700000000uLL) >> 32))
    {
      *(a2 + 105) = (v7 & 0x700000000uLL) >> 32;
    }

    if ((*a2 & 0x80) != 0)
    {
      if ((*(a1 + 21) & 0xFFF) != 0)
      {
        v12 = (*(a1 + 21) & 0xF00u) >> 8;
        v11 = *(a1 + 84);
        if (v12)
        {
          v11 = *(a1 + 84) | (1 << (v12 + 7));
        }

        if (v11 > (*(a2 + 8) & 0xFFFFFFuLL))
        {
          *(a2 + 8) = v11 | 0x10000000;
        }
      }

      if ((*(a2 + 106) & 3) == 0)
      {
        *(a2 + 106) = *(a2 + 106) & 0xFC | ((a1[10] & 0x30000u) / 0x10000) & 3;
      }
    }

    if ((v7 & 0x3000000000) != 0)
    {
      break;
    }

    v6 = a1[3];
    if (*(v6 + 80) == 1)
    {
      *a2 |= 2uLL;
LABEL_29:
      v5 = 0;
      if (*v6)
      {
        v5 = *v6;
      }

      return (*(v5 + 72))(v6, a2, 0);
    }

    *a2 &= ~2uLL;
    if (*(v6 + 48))
    {
      v10 = 0;
    }

    else
    {
      v9 = *(v6 + 56);
      do
      {
        if (v9 >= 0x40000000000000 || (v9 & 0x8000000000) != 0 || (v9 & 0x10000000000) != 0)
        {
          v10 = 0;
          goto LABEL_27;
        }

        v2 = v9;
        v3 = v9;
        atomic_compare_exchange_strong_explicit((v6 + 56), &v3, v9 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        if (v3 != v2)
        {
          v9 = v3;
        }
      }

      while (v3 != v2);
      v10 = 1;
    }

LABEL_27:
    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }

    a1 = v6;
  }

  if ((*a2 & 0x80) != 0)
  {
    *(a2 + 56) = a1;
  }

  return _dispatch_waiter_wake_wlh_anon(a2);
}

uint64_t _dispatch_waiter_wake_wlh_anon(uint64_t result)
{
  v1 = result;
  if (*(result + 105) > *(result + 104) && (_dispatch_set_qos_class_enabled & 1) != 0)
  {
    result = _pthread_workqueue_override_start_direct();
  }

  if (atomic_fetch_add_explicit((v1 + 96), 1u, memory_order_release))
  {
    return _dispatch_thread_event_signal_slow(v1 + 96);
  }

  return result;
}

void _dispatch_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5)
{
  v10 = -4;
  if (*(a2 + 48) == -4 && *(a2 + 105) < ((a4 & 0x700000000) >> 32))
  {
    *(a2 + 105) = (a4 & 0x700000000) >> 32;
  }

  if ((a4 & 0x2000000000) != 0)
  {
    v10 = a1;
  }

  else
  {
    v8 = 0;
    if ((a4 & 0x1000000000) != 0)
    {
      v8 = (a4 & 0x800000000) != 0;
    }

    if (v8)
    {
      v18 = (a4 & 0x700000000) >> 32;
      v17 = _dispatch_thread_getspecific(25);
      if (v18 > (v17 & 0xF0000u) >> 16)
      {
        _dispatch_thread_setspecific(25, v17 & 0xFFF0FFFF | (v18 << 16));
      }
    }
  }

  if (a3)
  {
    if ((a4 & 0x2000000000) == 0 || (a5 & 1) == 0)
    {
      _dispatch_release_2_no_dispose(a1);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((a4 & 0x2000000000) != 0 && (a4 & 1) != 0 && (a5 & 1) == 0)
  {
LABEL_18:
    _dispatch_release_no_dispose(a1);
  }

LABEL_19:
  if ((a4 & 0x3000000000) != 0)
  {
    if ((*a2 & 0x80) != 0)
    {
      *(a2 + 56) = a1;
    }

    _dispatch_waiter_wake(a2, v10, a4, a5);
  }

  else
  {
    v9 = *(a1 + 24);
    if ((*a2 & 0x80) != 0)
    {
      if ((*(a1 + 84) & 0xFFF) != 0)
      {
        v22 = (*(a1 + 84) & 0xF00u) >> 8;
        v21 = *(a1 + 84);
        if (v22)
        {
          v21 = *(a1 + 84) | (1 << (v22 + 7));
        }

        if (v21 > (*(a2 + 8) & 0xFFFFFFuLL))
        {
          *(a2 + 8) = v21 | 0x10000000;
        }
      }

      if ((*(a2 + 106) & 3) == 0)
      {
        *(a2 + 106) = *(a2 + 106) & 0xFC | ((*(a1 + 80) & 0x30000u) / 0x10000) & 3;
      }
    }

    if (*(v9 + 80) == 1)
    {
      *a2 |= 2uLL;
    }

    else
    {
      *a2 &= ~2uLL;
      if (*(v9 + 48))
      {
        v20 = 0;
      }

      else
      {
        v19 = *(v9 + 56);
        do
        {
          if (v19 >= 0x40000000000000 || (v19 & 0x8000000000) != 0 || (v19 & 0x10000000000) != 0)
          {
            v20 = 0;
            goto LABEL_41;
          }

          v5 = v19;
          v6 = v19;
          atomic_compare_exchange_strong_explicit((v9 + 56), &v6, v19 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
          if (v6 != v5)
          {
            v19 = v6;
          }
        }

        while (v6 != v5);
        v20 = 1;
      }

LABEL_41:
      if (v20)
      {
        _dispatch_non_barrier_waiter_redirect_or_wake(v9, a2);
        return;
      }
    }

    *(a2 + 106) &= ~0x80u;
    v7 = 0;
    if (*v9)
    {
      v7 = *v9;
    }

    (*(v7 + 72))(v9, a2, (a4 & 0x700000000) >> 32);
  }
}

uint64_t _dispatch_release_no_dispose(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v1 < 1)
  {
    qword_E4290 = "API MISUSE: Over-release of an object";
    __break(1u);
    JUMPOUT(0x47318);
  }

  return result;
}

uint64_t _dispatch_release_2_no_dispose(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((result + 8), 0xFFFFFFFE, memory_order_release) - 2;
  }

  if (v1 < 1)
  {
    qword_E4290 = "API MISUSE: Over-release of an object";
    __break(1u);
    JUMPOUT(0x47430);
  }

  return result;
}

void _dispatch_waiter_wake(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = *(result + 48);
  if ((a3 & 0x2000000000) != 0 && !(*(result + 106) >> 7) || (a4 & 0x2000000000) != 0 || v4 != -4)
  {
    _dispatch_event_loop_wake_owner(result, a2, a3, a4);
  }

  if (v4 == -4)
  {
    _dispatch_waiter_wake_wlh_anon(result);
  }
}

uint64_t _dispatch_base_lane_is_wlh(uint64_t *a1, unint64_t a2)
{
  if (_dispatch_kevent_workqueue_enabled)
  {
    v6 = 0;
    if (*a1)
    {
      v6 = *a1;
    }

    if (*(v6 + 16) == 133137)
    {
      v7 = 1;
    }

    else
    {
      v5 = 0;
      if (*a1)
      {
        v5 = *a1;
      }

      if (*(v5 + 16) == 19)
      {
        if (((*(a1[11] + 29) >> 5) & 1) == 0)
        {
          v7 = 0;
          return v7 & 1;
        }

        if ((*(a1[11] + 29) & 1) == 0)
        {
          _dispatch_abort(2534, *(a1[11] + 29) & 1);
        }
      }

      v4 = 0;
      if (*(a1 + 40) == 1)
      {
        v3 = 0;
        if (a2 >= &_dispatch_root_queues)
        {
          v3 = a2 < &unk_E0A80;
        }

        v4 = v3;
      }

      v7 = v4;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t _dispatch_lane_concurrent_drain(uint64_t *a1, uint64_t a2, int a3, void *a4)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 0;
  v24 = a1[3];
  v23 = 0uLL;
  v19 = *a4;
  if (!a1[6])
  {
    return 0;
  }

  v141 = v29;
  v140 = &v23;
  v145 = &v23;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v23);
  _dispatch_thread_setspecific_pair(20, v141, 21, v140);
  if ((v25 & 1) != 0 || (v31 = v19, (v19 & 0x40000000000000) != 0))
  {
    v20 = 0x40000000000000;
  }

  else
  {
    v20 = v19 & 0x3FFE0000000000;
  }

  if ((v27 & 0x10) != 0 && _dispatch_thread_getspecific(5))
  {
    _dispatch_return_to_kernel();
  }

  v74 = v29;
  v73 = (v29 + 13);
  v72 = 0;
  v70 = v29[13];
  v71 = v70;
  v69 = v70;
  v72 = v70;
  if (!v70)
  {
    v72 = _dispatch_wait_for_enqueuer(v73, (v74 + 6));
  }

  v68 = v72;
  v22 = v72;
  while (1)
  {
    v32 = v29[7];
    if ((v32 & 0xFF80000000000000) != 0 || v24 != v29[3])
    {
      break;
    }

    if (v25)
    {
      goto LABEL_40;
    }

    v47 = v22;
    v46 = 0;
    v137 = v22;
    if (*v22 > 0xFFFuLL)
    {
      v17 = 0;
      if (*v47)
      {
        v17 = *v47;
      }

      if ((*(v17 + 16) & 0xF0) == 0x10)
      {
        v44 = *(v47 + 20);
        v45 = v44;
        v43 = v44;
        v46 = v44;
        v48 = (v44 & 0x80000) != 0;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v48 = (*v47 & 2) != 0;
    }

    if (v48)
    {
LABEL_40:
      if ((v25 & 1) == 0 && v20 != 0x40000000000000)
      {
        v157 = v29;
        v156 = v20;
        v155 = 0;
        v154 = 0;
        v153 = ((*(v29 + 40) - 1) << 41) | 0x10000000000;
        v152 = 0;
        v151 = (v29 + 7);
        v155 = v29[7];
        do
        {
          v154 = v155 - v156;
          v159 = v155;
          if ((v155 & 0x10000000000) == 0)
          {
            v154 += v153;
          }

          v158 = v154;
          if (!(v154 >> 53))
          {
            v154 += 0x20000000000;
            v154 += 0x40000000000000;
            v154 -= 0x10000000000;
          }

          v154 &= ~0x8000000000uLL;
          v150 = v154;
          v5 = v155;
          v6 = v155;
          atomic_compare_exchange_strong_explicit(v151, &v6, v154, memory_order_acquire, memory_order_acquire);
          if (v6 != v5)
          {
            v155 = v6;
          }

          v149 = v6 == v5;
          v152 = v6 == v5;
        }

        while (v6 != v5);
        v148 = v152;
        if ((v154 & 0x40000000000000) == 0)
        {
          goto LABEL_125;
        }

        v20 = 0x40000000000000;
      }

      v160 = v22;
      v162 = v22;
      if (*v22 >= 0x1000uLL)
      {
        v161 = 0;
      }

      else
      {
        v161 = *v160 & 1;
      }

      if (v161 == 1 && (v27 & 0x80000) == 0)
      {
        *(v28 + 8) = v22;
        if ((v27 & 8) != 0)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
          __break(1u);
          JUMPOUT(0x48968);
        }

        v142 = &v23;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v23);
        return v29[3];
      }

      v104 = v29;
      v103 = v22;
      v102 = v22;
      v101 = 0;
      v100 = 0;
      v99 = 0;
      v97 = v22[2];
      v98 = v97;
      v96 = v97;
      v101 = v97;
      v95 = v97;
      v94 = v97;
      v29[13] = v97;
      v93 = v95;
      if (!v101)
      {
        v90 = 0;
        v91 = 0;
        v92 = v104 + 6;
        v89 = 0;
        v88 = (v104 + 6);
        v99 = v104[6];
        while (1)
        {
          v136 = v99;
          if (v102 != (v99 & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          v100 = 0;
          v78 = 0;
          v7 = v99;
          v8 = v99;
          atomic_compare_exchange_strong_explicit(v88, &v8, 0, memory_order_release, memory_order_relaxed);
          if (v8 != v7)
          {
            v99 = v8;
          }

          v77 = v8 == v7;
          v89 = v8 == v7;
          if (v8 == v7)
          {
            goto LABEL_67;
          }
        }

        v87 = v102;
        v86 = 0;
        v84 = v102[2];
        v85 = v84;
        v83 = v84;
        v86 = v84;
        if (!v84)
        {
          v86 = _dispatch_wait_for_enqueuer(v87 + 2, (v104 + 6));
        }

        v82 = v86;
        v101 = v86;
        v81 = v86;
        v80 = v86;
        v104[13] = v86;
        v79 = v81;
LABEL_67:
        v76 = v89;
      }

      v75 = v101;
      v21 = v101;
LABEL_106:
      _dispatch_continuation_pop_inline(v22, v28, v27, v29);
      goto LABEL_13;
    }

    if (v20 == 0x40000000000000)
    {
      atomic_fetch_xor_explicit((v29 + 7), 0x40000000000000uLL, memory_order_release);
      v20 = *(v29 + 40) << 41;
    }

    else if (!v20)
    {
      v39 = v22;
      v139 = v22;
      if (*v22 < 0x1000uLL && (*v39 & 0x81) != 0)
      {
        v173 = v29;
        v171 = 0x20000000000;
        v170 = 0x20000000000;
        v172 = 0x20000000000;
        v166 = 0x20000000000;
        v165 = 0x20000000000;
        v167 = 0x20000000000;
        add_explicit = atomic_fetch_add_explicit((v29 + 7), 0x20000000000uLL, memory_order_relaxed);
        v168 = add_explicit;
        v163 = add_explicit;
        v169 = add_explicit + v172;
      }

      else
      {
        v56 = v29;
        v55 = 0;
        v54 = 0;
        v53 = 0;
        v52 = (v29 + 7);
        v55 = v29[7];
        do
        {
          v58 = v55;
          v16 = 1;
          if (!(v55 >> 53))
          {
            v60 = v55;
            v16 = 1;
            if ((v55 & 0x8000000000) == 0)
            {
              v59 = v55;
              v16 = BYTE5(v55) & 1;
            }
          }

          if (v16)
          {
            v57 = 0;
            goto LABEL_87;
          }

          v54 = v55 + 0x20000000000;
          v51 = v55 + 0x20000000000;
          v9 = v55;
          v10 = v55;
          atomic_compare_exchange_strong_explicit(v52, &v10, v55 + 0x20000000000, memory_order_acquire, memory_order_acquire);
          if (v10 != v9)
          {
            v55 = v10;
          }

          v50 = v10 == v9;
          v53 = v10 == v9;
        }

        while (v10 != v9);
        v49 = v53;
        v57 = v53;
LABEL_87:
        if (!v57)
        {
LABEL_125:
          *v26 &= 0x4000000001uLL;
          v143 = &v23;
          _dispatch_thread_setspecific_packed_pair(20, 21, &v23);
          return -1;
        }
      }

      v20 = 0x20000000000;
    }

    v134 = v29;
    v133 = v22;
    v132 = v22;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v127 = v22[2];
    v128 = v127;
    v126 = v127;
    v131 = v127;
    v125 = v127;
    v124 = v127;
    v29[13] = v127;
    v123 = v125;
    if (!v131)
    {
      v120 = 0;
      v121 = 0;
      v122 = v134 + 6;
      v119 = 0;
      v118 = (v134 + 6);
      v129 = v134[6];
      while (1)
      {
        v135 = v129;
        if (v132 != (v129 & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        v130 = 0;
        v108 = 0;
        v11 = v129;
        v12 = v129;
        atomic_compare_exchange_strong_explicit(v118, &v12, 0, memory_order_release, memory_order_relaxed);
        if (v12 != v11)
        {
          v129 = v12;
        }

        v107 = v12 == v11;
        v119 = v12 == v11;
        if (v12 == v11)
        {
          goto LABEL_98;
        }
      }

      v117 = v132;
      v116 = 0;
      v114 = v132[2];
      v115 = v114;
      v113 = v114;
      v116 = v114;
      if (!v114)
      {
        v116 = _dispatch_wait_for_enqueuer(v117 + 2, (v134 + 6));
      }

      v112 = v116;
      v131 = v116;
      v111 = v116;
      v110 = v116;
      v134[13] = v116;
      v109 = v111;
LABEL_98:
      v106 = v119;
    }

    v105 = v131;
    v21 = v131;
    v41 = v22;
    v138 = v22;
    if (*v22 < 0x1000uLL && (*v41 & 0x81) != 0)
    {
      v20 -= 0x20000000000;
      _dispatch_non_barrier_waiter_redirect_or_wake(v29, v22);
    }

    else
    {
      if ((v27 & 0x20000) == 0)
      {
        goto LABEL_106;
      }

      v20 -= 0x20000000000;
      v35 = v29;
      v36 = *(v29 + 15) << 32;
      v36 &= 0x700000000uLL;
      _dispatch_continuation_redirect_push(v29, v22, HIDWORD(v36));
    }

LABEL_13:
    v4 = *(v28 + 8) == 0;
    v34 = *(v28 + 8) == 0;
    v33 = 3860;
    if (!v4)
    {
      _dispatch_abort(v33, v34);
    }

    v22 = v21;
    if (!v21)
    {
      if (!v29[6])
      {
        break;
      }

      v67 = v29;
      v66 = (v29 + 13);
      v65 = 0;
      v63 = v29[13];
      v64 = v63;
      v62 = v63;
      v65 = v63;
      if (!v63)
      {
        v65 = _dispatch_wait_for_enqueuer(v66, (v67 + 6));
      }

      v61 = v65;
      v22 = v65;
    }

    if (_dispatch_thread_getspecific(5))
    {
      _dispatch_return_to_kernel();
    }

    if ((v25 & 1) == (*(v29 + 40) == 1))
    {
      v18 = 0;
      if ((v27 & 0x4000000) == 0)
      {
        v147 = v28;
        v146 = _dispatch_thread_getspecific(120);
        v18 = v146 & 1;
      }

      if ((v18 & 1) == 0)
      {
        if ((v27 & 0x100000) == 0)
        {
          continue;
        }

        v37 = _dispatch_thread_getspecific(27);
        v38 = *(v37 + 60) << 32;
        v38 &= 0x700000000uLL;
        if (HIDWORD(v38) <= *(v37 + 100))
        {
          continue;
        }
      }
    }

    break;
  }

  if (v20 == 0x40000000000000)
  {
    v20 = (*(v29 + 40) << 41) + 0x40000000000000;
  }

  if (v22)
  {
    v179 = v29;
    v178 = v20;
    v177 = v22;
    v176 = *(v29 + 40);
    v175 = 0;
    if (v176 >= 2u)
    {
      v174 = v177;
      v184 = v177;
      v183 = 0;
      v186 = v177;
      if (*v177 > 0xFFFuLL)
      {
        v15 = 0;
        if (*v184)
        {
          v15 = *v184;
        }

        if ((*(v15 + 16) & 0xF0) == 0x10)
        {
          v181 = *(v184 + 20);
          v182 = v181;
          v180 = v181;
          v183 = v181;
          v185 = (v181 & 0x80000) != 0;
        }

        else
        {
          v185 = 0;
        }
      }

      else
      {
        v185 = (*v184 & 2) != 0;
      }

      if (v185)
      {
        v175 = ((v176 - 1) << 41) + 0x10000000000;
        v178 -= v175;
      }
    }

    v20 = v178;
  }

  *v26 &= 0x4000000001uLL;
  *v26 |= v20;
  v144 = &v23;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v23);
  if (v22)
  {
    return v29[3];
  }

  else
  {
    return 0;
  }
}

void _dispatch_workloop_bound_thread_init_once(uint64_t a1)
{
  v4 = a1;
  v3 = 0;
  v2 = 4;
  v1 = sysctlbyname("kern.kern_event.thread_bound_kqwl_support_enabled", &v3, &v2, 0, 0);
  v6 = v1;
  v5 = 4277;
  if (v1)
  {
    _dispatch_bug(v5, v6);
  }

  if (v3)
  {
    _dispatch_thread_bound_kqwl_enabled = 1;
  }
}

void _dispatch_workloop_activate_simulator_fallback(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_pthread_root_queue_create("com.apple.libdispatch.workloop_fallback", 0, a2, 0);
  *(a1 + 24) = v4;
  _dispatch_retain(v4);
  dispatch_release(v4);
  v5 = *(a1 + 56);
  do
  {
    v2 = v5;
    v3 = v5;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v3, v5 & 0xFFFFFFCFFFFFFFFFLL | 0x1000000000, memory_order_relaxed, memory_order_relaxed);
    if (v3 != v2)
    {
      v5 = v3;
    }
  }

  while (v3 != v2);
}

uint64_t _dispatch_workloop_activate_tg_unsupported_fallback(uint64_t a1)
{
  v3 = *(a1 + 200);
  memset(&__b, 0, sizeof(__b));
  pthread_attr_init(&__b);
  if (v3->sched_priority)
  {
    pthread_attr_setschedparam(&__b, v3 + 1);
  }

  if ((v3->sched_priority & 2) != 0)
  {
    pthread_attr_setschedpolicy(&__b, v3[2].sched_priority);
  }

  if ((v3->sched_priority & 4) != 0)
  {
    pthread_attr_setcpupercent_np();
  }

  v2 = _pthread_workloop_create();
  if (v2)
  {
    if (v2 != 45)
    {
      _dispatch_abort(4453, v2);
    }

    _dispatch_workloop_activate_simulator_fallback(a1, &__b);
  }

  else
  {
    v3->sched_priority |= 0x10u;
  }

  return pthread_attr_destroy(&__b);
}

void _dispatch_queue_wakeup_with_override_slow(uint64_t a1, uint64_t a2, char a3)
{
  v14 = (a2 & 0x700000000uLL) >> 32;
  v13 = *(a1 + 24);
  if ((a2 & 0x1000000000) != 0)
  {
    v11 = 0;
    if (v13 >= &_dispatch_root_queues)
    {
      v11 = v13 < &unk_E0A80;
    }

    if (!v11)
    {
      goto LABEL_77;
    }

    if ((a2 & 0xFFFFFFFC) != 0)
    {
      v17 = a2 | 3;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      if (_dispatch_set_qos_class_enabled)
      {
        _pthread_workqueue_override_start_direct_check_owner();
      }

      goto LABEL_77;
    }

    v12 = 0;
  }

  else if ((*(a1 + 80) & 0x400000) != 0)
  {
    v20 = a1;
    v19 = a2 & 0x700000000;
    v42 = (a1 + 100);
    v41 = &v19;
    v45 = _dispatch_thread_getspecific(3);
    v40 = v45 & 0xFFFFFFFC;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v36 = v42;
    v39 = *v42;
    do
    {
      v47 = v39;
      if ((v39 & 0xFFFFFFFC) != 0)
      {
        v38 = v39 | 2;
      }

      else
      {
        v38 = v40;
      }

      v35 = v38;
      v3 = v39;
      v4 = v39;
      atomic_compare_exchange_strong_explicit(v36, &v4, v38, memory_order_acquire, memory_order_acquire);
      if (v4 != v3)
      {
        v39 = v4;
      }

      v34 = v4 == v3;
      v37 = v4 == v3;
    }

    while (v4 != v3);
    v33 = v37;
    if (v41)
    {
      v43 = v38;
      if ((v38 & 0xFFFFFFFC) != 0)
      {
        v44 = v43 | 3;
      }

      else
      {
        v44 = 0;
      }

      *v41 = v44;
    }

    v46 = v39;
    if ((v39 & 0xFFFFFFFC) != 0)
    {
      v23 = HIDWORD(v19);
      v24 = v19;
      v22 = v20 + 100;
      if (_dispatch_set_qos_class_enabled)
      {
        v27 = v23;
        v26 = 0;
        if (v23)
        {
          v26 = 1 << (v27 + 7);
        }

        v25 = _pthread_workqueue_override_start_direct_check_owner();
      }

      else
      {
        v25 = 0;
      }

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      goto LABEL_77;
    }

    v12 = 1;
    v13 = *(a1 + 24);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_39:
  v10 = 0;
  if (*v13)
  {
    v10 = *v13;
  }

  if ((*(v10 + 16) & 0x10000) != 0)
  {
    if (v14 > (*(v13 + 84) & 0xF00u) >> 8)
    {
      _dispatch_root_queue_push_override_stealer(v13, a1, v14);
    }
  }

  else
  {
    v9 = 0;
    if (*v13)
    {
      v9 = *v13;
    }

    if (*(v9 + 16) == 18)
    {
      _dispatch_workloop_push_stealer(v13, a1, v14);
    }

    else
    {
      v18 = ((*(v13 + 60) << 32) & 0x700000000) >> 32;
      v8 = 1;
      if (v18)
      {
        v8 = v18 < v14;
      }

      if (v8)
      {
        v7 = 0;
        if (*v13)
        {
          v7 = *v13;
        }

        (*(v7 + 64))(v13, v14, 0);
      }
    }
  }

  if (v12)
  {
    while (1)
    {
      v28 = a1;
      v55 = a1 + 100;
      v54 = 0;
      v53 = 0;
      v52 = 0;
      v51 = (a1 + 100);
      v54 = *(a1 + 100);
      do
      {
        if ((v54 & 2) != 0)
        {
          v53 = v54 ^ 2;
        }

        else
        {
          v53 = 0;
        }

        v50 = v53;
        v5 = v54;
        v6 = v54;
        atomic_compare_exchange_strong_explicit(v51, &v6, v53, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          v54 = v6;
        }

        v49 = v6 == v5;
        v52 = v6 == v5;
      }

      while (v6 != v5);
      v48 = v52;
      if (v53)
      {
        __dmb(9u);
        v56 = 0;
      }

      else
      {
        v57 = v54;
        if (v54)
        {
          _dispatch_unfair_lock_unlock_slow(v55, v54);
        }

        v56 = 1;
      }

      if (v56)
      {
        v29 = 1;
      }

      else
      {
        v31 = 1;
        v30 = _dispatch_thread_getspecific(25);
        v32 = v30 & 0xF0000;
        if (v31 > (v30 & 0xF0000) >> 16)
        {
          v30 &= 0xFFF0FFFF;
          v30 |= v31 << 16;
          _dispatch_thread_setspecific(25, v30);
        }

        v29 = 0;
      }

      if (v29)
      {
        break;
      }

      if (((*(a1 + 60) << 32) & 0x700000000) >> 32 > v14)
      {
        v14 = ((*(a1 + 60) << 32) & 0x700000000) >> 32;
        goto LABEL_39;
      }
    }
  }

LABEL_77:
  if (a3)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

void _dispatch_root_queue_push_override_stealer(uint64_t a1, uint64_t (*a2)(), unsigned int a3)
{
  v5 = 0;
  if ((*(a1 + 87) & 0x80) != 0)
  {
    v5 = 2;
  }

  else if ((*(a1 + 87) & 8) != 0)
  {
    v5 = 4;
  }

  v3 = 1;
  if (a3)
  {
    v3 = a3 > 6;
  }

  if (v3)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x498B8);
  }

  v11 = 0;
  if ((v5 & 2) != 0)
  {
    v11 = 1;
  }

  else if ((v5 & 4) != 0)
  {
    v11 = 2;
  }

  v4 = &(&_dispatch_root_queues)[16 * (3 * a3 + v11 - 3)];
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

  *v8 = &unk_DCDE8;
  _dispatch_retain_2(a2);
  v8[4] = 0;
  v8[5] = v8;
  v8[7] = a1;
  v8[6] = a2;
  v8[1] = -1;
  v8[3] = -1;
  v8[2] = 0;
  _dispatch_thread_setspecific(122, (v4 + 6));
  v10 = atomic_exchange_explicit((v4 + 6), v8, memory_order_release);
  if (v10)
  {
    *(v10 + 16) = v8;
  }

  else
  {
    v4[13] = v8;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v10)
  {
    _dispatch_root_queue_poke_and_wakeup(v4, 1u, 0);
  }
}

void _dispatch_workloop_push_stealer(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = _dispatch_thread_getspecific(22);
  if (v7)
  {
    _dispatch_thread_setspecific(22, *(v7 + 16));
    v6 = v7;
  }

  else
  {
    v6 = _dispatch_continuation_alloc_from_heap();
  }

  *v6 = &unk_DCDB0;
  _dispatch_retain_2(a2);
  v6[4] = 0;
  v6[5] = v6;
  v6[7] = 0;
  v6[6] = a2;
  v6[1] = -1;
  v6[3] = -1;
  _dispatch_workloop_push(a1, v6, a3);
}

void _dispatch_lane_drain_non_barriers(uint64_t a1, unint64_t *a2, unsigned int a3)
{
  v23 = *(a1 + 80);
  atomic_fetch_and_explicit((a1 + 56), 0xFFBFFFFFFFFFFFFFLL, memory_order_release);
  while (v23)
  {
    --v23;
LABEL_20:
    v34 = a2[2];
    *(a1 + 104) = v34;
    if (!v34)
    {
      v33 = *(a1 + 48);
      while (a2 == (v33 & 0xFFFFFFFFFFFFFFF8))
      {
        v5 = v33;
        v6 = v33;
        atomic_compare_exchange_strong_explicit((a1 + 48), &v6, 0, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          v33 = v6;
        }

        if (v6 == v5)
        {
          goto LABEL_29;
        }
      }

      v32 = a2[2];
      if (!v32)
      {
        v32 = _dispatch_wait_for_enqueuer(a2 + 2, a1 + 48);
      }

      v34 = v32;
      *(a1 + 104) = v32;
    }

LABEL_29:
    v22 = v34;
    if (*a2 <= 0xFFF && (*a2 & 0x81) != 0)
    {
      _dispatch_non_barrier_waiter_redirect_or_wake(a1, a2);
    }

    else
    {
      _dispatch_continuation_redirect_push(a1, a2, ((*(a1 + 60) << 32) & 0x700000000) >> 32);
    }

LABEL_35:
    a2 = v22;
    v16 = 0;
    if (v22)
    {
      if (*v22 > 0xFFFuLL)
      {
        v15 = 0;
        if (*v22)
        {
          v15 = *v22;
        }

        v29 = (*(v15 + 16) & 0xF0) == 0x10 && (*(v22 + 80) & 0x80000) != 0;
      }

      else
      {
        v29 = (*v22 & 2) != 0;
      }

      v16 = !v29;
    }

    if (!v16)
    {
      goto LABEL_45;
    }
  }

  if (*a2 <= 0xFFF && (*a2 & 0x81) != 0)
  {
    atomic_fetch_add_explicit((a1 + 56), 0x20000000000uLL, memory_order_relaxed);
    goto LABEL_20;
  }

  v30 = *(a1 + 56);
  do
  {
    v17 = 1;
    if (v30 < 0x20000000000000)
    {
      v17 = 1;
      if ((v30 & 0x8000000000) == 0)
      {
        v17 = (v30 & 0x10000000000) != 0;
      }
    }

    if (v17)
    {
      v31 = 0;
      goto LABEL_19;
    }

    v3 = v30;
    v4 = v30;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v30 + 0x20000000000, memory_order_acquire, memory_order_acquire);
    if (v4 != v3)
    {
      v30 = v4;
    }
  }

  while (v4 != v3);
  v31 = 1;
LABEL_19:
  if (v31)
  {
    goto LABEL_20;
  }

LABEL_45:
  v19 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL;
  v18 = v23 << 41;
  if (a2)
  {
    v42 = v23 << 41;
    v41 = *(a1 + 80);
    if (v41 > 1u)
    {
      if (*a2 > 0xFFF)
      {
        v14 = 0;
        if (*a2)
        {
          v14 = *a2;
        }

        v43 = (*(v14 + 16) & 0xF0) == 0x10 && (a2[10] & 0x80000) != 0;
      }

      else
      {
        v43 = (*a2 & 2) != 0;
      }

      if (v43)
      {
        v42 = v18 - (((v41 - 1) << 41) + 0x10000000000);
      }
    }

    v18 = v42;
  }

  v21 = *(a1 + 56);
  do
  {
    v20 = (v21 - v18) & 0xFFFFFF7700000001;
    if (a2)
    {
      v37 = v20 | 0x8000000000;
      v35 = v20 | 0x8000000000;
      if (((v21 - v18) & 0x10000000000) != 0)
      {
        v36 = v35 + 0x40010000000000;
      }

      else
      {
        v36 = v35 + (*(a1 + 80) << 41) + 0x40000000000000;
      }

      if ((v36 & 0x3FFE0000000000) == 0x20000000000000)
      {
        v37 = v36 & 0xFFFFFF7FFFFFFFFFLL | v19;
      }

      else if ((v21 & 0x8000000000) != 0)
      {
        v37 = (v21 - v18) & 0xFFFFFF7700000000 | 0x8000000001;
      }

      v20 = v37;
    }

    else if ((v21 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v22 = *(a1 + 104);
      goto LABEL_35;
    }

    v10 = v21;
    v11 = v21;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v11, v20, memory_order_relaxed, memory_order_relaxed);
    if (v11 != v10)
    {
      v21 = v11;
    }
  }

  while (v11 != v10);
  v38 = v21 - v18;
  v13 = 0;
  if (((v21 - v18) & 0x1000000000) != 0)
  {
    v13 = ((v21 - v18) & 0x800000000) != 0;
  }

  if (v13)
  {
    v40 = (v38 & 0x700000000uLL) >> 32;
    v39 = _dispatch_thread_getspecific(25);
    if (v40 > (v39 & 0xF0000u) >> 16)
    {
      _dispatch_thread_setspecific(25, v39 & 0xFFF0FFFF | (v40 << 16));
    }
  }

  if (((v38 ^ v20) & 0x40000000000000) != 0)
  {
    _dispatch_lane_barrier_complete(a1, 0, a3);
  }

  else if ((v38 ^ v20))
  {
    if ((a3 & 1) == 0)
    {
      _dispatch_retain_2(a1);
    }

    if ((v20 & 0x2000000000) != 0)
    {
      _dispatch_abort(1026, (v20 & 0x2000000000) == 0);
    }

    v12 = 0;
    if (**(a1 + 24))
    {
      v12 = **(a1 + 24);
    }

    (*(v12 + 72))(*(a1 + 24), a1, (v20 & 0x700000000) >> 32, v7, v8, v9);
  }

  else if (a3)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

uint64_t _dispatch_channel_invoke_cancel_check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 1;
  if ((*(a1 + 116) & 8) == 0 && (*(a1 + 80) & 0x10000000) != 0)
  {
    v4 = 0;
    if ((*(a2 + 32) & 0x1000000) != 0)
    {
      v4 = _dispatch_autorelease_pool_push();
    }

    v5 = (*(a3 + 24))(a1, *(a1 + 32));
    if (v4)
    {
      _dispatch_autorelease_pool_pop(v4);
    }

    if (v5)
    {
      *(a1 + 116) = *(a1 + 116) & 0xFFF7 | 8;
      _dispatch_release_no_dispose(a1);
    }

    else
    {
      *(a2 + 40) = -1;
    }
  }

  return v5 & 1;
}

uint64_t _dispatch_mgr_sched_qos2prio(int a1)
{
  switch(a1)
  {
    case 5:
      return 4;
    case 9:
      return 4;
    case 17:
      return 20;
    case 21:
      return 31;
    case 25:
      return 37;
    case 33:
      return 47;
    default:
      return 0;
  }
}

void _dispatch_mgr_priority_apply()
{
  v1 = 0;
  do
  {
    v1.sched_priority = _dispatch_mgr_sched;
    if (_dispatch_mgr_sched > dword_E4680)
    {
      v0 = pthread_setschedparam(qword_E4688, dword_E4684, &v1);
      v3 = v0;
      v2 = 6296;
      if (v0)
      {
        _dispatch_bug(v2, v3);
      }
    }
  }

  while (_dispatch_mgr_sched > v1.sched_priority);
}

void _dispatch_mgr_queue_drain(uint64_t result)
{
  v9 = 0x40000;
  memset(v8, 0, sizeof(v8));
  v7 = &_dispatch_mgr_q;
  v6 = 0x40020000000000;
  if (qword_E0130)
  {
    v11 = 15;
    v10 = _dispatch_thread_getspecific(25);
    v12 = v10 & 0xF0000;
    if ((v10 & 0xF0000) >> 16 < 0xF)
    {
      v10 = v10 & 0xFFF0FFFF | (v11 << 16);
      _dispatch_thread_setspecific(25, v10);
    }

    if (_dispatch_lane_serial_drain(v7, v8, 0x40000, &v6))
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Interrupted drain on manager queue";
      __break(1u);
      JUMPOUT(0x4B278);
    }

    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: mgr queue clear", 6444, v1, 0);
    v18 = 0;
    v21 = 0;
    v20 = _dispatch_thread_getspecific(28);
    v29 = v20;
    v28 = v21;
    if (v20 == v21)
    {
      v30 = -1;
    }

    else
    {
      if (v29)
      {
        v27 = 0;
        v26 = 0;
      }

      _dispatch_thread_setspecific(28, v28);
      if (v28)
      {
        v25 = 0;
        v24 = 0;
      }

      v2 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", 400, v2, v28, v29);
      if (v28)
      {
        v5 = v28[8];
      }

      else
      {
        v5 = 0;
      }

      v23 = v5;
      if (v29)
      {
        v4 = v29[8];
      }

      else
      {
        v4 = 0;
      }

      v22 = v4;
      if (v23 == v4)
      {
        v3 = -1;
      }

      else
      {
        v3 = v23;
      }

      v30 = v3;
    }

    v31 = v30;
    if (v30 != -1)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v31);
    }

    v17 = v20;
    if (v20)
    {
      v19 = v17;
      os_release(v17);
    }

    v14 = _dispatch_thread_getspecific(25);
    v16 = v14 & 0xF0000;
    v13 = (v14 & 0xF0000) >> 16;
    if ((v14 & 0xF0000) >> 16)
    {
      v14 &= 0xFFF0FFFF;
      _dispatch_thread_setspecific(25, v14);
      v15 = v13 != 15;
    }

    else
    {
      v15 = 0;
    }
  }

  if ((_dispatch_kevent_workqueue_enabled & 1) == 0)
  {
    _dispatch_force_cache_cleanup();
  }
}

void _dispatch_force_cache_cleanup()
{
  v0 = _dispatch_thread_getspecific(22);
  if (v0)
  {
    _dispatch_thread_setspecific(22, 0);
    _dispatch_cache_cleanup(v0);
  }
}

uint64_t *_dispatch_mgr_root_queue_init()
{
  v15 = &_dispatch_mgr_sched_pred;
  v14 = 0;
  v13 = _dispatch_mgr_sched_init;
  if (_dispatch_mgr_sched_pred != -1)
  {
    dispatch_once_f(v15, v14, v13);
  }

  v6 = off_E00A0;
  __attr = off_E00A0;
  v4 = 0;
  v3 = pthread_attr_setdetachstate(off_E00A0, 2);
  v12 = v3;
  v11 = 6257;
  if (v3)
  {
    _dispatch_bug(v11, v12);
  }

  if (dword_E467C)
  {
    if (_dispatch_set_qos_class_enabled)
    {
      v2 = pthread_attr_set_qos_class_np(__attr, dword_E467C, 0);
      v10 = v2;
      v9 = 6266;
      if (v2)
      {
        _dispatch_bug(v9, v10);
      }
    }
  }

  v4.sched_priority = _dispatch_mgr_sched;
  if (_dispatch_mgr_sched > dword_E4680)
  {
    v1 = pthread_attr_setschedparam(__attr, &v4);
    v8 = v1;
    v7 = 6272;
    if (v1)
    {
      _dispatch_bug(v7, v8);
    }
  }

  return &qword_E4688;
}

uint64_t _dispatch_worker_thread(uint64_t a1)
{
  v12 = *(a1 + 32);
  v11 = atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire) - 1;
  if (v11 < 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Pending thread request underflow";
    qword_E42C0 = v11;
    __break(1u);
    JUMPOUT(0x4B84CLL);
  }

  if (*(v12 + 144))
  {
    _dispatch_thread_setspecific(24, v12 + 144);
  }

  if (*(a1 + 72))
  {
    pthread_setname_np(*(a1 + 72));
  }

  if (*(v12 + 64))
  {
    (*(*(v12 + 64) + 16))();
  }

  _dispatch_sigmask();
  v10 = _dispatch_thread_getspecific(4);
  v8 = *(a1 + 84);
  if ((v8 & 0x46000FFF) == 0)
  {
    v9 = v8 & 0x80000000;
    v7 = 0;
    if ((v10 & 0x22000000) == 0)
    {
      v7 = (v10 & 0x3F00) != 0;
    }

    if (v7)
    {
      if ((v10 & 0x20000000) != 0)
      {
        _dispatch_abort(458, (v10 & 0x20000000) == 0);
      }

      v1 = (v10 & 0x3FFF00) >> 8;
      v2 = __clz(__rbit32(v1));
      if (v1)
      {
        v3 = v2 + 1;
      }

      else
      {
        v3 = 0;
      }

      v8 = v9 | v10 & 0x8E0000FF | (v3 << 8);
    }

    else
    {
      v8 = v9 | 0xF0000;
    }
  }

  do
  {
    _dispatch_root_queue_drain(a1, v8, 0x20000);
    v14 = v10;
    if (v10 == -1)
    {
      v14 = 0;
    }

    if (v14 == -1)
    {
      _dispatch_abort(2409, 0);
    }

    if (_dispatch_set_qos_class_enabled)
    {
      v16 = v14 & 0xFFFFFFFF02FFFFFFLL;
      v15 = _dispatch_thread_getspecific(4);
      if ((v15 & 0x1000000) != 0)
      {
        if (v16)
        {
          v6 = v14 & 0xFFFFFFFF02FFFFFFLL;
        }

        else
        {
          v6 = v15 & 0xFFFFFFFFFEFFFFFFLL;
        }

        v17 = v6;
      }

      else if (v16 == (v15 & 0xFFFFFFFF77FFFFFFLL))
      {
        v17 = 0;
      }

      else
      {
        v17 = v14 & 0xFFFFFFFF02FFFFFFLL;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v17 || _dispatch_thread_getspecific(28))
    {
      _dispatch_set_priority_and_voucher_slow(v17, 0, 6);
    }

    v4 = dispatch_time(0, 5000000000);
  }

  while (!dispatch_semaphore_wait((v12 + 72), v4));
  atomic_fetch_add_explicit((a1 + 100), 1u, memory_order_release);
  _dispatch_root_queue_poke(a1, 1u, 0);
  _dispatch_release(a1);
  return 0;
}

uint64_t _dispatch_root_queue_drain(uint64_t a1, unsigned int a2, int a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = _dispatch_thread_getspecific(20);
  if (v13)
  {
    v12 = v13;
    qword_E4290 = "BUG IN LIBDISPATCH: Premature thread recycling";
    qword_E42C0 = v13;
    __break(1u);
    JUMPOUT(0x4BEB0);
  }

  v11 = v16;
  v17 = v16;
  _dispatch_thread_setspecific(20, v16);
  v24 = v15;
  v3 = _dispatch_thread_getspecific(25) == 0;
  v26 = v3;
  v25 = 2333;
  if (!v3)
  {
    _dispatch_abort(v25, v26);
  }

  _dispatch_thread_setspecific(25, v24);
  v31 = _dispatch_thread_getspecific(27);
  v29 = (v31 & 0xFFFFFFFFFFFFFFFELL);
  if ((v31 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFFFCLL)
  {
    v30 = 0;
  }

  else
  {
    v4 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\twlh[anon]: set current (releasing %p)", 833, v4, v29);
    v33 = v29;
    if (v29)
    {
      if (v33 != -4)
      {
        v32 = v33;
        v46 = v33;
        v43 = 1;
        v42 = 1;
        v44 = 1;
        v38 = 1;
        v37 = 1;
        v39 = 1;
        add_explicit = atomic_fetch_add_explicit((v33 + 96), 0xFFFFFFFF, memory_order_relaxed);
        v40 = add_explicit;
        v35 = add_explicit;
        v41 = add_explicit - 1;
        v45 = add_explicit - 1;
        if (((add_explicit - 1) & 0x80000000) != 0)
        {
          if (v45 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x4C080);
          }

          *(v46 + 7) = 0xDEAD000000000000;
          v34 = v46;
          _dispatch_object_dealloc(v46);
        }
      }
    }

    _dispatch_thread_setspecific(27, -4);
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
    __break(1u);
    JUMPOUT(0x4C0F0);
  }

  v10 = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  _dispatch_last_resort_autorelease_pool_push(v8);
  while (1)
  {
    v10 = _dispatch_root_queue_drain_one(v16);
    if (!v10)
    {
      break;
    }

    if (v9 && (_dispatch_set_qos_class_enabled & 1) != 0)
    {
      _pthread_workqueue_override_reset();
    }

    _dispatch_continuation_pop_inline(v10, v8, v14, v16);
    v21 = _dispatch_thread_getspecific(25);
    v23 = v21 & 0xF0000;
    v20 = (v21 & 0xF0000) >> 16;
    if ((v21 & 0xF0000) >> 16)
    {
      v21 &= 0xFFF0FFFF;
      _dispatch_thread_setspecific(25, v21);
      v22 = v20 != 15;
    }

    else
    {
      v22 = 0;
    }

    v9 = v22;
    v19 = v8;
    v18 = _dispatch_thread_getspecific(120);
    if (v18)
    {
      break;
    }

    _dispatch_thread_setspecific(120, 0);
  }

  _dispatch_last_resort_autorelease_pool_pop(v8);
  v5 = _dispatch_thread_getspecific(27) == -4;
  v28 = v5;
  v27 = 879;
  if (!v5)
  {
    _dispatch_abort(v27, v28);
  }

  v6 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\twlh[anon]: clear current", 880, v6);
  _dispatch_thread_setspecific(27, 0);
  _dispatch_thread_setspecific(5, 0);
  _dispatch_thread_setspecific(25, 0);
  return _dispatch_thread_setspecific(20, 0);
}

uint64_t _dispatch_root_queue_drain_one(uint64_t a1)
{
  while (1)
  {
    v6 = __swp(0xFFFFFFFF, (a1 + 104));
    if (v6)
    {
      break;
    }

    v1 = -1;
    atomic_compare_exchange_strong_explicit((a1 + 104), &v1, 0, memory_order_relaxed, memory_order_relaxed);
    if (v1 == -1 && (!*(a1 + 48) || !__DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(a1, _dispatch_root_queue_head_tail_quiesced)))
    {
      return 0;
    }
  }

  v5 = *(v6 + 16);
  if (v5)
  {
    goto LABEL_11;
  }

  *(a1 + 104) = 0;
  v2 = v6;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != v6)
  {
    v4 = *(v6 + 16);
    if (!v4)
    {
      v4 = _dispatch_wait_for_enqueuer((v6 + 16), a1 + 48);
    }

    v5 = v4;
LABEL_11:
    *(a1 + 104) = v5;
    _dispatch_root_queue_poke(a1, 1u, 0);
  }

  return v6;
}

BOOL __DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v9 = 500;
  v8 = 1;
  v7 = 0;
  while (1)
  {
    v6 = 0;
    v5 = 79;
    do
    {
      if (!v5--)
      {
        break;
      }

      __yield();
      v8 = a2(a1);
      v6 = v8 != 0;
    }

    while (!v8);
    if (v6)
    {
      break;
    }

    if ((v7 & 1) == 0)
    {
      atomic_fetch_add_explicit((a1 + 112), 1u, memory_order_release);
      v7 = 1;
    }

    thread_switch(0, 3, v9);
    v8 = a2(a1);
    if (v8)
    {
      break;
    }

    v9 *= 2;
    if (v9 >= 0x186A0)
    {
      v3 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tcontention on global queue: %p", 7148, v3, a1);
      break;
    }
  }

  if (v7)
  {
    atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire);
    if (*(a1 + 48))
    {
      v8 = 1;
    }
  }

  if (!v8)
  {
    _dispatch_root_queue_poke(a1, 1u, 0);
  }

  return v8 == 1;
}

uint64_t _dispatch_root_queue_head_tail_quiesced(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ((*(a1 + 104) == 0) == (v2 == 0))
  {
    if (v2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 0;
  }
}

void _dispatch_root_queue_init_pthread_pool(uint64_t result, int a2, int a3)
{
  v8 = *(result + 32);
  v7 = 32;
  if ((a3 & 0x80000000) == 0)
  {
    v7 = MEMORY[0xFFFFFC034];
  }

  if (a2 && a2 < v7)
  {
    v7 = a2;
  }

  *(result + 100) = v7;
  if ((a3 & 0xF00) >> 8)
  {
    v3 = (a3 & 0xF00) >> 8;
  }

  else
  {
    v3 = (a3 & 0xF000) >> 12;
  }

  switch(v3)
  {
    case 1:
      v9 = 5;
      break;
    case 2:
      v9 = QOS_CLASS_BACKGROUND;
      break;
    case 3:
      v9 = QOS_CLASS_UTILITY;
      break;
    case 4:
      v9 = QOS_CLASS_DEFAULT;
      break;
    case 5:
      v9 = QOS_CLASS_USER_INITIATED;
      break;
    case 6:
      v9 = QOS_CLASS_USER_INTERACTIVE;
      break;
    default:
      v9 = QOS_CLASS_UNSPECIFIED;
      break;
  }

  if (v9)
  {
    v6 = pthread_attr_init(v8);
    if (v6)
    {
      _dispatch_bug(7516, v6);
    }

    v5 = pthread_attr_setdetachstate(v8, 2);
    if (v5)
    {
      _dispatch_bug(7518, v5);
    }

    v4 = pthread_attr_set_qos_class_np(v8, v9, 0);
    if (v4)
    {
      _dispatch_bug(7522, v4);
    }
  }

  *(v8 + 72) = _OS_dispatch_semaphore_vtable;
  *(v8 + 136) = 0;
  if (!*(v8 + 136))
  {
    _dispatch_sema4_create_slow((v8 + 136), 2);
  }
}

void _dispatch_mgr_priority_raise(pthread_attr_t *a1)
{
  v14 = a1;
  v24 = &_dispatch_mgr_sched_pred;
  v23 = 0;
  v22 = _dispatch_mgr_sched_init;
  if (_dispatch_mgr_sched_pred != -1)
  {
    dispatch_once_f(v24, v23, v22);
  }

  v13 = 0;
  v12 = pthread_attr_getschedparam(v14, &v13);
  v18 = v12;
  v17 = 6350;
  if (v12)
  {
    _dispatch_bug(v17, v18);
  }

  v11 = v12;
  v10 = QOS_CLASS_UNSPECIFIED;
  __qos_class = QOS_CLASS_UNSPECIFIED;
  pthread_attr_get_qos_class_np(v14, &__qos_class, 0);
  if (__qos_class)
  {
    v13.sched_priority = _dispatch_mgr_sched_qos2prio(__qos_class);
    v10 = dword_E467C;
    do
    {
      if (v10 >= __qos_class)
      {
        break;
      }

      v1 = v10;
      v2 = v10;
      atomic_compare_exchange_strong_explicit(&dword_E467C, &v2, __qos_class, memory_order_relaxed, memory_order_relaxed);
      if (v2 != v1)
      {
        v10 = v2;
      }
    }

    while (v2 != v1);
  }

  sched_priority = v13.sched_priority;
  v8 = _dispatch_mgr_sched;
  while (v8 < sched_priority)
  {
    v3 = v8;
    v4 = v8;
    atomic_compare_exchange_strong_explicit(&_dispatch_mgr_sched, &v4, sched_priority, memory_order_relaxed, memory_order_relaxed);
    if (v4 != v3)
    {
      v8 = v4;
    }

    if (v4 == v3)
    {
      v21 = &_dispatch_root_queues_pred;
      v20 = 0;
      v19 = _dispatch_root_queues_init_once;
      if (_dispatch_root_queues_pred != -1)
      {
        dispatch_once_f(v21, v20, v19);
      }

      if (_dispatch_kevent_workqueue_enabled)
      {
        v6 = 0;
        if (sched_priority <= dword_E4680)
        {
          if (__qos_class)
          {
            v6 = _pthread_qos_class_encode();
          }
        }

        else
        {
          v6 = sched_priority | 0x20000000;
        }

        if (v6)
        {
          v5 = _pthread_workqueue_set_event_manager_priority();
          v16 = v5;
          v15 = 6382;
          if (v5)
          {
            _dispatch_bug(v15, v16);
          }
        }
      }

      else if (qword_E4688)
      {
        _dispatch_mgr_priority_apply();
      }

      return;
    }
  }
}

void _dispatch_runloop_queue_class_poke(uint64_t result)
{
  v3 = *(result + 32);
  v1 = 0;
  if (v3)
  {
    v1 = v3 != -1;
  }

  if (v1)
  {
    v2 = _dispatch_send_wakeup_runloop_thread(v3, 0);
    if (v2 != 16 && v2 != 268435460 && v2 != 268435459)
    {
      if (v2)
      {
        _dispatch_bug(7983, v2);
      }
    }
  }
}

uint64_t _dispatch_main_queue_update_priority_from_thread()
{
  v7 = qword_E0038[0];
  result = _dispatch_thread_getspecific(4);
  if ((result & 0x20000000) != 0)
  {
    _dispatch_abort(458, (result & 0x20000000) == 0);
  }

  v1 = (result & 0x3FFF00) >> 8;
  v2 = __clz(__rbit32(v1));
  if (v1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v6 = ((result | (v3 << 8)) & 0xF00) >> 8;
  v5 = (v7 & 0x700000000uLL) >> 32;
  v4 = (dword_E0054 & 0xF00) >> 8;
  dword_E0054 = result | (v3 << 8);
  if (v4 < v5 && !v6)
  {
    if ((_dispatch_set_qos_class_enabled & 1) == 0)
    {
      return result;
    }

    return _pthread_qos_override_end_direct();
  }

  if (v4 >= v5 || v5 > v6)
  {
    if (v6 < v5 && v5 <= v4 && (_dispatch_set_qos_class_enabled & 1) != 0)
    {
      return _pthread_qos_override_start_direct();
    }
  }

  else if (_dispatch_set_qos_class_enabled)
  {
    return _pthread_qos_override_end_direct();
  }

  return result;
}

uint64_t _dispatch_root_queues_init_once(uint64_t a1)
{
  v10 = a1;
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  v9 = _pthread_workqueue_supported();
  v8 = 45;
  if ((v9 & 0x10) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: QoS Maintenance support required";
    qword_E42C0 = v9;
    __break(1u);
    JUMPOUT(0x4D648);
  }

  v4 = 0x200000000uLL;
  v5 = 0uLL;
  v6 = 64;
  v7 = 72;
  if (_dispatch_kevent_workqueue_enabled)
  {
    if ((v9 & 0x80) != 0)
    {
      *(&v5 + 1) = _dispatch_worker_thread2;
      *(&v4 + 1) = _dispatch_kevent_worker_thread;
      *&v5 = _dispatch_workloop_worker_thread;
      result = pthread_workqueue_setup();
      v8 = result;
    }

    else
    {
      if ((v9 & 0x40) == 0)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Missing Kevent WORKQ support";
        qword_E42C0 = v9;
        __break(1u);
        JUMPOUT(0x4D7B8);
      }

      *(&v5 + 1) = _dispatch_worker_thread2;
      *(&v4 + 1) = _dispatch_kevent_worker_thread;
      result = pthread_workqueue_setup();
      v8 = result;
    }
  }

  else
  {
    *(&v5 + 1) = _dispatch_worker_thread2;
    result = pthread_workqueue_setup();
    v8 = result;
  }

  if (v8)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Root queue initialization failed";
    qword_E42C0 = v9 | (v8 << 16);
    __break(1u);
    JUMPOUT(0x4D818);
  }

  if ((_dispatch_mode & 4) != 0)
  {
    v3 = -1;
    result = sysctlbyname("kern.wq_limit_cooperative_threads", 0, 0, &v3, 4uLL);
    v8 = result;
    if (result)
    {
      v11 = 1;
      v12 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v2 = **(StatusReg + 8);
      qword_E4290 = "BUG IN LIBDISPATCH: Unable to limit cooperative pool size";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x4D8CCLL);
    }
  }

  return result;
}

uint64_t _dispatch_worker_thread2(uint64_t a1)
{
  _dispatch_thread_setspecific(120, 0);
  v14 = a1 < 0;
  v13 = (a1 & 0x8000000) != 0;
  v16 = a1 & 0xFFFFFFFF88FFFFFFLL;
  _dispatch_thread_setspecific(4, v16);
  v11 = 0;
  if (v13)
  {
    v10 = 4;
    v11 = 0x200000;
  }

  else
  {
    if (v14)
    {
      v1 = 2;
    }

    else
    {
      v1 = 0;
    }

    v10 = v1;
  }

  v2 = (v16 & 0x3FFF00) >> 8;
  v3 = __clz(__rbit32(v2));
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v8 = 1;
  if (v4)
  {
    v8 = v4 > 6;
  }

  if (v8)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x4DA80);
  }

  v17 = 0;
  if ((v10 & 2) != 0)
  {
    v17 = 1;
  }

  else if ((v10 & 4) != 0)
  {
    v17 = 2;
  }

  v12 = &(&_dispatch_root_queues)[16 * (3 * v4 + v17 - 3)];
  v9 = atomic_fetch_add_explicit((v12 + 14), 0xFFFFFFFF, memory_order_acquire) - 1;
  if (v9 < 0)
  {
    _dispatch_abort(7474, v9 >= 0);
  }

  v20 = _dispatch_thread_getspecific(29);
  v7 = 1;
  if (v20)
  {
    v7 = v20 & 1;
  }

  if ((v7 & 1) == 0)
  {
    _dispatch_abort(475, v7 & 1);
  }

  if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    _dispatch_free_deferred_unotes((v20 & 0xFFFFFFFFFFFFFFFELL));
    _dispatch_thread_setspecific(29, 0);
  }

  _dispatch_root_queue_drain(v12, *(v12 + 21), v11 | 0x30000);
  v5 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: root queue clear", 7488, v5, 0);
  if (_dispatch_set_qos_class_enabled)
  {
    v18 = _dispatch_thread_getspecific(4);
    if ((v18 & 0x1000000) != 0)
    {
      v19 = v18 & 0xFFFFFFFFFEFFFFFFLL;
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

  if (v19 || _dispatch_thread_getspecific(28))
  {
    _dispatch_set_priority_and_voucher_slow(v19, 0, 14);
  }

  return _dispatch_thread_setspecific(120, 0);
}

void _dispatch_kevent_worker_thread(uint64_t *result, unsigned int *a2)
{
  v20 = 0;
  if (result)
  {
    v20 = a2 != 0;
  }

  if (v20)
  {
    if (*a2 && *result)
    {
      v23 = _dispatch_thread_getspecific(27) & 0xFFFFFFFFFFFFFFFELL;
      if (v23 == -4)
      {
        v24 = 0;
      }

      else
      {
        v2 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\twlh[anon]: set current (releasing %p)", 833, v2, v23);
        if (v23)
        {
          v25 = atomic_fetch_add_explicit((v23 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
          if (v25 < 0)
          {
            if (v25 <= -2)
            {
              qword_E4290 = "API MISUSE: Over-release of an object";
              __break(1u);
              JUMPOUT(0x4E1CCLL);
            }

            *(v23 + 56) = 0xDEAD000000000000;
            _dispatch_object_dealloc(v23);
          }
        }

        _dispatch_thread_setspecific(27, -4);
        v24 = 1;
      }

      if ((v24 & 1) == 0)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
        __break(1u);
        JUMPOUT(0x4E23CLL);
      }

      v3 = *result;
      v39 = -4;
      v38 = v3;
      v37 = a2;
      _dispatch_thread_setspecific(120, 0);
      v31 = 0uLL;
      v32 = 0;
      v33 = -4;
      v34 = 0;
      v35 = v38;
      v36 = 0;
      v30 = 0;
      v29 = _dispatch_wlh_uses_bound_thread(0xFFFFFFFFFFFFFFFCLL);
      memset(&token_out, 0, sizeof(token_out));
      wg = 0;
      if (v29)
      {
        _dispatch_wlh_uses_bound_thread_setup(v39);
      }

      else
      {
        wg = _dispatch_wlh_get_workgroup(v39);
        if (wg)
        {
          v26 = os_workgroup_join(wg, &token_out);
          if (v26 == 22)
          {
            v4 = _dispatch_thread_getspecific(0);
            _dispatch_log("%u\t%p\twlh[%p]: Failed to join cancelled workgroup %p", 6742, v4, v39, wg);
            wg = 0;
          }

          else if (v26)
          {
            qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_workloop os_workgroup_join failed";
            qword_E42C0 = v26;
            __break(1u);
            JUMPOUT(0x4E3D8);
          }
        }
      }

      v75 = &v31;
      v85 = v33;
      v84 = 6581;
      if (!v33)
      {
        _dispatch_abort(v84, 0);
      }

      v77 = _dispatch_thread_getspecific(4);
      v74 = v77;
      if ((v77 & 0x2000000) != 0)
      {
        if ((v74 & 0x20000000) != 0)
        {
          v107 = v74;
          v74 = BYTE3(v74) << 24;
        }

        v80 = v74;
        v79 = 0x1000000;
        v78 = 0;
        v74 &= ~0x1000000uLL;
        _dispatch_thread_setspecific(4, v74);
        v108 = 0x2000000;
        v6 = _dispatch_thread_getspecific(25) == 0;
        v110 = v6;
        v109 = 2345;
        if (!v6)
        {
          _dispatch_abort(v109, v110);
        }

        v108 |= 0xF0000u;
        _dispatch_thread_setspecific(25, v108);
        v73 = &_dispatch_mgr_q;
        v86 = &_dispatch_mgr_q;
        _dispatch_thread_setspecific(20, &_dispatch_mgr_q);
        v96 = &_dispatch_mgr_q;
        v95 = 0;
        v94 = 0;
        v99 = _dispatch_thread_getspecific(3);
        v93 = v99 & 0xFFFFFFFC | 0x40020000000000;
        v92 = 0;
        v91 = (v96 + 7);
        v95 = v96[7];
        do
        {
          v94 = v95;
          v98 = v95;
          v19 = 1;
          if (!(v95 >> 53))
          {
            v97 = v95;
            v100 = v95;
            v19 = (v95 & 0xFFFFFFFC) != 0;
          }

          if (v19)
          {
            v90 = v95;
            qword_E4290 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
            qword_E42C0 = v95;
            __break(1u);
            JUMPOUT(0x4E6FCLL);
          }

          v94 &= 0x7700000001uLL;
          v94 |= v93;
          v89 = v94;
          v7 = v95;
          v8 = v95;
          atomic_compare_exchange_strong_explicit(v91, &v8, v94, memory_order_acquire, memory_order_acquire);
          if (v8 != v7)
          {
            v95 = v8;
          }

          v88 = v8 == v7;
          v92 = v8 == v7;
        }

        while (v8 != v7);
        v87 = v92;
        v76 = 1;
      }

      else
      {
        v83 = v74;
        v82 = 2013265919;
        v81 = 0;
        v74 &= 0xFFFFFFFF88FFFFFFLL;
        if (*(v75 + 3) == -4)
        {
          v74 |= 0x1000000uLL;
        }

        _dispatch_thread_setspecific(4, v74);
        if (*(v75 + 3) == -4)
        {
          *(v75 + 52) = 1;
        }

        else
        {
          v5 = _dispatch_thread_getspecific(0);
          _dispatch_log("%u\t%p\twlh[%p]: handling events", 6601, v5, *(v75 + 3));
        }

        v76 = 0;
      }

      v30 = v76;
      if (v76)
      {
        v10 = *v37;
        v58 = 1;
        v57 = &_dispatch_mgr_q;
        v56 = v10;
        v33 = -4;
      }

      else
      {
        if (v39 == -4)
        {
          v18 = 0;
        }

        else
        {
          v18 = v39;
        }

        v9 = *v37;
        v61 = 1;
        v60 = v18;
        v59 = v9;
      }

      v62 = _dispatch_thread_getspecific(29);
      v17 = 1;
      if (v62)
      {
        v17 = v62 & 1;
      }

      v64 = v17 & 1;
      v63 = 475;
      if ((v17 & 1) == 0)
      {
        _dispatch_abort(v63, v64);
      }

      if ((v62 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        _dispatch_free_deferred_unotes((v62 & 0xFFFFFFFFFFFFFFFELL));
      }

      v68 = &v31;
      v70 = (&v31 & 1) == 0;
      v69 = 443;
      if (&v31)
      {
        _dispatch_abort(v69, v70);
      }

      _dispatch_thread_setspecific(29, v68);
      _dispatch_event_loop_merge(v38, *v37);
      if (v30)
      {
        v55 = 2;
        v54 = &_dispatch_mgr_q;
        v53 = 0;
        _dispatch_mgr_queue_drain(v11);
        if (byte_E4436)
        {
          _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
        }

        v118 = &_dispatch_mgr_q;
        v116 = 0;
        v115 = 0;
        v114 = &qword_E0138;
        v117 = qword_E0138;
        do
        {
          v116 = (v117 - 0x40020000000000) & 0xFFFFFFF000000001;
          v113 = v116;
          v12 = v117;
          v13 = v117;
          atomic_compare_exchange_strong_explicit(v114, &v13, v116, memory_order_release, memory_order_relaxed);
          if (v13 != v12)
          {
            v117 = v13;
          }

          v112 = v13 == v12;
          v115 = v13 == v12;
        }

        while (v13 != v12);
        v111 = v115;
        v119 = v117;
        v102 = (v117 & 0x8000000000) != 0;
        _dispatch_thread_setspecific(25, 0);
        v101 = 0;
        v106 = 0;
        _dispatch_thread_setspecific(20, 0);
        if (v102)
        {
          v105 = 3;
          v104 = &_dispatch_mgr_q;
          v103 = 1;
          _dispatch_event_loop_poke(-8, 0, 0);
        }
      }

      else if (*(&v31 + 1))
      {
        v14 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\twlh[%p]: draining deferred item %p", 6779, v14, v33, *(&v31 + 1));
        if (v33 == -4)
        {
          v43 = v36 == 0;
          v42 = 6781;
          if (v36)
          {
            _dispatch_abort(v42, v43);
          }

          v41 = v34 == 0;
          v40 = 6782;
          if (v34)
          {
            _dispatch_abort(v40, v41);
          }

          v65 = 0;
          v67 = 1;
          v66 = 443;
          _dispatch_thread_setspecific(29, 0);
          v52 = 2;
          v51 = v31;
          v50 = 0;
          _dispatch_root_queue_drain_deferred_item(&v31);
        }

        else
        {
          v49 = 2;
          v48 = v39;
          v47 = 0;
          _dispatch_root_queue_drain_deferred_wlh(&v31);
        }
      }

      if ((v29 & 1) == 0 && wg)
      {
        os_workgroup_leave(wg, &token_out);
      }

      v72 = v34;
      if (v34)
      {
        v71 = v72 | 1;
        _dispatch_thread_setspecific(29, v72 | 1);
      }

      else
      {
        _dispatch_thread_setspecific(29, 0);
      }

      v15 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\treturning %d deferred kevents", 6807, v15, v36);
      _dispatch_thread_setspecific(5, 0);
      _dispatch_thread_setspecific(120, 0);
      *v37 = v36;
      v46 = 4;
      v45 = 0;
      v44 = 0;
      if (_dispatch_thread_getspecific(27) != -4)
      {
        _dispatch_abort(879, 0);
      }

      v16 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\twlh[anon]: clear current", 880, v16);
      _dispatch_thread_setspecific(27, 0);
      _dispatch_thread_setspecific(5, 0);
    }
  }

  else
  {
    _dispatch_bug(6827, v20);
  }
}

void _dispatch_workloop_worker_thread(uint64_t **result, uint64_t *a2, unsigned int *a3)
{
  v22 = 0;
  if (result)
  {
    v22 = 0;
    if (a2)
    {
      v22 = a3 != 0;
    }
  }

  if (v22)
  {
    v24 = *result != 0;
    if (!*result)
    {
      _dispatch_bug(6849, *result != 0);
    }

    if (v24)
    {
      if (*a3 && *a2)
      {
        v23 = *result;
        v123 = *result;
        v126 = _dispatch_thread_getspecific(27);
        v122 = (v126 & 0xFFFFFFFFFFFFFFFELL);
        v3 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\twlh[%p]: adopt current (releasing %p)", 853, v3, v123, (v126 & 0xFFFFFFFFFFFFFFFELL));
        if ((v126 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFFFCLL)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
          __break(1u);
          JUMPOUT(0x4EF80);
        }

        if (v122 != v123)
        {
          v125 = v123;
          v124 = 858;
          if (!v123)
          {
            _dispatch_abort(v124, 0);
          }

          v128 = v122;
          if (v122)
          {
            v127 = v128;
            v141 = v128;
            v138 = 1;
            v137 = 1;
            v139 = 1;
            v133 = 1;
            v132 = 1;
            v134 = 1;
            add_explicit = atomic_fetch_add_explicit((v128 + 12), 0xFFFFFFFF, memory_order_relaxed);
            v135 = add_explicit;
            v130 = add_explicit;
            v136 = add_explicit - 1;
            v140 = add_explicit - 1;
            if (((add_explicit - 1) & 0x80000000) != 0)
            {
              if (v140 <= -2)
              {
                qword_E4290 = "API MISUSE: Over-release of an object";
                __break(1u);
                JUMPOUT(0x4F0A8);
              }

              v141[7] = 0xDEAD000000000000;
              v129 = v141;
              _dispatch_object_dealloc(v141);
            }
          }

          v148 = v123;
          if (v123)
          {
            if (v148 != -4)
            {
              v147 = v148;
              v160 = v148;
              v157 = 1;
              v156 = 1;
              v158 = 1;
              v152 = 1;
              v151 = 1;
              v153 = 1;
              v150 = atomic_fetch_add_explicit((v148 + 12), 1u, memory_order_relaxed);
              v154 = v150;
              v149 = v150;
              v155 = v150 + 1;
              v159 = v150 + 1;
              if ((v150 + 1) <= 0)
              {
                qword_E4290 = "API MISUSE: Resurrection of an object";
                __break(1u);
                JUMPOUT(0x4F1A0);
              }
            }
          }
        }

        _dispatch_thread_setspecific(27, v123);
        v4 = *a2;
        v41 = v23;
        v40 = v4;
        v39 = a3;
        _dispatch_thread_setspecific(120, 0);
        v33 = 0uLL;
        v34 = 0;
        v35 = v23;
        v36 = 0;
        v37 = v40;
        v38 = 0;
        v32 = 0;
        v31 = _dispatch_wlh_uses_bound_thread(v23);
        memset(&token_out, 0, sizeof(token_out));
        wg = 0;
        if (v31)
        {
          _dispatch_wlh_uses_bound_thread_setup(v41);
        }

        else
        {
          wg = _dispatch_wlh_get_workgroup(v41);
          if (wg)
          {
            v28 = os_workgroup_join(wg, &token_out);
            if (v28 == 22)
            {
              v5 = _dispatch_thread_getspecific(0);
              _dispatch_log("%u\t%p\twlh[%p]: Failed to join cancelled workgroup %p", 6742, v5, v41, wg);
              wg = 0;
            }

            else if (v28)
            {
              qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_workloop os_workgroup_join failed";
              qword_E42C0 = v28;
              __break(1u);
              JUMPOUT(0x4F354);
            }
          }
        }

        v77 = &v33;
        v87 = v35;
        v86 = 6581;
        if (!v35)
        {
          _dispatch_abort(v86, 0);
        }

        v79 = _dispatch_thread_getspecific(4);
        v76 = v79;
        if ((v79 & 0x2000000) != 0)
        {
          if ((v76 & 0x20000000) != 0)
          {
            v109 = v76;
            v76 = BYTE3(v76) << 24;
          }

          v82 = v76;
          v81 = 0x1000000;
          v80 = 0;
          v76 &= ~0x1000000uLL;
          _dispatch_thread_setspecific(4, v76);
          v110 = 0x2000000;
          v7 = _dispatch_thread_getspecific(25) == 0;
          v112 = v7;
          v111 = 2345;
          if (!v7)
          {
            _dispatch_abort(v111, v112);
          }

          v110 |= 0xF0000u;
          _dispatch_thread_setspecific(25, v110);
          v75 = &_dispatch_mgr_q;
          v88 = &_dispatch_mgr_q;
          _dispatch_thread_setspecific(20, &_dispatch_mgr_q);
          v98 = &_dispatch_mgr_q;
          v97 = 0;
          v96 = 0;
          v101 = _dispatch_thread_getspecific(3);
          v95 = v101 & 0xFFFFFFFC | 0x40020000000000;
          v94 = 0;
          v93 = (v98 + 7);
          v97 = v98[7];
          do
          {
            v96 = v97;
            v100 = v97;
            v21 = 1;
            if (!(v97 >> 53))
            {
              v99 = v97;
              v102 = v97;
              v21 = (v97 & 0xFFFFFFFC) != 0;
            }

            if (v21)
            {
              v92 = v97;
              qword_E4290 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
              qword_E42C0 = v97;
              __break(1u);
              JUMPOUT(0x4F678);
            }

            v96 &= 0x7700000001uLL;
            v96 |= v95;
            v91 = v96;
            v8 = v97;
            v9 = v97;
            atomic_compare_exchange_strong_explicit(v93, &v9, v96, memory_order_acquire, memory_order_acquire);
            if (v9 != v8)
            {
              v97 = v9;
            }

            v90 = v9 == v8;
            v94 = v9 == v8;
          }

          while (v9 != v8);
          v89 = v94;
          v78 = 1;
        }

        else
        {
          v85 = v76;
          v84 = 2013265919;
          v83 = 0;
          v76 &= 0xFFFFFFFF88FFFFFFLL;
          if (*(v77 + 3) == -4)
          {
            v76 |= 0x1000000uLL;
          }

          _dispatch_thread_setspecific(4, v76);
          if (*(v77 + 3) == -4)
          {
            *(v77 + 52) = 1;
          }

          else
          {
            v6 = _dispatch_thread_getspecific(0);
            _dispatch_log("%u\t%p\twlh[%p]: handling events", 6601, v6, *(v77 + 3));
          }

          v78 = 0;
        }

        v32 = v78;
        if (v78)
        {
          v11 = *v39;
          v60 = 1;
          v59 = &_dispatch_mgr_q;
          v58 = v11;
          v35 = -4;
        }

        else
        {
          if (v41 == -4)
          {
            v20 = 0;
          }

          else
          {
            v20 = v41;
          }

          v10 = *v39;
          v63 = 1;
          v62 = v20;
          v61 = v10;
        }

        v64 = _dispatch_thread_getspecific(29);
        v19 = 1;
        if (v64)
        {
          v19 = v64 & 1;
        }

        v66 = v19 & 1;
        v65 = 475;
        if ((v19 & 1) == 0)
        {
          _dispatch_abort(v65, v66);
        }

        if ((v64 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          _dispatch_free_deferred_unotes((v64 & 0xFFFFFFFFFFFFFFFELL));
        }

        v70 = &v33;
        v72 = (&v33 & 1) == 0;
        v71 = 443;
        if (&v33)
        {
          _dispatch_abort(v71, v72);
        }

        _dispatch_thread_setspecific(29, v70);
        _dispatch_event_loop_merge(v40, *v39);
        if (v32)
        {
          v57 = 2;
          v56 = &_dispatch_mgr_q;
          v55 = 0;
          _dispatch_mgr_queue_drain(v12);
          if (byte_E4436)
          {
            _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
          }

          v120 = &_dispatch_mgr_q;
          v118 = 0;
          v117 = 0;
          v116 = &qword_E0138;
          v119 = qword_E0138;
          do
          {
            v118 = (v119 - 0x40020000000000) & 0xFFFFFFF000000001;
            v115 = v118;
            v13 = v119;
            v14 = v119;
            atomic_compare_exchange_strong_explicit(v116, &v14, v118, memory_order_release, memory_order_relaxed);
            if (v14 != v13)
            {
              v119 = v14;
            }

            v114 = v14 == v13;
            v117 = v14 == v13;
          }

          while (v14 != v13);
          v113 = v117;
          v121 = v119;
          v104 = (v119 & 0x8000000000) != 0;
          _dispatch_thread_setspecific(25, 0);
          v103 = 0;
          v108 = 0;
          _dispatch_thread_setspecific(20, 0);
          if (v104)
          {
            v107 = 3;
            v106 = &_dispatch_mgr_q;
            v105 = 1;
            _dispatch_event_loop_poke(-8, 0, 0);
          }
        }

        else if (*(&v33 + 1))
        {
          v15 = _dispatch_thread_getspecific(0);
          _dispatch_log("%u\t%p\twlh[%p]: draining deferred item %p", 6779, v15, v35, *(&v33 + 1));
          if (v35 == -4)
          {
            v45 = v38 == 0;
            v44 = 6781;
            if (v38)
            {
              _dispatch_abort(v44, v45);
            }

            v43 = v36 == 0;
            v42 = 6782;
            if (v36)
            {
              _dispatch_abort(v42, v43);
            }

            v67 = 0;
            v69 = 1;
            v68 = 443;
            _dispatch_thread_setspecific(29, 0);
            v54 = 2;
            v53 = v33;
            v52 = 0;
            _dispatch_root_queue_drain_deferred_item(&v33);
          }

          else
          {
            v51 = 2;
            v50 = v41;
            v49 = 0;
            _dispatch_root_queue_drain_deferred_wlh(&v33);
          }
        }

        if ((v31 & 1) == 0 && wg)
        {
          os_workgroup_leave(wg, &token_out);
        }

        v74 = v36;
        if (v36)
        {
          v73 = v74 | 1;
          _dispatch_thread_setspecific(29, v74 | 1);
        }

        else
        {
          _dispatch_thread_setspecific(29, 0);
        }

        v16 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\treturning %d deferred kevents", 6807, v16, v38);
        _dispatch_thread_setspecific(5, 0);
        _dispatch_thread_setspecific(120, 0);
        *v39 = v38;
        v48 = 4;
        v47 = 0;
        v46 = 0;
        v142 = v23;
        v146 = (v23 + 4) != 0;
        v145 = 869;
        if (v23 == -4)
        {
          _dispatch_abort(v145, v146);
        }

        v18 = v142;
        v17 = v18 == _dispatch_thread_getspecific(27);
        v144 = v17;
        v143 = 870;
        if (!v17)
        {
          _dispatch_abort(v143, v144);
        }

        _dispatch_thread_setspecific(27, v142 | 1);
      }
    }

    else
    {
      _dispatch_kevent_worker_thread(a2, a3);
    }
  }

  else
  {
    _dispatch_bug(6846, v22);
  }
}

uint64_t _dispatch_wlh_uses_bound_thread(uint64_t *a1)
{
  if (a1 == -4)
  {
    goto LABEL_7;
  }

  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  if (*(v2 + 16) == 131090 && _dispatch_workloop_uses_bound_thread(a1))
  {
    v3 = 1;
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t _dispatch_wlh_uses_bound_thread_setup(uint64_t result)
{
  v2 = result;
  if (*(result + 72))
  {
    result = _dispatch_thread_getspecific(124);
    if (!result)
    {
      pthread_setname_np(*(v2 + 72));
      result = _dispatch_thread_setspecific(124, 1);
    }
  }

  if (*(v2 + 200) && *(*(v2 + 200) + 32))
  {
    result = _dispatch_thread_getspecific(115);
    if (!result)
    {
      v1 = _dispatch_calloc_typed(1, 40, 0x10200401C7990E2);
      _os_workgroup_join_update_wg(*(*(v2 + 200) + 32), v1);
      return _dispatch_thread_setspecific(115, v1);
    }
  }

  return result;
}

uint64_t _dispatch_wlh_get_workgroup(uint64_t *a1)
{
  v3 = 0;
  if (a1 != -4)
  {
    v2 = 0;
    if (*a1)
    {
      v2 = *a1;
    }

    if (*(v2 + 16) == 131090 && a1[25])
    {
      return *(a1[25] + 32);
    }
  }

  return v3;
}

void _dispatch_root_queue_drain_deferred_item(uint64_t *a1)
{
  v8 = a1;
  v7 = *a1;
  v6 = v7;
  v22 = v7;
  _dispatch_thread_setspecific(20, v7);
  v20 = 2;
  v19 = 0;
  v18 = 0;
  memset(v5, 0, sizeof(v5));
  _dispatch_last_resort_autorelease_pool_push(v5);
  v40 = *(v7 + 84);
  v1 = _dispatch_thread_getspecific(25) == 0;
  v42 = v1;
  v41 = 2333;
  if (!v1)
  {
    _dispatch_abort(v41, v42);
  }

  _dispatch_thread_setspecific(25, v40);
  _dispatch_continuation_pop_inline(v8[1], v5, 196608, v7);
  _dispatch_last_resort_autorelease_pool_pop(v5);
  _dispatch_thread_setspecific(25, 0);
  v21 = 0;
  _dispatch_thread_setspecific(20, 0);
  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: root queue clear", 7379, v2, 0);
  v10 = 0;
  v9 = 14;
  v14 = 0;
  v13 = 0;
  v12 = 14;
  v26 = 0;
  v39 = 1;
  v38 = 2409;
  if (_dispatch_set_qos_class_enabled)
  {
    v37 = v26;
    v36 = 4261412863;
    v35 = 0;
    v26 &= 0xFFFFFFFF02FFFFFFLL;
    v28 = _dispatch_thread_getspecific(4);
    v25 = v28;
    v24 = 0x1000000;
    v23 = 2281701376;
    if ((v28 & 0x1000000) != 0)
    {
      if (v26)
      {
        v4 = v26;
      }

      else
      {
        v34 = v25;
        v33 = v24;
        v32 = 0;
        v4 = v25 & (~v24 | 0xFFFFFF);
      }

      v27 = v4;
    }

    else
    {
      v31 = v25;
      v30 = v23;
      v29 = 0;
      v25 &= ~v23 | 0xFFFFFF;
      if (v26 == v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  v14 = v27;
  if (v27)
  {
    goto LABEL_26;
  }

  if (v13 == -1)
  {
    v15 = -1;
    return;
  }

  v3 = v13;
  if (v3 != _dispatch_thread_getspecific(28))
  {
LABEL_26:
    _dispatch_set_priority_and_voucher_slow(v14, v13, v12);
  }

  else
  {
    v11 = (v12 & 4) != 0;
    if ((v12 & 2) != 0)
    {
      if (v11)
      {
        if (v13)
        {
          object = v13;
          os_release(v13);
        }
      }

      v13 = -1;
    }

    else if (!v11 && v13)
    {
      v17 = v13;
      os_retain(v13);
    }

    v15 = v13;
  }
}

void _dispatch_root_queue_drain_deferred_wlh(uint64_t *a1)
{
  v16 = a1;
  v15 = *a1;
  v14 = a1[1];
  v13 = v15;
  v48 = v15;
  _dispatch_thread_setspecific(20, v15);
  memset(v12, 0, sizeof(v12));
  v11 = 196610;
  v10 = 0;
  v72 = *(v15 + 84);
  v1 = _dispatch_thread_getspecific(25) == 0;
  v74 = v1;
  v73 = 2345;
  if (!v1)
  {
    _dispatch_abort(v73, v74);
  }

  v72 |= 0xF0000u;
  _dispatch_thread_setspecific(25, v72);
  *(v16 + 53) |= 4u;
  while (1)
  {
    v42 = *(v16 + 53) & 1;
    v41 = 7261;
    if (!v42)
    {
      _dispatch_abort(v41, 0);
    }

    v46 = v15;
    v45 = v14;
    v44 = 0;
    v43 = 0;
    v71 = v15;
    v70 = v14;
    v85 = v14;
    v84 = &v10;
    v83 = 0;
    v82 = 0;
    v92 = _dispatch_thread_getspecific(3);
    v81 = v92 & 0xFFFFFFFC | 0x60000000000000;
    v80 = 0;
    v79 = (v85 + 7);
    v83 = v85[7];
    do
    {
      v82 = v83;
      v88 = v83;
      if ((v83 & 0xFF80000000000000) != 0)
      {
        v82 &= ~1uLL;
      }

      else
      {
        v90 = v83;
        v94 = v83;
        if ((v83 & 0xFFFFFFFC) != 0)
        {
          v93 = v83;
          if ((v83 & 2) == 0)
          {
            break;
          }

          v82 |= 0x800000000uLL;
        }

        else
        {
          v82 &= 0x7700000001uLL;
          v82 |= v81;
        }
      }

      v78 = v82;
      v2 = v83;
      v3 = v83;
      atomic_compare_exchange_strong_explicit(v79, &v3, v82, memory_order_acquire, memory_order_acquire);
      if (v3 != v2)
      {
        v83 = v3;
      }

      v77 = v3 == v2;
      v80 = v3 == v2;
    }

    while (v3 != v2);
    v76 = v80;
    v86 = v83;
    LOBYTE(v9) = 1;
    if ((v83 & 0x2000000000) != 0)
    {
      v96 = v83;
      LOBYTE(v9) = 1;
      if (v83)
      {
        v91 = v83;
        v9 = (BYTE4(v83) >> 6) & 1;
      }
    }

    if (v9)
    {
      v75 = v83;
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid wlh state";
      qword_E42C0 = v83;
      __break(1u);
      JUMPOUT(0x50AE8);
    }

    if (v84)
    {
      *v84 = v82;
    }

    v87 = v83;
    v8 = 0;
    if ((v83 & 0xFF80000000000000) == 0)
    {
      v89 = v83;
      v95 = v83;
      v8 = (v83 & 0xFFFFFFFC) == 0;
    }

    if (!v8)
    {
      break;
    }

    v7 = 0;
    if (*v14)
    {
      v7 = *v14;
    }

    (*(v7 + 48))(v14, v12, v11);
    if ((*(v16 + 53) & 1) == 0)
    {
      goto LABEL_44;
    }

    v10 = v14[7];
    v30 = v10;
    if (((BYTE4(v10) >> 5) & 1) == 0)
    {
      goto LABEL_44;
    }

    v69 = v10;
    if ((v10 & 1) == 0)
    {
      goto LABEL_43;
    }

    _dispatch_retain(v14);
    v29 = v14[3];
    v28 = v14;
    v27 = 0;
    v26 = 0;
    v67 = v29;
    v66 = v14;
    v11 |= 0x10u;
  }

  v31 = v10;
  if ((v10 & 0xFF80000000000000) != 0)
  {
    v34 = v10;
    v40 = (v10 & 0x4000000001) == 0;
    v39 = 7331;
    if ((v10 & 0x4000000001) != 0)
    {
      _dispatch_abort(v39, v40);
    }

    _dispatch_release_2_no_dispose(v14);
  }

  else
  {
    v33 = v10;
    v38 = (v10 & 0x4000000001) != 0;
    v37 = 7334;
    if ((v10 & 0x4000000001) == 0)
    {
      _dispatch_abort(v37, v38);
    }

    v32 = v10;
    v68 = v10;
    v36 = (v10 & 0xFFFFFFFC) != 0;
    v35 = 7335;
    if ((v10 & 0xFFFFFFFC) == 0)
    {
      _dispatch_abort(v35, v36);
    }

    _dispatch_release_no_dispose(v14);
  }

LABEL_43:
  _dispatch_event_loop_leave_deferred(v16, v10);
LABEL_44:
  _dispatch_thread_setspecific(25, 0);
  v47 = 0;
  _dispatch_thread_setspecific(20, 0);
  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: root queue clear", 7348, v4, 0);
  v18 = 0;
  v17 = 14;
  v22 = 0;
  v21 = 0;
  v20 = 14;
  v52 = 0;
  v65 = 1;
  v64 = 2409;
  if (_dispatch_set_qos_class_enabled)
  {
    v63 = v52;
    v62 = 4261412863;
    v61 = 0;
    v52 &= 0xFFFFFFFF02FFFFFFLL;
    v54 = _dispatch_thread_getspecific(4);
    v51 = v54;
    v50 = 0x1000000;
    v49 = 2281701376;
    if ((v54 & 0x1000000) != 0)
    {
      if (v52)
      {
        v6 = v52;
      }

      else
      {
        v60 = v51;
        v59 = v50;
        v58 = 0;
        v6 = v51 & (~v50 | 0xFFFFFF);
      }

      v53 = v6;
    }

    else
    {
      v57 = v51;
      v56 = v49;
      v55 = 0;
      v51 &= ~v49 | 0xFFFFFF;
      if (v52 == v51)
      {
        v53 = 0;
      }

      else
      {
        v53 = v52;
      }
    }
  }

  else
  {
    v53 = 0;
  }

  v22 = v53;
  if (v53)
  {
    goto LABEL_67;
  }

  if (v21 == -1)
  {
    v23 = -1;
    return;
  }

  v5 = v21;
  if (v5 != _dispatch_thread_getspecific(28))
  {
LABEL_67:
    v23 = _dispatch_set_priority_and_voucher_slow(v22, v21, v20);
  }

  else
  {
    v19 = (v20 & 4) != 0;
    if ((v20 & 2) != 0)
    {
      if (v19 && v21)
      {
        object = v21;
        os_release(v21);
      }

      v21 = -1;
    }

    else if (!v19 && v21)
    {
      v25 = v21;
      os_retain(v21);
    }

    v23 = v21;
  }
}

void _dispatch_queue_cleanup2()
{
  v12 = &_dispatch_main_q;
  v10 = 0;
  v9 = 0;
  v8 = qword_E0038;
  v11 = qword_E0038[0];
  do
  {
    v10 = (v11 & 0xFFFFFF7FFFFFFFFFLL) + 0x40020000000000;
    v7 = v10;
    v0 = v11;
    v1 = v11;
    atomic_compare_exchange_strong_explicit(v8, &v1, v10, memory_order_acquire, memory_order_acquire);
    if (v1 != v0)
    {
      v11 = v1;
    }

    v6 = v1 == v0;
    v9 = v1 == v0;
  }

  while (v1 != v0);
  v5 = v9;
  v4[2] = v12;
  v24 = v12;
  v23 = 0x40000;
  v21 = -262145;
  v20 = -262145;
  v22 = -262145;
  v16 = -262145;
  v15 = -262145;
  v17 = -262145;
  v14 = atomic_fetch_and_explicit((v12 + 80), 0xFFFBFFFF, memory_order_relaxed);
  v18 = v14;
  v13 = v14;
  v19 = v14 & 0xFFFBFFFF;
  v4[1] = v12;
  _dispatch_lane_barrier_complete(v12, 0, 0);
  if (_dispatch_program_is_probably_callback_driven)
  {
    memset(&v28, 0, sizeof(v28));
    pthread_attr_init(&v28);
    pthread_attr_setdetachstate(&v28, 2);
    v4[0] = 0;
    v2 = 0;
    if (_dispatch_sig_thread)
    {
      v2 = _dispatch_sig_thread;
    }

    v3 = pthread_create(v4, &v28, v2, 0);
    if (v3)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to create signal thread";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x51730);
    }

    pthread_attr_destroy(&v28);
    sleep_NOCANCEL();
  }

  v27 = &_dispatch_main_q_handle_pred;
  v26 = v12;
  v25 = _dispatch_runloop_queue_handle_init;
  if (_dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(v27, v26, v25);
  }

  _dispatch_runloop_queue_handle_dispose(v12);
}

void _dispatch_sig_thread(uint64_t a1)
{
  v1 = pthread_self();
  pthread_get_stackaddr_np(v1);
  __memset_chk();
  _dispatch_sigsuspend();
}

void _dispatch_sigsuspend()
{
  pthread_sigmask(3, _dispatch_sigsuspend_mask, 0);
  while (1)
  {
    sigsuspend_NOCANCEL();
  }
}

void _dispatch_apply_invoke(uint64_t a1)
{
  v13 = a1;
  v12 = 0;
  i = 0;
  v7 = 1;
  v6 = 1;
  v8 = 1;
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  v9 = add_explicit;
  v4 = add_explicit;
  v10 = add_explicit;
  v1 = add_explicit < *(a1 + 48);
  v15 = v1;
  v14 = 210;
  if (!v1)
  {
    _dispatch_abort(v14, v15);
  }

  v3[0] = v13;
  v3[1] = v12;
  v3[2] = v10;
  _dispatch_apply_set_attr_behavior(*(v13 + 56), v10);
  v21 = (*(v13 + 32) + 8 * v10);
  v20 = v3;
  v19 = _dispatch_apply_invoke3;
  if (*v21 != -1)
  {
    dispatch_once_f(v21, v20, v19);
  }

  _dispatch_apply_clear_attr_behavior(*(v13 + 56), v10);
  if ((v12 & 2) != 0)
  {
    for (i = 0; i < *(v13 + 48); ++i)
    {
      if (i != v10)
      {
        v18 = (*(v13 + 32) + 8 * i);
        v17 = 0;
        v16 = _dispatch_no_op;
        if (*v18 != -1)
        {
          dispatch_once_f(v18, v17, v16);
        }
      }
    }
  }

  if (atomic_fetch_add_explicit((v13 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v22 = v13;
    if (*(v13 + 32))
    {
      free(*(v22 + 32));
    }

    if (*(v22 + 56))
    {
      dispatch_apply_attr_destroy(*(v22 + 56));
      free(*(v22 + 56));
    }

    v23 = v22;
    v24 = v22;
    v27 = v22;
    v26 = _dispatch_thread_getspecific(22);
    if (v26)
    {
      v2 = *(v26 + 8) + 1;
    }

    else
    {
      v2 = 1;
    }

    v25 = v2;
    if (v2 <= _dispatch_continuation_cache_limit)
    {
      *(v27 + 16) = v26;
      *(v27 + 8) = v25;
      _dispatch_thread_setspecific(22, v27);
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    v24 = v28;
    if (v28)
    {
      _dispatch_continuation_free_to_cache_limit(v24);
    }
  }
}

void _dispatch_apply_redirect_invoke(uint64_t a1)
{
  v13 = a1;
  v12 = 1;
  i = 0;
  v7 = 1;
  v6 = 1;
  v8 = 1;
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  v9 = add_explicit;
  v4 = add_explicit;
  v10 = add_explicit;
  v1 = add_explicit < *(a1 + 48);
  v15 = v1;
  v14 = 210;
  if (!v1)
  {
    _dispatch_abort(v14, v15);
  }

  v3[0] = v13;
  v3[1] = v12;
  v3[2] = v10;
  _dispatch_apply_set_attr_behavior(*(v13 + 56), v10);
  v21 = (*(v13 + 32) + 8 * v10);
  v20 = v3;
  v19 = _dispatch_apply_invoke3;
  if (*v21 != -1)
  {
    dispatch_once_f(v21, v20, v19);
  }

  _dispatch_apply_clear_attr_behavior(*(v13 + 56), v10);
  if ((v12 & 2) != 0)
  {
    for (i = 0; i < *(v13 + 48); ++i)
    {
      if (i != v10)
      {
        v18 = (*(v13 + 32) + 8 * i);
        v17 = 0;
        v16 = _dispatch_no_op;
        if (*v18 != -1)
        {
          dispatch_once_f(v18, v17, v16);
        }
      }
    }
  }

  if (atomic_fetch_add_explicit((v13 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v22 = v13;
    if (*(v13 + 32))
    {
      free(*(v22 + 32));
    }

    if (*(v22 + 56))
    {
      dispatch_apply_attr_destroy(*(v22 + 56));
      free(*(v22 + 56));
    }

    v23 = v22;
    v24 = v22;
    v27 = v22;
    v26 = _dispatch_thread_getspecific(22);
    if (v26)
    {
      v2 = *(v26 + 8) + 1;
    }

    else
    {
      v2 = 1;
    }

    v25 = v2;
    if (v2 <= _dispatch_continuation_cache_limit)
    {
      *(v27 + 16) = v26;
      *(v27 + 8) = v25;
      _dispatch_thread_setspecific(22, v27);
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    v24 = v28;
    if (v28)
    {
      _dispatch_continuation_free_to_cache_limit(v24);
    }
  }
}

void dispatch_apply_f(size_t iterations, dispatch_queue_t queue, void *context, void (__cdecl *work)(void *, size_t))
{
  v4 = 0;
  if (work)
  {
    v4 = work;
  }

  _dispatch_apply_with_attr_f(iterations, 0, queue, context, v4, 1);
}

double _dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a1;
  v56 = a2;
  v55 = a3;
  v54 = a4;
  v53 = a5;
  v52 = a6;
  if (a1)
  {
    if (v56 && !_dispatch_attr_is_initialized(v56))
    {
      v51 = v56;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
      qword_E42C0 = v56;
      __break(1u);
      JUMPOUT(0x5213CLL);
    }

    v59 = "apply";
    for (i = _dispatch_thread_getspecific(23); i; i = *i)
    {
      if (i[1] == v59)
      {
        v60 = i;
        goto LABEL_11;
      }
    }

    v60 = 0;
LABEL_11:
    v50 = v60;
    if (v60)
    {
      v37 = v50[2];
    }

    else
    {
      v37 = 0;
    }

    v49 = v37;
    v48 = _dispatch_thread_getspecific(20);
    queue = 0;
    if (v55)
    {
      queue = v55;
    }

    else
    {
      v69 = v48;
      v68 = 0;
      if (v48)
      {
        while (*(v69 + 24))
        {
          v68 = *(v69 + 24);
          v92 = v69;
          v36 = 1;
          if (*(v69 + 24) != &_dispatch_custom_workloop_root_queue)
          {
            v36 = *(v92 + 24) == &_dispatch_custom_workloop_overcommit_root_queue;
          }

          if (v36)
          {
            v67 = v69;
            v113 = v69;
            v114 = v69;
            v66 = v69;
            v70 = v69;
            goto LABEL_38;
          }

          v69 = v68;
        }
      }

      if (!v69)
      {
        goto LABEL_27;
      }

      v65 = v69;
      v207 = v69;
      v35 = 0;
      if (v69 >= &_dispatch_root_queues)
      {
        v35 = v207 < &unk_E0A80;
      }

      if (v35)
      {
LABEL_27:
        v89 = _dispatch_thread_getspecific(4);
        v62 = v89;
        v87 = (v89 & 0x3FFF00) >> 8;
        v6 = (v89 & 0x3FFF00) >> 8;
        v7 = __clz(__rbit32(v6));
        if (v6)
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = 0;
        }

        v61 = v8;
        if (v8)
        {
          v34 = v61;
        }

        else
        {
          v34 = 4;
        }

        v211 = v34;
        v210 = 0;
        v33 = 1;
        if (v34)
        {
          v33 = v211 > 6;
        }

        if (v33)
        {
          v209 = v211;
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
          qword_E42C0 = v211;
          __break(1u);
          JUMPOUT(0x5245CLL);
        }

        v208 = 0;
        v70 = &(&_dispatch_root_queues)[16 * (3 * v211 - 3)];
      }

      else
      {
        v64 = v69;
        v115 = v69;
        v116 = v69;
        v63 = v69;
        v70 = v69;
      }

LABEL_38:
      queue = v70;
    }

    v71 = *(queue + 21) & 0xF00;
    if (v71 >> 8)
    {
      v32 = v71 >> 8;
    }

    else
    {
      v72 = *(queue + 21) & 0xF000;
      v32 = v72 >> 12;
    }

    v46 = v32;
    if (*(queue + 3))
    {
      v90 = _dispatch_thread_getspecific(4);
      v88 = (v90 & 0x3FFF00) >> 8;
      v9 = (v90 & 0x3FFF00) >> 8;
      v10 = __clz(__rbit32(v9));
      if (v9)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = 0;
      }

      v46 = v11;
    }

    v82 = v56;
    v81 = v49;
    v80 = v46;
    v79 = 1;
    if (v56 && !_dispatch_attr_is_initialized(v82))
    {
      v78 = v82;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
      qword_E42C0 = v82;
      __break(1u);
      JUMPOUT(0x5261CLL);
    }

    v77 = 0;
    if (v82)
    {
      if (v81)
      {
        v77 = 1;
      }

      else
      {
        v75 = 2;
        v221 = v80;
        v220 = 2;
        v219 = 0;
        v218 = 0;
        if (v80)
        {
          v226 = v221;
          switch(v221)
          {
            case 1u:
              v227 = 5;
              break;
            case 2u:
              v227 = 9;
              break;
            case 3u:
              v227 = 17;
              break;
            case 4u:
              v227 = 21;
              break;
            case 5u:
              v227 = 25;
              break;
            case 6u:
              v227 = 33;
              break;
            default:
              v227 = 0;
              break;
          }

          v218 = pthread_qos_max_parallelism();
        }

        if (v218 < 1)
        {
          v233 = 0;
          v232 = 0xFFFFFC036;
          v219 = MEMORY[0xFFFFFC036];
        }

        else
        {
          v219 = v218;
        }

        v231 = 2;
        v230 = 0xFFFFFC034;
        v217 = MEMORY[0xFFFFFC034];
        if (MEMORY[0xFFFFFC034] < v219)
        {
          v219 = v217;
        }

        v74 = v219;
        v225 = v82;
        v224 = v80;
        v223 = -1;
        if (*(v82 + 8))
        {
          v240 = v224;
          v239 = 0;
          v241 = v224;
          switch(v224)
          {
            case 1u:
              v242 = 5;
              break;
            case 2u:
              v242 = 9;
              break;
            case 3u:
              v242 = 17;
              break;
            case 4u:
              v242 = 21;
              break;
            case 5u:
              v242 = 25;
              break;
            case 6u:
              v242 = 33;
              break;
            default:
              v242 = 0;
              break;
          }

          v238 = pthread_qos_max_parallelism();
          if (v238 >= 1)
          {
            v239 = v238;
          }

          v222 = v239;
          if (v239)
          {
            v223 = (v222 * *(v225 + 8));
          }

          else
          {
            v223 = 0;
          }
        }

        v73 = v223;
        if (v74 >= v223)
        {
          v30 = v73;
        }

        else
        {
          v30 = v74;
        }

        v77 = v30;
      }
    }

    else
    {
      v76 = 2;
      v216 = v80;
      v215 = 2;
      v214 = 0;
      v213 = 0;
      if (v80)
      {
        v228 = v216;
        switch(v216)
        {
          case 1u:
            v229 = 5;
            break;
          case 2u:
            v229 = 9;
            break;
          case 3u:
            v229 = 17;
            break;
          case 4u:
            v229 = 21;
            break;
          case 5u:
            v229 = 25;
            break;
          case 6u:
            v229 = 33;
            break;
          default:
            v229 = 0;
            break;
        }

        v213 = pthread_qos_max_parallelism();
      }

      if (v213 < 1)
      {
        v237 = 0;
        v236 = 0xFFFFFC036;
        v214 = MEMORY[0xFFFFFC036];
      }

      else
      {
        v214 = v213;
      }

      v235 = 2;
      v234 = 0xFFFFFC034;
      v212 = MEMORY[0xFFFFFC034];
      if (MEMORY[0xFFFFFC034] < v214)
      {
        v214 = v212;
      }

      v77 = v214;
      if (v81)
      {
        if (v81 >= v77)
        {
          v31 = 1;
        }

        else
        {
          v31 = v77 / v81;
        }

        v77 = v31;
      }
    }

    v45 = v77;
    if (!v77)
    {
      v44 = v56;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: attribute's properties are invalid or meaningless on this system";
      qword_E42C0 = v56;
      __break(1u);
      JUMPOUT(0x53228);
    }

    v43 = 0;
    if (v56)
    {
      v43 = 0xFFFFLL;
    }

    else if (v49)
    {
      if (v49 > 0xFFFE || v57 > 0xFFFE)
      {
        v29 = 0xFFFFLL;
      }

      else
      {
        v29 = v49 * v57;
      }

      v43 = v29;
    }

    else
    {
      v43 = v57;
    }

    if (v57 < v45)
    {
      v45 = v57;
    }

    v42 = 0u;
    v41 = 0u;
    memset(v40, 0, sizeof(v40));
    v28 = 0;
    if (v53)
    {
      v28 = v53;
    }

    v27 = 0;
    if (v28)
    {
      v27 = v28;
    }

    *&v41 = v27;
    *(&v41 + 1) = v54;
    *&v42 = v52;
    *(&v42 + 1) = queue;
    v91 = 0;
    v123 = _dispatch_thread_getspecific(22);
    if (v123)
    {
      _dispatch_thread_setspecific(22, *(v123 + 16));
    }

    v121 = v123;
    if (v123)
    {
      v122 = v121;
    }

    else
    {
      v122 = _dispatch_continuation_alloc_from_heap();
    }

    v91 = v122;
    context = v122;
    v122[1] = 0;
    *(context + 2) = v57;
    *(context + 3) = v43;
    *(context + 11) = v45;
    *(context + 13) = 0;
    _dispatch_apply_da_copy_attr(context, v56);
    *(context + 4) = 0;
    *context = v40;
    *(context + 10) = 0;
    v93 = queue;
    v26 = 1;
    if (*(queue + 3) != &_dispatch_custom_workloop_root_queue)
    {
      v26 = *(v93 + 3) == &_dispatch_custom_workloop_overcommit_root_queue;
    }

    if (v26)
    {
      v94 = *(queue + 7);
      v125 = v94;
      v25 = v94;
      if (((v25 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
      {
        dispatch_async_and_wait_f(queue, context, _dispatch_apply_serial);
      }

      else
      {
        _dispatch_apply_serial(context);
      }

      return result;
    }

    v24 = 1;
    if (*(queue + 40) != 1)
    {
      v24 = v45 < 2;
    }

    if (v24)
    {
LABEL_154:
      dispatch_sync_f(queue, context, _dispatch_apply_serial);
      return result;
    }

    if (*(queue + 3))
    {
      if (queue != v48)
      {
        dispatch_sync_f(queue, context, _dispatch_apply_redirect);
        return result;
      }

      goto LABEL_154;
    }

    v38 = 0uLL;
    v84 = queue;
    v83 = &v38;
    v86 = &v38;
    _dispatch_thread_getspecific_packed_pair(20, 21, &v38);
    _dispatch_thread_setspecific_pair(20, v84, 21, v83);
    v117 = queue;
    v118 = queue;
    v109 = queue;
    v108 = context;
    v107 = _dispatch_apply_invoke;
    j = 0;
    v105 = 0;
    v104 = 0;
    v112 = _dispatch_thread_getspecific(4);
    v103 = v112;
    v102 = v108[11] - 1;
    v111 = v102;
    v110 = 336;
    if (!v102)
    {
      _dispatch_abort(v110, v111);
    }

    for (j = 0; j < v102; ++j)
    {
      v124 = _dispatch_thread_getspecific(22);
      if (v124)
      {
        _dispatch_thread_setspecific(22, *(v124 + 16));
      }

      v119 = v124;
      if (v124)
      {
        v120 = v119;
      }

      else
      {
        v120 = _dispatch_continuation_alloc_from_heap();
      }

      v101 = v120;
      v100 = 4;
      v99 = v109;
      v132 = v109;
      v131 = v120;
      v130 = v108;
      v129 = v107;
      v128 = 0x40000000;
      v127 = 4;
      v126 = 0;
      *v120 = 260;
      v131[4] = v129;
      v131[5] = v130;
      if ((v128 & 0x40000000) == 0)
      {
        v183 = 0;
        v182 = 1;
        v185 = _dispatch_thread_getspecific(4);
        v186 = v185;
        v183 = v185 & 0xFFFFFF;
        if ((v182 & 2) != 0 || (v190 = 5, v189 = 4096, v183 <= 0x10FF))
        {
          v184 = v183;
        }

        else
        {
          v188 = 5;
          v187 = 4096;
          v184 = 4351;
        }

        v126 = v184;
      }

      v170 = v131;
      v169 = v128;
      v168 = 0;
      v172 = v128 >= 0;
      v171 = 583;
      if (v128 < 0)
      {
        _dispatch_abort(v171, v172);
      }

      if ((v169 & 0x40) == 0)
      {
        v191 = _dispatch_thread_getspecific(28);
        if (v191)
        {
          object = v191;
          os_retain(v191);
        }

        v168 = v191;
      }

      v170[3] = v168;
      v13 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v13, v170[3], v170);
      v14 = v170[3];
      v195 = 771817476;
      v194 = v14;
      v193 = v170;
      if (v14 != -1)
      {
        v23 = v194 ? *(v194 + 32) : 0;
        v192 = v23;
        v201 = v195;
        v200 = v23;
        v199 = v193;
        v198 = 0;
        v197 = 0;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      v181 = v132;
      v180 = v131;
      v179 = v126;
      v178 = v128;
      v177 = 0;
      v176 = v132;
      if (v126)
      {
        v175 = (v178 & 0x20) != 0;
        v174 = (*(v176 + 21) & 0x40000000) != 0;
        v173 = (*(v176 + 21) & 0xFFF) != 0;
        if ((v178 & 0x20) != 0)
        {
          v179 |= 0x10000000uLL;
          v202 = v179 >> 8;
          v15 = v179 >> 8;
          v16 = __clz(__rbit32(v15));
          if (v15)
          {
            v17 = v16 + 1;
          }

          else
          {
            v17 = 0;
          }

          v177 = v17;
        }

        else if (v174 || !v173)
        {
          v203 = v179 >> 8;
          v18 = v179 >> 8;
          v19 = __clz(__rbit32(v18));
          if (v18)
          {
            v20 = v19 + 1;
          }

          else
          {
            v20 = 0;
          }

          v177 = v20;
        }

        else
        {
          v179 = 0;
        }
      }

      v180[1] = v179;
      v101[1] = v103 | 0x10000000;
      v101[2] = v105;
      v105 = v101;
      if (!v104)
      {
        v104 = v101;
      }
    }

    v108[12] = v108[11];
    v21 = _dispatch_calloc_typed(v108[11], 8, 0x100004000313F17);
    *(v108 + 4) = v21;
    v98 = v105;
    v97 = v104;
    v141 = v105;
    v140 = v104;
    v139 = v109;
    v138 = 0;
    v137 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      v136 = v141;
      do
      {
        v135 = 0;
        v134 = 0;
        v22 = 0;
        if (v136 != v140)
        {
          v136 = v136[2];
          v22 = v136 != 0;
        }
      }

      while (v22);
    }

    v133 = v139;
    v206 = v139;
    v205 = v141;
    v204 = v140;
    v96 = v105;
    v95 = v104;
    v167 = v105;
    v166 = v104;
    v165 = v109;
    v164 = v102;
    v163 = v105;
    v162 = v104;
    v161 = 0;
    v160 = v104;
    v159 = 0;
    v158 = 0;
    *(v104 + 16) = 0;
    v157 = v159;
    _dispatch_thread_setspecific(122, v165 + 48);
    v153 = v160;
    v152 = v160;
    v154 = v160;
    v151 = atomic_exchange_explicit((v165 + 48), v160, memory_order_release);
    v155 = v151;
    v150 = v151;
    v156 = v151;
    v161 = v151;
    v149 = v151;
    if (v151)
    {
      v148 = v163;
      v147 = v163;
      *(v149 + 16) = v163;
      v146 = v148;
    }

    else
    {
      v145 = v163;
      v144 = v163;
      *(v165 + 13) = v163;
      v143 = v145;
    }

    _dispatch_thread_setspecific(122, 0);
    v142 = v161 == 0;
    if (!v161)
    {
      _dispatch_root_queue_poke_and_wakeup(v165, v164, 0);
    }

    _dispatch_apply_invoke_and_wait(v108);
    v85 = &v38;
    *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v38).n128_u64[0];
  }

  return result;
}

double dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (a4)
  {
    v5 = a4;
  }

  return _dispatch_apply_with_attr_f(a1, a2, 0, a3, v5, 2);
}

void dispatch_apply(size_t iterations, dispatch_queue_t queue, void *block)
{
  v6 = _dispatch_Block_copy(block);
  v4 = _Block_get_invoke_fn(v6);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  work = 0;
  if (v5)
  {
    work = v5;
  }

  dispatch_apply_f(iterations, queue, v6, work);
  _Block_release(v6);
}

void dispatch_apply_with_attr(unint64_t a1, uint64_t a2, const void *a3)
{
  v6 = _dispatch_Block_copy(a3);
  v4 = _Block_get_invoke_fn(v6);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  v3 = 0;
  if (v5)
  {
    v3 = v5;
  }

  dispatch_apply_with_attr_f(a1, a2, v6, v3);
  _Block_release(v6);
}

uint64_t dispatch_apply_attr_init(uint64_t a1)
{
  result = __memset_chk();
  *a1 = -1592086528;
  *(a1 + 16) = ~a1;
  return result;
}

BOOL dispatch_apply_attr_set_parallelism(_BOOL8 result, uint64_t a2, unint64_t a3)
{
  if (a2 == -1)
  {
    return dispatch_apply_attr_set_per_cluster_parallelism(result, a3);
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unknown entity";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x54720);
    }

    return dispatch_apply_attr_set_per_cluster_parallelism(result, a3);
  }

  if (a3 != 1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_entity value for CPU entity";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x546D0);
  }

  return result;
}

BOOL dispatch_apply_attr_set_per_cluster_parallelism(_BOOL8 result, unint64_t a2)
{
  v3 = result;
  if (!a2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: 0 is an invalid threads_per_cluster value";
    qword_E42C0 = 0;
    __break(1u);
    JUMPOUT(0x5478CLL);
  }

  if (a2 >= 2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_cluster value, only acceptable value is 1";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0x547D8);
  }

  if (result)
  {
    result = _dispatch_attr_is_initialized(result);
    if (!result)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x54830);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t dispatch_apply_attr_query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "apply")
    {
      v21 = i;
      goto LABEL_7;
    }
  }

  v21 = 0;
LABEL_7:
  if (v21)
  {
    v15 = v21[2];
  }

  else
  {
    v15 = 0;
  }

  v22 = _dispatch_thread_getspecific(20);
  if (v22)
  {
    while (*(v22 + 24))
    {
      v14 = 1;
      if (*(v22 + 24) != &_dispatch_custom_workloop_root_queue)
      {
        v14 = *(v22 + 24) == &_dispatch_custom_workloop_overcommit_root_queue;
      }

      if (v14)
      {
        v23 = v22;
        goto LABEL_31;
      }

      v22 = *(v22 + 24);
    }
  }

  if (!v22)
  {
    goto LABEL_22;
  }

  v13 = 0;
  if (v22 >= &_dispatch_root_queues)
  {
    v13 = v22 < &unk_E0A80;
  }

  if (v13)
  {
LABEL_22:
    v27 = (_dispatch_thread_getspecific(4) & 0x3FFF00uLL) >> 8;
    v3 = __clz(__rbit32(v27));
    if (v27)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v12 = v4;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 6)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
      qword_E42C0 = v12;
      __break(1u);
      JUMPOUT(0x54BB0);
    }

    v23 = &(&_dispatch_root_queues)[16 * (3 * v12 - 3)];
  }

  else
  {
    v23 = v22;
  }

LABEL_31:
  if ((*(v23 + 21) & 0xF00u) >> 8)
  {
    v11 = (*(v23 + 21) & 0xF00u) >> 8;
  }

  else
  {
    v11 = (*(v23 + 21) & 0xF000u) >> 12;
  }

  switch(a2)
  {
    case 0:
      return dispatch_apply_attr_query(a1, 1, a3) != 0;
    case 1:
      if (a3)
      {
        if (a1 && !_dispatch_attr_is_initialized(a1))
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
          qword_E42C0 = a1;
          __break(1u);
          JUMPOUT(0x55AFCLL);
        }

        if (a1)
        {
          if (v15)
          {
            return 1;
          }

          else
          {
            v34 = 0;
            if (v11)
            {
              v34 = pthread_qos_max_parallelism();
            }

            if (v34 < 1)
            {
              v35 = MEMORY[0xFFFFFC036];
            }

            else
            {
              v35 = v34;
            }

            if (MEMORY[0xFFFFFC034] < v35)
            {
              v35 = MEMORY[0xFFFFFC034];
            }

            v41 = -1;
            if (*(a1 + 8))
            {
              v46 = 0;
              v45 = pthread_qos_max_parallelism();
              if (v45 >= 1)
              {
                v46 = v45;
              }

              if (v46)
              {
                v41 = (v46 * *(a1 + 8));
              }

              else
              {
                v41 = 0;
              }
            }

            if (v35 >= v41)
            {
              return v41;
            }

            else
            {
              return v35;
            }
          }
        }

        else
        {
          v32 = 0;
          if (v11)
          {
            v32 = pthread_qos_max_parallelism();
          }

          if (v32 < 1)
          {
            v33 = MEMORY[0xFFFFFC036];
          }

          else
          {
            v33 = v32;
          }

          if (MEMORY[0xFFFFFC034] < v33)
          {
            v33 = MEMORY[0xFFFFFC034];
          }

          v25 = v33;
          if (v15)
          {
            if (v15 >= v33)
            {
              return 1;
            }

            else
            {
              return v33 / v15;
            }
          }
        }

        return v25;
      }

      else
      {
        if (a1 && !_dispatch_attr_is_initialized(a1))
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
          qword_E42C0 = a1;
          __break(1u);
          JUMPOUT(0x5687CLL);
        }

        if (a1)
        {
          v38 = pthread_qos_max_parallelism();
          if (v38 < 1)
          {
            v39 = MEMORY[0xFFFFFC036];
          }

          else
          {
            v39 = v38;
          }

          v42 = -1;
          if (*(a1 + 8))
          {
            v44 = 0;
            v43 = pthread_qos_max_parallelism();
            if (v43 >= 1)
            {
              v44 = v43;
            }

            if (v44)
            {
              v42 = (v44 * *(a1 + 8));
            }

            else
            {
              v42 = 0;
            }
          }

          if (v39 >= v42)
          {
            return v42;
          }

          else
          {
            return v39;
          }
        }

        else
        {
          v36 = pthread_qos_max_parallelism();
          if (v36 < 1)
          {
            return MEMORY[0xFFFFFC036];
          }

          else
          {
            return v36;
          }
        }
      }

    case 2:
      if (a1 && !_dispatch_attr_is_initialized(a1))
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
        qword_E42C0 = a1;
        __break(1u);
        JUMPOUT(0x54D70);
      }

      if (a1)
      {
        if (v15)
        {
          return 1;
        }

        else
        {
          v30 = 0;
          if (v11)
          {
            v30 = pthread_qos_max_parallelism();
          }

          if (v30 < 1)
          {
            v31 = MEMORY[0xFFFFFC036];
          }

          else
          {
            v31 = v30;
          }

          if (MEMORY[0xFFFFFC034] < v31)
          {
            v31 = MEMORY[0xFFFFFC034];
          }

          v40 = -1;
          if (*(a1 + 8))
          {
            v48 = 0;
            v47 = pthread_qos_max_parallelism();
            if (v47 >= 1)
            {
              v48 = v47;
            }

            if (v48)
            {
              v40 = (v48 * *(a1 + 8));
            }

            else
            {
              v40 = 0;
            }
          }

          if (v31 >= v40)
          {
            return v40;
          }

          else
          {
            return v31;
          }
        }
      }

      else
      {
        v28 = 0;
        if (v11)
        {
          v28 = pthread_qos_max_parallelism();
        }

        if (v28 < 1)
        {
          v29 = MEMORY[0xFFFFFC036];
        }

        else
        {
          v29 = v28;
        }

        if (MEMORY[0xFFFFFC034] < v29)
        {
          v29 = MEMORY[0xFFFFFC034];
        }

        v26 = v29;
        if (v15)
        {
          if (v15 >= v29)
          {
            return 1;
          }

          else
          {
            return v29 / v15;
          }
        }
      }

      return v26;
  }

  return v19;
}

int *_dispatch_apply_set_attr_behavior(int *result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 1))
    {
      result = __bsdthread_ctl();
      if (result)
      {
        result = __error();
        if (*result != 45)
        {
          __break(1u);
          JUMPOUT(0x57628);
        }
      }
    }
  }

  return result;
}

void *_dispatch_apply_invoke3(void *result)
{
  v29 = result;
  v28 = result;
  v27 = *result;
  v26 = *(v27 + 16);
  v24 = 0;
  v21 = 1;
  v20 = 1;
  v22 = 1;
  add_explicit = atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  v23 = add_explicit;
  v18 = add_explicit;
  v25 = add_explicit;
  if (add_explicit < v26)
  {
    v17 = *(*v27 + 32);
    v16 = *(*v27 + 40);
    v15 = *(*v27 + 48);
    v14 = 0;
    v13[0] = 0;
    v13[1] = "apply";
    v14 = *(v27 + 24);
    v30 = v13;
    v13[0] = _dispatch_thread_getspecific(23);
    _dispatch_thread_setspecific(23, v30);
    v12 = 0uLL;
    v11 = 0;
    if (v28[1])
    {
      v32 = *(*v27 + 56);
      v10 = v32;
      v31 = &v12;
      v63 = &v12;
      _dispatch_thread_getspecific_packed_pair(20, 21, &v12);
      _dispatch_thread_setspecific_pair(20, v32, 21, v31);
      v35 = *(v10 + 84);
      v34 = _dispatch_thread_getspecific(25);
      v33 = v34;
      if (v34)
      {
        if ((v35 & 0xFFF) != 0)
        {
          v33 &= 0x880F0000;
          if ((v34 & 0xFFF) > (v35 & 0xFFFu))
          {
            v7 = v34 & 0xFFF;
          }

          else
          {
            v7 = v35 & 0xFFF;
          }

          v33 |= v7;
          v39 = v35 & 0xF000;
          v37 = v33 & 0xF00;
          if (v39 >> 12 > v37 >> 8)
          {
            v35 &= 0x4400F000u;
          }

          else
          {
            v35 &= 0x40000000u;
          }

          v33 |= v35;
        }

        else
        {
          if ((v33 & 0xFFF) != 0)
          {
            v33 |= 0x40000000u;
          }

          v38 = v35 & 0xF000;
          v36 = v33 & 0xF00;
          if (v38 >> 12 > v36 >> 8)
          {
            v33 &= 0xFFFF0FFF;
            v33 |= v35 & 0x400F000;
          }
        }
      }

      else
      {
        v33 = v35 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v33);
      v11 = v34;
    }

    v9 = *(v27 + 40);
    do
    {
      v8 = 0;
      if ((v9 & 0x1000000) != 0)
      {
        v8 = _dispatch_autorelease_pool_push();
      }

      if (v15)
      {
        v6 = 0;
        if (v17)
        {
          v6 = v17;
        }

        v47 = v16;
        v46 = v25;
        v45 = v6;
        v5 = 0;
        if (v6)
        {
          v5 = v6;
        }

        v44 = v5;
        v67 = v47;
        v66 = v5;
        v43 = 0;
        v42 = 0;
        v41 = 0;
        v40 = 0;
        _dispatch_client_callout2(v47, v46, v45);
        v71 = v47;
        v70 = v44;
      }

      else
      {
        if ((v15 & 2) == 0)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
          qword_E42C0 = v15;
          __break(1u);
          JUMPOUT(0x57E58);
        }

        v3 = *(v28 + 4);
        v4 = 0;
        if (v17)
        {
          v4 = v17;
        }

        v56 = v16;
        v55 = v25;
        v54 = v3;
        v53 = v4;
        v2 = 0;
        if (v4)
        {
          v2 = v4;
        }

        v52 = v2;
        v65 = v56;
        v64 = v2;
        v51 = 0;
        v50 = 0;
        v49 = 0;
        v48 = 0;
        _dispatch_client_callout3_a(v56, v55, v54, v53);
        v69 = v56;
        v68 = v52;
      }

      ++v24;
      v25 = atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      if (v8)
      {
        _dispatch_autorelease_pool_pop(v8);
      }
    }

    while (v25 < v26);
    if (v28[1])
    {
      v58 = v11;
      v57 = _dispatch_thread_getspecific(25);
      v58 &= 0xFFF0FFFF;
      v58 |= v57 & 0xF0000;
      _dispatch_thread_setspecific(25, v58);
      v59 = &v12;
      _dispatch_thread_setspecific_packed_pair(20, 21, &v12);
    }

    v60 = v13;
    v1 = _dispatch_thread_getspecific(23) == v13;
    v62 = v1;
    v61 = 449;
    if (!v1)
    {
      _dispatch_abort(v61, v62);
    }

    return _dispatch_thread_setspecific(23, *v60);
  }

  return result;
}

uint64_t _dispatch_apply_clear_attr_behavior(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 8))
    {
      result = __bsdthread_ctl();
      if (result)
      {
        __break(1u);
        JUMPOUT(0x58058);
      }
    }
  }

  return result;
}

BOOL _dispatch_attr_is_initialized(uint64_t a1)
{
  v2 = 0;
  if (*a1 == -1592086528)
  {
    return ~*(a1 + 16) == a1;
  }

  return v2;
}

uint64_t _dispatch_apply_da_copy_attr(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (a2)
  {
    v2 = _dispatch_calloc_typed(1, 64, 0x1000040FA0F61DDLL);
    result = dispatch_apply_attr_init(v2);
    *(v2 + 8) = *(a2 + 8);
    *(v2 + 4) = *(a2 + 4);
    *(v4 + 56) = v2;
  }

  else
  {
    *(result + 56) = 0;
  }

  return result;
}

uint64_t _dispatch_apply_serial(void *a1)
{
  v10 = *a1;
  v9 = a1[2];
  v8 = 0;
  v14 = *(*a1 + 56);
  v13 = 0;
  while (1)
  {
    v6 = 0;
    if (v14)
    {
      v6 = v13 == 0;
    }

    if (!v6)
    {
      break;
    }

    v13 = (*(v14 + 80) & 0x30000) << 8;
    v14 = *(v14 + 24);
  }

  do
  {
    v7 = 0;
    if ((v13 & 0x1000000) != 0)
    {
      v7 = _dispatch_autorelease_pool_push();
    }

    if (v10[6])
    {
      v5 = 0;
      if (v10[4])
      {
        v5 = v10[4];
      }

      _dispatch_client_callout2(v10[5], v8, v5);
    }

    else
    {
      if ((v10[6] & 2) == 0)
      {
        v1 = v10[6];
        qword_E4290 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
        qword_E42C0 = v1;
        __break(1u);
        JUMPOUT(0x58710);
      }

      v4 = 0;
      if (v10[4])
      {
        v4 = v10[4];
      }

      _dispatch_client_callout3_a(v10[5], v8, 0, v4);
    }

    if (v7)
    {
      _dispatch_autorelease_pool_pop(v7);
    }

    ++v8;
  }

  while (v8 < v9);
  if (a1[4])
  {
    free(a1[4]);
  }

  if (a1[7])
  {
    dispatch_apply_attr_destroy(a1[7]);
    free(a1[7]);
  }

  result = _dispatch_thread_getspecific(22);
  if (result)
  {
    v3 = *(result + 8) + 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3 <= _dispatch_continuation_cache_limit)
  {
    a1[2] = result;
    *(a1 + 2) = v3;
    result = _dispatch_thread_setspecific(22, a1);
    v12 = 0;
  }

  else
  {
    v12 = a1;
  }

  if (v12)
  {
    return _dispatch_continuation_free_to_cache_limit(v12);
  }

  return result;
}

void _dispatch_apply_redirect(_DWORD *a1)
{
  v8 = a1[11] - 1;
  v7 = *(*a1 + 56);
  v6 = v7;
  do
  {
    if (*(v6 + 80) == 1)
    {
      v19 = 0;
    }

    else
    {
      v18 = *(v6 + 56);
      do
      {
        if ((v18 & 0x20000000000000) != 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = 4096 - ((v18 & 0x3FFE0000000000uLL) >> 41);
        }

        v17 = v22;
        if (!v22)
        {
          v19 = 0;
          goto LABEL_16;
        }

        if (v22 > v8)
        {
          v17 = v8;
        }

        v1 = v18;
        v2 = v18;
        atomic_compare_exchange_strong_explicit((v6 + 56), &v2, v18 + (v17 << 41), memory_order_relaxed, memory_order_relaxed);
        if (v2 != v1)
        {
          v18 = v2;
        }
      }

      while (v2 != v1);
      v19 = v17;
    }

LABEL_16:
    if (v8 > v19)
    {
      v5 = v8 - v19;
      for (i = v7; i != v6; i = *(i + 24))
      {
        atomic_fetch_add_explicit((i + 56), 0xFFFFFE0000000000 * (v8 - v19), memory_order_relaxed);
      }

      v8 = v19;
      if (!v19)
      {
        _dispatch_apply_serial(a1);
        return;
      }

      a1[11] -= v5;
    }

    if (!a1[10])
    {
      a1[10] = (*(v6 + 80) & 0x30000) << 8;
    }

    v6 = *(v6 + 24);
  }

  while (*(v6 + 24));
  v13 = 0;
  v12 = 0;
  v11 = _dispatch_thread_getspecific(4);
  v10 = a1[11] - 1;
  if (a1[11] == 1)
  {
    _dispatch_abort(336, v10);
  }

  for (j = 0; j < v10; ++j)
  {
    v16 = _dispatch_thread_getspecific(22);
    if (v16)
    {
      _dispatch_thread_setspecific(22, *(v16 + 16));
      v15 = v16;
    }

    else
    {
      v15 = _dispatch_continuation_alloc_from_heap();
    }

    *v15 = 260;
    v15[4] = _dispatch_apply_redirect_invoke;
    v15[5] = a1;
    v25 = _dispatch_thread_getspecific(28);
    if (v25)
    {
      os_retain(v25);
    }

    v15[3] = v25;
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v15[3], v15);
    if (v15[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v15[1] = 0;
    v15[1] = v11 | 0x10000000;
    v15[2] = v13;
    v13 = v15;
    if (!v12)
    {
      v12 = v15;
    }
  }

  a1[12] = a1[11];
  *(a1 + 4) = _dispatch_calloc_typed(a1[11], 8, 0x100004000313F17);
  if (MEMORY[0xFFFFFC100])
  {
    v23 = v13;
    do
    {
      v4 = 0;
      if (v23 != v12)
      {
        v23 = v23[2];
        v4 = v23 != 0;
      }
    }

    while (v4);
  }

  *(v12 + 16) = 0;
  _dispatch_thread_setspecific(122, v6 + 48);
  v24 = atomic_exchange_explicit((v6 + 48), v12, memory_order_release);
  if (v24)
  {
    *(v24 + 16) = v13;
  }

  else
  {
    *(v6 + 104) = v13;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v24)
  {
    _dispatch_root_queue_poke_and_wakeup(v6, v10, 0);
  }

  _dispatch_apply_invoke_and_wait(a1);
  for (k = v7; k != v6; k = *(k + 24))
  {
    atomic_fetch_add_explicit((k + 56), 0xFFFFFE0000000000 * v8, memory_order_relaxed);
  }
}

void _dispatch_apply_invoke_and_wait(uint64_t a1)
{
  v13 = a1;
  v12 = 2;
  i = 0;
  v7 = 1;
  v6 = 1;
  v8 = 1;
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  v9 = add_explicit;
  v4 = add_explicit;
  v10 = add_explicit;
  v1 = add_explicit < *(a1 + 48);
  v15 = v1;
  v14 = 210;
  if (!v1)
  {
    _dispatch_abort(v14, v15);
  }

  v3[0] = v13;
  v3[1] = v12;
  v3[2] = v10;
  _dispatch_apply_set_attr_behavior(*(v13 + 56), v10);
  v21 = (*(v13 + 32) + 8 * v10);
  v20 = v3;
  v19 = _dispatch_apply_invoke3;
  if (*v21 != -1)
  {
    dispatch_once_f(v21, v20, v19);
  }

  _dispatch_apply_clear_attr_behavior(*(v13 + 56), v10);
  if ((v12 & 2) != 0)
  {
    for (i = 0; i < *(v13 + 48); ++i)
    {
      if (i != v10)
      {
        v18 = (*(v13 + 32) + 8 * i);
        v17 = 0;
        v16 = _dispatch_no_op;
        if (*v18 != -1)
        {
          dispatch_once_f(v18, v17, v16);
        }
      }
    }
  }

  if (atomic_fetch_add_explicit((v13 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v22 = v13;
    if (*(v13 + 32))
    {
      free(*(v22 + 32));
    }

    if (*(v22 + 56))
    {
      dispatch_apply_attr_destroy(*(v22 + 56));
      free(*(v22 + 56));
    }

    v23 = v22;
    v24 = v22;
    v27 = v22;
    v26 = _dispatch_thread_getspecific(22);
    if (v26)
    {
      v2 = *(v26 + 8) + 1;
    }

    else
    {
      v2 = 1;
    }

    v25 = v2;
    if (v2 <= _dispatch_continuation_cache_limit)
    {
      *(v27 + 16) = v26;
      *(v27 + 8) = v25;
      _dispatch_thread_setspecific(22, v27);
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    v24 = v28;
    if (v28)
    {
      _dispatch_continuation_free_to_cache_limit(v24);
    }
  }
}

dispatch_source_t dispatch_source_create(dispatch_source_type_t type, uintptr_t handle, uintptr_t mask, dispatch_queue_t queue)
{
  v16 = (*(type + 4))(type, handle, mask);
  if (!v16)
  {
    return 0;
  }

  v14 = _dispatch_object_alloc(_OS_dispatch_source_vtable, 0x78uLL);
  v13 = 0;
  if (*v16)
  {
    v13 = *v16;
  }

  if ((*(v13 + 10) >> 1))
  {
    v4 = 0x4000000;
  }

  else
  {
    v4 = 0x400000;
  }

  _dispatch_queue_init(v14, v4, 1u, 0x180000000000000);
  v15 = v5;
  *(v5 + 72) = "source";
  *(v5 + 88) = v16;
  *(v16 + 8) = ~v5;
  if (queue)
  {
    if ((*(queue + 87) & 8) != 0 && (*(v16 + 29) & 2) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target source to the cooperative root queue - not implemented";
      qword_E42C0 = v5;
      __break(1u);
      JUMPOUT(0x59E84);
    }

    _dispatch_retain(queue);
  }

  else
  {
    queue = &off_E0680;
  }

  *(v15 + 24) = queue;
  if ((*(v16 + 29) & 2) != 0 && (*(v16 + 30) & 0x10) != 0)
  {
    dispatch_source_set_timer(v15, 0, handle, 0xFFFFFFFFFFFFFFFFLL);
  }

  _dispatch_object_debug(v15, "%s", v6, v7, v8, v9, v10, v11, "dispatch_source_create");
  return v15;
}

void dispatch_source_set_timer(dispatch_source_t source, dispatch_time_t start, uint64_t interval, uint64_t leeway)
{
  v7 = *(source + 11);
  if ((*(v7 + 29) & 2) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Attempt to set timer on a non-timer source";
    qword_E42C0 = source;
    __break(1u);
    JUMPOUT(0x59FA4);
  }

  if ((*(v7 + 30) & 0x10) != 0)
  {
    v5 = _dispatch_interval_config_create(start, interval, leeway, v7);
  }

  else
  {
    v5 = _dispatch_timer_config_create(start, interval, leeway, v7);
  }

  if (_dispatch_timer_flags_to_clock(*(v7 + 30)) != v5[6] && *(v7 + 28) == -20)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Attempting to modify timer clock";
    __break(1u);
    JUMPOUT(0x5A04CLL);
  }

  v6 = atomic_exchange_explicit((v7 + 104), v5, memory_order_release);
  if (v6)
  {
    free(v6);
  }

  v4 = 0;
  if (*source)
  {
    v4 = *source;
  }

  (*(v4 + 64))(source, 0, 2);
}