uint64_t _dispatch_lane_activate(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 84);
  v4 = (v3 >> 8) & 0xF;
  if (v3 >> 12 <= v4 || (v3 & 0x40000000) == 0 && v4)
  {
    *(a1 + 84) = v3 & 0xFBFF0FFF;
  }

  v5 = _dispatch_queue_priority_inherit_from_target(a1, v2);

  return _dispatch_lane_inherit_wlh_from_target(a1, v5);
}

__objc2_class **_dispatch_queue_priority_inherit_from_target(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 84);
  v4 = a2 >= &_dispatch_root_queues && a2 < &_dispatch_queue_serial_numbers;
  if ((v2 & 0x20000000) != 0 || (v2 & 0x44000FFF) == 0)
  {
    if (v4)
    {
      v2 = *(a2 + 84) | 0x20000000;
    }

    else if ((v2 & 0x20000000) != 0)
    {
      v2 &= 0xFBFF0FFF;
    }

    *(a1 + 84) = v2;
  }

  else if (v4)
  {
    if (((v2 >> 8) & 0xF) != 0)
    {
      v5 = (v2 >> 8) & 0xF;
    }

    else
    {
      v5 = 4;
    }

    if (v5 - 7 <= 0xFFFFFFF9)
    {
      _dispatch_queue_priority_inherit_from_target_cold_1(v5);
    }

    return &_dispatch_root_queues + 16 * (3 * v5 + (v2 >> 31) - 3);
  }

  return a2;
}

uint64_t _dispatch_lane_inherit_wlh_from_target(uint64_t a1, unint64_t a2)
{
  if (*(*a2 + 42))
  {
    if (*(*a1 + 40) == 133137 || (*(*a1 + 40) != 19 || (*(*(a1 + 88) + 29) & 0x20) != 0) && *(a1 + 80) == 1 && (a2 >= &_dispatch_root_queues ? (v6 = &_dispatch_queue_serial_numbers > a2) : (v6 = 0), v6))
    {
      v5 = 0x2000000000;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v5 = 0x1000000000;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v7 = *(a1 + 56);
  while (1)
  {
    v8 = v7;
    result = v7 & 0xFFFFFFCFFFFFFFFFLL | v5;
    if (v7 == result)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((a1 + 56), &v7, result, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v8)
    {
      goto LABEL_16;
    }
  }

  result = v7;
LABEL_16:
  if ((v8 & 0x2000000000) == 0)
  {
    v4 = 1;
  }

  if ((v4 & 1) == 0)
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
    if (v10)
    {
      if (*(v10 + 24) == a1)
      {
        result = _dispatch_event_loop_leave_immediate(result);
      }
    }
  }

  if ((*(*a2 + 40) & 0x10000) == 0)
  {
    if (*(*a2 + 40) == 18)
    {
      v11 = *(a2 + 24);
      if (v11 < &_dispatch_root_queues || v11 >= &_dispatch_queue_serial_numbers)
      {
        v13 = *(a2 + 200);
        v14 = 0x1000000;
        if (v13)
        {
          if ((*v13 & 0x40) != 0)
          {
            v14 = 17039360;
          }

          else
          {
            v14 = 0x1000000;
          }
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a2 + 80);
      do
      {
        v16 = v15 & 0xFFAFFFFF | 0x100000;
        if (v16 == v15)
        {
          break;
        }

        v17 = v15;
        atomic_compare_exchange_strong_explicit((a2 + 80), &v17, v16, memory_order_relaxed, memory_order_relaxed);
        v18 = v17 == v15;
        v15 = v17;
      }

      while (!v18);
    }

    else
    {
      v14 = *(a2 + 80) & 0x1000000;
      if (v14)
      {
        v14 = *(a2 + 80) & 0x1040000;
      }

      atomic_fetch_or_explicit((a2 + 80), 0x100000u, memory_order_relaxed);
    }

    if (v14)
    {
      atomic_fetch_or_explicit((a1 + 80), v14, memory_order_relaxed);
    }
  }

  return result;
}

atomic_uint *_dispatch_lane_invoke(uint64_t a1, void *a2, unsigned int a3, int8x16_t a4)
{
  v57 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v7, a1, a4);
    }

    _dispatch_introspection_queue_item_dequeue(v7, a1);
  }

  if ((a3 & 2) != 0)
  {
    v57 = 0x40020000000001;
    v8 = a3 & 0x40000;
  }

  else
  {
    v36 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v8 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v39 = 0x4000000000;
    }

    else
    {
      v39 = 1;
    }

    if ((a3 & 0x40001) == 0x40000)
    {
      v40 = 0xFFE00000FFFFFFFCLL;
    }

    else
    {
      v40 = 0xFFE00040FFFFFFFCLL;
    }

    v41 = *(StatusReg + 200);
    v42 = (v41 >> 8) & 0xF;
    v43 = v41 >> 12;
    v44 = HIWORD(v41) & 0xF;
    if (v42 <= v43)
    {
      v42 = v43;
    }

    if (v42 > v44)
    {
      v44 = v42;
    }

LABEL_76:
    for (i = *(a1 + 56); ; i = v50)
    {
      while ((i & v40) != 0)
      {
        if ((a3 & 1) != 0 || (v51 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v51, i ^ v39, memory_order_acquire, memory_order_acquire), v51 == i))
        {
          v22 = 0;
          v57 = 0;
          goto LABEL_59;
        }

        i = v51;
      }

      if ((i & 0x1000000000) != 0)
      {
        v46 = HIDWORD(i) & 7;
        if (v46 > v44)
        {
          v55 = v36;
          _pthread_workqueue_override_start_direct();
          v36 = v55;
          v52 = *(StatusReg + 200);
          v44 = v46;
          if ((HIWORD(v52) & 0xF) < v46)
          {
            *(StatusReg + 200) = v52 & 0xFFF0FFFF | (v46 << 16);
            v44 = v46;
          }

          goto LABEL_76;
        }
      }

      v47 = (i >> 40) & 1;
      if (!((v36 + i) >> 53))
      {
        LODWORD(v47) = 1;
      }

      v48 = v47 ? 0x60000000000000 : 0x20000000000000;
      v49 = i & 0x7700000001 | v38 | v48;
      v50 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v50, v49, memory_order_acquire, memory_order_acquire);
      if (v50 == i)
      {
        break;
      }
    }

    v53 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v53 = v39 | 0x60000000000000;
    }

    v57 = (v49 & v53) - (i & 0x3FFE0000000000);
    if (!v57)
    {
      v22 = 0;
      goto LABEL_59;
    }
  }

  if (v8)
  {
    v9 = 0;
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 84);
  v11 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = *(v11 + 200);
  if (v12)
  {
    v13 = v10 >> 12;
    v14 = v10 & 0xFFF;
    if ((v10 & 0xFFF) != 0)
    {
      if ((v12 & 0xFFFu) > v14)
      {
        v14 = v12 & 0xFFF;
      }

      if (v13 <= v14 >> 8)
      {
        v15 = 0x40000000;
      }

      else
      {
        v15 = 1140912128;
      }

      v16 = v12 & 0x880F0000 | v14 | v15 & v10;
    }

    else
    {
      v17 = v12 | 0x40000000;
      if ((v12 & 0xFFF) == 0)
      {
        v17 = *(v11 + 200);
      }

      v16 = v17 & 0xFFFF0FFF | v10 & 0x400F000;
      if (v13 <= ((v17 >> 8) & 0xF))
      {
        v16 = v17;
      }
    }
  }

  else
  {
    v16 = v10 & 0xFFF0FFFF;
  }

  *(v11 + 200) = v16;
  v9 = v12 & 0xFFF0FFFF;
  if ((a3 & 0x100000) != 0)
  {
LABEL_23:
    if ((*(a1 + 80) & 0x400000) != 0)
    {
      atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }
  }

LABEL_25:
  LODWORD(v18) = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCFFFFFF;
  if (((*(a1 + 80) << 8) & 0x3000000) != 0)
  {
    v18 = v18;
  }

  else
  {
    v18 = a3;
  }

  v54 = v18 | 0x10;
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v20 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_29:
  v21 = v18;
  if ((v18 & 0x1000002) == 2)
  {
    _dispatch_last_resort_autorelease_pool_push(a2);
    v22 = *(a1 + 24);
    v23 = (v19 + 160);
    if (*(v19 + 160) == v22)
    {
      if (*(a1 + 80) == 1)
      {
        _dispatch_lane_serial_drain(a1, a2, v21, &v57);
      }

      else
      {
        _dispatch_lane_concurrent_drain(a1, a2, v21, &v57);
      }

      v22 = v24;
    }

    v56 = *v23;
    *(v19 + 160) = a1;
    *(v19 + 168) = &v56;
    _dispatch_last_resort_autorelease_pool_pop(a2);
    *v23 = v56;
  }

  else
  {
    v22 = *(a1 + 24);
    if (*(v20 + 160) == v22)
    {
      if (*(a1 + 80) == 1)
      {
        _dispatch_lane_serial_drain(a1, a2, v18, &v57);
      }

      else
      {
        _dispatch_lane_concurrent_drain(a1, a2, v18, &v57);
      }

      v22 = v25;
    }
  }

  if (v22 + 1 <= 1)
  {
    v26 = v57;
    v27 = *(a1 + 56);
    while (1)
    {
      v28 = v27;
      v29 = v27 - v26;
      v30 = v29 & 0xFFFFFFF700000001;
      if (!(v28 >> 55))
      {
        if ((v28 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v22 = *(v20 + 160);
          v18 = v54;
          if (a3)
          {
            goto LABEL_29;
          }

          v18 = v54;
          if (((*v22)[1].isa & 0x10000) != 0)
          {
            goto LABEL_29;
          }

          break;
        }

        if (v22)
        {
          v30 = v29 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v30 = v29 & 0xFFFFFFF000000001;
        }
      }

      v27 = v28;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v27, v30, memory_order_release, memory_order_relaxed);
      if (v27 == v28)
      {
        if ((~v28 & 0x1800000000) == 0)
        {
          v31 = HIDWORD(v28) & 7;
          v32 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v33 = *(v32 + 200);
          if ((HIWORD(v33) & 0xF) < v31)
          {
            *(v32 + 200) = v33 & 0xFFF0FFFF | (v31 << 16);
          }
        }

        v22 = 0;
        v57 = 0;
        break;
      }
    }
  }

  if ((v21 & 0x40000) == 0)
  {
    v34 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v34 + 200) = *(v34 + 200) & 0xF0000 | v9;
  }

LABEL_59:
  if ((a3 & 1) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_introspection_queue_item_complete(a1);
  }

  if (v22)
  {
    return _dispatch_queue_invoke_finish(a1, a2, v22, v57);
  }

  else
  {
    return _os_object_release_internal_n(a1, &dword_0 + 2);
  }
}

uint64_t dispatch_workloop_copy_current()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  v1 = v0 == -4 || v0 == 0;
  if (v1 || *(*v0 + 40) != 18)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v0);
  return v0;
}

BOOL _dispatch_workloop_should_yield_4NW()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  v1 = v0 == -4 || v0 == 0;
  return !v1 && *(*v0 + 40) == 18 && (*(v0 + 60) & 7u) > *(v0 + 100);
}

NSObject *_dispatch_workloop_create(const char *a1, uint64_t a2)
{
  v3 = 65537;
  if (a1)
  {
    v5 = _dispatch_strdup_if_mutable(a1);
    if (v5 == a1)
    {
      v3 = 65537;
    }

    else
    {
      v3 = 2162689;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = _dispatch_object_alloc();
  if ((a2 & 0x180000000000000) != 0)
  {
    LODWORD(v6[1].isa) += 2;
    if (*(v6->isa + 40) == 19)
    {
      ++LODWORD(v6[1].isa);
    }
  }

  v6[2].isa = -1985229329;
  LODWORD(v6[10].isa) = v3;
  v6[7].isa = (a2 | 0x1FFE2000000000);
  v6[8].isa = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  v6[9].isa = v5;
  v6[3].isa = &off_713C0;
  if ((a2 & 0x180000000000000) == 0)
  {
    HIDWORD(v6[10].isa) = -2080358400;
  }

  return _dispatch_introspection_queue_create(v6);
}

void dispatch_workloop_set_autorelease_frequency(dispatch_workloop_t workloop, dispatch_autorelease_frequency_t frequency)
{
  isa_low = LODWORD(workloop[10].isa);
  if (frequency == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
  {
    do
    {
      v3 = isa_low & 0xFFFCFFFF | 0x10000;
      if (v3 == isa_low)
      {
        break;
      }

      v4 = isa_low;
      atomic_compare_exchange_strong_explicit(&workloop[10], &v4, v3, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == isa_low;
      isa_low = v4;
    }

    while (!v5);
  }

  else
  {
    do
    {
      v6 = isa_low & 0xFFFCFFFF | 0x20000;
      if (v6 == isa_low)
      {
        break;
      }

      v7 = isa_low;
      atomic_compare_exchange_strong_explicit(&workloop[10], &v7, v6, memory_order_relaxed, memory_order_relaxed);
      v5 = v7 == isa_low;
      isa_low = v7;
    }

    while (!v5);
  }

  isa = workloop[7].isa;
  if ((~isa & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(isa);
  }
}

_DWORD *dispatch_workloop_set_scheduler_priority(uint64_t a1, int a2, char a3)
{
  v4 = *(a1 + 56);
  if ((~v4 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v4);
  }

  result = *(a1 + 200);
  if (result)
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_8:
    result[2] = 0;
    v8 = *result & 0xFFFFFFFE;
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    result[4] = 2;
    v9 = v8 | 2;
    goto LABEL_10;
  }

  result = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
  *(a1 + 200) = result;
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  result[2] = a2;
  v8 = *result | 1;
  if (a3)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = v8 & 0xFFFFFFFD;
LABEL_10:
  *result = v9;
  return result;
}

uint64_t dispatch_workloop_set_uses_bound_thread(uint64_t a1)
{
  if (_dispatch_workloop_bound_thread_pred != -1)
  {
    dispatch_workloop_set_uses_bound_thread_cold_1();
  }

  if (_dispatch_thread_bound_kqwl_enabled != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 56);
  if ((~v2 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v2);
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    v3 = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = v3;
  }

  v4 = 0;
  *v3 |= 0x40u;
  return v4;
}

void dispatch_workloop_set_os_workgroup(dispatch_workloop_t workloop, os_workgroup_t workgroup)
{
  isa = workloop[7].isa;
  if ((~isa & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(isa);
  }

  v5 = workloop[25].isa;
  if (!v5)
  {
    v5 = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    workloop[25].isa = v5;
  }

  v6 = *(v5 + 4);
  if (v6)
  {
    _os_object_release(v6, workgroup);
  }

  _os_object_retain(workgroup);
  *(workloop[25].isa + 4) = workgroup;
}

_BYTE *dispatch_workloop_set_cpupercent(uint64_t a1, char a2, int a3)
{
  v4 = *(a1 + 56);
  if ((~v4 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v4);
  }

  result = *(a1 + 200);
  if (!result)
  {
    result = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = result;
  }

  v8 = *result;
  if ((*result & 9) == 0)
  {
    dispatch_workloop_set_cpupercent_cold_2();
  }

  result[20] = a2;
  *(result + 6) = a3;
  *result = v8 | 4;
  return result;
}

__n128 _dispatch_workloop_set_observer_hooks_4IOHID(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 56);
  if ((~v3 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v3);
  }

  v5 = *(a1 + 200);
  if (!v5)
  {
    v5 = _dispatch_calloc_typed(1uLL, 0x38uLL, 0x10A00404B3B3801uLL);
    *(a1 + 200) = v5;
  }

  result = *a2;
  *(v5 + 40) = *a2;
  **(a1 + 200) |= 0x20u;
  return result;
}

void _dispatch_workloop_dispose(NSObject *a1, _BYTE *a2)
{
  isa = a1[7].isa;
  if (isa != 0x1FFE2000000000)
  {
    _dispatch_workloop_dispose_cold_1(isa);
  }

  _dispatch_introspection_queue_dispose(a1);
  for (i = 0; i != 6; ++i)
  {
    v7 = &a1[i];
    v8 = a1[i + 19].isa;
    if (v8)
    {
      _dispatch_workloop_dispose_cold_2(v8);
    }

    v7[19].isa = (&stru_1F8 + 8);
    v7[13].isa = (&stru_1F8 + 8);
  }

  v9 = a1[6].isa;
  if (v9)
  {
    free(v9);
    a1[6].isa = 0;
  }

  v10 = a1[25].isa;
  if (v10)
  {
    if ((*v10 & 0x10) != 0)
    {
      v11 = _pthread_workloop_destroy();
      if (v11)
      {
        _dispatch_bug(4623, v11);
      }
    }

    v12 = a1[25].isa;
    if (v12)
    {
      if (v12[4])
      {
        _os_object_release(v12[4], v5);
        v12 = a1[25].isa;
      }

      free(v12);
    }
  }

  _dispatch_queue_dispose(a1, a2);
}

uint64_t _dispatch_workloop_activate(uint64_t result)
{
  v1 = (result + 56);
  if ((~atomic_fetch_and_explicit((result + 56), 0xFEFFFFFFFFFFFFFFLL, memory_order_relaxed) & 0x180000000000000) == 0)
  {
    v2 = result;
    v3 = (result + 200);
    v4 = *(result + 200);
    if (!v4)
    {
      return _dispatch_workloop_activate_cold_4(v2, v1);
    }

    memset(&v11, 0, sizeof(v11));
    pthread_attr_init(&v11);
    v5 = *v4;
    if ((*v4 & 8) != 0)
    {
      *(v2 + 84) |= v4[1] | 0x40000000;
    }

    if (v5)
    {
      pthread_attr_setschedparam(&v11, v4 + 1);
      *(v2 + 24) = &_dispatch_custom_workloop_root_queue;
    }

    v6 = *(v4 + 4);
    if (v6)
    {
      *(v2 + 24) = &_dispatch_custom_workloop_root_queue;
      if (_os_workgroup_get_backing_workinterval(v6))
      {
        pthread_attr_setworkinterval_np();
      }
    }

    v7 = *v4;
    if ((*v4 & 0x40) != 0)
    {
      if (_dispatch_root_queues_pred != -1)
      {
        _dispatch_workloop_activate_cold_1();
      }

      *(v2 + 24) = &_dispatch_custom_workloop_overcommit_root_queue;
      v7 = *v4;
      if ((*v4 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_17;
    }

    pthread_attr_setschedpolicy(&v11, v4[4]);
    v7 = *v4;
LABEL_17:
    if ((v7 & 4) != 0)
    {
      pthread_attr_setcpupercent_np();
    }

    v8 = *v3;
    if (*v3)
    {
      if ((*v8 & 0x47) != 0 || (v9 = *(v8 + 32)) != 0 && _os_workgroup_get_backing_workinterval(v9))
      {
        v10 = _pthread_workloop_create();
        if (v10 <= 44)
        {
          if (v10)
          {
            if (v10 == 33)
            {
              _dispatch_workloop_activate_cold_2(v2);
            }
          }

          else
          {
            *v4 |= 0x10u;
          }
        }

        else if (v10 == 45)
        {
          _dispatch_workloop_activate_cold_3();
        }

        else if (v10 == 78)
        {
          _dispatch_workloop_activate_simulator_fallback(v2, &v11.__sig);
        }
      }
    }

    pthread_attr_destroy(&v11);
    return _dispatch_workloop_activate_cold_4(v2, v1);
  }

  return result;
}

uint64_t _dispatch_workloop_wakeup(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 4) == 0)
  {
    if ((a3 & 1) == 0)
    {
      _dispatch_workloop_wakeup_cold_4(a3);
    }

    if ((a3 & 8) == 0)
    {
      v4 = a1[7];
      v5 = a2 << 32;
      do
      {
        v6 = v4;
        v7 = v4 & 0x700000000;
        v8 = v6 & 0xFFFFFFF8FFFFFFFFLL | v5;
        if (v6 & 0x1000000000 | v5 & 0x1000000000)
        {
          v8 |= 0x800000000uLL;
        }

        if (v7 < v5)
        {
          v9 = v8;
        }

        else
        {
          v9 = v6;
        }

        v10 = v9 | ((v9 & 0x700000000) != 0);
        if ((a3 & 2) != 0)
        {
          v10 |= 0x8000000000uLL;
        }

        else if (v10 == v6)
        {
          goto LABEL_27;
        }

        v4 = v6;
        atomic_compare_exchange_strong_explicit(a1 + 7, &v4, v10, memory_order_release, memory_order_relaxed);
      }

      while (v4 != v6);
      if (v6 >> 55)
      {
        _dispatch_workloop_wakeup_cold_3(v6);
      }

      v11 = v10 ^ v6;
      if (v11)
      {
        if ((v10 & 0x2000000000) == 0)
        {
          return _dispatch_workloop_wakeup_cold_1();
        }

        _dispatch_introspection_runtime_event();

        return _dispatch_event_loop_poke(a1, v10, (&dword_0 + 1), v12);
      }

      result = _dispatch_workloop_wakeup_cold_2(v11, v10, a1, a3);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

LABEL_27:

    return _os_object_release_internal_n(a1, &dword_0 + 2);
  }

  return _dispatch_workloop_barrier_complete(a1, a2, a3, a3);
}

atomic_uint *_dispatch_workloop_invoke(unsigned __int16 *a1, unsigned int *a2, int a3, int8x16_t a4)
{
  v4 = a3;
  if ((a3 & 3) == 0)
  {
    *(a1 + 2) = -1985229329;
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v7, a1, a4);
    }

    _dispatch_introspection_queue_item_dequeue(v7, a1);
  }

  v130 = a2;
  if ((v4 & 2) != 0)
  {
    v8 = v4 & 0x40000;
    v127 = 0x40020000000001;
  }

  else
  {
    v104 = (a1[40] << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v107 = *(StatusReg + 24);
    v106 = StatusReg + 24;
    v108 = v107 & 0xFFFFFFFC;
    v8 = v4 & 0x40000;
    if ((v4 & 0x40000) != 0)
    {
      v109 = 0x4000000000;
    }

    else
    {
      v109 = 1;
    }

    if ((v4 & 0x40001) == 0x40000)
    {
      v110 = 0xFFE00000FFFFFFFCLL;
    }

    else
    {
      v110 = 0xFFE00040FFFFFFFCLL;
    }

    v111 = *(v106 + 176);
    v112 = (v111 >> 8) & 0xF;
    v113 = v111 >> 12;
    v114 = HIWORD(v111) & 0xF;
    if (v112 <= v113)
    {
      v112 = v113;
    }

    if (v112 > v114)
    {
      v114 = v112;
    }

LABEL_286:
    for (i = *(a1 + 7); ; i = v120)
    {
      while ((i & v110) != 0)
      {
        if ((v4 & 1) != 0 || (v121 = i, atomic_compare_exchange_strong_explicit(a1 + 7, &v121, i ^ v109, memory_order_acquire, memory_order_acquire), v121 == i))
        {
          v98 = 0;
          v93 = 0;
          a2 = v130;
          goto LABEL_269;
        }

        i = v121;
      }

      if ((i & 0x1000000000) != 0)
      {
        v116 = HIDWORD(i) & 7;
        if (v116 > v114)
        {
          v134 = v104;
          _dispatch_workloop_invoke_cold_1();
          v104 = v134;
          v114 = v116;
          goto LABEL_286;
        }
      }

      v117 = (i >> 40) & 1;
      if (!((v104 + i) >> 53))
      {
        LODWORD(v117) = 1;
      }

      v118 = v117 ? 0x60000000000000 : 0x20000000000000;
      v119 = i & 0x7700000001 | v108 | v118;
      v120 = i;
      atomic_compare_exchange_strong_explicit(a1 + 7, &v120, v119, memory_order_acquire, memory_order_acquire);
      if (v120 == i)
      {
        break;
      }
    }

    v122 = 0x60000000000000;
    if ((v4 & 1) == 0)
    {
      v122 = v109 | 0x60000000000000;
    }

    v127 = (v119 & v122) - (i & 0x3FFE0000000000);
    if (!v127)
    {
      v93 = 0;
      a2 = v130;
      v98 = 0;
      goto LABEL_269;
    }

    a2 = v130;
  }

  if (v8)
  {
    v124 = 0;
    goto LABEL_23;
  }

  v9 = *(a1 + 21);
  v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(v10 + 200);
  if (v11)
  {
    v12 = v9 & 0xFFF;
    if ((v9 & 0xFFF) != 0)
    {
      if ((v11 & 0xFFFu) > v12)
      {
        v12 = v11 & 0xFFF;
      }

      if (v9 >> 12 <= v12 >> 8)
      {
        v13 = 0x40000000;
      }

      else
      {
        v13 = 1140912128;
      }

      v14 = v13 & v9;
      v15 = v11 & 0x880F0000 | v12;
    }

    else
    {
      v16 = v11 | 0x40000000;
      if ((v11 & 0xFFF) == 0)
      {
        v16 = *(v10 + 200);
      }

      if (v9 >> 12 <= ((v16 >> 8) & 0xF))
      {
        goto LABEL_22;
      }

      v15 = v16 & 0xFFFF0FFF;
      v14 = v9 & 0x400F000;
    }

    v16 = v15 | v14;
  }

  else
  {
    v16 = v9 & 0xFFF0FFFF;
  }

LABEL_22:
  *(v10 + 200) = v16;
  v124 = v11 & 0xFFF0FFFF;
LABEL_23:
  if ((*(a1 + 20) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit(a1 + 20, 0xFFBFFFFF, memory_order_relaxed);
  }

  v17 = (*(a1 + 20) << 8) & 0x3000000 | v4 & 0xFCEDFFFF | 0x100000;
  if (((*(a1 + 20) << 8) & 0x3000000) == 0)
  {
    v17 = v4 & 0xFFEDFFFF | 0x100000;
  }

  v128 = a1 + 76;
  v133 = a1 + 52;
  v18 = v17 & 0x1000002;
  v132 = v17;
  v129 = (v17 >> 21) & 1;
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v131 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v125 = v17 & 0x1000002;
  v126 = v4;
LABEL_28:
  if (v18 == 2)
  {
    _dispatch_last_resort_autorelease_pool_push(a2);
    v20 = *(a1 + 25);
    if (v20 && (*v20 & 0x20) != 0)
    {
      *(v131 + 192) = v20 + 40;
    }

    v21 = *(v19 + 160);
    v135 = v21;
    *(v19 + 160) = a1;
    *(v19 + 168) = &v135;
LABEL_33:
    v22 = 6;
    while (v22)
    {
      v23 = v22--;
      v24 = &v128[4 * v22];
      if (*v24)
      {
        v25 = v23;
        v26 = v23 << 32;
        v27 = *(a1 + 7);
        while (1)
        {
          if ((v27 & 0x700000000uLL) <= v26)
          {
            goto LABEL_42;
          }

          if ((v27 & 0x8000000000) != 0)
          {
            break;
          }

          v28 = v27;
          atomic_compare_exchange_strong_explicit(a1 + 7, &v28, v27 & 0xFFFFFF78FFFFFFFFLL | v26, memory_order_relaxed, memory_order_relaxed);
          v40 = v28 == v27;
          v27 = v28;
          if (v40)
          {
            _dispatch_workloop_invoke_cold_2(v19 + 232);
LABEL_42:
            *(a1 + 100) = v23;
            v29 = &v133[4 * v22];
            v30 = *v29;
            if (!*v29)
            {
              v30 = _dispatch_wait_for_enqueuer(v29, v24);
            }

            while (2)
            {
              if ((*v30 & 0xFFFFFFFFFFFFF001) == 1)
              {
                a2[4] = v25;
                *(a2 + 1) = v30;
                *(a1 + 100) = 0;
                *(v19 + 160) = v135;
                *(v19 + 192) = 0;
                v93 = *(a1 + 3);
                goto LABEL_246;
              }

              v31 = v30[2];
              v32 = v25 - 1;
              *&v133[4 * v32] = v31;
              if (!v31)
              {
                v49 = *&v128[4 * v32];
                while (v30 == (v49 & 0xFFFFFFFFFFFFFFF8))
                {
                  v50 = v49;
                  atomic_compare_exchange_strong_explicit(&v128[4 * v32], &v50, 0, memory_order_release, memory_order_relaxed);
                  v40 = v50 == v49;
                  v49 = v50;
                  if (v40)
                  {
                    goto LABEL_46;
                  }
                }

                v31 = v30[2];
                if (!v31)
                {
                  v31 = _dispatch_wait_for_enqueuer(v30 + 2, &v128[4 * v32]);
                }

                *&v133[4 * v32] = v31;
              }

LABEL_46:
              if (*(v19 + 40))
              {
                _dispatch_return_to_kernel();
              }

              v33 = *(v19 + 192);
              if (v33)
              {
                (*v33)(a1);
              }

              v34 = *v30;
              if (*v30 >= 0x1000uLL)
              {
                if (*(v34 + 40) == 1)
                {
                  (*(v34 + 48))(v30, 0, v129);
                }

                else
                {
                  (*(v34 + 64))(v30, a2, v132 & 0xFEFD0000);
                }

                if (!v33)
                {
LABEL_103:
                  if (!v31)
                  {
                    goto LABEL_33;
                  }

                  v25 = *(a1 + 100);
                  v30 = v31;
                  if ((*(a1 + 15) & 7u) > v25)
                  {
                    goto LABEL_33;
                  }

                  continue;
                }

LABEL_102:
                v33[1](a1);
                goto LABEL_103;
              }

              break;
            }

            v35 = v30[3];
            if ((v34 & 4) != 0)
            {
              v30[3] = -1;
            }

            if (v35 != -1 && MEMORY[0xFFFFFC100])
            {
              kdebug_trace();
            }

            v36 = v30[1];
            if (v36 == -1)
            {
              v39 = 0;
            }

            else
            {
              v37 = *(v19 + 200);
              if (((v37 >> 8) & 0xF) != 0)
              {
                v38 = 1 << ((BYTE1(v37) & 0xFu) + 7);
              }

              else
              {
                v38 = 0;
              }

              v39 = v38 | *(v19 + 200);
              if ((v36 & 0xFFFFFF) != 0)
              {
                if ((v36 & 0xFFFFFFuLL) >= (v38 & 0xFFFFFF00))
                {
                  v40 = (v37 & 0x44000000) == 0 && (v30[1] & 0x10000000) == 0;
                  if (!v40)
                  {
                    v39 = v36 & 0xFFFFFF;
                  }
                }
              }

              else if (v37 >> 12)
              {
                v39 = (256 << ((v37 >> 12) - 1)) | 0xFF;
              }
            }

            v41 = v39 & 0x7FFFFFFF02FFFFFFLL;
            v42 = *(v19 + 32);
            if ((v42 & 0x1000000) != 0)
            {
              if (!v41)
              {
                v41 = v42 & 0xFFFFFFFFFEFFFFFFLL;
                goto LABEL_112;
              }

LABEL_123:
              _dispatch_set_priority_and_voucher_slow(v41, v35, v34 & 4 | 2);
              if ((v34 & 0x200) == 0)
              {
LABEL_82:
                if (MEMORY[0xFFFFFC100])
                {
                  _dispatch_trace_item_pop_internal(a1, v30, v21);
                }

                _dispatch_introspection_queue_item_dequeue(a1, v30);
              }
            }

            else
            {
              if (v41 == (v42 & 0xFFFFFFFF76FFFFFFLL))
              {
                goto LABEL_76;
              }

LABEL_112:
              if (v41)
              {
                goto LABEL_123;
              }

LABEL_76:
              if (v35 != -1)
              {
                if (*(v19 + 224) != v35)
                {
                  v41 = 0;
                  goto LABEL_123;
                }

                if ((v34 & 4) != 0 && v35)
                {
                  os_release(v35);
                }
              }

              if ((v34 & 0x200) == 0)
              {
                goto LABEL_82;
              }
            }

            if ((v34 & 4) != 0)
            {
              v44 = *(v19 + 176);
              if (v44)
              {
                v45 = *(v44 + 8) + 1;
              }

              else
              {
                v45 = 1;
              }

              v43 = v30;
              if (v45 <= _dispatch_continuation_cache_limit)
              {
                v43 = 0;
                v30[2] = v44;
                *(v30 + 2) = v45;
                *(v19 + 176) = v30;
              }
            }

            else
            {
              v43 = 0;
            }

            if ((v34 & 8) != 0)
            {
              v51 = v30[6];
              v52 = *(v51->isa + 5);
              if (v52 != 514)
              {
                _dispatch_workloop_invoke_cold_3(v52);
              }

              v53 = v30[4];
              v54 = v30[5];
              v55 = v53;
              if (v54)
              {
                v55 = v30[4];
                if (v53 == _dispatch_call_block_and_release)
                {
                  if (v54[2])
                  {
                    v55 = v54[2];
                  }

                  else
                  {
                    v55 = 0;
                  }
                }
              }

              _dispatch_introspection_callout_entry(v54, v55);
              _dispatch_client_callout(v54, v53);
              _dispatch_introspection_callout_return(v54, v55);
              if (MEMORY[0xFFFFFC100])
              {
                _dispatch_workloop_invoke_cold_4(v30);
              }

              _dispatch_introspection_queue_item_complete(v30);
              dispatch_group_leave(v51);
              a2 = v130;
              if (!v43)
              {
LABEL_101:
                if (!v33)
                {
                  goto LABEL_103;
                }

                goto LABEL_102;
              }
            }

            else
            {
              v46 = v30[4];
              v47 = v30[5];
              v48 = v46;
              if (v47)
              {
                v48 = v30[4];
                if (v46 == _dispatch_call_block_and_release)
                {
                  if (v47[2])
                  {
                    v48 = v47[2];
                  }

                  else
                  {
                    v48 = 0;
                  }
                }
              }

              _dispatch_introspection_callout_entry(v47, v48);
              _dispatch_client_callout(v47, v46);
              _dispatch_introspection_callout_return(v47, v48);
              if (MEMORY[0xFFFFFC100])
              {
                _dispatch_workloop_invoke_cold_4(v30);
              }

              _dispatch_introspection_queue_item_complete(v30);
              if (!v43)
              {
                goto LABEL_101;
              }
            }

            _dispatch_continuation_free_to_cache_limit(v43);
            if (!v33)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          }
        }

        atomic_fetch_xor_explicit(a1 + 7, 0x8000000000uLL, memory_order_acquire);
        goto LABEL_33;
      }
    }

    v93 = 0;
    v127 = v127 & 1 | 0x40020000000000;
    *(v19 + 160) = v135;
    *(v19 + 192) = 0;
LABEL_246:
    v135 = *(v19 + 160);
    *(v19 + 160) = a1;
    *(v19 + 168) = &v135;
    _dispatch_last_resort_autorelease_pool_pop(a2);
    *(v19 + 160) = v135;
    v18 = v125;
    LOBYTE(v4) = v126;
  }

  else
  {
    v56 = *(a1 + 25);
    if (v56 && (*v56 & 0x20) != 0)
    {
      *(v131 + 192) = v56 + 40;
    }

    v57 = *(v131 + 160);
    v135 = v57;
    *(v131 + 160) = a1;
    *(v131 + 168) = &v135;
LABEL_139:
    v58 = 6;
    while (v58)
    {
      v59 = v58--;
      v60 = &v128[4 * v58];
      if (*v60)
      {
        v61 = v59;
        v62 = v59 << 32;
        v63 = *(a1 + 7);
        while (1)
        {
          if ((v63 & 0x700000000uLL) <= v62)
          {
            goto LABEL_148;
          }

          if ((v63 & 0x8000000000) != 0)
          {
            break;
          }

          v64 = v63;
          atomic_compare_exchange_strong_explicit(a1 + 7, &v64, v63 & 0xFFFFFF78FFFFFFFFLL | v62, memory_order_relaxed, memory_order_relaxed);
          v40 = v64 == v63;
          v63 = v64;
          if (v40)
          {
            _dispatch_workloop_invoke_cold_2(v131 + 232);
LABEL_148:
            *(a1 + 100) = v59;
            v65 = &v133[4 * v58];
            v66 = *v65;
            if (!*v65)
            {
              v66 = _dispatch_wait_for_enqueuer(v65, v60);
            }

            v67 = v131;
            while (2)
            {
              if ((*v66 & 0xFFFFFFFFFFFFF001) == 1)
              {
                a2[4] = v61;
                *(a2 + 1) = v66;
                *(a1 + 100) = 0;
                *(v67 + 160) = v135;
                *(v67 + 192) = 0;
                v93 = *(a1 + 3);
                goto LABEL_248;
              }

              v68 = *(v66 + 16);
              v69 = v61 - 1;
              *&v133[4 * v69] = v68;
              if (!v68)
              {
                v87 = *&v128[4 * v69];
                while (v66 == (v87 & 0xFFFFFFFFFFFFFFF8))
                {
                  v88 = v87;
                  atomic_compare_exchange_strong_explicit(&v128[4 * v69], &v88, 0, memory_order_release, memory_order_relaxed);
                  v40 = v88 == v87;
                  v87 = v88;
                  if (v40)
                  {
                    goto LABEL_153;
                  }
                }

                v68 = *(v66 + 16);
                if (!v68)
                {
                  v68 = _dispatch_wait_for_enqueuer((v66 + 16), &v128[4 * v69]);
                }

                *&v133[4 * v69] = v68;
              }

LABEL_153:
              if (*(v67 + 40))
              {
                _dispatch_return_to_kernel();
              }

              v70 = *(v67 + 192);
              if (v70)
              {
                (*v70)(a1);
              }

              v71 = *v66;
              if (*v66 >= 0x1000uLL)
              {
                if (*(v71 + 40) == 1)
                {
                  (*(v71 + 48))(v66, 0, v129);
                }

                else
                {
                  (*(v71 + 64))(v66, a2, v132 & 0xFFFD0000);
                }

                goto LABEL_213;
              }

              if ((v132 & 0x1000000) != 0)
              {
                v72 = objc_autoreleasePoolPush();
                v71 = *v66;
              }

              else
              {
                v72 = 0;
              }

              v73 = *(v66 + 24);
              if ((v71 & 4) != 0)
              {
                *(v66 + 24) = -1;
              }

              if (v73 != -1 && MEMORY[0xFFFFFC100])
              {
                kdebug_trace();
              }

              v74 = *(v66 + 8);
              if (v74 == -1)
              {
                v77 = 0;
              }

              else
              {
                v75 = *(v67 + 200);
                if (((v75 >> 8) & 0xF) != 0)
                {
                  v76 = 1 << ((BYTE1(v75) & 0xFu) + 7);
                }

                else
                {
                  v76 = 0;
                }

                v77 = v76 | *(v67 + 200);
                if ((v74 & 0xFFFFFF) != 0)
                {
                  if ((v74 & 0xFFFFFFuLL) >= (v76 & 0xFFFFFF00) && ((v75 & 0x44000000) != 0 || (*(v66 + 8) & 0x10000000) != 0))
                  {
                    v77 = v74 & 0xFFFFFF;
                  }
                }

                else if (v75 >> 12)
                {
                  v77 = (256 << ((v75 >> 12) - 1)) | 0xFF;
                }
              }

              v79 = v77 & 0x7FFFFFFF02FFFFFFLL;
              v80 = *(v67 + 32);
              if ((v80 & 0x1000000) != 0)
              {
                if (!v79)
                {
                  v79 = v80 & 0xFFFFFFFFFEFFFFFFLL;
                  goto LABEL_224;
                }

LABEL_235:
                _dispatch_set_priority_and_voucher_slow(v79, v73, v71 & 4 | 2);
                if ((v71 & 0x200) == 0)
                {
LABEL_190:
                  if (MEMORY[0xFFFFFC100])
                  {
                    _dispatch_trace_item_pop_internal(a1, v66, v57);
                  }

                  _dispatch_introspection_queue_item_dequeue(a1, v66);
                }
              }

              else
              {
                if (v79 == (v80 & 0xFFFFFFFF76FFFFFFLL))
                {
                  goto LABEL_184;
                }

LABEL_224:
                if (v79)
                {
                  goto LABEL_235;
                }

LABEL_184:
                if (v73 != -1)
                {
                  if (*(v67 + 224) != v73)
                  {
                    v79 = 0;
                    goto LABEL_235;
                  }

                  if ((v71 & 4) != 0 && v73)
                  {
                    os_release(v73);
                  }
                }

                if ((v71 & 0x200) == 0)
                {
                  goto LABEL_190;
                }
              }

              if ((v71 & 4) != 0)
              {
                v82 = *(v67 + 176);
                if (v82)
                {
                  v83 = *(v82 + 8) + 1;
                }

                else
                {
                  v83 = 1;
                }

                v81 = v66;
                if (v83 <= _dispatch_continuation_cache_limit)
                {
                  v81 = 0;
                  *(v66 + 16) = v82;
                  *(v66 + 8) = v83;
                  *(v67 + 176) = v66;
                }
              }

              else
              {
                v81 = 0;
              }

              if ((v71 & 8) != 0)
              {
                v89 = *(**(v66 + 48) + 40);
                if (v89 != 514)
                {
                  _dispatch_workloop_invoke_cold_3(v89);
                }

                v90 = *(v66 + 32);
                v91 = *(v66 + 40);
                v92 = v90;
                if (v91)
                {
                  v92 = *(v66 + 32);
                  if (v90 == _dispatch_call_block_and_release)
                  {
                    if (v91[2])
                    {
                      v92 = v91[2];
                    }

                    else
                    {
                      v92 = 0;
                    }
                  }
                }

                group = *(v66 + 48);
                _dispatch_introspection_callout_entry(v91, v92);
                _dispatch_client_callout(v91, v90);
                _dispatch_introspection_callout_return(v91, v92);
                if (MEMORY[0xFFFFFC100])
                {
                  _dispatch_workloop_invoke_cold_4(v66);
                }

                _dispatch_introspection_queue_item_complete(v66);
                dispatch_group_leave(group);
              }

              else
              {
                v84 = *(v66 + 32);
                v85 = *(v66 + 40);
                v86 = v84;
                if (v85)
                {
                  v86 = *(v66 + 32);
                  if (v84 == _dispatch_call_block_and_release)
                  {
                    if (v85[2])
                    {
                      v86 = v85[2];
                    }

                    else
                    {
                      v86 = 0;
                    }
                  }
                }

                _dispatch_introspection_callout_entry(v85, v86);
                _dispatch_client_callout(v85, v84);
                _dispatch_introspection_callout_return(v85, v86);
                if (MEMORY[0xFFFFFC100])
                {
                  _dispatch_workloop_invoke_cold_4(v66);
                }

                _dispatch_introspection_queue_item_complete(v66);
              }

              v67 = v131;
              if (v81)
              {
                _dispatch_continuation_free_to_cache_limit(v81);
              }

              a2 = v130;
              if (v72)
              {
                objc_autoreleasePoolPop(v72);
              }

LABEL_213:
              if (v70)
              {
                v70[1](a1);
              }

              if (!v68)
              {
                goto LABEL_139;
              }

              v61 = *(a1 + 100);
              v66 = v68;
              if ((*(a1 + 15) & 7u) > v61)
              {
                goto LABEL_139;
              }

              continue;
            }
          }
        }

        atomic_fetch_xor_explicit(a1 + 7, 0x8000000000uLL, memory_order_acquire);
        goto LABEL_139;
      }
    }

    v93 = 0;
    v127 = v127 & 1 | 0x40020000000000;
    *(v131 + 160) = v135;
    *(v131 + 192) = 0;
LABEL_248:
    v18 = v125;
    LOBYTE(v4) = v126;
  }

  if (v93 + 1 <= 1)
  {
    v94 = *(a1 + 7);
    while (1)
    {
      v95 = v94;
      v96 = v94 - v127;
      v97 = v96 & 0xFFFFFFF700000001;
      if (!(v95 >> 55))
      {
        if ((v95 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit(a1 + 7, 0x8000000000uLL, memory_order_acquire);
          v93 = *(v131 + 160);
          if ((v4 & 1) != 0 || ((*v93)[1].isa & 0x10000) != 0)
          {
            goto LABEL_28;
          }

          break;
        }

        if (v93)
        {
          v97 = v96 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v97 = v96 & 0xFFFFFFF000000001;
        }
      }

      v94 = v95;
      atomic_compare_exchange_strong_explicit(a1 + 7, &v94, v97, memory_order_release, memory_order_relaxed);
      if (v94 == v95)
      {
        if ((~v95 & 0x1800000000) != 0 || (v99 = HIDWORD(v95) & 7, v100 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)), v101 = *(v100 + 200), (HIWORD(v101) & 0xF) >= v99))
        {
          v98 = 0;
          v93 = 0;
        }

        else
        {
          v98 = 0;
          v93 = 0;
          *(v100 + 200) = v101 & 0xFFF0FFFF | (v99 << 16);
        }

        goto LABEL_267;
      }
    }
  }

  v98 = v127;
LABEL_267:
  if ((v132 & 0x40000) == 0)
  {
    v102 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v102 + 200) = *(v102 + 200) & 0xF0000 | v124;
  }

LABEL_269:
  if ((v4 & 1) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_workloop_invoke_cold_4(a1);
    }

    _dispatch_introspection_queue_item_complete(a1);
  }

  if (v93)
  {
    return _dispatch_queue_invoke_finish(a1, a2, v93, v98);
  }

  else
  {
    return _os_object_release_internal_n(a1, &dword_0 + 2);
  }
}

uint64_t _dispatch_workloop_barrier_complete(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v7 = a2 << 32;
  v8 = (result + 192);
LABEL_2:
  v9 = v8;
  v10 = 6;
  do
  {
    if (*v9)
    {
      v11 = *(v9 - 6);
      if (!v11)
      {
        result = _dispatch_wait_for_enqueuer(v9 - 6, v9);
        v11 = result;
      }

      if (*v11 <= 0xFFFuLL && (*v11 & 0x81) != 0)
      {

        return _dispatch_workloop_drain_barrier_waiter(v5, v11, v10, a3, 0);
      }

      v6 = 1;
    }

    --v9;
    --v10;
  }

  while (v10);
  if (v6 && (a3 & 1) == 0)
  {
    if (*(v5 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v5 + 8), 2u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    a3 = a3 | 1;
  }

LABEL_15:
  v13 = *(v5 + 56);
  do
  {
    v14 = v13;
    if ((~v13 & 0x2000000002) == 0 && (v13 & 0x800000001) != 0)
    {
      result = _dispatch_event_loop_ensure_ownership(v5);
      atomic_fetch_and_explicit((v5 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_15;
    }

    if ((v13 & 0x700000000) < v7)
    {
      v13 = v13 & 0xFFFFFFF000000001 | v7;
    }

    v15 = (v13 & 0xFFFFFFF700000001) - 0x40020000000000;
    if (v6)
    {
      v16 = v15 | 1;
    }

    else
    {
      if ((v14 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit((v5 + 56), 0x8000000000uLL, memory_order_acquire);
        goto LABEL_2;
      }

      v17 = v15 & 0xFFFFFFF000000001;
      v18 = v15 & 0xFFFFFFF000000000;
      if ((v14 & 0x2000000000) != 0)
      {
        v16 = v18;
      }

      else
      {
        v16 = v17;
      }
    }

    v13 = v14;
    atomic_compare_exchange_strong_explicit((v5 + 56), &v13, v16, memory_order_release, memory_order_relaxed);
  }

  while (v13 != v14);
  if ((v16 & 0x4000000001) != 0)
  {
    result = _dispatch_introspection_runtime_event();
  }

  if ((v14 & 0x2000000000) == 0)
  {
    if ((~v14 & 0x1800000000) == 0)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v20 = HIDWORD(v14) & 7;
      v21 = *(StatusReg + 200);
      if ((HIWORD(v21) & 0xF) < v20)
      {
        *(StatusReg + 200) = v21 & 0xFFF0FFFF | (v20 << 16);
      }
    }

    if (v6)
    {
      if ((v16 ^ v14))
      {
        if ((v16 & 0x2000000000) == 0)
        {
          return _dispatch_workloop_wakeup_cold_1();
        }

        _dispatch_introspection_runtime_event();

        return _dispatch_event_loop_poke(v5, v16, (&dword_0 + 1), v22);
      }

      result = _dispatch_workloop_barrier_complete_cold_3(v16, v5, a3);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    goto LABEL_50;
  }

  if ((v14 & 3) == 2 && (v16 & 1) == 0)
  {
LABEL_50:
    if (a3)
    {

      return _os_object_release_internal_n(v5, &dword_0 + 2);
    }

    return result;
  }

  return _dispatch_event_loop_end_ownership(v5, v14, v16, a3);
}

uint64_t _dispatch_workloop_push(uint64_t result, uint64_t *a2, unsigned int a3)
{
  if (*a2 <= 0xFFF && (*a2 & 0x81) != 0)
  {
    return _dispatch_workloop_push_waiter(result, a2, a3);
  }

  v4 = *(result + 84);
  v5 = (v4 >> 8) & 0xF;
  LODWORD(v6) = v4 >> 12;
  if (a3)
  {
    LODWORD(v6) = a3;
  }

  if (v5 <= a3)
  {
    v6 = v6;
  }

  else
  {
    v6 = v5;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = result + 8 * (v6 - 1) + 152;
  v8 = atomic_exchange_explicit((result + 8 * (v6 - 1) + 152), a2, memory_order_release);
  if (v8)
  {
    *(v8 + 16) = a2;
    *(StatusReg + 976) = 0;
  }

  else
  {
    atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);
    *(result + 8 * (v6 - 1) + 104) = a2;
    *(StatusReg + 976) = 0;
    return _dispatch_workloop_wakeup(result, v6, 3);
  }

  return result;
}

unint64_t _dispatch_workloop_push_waiter(unint64_t result, uint64_t *a2, unsigned int a3)
{
  v3 = __clz(__rbit32((*(a2 + 2) >> 8) & 0x3FFF));
  if (((*(a2 + 2) >> 8) & 0x3FFF) != 0)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= a3)
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  a2[2] = 0;
  v6 = (result + 8 * (v5 - 1) + 152);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = v6;
  v8 = atomic_exchange_explicit(v6, a2, memory_order_release);
  if (v8)
  {
    *(v8 + 16) = a2;
    *(StatusReg + 976) = 0;
    return result;
  }

  v9 = result;
  v10 = result + 8 * (v5 - 1);
  *(v10 + 104) = a2;
  *(StatusReg + 976) = 0;
  v11 = *a2;
  if ((*a2 & 0x80) != 0 && ((v12 = *(result + 24), v12 < &_dispatch_root_queues) || v12 >= &_dispatch_queue_serial_numbers))
  {
    a2[7] = result;
    *a2 = v11 & 0xFFFFFFFFFFFFFF7FLL;
    atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);

    return _dispatch_workloop_wakeup(result, v5, 3);
  }

  else
  {
    v13 = *(result + 56);
    v14 = v5 << 32;
    v15 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
    result = 0x40FFFFFFFDLL;
    do
    {
      v16 = v13;
      v17 = v13 & 0xFFFFFFF8FFFFFFFFLL | v14;
      v18 = v17 | 0x800000000;
      if (v13 & 0x1000000000 | v14 & 0x1000000000)
      {
        v17 |= 0x800000000uLL;
      }

      if ((v13 & 0x700000000) < v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      v20 = v19 | 0x8000000000;
      v21 = v15 | v19 & 0x7700000001;
      if ((v13 & 0x40FFFFFFFDLL) != 0)
      {
        v21 = v20;
      }

      atomic_compare_exchange_strong_explicit((v9 + 56), &v13, v21, memory_order_release, memory_order_relaxed);
    }

    while (v13 != v16);
    if ((v21 & 0x2000000000) != 0 && a2[6] != -4)
    {
      *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 25) == *(StatusReg + 24)));
    }

    if (((v21 ^ v16) & 0x40000000000000) != 0)
    {
      if ((*(a2 + 106) & 4) == 0)
      {
        goto LABEL_40;
      }

      result = *(v10 + 104);
      if (!result)
      {
        v30 = v9;
        v31 = a2;
        v32 = v6;
        result = _dispatch_wait_for_enqueuer((v10 + 104), v6);
        a2 = v31;
        v6 = v32;
        v9 = v30;
      }

      if (result == a2)
      {
        v22 = v6;
        *(a2 + 106) |= 8u;
        if ((*a2 & 0x80) != 0)
        {
          a2[7] = v9;
        }

        v23 = a2[2];
        *(v10 + 104) = v23;
        if (!v23)
        {
          v24 = *v22;
          while ((v24 & 0xFFFFFFFFFFFFFFF8) == a2)
          {
            v25 = v24;
            atomic_compare_exchange_strong_explicit(v22, &v25, 0, memory_order_release, memory_order_relaxed);
            v26 = v25 == v24;
            v24 = v25;
            if (v26)
            {
              return result;
            }
          }

          result = a2[2];
          if (!result)
          {
            result = _dispatch_wait_for_enqueuer(a2 + 2, v22);
          }

          *(v10 + 104) = result;
        }
      }

      else
      {
LABEL_40:

        return _dispatch_workloop_barrier_complete(v9, v5, 0, v18);
      }
    }

    else
    {
      if (((v21 ^ v16) & 0x700000000) == 0 || (v21 & 0xFF80004000000000) != 0)
      {
        return result;
      }

      if ((v21 & 1) == 0)
      {
        if ((v21 & 0x2000000000) != 0 || (v21 & 0xFFFFFFFC) == 0)
        {
          return result;
        }

        goto LABEL_33;
      }

      if ((v21 & 0x2000000000) == 0)
      {
LABEL_33:

        return _dispatch_queue_wakeup_with_override_slow(v9, v21, 0);
      }

      v27 = v9;
      v28 = v21;
      _dispatch_introspection_runtime_event();

      return _dispatch_event_loop_poke(v27, v28, 0x80000000, v29);
    }
  }

  return result;
}

uint64_t dispatch_thread_get_current_override_qos_floor()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
  v1 = (v0 >> 8) & 0xF;
  v2 = v0 >> 12;
  v3 = HIWORD(v0) & 0xF;
  if (v1 <= v2)
  {
    v1 = v2;
  }

  if (v1 > v3)
  {
    v3 = v1;
  }

  if (v3 <= 3)
  {
    switch(v3)
    {
      case 1:
        return 0x500000001;
      case 2:
        return 0x900000001;
      case 3:
        return 0x1100000001;
    }

    return 1;
  }

  if (v3 > 5)
  {
    if (v3 == 6)
    {
      return 0x2100000001;
    }

    return v3 != 15;
  }

  if (v3 == 4)
  {
    return 0x1500000001;
  }

  else
  {
    return 0x1900000001;
  }
}

uint64_t dispatch_thread_override_self(int a1)
{
  HIDWORD(v2) = a1 - 5;
  LODWORD(v2) = a1 - 5;
  v1 = v2 >> 2;
  if (v1 > 3)
  {
    if (v1 != 4)
    {
      if (v1 == 7)
      {
        v1 = 6;
      }

      else if (v1 != 5)
      {
LABEL_11:
        v1 = 0;
      }
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v1 = 1;
        break;
      case 1:
        v1 = 2;
        break;
      case 3:
        break;
      default:
        goto LABEL_11;
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  _pthread_workqueue_override_start_direct();
  v4 = *(StatusReg + 200);
  if ((HIWORD(v4) & 0xF) < v1)
  {
    *(StatusReg + 200) = v4 & 0xFFF0FFFF | (v1 << 16);
  }

  return 0;
}

uint64_t dispatch_lock_override_end(int a1)
{
  HIDWORD(v2) = a1 - 5;
  LODWORD(v2) = a1 - 5;
  v1 = v2 >> 2;
  if (v1 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_45220[v1];
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 200);
  if ((HIWORD(v5) & 0xF) < v3)
  {
    *(StatusReg + 200) = v5 & 0xFFF0FFFF | (v3 << 16);
  }

  return 0;
}

void _dispatch_queue_wakeup(uint64_t result, uint64_t a2, uint64_t a3, __objc2_class **a4, int8x16_t a5)
{
  v6 = a4;
  if (a4 && (a3 & 1) == 0)
  {
    if (*(result + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_86;
    }

    a3 = a3 | 1;
  }

  if ((a3 & 4) != 0)
  {
    v34 = *(result + 84);
    v35 = v34 >> 12;
    if (a2)
    {
      v35 = a2;
    }

    v36 = (v34 >> 8) & 0xF;
    if (v35 <= v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v35;
    }

    _dispatch_lane_class_barrier_complete(result, v37, a3, a4, 0x40020000000000, a5);
    return;
  }

  if (!a4)
  {
    if (!a2)
    {
LABEL_76:
      if ((a3 & 1) == 0)
      {
        return;
      }

LABEL_77:

      _os_object_release_internal_n(result, &dword_0 + 2);
      return;
    }

    v23 = *(result + 56);
    v24 = a2 << 32;
    do
    {
      if ((v23 & 0x40FFFFFFFDLL) == 0)
      {
        goto LABEL_76;
      }

      v25 = v23;
      v26 = v23 & 0x700000000;
      v27 = v25 & 0xFFFFFFF8FFFFFFFFLL | v24;
      if (v25 & 0x1000000000 | v24 & 0x1000000000)
      {
        v27 |= 0x800000000uLL;
      }

      v28 = v26 < v24 ? v27 : v25;
      v29 = (v25 & 0xFF80002000000000) == 0x2000000000 && ((v25 & 0x4000000000) == 0);
      v5 = v28 | v29;
      if ((v28 | v29) == v25)
      {
        goto LABEL_76;
      }

      v23 = v25;
      atomic_compare_exchange_strong_explicit((result + 56), &v23, v5, memory_order_relaxed, memory_order_relaxed);
    }

    while (v23 != v25);
    v22 = v5 ^ v25;
    v8 = 1;
    if ((a3 & 1) != 0 || (v22 & 1) == 0)
    {
LABEL_58:
      v6 = (&dword_0 + 1);
      goto LABEL_59;
    }

    if (*(result + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed) > 0)
    {
      LODWORD(a3) = a3 | 1;
      v8 = 1;
      goto LABEL_58;
    }

LABEL_86:
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
    goto LABEL_87;
  }

  v8 = 0x4000000000;
  if (a4 != &_dispatch_mgr_q)
  {
    v8 = 1;
  }

  v9 = *(result + 84);
  v10 = v9 >> 12;
  if (a2)
  {
    v10 = a2;
  }

  LODWORD(v11) = (v9 >> 8) & 0xF;
  if (v10 <= v11)
  {
    v11 = v11;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(result + 56);
  v13 = v11 << 32;
  do
  {
    v14 = v12;
    v15 = v12 & 0x700000000;
    v16 = v14 & 0xFFFFFFF8FFFFFFFFLL | v13;
    if (v14 & 0x1000000000 | v13 & 0x1000000000)
    {
      v16 |= 0x800000000uLL;
    }

    if (v15 < v13)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if ((v14 & 0x180000000000000) == 0x80000000000000)
    {
      v18 = v17 & 0xFF7FFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    if ((a3 & 0x20) != 0)
    {
      v17 = v18;
    }

    v19 = ((v14 & 0xFFFFFFFC) == 0) << 38;
    if (a4 != &_dispatch_mgr_q)
    {
      v19 = 1;
    }

    v20 = v17 | v19;
    if (v17 >> 55)
    {
      v21 = v17;
    }

    else
    {
      v21 = v20;
    }

    if ((v14 & 0x4000000001) != 0)
    {
      v5 = v17;
    }

    else
    {
      v5 = v21;
    }

    if ((a3 & 2) != 0)
    {
      v5 |= 0x8000000000uLL;
    }

    else if (v5 == v14)
    {
      goto LABEL_76;
    }

    v12 = v14;
    atomic_compare_exchange_strong_explicit((result + 56), &v12, v5, memory_order_release, memory_order_relaxed);
  }

  while (v12 != v14);
  v22 = v14 ^ v5;
LABEL_59:
  if ((v22 & v8) != 0)
  {
    if (v6 == (&dword_0 + 1))
    {
      v6 = *(result + 24);
    }

    if ((v5 & 0x2000000000) != 0)
    {
      _dispatch_introspection_runtime_event();
      v31 = result;
      v32 = v5;
      v33 = (&dword_0 + 1);
LABEL_64:

      _dispatch_event_loop_poke(v31, v32, v33, v30);
      return;
    }

    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(v6, result, a5);
    }

    _dispatch_introspection_queue_item_enqueue(v6, result);
    v38 = *(v6->isa + 11);

    v38(v6, result, HIDWORD(v5) & 7);
    return;
  }

  if ((v22 & 0x700000000) == 0)
  {
    goto LABEL_76;
  }

LABEL_87:
  v39 = a3;
  if ((v5 & 0xFF80004000000000) != 0 || (v5 & 0xFFFFFFFD) == 0)
  {
    if ((a3 & 1) == 0)
    {
      return;
    }

    goto LABEL_77;
  }

  if ((v5 & 0x2000000000) != 0)
  {
    _dispatch_introspection_runtime_event();
    v33 = (v39 | 0x80000000);
    v31 = result;
    v32 = v5;
    goto LABEL_64;
  }

  _dispatch_queue_wakeup_with_override_slow(result, v5, a3, a4);
}

void _dispatch_lane_class_barrier_complete(atomic_uint *result, atomic_uint *a2, uint64_t a3, __objc2_class **a4, uint64_t a5, int8x16_t a6)
{
  if (a4 == &_dispatch_mgr_q)
  {
    v11 = 0;
    v12 = 0x4000000000;
    v10 = &_dispatch_mgr_q;
  }

  else
  {
    v10 = a4;
    if (a4)
    {
      v11 = 0;
      if (a4 == (&dword_0 + 1))
      {
        v10 = *(result + 3);
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
      v11 = 1;
    }
  }

  v13 = a2 << 32;
LABEL_9:
  v14 = *(result + 7);
  do
  {
    if ((~v14 & 0x2000000002) == 0 && (v14 & 0x800000001) != 0)
    {
      v23 = a3;
      _dispatch_event_loop_ensure_ownership(result);
      a3 = v23;
      atomic_fetch_and_explicit(result + 7, 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_9;
    }

    v15 = v14 - a5;
    if (((v14 - a5) & 0x700000000) >= v13)
    {
      v16 = v14 - a5;
    }

    else
    {
      v16 = (v14 - a5) & 0xFFFFFFF8FFFFFFFFLL | v13;
    }

    v17 = v16 & 0xFFFFFFF700000001;
    if (v14 >> 55)
    {
      v22 = v16 & 0xFFFFFFF700000000;
      if ((v14 & 0x2000000000) != 0)
      {
        v18 = v22;
      }

      else
      {
        v18 = v17;
      }
    }

    else if (v11)
    {
      if ((v14 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit(result + 7, 0x8000000000uLL, memory_order_acquire);
        superclass = *(*result + 80);
        v33 = a3 | 4;
        v34 = result;
        v35 = a2;

        goto LABEL_54;
      }

      v18 = v16 & 0xFFFFFFF000000001;
    }

    else
    {
      if ((v14 & 0x4000000001) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v12;
      }

      v18 = v17 | v19;
    }

    v20 = v14;
    atomic_compare_exchange_strong_explicit(result + 7, &v20, v18, memory_order_release, memory_order_relaxed);
    v21 = v20 == v14;
    v14 = v20;
  }

  while (!v21);
  if ((v18 & 0x4000000001) != 0)
  {
    v24 = a3;
    _dispatch_introspection_runtime_event();
    LODWORD(a3) = v24;
  }

  if ((v15 & 0x2000000000) != 0)
  {
    if (v15 & 2) == 0 || ((v18 | v15))
    {

      _dispatch_event_loop_end_ownership(result, v15, v18, a3);
      return;
    }

LABEL_44:
    if (a3)
    {

      _os_object_release_internal_n(result, &dword_0 + 2);
    }

    return;
  }

  if ((~v15 & 0x1800000000) == 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = HIDWORD(v15) & 7;
    v27 = *(StatusReg + 200);
    if ((HIWORD(v27) & 0xF) < v26)
    {
      *(StatusReg + 200) = v27 & 0xFFF0FFFF | (v26 << 16);
    }
  }

  if (!v10)
  {
    goto LABEL_44;
  }

  if (((v18 ^ v15) & v12) != 0)
  {
    if ((v18 & 0x2000000000) != 0)
    {
      _dispatch_introspection_runtime_event();
      v29 = result;
      v30 = v18;
      v31 = (&dword_0 + 1);
      goto LABEL_39;
    }

    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(v10, result, a6);
    }

    _dispatch_introspection_queue_item_enqueue(v10, result);
    superclass = (*v10)[2].superclass;
    v33 = HIDWORD(v18) & 7;
    v34 = v10;
    v35 = result;

LABEL_54:
    (superclass)(v34, v35, v33);
    return;
  }

  if ((v18 & 0xFF80004000000000) != 0 || (v18 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_44;
  }

  v36 = a3;
  if ((v18 & 0x2000000000) != 0)
  {
    _dispatch_introspection_runtime_event();
    v31 = (v36 | 0x80000000);
    v29 = result;
    v30 = v18;
LABEL_39:

    _dispatch_event_loop_poke(v29, v30, v31, v28);
  }

  else
  {

    _dispatch_queue_wakeup_with_override_slow(result, v18, a3, a4);
  }
}

void _dispatch_lane_wakeup(void *a1, atomic_uint *a2, uint64_t a3, int8x16_t a4)
{
  if ((a3 & 4) != 0)
  {
    _dispatch_lane_barrier_complete(a1, a2, a3, a4);
  }

  else
  {
    _dispatch_queue_wakeup(a1, a2, a3, (a1[6] != 0), a4);
  }
}

void _dispatch_lane_barrier_complete(void *result, atomic_uint *a2, uint64_t a3, int8x16_t a4)
{
  if (!result[6] || result[7] >> 55)
  {
    v7 = 0;
LABEL_33:
    v11 = (*(result + 40) << 41) + 0x40000000000000;

    _dispatch_lane_class_barrier_complete(result, a2, a3, v7, v11, a4);
    return;
  }

  v8 = result[13];
  if (!v8)
  {
    v8 = _dispatch_wait_for_enqueuer(result + 13, (result + 6));
  }

  v9 = *v8;
  if (*(result + 40) == 1)
  {
    if (v9 <= 0xFFF && (*v8 & 0x81) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (v9 < 0x1000)
  {
    if ((v9 & 2) != 0)
    {
      if ((v9 & 0x81) != 0)
      {
LABEL_21:

        _dispatch_lane_drain_barrier_waiter(result, v8, a3, 0);
        return;
      }

LABEL_28:
      if ((a3 & 1) == 0)
      {
        if (*(result + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(result + 2, 2u, memory_order_relaxed) <= 0)
        {
          qword_6D1C0 = "API MISUSE: Resurrection of an object";
          __break(1u);
          return;
        }

        a3 = a3 | 1;
      }

      v7 = (&dword_0 + 1);
      goto LABEL_33;
    }
  }

  else if ((*(v9 + 40) & 0xF0) == 0x10)
  {
    if ((*(v8 + 80) & 0x80000) != 0 || !*(result + 40) || (*(v8 + 80) & 0x80000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (!*(result + 40))
  {
    goto LABEL_28;
  }

LABEL_25:

  _dispatch_lane_drain_non_barriers(result, v8, a3, a4);
}

void _dispatch_lane_push(uint64_t result, uint64_t *a2, unsigned int a3, uint64_t a4, int8x16_t a5)
{
  if (*a2 <= 0xFFF && (*a2 & 0x81) != 0)
  {
    _dispatch_lane_push_waiter(result, a2, a3, a4, a5);
    return;
  }

  if (((*(result + 84) >> 8) & 0xFu) >= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = result + 48;
  v8 = atomic_exchange_explicit((result + 48), a2, memory_order_release);
  if (v8)
  {
    if ((*(result + 60) & 7) != 0 && (*(result + 60) & 7u) >= v6)
    {
      *(v8 + 16) = a2;
      *(StatusReg + 976) = 0;
      return;
    }

    atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);
    v10 = (v8 + 16);
    v11 = 1;
  }

  else
  {
    atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);
    v10 = (result + 104);
    v11 = 3;
  }

  *v10 = a2;
  *(StatusReg + 976) = 0;
  (*(*result + 80))(result, v6, v11);
}

void _dispatch_lane_push_waiter(uint64_t result, uint64_t *a2, unsigned int a3, uint64_t a4, int8x16_t a5)
{
  if (a2[6] == -4)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  a2[2] = 0;
  v7 = (result + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = result + 48;
  v9 = atomic_exchange_explicit((result + 48), a2, memory_order_release);
  if (!v9)
  {
    *(result + 104) = a2;
    *(StatusReg + 976) = 0;
    v10 = *(result + 80);
    if ((v10 & 0x40000) != 0 && (v10 = *(result + 80), (v10 & 0x1000000) == 0))
    {
      v11 = *a2;
    }

    else
    {
      v11 = *a2;
      if ((*a2 & 0x80) == 0)
      {
        v12 = *(result + 56);
LABEL_32:
        v21 = (v10 << 41) - 0x20000000000;
        v22 = v6 << 32;
        a4 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
        do
        {
          v23 = v12;
          v24 = v12 & 0x700000000;
          v25 = v12 & 0xFFFFFFF8FFFFFFFFLL | v22;
          if ((v25 & 0x1000000000) != 0)
          {
            v25 |= 0x800000000uLL;
          }

          if (v24 >= v22)
          {
            v25 = v23;
          }

          v26 = v25 | 0x8000000000;
          if ((v23 & 0xFFE00000FFFFFFFCLL) == 0 && ((v23 & 0x2000000000) == 0 || (v23 & 0x4000000001) == 0) && ((v23 & 0x10000000000) != 0 || !((v21 + v25) >> 53)))
          {
            v26 = a4 | v25 & 0x7700000001;
          }

          v12 = v23;
          atomic_compare_exchange_strong_explicit((result + 56), &v12, v26, memory_order_release, memory_order_relaxed);
        }

        while (v12 != v23);
        if ((v23 & 0x2000000000) != 0 && a2[6] != -4)
        {
          *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 25) == *(StatusReg + 24)));
        }

        if (((v26 ^ v23) & 0x40000000000000) != 0)
        {
          if ((*(a2 + 106) & 4) != 0 && *(result + 104) == a2)
          {
            *(a2 + 106) |= 8u;
            if ((*a2 & 0x80) != 0)
            {
              a2[7] = result;
            }

            v28 = a2[2];
            *(result + 104) = v28;
            if (!v28)
            {
              v29 = *v7;
              while ((v29 & 0xFFFFFFFFFFFFFFF8) == a2)
              {
                v30 = v29;
                atomic_compare_exchange_strong_explicit(v7, &v30, 0, memory_order_release, memory_order_relaxed);
                v18 = v30 == v29;
                v29 = v30;
                if (v18)
                {
                  return;
                }
              }

              v32 = a2[2];
              if (!v32)
              {
                v32 = _dispatch_wait_for_enqueuer(a2 + 2, v7);
              }

              *(result + 104) = v32;
            }
          }

          else
          {

            _dispatch_lane_barrier_complete(result, v6, 0, a5);
          }

          return;
        }

        if (((v26 ^ v23) & 0x700000000) == 0 || (v26 & 0xFF80004000000000) != 0)
        {
          return;
        }

        if (v26)
        {
          if ((v26 & 0x2000000000) != 0)
          {
            v16 = v26;
LABEL_60:
            _dispatch_introspection_runtime_event();

            _dispatch_event_loop_poke(result, v16, 0x80000000, v27);
            return;
          }
        }

        else if ((v26 & 0x2000000000) != 0 || (v26 & 0xFFFFFFFC) == 0)
        {
          return;
        }

        v19 = v26;
LABEL_25:

        _dispatch_queue_wakeup_with_override_slow(result, v19, 0, a4);
        return;
      }

      v12 = *(result + 56);
      v10 = *(result + 80);
      if ((v10 & 0x1000000) == 0)
      {
        if ((v12 & 0x3000000000) == 0)
        {
          goto LABEL_32;
        }

        v20 = *(result + 24);
        if (v20 >= &_dispatch_root_queues && v20 < &_dispatch_queue_serial_numbers)
        {
          goto LABEL_32;
        }
      }
    }

    *a2 = v11 & 0xFFFFFFFFFFFFFF7FLL;
    a2[7] = result;
    v31 = *(*result + 80);

    v31();
    return;
  }

  *(v9 + 16) = a2;
  *(StatusReg + 976) = 0;
  if (!v6)
  {
    return;
  }

  v13 = *(result + 56);
  v14 = v6 << 32;
  do
  {
    v15 = v13 & 0xFFFFFFF8FFFFFFFFLL | v14;
    if (v13 & 0x1000000000 | v14 & 0x1000000000)
    {
      v15 |= 0x800000000uLL;
    }

    if ((v13 & 0x700000000) < v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (v13 == v16)
    {
      return;
    }

    v17 = v13;
    atomic_compare_exchange_strong_explicit((result + 56), &v17, v16, memory_order_relaxed, memory_order_relaxed);
    v18 = v17 == v13;
    v13 = v17;
  }

  while (!v18);
  if ((v16 & 0xFF80004000000000) != 0)
  {
    return;
  }

  if (v16)
  {
    if ((v16 & 0x2000000000) == 0)
    {
LABEL_24:
      v19 = v16;
      goto LABEL_25;
    }

    goto LABEL_60;
  }

  if ((v16 & 0x2000000000) == 0 && (v16 & 0xFFFFFFFC) != 0)
  {
    goto LABEL_24;
  }
}

void _dispatch_lane_concurrent_push(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, int8x16_t a5)
{
  v5 = a3;
  if ((*(result + 87) & 8) != 0 && *a2 >= 0x1000 && *(*a2 + 40) != 1 && (*(*a2 + 40) != 19 || (_dispatch_source_is_timer(a2) & 1) == 0))
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
    qword_6D1F0 = a2;
    __break(1u);
    return;
  }

  if (!*(result + 48))
  {
    v8 = *a2;
    if (*a2 <= 0xFFF)
    {
      if ((v8 & 0x83) != 0)
      {
        goto LABEL_7;
      }
    }

    else if ((*(v8 + 40) & 0xF0) == 0x10 && (a2[10] & 0x80000) != 0)
    {
      goto LABEL_7;
    }

    v9 = *(result + 56);
    while ((v9 & 0xFFE0018000000000) == 0)
    {
      v10 = v9;
      atomic_compare_exchange_strong_explicit((result + 56), &v10, v9 + 0x20000000000, memory_order_acquire, memory_order_acquire);
      v11 = v10 == v9;
      v9 = v10;
      if (v11)
      {

        _dispatch_continuation_redirect_push(result, a2);
        return;
      }
    }
  }

LABEL_7:

  _dispatch_lane_push(result, a2, v5, a4, a5);
}

_DWORD *_dispatch_continuation_redirect_push(_DWORD *result, void *a2)
{
  v3 = result;
  if (*a2 >= 0x1000uLL && *(*a2 + 40) == 256)
  {
    if (!a2[5])
    {
      a2[5] = (result[20] << 8) & 0x3000000;
    }
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = *(StatusReg + 176);
    if (v5)
    {
      *(StatusReg + 176) = v5[2];
    }

    else
    {
      result = _dispatch_continuation_alloc_from_heap();
      v5 = result;
    }

    a2[2] = 0;
    *v5 = &unk_645E8;
    v5[4] = 0;
    v5[5] = (*(v3 + 80) << 8) & 0x3000000;
    v5[6] = v3;
    v5[7] = a2;
    v5[3] = -1;
    v5[1] = -1;
    if (*(v3 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v3 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return result;
    }
  }

  v6 = *(**(v3 + 24) + 88);

  return v6();
}

uint64_t dispatch_async_swift_job(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*a2 + 40);
  if (v4 != 1)
  {
    dispatch_async_swift_job_cold_1(v4);
  }

  v5 = *(*a1 + 88);
  HIDWORD(v6) = a3 - 5;
  LODWORD(v6) = a3 - 5;
  if ((v6 >> 2) > 7)
  {
  }

  return v5();
}

uint64_t _dispatch_channel_xref_dispose(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 88) + 24))
  {
    v3 = (*(a1 + 80) & 0x10000000) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    _dispatch_channel_xref_dispose_cold_1(a1);
  }

  v4 = *(*a1 + 80);

  return v4();
}

atomic_uint *_dispatch_channel_invoke(unsigned __int16 *a1, void *a2, int a3, int8x16_t a4)
{
  v5 = a1;
  if ((a3 & 3) == 0)
  {
    *(a1 + 2) = -1985229329;
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v6, a1, a4);
    }

    _dispatch_introspection_queue_item_dequeue(v6, v5);
  }

  v122 = v5;
  v121 = a3;
  if ((a3 & 2) != 0)
  {
    v7 = 0x40020000000001;
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_7;
  }

  v8 = v5[40];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 24);
  v10 = StatusReg + 24;
  v12 = (v8 << 41) - 0x20000000000;
  v13 = v11 & 0xFFFFFFFC;
  if ((a3 & 0x40000) != 0)
  {
    v14 = 0x4000000000;
  }

  else
  {
    v14 = 1;
  }

  v15 = 0xFFE00000FFFFFFFCLL;
  if ((a3 & 0x40000) == 0)
  {
    v15 = 0xFFE00040FFFFFFFCLL;
  }

  if (a3)
  {
    v16 = 0xFFE00040FFFFFFFCLL;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v10 + 176);
  v18 = (v17 >> 8) & 0xF;
  v19 = v17 >> 12;
  v20 = HIWORD(v17) & 0xF;
  if (v18 <= v19)
  {
    v18 = v19;
  }

  if (v18 > v20)
  {
    v20 = v18;
  }

  while (1)
  {
    v21 = *(v5 + 7);
    while ((v21 & v16) != 0)
    {
      if ((a3 & 1) != 0 || (v27 = v21, atomic_compare_exchange_strong_explicit(v122 + 7, &v27, v21 ^ v14, memory_order_acquire, memory_order_acquire), v27 == v21))
      {
        v7 = 0;
        v31 = 0;
        v5 = v122;
        goto LABEL_295;
      }

      v21 = v27;
LABEL_31:
      v5 = v122;
    }

    if ((v21 & 0x1000000000) == 0)
    {
      break;
    }

    v22 = HIDWORD(v21) & 7;
    if (v22 <= v20)
    {
      break;
    }

    _dispatch_workloop_invoke_cold_1();
    v20 = v22;
  }

  v23 = (v21 >> 40) & 1;
  if (!((v12 + v21) >> 53))
  {
    LODWORD(v23) = 1;
  }

  if (v23)
  {
    v24 = 0x60000000000000;
  }

  else
  {
    v24 = 0x20000000000000;
  }

  v25 = v21 & 0x7700000001 | v13 | v24;
  v26 = v21;
  atomic_compare_exchange_strong_explicit(v5 + 7, &v26, v25, memory_order_acquire, memory_order_acquire);
  if (v26 != v21)
  {
    v21 = v26;
    goto LABEL_31;
  }

  v28 = 0x60000000000000;
  if ((a3 & 1) == 0)
  {
    v28 = v14 | 0x60000000000000;
  }

  v29 = v25 & v28;
  v30 = v21 & 0x3FFE0000000000;
  v7 = v29 - v30;
  if (v29 == v30)
  {
    v31 = 0;
    goto LABEL_295;
  }

  if ((a3 & 0x40000) != 0)
  {
LABEL_7:
    v119 = 0;
    goto LABEL_56;
  }

LABEL_42:
  v32 = *(v5 + 21);
  v33 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v34 = *(v33 + 200);
  if (v34)
  {
    v35 = v32 & 0xFFF;
    if ((v32 & 0xFFF) != 0)
    {
      if ((v34 & 0xFFFu) > v35)
      {
        v35 = v34 & 0xFFF;
      }

      if (v32 >> 12 <= v35 >> 8)
      {
        v36 = 0x40000000;
      }

      else
      {
        v36 = 1140912128;
      }

      v37 = v36 & v32;
      v38 = v34 & 0x880F0000 | v35;
LABEL_54:
      v39 = v38 | v37;
    }

    else
    {
      v39 = v34 | 0x40000000;
      if ((v34 & 0xFFF) == 0)
      {
        v39 = *(v33 + 200);
      }

      if (v32 >> 12 > ((v39 >> 8) & 0xF))
      {
        v38 = v39 & 0xFFFF0FFF;
        v37 = v32 & 0x400F000;
        goto LABEL_54;
      }
    }
  }

  else
  {
    v39 = v32 & 0xFFF0FFFF;
  }

  *(v33 + 200) = v39;
  v119 = v34 & 0xFFF0FFFF;
LABEL_56:
  v120 = v7;
  v40 = a3 | 8;
  if ((a3 & 0x100000) != 0 && (*(v5 + 20) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit(v5 + 20, 0xFFBFFFFF, memory_order_relaxed);
  }

  v41 = *(v5 + 20);
  if (((v41 << 8) & 0x3000000) != 0)
  {
    v40 = (v41 << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  v117 = v40 | 0x10;
  v118 = (v5 + 24);
  v42 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v43 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_62:
  v44 = v40;
  v124 = v40;
  if ((v40 & 0x1000002) != 2)
  {
    v73 = *(v5 + 11);
    v129 = 0u;
    *v125 = v5;
    v126 = a2;
    v127 = v40 & 0xFFFDFFFF;
    v128 = 0;
    *&v129 = 0;
    BYTE8(v129) = 0;
    *&v125[8] = *(v43 + 160);
    *(v43 + 160) = v5;
    *(v43 + 168) = &v125[8];
    if (!_dispatch_channel_invoke_cancel_check(v5, v125, v73))
    {
LABEL_275:
      *(v43 + 160) = *&v125[8];
      v31 = v128;
      goto LABEL_276;
    }

    while (1)
    {
      v75 = v129;
      if (!v129)
      {
        if (!*v118)
        {
          goto LABEL_275;
        }

        v75 = *(v5 + 13);
        if (!v75)
        {
          v75 = _dispatch_wait_for_enqueuer(v5 + 13, v118);
        }
      }

      v76 = *v75;
      if (*v75 > 0xFFFuLL)
      {
        break;
      }

      if (v76)
      {
        _dispatch_channel_invoke_cold_2();
      }

      if ((v76 & 0x400) == 0)
      {
        break;
      }

      *&v129 = v75;
      BYTE8(v129) = 0;
      if ((v127 & 0x1000000) != 0)
      {
        v81 = objc_autoreleasePoolPush();
      }

      else
      {
        v81 = 0;
      }

      if ((*(v73 + 16))(v5, v125, *(v5 + 4)))
      {
        if ((BYTE8(v129) & 1) == 0)
        {
          _dispatch_channel_invoke_cold_3();
        }

        if (!v81)
        {
          goto LABEL_241;
        }

LABEL_223:
        objc_autoreleasePoolPop(v81);
        goto LABEL_241;
      }

      v128 = -1;
      if (v81)
      {
        goto LABEL_223;
      }

LABEL_241:
      if (v128)
      {
        goto LABEL_275;
      }
    }

    v77 = *(v75 + 16);
    *(v5 + 13) = v77;
    if (!v77)
    {
      v100 = *v118;
      while (v75 == (v100 & 0xFFFFFFFFFFFFFFF8))
      {
        v101 = v100;
        atomic_compare_exchange_strong_explicit(v118, &v101, 0, memory_order_release, memory_order_relaxed);
        v57 = v101 == v100;
        v100 = v101;
        if (v57)
        {
          goto LABEL_173;
        }
      }

      v77 = *(v75 + 16);
      if (!v77)
      {
        v77 = _dispatch_wait_for_enqueuer((v75 + 16), v118);
      }

      *(v5 + 13) = v77;
    }

LABEL_173:
    *&v129 = v77;
    v78 = *(v43 + 192);
    if (v78)
    {
      (*v78)(v5);
    }

    v79 = *v75;
    if (*v75 >= 0x1000uLL)
    {
      if (*(v79 + 40) == 1)
      {
        (*(v79 + 48))(v75, 0, (v124 >> 21) & 1);
      }

      else
      {
        (*(v79 + 64))(v75, a2, v124 & 0xFFFF0000);
      }

LABEL_238:
      if (v78)
      {
        v78[1](v5);
      }

      if (!_dispatch_channel_invoke_checks(v5, v125, v73))
      {
        goto LABEL_275;
      }

      goto LABEL_241;
    }

    if ((v124 & 0x1000000) != 0)
    {
      v80 = objc_autoreleasePoolPush();
      v79 = *v75;
    }

    else
    {
      v80 = 0;
    }

    v82 = *(v75 + 24);
    if ((v79 & 4) != 0)
    {
      *(v75 + 24) = -1;
    }

    if (v82 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v83 = *(v75 + 8);
    if (v83 == -1)
    {
      v86 = 0;
    }

    else
    {
      v84 = *(v43 + 200);
      if (((v84 >> 8) & 0xF) != 0)
      {
        v85 = 1 << ((BYTE1(v84) & 0xFu) + 7);
      }

      else
      {
        v85 = 0;
      }

      v86 = v85 | *(v43 + 200);
      if ((v83 & 0xFFFFFF) != 0)
      {
        if ((v83 & 0xFFFFFFuLL) >= (v85 & 0xFFFFFF00) && ((v84 & 0x44000000) != 0 || (*(v75 + 8) & 0x10000000) != 0))
        {
          v86 = v83 & 0xFFFFFF;
        }
      }

      else if (v84 >> 12)
      {
        v86 = (256 << ((v84 >> 12) - 1)) | 0xFF;
      }
    }

    v88 = v86 & 0x7FFFFFFF02FFFFFFLL;
    v89 = *(v43 + 32);
    if ((v89 & 0x1000000) != 0)
    {
      if (v88)
      {
        goto LABEL_263;
      }

      v88 = v89 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v88 == (v89 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_204:
      if (v82 == -1)
      {
        goto LABEL_209;
      }

      if (*(v43 + 224) == v82)
      {
        if ((v79 & 4) != 0 && v82)
        {
          os_release(v82);
        }

LABEL_209:
        if ((v79 & 0x200) != 0)
        {
          goto LABEL_213;
        }

LABEL_210:
        if (MEMORY[0xFFFFFC100])
        {
          _dispatch_trace_item_pop_internal(v5, v75, v74);
        }

        _dispatch_introspection_queue_item_dequeue(v5, v75);
LABEL_213:
        if ((v79 & 4) != 0)
        {
          v91 = *(v43 + 176);
          if (v91)
          {
            v92 = *(v91 + 8) + 1;
          }

          else
          {
            v92 = 1;
          }

          v90 = v75;
          if (v92 <= _dispatch_continuation_cache_limit)
          {
            v90 = 0;
            *(v75 + 16) = v91;
            *(v75 + 8) = v92;
            *(v43 + 176) = v75;
          }
        }

        else
        {
          v90 = 0;
        }

        if ((v79 & 8) != 0)
        {
          v102 = *(**(v75 + 48) + 40);
          if (v102 != 514)
          {
            _dispatch_workloop_invoke_cold_3(v102);
          }

          v103 = *(v75 + 40);
          v104 = *(v75 + 32);
          if (v103)
          {
            v104 = *(v75 + 32);
            if (v104 == _dispatch_call_block_and_release)
            {
              if (v103[2])
              {
                v104 = v103[2];
              }

              else
              {
                v104 = 0;
              }
            }
          }

          v114 = *(v75 + 32);
          groupa = *(v75 + 48);
          _dispatch_introspection_callout_entry(v103, v104);
          _dispatch_client_callout(v103, v114);
          _dispatch_introspection_callout_return(v103, v104);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4(v75);
          }

          _dispatch_introspection_queue_item_complete(v75);
          dispatch_group_leave(groupa);
          if (!v90)
          {
LABEL_236:
            if (!v80)
            {
              goto LABEL_238;
            }

            goto LABEL_237;
          }
        }

        else
        {
          v93 = v80;
          v94 = v42;
          v95 = v43;
          v96 = v73;
          v97 = *(v75 + 32);
          v98 = *(v75 + 40);
          v99 = v97;
          if (v98)
          {
            v99 = *(v75 + 32);
            if (v97 == _dispatch_call_block_and_release)
            {
              if (v98[2])
              {
                v99 = v98[2];
              }

              else
              {
                v99 = 0;
              }
            }
          }

          _dispatch_introspection_callout_entry(v98, v99);
          _dispatch_client_callout(v98, v97);
          _dispatch_introspection_callout_return(v98, v99);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4(v75);
          }

          _dispatch_introspection_queue_item_complete(v75);
          v73 = v96;
          v43 = v95;
          v42 = v94;
          v80 = v93;
          v5 = v122;
          if (!v90)
          {
            goto LABEL_236;
          }
        }

        _dispatch_continuation_free_to_cache_limit(v90);
        if (!v80)
        {
          goto LABEL_238;
        }

LABEL_237:
        objc_autoreleasePoolPop(v80);
        goto LABEL_238;
      }

      v88 = 0;
LABEL_263:
      _dispatch_set_priority_and_voucher_slow(v88, v82, v79 & 4 | 2);
      if ((v79 & 0x200) != 0)
      {
        goto LABEL_213;
      }

      goto LABEL_210;
    }

    if (v88)
    {
      goto LABEL_263;
    }

    goto LABEL_204;
  }

  _dispatch_last_resort_autorelease_pool_push(a2);
  v45 = *(v5 + 11);
  v129 = 0u;
  *v125 = v5;
  v126 = a2;
  v127 = v44 & 0xFEFDFFFF;
  v128 = 0;
  *&v129 = 0;
  BYTE8(v129) = 0;
  *&v125[8] = *(v42 + 160);
  *(v42 + 160) = v5;
  *(v42 + 168) = &v125[8];
  if (_dispatch_channel_invoke_cancel_check(v5, v125, v45))
  {
    while (1)
    {
      v47 = v129;
      if (!v129)
      {
        if (!*v118)
        {
          goto LABEL_274;
        }

        v47 = *(v5 + 13);
        if (!v47)
        {
          v47 = _dispatch_wait_for_enqueuer(v5 + 13, v118);
        }
      }

      v48 = *v47;
      if (*v47 > 0xFFFuLL)
      {
        goto LABEL_68;
      }

      if (v48)
      {
        _dispatch_channel_invoke_cold_2();
      }

      if ((v48 & 0x400) == 0)
      {
LABEL_68:
        v49 = *(v47 + 16);
        *(v5 + 13) = v49;
        if (!v49)
        {
          v67 = *v118;
          while (v47 == (v67 & 0xFFFFFFFFFFFFFFF8))
          {
            v68 = v67;
            atomic_compare_exchange_strong_explicit(v118, &v68, 0, memory_order_release, memory_order_relaxed);
            v57 = v68 == v67;
            v67 = v68;
            if (v57)
            {
              goto LABEL_69;
            }
          }

          v49 = *(v47 + 16);
          if (!v49)
          {
            v49 = _dispatch_wait_for_enqueuer((v47 + 16), v118);
          }

          *(v5 + 13) = v49;
        }

LABEL_69:
        *&v129 = v49;
        v50 = *(v42 + 192);
        if (v50)
        {
          (*v50)(v5);
        }

        v51 = *v47;
        if (*v47 >= 0x1000uLL)
        {
          if (*(v51 + 40) == 1)
          {
            (*(v51 + 48))(v47, 0, (v124 >> 21) & 1);
          }

          else
          {
            (*(v51 + 64))(v47, a2, v124 & 0xFEFF0000);
          }

          if (!v50)
          {
LABEL_133:
            if (!_dispatch_channel_invoke_checks(v5, v125, v45))
            {
              goto LABEL_274;
            }

            goto LABEL_134;
          }

LABEL_132:
          v50[1](v5);
          goto LABEL_133;
        }

        v52 = *(v47 + 24);
        if ((v51 & 4) != 0)
        {
          *(v47 + 24) = -1;
        }

        if (v52 != -1 && MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v53 = *(v47 + 8);
        if (v53 == -1)
        {
          v56 = 0;
        }

        else
        {
          v54 = *(v42 + 200);
          if (((v54 >> 8) & 0xF) != 0)
          {
            v55 = 1 << ((BYTE1(v54) & 0xFu) + 7);
          }

          else
          {
            v55 = 0;
          }

          v56 = v55 | *(v42 + 200);
          if ((v53 & 0xFFFFFF) != 0)
          {
            if ((v53 & 0xFFFFFFuLL) >= (v55 & 0xFFFFFF00))
            {
              v57 = (v54 & 0x44000000) == 0 && (*(v47 + 8) & 0x10000000) == 0;
              if (!v57)
              {
                v56 = v53 & 0xFFFFFF;
              }
            }
          }

          else if (v54 >> 12)
          {
            v56 = (256 << ((v54 >> 12) - 1)) | 0xFF;
          }
        }

        v59 = v56 & 0x7FFFFFFF02FFFFFFLL;
        v60 = *(v42 + 32);
        if ((v60 & 0x1000000) != 0)
        {
          if (!v59)
          {
            v59 = v60 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_145;
          }

LABEL_156:
          _dispatch_set_priority_and_voucher_slow(v59, v52, v51 & 4 | 2);
          if ((v51 & 0x200) == 0)
          {
LABEL_105:
            if (MEMORY[0xFFFFFC100])
            {
              _dispatch_trace_item_pop_internal(v5, v47, v46);
            }

            _dispatch_introspection_queue_item_dequeue(v5, v47);
          }
        }

        else
        {
          if (v59 == (v60 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_99;
          }

LABEL_145:
          if (v59)
          {
            goto LABEL_156;
          }

LABEL_99:
          if (v52 != -1)
          {
            if (*(v42 + 224) != v52)
            {
              v59 = 0;
              goto LABEL_156;
            }

            if ((v51 & 4) != 0 && v52)
            {
              os_release(v52);
            }
          }

          if ((v51 & 0x200) == 0)
          {
            goto LABEL_105;
          }
        }

        if ((v51 & 4) != 0)
        {
          v62 = *(v42 + 176);
          if (v62)
          {
            v63 = *(v62 + 8) + 1;
          }

          else
          {
            v63 = 1;
          }

          v61 = v47;
          if (v63 <= _dispatch_continuation_cache_limit)
          {
            v61 = 0;
            *(v47 + 16) = v62;
            *(v47 + 8) = v63;
            *(v42 + 176) = v47;
          }
        }

        else
        {
          v61 = 0;
        }

        if ((v51 & 8) != 0)
        {
          v69 = *(**(v47 + 48) + 40);
          if (v69 != 514)
          {
            _dispatch_workloop_invoke_cold_3(v69);
          }

          v70 = *(v47 + 32);
          v71 = *(v47 + 40);
          v72 = v70;
          if (v71)
          {
            v72 = *(v47 + 32);
            if (v70 == _dispatch_call_block_and_release)
            {
              if (v71[2])
              {
                v72 = v71[2];
              }

              else
              {
                v72 = 0;
              }
            }
          }

          group = *(v47 + 48);
          _dispatch_introspection_callout_entry(v71, v72);
          _dispatch_client_callout(v71, v70);
          _dispatch_introspection_callout_return(v71, v72);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4(v47);
          }

          _dispatch_introspection_queue_item_complete(v47);
          dispatch_group_leave(group);
          if (!v61)
          {
LABEL_131:
            if (!v50)
            {
              goto LABEL_133;
            }

            goto LABEL_132;
          }
        }

        else
        {
          v64 = *(v47 + 32);
          v65 = *(v47 + 40);
          v66 = v64;
          if (v65)
          {
            v66 = *(v47 + 32);
            if (v64 == _dispatch_call_block_and_release)
            {
              if (v65[2])
              {
                v66 = v65[2];
              }

              else
              {
                v66 = 0;
              }
            }
          }

          _dispatch_introspection_callout_entry(v65, v66);
          _dispatch_client_callout(v65, v64);
          _dispatch_introspection_callout_return(v65, v66);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4(v47);
          }

          _dispatch_introspection_queue_item_complete(v47);
          if (!v61)
          {
            goto LABEL_131;
          }
        }

        _dispatch_continuation_free_to_cache_limit(v61);
        if (!v50)
        {
          goto LABEL_133;
        }

        goto LABEL_132;
      }

      *&v129 = v47;
      BYTE8(v129) = 0;
      v58 = (v127 & 0x1000000) != 0 ? objc_autoreleasePoolPush() : 0;
      if ((*(v45 + 16))(v5, v125, *(v5 + 4)))
      {
        break;
      }

      v128 = -1;
      if (v58)
      {
        goto LABEL_118;
      }

LABEL_134:
      if (v128)
      {
        goto LABEL_274;
      }
    }

    if ((BYTE8(v129) & 1) == 0)
    {
      _dispatch_channel_invoke_cold_3();
    }

    if (!v58)
    {
      goto LABEL_134;
    }

LABEL_118:
    objc_autoreleasePoolPop(v58);
    goto LABEL_134;
  }

LABEL_274:
  *(v42 + 160) = *&v125[8];
  v31 = v128;
  *v125 = *(v42 + 160);
  *(v42 + 160) = v5;
  *(v42 + 168) = v125;
  _dispatch_last_resort_autorelease_pool_pop(a2);
  *(v42 + 160) = *v125;
LABEL_276:
  if (v31 + 1 <= 1)
  {
    v105 = *(v5 + 7);
    do
    {
      v106 = v105;
      v107 = v105 - v120;
      v108 = v107 & 0xFFFFFFF700000001;
      if (!(v106 >> 55))
      {
        if ((v106 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit(v5 + 7, 0x8000000000uLL, memory_order_acquire);
          v31 = *(v43 + 160);
          v40 = v117;
          if (v121)
          {
            goto LABEL_62;
          }

          v40 = v117;
          if (((*v31)[1].isa & 0x10000) != 0)
          {
            goto LABEL_62;
          }

          goto LABEL_287;
        }

        if (v31)
        {
          v108 = v107 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v108 = v107 & 0xFFFFFFF000000001;
        }
      }

      v105 = v106;
      atomic_compare_exchange_strong_explicit(v5 + 7, &v105, v108, memory_order_release, memory_order_relaxed);
    }

    while (v105 != v106);
    if ((~v106 & 0x1800000000) == 0)
    {
      v109 = HIDWORD(v106) & 7;
      v110 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v111 = *(v110 + 200);
      if ((HIWORD(v111) & 0xF) < v109)
      {
        v7 = 0;
        v31 = 0;
        *(v110 + 200) = v111 & 0xFFF0FFFF | (v109 << 16);
        if ((v124 & 0x40000) == 0)
        {
          goto LABEL_294;
        }

        goto LABEL_295;
      }
    }

    v7 = 0;
    v31 = 0;
    if ((v124 & 0x40000) != 0)
    {
      goto LABEL_295;
    }

    goto LABEL_294;
  }

LABEL_287:
  v7 = v120;
  if ((v124 & 0x40000) == 0)
  {
LABEL_294:
    v112 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v112 + 200) = *(v112 + 200) & 0xF0000 | v119;
  }

LABEL_295:
  if ((v121 & 1) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_workloop_invoke_cold_4(v5);
    }

    _dispatch_introspection_queue_item_complete(v5);
  }

  if (v31)
  {
    return _dispatch_queue_invoke_finish(v5, a2, v31, v7);
  }

  else
  {
    return _os_object_release_internal_n(v5, &dword_0 + 2);
  }
}

unint64_t dispatch_channel_foreach_work_item_peek_f(unint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  if (*(result + 56) == 1)
  {
    dispatch_channel_foreach_work_item_peek_f_cold_1();
  }

  v3 = *(result + 48);
  if ((*v3 & 0xFFFFFFFFFFFFF400) == 0x400)
  {
    v6 = *result;
    do
    {
      result = a3(a2, v3[5]);
      if (!result || v3 == *(v6 + 48))
      {
        break;
      }

      result = v3[2];
      if (!result)
      {
        result = _dispatch_wait_for_enqueuer(v3 + 2, v6 + 48);
      }

      v3 = result;
    }

    while ((*result & 0xFFFFFFFFFFFFF400) == 0x400);
  }

  return result;
}

void dispatch_channel_drain_f(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t *), int8x16_t a4)
{
  v39 = 0;
  v4 = *result;
  v5 = *(*result + 88);
  if (*(result + 56) == 1)
  {
    dispatch_channel_drain_f_cold_1();
  }

  *(result + 56) = 1;
  v37 = (v4 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v9 = *(result + 48);
    if (!v9)
    {
      if (!*v37)
      {
        break;
      }

      v9 = *(v4 + 104);
      if (!v9)
      {
        v9 = _dispatch_wait_for_enqueuer((v4 + 104), v37);
      }
    }

    if ((*v9 & 0xFFFFFFFFFFFFF400) != 0x400)
    {
      break;
    }

    v10 = v9[2];
    *(v4 + 104) = v10;
    if (!v10)
    {
      v25 = *v37;
      while (v9 == (v25 & 0xFFFFFFFFFFFFFFF8))
      {
        v26 = v25;
        atomic_compare_exchange_strong_explicit(v37, &v26, 0, memory_order_release, memory_order_relaxed);
        v12 = v26 == v25;
        v25 = v26;
        if (v12)
        {
          goto LABEL_6;
        }
      }

      v10 = v9[2];
      if (!v10)
      {
        v10 = _dispatch_wait_for_enqueuer(v9 + 2, v37);
      }

      *(v4 + 104) = v10;
    }

LABEL_6:
    *(result + 48) = v10;
    v11 = v9[3];
    v9[3] = -1;
    v12 = v11 == -1 || (v11 + 1) == 0;
    if (!v12 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v13 = v9[1];
    if (v13 == -1)
    {
      v16 = 0;
    }

    else
    {
      v14 = StatusReg[25];
      v15 = ((v14 >> 8) & 0xF) != 0 ? 1 << ((BYTE1(v14) & 0xFu) + 7) : 0;
      v16 = v15 | StatusReg[25];
      if ((v13 & 0xFFFFFF) != 0)
      {
        if ((v13 & 0xFFFFFFuLL) >= (v15 & 0xFFFFFF00) && ((v14 & 0x44000000) != 0 || (v9[1] & 0x10000000) != 0))
        {
          v16 = v13 & 0xFFFFFF;
        }
      }

      else if (v14 >> 12)
      {
        v16 = (256 << ((v14 >> 12) - 1)) | 0xFF;
      }
    }

    v18 = v16 & 0x7FFFFFFF02FFFFFFLL;
    v19 = StatusReg[4];
    if ((v19 & 0x1000000) != 0)
    {
      if (v18)
      {
        goto LABEL_63;
      }

      v18 = v19 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v18 == (v19 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_27;
    }

    if (v18)
    {
      goto LABEL_63;
    }

LABEL_27:
    if (v11 == -1)
    {
      goto LABEL_31;
    }

    if (StatusReg[28] != v11)
    {
      v18 = 0;
LABEL_63:
      _dispatch_set_priority_and_voucher_slow(v18, v11, 6);
      goto LABEL_31;
    }

    if (v11)
    {
      os_release(v11);
    }

LABEL_31:
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(v4, v9, a4);
    }

    _dispatch_introspection_queue_item_dequeue(v4, v9);
    v20 = StatusReg[22];
    if (v20)
    {
      v21 = *(v20 + 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    v22 = v9;
    if (v21 <= _dispatch_continuation_cache_limit)
    {
      v22 = 0;
      v9[2] = v20;
      *(v9 + 2) = v21;
      StatusReg[22] = v9;
    }

    if (*(result + 35))
    {
      v24 = objc_autoreleasePoolPush();
      v23 = a3(a2, v9[5], &v39);
      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v23 = a3(a2, v9[5], &v39);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_introspection_queue_item_complete(v9);
    if (!v22)
    {
      if (!v23)
      {
        break;
      }

      continue;
    }

    _dispatch_continuation_free_to_cache_limit(v22);
    if (!v23)
    {
      break;
    }
  }

  while ((_dispatch_channel_invoke_checks(v4, result, v5) & 1) != 0);
  v27 = v39;
  if (v39)
  {
    v28 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = v28[22];
    if (v29)
    {
      v28[22] = v29[2];
    }

    else
    {
      v29 = _dispatch_continuation_alloc_from_heap();
      v27 = v39;
    }

    *v29 = 1284;
    v29[4] = 0;
    v29[5] = v27;
    v30 = v28[4] & 0xFFFFFFLL;
    if (v30 >= 0x10FF)
    {
      v31 = 4351;
    }

    else
    {
      v31 = v28[4] & 0xFFFFFFLL;
    }

    v32 = v28[28];
    if (v32)
    {
      os_retain(v32);
    }

    v29[3] = v32;
    if (v32 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v30)
      {
        goto LABEL_89;
      }

LABEL_78:
      v33 = (*(v4 + 84) >> 30) & 1;
      if ((*(v4 + 84) & 0xFFF) == 0)
      {
        v33 = 1;
      }

      if (v33)
      {
        v34 = v31;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      if (v30)
      {
        goto LABEL_78;
      }

LABEL_89:
      v34 = 0;
    }

    v29[1] = v34;
    v35 = *(result + 48);
    v29[2] = v35;
    if (!v35)
    {
      atomic_compare_exchange_strong_explicit(v37, &v35, v29, memory_order_release, memory_order_relaxed);
      if (v35)
      {
        v36 = *(v4 + 104);
        if (!v36)
        {
          v36 = _dispatch_wait_for_enqueuer((v4 + 104), v37);
        }

        v29[2] = v36;
      }
    }

    *(v4 + 104) = v29;
    *(result + 48) = v29;
  }
}

uint64_t _dispatch_channel_invoke_checks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _dispatch_channel_invoke_cancel_check(a1, a2, a3);
  if (result)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if (*(StatusReg + 40))
    {
      _dispatch_return_to_kernel();
    }

    if ((*(a2 + 34) & 0x10) != 0 && (*(*(StatusReg + 216) + 60) & 7u) > *(*(StatusReg + 216) + 100) || (*(StatusReg + 960) & 1) != 0 || *(a1 + 56) >> 55)
    {
      result = 0;
      *(a2 + 40) = *(a1 + 24);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void _dispatch_channel_wakeup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 88) + 8))(a1, *(a1 + 32)))
  {
    if (*(a1 + 48))
    {
      v7 = 1;
    }

    else
    {
      v7 = (*(a1 + 80) & 0x10000000) != 0 && (*(a1 + 116) & 8) == 0;
    }
  }

  else
  {
    v7 = -1;
  }

  _dispatch_queue_wakeup(a1, a2, a3, v7, v6);
}

uint64_t dispatch_channel_create(const char *a1, __objc2_class **a2, uint64_t a3, void *a4)
{
  if (!*a4)
  {
    dispatch_channel_create_cold_2();
  }

  v6 = a2;
  v8 = 67108865;
  if (!a1)
  {
    v9 = 0;
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_15:
    v6 = &off_713C0;
    goto LABEL_9;
  }

  v9 = _dispatch_strdup_if_mutable(a1);
  if (v9 == a1)
  {
    v8 = 67108865;
  }

  else
  {
    v8 = 69206017;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (*(v6 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

LABEL_9:
  result = _dispatch_object_alloc();
  *(result + 8) += 2;
  if (*(*result + 40) == 19)
  {
    ++*(result + 8);
  }

  *(result + 16) = -1985229329;
  *(result + 80) = v8;
  *(result + 56) = 0x19FFE0000000000;
  *(result + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(result + 72) = v9;
  *(result + 88) = a4;
  *(result + 24) = v6;
  *(result + 32) = a3;
  if (!a4[3])
  {
    *(result + 116) |= 8u;
    --*(result + 8);
  }

  return result;
}

uint64_t dispatch_channel_enqueue(NSObject *a1, objc_class *a2, int8x16_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 176);
  if (v5)
  {
    *(StatusReg + 176) = *(v5 + 16);
    *v5 = 1284;
    *(v5 + 32) = 0;
    *(v5 + 40) = a2;
    v6 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v6 >= 0x10FF)
    {
      v7 = 4351;
    }

    else
    {
      v7 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v8 = *(StatusReg + 224);
    if (v8)
    {
      os_retain(*(StatusReg + 224));
    }

    *(v5 + 24) = v8;
    if (v8 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else if (!v6)
    {
      goto LABEL_12;
    }

    isa_high = HIDWORD(a1[10].isa);
    if ((isa_high & 0x40000000) != 0 || (isa_high & 0xFFF) == 0)
    {
      v10 = __clz(__rbit32(v7 >> 8)) + 1;
      goto LABEL_14;
    }

LABEL_12:
    v10 = 0;
    v7 = 0;
LABEL_14:
    *(v5 + 8) = v7;
    if ((*(v5 + 1) & 2) == 0)
    {
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_push_internal(a1, v5, a3);
      }

      _dispatch_introspection_queue_item_enqueue(a1, v5);
    }

    v11 = *(a1->isa + 11);

    return v11(a1, v5, v10);
  }

  return _dispatch_channel_enqueue_slow(a1, a2);
}

uint64_t _dispatch_channel_enqueue_slow(NSObject *a1, objc_class *a2)
{
  v4 = _dispatch_continuation_alloc_from_heap();
  v4->isa = (&stru_4C0 + 68);
  v4[4].isa = 0;
  v4[5].isa = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v7 >= 0x10FF)
  {
    v8 = 4351;
  }

  else
  {
    v8 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v9 = *(StatusReg + 224);
  if (v9)
  {
    os_retain(*(StatusReg + 224));
  }

  v4[3].isa = v9;
  if (v9 != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_11:
    v11 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_9:
  isa_high = HIDWORD(a1[10].isa);
  if ((isa_high & 0x40000000) == 0 && (isa_high & 0xFFF) != 0)
  {
    goto LABEL_11;
  }

  v11 = __clz(__rbit32(v8 >> 8)) + 1;
LABEL_13:
  v4[1].isa = v8;
  if ((BYTE1(v4->isa) & 2) == 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(a1, v4, v5);
    }

    _dispatch_introspection_queue_item_enqueue(a1, v4);
  }

  v12 = *(a1->isa + 11);

  return v12(a1, v4, v11);
}

uint64_t dispatch_channel_wakeup(uint64_t a1, int a2)
{
  HIDWORD(v3) = a2 - 5;
  LODWORD(v3) = a2 - 5;
  v2 = v3 >> 2;
  if (v2 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_45220[v2];
  }

  return (*(*a1 + 80))(a1, v4, 2);
}

atomic_uint *_dispatch_mgr_queue_push(atomic_uint *result, void *a2)
{
  if (*a2 <= 0xFFFuLL && (*a2 & 0x81) != 0)
  {
    _dispatch_mgr_queue_push_cold_2();
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = (StatusReg + 976);
  *(StatusReg + 976) = result + 12;
  v5 = atomic_exchange_explicit(result + 6, a2, memory_order_release);
  if (!v5)
  {
    return _dispatch_mgr_queue_push_cold_1(result, a2, v4, StatusReg);
  }

  *(v5 + 16) = a2;
  *v4 = 0;
  return result;
}

void _dispatch_kevent_workqueue_init(uint64_t inited)
{
  if (_dispatch_root_queues_pred != -1)
  {
    _dispatch_kevent_workqueue_init_cold_1();
  }

  if (_dispatch_mgr_sched_pred != -1)
  {
    _dispatch_kevent_workqueue_init_cold_2();
  }

  v1 = _dispatch_mgr_sched;
  if (dword_71B6C)
  {
    v2 = _pthread_qos_class_encode();
  }

  else
  {
    v2 = 0;
  }

  if (v1 > dword_71B70)
  {
    v2 = v1 | 0x20000000;
  }

  if (v2)
  {
    v3 = _pthread_workqueue_set_event_manager_priority();
    if (v3)
    {

      _dispatch_bug(6573, v3);
    }
  }
}

uint64_t _dispatch_mgr_sched_init()
{
  v5 = 0;
  memset(&v6, 0, sizeof(v6));
  v0 = pthread_attr_init(&v6);
  if (v0)
  {
    _dispatch_bug(6222, v0);
  }

  v1 = pthread_attr_getschedpolicy(&v6, dword_71B74);
  if (v1)
  {
    _dispatch_bug(6224, v1);
  }

  v2 = pthread_attr_getschedparam(&v6, &v5);
  if (v2)
  {
    _dispatch_bug(6225, v2);
  }

  v3 = qos_class_main();
  if (v3 == QOS_CLASS_DEFAULT)
  {
    v3 = QOS_CLASS_USER_INITIATED;
  }

  if (v3)
  {
    dword_71B6C = v3;
    result = _dispatch_mgr_sched_qos2prio(v3);
  }

  else
  {
    result = v5.sched_priority;
  }

  dword_71B70 = result;
  _dispatch_mgr_sched = result;
  return result;
}

void _dispatch_root_queue_poke(unsigned int *result, uint64_t a2, int a3, uint64_t a4)
{
  if (*(result + 6))
  {
    v4 = *(*result + 40);
    v5 = v4 == 330001 || v4 == 328465;
    if (!v5 || (v6 = 0, atomic_compare_exchange_strong_explicit(result + 28, &v6, a2, memory_order_release, memory_order_relaxed), !v6))
    {
      _dispatch_root_queue_poke_slow(result, a2, a3, a4);
    }
  }
}

void _dispatch_root_queue_poke_slow(unsigned int *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a2;
  if (_dispatch_root_queues_pred != -1)
  {
LABEL_36:
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }

  _dispatch_introspection_runtime_event();
  v7 = *(*a1 + 40);
  if (v7 == 330001)
  {
    v13 = _pthread_workqueue_add_cooperativethreads();
    if (!v13)
    {
      return;
    }

    v11 = v13;
    v12 = 6920;
    goto LABEL_38;
  }

  if (v7 == 328465)
  {
    v10 = _pthread_workqueue_addthreads();
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = 6912;
LABEL_38:

    _dispatch_bug(v12, v11);
    return;
  }

  v8 = *(a1 + 4);
  if (*(v8 + 72))
  {
    while (dispatch_semaphore_signal((v8 + 72)))
    {
      if (!--v5)
      {
        return;
      }
    }
  }

  if ((a1[21] & 0x80000000) != 0)
  {
    atomic_fetch_add_explicit(a1 + 28, v5, memory_order_relaxed);
  }

  else
  {
    v9 = 0;
    atomic_compare_exchange_strong_explicit(a1 + 28, &v9, v5, memory_order_relaxed, memory_order_relaxed);
    if (v9)
    {
      return;
    }
  }

  v14 = a1[25];
  while (1)
  {
    v15 = v14 - a3;
    if (v14 < a3)
    {
      v15 = 0;
    }

    if (v5 > v15)
    {
      atomic_fetch_add_explicit(a1 + 28, v15 - v5, memory_order_relaxed);
      v5 = v15;
    }

    if (!v5)
    {
      break;
    }

    v16 = v14;
    atomic_compare_exchange_strong_explicit(a1 + 25, &v16, v14 - v5, memory_order_acquire, memory_order_acquire);
    v17 = v16 == v14;
    v14 = v16;
    if (v17)
    {
      v19 = 0;
      a3 = 0x7FFFFFFF;
LABEL_27:
      if (a1[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(a1 + 2, 1u, memory_order_relaxed) < 1)
      {
        qword_6D1C0 = "API MISUSE: Resurrection of an object";
        __break(1u);
        goto LABEL_36;
      }

      while (1)
      {
        v18 = pthread_create(&v19, v8, _dispatch_worker_thread, a1);
        if (v18 != 35)
        {
          if (!v18)
          {
            if (!--v5)
            {
              return;
            }

            goto LABEL_27;
          }

          _dispatch_bug(6979, v18);
        }

        _dispatch_temporary_resource_shortage();
      }
    }
  }
}

void _dispatch_root_queue_poke_and_wakeup(unsigned int *a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(*a1 + 40);
  if (v4 != 330001 && v4 != 328465)
  {
    goto LABEL_12;
  }

  v6 = a1[28];
  do
  {
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = a2;
    }

    atomic_compare_exchange_strong_explicit(a1 + 28, &v6, v8, memory_order_release, memory_order_relaxed);
  }

  while (v6 != v7);
  if (v7 <= 0)
  {
LABEL_12:
    _dispatch_root_queue_poke_slow(a1, a2, a3, a4);
  }
}

atomic_uint *_dispatch_root_queue_wakeup(atomic_uint *result, uint64_t a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    if (a3)
    {
      return _os_object_release_internal_n(result, &dword_0 + 2);
    }
  }

  else
  {
    v3 = result[21];
    qword_6D1C0 = "BUG IN LIBDISPATCH: Don't try to wake up or override a root queue";
    qword_6D1F0 = v3;
    __break(1u);
  }

  return result;
}

void _dispatch_root_queue_push(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 232);
  if (v7 && *(v7 + 52) == 1 && ((v8 = *(v7 + 8), v13 = result[21], !v8) || (v13 & 0x80000000) != 0))
  {
    v14 = *v7;
    v15 = *(v7 + 16);
    *v7 = result;
    *(v7 + 8) = a2;
    *(v7 + 16) = a3;
    if ((v13 & 0x80000000) != 0)
    {
      *(v7 + 52) = 0;
    }

    if (!v8)
    {
      return;
    }

    v4 = v15;
    v5 = v14;
  }

  else
  {
    v8 = a2;
  }

  v9 = v5[21];
  if ((v9 & 0x8000000) != 0 && *v8 >= 0x1000uLL && *(*v8 + 40) != 1)
  {
    if (*(*v8 + 40) != 19 || !_dispatch_source_is_timer(v8))
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
      qword_6D1F0 = v8;
      __break(1u);
      return;
    }

    v9 = v5[21];
  }

  if (v9 >> 12)
  {
    if (v4 && v9 >> 12 != v4)
    {
LABEL_13:

      _dispatch_root_queue_push_override(v5, v8, v4, a4);
      return;
    }
  }

  else
  {
    v10 = (v9 >> 8) & 0xF;
    if (v10)
    {
      v11 = v10 >= v4;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  *(v8 + 2) = 0;
  *(StatusReg + 976) = v5 + 12;
  v12 = atomic_exchange_explicit(v5 + 6, v8, memory_order_release);
  if (v12)
  {
    *(v12 + 16) = v8;
    *(StatusReg + 976) = 0;
  }

  else
  {
    *(v5 + 13) = v8;
    *(StatusReg + 976) = 0;

    _dispatch_root_queue_poke_and_wakeup(v5, 1, 0, a4);
  }
}

void _dispatch_root_queue_push_override(__objc2_class **result, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = *(result + 21);
  if (v7 < 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = (v7 >> 25) & 4;
  }

  if (*a2 >= 0x1000uLL && *(*a2 + 40) == 256)
  {
    *(a2 + 4) = result;
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    result = *(StatusReg + 176);
    if (result)
    {
      *(StatusReg + 176) = result[2];
    }

    else
    {
      result = _dispatch_continuation_alloc_from_heap();
    }

    result[6] = v5;
    result[7] = v6;
    result[5] = result;
    *result = &unk_647E0;
    result[1] = -1;
    result[3] = -1;
    v5 = result;
  }

  if (a3 - 7 <= 0xFFFFFFF9)
  {
    v11 = a3;
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_6D1F0 = a3;
    __break(1u);
  }

  else
  {
    v10 = 2 * (v8 > 3);
    if ((v8 & 2) != 0)
    {
      v10 = 1;
    }

    result = &_dispatch_root_queues + 16 * (3 * a3 + v10 - 3);
    *(v5 + 2) = 0;
    v11 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v11 + 976) = result + 6;
    v12 = atomic_exchange_explicit(result + 6, v5, memory_order_release);
    if (v12)
    {
      *(v12 + 16) = v5;
      *(v11 + 976) = 0;
      return;
    }
  }

  result[13] = v5;
  *(v11 + 976) = 0;

  _dispatch_root_queue_poke_and_wakeup(result, 1, 0, a4);
}

NSObject *_dispatch_pthread_root_queue_create(const char *a1, int a2, __int128 *a3, void *a4, _OWORD *a5)
{
  if (a2 < 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = 4095;
  if (a1)
  {
    v11 = _dispatch_strdup_if_mutable(a1);
    if (v11 == a1)
    {
      v9 = 4095;
    }

    else
    {
      v9 = 2101247;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = _dispatch_object_alloc();
  v13 = v12;
  *(v12 + 16) = -1985229329;
  *(v12 + 80) = v9;
  *(v12 + 56) = 0x20000000000;
  *(v12 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v12 + 72) = v11;
  *(v12 + 56) = 0x60000000000000;
  *(v12 + 84) = 0x80000000;
  v14 = v12 + 120;
  *(v12 + 32) = v12 + 120;
  if (v8 >= 32)
  {
    v15 = 32;
  }

  else
  {
    v15 = v8;
  }

  if (v8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 32;
  }

  *(v12 + 100) = v16;
  *(v12 + 192) = OS_dispatch_semaphore;
  *(v12 + 256) = 0;
  _dispatch_sema4_create_slow((v12 + 256), 2);
  if (a3)
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = a3[3];
    *(v14 + 32) = a3[2];
    *(v14 + 48) = v19;
    *v14 = v17;
    *(v14 + 16) = v18;
    _dispatch_mgr_priority_raise(v14);
  }

  else
  {
    v20 = pthread_attr_init(v14);
    if (v20)
    {
      _dispatch_bug(7729, v20);
    }
  }

  v21 = pthread_attr_setdetachstate(v14, 2);
  if (!v21)
  {
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  _dispatch_bug(7732, v21);
  if (a4)
  {
LABEL_21:
    *(v13 + 184) = _dispatch_Block_copy(a4);
  }

LABEL_22:
  if (a5)
  {
    *(v13 + 264) = *a5;
  }

  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_pthread_root_queue_create_cold_1();
  }

  return _dispatch_introspection_queue_create(v13);
}

NSObject *_dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID(const char *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5)
{
  if (!*a4 || !*(a4 + 8))
  {
    _dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID_cold_1();
  }

  return _dispatch_pthread_root_queue_create(a1, a2, a3, a5, a4);
}

BOOL _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  if (v3 != 1)
  {
    _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID_cold_1(v3);
  }

  v4 = *(a1 + 56);
  return ((v4 ^ *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24)) & 0xFFFFFFFC) == 0;
}

uint64_t dispatch_pthread_root_queue_copy_current()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  if (!v0)
  {
    return 0;
  }

  do
  {
    v1 = v0;
    v0 = *(v0 + 24);
  }

  while (v0);
  if (*(*v1 + 40) != 328721)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v1);
  return v1;
}

void _dispatch_pthread_root_queue_dispose(NSObject *a1, _BYTE *a2)
{
  isa = a1[4].isa;
  v5 = a1[8].isa;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_lane_dispose_cold_1(v5);
  }

  _dispatch_introspection_queue_dispose(a1);
  pthread_attr_destroy(isa);
  _dispatch_semaphore_dispose(isa[1].__opaque);
  sig = isa[1].__sig;
  if (sig)
  {
    _Block_release(sig);
  }

  a1[3].isa = &off_71340;

  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_wakeup(uint64_t context, atomic_uint *a2, uint64_t a3, uint64_t a4, int8x16_t a5)
{
  if ((*(context + 80) & 0x800000) != 0 || (a3 & 2) != 0 && (atomic_fetch_or_explicit((context + 56), 0x8000000000uLL, memory_order_release) & 0xFFFFFFFC) == 0)
  {

    _dispatch_lane_wakeup(context, a2, a3, a5);
  }

  else if (*(context + 48))
  {

    _dispatch_runloop_queue_poke(context, a2, a3, a4);
  }

  else
  {
    v5 = (atomic_fetch_and_explicit((context + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) >> 32) & 7;
    if (v5)
    {
      if (*(context + 48))
      {
        _dispatch_runloop_queue_poke(context, v5, a3, a4);
      }

      _pthread_qos_override_end_direct();
    }

    else if (a3)
    {

      _os_object_release_internal_n(context, &dword_0 + 2);
    }
  }
}

void _dispatch_runloop_queue_poke(atomic_ullong *context, unsigned int a2, char a3, uint64_t a4)
{
  if (*(*context + 40) == 394769 && _dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, context, _dispatch_runloop_queue_handle_init);
  }

  v7 = *(context + 21);
  v8 = v7 >> 12;
  if (a2)
  {
    v8 = a2;
  }

  v9 = (v7 >> 8) & 0xF;
  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = context[7];
  v12 = v10 << 32;
  while (1)
  {
    v13 = v11;
    v14 = v11 & 0x700000000;
    v15 = v11 & 0xFFFFFFF8FFFFFFFFLL | v12;
    if ((v15 & 0x1000000000) != 0)
    {
      v15 |= 0x800000000uLL;
    }

    v16 = v14 < v12 ? v15 : v13;
    if (v13 == v16)
    {
      break;
    }

    v11 = v13;
    atomic_compare_exchange_strong_explicit(context + 7, &v11, v16, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v13)
    {
      if (v8 > v9)
      {
        _pthread_qos_override_start_direct();
        if ((BYTE4(v13) & 7u) > v9)
        {
          _pthread_qos_override_end_direct();
        }
      }

      break;
    }
  }

  v17 = *(context + 8);
  if (v17 - 1 > 0xFFFFFFFD || ((_dispatch_introspection_runtime_event(), v18 = _dispatch_send_wakeup_runloop_thread(v17, 0), (v18 - 268435459) >= 2) ? (v19 = v18 == 16) : (v19 = 1), !v19 ? (v20 = v18 == 0) : (v20 = 1), v20))
  {
    if ((a3 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    _dispatch_bug(7983, v18);
    if ((a3 & 1) == 0)
    {
      return;
    }
  }

  _os_object_release_internal_n(context, &dword_0 + 2);
}

void _dispatch_runloop_queue_handle_init(void *context)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  options.reserved[1] = 0;
  *&options.flags = xmmword_45168;
  name = 0;
  if (*(*context + 40) == 394769)
  {
    *&options.flags = 0x100000033;
  }

  v2 = mach_port_construct(mach_task_self_, &options, context, &name);
  if (v2 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v2)
  {
    _dispatch_bug(7896, v2);
  }

  context[4] = name;
  _dispatch_program_is_probably_callback_driven = 1;
}

uint64_t _dispatch_runloop_queue_xref_dispose(atomic_ullong *a1)
{
  v1 = (atomic_fetch_and_explicit(a1 + 7, 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) >> 32) & 7;
  atomic_fetch_and_explicit(a1 + 7, 0xFFFFFFFF00000003, memory_order_relaxed);
  result = (*(*a1 + 80))(a1, v1, 2);
  if (v1)
  {

    return _pthread_qos_override_end_direct();
  }

  return result;
}

void _dispatch_runloop_queue_dispose(NSObject *a1, _BYTE *a2)
{
  isa = a1[8].isa;
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_lane_dispose_cold_1(isa);
  }

  _dispatch_introspection_queue_dispose(a1);
  _dispatch_runloop_queue_handle_dispose(a1);

  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_handle_dispose(mach_port_context_t guard)
{
  v1 = *(guard + 32);
  if (v1 - 1 <= 0xFFFFFFFD)
  {
    *(guard + 32) = 0;
    v2 = mach_port_destruct(mach_task_self_, v1, -1, guard);
    if (v2 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v2)
    {

      _dispatch_bug(7952, v2);
    }
  }
}

BOOL _dispatch_runloop_root_queue_perform_4CF(dispatch_object_t object)
{
  v2 = *(object->isa + 5);
  if (v2 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v2);
  }

  dispatch_retain(object);
  v3 = &object[6];
  if (!object[6].isa)
  {
    v14 = 0;
    goto LABEL_99;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
  if (v5 != -4)
  {
    if (v5)
    {
      add_explicit = atomic_fetch_add_explicit((v5 + 96), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 0)
      {
        if (add_explicit < 0)
        {
          _os_object_retain_weak_cold_1();
        }

        *(v5 + 56) = 0xDEAD000000000000;
        _dispatch_object_dealloc(v5);
      }
    }

    *(StatusReg + 216) = -4;
  }

  v56 = *(StatusReg + 160);
  *(StatusReg + 160) = object;
  *(StatusReg + 168) = &v56;
  v7 = *(StatusReg + 32);
  v8 = (__clz(__rbit32((v7 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v7 >> 8) & 0x3FFF) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(StatusReg + 224);
  if (v10)
  {
    os_retain(*(StatusReg + 224));
  }

  LODWORD(v11) = v9 | v7 & 0x8E0000FF;
  v12 = *(StatusReg + 200);
  if (v12)
  {
    v13 = v11 & 0xFFF;
    if (v13)
    {
      if ((v12 & 0xFFFu) > v13)
      {
        v13 = v12 & 0xFFF;
      }

      LODWORD(v11) = v13 | v12 & 0x880F0000;
    }

    else
    {
      LODWORD(v11) = v12 | 0x40000000;
      if ((v12 & 0xFFF) == 0)
      {
        LODWORD(v11) = *(StatusReg + 200);
      }
    }
  }

  if ((~v11 & 0xF0000) != 0)
  {
    v11 = v11 | 0xF0000;
  }

  else
  {
    v11 = v11;
  }

  *(StatusReg + 200) = v11;
  v15 = 0uLL;
  memset(v55, 0, sizeof(v55));
  isa = object[13].isa;
  if (!isa)
  {
    isa = _dispatch_wait_for_enqueuer(&object[13], &object[6]);
  }

  v17 = *(isa + 16);
  object[13].isa = v17;
  if (!v17)
  {
    v43 = *v3;
    while (isa == (v43 & 0xFFFFFFFFFFFFFFF8))
    {
      v44 = v43;
      atomic_compare_exchange_strong_explicit(v3, &v44, 0, memory_order_release, memory_order_relaxed);
      v25 = v44 == v43;
      v43 = v44;
      if (v25)
      {
        goto LABEL_28;
      }
    }

    v49 = *(isa + 16);
    if (!v49)
    {
      v49 = _dispatch_wait_for_enqueuer((isa + 16), &object[6]);
    }

    v17 = v49;
    object[13].isa = v49;
  }

LABEL_28:
  v18 = *(StatusReg + 192);
  if (v18)
  {
    (*v18)(object);
  }

  v19 = *isa;
  if (*isa < 0x1000uLL)
  {
    v54 = v7;
    v20 = *(isa + 24);
    if ((v19 & 4) != 0)
    {
      *(isa + 24) = -1;
    }

    if (v20 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v53 = v5;
    v21 = *(isa + 8);
    if (v21 == -1)
    {
      v24 = 0;
    }

    else
    {
      v22 = *(StatusReg + 200);
      if (((v22 >> 8) & 0xF) != 0)
      {
        v23 = 1 << ((BYTE1(v22) & 0xFu) + 7);
      }

      else
      {
        v23 = 0;
      }

      v24 = v23 | *(StatusReg + 200);
      if ((v21 & 0xFFFFFF) != 0)
      {
        if ((v21 & 0xFFFFFFuLL) >= (v23 & 0xFFFFFF00))
        {
          v25 = (v22 & 0x44000000) == 0 && (*(isa + 8) & 0x10000000) == 0;
          if (!v25)
          {
            v24 = v21 & 0xFFFFFF;
          }
        }
      }

      else if (v22 >> 12)
      {
        v24 = (256 << ((v22 >> 12) - 1)) | 0xFF;
      }
    }

    v26 = v24 & 0x7FFFFFFF02FFFFFFLL;
    v27 = *(StatusReg + 32);
    if ((v27 & 0x1000000) != 0)
    {
      if (v26)
      {
        goto LABEL_127;
      }

      v26 = v27 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v26 == (v27 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_56:
      if (v20 == -1)
      {
        goto LABEL_61;
      }

      if (*(StatusReg + 224) == v20)
      {
        if ((v19 & 4) != 0 && v20)
        {
          os_release(v20);
        }

LABEL_61:
        v7 = v54;
        if ((v19 & 0x200) == 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_trace_item_pop_internal(object, isa, v15);
          }

          _dispatch_introspection_queue_item_dequeue(object, isa);
        }

        if ((v19 & 4) != 0)
        {
          v29 = *(StatusReg + 176);
          if (v29)
          {
            v30 = *(v29 + 8) + 1;
          }

          else
          {
            v30 = 1;
          }

          v28 = isa;
          if (v30 <= _dispatch_continuation_cache_limit)
          {
            v28 = 0;
            *(isa + 16) = v29;
            *(isa + 8) = v30;
            *(StatusReg + 176) = isa;
          }
        }

        else
        {
          v28 = 0;
        }

        v52 = v17;
        if ((v19 & 8) != 0)
        {
          v51 = v10;
          v45 = *(**(isa + 48) + 40);
          if (v45 != 514)
          {
            _dispatch_workloop_invoke_cold_3(v45);
          }

          group = *(isa + 48);
          v46 = *(isa + 32);
          v47 = *(isa + 40);
          v48 = v46;
          if (v47)
          {
            v48 = *(isa + 32);
            if (v46 == _dispatch_call_block_and_release)
            {
              if (v47[2])
              {
                v48 = v47[2];
              }

              else
              {
                v48 = 0;
              }
            }
          }

          v35 = v18;
          v36 = v12;
          v12 = v28;
          _dispatch_introspection_callout_entry(v47, v48);
          _dispatch_client_callout(v47, v46);
          _dispatch_introspection_callout_return(v47, v48);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4(isa);
          }

          _dispatch_introspection_queue_item_complete(isa);
          dispatch_group_leave(group);
          v5 = v53;
          v10 = v51;
        }

        else
        {
          v31 = v10;
          v33 = *(isa + 32);
          v32 = *(isa + 40);
          v34 = v33;
          if (v32)
          {
            v34 = *(isa + 32);
            if (v33 == _dispatch_call_block_and_release)
            {
              if (v32[2])
              {
                v34 = v32[2];
              }

              else
              {
                v34 = 0;
              }
            }
          }

          v35 = v18;
          v36 = v12;
          v12 = v28;
          _dispatch_introspection_callout_entry(v32, v34);
          _dispatch_client_callout(v32, v33);
          _dispatch_introspection_callout_return(v32, v34);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4(isa);
          }

          _dispatch_introspection_queue_item_complete(isa);
          v10 = v31;
          v5 = v53;
          v7 = v54;
        }

        v37 = v12;
        LODWORD(v12) = v36;
        v18 = v35;
        v17 = v52;
        if (v37)
        {
          _dispatch_continuation_free_to_cache_limit(v37);
          if (!v18)
          {
            goto LABEL_84;
          }
        }

        else if (!v18)
        {
          goto LABEL_84;
        }

LABEL_83:
        v18[1](object);
        goto LABEL_84;
      }

      v26 = 0;
LABEL_127:
      _dispatch_set_priority_and_voucher_slow(v26, v20, v19 & 4 | 2);
      goto LABEL_61;
    }

    if (v26)
    {
      goto LABEL_127;
    }

    goto LABEL_56;
  }

  if (*(v19 + 40) == 1)
  {
    (*(v19 + 48))(isa, 0, 0);
  }

  else
  {
    (*(v19 + 64))(isa, v55, 0x80000);
  }

  if (v18)
  {
    goto LABEL_83;
  }

LABEL_84:
  v14 = v17 != 0;
  if (!v17)
  {
    (*(object->isa + 10))(object, 0, 0);
  }

  *(StatusReg + 200) = v12 & 0xFFF0FFFF;
  v38 = v7 & 0xFFFFFFFF02FFFFFFLL;
  if (v7 == -1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v7 & 0xFFFFFFFF02FFFFFFLL;
  }

  v40 = *(StatusReg + 32);
  if ((v40 & 0x1000000) != 0)
  {
    if (v39)
    {
LABEL_110:
      _dispatch_set_priority_and_voucher_slow(v38, v10, 6);
      goto LABEL_95;
    }

    v39 = v40 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v39 == (v40 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_91;
  }

  v38 = v39;
  if (v39)
  {
    goto LABEL_110;
  }

LABEL_91:
  if (v10 != -1)
  {
    if (*(StatusReg + 224) == v10)
    {
      if (v10)
      {
        os_release(v10);
      }

      goto LABEL_95;
    }

    v38 = 0;
    goto LABEL_110;
  }

LABEL_95:
  *(StatusReg + 160) = v56;
  if (v5 != -4)
  {
    *(StatusReg + 216) = 0;
    *(StatusReg + 40) = 0;
  }

  v41 = *(StatusReg + 176);
  if (v41)
  {
    *(StatusReg + 176) = 0;
    _dispatch_cache_cleanup(v41);
  }

LABEL_99:
  dispatch_release(object);
  return v14;
}

void _dispatch_runloop_root_queue_wakeup_4CF(uint64_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*a1 + 40);
  if (v6 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v6);
  }

  _dispatch_runloop_queue_wakeup(a1, 0, 0, a5, a2);
}

uint64_t _dispatch_runloop_root_queue_get_port_4CF(unsigned int *a1)
{
  v1 = *(*a1 + 40);
  if (v1 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v1);
  }

  return a1[8];
}

uint64_t _dispatch_get_main_queue_handle_4CF(uint64_t a1, uint64_t a2)
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    _dispatch_get_main_queue_handle_4CF_cold_1();
  }

  return dword_70DE0;
}

uint64_t _dispatch_get_main_queue_port_4CF(uint64_t a1, uint64_t a2)
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    _dispatch_get_main_queue_handle_4CF_cold_1();
  }

  return dword_70DE0;
}

void _dispatch_main_queue_callback_4CF(uint64_t a1, uint64_t a2)
{
  if (!dword_70E30)
  {
    dword_70E30 = 1;
    _dispatch_main_queue_drain(a1, a2);
    dword_70E30 = 0;
  }
}

void _dispatch_main_queue_drain(uint64_t result, uint64_t a2)
{
  v6 = 0uLL;
  if (qword_70DF0)
  {
    if ((dword_70E10 & 0x40000) == 0)
    {
      _dispatch_main_queue_drain_cold_6();
    }

    v2 = qword_70DF8[0];
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if (((v2 ^ *(StatusReg + 24)) & 0xFFFFFFFC) != 0)
    {
      _dispatch_main_queue_drain_cold_1(v2);
    }

    if (_dispatch_main_q_handle_pred != -1)
    {
      _dispatch_get_main_queue_handle_4CF_cold_1();
    }

    v4 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (v4)
    {
      if (v4 == -4)
      {
        _dispatch_main_queue_drain_cold_3();
      }

      add_explicit = atomic_fetch_add_explicit((v4 + 96), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 0)
      {
        if (add_explicit < 0)
        {
          _os_object_retain_weak_cold_1();
        }

        *(v4 + 56) = 0xDEAD000000000000;
        _dispatch_object_dealloc(v4);
      }
    }

    _dispatch_main_queue_drain_cold_5((StatusReg + 216), StatusReg, &v6);
  }
}

uint64_t _dispatch_main_queue_push(uint64_t result, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = (*(StatusReg + 32) >> 8) & 0x3FFF;
  v5 = __clz(__rbit32(v4));
  *(a2 + 16) = 0;
  *(StatusReg + 976) = result + 48;
  v6 = *(result + 48);
  do
  {
    v7 = v6;
    v8 = v4 != 0 && v5 >= (v6 & 7u);
    if (v8)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = v6 & 7;
    }

    atomic_compare_exchange_strong_explicit((result + 48), &v6, v9 | a2, memory_order_release, memory_order_relaxed);
  }

  while (v6 != v7);
  v10 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 16);
  if ((v7 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v10 = (result + 104);
  }

  *v10 = a2;
  *(StatusReg + 976) = 0;
  if (!v7 || v8 && (*(result + 80) & 0x40000) != 0)
  {
    return (*(*result + 80))(result, a3, 2);
  }

  if (((*(result + 84) >> 8) & 0xFu) >= a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if ((*(result + 60) & 7) == 0 || (*(result + 60) & 7u) < v11)
  {
    return (*(*result + 80))(result, v11, 0);
  }

  return result;
}

void _dispatch_main_queue_wakeup(void *a1, atomic_uint *a2, uint64_t a3, int8x16_t a4, uint64_t a5)
{
  if ((a1[10] & 0x40000) != 0)
  {
    _dispatch_runloop_queue_wakeup(a1, a2, a3, a5, a4);
  }

  else
  {
    _dispatch_lane_wakeup(a1, a2, a3, a4);
  }
}

void dispatch_main(void)
{
  if (_dispatch_root_queues_pred != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v0 = pthread_main_np();
    if (!v0)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main() must be called on the main thread";
      __break(1u);
    }

    if (!dword_70E30)
    {
      dword_70E30 = 1;
      _dispatch_main_queue_drain(v0, v1);
      dword_70E30 = 0;
      _dispatch_program_is_probably_callback_driven = 1;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      pthread_exit(0);
    }

    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main called from a block on the main queue";
    __break(1u);
LABEL_9:
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }
}

dispatch_queue_global_t dispatch_get_global_queue(intptr_t identifier, uintptr_t flags)
{
  if ((flags & 0xFFFFFFFFFFFFFFF9) != 0 || flags >= 4 && (flags & 2) != 0)
  {
    return 0;
  }

  if (identifier <= -3)
  {
    if (identifier == -32768)
    {
      v3 = 3;
      goto LABEL_15;
    }

    if (identifier != -128)
    {
      goto LABEL_18;
    }

LABEL_12:
    v3 = 6;
    goto LABEL_15;
  }

  switch(identifier)
  {
    case -2:
      goto LABEL_12;
    case 0:
      v3 = 9;
      goto LABEL_15;
    case 2:
      v3 = 12;
      goto LABEL_15;
  }

LABEL_18:
  HIDWORD(v6) = identifier - 5;
  LODWORD(v6) = identifier - 5;
  v5 = v6 >> 2;
  if (v5 > 7 || ((0xBBu >> v5) & 1) == 0)
  {
    return 0;
  }

  v3 = qword_45240[v5];
LABEL_15:
  v4 = 2 * (flags > 3);
  if ((flags & 2) != 0)
  {
    v4 = 1;
  }

  return (&_dispatch_root_queues + 16 * (v3 + v4));
}

void _dispatch_queue_cleanup(__objc2_class **a1, uint64_t a2, int8x16_t a3)
{
  if (a1 != &_dispatch_main_q)
  {
    _dispatch_queue_cleanup_cold_1(a1);
  }

  _dispatch_queue_cleanup2(a3);
}

void _dispatch_frame_cleanup(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch frame is active";
  qword_6D1F0 = a1;
  __break(1u);
}

uint64_t _dispatch_cache_cleanup(uint64_t result)
{
  if (result)
  {
    do
    {
      v1 = *(result + 16);
      _dispatch_continuation_free_to_heap(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

void _dispatch_context_cleanup(uint64_t a1)
{
  qword_6D1C0 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch context is set";
  qword_6D1F0 = a1;
  __break(1u);
}

void _dispatch_wlh_cleanup(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFFELL;
  add_explicit = atomic_fetch_add_explicit((v3 + 96), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit <= 0)
  {
    if (add_explicit < 0)
    {
      _os_object_retain_weak_cold_1();
    }

    *(v3 + 56) = 0xDEAD000000000000;

    _dispatch_object_dealloc(v3);
  }
}

void *_dispatch_deferred_items_cleanup(uint64_t a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    _dispatch_deferred_items_cleanup_cold_1(a1);
  }

  v3 = (a1 & 0xFFFFFFFFFFFFFFFELL);

  return _dispatch_free_deferred_unotes(v3);
}

void _dispatch_queue_atfork_child()
{
  if ((dword_70E10 & 0x40000) != 0)
  {
    _dispatch_queue_atfork_child_cold_1();
  }

  if (_dispatch_unsafe_fork)
  {
    off_70E28[0] = (&stru_B8 + 72);
    qword_70DF0 = 256;
    qword_70EA8 = 256;
    qword_70E70 = 256;
    v0 = &qword_70F28;
    v1 = 18;
    do
    {
      *v0 = 256;
      *(v0 - 7) = 256;
      v0 += 16;
      --v1;
    }

    while (v1);
  }
}

void _dispatch_fork_becomes_unsafe_slow()
{
  if ((atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 1u, memory_order_relaxed) & 2) != 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Transition to multithreaded is prohibited";
    __break(1u);
  }
}

uint64_t _dispatch_prohibit_transition_to_multithreaded(uint64_t result)
{
  if (result)
  {
    if (atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 2u, memory_order_relaxed))
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: The executable is already multithreaded";
      __break(1u);
    }
  }

  else
  {
    atomic_fetch_and_explicit(&_dispatch_unsafe_fork, 0xFDu, memory_order_relaxed);
  }

  return result;
}

void _dispatch_block_async_invoke2(char *aBlock, const char *a2)
{
  v2 = a2;
  v3 = aBlock;
  v4 = *(aBlock + 2);
  v5 = v4 == _dispatch_block_special_invoke;
  if (v4 == _dispatch_block_special_invoke)
  {
    v6 = aBlock + 32;
    v7 = *(aBlock + 4);
    v5 = v7 == 3512316172;
    if (v7 != 3512316172)
    {
      qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_6D1F0 = v7;
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v6 + 4);
  if ((v8 & 4) != 0)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_6D1F0 = v8;
    __break(1u);
    goto LABEL_16;
  }

  if ((v8 & 1) == 0)
  {
    aBlock = (*(*(v6 + 5) + 16))();
  }

  if ((v8 & 8) == 0 && !atomic_fetch_add_explicit(v6 + 5, 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(v6 + 6));
  }

  __swp(aBlock, v6 + 14);
  if (aBlock)
  {
    if (*(aBlock + 2) != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit(aBlock + 2, 0xFFFFFFFE, memory_order_release);
      v5 = add_explicit == 2;
      if (add_explicit <= 2)
      {
LABEL_16:
        if (v5)
        {
          _os_object_dispose(aBlock, a2);
          if ((v2 & 1) == 0)
          {
            return;
          }

          goto LABEL_19;
        }

LABEL_23:
        qword_6D1C0 = "API MISUSE: Over-release of an object";
        __break(1u);
        return;
      }
    }
  }

  if ((v2 & 1) == 0)
  {
    return;
  }

LABEL_19:

  _Block_release(v3);
}

void _dispatch_lane_non_barrier_complete(void *result, uint64_t a2, int8x16_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v6 = result[7];
  do
  {
    v7 = v6;
    v8 = v6 - 0x20000000000;
    if ((v6 & 0xFFFFFFFC) != 0)
    {
      v8 |= 0x8000000000uLL;
    }

    else if (!(v8 >> 53))
    {
      if ((v6 & 0x10000000000) != 0)
      {
        v9 = v6 + 0x3FFF0000000000;
      }

      else
      {
        v9 = v6 + (*(result + 40) << 41) + 0x3FFE0000000000;
      }

      v10 = (v9 & 0x3FFE0000000000) == 0x20000000000000;
      v11 = v9 & 0xFFE0017FFFFFFFFFLL | v5;
      if (v10)
      {
        v8 = v11;
      }

      else
      {
        v8 |= (v7 >> 39) & 1;
      }
    }

    v6 = v7;
    atomic_compare_exchange_strong_explicit(result + 7, &v6, v8, memory_order_relaxed, memory_order_relaxed);
  }

  while (v6 != v7);
  if ((~v7 & 0x1800000000) == 0)
  {
    v12 = HIDWORD(v7) & 7;
    v13 = *(StatusReg + 200);
    if ((HIWORD(v13) & 0xF) < v12)
    {
      *(StatusReg + 200) = v13 & 0xFFF0FFFF | (v12 << 16);
    }
  }

  if (((v8 ^ v7) & 0x40000000000000) != 0)
  {

    _dispatch_lane_barrier_complete(result, 0, a2, a3);
  }

  else if ((v8 ^ v7))
  {
    if ((a2 & 1) != 0 || *(result + 2) == 0x7FFFFFFF || atomic_fetch_add_explicit(result + 2, 2u, memory_order_relaxed) > 0)
    {
      v14 = result[3];
      if (MEMORY[0xFFFFFC100])
      {
        v16 = result[3];
        _dispatch_trace_item_push_internal(v14, result, a3);
        v14 = v16;
      }

      _dispatch_introspection_queue_item_enqueue(v14, result);
      v15 = *(*result[3] + 88);

      v15();
    }

    else
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
    }
  }

  else if (a2)
  {

    _os_object_release_internal_n(result, &dword_0 + 2);
  }
}

double _dispatch_sync_f_slow(NSObject *a1, void *context, dispatch_function_t function, unint64_t a4, atomic_ullong *a5, uint64_t a6, int8x16_t a7)
{
  if (a5[3])
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    isa = StatusReg[4].isa;
    v24 = 0;
    v16[0].isa = (a6 | 1);
    v16[1].isa = (isa | 0x10000000);
    v16[2].isa = 0;
    v16[3] = StatusReg[28];
    v16[4].isa = _dispatch_async_and_wait_invoke;
    v16[5].isa = v16;
    v16[6].isa = 0;
    v17 = a1;
    v18 = function;
    v19 = context;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = StatusReg[3].isa;
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_push_internal(a1, v16, a7);
    }

    _dispatch_introspection_queue_item_enqueue(a1, v16);
    __DISPATCH_WAIT_FOR_QUEUE__(v16, a5);
    if (v18)
    {
      if (byte_6D338 == 1)
      {
        _dispatch_introspection_order_record(a1);
      }

      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_pop_internal(a1, v16, v14);
      }

      _dispatch_introspection_queue_item_dequeue(a1, v16);
      _dispatch_sync_invoke_and_complete_recurse(a1, context, function, a4, v16);
    }

    else
    {
      _dispatch_sync_complete_recurse(a1, v17, a4, v14);
    }
  }

  else
  {

    return _dispatch_sync_function_invoke(a5, context, function);
  }

  return result;
}

double _dispatch_sync_recurse(NSObject *a1, void *context, dispatch_function_t function, unint64_t a4, int8x16_t a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  isa = a1[3].isa;
  v11 = *(StatusReg + 24) & 0xFFFFFFFCLL;
LABEL_2:
  if (*(isa + 40) == 1)
  {
    v12 = *(isa + 7);
    while (v12 == (v12 & 0x3000000000 | 0x1FFE0000000000))
    {
      v13 = v12;
      atomic_compare_exchange_strong_explicit(isa + 7, &v13, v11 | v12 & 0x3000000000 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v14 = v13 == v12;
      v12 = v13;
      if (v14)
      {
        goto LABEL_7;
      }
    }

    v19 = 2;
  }

  else
  {
    if (!*(isa + 6))
    {
      v15 = *(isa + 7);
      while ((v15 & 0xFFC0018000000000) == 0)
      {
        v16 = v15;
        atomic_compare_exchange_strong_explicit(isa + 7, &v16, v15 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v14 = v16 == v15;
        v15 = v16;
        if (v14)
        {
LABEL_7:
          isa = *(isa + 3);
          if (*(isa + 3))
          {
            goto LABEL_2;
          }

          if (byte_6D338 == 1)
          {
            _dispatch_introspection_order_record(a1);
          }

          v17 = _dispatch_introspection_queue_fake_sync_push_pop(a1, context, function, a4);

          _dispatch_sync_invoke_and_complete_recurse(a1, context, function, a4, v17);
          return result;
        }
      }
    }

    v19 = 0;
  }

  return _dispatch_sync_f_slow(a1, context, function, a4, isa, v19, a5);
}

void _dispatch_lane_barrier_sync_invoke_and_complete(uint64_t a1, void *context, void (__cdecl *function)(void *), NSObject *a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v14;
  v9 = function;
  if (context)
  {
    v9 = function;
    if (function == _dispatch_call_block_and_release)
    {
      if (context[2])
      {
        v9 = context[2];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(context, v9);
  _dispatch_client_callout(context, function);
  _dispatch_introspection_callout_return(context, v9);
  *(StatusReg + 160) = v14;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(a4);
  if (!*(a1 + 48) && *(a1 + 80) < 2u)
  {
    v11 = *(a1 + 56);
    while ((v11 & 0xFF80008800000001) == 0)
    {
      v12 = v11;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v12, (v11 & 0x7FFF7000000000) - 0x40020000000000, memory_order_release, memory_order_relaxed);
      v13 = v12 == v11;
      v11 = v12;
      if (v13)
      {
        return;
      }
    }
  }

  _dispatch_lane_barrier_complete(a1, 0, 0, v10);
}

uint64_t _dispatch_async_and_wait_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 106))
  {
    v3 = objc_autoreleasePoolPush();
  }

  else
  {
    v3 = 0;
  }

  if (byte_6D338 == 1)
  {
    _dispatch_introspection_order_record(v2);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 160);
  *(StatusReg + 160) = v2;
  *(StatusReg + 168) = a1 + 80;
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = v6;
  if (v5)
  {
    v7 = *(a1 + 64);
    if (v6 == _dispatch_call_block_and_release)
    {
      if (v5[2])
      {
        v7 = v5[2];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(v5, v7);
  _dispatch_client_callout(v5, v6);
  _dispatch_introspection_callout_return(v5, v7);
  *(StatusReg + 160) = v9;
  if (v3)
  {
    objc_autoreleasePoolPop(v3);
  }

  *(a1 + 56) = *(StatusReg + 160);
  *(a1 + 64) = 0;
  if (*(a1 + 48) == -4)
  {
    result = a1 + 96;
    if (atomic_fetch_add_explicit((a1 + 96), 1u, memory_order_release))
    {

      return _dispatch_thread_event_signal_slow(result);
    }
  }

  else
  {

    return _dispatch_event_loop_cancel_waiter(a1);
  }

  return result;
}

void __DISPATCH_WAIT_FOR_QUEUE__(uint64_t result, atomic_ullong *a2)
{
  v4 = a2[7];
  while ((v4 & 0xFF80002000000002) == 0x2000000002)
  {
    v5 = v4 | 0x800000000;
    v6 = v4;
    atomic_compare_exchange_strong_explicit(a2 + 7, &v6, v4 | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    v7 = v6 == v4;
    v4 = v6;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v5 = v4;
LABEL_5:
  if ((*(result + 100) ^ v5) <= 3)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_sync called on queue already owned by current thread";
    qword_6D1F0 = v5;
    __break(1u);
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(result + 80) = *(StatusReg + 160);
  if ((v5 & 0xFF80001000000000) != 0)
  {
    *(result + 48) = -4;
    v9 = (result + 48);
LABEL_8:
    v10 = *(StatusReg + 200);
    v11 = (v10 >> 8) & 0xF;
    v12 = v10 >> 12;
    v13 = HIWORD(v10) & 0xF;
    if (v11 <= v12)
    {
      v11 = v12;
    }

    if (v11 > v13)
    {
      LOBYTE(v13) = v11;
    }

    *(result + 105) = v13;
    *(result + 104) = v13;
    *(result + 96) = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x2000000000) != 0)
  {
    *(result + 48) = a2;
    v14 = a2;
  }

  else
  {
    _dispatch_wait_compute_wlh(a2, result);
    v14 = *(result + 48);
  }

  v9 = (result + 48);
  if (v14 == -4)
  {
    goto LABEL_8;
  }

LABEL_17:
  *(StatusReg + 968) = result;
  v15 = __clz(__rbit32((*(result + 8) >> 8) & 0x3FFF));
  if (((*(result + 8) >> 8) & 0x3FFF) != 0)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  (*(*a2 + 88))(a2, result, v16);
  _dispatch_introspection_runtime_event();
  if (*(result + 48) == -4)
  {
    if (atomic_fetch_add_explicit((result + 96), 0xFFFFFFFF, memory_order_acquire) != 1)
    {
      _dispatch_thread_event_wait_slow((result + 96));
    }
  }

  else if ((*(result + 106) & 8) == 0)
  {
    _dispatch_event_loop_wait_for_ownership(result);
  }

  *(StatusReg + 968) = 0;
  if (*v9 == -4)
  {
    v17 = *(result + 105);
    if (v17 > *(result + 104))
    {
      v18 = *(StatusReg + 200);
      if ((HIWORD(v18) & 0xF) < v17)
      {
        *(StatusReg + 200) = v18 & 0xFFF0FFFF | (v17 << 16);
      }
    }
  }
}

void _dispatch_sync_complete_recurse(void *result, void *a2, unint64_t a3, int8x16_t a4)
{
  v6 = (a3 >> 1) & 1;
  do
  {
    if (result == a2)
    {
      break;
    }

    if (v6)
    {
      (*(*result + 80))(result, 0, 4);
    }

    else
    {
      _dispatch_lane_non_barrier_complete(result, 0, a4);
    }

    result = result[3];
    LOBYTE(v6) = *(result + 40) == 1;
  }

  while (result[3]);
}

void _dispatch_sync_invoke_and_complete_recurse(void *a1, void *context, void (__cdecl *function)(void *), unint64_t a4, NSObject *a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v13 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v13;
  v11 = function;
  if (context)
  {
    v11 = function;
    if (function == _dispatch_call_block_and_release)
    {
      if (context[2])
      {
        v11 = context[2];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(context, v11);
  _dispatch_client_callout(context, function);
  _dispatch_introspection_callout_return(context, v11);
  *(StatusReg + 160) = v13;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(a5);
  _dispatch_sync_complete_recurse(a1, 0, a4, v12);
}

void _dispatch_wait_compute_wlh(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if ((v4 & 0x400000) != 0)
  {
    v5 = 0;
    *(a2 + 106) |= 0x40u;
    v6 = (a1 + 100);
    atomic_compare_exchange_strong_explicit((a1 + 100), &v5, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      _dispatch_unfair_lock_lock_slow(v6, 0x10000);
    }
  }

  v7 = *(a1 + 24);
  v8 = *(v7 + 56);
  while (1)
  {
    if (v8 >> 55)
    {
      goto LABEL_18;
    }

    if ((~v8 & 0x2000000002) != 0)
    {
      break;
    }

    v9 = v8 | 0x800000000;
    v10 = v8;
    atomic_compare_exchange_strong_explicit((v7 + 56), &v10, v8 | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    v11 = v10 == v8;
    v8 = v10;
    if (v11)
    {
      if ((v9 & 0x1000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_18:
      *(a2 + 106) &= ~0x40u;
      *(a2 + 48) = -4;
      goto LABEL_19;
    }
  }

  v9 = v8;
  if ((v8 & 0x1000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v9 & 0x2000000000) != 0)
  {
    if (*(*v7 + 40) == 18)
    {
      *(a2 + 106) = *(a2 + 106) & 0xAF | 0x10;
    }

    else if ((*(a2 + 106) & 0x40) != 0 && (atomic_fetch_add_explicit((v7 + 96), 1u, memory_order_relaxed) & 0x80000000) != 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    *(a2 + 48) = v7;
  }

  else
  {
    _dispatch_wait_compute_wlh(v7, a2);
  }

LABEL_19:
  if ((v4 & 0x400000) != 0)
  {
    if ((*(a2 + 106) & 0x10) != 0)
    {
      atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }

    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
    if (atomic_exchange_explicit((a1 + 100), 0, memory_order_release) != v12)
    {
      _dispatch_lane_legacy_set_target_queue_cold_2();
    }
  }
}

void _dispatch_sync_invoke_and_complete(void *a1, void *context, void (__cdecl *function)(void *), NSObject *a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v11;
  v9 = function;
  if (context)
  {
    v9 = function;
    if (function == _dispatch_call_block_and_release)
    {
      if (context[2])
      {
        v9 = context[2];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(context, v9);
  _dispatch_client_callout(context, function);
  _dispatch_introspection_callout_return(context, v9);
  *(StatusReg + 160) = v11;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(a4);
  _dispatch_lane_non_barrier_complete(a1, 0, v10);
}

void _dispatch_async_and_wait_recurse(unint64_t a1, unint64_t *a2, int a3, unint64_t a4, int8x16_t a5)
{
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_push_internal(a1, a2, a5);
  }

  _dispatch_introspection_queue_item_enqueue(a1, a2);
  v9 = *(a1 + 56);
  v10 = *(a1 + 80);
  v11 = a1;
  if ((v10 & 0x1000000) != 0)
  {
    goto LABEL_39;
  }

  v12 = (a1 + 56);
  v13 = (a1 + 80);
  v14 = a1;
  v15 = a4;
LABEL_5:
  if ((v9 & 0x3000000000) != 0)
  {
    v16 = *(v14 + 24);
    if (v16 < &_dispatch_root_queues || v16 >= &_dispatch_queue_serial_numbers)
    {
      v11 = v14;
LABEL_39:
      *a2 &= ~0x80uLL;
      a2[7] = v11;
      v14 = v11;
      goto LABEL_35;
    }
  }

  if ((v15 & 2) != 0)
  {
    v18 = v10 << 41;
    while (v9 == (v9 & 0x3000000000) - v18 + 0x20000000000000)
    {
      v19 = v9;
      atomic_compare_exchange_strong_explicit(v12, &v19, v9 & 0x3000000000 | a3 & 0xFFFFFFFC | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v20 = v19 == v9;
      v9 = v19;
      if (v20)
      {
        goto LABEL_15;
      }
    }
  }

  else if (!*(v14 + 48))
  {
    while ((v9 & 0xFFC0018000000000) == 0)
    {
      v25 = v9;
      atomic_compare_exchange_strong_explicit(v12, &v25, v9 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
      v20 = v25 == v9;
      v9 = v25;
      if (v20)
      {
LABEL_15:
        v21 = *(v14 + 84) & 0xFFF;
        if (v21)
        {
          v22 = v21 >= 0x100 ? 1 << (BYTE1(v21) + 7) : 0;
          v23 = v22 | *(v14 + 84);
          if (v23 > (a2[1] & 0xFFFFFF))
          {
            a2[1] = v23 | 0x10000000;
          }
        }

        if ((*(a2 + 106) & 3) == 0)
        {
          *(a2 + 106) |= HIWORD(*v13) & 3;
        }

        v11 = *(v14 + 24);
        if (!*(v11 + 24))
        {

          _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a2, v14, a4);
          return;
        }

        v13 = (v11 + 80);
        v24 = v15 & 0xFFFFFFFFFFFFFFFDLL;
        v15 |= 2uLL;
        if (*(v11 + 80) != 1)
        {
          v15 = v24;
        }

        *a2 = v15;
        v12 = (v11 + 56);
        v9 = *(v11 + 56);
        v10 = *(v11 + 80);
        v14 = v11;
        if ((v10 & 0x1000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_39;
      }
    }
  }

LABEL_35:

  _dispatch_async_and_wait_f_slow(a1, a4, a2, v14);
}

void _dispatch_async_and_wait_f_slow(NSObject *a1, unint64_t a2, NSObject *a3, atomic_ullong *a4)
{
  __DISPATCH_WAIT_FOR_QUEUE__(a3, a4);
  isa = a3[7].isa;
  if (a3[8].isa)
  {

    _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a3, isa, a2);
  }

  else
  {
    v9 = a3[7].isa;

    _dispatch_sync_complete_recurse(a1, v9, a2, v7);
  }
}

void _dispatch_async_and_wait_invoke_and_complete_recurse(NSObject *a1, NSObject *a2, uint64_t a3, unint64_t a4)
{
  if (*(*a3 + 40) != 18 && (*(a3 + 56) & 0x2000000000) == 0)
  {
    a3 = -4;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 216);
  *(StatusReg + 216) = a3;
  if (BYTE2(a2[13].isa))
  {
    context = objc_autoreleasePoolPush();
  }

  else
  {
    context = 0;
  }

  isa = a2[1].isa;
  v8 = a2[3].isa;
  if (byte_6D338 == 1)
  {
    _dispatch_introspection_order_record(a1);
  }

  v9 = *(StatusReg + 160);
  v24 = v9;
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v24;
  v10 = *(StatusReg + 32);
  v11 = v10 & 0xFFFFFF;
  v12 = (v10 & 0xFFFFFFuLL) >= (isa & 0xFFFFFF) || (v10 & 0xFFFFFF) == 0;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 & 0xFFFFFF;
  }

  v14 = isa & 0xFFFFFFFF02FFFFFFLL;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = isa & 0xFFFFFFFF02FFFFFFLL;
  }

  if ((v10 & 0x1000000) != 0)
  {
    if (v15)
    {
LABEL_54:
      v8 = _dispatch_set_priority_and_voucher_slow(v14, v8, 0);
      goto LABEL_22;
    }

    v15 = v10 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v15 == (v10 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_18;
  }

  v14 = v15;
  if (v15)
  {
    goto LABEL_54;
  }

LABEL_18:
  if (v8 == -1)
  {
    goto LABEL_22;
  }

  if (*(StatusReg + 224) != v8)
  {
    v14 = 0;
    goto LABEL_54;
  }

  if (v8)
  {
    os_retain(v8);
  }

LABEL_22:
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_trace_item_pop_internal(a1, a2, v9);
  }

  _dispatch_introspection_queue_item_dequeue(a1, a2);
  v17 = a2[8].isa;
  v16 = a2[9].isa;
  v18 = v17;
  if (v16)
  {
    v18 = a2[8].isa;
    if (v17 == _dispatch_call_block_and_release)
    {
      if (v16[2])
      {
        v18 = v16[2];
      }

      else
      {
        v18 = 0;
      }
    }
  }

  _dispatch_introspection_callout_entry(v16, v18);
  _dispatch_client_callout(v16, v17);
  _dispatch_introspection_callout_return(v16, v18);
  v19 = *(StatusReg + 32);
  if ((v19 & 0x1000000) != 0)
  {
    if (!v12)
    {
LABEL_52:
      _dispatch_set_priority_and_voucher_slow(v11, v8, 6);
      goto LABEL_35;
    }

    v11 = v19 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    if (v13 == (v19 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_31;
    }

    v11 = v13;
  }

  if (v11)
  {
    goto LABEL_52;
  }

LABEL_31:
  if (v8 == -1)
  {
    goto LABEL_35;
  }

  if (*(StatusReg + 224) != v8)
  {
    v11 = 0;
    goto LABEL_52;
  }

  if (v8)
  {
    os_release(v8);
  }

LABEL_35:
  *(StatusReg + 160) = v24;
  if (context)
  {
    objc_autoreleasePoolPop(context);
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_introspection_queue_item_complete(a2);
  *(StatusReg + 216) = v22;
  _dispatch_sync_complete_recurse(a1, 0, a4, v20);
}

void _dispatch_queue_specific_head_dispose(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_9;
  }

  v2[4] = v7;
  v4 = a1[2];
  v7[0] = v2;
  v7[1] = v4;
  a1[1] = 0;
  a1[2] = v3;
  do
  {
    v5 = v2[3];
    if (v2[2])
    {
      v6 = a1[2];
      v2[3] = 0;
      v2[4] = v6;
      *v6 = v2;
      a1[2] = v2 + 3;
    }

    else
    {
      free(v2);
    }

    v2 = v5;
  }

  while (v5);
  if (*v3)
  {
    _dispatch_barrier_async_detached_f(&off_71340, a1, _dispatch_queue_specific_head_dispose_slow);
  }

  else
  {
LABEL_9:
    free(a1);
  }
}

void _dispatch_queue_specific_head_dispose_slow(void *a1)
{
  v2 = a1[1];
  while (v2)
  {
    v3 = v2;
    v2 = v2[3];
    v4 = v3[1];
    v5 = v3[2];
    v6 = v5 != _dispatch_call_block_and_release || v4 == 0;
    v7 = v3[2];
    if (!v6)
    {
      if (v4[2])
      {
        v7 = v4[2];
      }

      else
      {
        v7 = 0;
      }
    }

    _dispatch_introspection_callout_entry(v4, v7);
    _dispatch_client_callout(v4, v5);
    _dispatch_introspection_callout_return(v4, v7);
    free(v3);
  }

  free(a1);
}

uint64_t _dispatch_non_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t *a2)
{
LABEL_1:
  v2 = *(a1 + 56);
  if ((BYTE4(v2) & 7u) > *(a2 + 105))
  {
    *(a2 + 105) = BYTE4(v2) & 7;
  }

  v3 = *a2;
  if ((*a2 & 0x80) != 0)
  {
    v4 = *(a1 + 84) & 0xFFF;
    if (v4)
    {
      v5 = v4 >= 0x100 ? 1 << (BYTE1(v4) + 7) : 0;
      v6 = v5 | *(a1 + 84);
      if (v6 > (a2[1] & 0xFFFFFFuLL))
      {
        a2[1] = v6 | 0x10000000;
      }
    }

    if ((*(a2 + 106) & 3) == 0)
    {
      *(a2 + 106) |= HIWORD(*(a1 + 80)) & 3;
    }

    if ((v2 & 0x3000000000) == 0)
    {
      goto LABEL_15;
    }

    a2[7] = a1;
    return _dispatch_waiter_wake_wlh_anon(a2);
  }

  if ((v2 & 0x3000000000) != 0)
  {
    return _dispatch_waiter_wake_wlh_anon(a2);
  }

LABEL_15:
  a1 = *(a1 + 24);
  if (*(a1 + 80) == 1)
  {
    *a2 = v3 | 2;
  }

  else
  {
    *a2 = v3 & 0xFFFFFFFFFFFFFFFDLL;
    if (!*(a1 + 48))
    {
      v7 = *(a1 + 56);
      while ((v7 & 0xFFC0018000000000) == 0)
      {
        v8 = v7;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v8, v7 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v9 = v8 == v7;
        v7 = v8;
        if (v9)
        {
          goto LABEL_1;
        }
      }
    }
  }

  return (*(*a1 + 88))();
}

uint64_t _dispatch_waiter_wake_wlh_anon(uint64_t a1)
{
  if (*(a1 + 105) > *(a1 + 104))
  {
    _pthread_workqueue_override_start_direct();
  }

  result = a1 + 96;
  if (atomic_fetch_add_explicit((a1 + 96), 1u, memory_order_release))
  {

    return _dispatch_thread_event_signal_slow(result);
  }

  return result;
}

uint64_t _dispatch_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  v8 = a1;
  if (*(a2 + 48) == -4 && (BYTE4(a4) & 7u) > *(a2 + 105))
  {
    *(a2 + 105) = BYTE4(a4) & 7;
  }

  if ((a4 & 0x2000000000) != 0)
  {
    v12 = a1;
    if ((a3 & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_22;
      }

      v12 = a1;
      if (a5)
      {
        goto LABEL_22;
      }

      v12 = a1;
      if (*(a1 + 8) == 0x7FFFFFFF)
      {
        goto LABEL_22;
      }

      v12 = a1;
      if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) > 1)
      {
        goto LABEL_22;
      }

      qword_6D1C0 = "API MISUSE: Over-release of an object";
      __break(1u);
    }

    if (a5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((~a4 & 0x1800000000) == 0)
    {
      v9 = HIDWORD(a4) & 7;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = *(StatusReg + 200);
      if ((HIWORD(v11) & 0xF) < v9)
      {
        *(StatusReg + 200) = v11 & 0xFFF0FFFF | (v9 << 16);
      }
    }

    v12 = -4;
    if ((a3 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) > 2)
  {
    goto LABEL_22;
  }

  qword_6D1C0 = "API MISUSE: Over-release of an object";
  __break(1u);
LABEL_20:
  v12 = a1;
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
    v12 = a1;
    if (add_explicit <= 1)
    {
      qword_6D1C0 = "API MISUSE: Over-release of an object";
      __break(1u);
LABEL_43:
      *a2 = add_explicit & 0xFFFFFFFFFFFFFFFDLL;
      if (!*(a1 + 48))
      {
        v19 = *(a1 + 56);
        while ((v19 & 0xFFC0018000000000) == 0)
        {
          v20 = v19;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v20, v19 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
          v21 = v20 == v19;
          v19 = v20;
          if (v21)
          {

            return _dispatch_non_barrier_waiter_redirect_or_wake(a1, a2);
          }
        }
      }

      goto LABEL_39;
    }
  }

LABEL_22:
  if ((a4 & 0x3000000000) != 0)
  {
    _dispatch_introspection_runtime_event();
    if ((*a2 & 0x80) != 0)
    {
      *(a2 + 56) = v8;
    }

    return _dispatch_waiter_wake(a2, v12, a4, a5);
  }

  a1 = *(a1 + 24);
  add_explicit = *a2;
  if ((*a2 & 0x80) != 0)
  {
    v15 = *(v8 + 84) & 0xFFF;
    if (v15)
    {
      v16 = v15 >= 0x100 ? 1 << (BYTE1(v15) + 7) : 0;
      v17 = v16 | *(v8 + 84);
      if (v17 > (*(a2 + 8) & 0xFFFFFFuLL))
      {
        *(a2 + 8) = v17 | 0x10000000;
      }
    }

    if ((*(a2 + 106) & 3) == 0)
    {
      *(a2 + 106) |= HIWORD(*(v8 + 80)) & 3;
    }
  }

  if (*(a1 + 80) != 1)
  {
    goto LABEL_43;
  }

  *a2 = add_explicit | 2;
LABEL_39:
  *(a2 + 106) &= ~0x80u;
  v18 = *(*a1 + 88);

  return v18();
}

uint64_t _dispatch_waiter_wake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  if (((a3 & 0x2000000000) == 0 || *(a1 + 106) < 0) && (a4 & 0x2000000000) == 0 && v5 == -4 || (result = _dispatch_event_loop_wake_owner(a1, a2, a3, a4), v5 == -4))
  {

    return _dispatch_waiter_wake_wlh_anon(a1);
  }

  return result;
}

void _dispatch_lane_concurrent_drain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 24);
  v5 = *a4;
  v51 = (a1 + 48);
  if (!*(a1 + 48))
  {
    return;
  }

  v6 = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 160);
  v58 = v9;
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v58;
  if ((v5 & 0x40000000000000) != 0)
  {
    v10 = 0x40000000000000;
  }

  else
  {
    v10 = v5 & 0x3FFE0000000000;
  }

  if ((a3 & 0x10) != 0 && *(StatusReg + 40))
  {
    _dispatch_return_to_kernel();
  }

  v11 = *(a1 + 104);
  if (!v11)
  {
    v11 = _dispatch_wait_for_enqueuer((a1 + 104), v51);
  }

  v12 = *(a1 + 56);
  if (!(v12 >> 55))
  {
    v53 = (v6 >> 21) & 1;
    v55 = v4;
    while (v4 == *(a1 + 24))
    {
      v13 = *v11;
      if (*v11 >= 0x1000uLL)
      {
        if ((*(v13 + 40) & 0xF0) == 0x10 && (*(v11 + 80) & 0x80000) != 0)
        {
LABEL_18:
          if (v10 != 0x40000000000000)
          {
            v14 = (*(a1 + 80) << 41) - 0x10000000000;
            v15 = v12;
            do
            {
              if ((v12 & 0x10000000000) != 0)
              {
                v16 = 0;
              }

              else
              {
                v16 = v14;
              }

              v17 = v16 + v12 - v10;
              if (!(v17 >> 53))
              {
                v17 += 0x40010000000000;
              }

              atomic_compare_exchange_strong_explicit((a1 + 56), &v15, v17 & 0xFFFFFF7FFFFFFFFFLL, memory_order_acquire, memory_order_acquire);
              v19 = v15 == v12;
              v12 = v15;
            }

            while (!v19);
            if ((v17 & 0x40000000000000) == 0)
            {
              goto LABEL_155;
            }

            v13 = *v11;
          }

          if (v13 <= 0xFFF && (v6 & 0x80000) == 0 && (v13 & 1) != 0)
          {
            *(a2 + 8) = v11;
            if ((v6 & 8) == 0)
            {
              goto LABEL_167;
            }

            qword_6D1C0 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
            __break(1u);
            return;
          }

          v18 = *(v11 + 16);
          *(a1 + 104) = v18;
          if (!v18)
          {
            v41 = *v51;
            while (v11 == (v41 & 0xFFFFFFFFFFFFFFF8))
            {
              v42 = v41;
              atomic_compare_exchange_strong_explicit(v51, &v42, 0, memory_order_release, memory_order_relaxed);
              v10 = 0x40000000000000;
              v19 = v42 == v41;
              v41 = v42;
              if (v19)
              {
                goto LABEL_42;
              }
            }

            v18 = *(v11 + 16);
            if (!v18)
            {
              v18 = _dispatch_wait_for_enqueuer((v11 + 16), v51);
            }

            *(a1 + 104) = v18;
          }

          v10 = 0x40000000000000;
          goto LABEL_42;
        }
      }

      else if ((v13 & 2) != 0)
      {
        goto LABEL_18;
      }

      if (v10 == 0x40000000000000)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x40000000000000uLL, memory_order_release);
        v10 = *(a1 + 80) << 41;
      }

      else if (!v10)
      {
        if (v13 > 0xFFF || (v13 & 0x81) == 0)
        {
          while ((v12 & 0xFFE0018000000000) == 0)
          {
            v46 = v12;
            atomic_compare_exchange_strong_explicit((a1 + 56), &v46, v12 + 0x20000000000, memory_order_acquire, memory_order_acquire);
            v19 = v46 == v12;
            v12 = v46;
            if (v19)
            {
              v10 = 0x20000000000;
              goto LABEL_35;
            }
          }

LABEL_155:
          *a4 &= 0x4000000001uLL;
          *(StatusReg + 160) = v58;
          return;
        }

        v10 = 0x20000000000;
        atomic_fetch_add_explicit((a1 + 56), 0x20000000000uLL, memory_order_relaxed);
      }

LABEL_35:
      v18 = *(v11 + 16);
      *(a1 + 104) = v18;
      if (!v18)
      {
        v39 = *v51;
        while (v11 == (v39 & 0xFFFFFFFFFFFFFFF8))
        {
          v40 = v39;
          atomic_compare_exchange_strong_explicit(v51, &v40, 0, memory_order_release, memory_order_relaxed);
          v19 = v40 == v39;
          v39 = v40;
          if (v19)
          {
            goto LABEL_36;
          }
        }

        v18 = *(v11 + 16);
        if (!v18)
        {
          v18 = _dispatch_wait_for_enqueuer((v11 + 16), v51);
        }

        *(a1 + 104) = v18;
      }

LABEL_36:
      v19 = *v11 > 0xFFFuLL || (*v11 & 0x81) == 0;
      if (!v19)
      {
        v10 -= 0x20000000000;
        _dispatch_non_barrier_waiter_redirect_or_wake(a1, v11);
        goto LABEL_103;
      }

      if ((v6 & 0x20000) != 0)
      {
        v10 -= 0x20000000000;
        _dispatch_continuation_redirect_push(a1, v11);
        goto LABEL_103;
      }

LABEL_42:
      v20 = *(StatusReg + 192);
      if (v20)
      {
        (*v20)(a1);
      }

      v21 = *v11;
      if (*v11 < 0x1000uLL)
      {
        if ((v6 & 0x1000000) != 0)
        {
          context = objc_autoreleasePoolPush();
          v21 = *v11;
        }

        else
        {
          context = 0;
        }

        v22 = *(v11 + 24);
        if ((v21 & 4) != 0)
        {
          *(v11 + 24) = -1;
        }

        if (v22 != -1 && MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v23 = *(v11 + 8);
        if (v23 == -1)
        {
          v26 = 0;
        }

        else
        {
          v24 = *(StatusReg + 200);
          if (((v24 >> 8) & 0xF) != 0)
          {
            v25 = 1 << ((BYTE1(v24) & 0xFu) + 7);
          }

          else
          {
            v25 = 0;
          }

          v26 = v25 | *(StatusReg + 200);
          if ((v23 & 0xFFFFFF) != 0)
          {
            if ((v23 & 0xFFFFFFuLL) >= (v25 & 0xFFFFFF00) && ((v24 & 0x44000000) != 0 || (*(v11 + 8) & 0x10000000) != 0))
            {
              v26 = v23 & 0xFFFFFF;
            }
          }

          else if (v24 >> 12)
          {
            v26 = (256 << ((v24 >> 12) - 1)) | 0xFF;
          }
        }

        v28 = v26 & 0x7FFFFFFF02FFFFFFLL;
        v29 = *(StatusReg + 32);
        if ((v29 & 0x1000000) != 0)
        {
          if (!v28)
          {
            v28 = v29 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_129;
          }

LABEL_140:
          _dispatch_set_priority_and_voucher_slow(v28, v22, v21 & 4 | 2);
        }

        else
        {
          if (v28 == (v29 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_72;
          }

LABEL_129:
          if (v28)
          {
            goto LABEL_140;
          }

LABEL_72:
          if (v22 != -1)
          {
            if (*(StatusReg + 224) != v22)
            {
              v28 = 0;
              goto LABEL_140;
            }

            if ((v21 & 4) != 0 && v22)
            {
              os_release(v22);
            }
          }
        }

        if ((v21 & 0x200) == 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_trace_item_pop_internal(a1, v11, v9);
          }

          _dispatch_introspection_queue_item_dequeue(a1, v11);
        }

        if ((v21 & 4) != 0)
        {
          v31 = *(StatusReg + 176);
          if (v31)
          {
            v32 = *(v31 + 8) + 1;
          }

          else
          {
            v32 = 1;
          }

          v30 = v11;
          if (v32 <= _dispatch_continuation_cache_limit)
          {
            v30 = 0;
            *(v11 + 16) = v31;
            *(v11 + 8) = v32;
            *(StatusReg + 176) = v11;
          }
        }

        else
        {
          v30 = 0;
        }

        v56 = v20;
        if ((v21 & 8) != 0)
        {
          v43 = *(**(v11 + 48) + 40);
          if (v43 != 514)
          {
            qword_6D1C0 = "BUG IN LIBDISPATCH: Unexpected object type";
            qword_6D1F0 = v43;
            __break(1u);
            return;
          }

          v44 = *(v11 + 40);
          v45 = *(v11 + 32);
          if (v44)
          {
            v45 = *(v11 + 32);
            if (v45 == _dispatch_call_block_and_release)
            {
              if (v44[2])
              {
                v45 = v44[2];
              }

              else
              {
                v45 = 0;
              }
            }
          }

          v49 = *(v11 + 32);
          group = *(v11 + 48);
          v37 = v10;
          v38 = v30;
          _dispatch_introspection_callout_entry(v44, v45);
          _dispatch_client_callout(v44, v49);
          _dispatch_introspection_callout_return(v44, v45);
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          _dispatch_introspection_queue_item_complete(v11);
          dispatch_group_leave(group);
          v4 = v55;
        }

        else
        {
          v33 = v6;
          v34 = *(v11 + 32);
          v35 = *(v11 + 40);
          v36 = v34;
          if (v35)
          {
            v36 = *(v11 + 32);
            if (v34 == _dispatch_call_block_and_release)
            {
              if (v35[2])
              {
                v36 = v35[2];
              }

              else
              {
                v36 = 0;
              }
            }
          }

          v37 = v10;
          v38 = v30;
          _dispatch_introspection_callout_entry(v35, v36);
          _dispatch_client_callout(v35, v34);
          _dispatch_introspection_callout_return(v35, v36);
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          _dispatch_introspection_queue_item_complete(v11);
          v6 = v33;
          v4 = v55;
        }

        if (v38)
        {
          _dispatch_continuation_free_to_cache_limit(v38);
        }

        v10 = v37;
        v20 = v56;
        if (context)
        {
          objc_autoreleasePoolPop(context);
        }

        goto LABEL_101;
      }

      if (*(v21 + 40) == 1)
      {
        (*(v21 + 48))(v11, 0, v53);
      }

      else
      {
        (*(v21 + 64))(v11, a2, v6 & 0xFFFF0000);
      }

LABEL_101:
      if (v20)
      {
        v20[1](a1);
      }

LABEL_103:
      v11 = v18;
      if (!v18)
      {
        if (!*v51)
        {
          v11 = 0;
          break;
        }

        v11 = *(a1 + 104);
        if (!v11)
        {
          v11 = _dispatch_wait_for_enqueuer((a1 + 104), v51);
        }
      }

      if (*(StatusReg + 40))
      {
        _dispatch_return_to_kernel();
      }

      if (*(a1 + 80) != 1 && ((v6 & 0x4000000) != 0 || (*(StatusReg + 960) & 1) == 0) && ((v6 & 0x100000) == 0 || (*(*(StatusReg + 216) + 60) & 7u) <= *(*(StatusReg + 216) + 100)))
      {
        v12 = *(a1 + 56);
        if (!(v12 >> 55))
        {
          continue;
        }
      }

      break;
    }
  }

  if (v10 == 0x40000000000000)
  {
    v10 = (*(a1 + 80) << 41) + 0x40000000000000;
  }

  if (!v11)
  {
    *a4 = *a4 & 0x4000000001 | v10;
    *(StatusReg + 160) = v58;
    return;
  }

  v47 = *(a1 + 80);
  if (v47 >= 2)
  {
    v48 = *v11;
    if (*v11 < 0x1000uLL)
    {
      if ((v48 & 2) == 0)
      {
        goto LABEL_166;
      }
    }

    else if ((*(v48 + 40) & 0xF0) != 0x10 || (*(v11 + 80) & 0x80000) == 0)
    {
      goto LABEL_166;
    }

    v10 = v10 - (v47 << 41) + 0x10000000000;
  }

LABEL_166:
  *a4 = *a4 & 0x4000000001 | v10;
LABEL_167:
  *(StatusReg + 160) = v58;
}

void _dispatch_workloop_bound_thread_init_once()
{
  v2 = 0;
  v1 = 4;
  v0 = sysctlbyname("kern.kern_event.thread_bound_kqwl_support_enabled", &v2, &v1, 0, 0);
  if (v0)
  {
    _dispatch_bug(4277, v0);
  }

  if (v2)
  {
    _dispatch_thread_bound_kqwl_enabled = 1;
  }
}

void _dispatch_workloop_activate_simulator_fallback(uint64_t a1, __int128 *a2)
{
  v3 = _dispatch_pthread_root_queue_create("com.apple.libdispatch.workloop_fallback", 0, a2, 0, 0);
  *(a1 + 24) = v3;
  if (LODWORD(v3[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&v3[1], 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_release(v3);
  v4 = *(a1 + 56);
  v5 = v4;
  do
  {
    atomic_compare_exchange_strong_explicit((a1 + 56), &v5, v4 & 0xFFFFFFCFFFFFFFFFLL | 0x1000000000, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
  }

  while (!v6);
}

void _dispatch_queue_wakeup_with_override_slow(uint64_t result, unint64_t a2, char a3, uint64_t a4)
{
  v6 = HIDWORD(a2) & 7;
  v7 = *(result + 24);
  if ((a2 & 0x1000000000) != 0)
  {
    if (v7 < &_dispatch_root_queues || v7 >= &_dispatch_queue_serial_numbers)
    {
      goto LABEL_41;
    }

    if (a2 >= 4)
    {
      _pthread_workqueue_override_start_direct_check_owner();
      goto LABEL_41;
    }

    goto LABEL_16;
  }

  if ((*(result + 80) & 0x400000) == 0)
  {
LABEL_16:
    v12 = 1;
    goto LABEL_17;
  }

  v8 = *(result + 100);
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  do
  {
    v10 = v8;
    v11 = v8 | 2;
    if (v8 < 4)
    {
      v11 = v9;
    }

    atomic_compare_exchange_strong_explicit((result + 100), &v8, v11, memory_order_acquire, memory_order_acquire);
  }

  while (v8 != v10);
  if (v10 > 3)
  {
    _pthread_workqueue_override_start_direct_check_owner();
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    goto LABEL_41;
  }

  v7 = *(result + 24);
  if (MEMORY[0xFFFFFC100])
  {
    v21 = HIDWORD(a2) & 7;
    kdebug_trace();
    v6 = v21;
  }

  v12 = 0;
LABEL_17:
  v14 = (result + 100);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v16 = v6;
    if ((*(*v7 + 40) & 0x10000) != 0)
    {
      if (v6 > ((v7[21] >> 8) & 0xF))
      {
        _dispatch_root_queue_push_override_stealer(v7, result, v6, a4);
      }
    }

    else if (*(*v7 + 40) == 18)
    {
      _dispatch_workloop_push_stealer(v7, result, v6);
    }

    else if ((v7[15] & 7) == 0 || (v7[15] & 7) < v6)
    {
      (*(*v7 + 80))(v7, v6, 0);
    }

    if (v12)
    {
      break;
    }

    do
    {
      for (i = *v14; ; i = v20)
      {
        while ((i & 2) == 0)
        {
          v19 = i;
          atomic_compare_exchange_strong_explicit(v14, &v19, 0, memory_order_release, memory_order_relaxed);
          if (v19 == i)
          {
            if (i)
            {
              _dispatch_unfair_lock_unlock_slow(result + 100, i);
            }

            goto LABEL_41;
          }

          i = v19;
        }

        v20 = i;
        atomic_compare_exchange_strong_explicit(v14, &v20, i & 0xFFFFFFFD, memory_order_release, memory_order_relaxed);
        if (v20 == i)
        {
          break;
        }
      }

      if ((i & 0xFFFFFFFD) == 0)
      {
        goto LABEL_41;
      }

      __dmb(9u);
      if ((*(StatusReg + 200) & 0xF0000) == 0)
      {
        *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0x10000;
      }

      v6 = *(result + 60) & 7;
    }

    while ((*(result + 60) & 7u) <= v16);
  }

LABEL_41:
  if (a3)
  {

    _os_object_release_internal_n(result, &dword_0 + 2);
  }
}

void _dispatch_root_queue_push_override_stealer(unsigned int *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 - 7 <= 0xFFFFFFF9)
  {
    qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_6D1F0 = a3;
    __break(1u);
LABEL_15:
    v11 = _dispatch_continuation_alloc_from_heap();
    goto LABEL_10;
  }

  v4 = a2;
  v5 = result;
  v9 = result[21];
  if (v9 < 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = (v9 >> 25) & 4;
  }

  if ((v10 & 2) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v10 > 3);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 176);
  if (!v11)
  {
    goto LABEL_15;
  }

  *(StatusReg + 176) = v11->cache;
LABEL_10:
  v11->isa = &unk_64798;
  if (*(v4 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v4 + 8), 2u, memory_order_relaxed) > 0)
  {
    v12 = &_dispatch_root_queues + 16 * (3 * a3 + v7 - 3);
    v11[1].superclass = v4;
    v11[1].cache = v5;
    v11->info = 0;
    v11[1].isa = v11;
    v11->superclass = -1;
    v11->vtable = -1;
    v11->cache = 0;
    *(StatusReg + 976) = v12 + 6;
    v13 = atomic_exchange_explicit(v12 + 6, v11, memory_order_release);
    if (v13)
    {
      *(v13 + 16) = v11;
      *(StatusReg + 976) = 0;
    }

    else
    {
      v12[13] = v11;
      *(StatusReg + 976) = 0;

      _dispatch_root_queue_poke_and_wakeup(&_dispatch_root_queues + 32 * (3 * a3 + v7 - 3), 1, 0, a4);
    }
  }

  else
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

uint64_t *_dispatch_workloop_push_stealer(uint64_t *result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 176);
  if (v7)
  {
    *(StatusReg + 176) = v7[2];
  }

  else
  {
    result = _dispatch_continuation_alloc_from_heap();
    v7 = result;
  }

  *v7 = &unk_64750;
  if (*(a2 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a2 + 8), 2u, memory_order_relaxed) > 0)
  {
    v7[6] = a2;
    v7[7] = 0;
    v7[4] = 0;
    v7[5] = v7;
    v7[1] = -1;
    v7[3] = -1;

    return _dispatch_workloop_push(v5, v7, a3);
  }

  else
  {
    qword_6D1C0 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

atomic_uint *_dispatch_lane_drain_non_barriers(atomic_uint *result, unint64_t *a2, uint64_t a3, int8x16_t a4)
{
  v5 = result;
  v6 = *(result + 40);
  atomic_fetch_and_explicit(result + 7, 0xFFBFFFFFFFFFFFFFLL, memory_order_release);
  v7 = (result + 12);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    if (v6)
    {
      --v6;
      goto LABEL_4;
    }

    if (*a2 > 0xFFF || (*a2 & 0x81) == 0)
    {
      break;
    }

    v6 = 0;
    atomic_fetch_add_explicit(v5 + 7, 0x20000000000uLL, memory_order_relaxed);
LABEL_4:
    v9 = a2[2];
    *(v5 + 13) = v9;
    if (!v9)
    {
      v27 = *v7;
      while (a2 == (v27 & 0xFFFFFFFFFFFFFFF8))
      {
        v28 = v27;
        atomic_compare_exchange_strong_explicit(v7, &v28, 0, memory_order_release, memory_order_relaxed);
        v10 = v28 == v27;
        v27 = v28;
        if (v10)
        {
          goto LABEL_5;
        }
      }

      v34 = a2;
      v9 = a2[2];
      if (!v9)
      {
        v9 = _dispatch_wait_for_enqueuer(a2 + 2, v7);
      }

      *(v5 + 13) = v9;
      a2 = v34;
    }

LABEL_5:
    v10 = *a2 > 0xFFF || (*a2 & 0x81) == 0;
    if (v10)
    {
      result = _dispatch_continuation_redirect_push(v5, a2);
    }

    else
    {
      result = _dispatch_non_barrier_waiter_redirect_or_wake(v5, a2);
    }

    a2 = v9;
    if (!v9)
    {
      goto LABEL_17;
    }

LABEL_12:
    v11 = *a2;
    if (*a2 <= 0xFFF)
    {
      if ((v11 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v11 + 40) & 0xF0) == 0x10 && (a2[10] & 0x80000) != 0)
    {
      goto LABEL_17;
    }
  }

  v25 = *(v5 + 7);
  while ((v25 & 0xFFE0018000000000) == 0)
  {
    v26 = v25;
    atomic_compare_exchange_strong_explicit(v5 + 7, &v26, v25 + 0x20000000000, memory_order_acquire, memory_order_acquire);
    v10 = v26 == v25;
    v25 = v26;
    if (v10)
    {
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 0;
LABEL_17:
  v12 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v13 = v6 << 41;
  if (a2)
  {
    v14 = *(v5 + 40);
    if (v14 >= 2)
    {
      v29 = *a2;
      if (*a2 < 0x1000)
      {
        if ((v29 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if ((*(v29 + 40) & 0xF0) != 0x10 || (a2[10] & 0x80000) == 0)
      {
        goto LABEL_19;
      }

      v13 = (v13 | 0x10000000000) - (v14 << 41);
    }
  }

LABEL_19:
  v15 = *(v5 + 7);
  do
  {
    v16 = v15 - v13;
    v17 = (v15 - v13) & 0xFFFFFF7700000001;
    if (a2)
    {
      if ((v16 & 0x10000000000) != 0)
      {
        v19 = v17 + 0x40018000000000;
      }

      else
      {
        v19 = v17 + (*(v5 + 40) << 41) + 0x40008000000000;
      }

      v20 = v19 & 0x3FFE0000000000;
      v21 = 0x8000000000;
      if ((v15 & 0x8000000000) != 0)
      {
        v21 = 0x8000000001;
      }

      v22 = v17 | v21;
      v23 = v19 & 0xFFE0017FFFFFFFFFLL | v12;
      if (v20 == 0x20000000000000)
      {
        v17 = v23;
      }

      else
      {
        v17 = v22;
      }
    }

    else if ((v15 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit(v5 + 7, 0x8000000000uLL, memory_order_acquire);
      a2 = *(v5 + 13);
      if (a2)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v18 = v15;
    atomic_compare_exchange_strong_explicit(v5 + 7, &v18, v17, memory_order_relaxed, memory_order_relaxed);
    v10 = v18 == v15;
    v15 = v18;
  }

  while (!v10);
  if ((~v16 & 0x1800000000) == 0)
  {
    v30 = HIDWORD(v16) & 7;
    v31 = *(StatusReg + 200);
    if ((HIWORD(v31) & 0xF) < v30)
    {
      *(StatusReg + 200) = v31 & 0xFFF0FFFF | (v30 << 16);
    }
  }

  if (((v17 ^ v16) & 0x40000000000000) != 0)
  {

    return _dispatch_lane_barrier_complete(v5, 0, a3);
  }

  else if ((v17 ^ v16))
  {
    if ((a3 & 1) != 0 || v5[2] == 0x7FFFFFFF || atomic_fetch_add_explicit(v5 + 2, 2u, memory_order_relaxed) > 0)
    {
      v32 = *(v5 + 3);
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_trace_item_push_internal(*(v5 + 3), v5, a4);
      }

      _dispatch_introspection_queue_item_enqueue(v32, v5);
      v33 = *(**(v5 + 3) + 88);

      return v33();
    }

    else
    {
      qword_6D1C0 = "API MISUSE: Resurrection of an object";
      __break(1u);
    }
  }

  else if (a3)
  {

    return _os_object_release_internal_n(v5, &dword_0 + 2);
  }

  return result;
}

uint64_t _dispatch_channel_invoke_cancel_check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 116) & 8) != 0 || (*(a1 + 80) & 0x10000000) == 0)
  {
    return 1;
  }

  if (*(a2 + 35))
  {
    v6 = objc_autoreleasePoolPush();
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(a3 + 24))(a1, *(a1 + 32));
  if (v6)
  {
    objc_autoreleasePoolPop(v6);
  }

  if (v7)
  {
    *(a1 + 116) |= 8u;
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
    {
      _os_object_retain_weak_cold_1();
    }

    return 1;
  }

  result = 0;
  *(a2 + 40) = -1;
  return result;
}

uint64_t _dispatch_mgr_sched_qos2prio(int a1)
{
  if (a1 == 5)
  {
    return 4;
  }

  HIDWORD(v3) = a1 - 9;
  LODWORD(v3) = a1 - 9;
  v2 = v3 >> 2;
  if (v2 > 6)
  {
    return 0;
  }

  else
  {
    return dword_452A0[v2];
  }
}

uint64_t _dispatch_worker_thread(uint64_t a1)
{
  v2 = *(a1 + 32);
  add_explicit = atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire);
  if (add_explicit <= 0)
  {
    _dispatch_worker_thread_cold_2(add_explicit);
  }

  if (v2[18].isa)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 192) = v2 + 18;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    pthread_setname_np(v4);
  }

  isa = v2[8].isa;
  if (isa)
  {
    (*(isa + 2))();
  }

  _dispatch_sigmask();
  _dispatch_introspection_thread_add();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 32);
  v8 = *(a1 + 84);
  if ((v8 & 0x46000FFF) == 0)
  {
    v9 = v8 & 0x80000000;
    if ((v7 & 0x22000000) != 0 || (v7 & 0x3F00) == 0)
    {
      v8 = v9 | 0xF0000;
    }

    else
    {
      v10 = (__clz(__rbit32((v7 >> 8) & 0x3FFF)) << 8) + 256;
      if (((v7 >> 8) & 0x3FFF) == 0)
      {
        v10 = 0;
      }

      v8 = v7 & 0x8C0000FF | v9 | v10;
    }
  }

  v11 = v7 & 0xFFFFFFFF02FFFFFFLL;
  if (v7 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 & 0xFFFFFFFF02FFFFFFLL;
  }

  do
  {
    _dispatch_introspection_runtime_event();
    _dispatch_root_queue_drain(a1, v8, 0x20000u);
    v13 = *(StatusReg + 32);
    if ((v13 & 0x1000000) != 0)
    {
      v14 = v11;
      if (v12)
      {
        goto LABEL_28;
      }

      v14 = v13 & 0xFFFFFFFFFEFFFFFFLL;
LABEL_25:
      if (v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    v14 = v12;
    if (v12 != (v13 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_25;
    }

LABEL_20:
    if (!*(StatusReg + 224))
    {
      goto LABEL_21;
    }

    v14 = 0;
LABEL_28:
    _dispatch_set_priority_and_voucher_slow(v14, 0, 6);
LABEL_21:
    _dispatch_introspection_runtime_event();
    v15 = dispatch_time(0, 5000000000);
  }

  while (!dispatch_semaphore_wait(v2 + 9, v15));
  atomic_fetch_add_explicit((a1 + 100), 1u, memory_order_release);
  _dispatch_root_queue_poke(a1, 1u);
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    v16 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
    if (v16 <= 1)
    {
      _dispatch_worker_thread_cold_1(v16, a1);
    }
  }

  return 0;
}

void _dispatch_root_queue_drain(uint64_t a1, uint64_t a2, unsigned int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 160) = a1;
  *(StatusReg + 200) = a2;
  v7 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
  if (v7)
  {
    if (v7 == -4)
    {
      _dispatch_main_queue_drain_cold_3();
    }

    add_explicit = atomic_fetch_add_explicit((v7 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      if (add_explicit < 0)
      {
        _os_object_retain_weak_cold_1();
      }

      *(v7 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v7);
    }
  }

  *(StatusReg + 216) = -4;
  memset(v41, 0, sizeof(v41));
  _dispatch_last_resort_autorelease_pool_push(v41);
  v11 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v12 = __swp(v3, (a1 + 104));
        if (v3)
        {
          break;
        }

        v37 = -1;
        atomic_compare_exchange_strong_explicit((a1 + 104), &v37, 0, memory_order_relaxed, memory_order_relaxed);
        if (v37 == -1)
        {
          if (!*(a1 + 48))
          {
            goto LABEL_108;
          }

          v38 = _dispatch_root_queue_head_tail_quiesced;
          goto LABEL_85;
        }
      }

      if (v3 != -1)
      {
        break;
      }

      v38 = _dispatch_root_queue_mediator_is_gone;
LABEL_85:
      if (!__DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(a1, v38))
      {
        goto LABEL_108;
      }
    }

    v13 = (v3 + 16);
    v14 = *(v3 + 16);
    if (v14)
    {
      goto LABEL_10;
    }

    *(a1 + 104) = 0;
    v39 = v3;
    atomic_compare_exchange_strong_explicit((a1 + 48), &v39, 0, memory_order_release, memory_order_relaxed);
    if (v39 != v3)
    {
      v14 = *v13;
      if (!*v13)
      {
        v14 = _dispatch_wait_for_enqueuer(v13, a1 + 48);
      }

LABEL_10:
      *(a1 + 104) = v14;
      _dispatch_root_queue_poke(a1, 1, 0, v9);
    }

    if (v11)
    {
      _pthread_workqueue_override_reset();
    }

    v15 = *(StatusReg + 192);
    if (v15)
    {
      (*v15)(a1);
    }

    v16 = *v3;
    if (*v3 >= 0x1000uLL)
    {
      if (*(v16 + 40) == 1)
      {
        (*(v16 + 48))(v3, 0, (a3 >> 21) & 1);
      }

      else
      {
        (*(v16 + 64))(v3, v41, a3 & 0xFFFF0000);
      }

      goto LABEL_74;
    }

    if ((a3 & 0x1000000) != 0)
    {
      v17 = objc_autoreleasePoolPush();
      v16 = *v3;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v3 + 24);
    if ((v16 & 4) != 0)
    {
      *(v3 + 24) = v12;
    }

    if (v18 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v19 = *(v3 + 8);
    if (v19 == -1)
    {
      v22 = 0;
    }

    else
    {
      v20 = *(StatusReg + 200);
      v21 = ((v20 >> 8) & 0xF) != 0 ? 1 << ((BYTE1(v20) & 0xFu) + 7) : 0;
      v22 = v21 | *(StatusReg + 200);
      if ((v19 & 0xFFFFFF) != 0)
      {
        if ((v19 & 0xFFFFFFuLL) >= (v21 & 0xFFFFFF00) && ((v20 & 0x44000000) != 0 || (*(v3 + 8) & 0x10000000) != 0))
        {
          v22 = v19 & 0xFFFFFF;
        }
      }

      else if (v20 >> 12)
      {
        v22 = (256 << ((v20 >> 12) - 1)) | 0xFF;
      }
    }

    v24 = v22 & 0x7FFFFFFF02FFFFFFLL;
    v25 = *(StatusReg + 32);
    if ((v25 & 0x1000000) != 0)
    {
      if (v24)
      {
        goto LABEL_100;
      }

      v24 = v25 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v24 == (v25 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_42;
    }

    if (v24)
    {
      goto LABEL_100;
    }

LABEL_42:
    if (v18 != -1)
    {
      if (*(StatusReg + 224) != v18)
      {
        v24 = 0;
LABEL_100:
        _dispatch_set_priority_and_voucher_slow(v24, v18, v16 & 4 | 2);
        if ((v16 & 0x200) != 0)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      if ((v16 & 4) != 0 && v18)
      {
        os_release(v18);
      }
    }

    if ((v16 & 0x200) != 0)
    {
      goto LABEL_51;
    }

LABEL_48:
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_trace_item_pop_internal(a1, v3, v10);
    }

    _dispatch_introspection_queue_item_dequeue(a1, v3);
LABEL_51:
    if ((v16 & 4) != 0)
    {
      v30 = *(StatusReg + 176);
      v31 = v30 ? *(v30 + 8) + 1 : 1;
      if (v31 > _dispatch_continuation_cache_limit)
      {
        v26 = v3;
        if ((v16 & 8) != 0)
        {
LABEL_62:
          v32 = *(**(v3 + 48) + 40);
          if (v32 != 514)
          {
            _dispatch_workloop_invoke_cold_3(v32);
          }

          v33 = *(v3 + 32);
          v34 = *(v3 + 40);
          v35 = v33;
          if (v34)
          {
            v35 = *(v3 + 32);
            if (v33 == _dispatch_call_block_and_release)
            {
              if (v34[2])
              {
                v35 = v34[2];
              }

              else
              {
                v35 = 0;
              }
            }
          }

          group = *(v3 + 48);
          _dispatch_introspection_callout_entry(v34, v35);
          _dispatch_client_callout(v34, v33);
          _dispatch_introspection_callout_return(v34, v35);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_4(v3);
          }

          _dispatch_introspection_queue_item_complete(v3);
          dispatch_group_leave(group);
          goto LABEL_71;
        }
      }

      else
      {
        v26 = 0;
        *(v3 + 16) = v30;
        *(v3 + 8) = v31;
        *(StatusReg + 176) = v3;
        if ((v16 & 8) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      v26 = 0;
      if ((v16 & 8) != 0)
      {
        goto LABEL_62;
      }
    }

    v28 = *(v3 + 32);
    v27 = *(v3 + 40);
    v29 = v28;
    if (v27)
    {
      v29 = *(v3 + 32);
      if (v28 == _dispatch_call_block_and_release)
      {
        if (v27[2])
        {
          v29 = v27[2];
        }

        else
        {
          v29 = 0;
        }
      }
    }

    _dispatch_introspection_callout_entry(v27, v29);
    _dispatch_client_callout(v27, v28);
    _dispatch_introspection_callout_return(v27, v29);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_workloop_invoke_cold_4(v3);
    }

    _dispatch_introspection_queue_item_complete(v3);
LABEL_71:
    if (!v26)
    {
      if (!v17)
      {
        goto LABEL_74;
      }

LABEL_73:
      objc_autoreleasePoolPop(v17);
      goto LABEL_74;
    }

    _dispatch_continuation_free_to_cache_limit(v26);
    if (v17)
    {
      goto LABEL_73;
    }

LABEL_74:
    if (v15)
    {
      v15[1](a1);
    }

    v36 = WORD1(*(StatusReg + 200)) & 0xF;
    if (v36)
    {
      *(StatusReg + 200) &= 0xFFF0FFFFuLL;
      v11 = v36 != 15;
    }

    else
    {
      v11 = 0;
    }

    if (*(StatusReg + 960))
    {
      break;
    }

    *(StatusReg + 960) = 0;
  }

LABEL_108:
  _dispatch_last_resort_autorelease_pool_pop(v41);
  *(StatusReg + 216) = 0;
  *(StatusReg + 40) = 0;
  *(StatusReg + 200) = 0;
  *(StatusReg + 160) = 0;
}