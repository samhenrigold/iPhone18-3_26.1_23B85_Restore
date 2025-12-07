uint64_t dispatch_workloop_copy_current()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  v1 = v0 == -4 || v0 == 0;
  if (v1 || *(*v0 + 16) != 18)
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
  return !v1 && *(*v0 + 16) == 18 && (*(v0 + 60) & 7u) > *(v0 + 100);
}

uint64_t _dispatch_workloop_create(const char *a1, uint64_t a2)
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

  if (_dispatch_kevent_workqueue_enabled)
  {
    v6 = 0x2000000000;
  }

  else
  {
    v6 = 0x1000000000;
  }

  result = _dispatch_object_alloc(_OS_dispatch_workloop_vtable, 208);
  if ((a2 & 0x180000000000000) != 0)
  {
    *(result + 8) += 2;
    if (*(*result + 16) == 19)
    {
      ++*(result + 8);
    }
  }

  *(result + 16) = -1985229329;
  *(result + 80) = v3;
  *(result + 56) = v6 | a2 | 0x1FFE0000000000;
  *(result + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(result + 72) = v5;
  *(result + 24) = &off_74680;
  if ((a2 & 0x180000000000000) == 0)
  {
    *(result + 84) = -2080358400;
  }

  return result;
}

void dispatch_workloop_set_autorelease_frequency(dispatch_workloop_t workloop, dispatch_autorelease_frequency_t frequency)
{
  v2 = *(workloop + 20);
  if (frequency == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
  {
    do
    {
      v3 = v2 & 0xFFFCFFFF | 0x10000;
      if (v3 == v2)
      {
        break;
      }

      v4 = v2;
      atomic_compare_exchange_strong_explicit((workloop + 80), &v4, v3, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v2;
      v2 = v4;
    }

    while (!v5);
  }

  else
  {
    do
    {
      v6 = v2 & 0xFFFCFFFF | 0x20000;
      if (v6 == v2)
      {
        break;
      }

      v7 = v2;
      atomic_compare_exchange_strong_explicit((workloop + 80), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      v5 = v7 == v2;
      v2 = v7;
    }

    while (!v5);
  }

  v8 = *(workloop + 7);
  if ((~v8 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v8);
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

  result = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
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
    v3 = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
    *(a1 + 200) = v3;
  }

  v4 = 0;
  *v3 |= 0x40u;
  return v4;
}

void dispatch_workloop_set_os_workgroup(dispatch_workloop_t workloop, os_workgroup_t workgroup)
{
  v3 = *(workloop + 7);
  if ((~v3 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v3);
  }

  v5 = *(workloop + 25);
  if (!v5)
  {
    v5 = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
    *(workloop + 25) = v5;
  }

  v6 = *(v5 + 32);
  if (v6)
  {
    _os_object_release(v6);
  }

  _os_object_retain(workgroup);
  *(*(workloop + 25) + 32) = workgroup;
}

int *dispatch_workloop_set_cpupercent(uint64_t a1, char a2, int a3)
{
  v4 = *(a1 + 56);
  if ((~v4 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v4);
  }

  result = *(a1 + 200);
  if (!result)
  {
    result = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
    *(a1 + 200) = result;
  }

  v8 = *result;
  if ((*result & 9) == 0)
  {
    dispatch_workloop_set_cpupercent_cold_2();
  }

  *(result + 20) = a2;
  result[6] = a3;
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
    v5 = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
    *(a1 + 200) = v5;
  }

  result = *a2;
  *(v5 + 40) = *a2;
  **(a1 + 200) |= 0x20u;
  return result;
}

void _dispatch_workloop_dispose(void *a1, _BYTE *a2)
{
  v3 = a1[7];
  v4 = 0x1FFE1000000000;
  if (_dispatch_kevent_workqueue_enabled)
  {
    v4 = 0x1FFE2000000000;
  }

  if (v3 != v4)
  {
    _dispatch_workloop_dispose_cold_1(v3);
  }

  for (i = 0; i != 6; ++i)
  {
    v7 = &a1[i];
    v8 = a1[i + 19];
    if (v8)
    {
      _dispatch_workloop_dispose_cold_2(v8);
    }

    v7[19] = 512;
    v7[13] = 512;
  }

  v9 = a1[6];
  if (v9)
  {
    free(v9);
    a1[6] = 0;
  }

  v10 = a1[25];
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

    v12 = a1[25];
    if (v12)
    {
      if (v12[4])
      {
        _os_object_release(v12[4]);
        v12 = a1[25];
      }

      free(v12);
    }
  }

  _dispatch_queue_dispose(a1, a2);
}

void _dispatch_workloop_activate(uint64_t result)
{
  v1 = (result + 56);
  if ((~atomic_fetch_and_explicit((result + 56), 0xFEFFFFFFFFFFFFFFLL, memory_order_relaxed) & 0x180000000000000) == 0)
  {
    v3 = (result + 200);
    v4 = *(result + 200);
    if (!v4)
    {
LABEL_21:
      _dispatch_workloop_activate_cold_4(result, v1);
      return;
    }

    memset(&v11, 0, sizeof(v11));
    pthread_attr_init(&v11);
    v5 = *v4;
    if ((*v4 & 8) != 0)
    {
      *(result + 84) |= v4[1] | 0x40000000;
    }

    if (v5)
    {
      pthread_attr_setschedparam(&v11, v4 + 1);
      *(result + 24) = &_dispatch_custom_workloop_root_queue;
    }

    v6 = *(v4 + 4);
    if (v6)
    {
      *(result + 24) = &_dispatch_custom_workloop_root_queue;
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

      *(result + 24) = &_dispatch_custom_workloop_overcommit_root_queue;
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
      if ((v8->sched_priority & 0x47) != 0 || (v9 = v8[4]) != 0 && _os_workgroup_get_backing_workinterval(v9))
      {
        v10 = _pthread_workloop_create();
        if (v10 <= 44)
        {
          if (v10)
          {
            if (v10 == 33)
            {
              _dispatch_workloop_activate_cold_2(result);
            }
          }

          else
          {
            *v4 |= 0x10u;
          }
        }

        else if (v10 == 45)
        {
          _dispatch_workloop_activate_cold_3(v3, result, result);
        }

        else if (v10 == 78)
        {
          _dispatch_workloop_activate_simulator_fallback(result, &v11.__sig);
        }
      }
    }

    pthread_attr_destroy(&v11);
    goto LABEL_21;
  }
}

void _dispatch_workloop_wakeup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 4) == 0)
  {
    if ((a3 & 1) == 0)
    {
      _dispatch_workloop_wakeup_cold_4(a3);
    }

    if ((a3 & 8) == 0)
    {
      v4 = *(a1 + 56);
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
        atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v10, memory_order_release, memory_order_relaxed);
      }

      while (v4 != v6);
      if (v6 >> 55)
      {
        _dispatch_workloop_wakeup_cold_3(v6);
      }

      v11 = v10 ^ v6;
      if (v11)
      {
        if ((v10 & 0x2000000000) != 0)
        {

          _dispatch_event_loop_poke(a1, v10, (&dword_0 + 1));
        }

        else
        {
          _dispatch_workloop_wakeup_cold_1();
        }

        return;
      }

      if ((_dispatch_workloop_wakeup_cold_2(v11, v10, a1, a3) & 1) == 0)
      {
        return;
      }
    }

LABEL_27:

    _os_object_release_internal_n(a1, 2);
    return;
  }

  _dispatch_workloop_barrier_complete(a1, a2, a3);
}

void _dispatch_workloop_invoke(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = a3;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  }

  if ((a3 & 2) != 0)
  {
    v5 = a3 & 0x40000;
    v6 = 0x40020000000001;
  }

  else
  {
    v85 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v88 = *(StatusReg + 24);
    v87 = (StatusReg + 24);
    v89 = v88 & 0xFFFFFFFC;
    v5 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v90 = 0x4000000000;
    }

    else
    {
      v90 = 1;
    }

    if ((a3 & 0x40001) == 0x40000)
    {
      v92 = 0xFFE00000FFFFFFFCLL;
    }

    else
    {
      v92 = 0xFFE00040FFFFFFFCLL;
    }

    v93 = v87[44];
    v94 = (v93 >> 8) & 0xF;
    v95 = v93 >> 12;
    v96 = HIWORD(v93) & 0xF;
    if (v94 <= v95)
    {
      v94 = v95;
    }

    if (v94 > v96)
    {
      v96 = v94;
    }

LABEL_249:
    for (i = *(a1 + 56); ; i = v102)
    {
      while ((i & v92) != 0)
      {
        if ((a3 & 1) != 0 || (v103 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v103, i ^ v90, memory_order_acquire, memory_order_acquire), v103 == i))
        {
          v6 = 0;
          v21 = 0;
          LOBYTE(v3) = a3;
          goto LABEL_231;
        }

        i = v103;
      }

      if ((i & 0x1000000000) != 0)
      {
        v98 = HIDWORD(i) & 7;
        if (v98 > v96)
        {
          v117 = v85;
          _dispatch_workloop_invoke_cold_2(v87, BYTE4(i) & 7, (v87 + 44));
          v85 = v117;
          v96 = v98;
          goto LABEL_249;
        }
      }

      v99 = (i >> 40) & 1;
      if (!((v85 + i) >> 53))
      {
        LODWORD(v99) = 1;
      }

      v100 = v99 ? 0x60000000000000 : 0x20000000000000;
      v101 = i & 0x7700000001 | v89 | v100;
      v102 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v102, v101, memory_order_acquire, memory_order_acquire);
      if (v102 == i)
      {
        break;
      }
    }

    v3 = a3;
    v104 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v104 = v90 | 0x60000000000000;
    }

    v105 = v101 & v104;
    v106 = i & 0x3FFE0000000000;
    v6 = v105 - v106;
    if (v105 == v106)
    {
      v21 = 0;
      goto LABEL_231;
    }
  }

  if (v5)
  {
    v107 = 0;
    goto LABEL_21;
  }

  v7 = *(a1 + 84);
  v8 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(v8 + 200);
  if (v9)
  {
    v10 = v7 >> 12;
    v11 = v7 & 0xFFF;
    if ((v7 & 0xFFF) != 0)
    {
      if ((v9 & 0xFFFu) > v11)
      {
        v11 = v9 & 0xFFF;
      }

      if (v10 <= v11 >> 8)
      {
        v12 = 0x40000000;
      }

      else
      {
        v12 = 1140912128;
      }

      v13 = v12 & v7;
      v14 = v9 & 0x880F0000 | v11;
    }

    else
    {
      v15 = v9 | 0x40000000;
      if ((v9 & 0xFFF) == 0)
      {
        v15 = *(v8 + 200);
      }

      if (v10 <= ((v15 >> 8) & 0xF))
      {
        goto LABEL_20;
      }

      v14 = v15 & 0xFFFF0FFF;
      v13 = v7 & 0x400F000;
    }

    v15 = v14 | v13;
  }

  else
  {
    v15 = v7 & 0xFFF0FFFF;
  }

LABEL_20:
  *(v8 + 200) = v15;
  v107 = v9 & 0xFFF0FFFF;
LABEL_21:
  if ((*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  v16 = (*(a1 + 80) << 8) & 0x3000000 | v3 & 0xFCEDFFFF | 0x100000;
  if (((*(a1 + 80) << 8) & 0x3000000) == 0)
  {
    v16 = v3 & 0xFFEDFFFF | 0x100000;
  }

  v111 = a1 + 152;
  v116 = a1 + 104;
  v17 = v16 & 0x1000002;
  v115 = v16;
  v112 = (v16 >> 21) & 1;
  v18 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v108 = v16 & 0x1000002;
  v109 = v3;
  while (2)
  {
    v110 = v6;
    if (v17 == 2)
    {
      _dispatch_last_resort_autorelease_pool_push(a2);
      v20 = *(a1 + 200);
      if (v20 && (*v20 & 0x20) != 0)
      {
        *(v19 + 192) = v20 + 40;
      }

      v118 = *(v18 + 160);
      *(v18 + 160) = a1;
      *(v18 + 168) = &v118;
LABEL_31:
      v21 = (&dword_4 + 2);
      while (v21)
      {
        v22 = v21;
        v21 = (v21 - 1);
        v23 = (v111 + 8 * v21);
        if (*v23)
        {
          v24 = v22;
          v25 = v22 << 32;
          v26 = *(a1 + 56);
          while (1)
          {
            if ((v26 & 0x700000000uLL) <= v25)
            {
              goto LABEL_40;
            }

            if ((v26 & 0x8000000000) != 0)
            {
              break;
            }

            v27 = v26;
            atomic_compare_exchange_strong_explicit((a1 + 56), &v27, v26 & 0xFFFFFF78FFFFFFFFLL | v25, memory_order_relaxed, memory_order_relaxed);
            v39 = v27 == v26;
            v26 = v27;
            if (v39)
            {
              _dispatch_workloop_invoke_cold_3(v18 + 232);
LABEL_40:
              *(a1 + 100) = v22;
              v28 = (v116 + 8 * v21);
              v29 = *v28;
              if (!*v28)
              {
                v29 = _dispatch_wait_for_enqueuer(v28, v23);
              }

              while (2)
              {
                if ((*v29 & 0xFFFFFFFFFFFFF001) == 1)
                {
                  v76 = a2;
                  *(a2 + 4) = v24;
                  a2[1] = v29;
                  *(a1 + 100) = 0;
                  *(v18 + 160) = v118;
                  *(v18 + 192) = 0;
                  v21 = *(a1 + 24);
                  v6 = v110;
                  goto LABEL_208;
                }

                v30 = *(v29 + 16);
                v31 = v24 - 1;
                *(v116 + 8 * v31) = v30;
                if (!v30)
                {
                  v45 = *(v111 + 8 * v31);
                  while (v29 == (v45 & 0xFFFFFFFFFFFFFFF8))
                  {
                    v46 = v45;
                    atomic_compare_exchange_strong_explicit((v111 + 8 * v31), &v46, 0, memory_order_release, memory_order_relaxed);
                    v39 = v46 == v45;
                    v45 = v46;
                    if (v39)
                    {
                      goto LABEL_44;
                    }
                  }

                  v30 = *(v29 + 16);
                  if (!v30)
                  {
                    v30 = _dispatch_wait_for_enqueuer((v29 + 16), v111 + 8 * v31);
                  }

                  *(v116 + 8 * v31) = v30;
                }

LABEL_44:
                if (*(v18 + 40))
                {
                  _dispatch_return_to_kernel();
                }

                v32 = *(v18 + 192);
                if (v32)
                {
                  (*v32)(a1);
                }

                v33 = *v29;
                if (*v29 >= 0x1000uLL)
                {
                  if (*(v33 + 16) == 1)
                  {
                    (*(v33 + 24))(v29, 0, v112);
                  }

                  else
                  {
                    (*(v33 + 48))(v29, a2, v115 & 0xFEFD0000);
                  }

                  if (v32)
                  {
                    goto LABEL_70;
                  }

                  goto LABEL_71;
                }

                v34 = *(v29 + 24);
                if ((v33 & 4) != 0)
                {
                  *(v29 + 24) = -1;
                }

                if (v34 != -1 && MEMORY[0xFFFFFC100])
                {
                  kdebug_trace();
                }

                v35 = *(v29 + 8);
                if (v35 == -1)
                {
                  v38 = 0;
                }

                else
                {
                  v36 = *(v18 + 200);
                  if (((v36 >> 8) & 0xF) != 0)
                  {
                    v37 = 1 << ((BYTE1(v36) & 0xFu) + 7);
                  }

                  else
                  {
                    v37 = 0;
                  }

                  v38 = v37 | *(v18 + 200);
                  if ((v35 & 0xFFFFFF) != 0)
                  {
                    if ((v35 & 0xFFFFFFuLL) >= (v37 & 0xFFFFFF00))
                    {
                      v39 = (v36 & 0x44000000) == 0 && (*(v29 + 8) & 0x10000000) == 0;
                      if (!v39)
                      {
                        v38 = v35 & 0xFFFFFF;
                      }
                    }
                  }

                  else if (v36 >> 12)
                  {
                    v38 = (256 << ((v36 >> 12) - 1)) | 0xFF;
                  }
                }

                v40 = v38 & 0x7FFFFFFF02FFFFFFLL;
                v41 = *(v18 + 32);
                if ((v41 & 0x1000000) != 0)
                {
                  if (!v40)
                  {
                    v40 = v41 & 0xFFFFFFFFFEFFFFFFLL;
                    goto LABEL_102;
                  }

LABEL_109:
                  _dispatch_set_priority_and_voucher_slow(v40, v34, v33 & 4 | 2);
                }

                else
                {
                  if (v40 == (v41 & 0xFFFFFFFF76FFFFFFLL))
                  {
                    goto LABEL_77;
                  }

LABEL_102:
                  if (v40)
                  {
                    goto LABEL_109;
                  }

LABEL_77:
                  if (v34 != -1)
                  {
                    if (*(v18 + 224) != v34)
                    {
                      v40 = 0;
                      goto LABEL_109;
                    }

                    if ((v33 & 4) != 0 && v34 && atomic_fetch_add_explicit((v34 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
                    {
                      _dispatch_block_invoke_direct_cold_4();
                    }
                  }
                }

                if ((v33 & 4) != 0)
                {
                  v43 = *(v18 + 176);
                  if (v43)
                  {
                    v44 = *(v43 + 8) + 1;
                  }

                  else
                  {
                    v44 = 1;
                  }

                  v42 = v29;
                  if (v44 <= _dispatch_continuation_cache_limit)
                  {
                    v42 = 0;
                    *(v29 + 16) = v43;
                    *(v29 + 8) = v44;
                    *(v18 + 176) = v29;
                  }
                }

                else
                {
                  v42 = 0;
                }

                if ((v33 & 8) != 0)
                {
                  _dispatch_workloop_invoke_cold_12();
                }

                else
                {
                  _dispatch_client_callout(*(v29 + 40), *(v29 + 32));
                  if (MEMORY[0xFFFFFC100])
                  {
                    _dispatch_workloop_invoke_cold_8(v29);
                  }
                }

                if (v42)
                {
                  _dispatch_continuation_free_to_cache_limit(v42);
                }

                ++*(v18 + 208);
                if (v32)
                {
LABEL_70:
                  v32[1](a1);
                }

LABEL_71:
                if (!v30)
                {
                  goto LABEL_31;
                }

                v24 = *(a1 + 100);
                v29 = v30;
                if ((*(a1 + 60) & 7u) > v24)
                {
                  goto LABEL_31;
                }

                continue;
              }
            }
          }

          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          goto LABEL_31;
        }
      }

      v6 = v110 & 1 | 0x40020000000000;
      *(v18 + 160) = v118;
      *(v18 + 192) = 0;
      v76 = a2;
LABEL_208:
      v118 = *(v18 + 160);
      *(v18 + 160) = a1;
      *(v18 + 168) = &v118;
      _dispatch_last_resort_autorelease_pool_pop(v76);
      *(v18 + 160) = v118;
      v17 = v108;
      LOBYTE(v3) = v109;
    }

    else
    {
      v47 = *(a1 + 200);
      if (v47 && (*v47 & 0x20) != 0)
      {
        *(v19 + 192) = v47 + 40;
      }

      v118 = *(v19 + 160);
      *(v19 + 160) = a1;
      *(v19 + 168) = &v118;
LABEL_118:
      v21 = (&dword_4 + 2);
      while (v21)
      {
        v48 = v21;
        v21 = (v21 - 1);
        v49 = (v111 + 8 * v21);
        if (*v49)
        {
          v50 = v48;
          v51 = v48 << 32;
          v52 = *(a1 + 56);
          while (1)
          {
            if ((v52 & 0x700000000uLL) <= v51)
            {
              goto LABEL_127;
            }

            if ((v52 & 0x8000000000) != 0)
            {
              break;
            }

            v53 = v52;
            atomic_compare_exchange_strong_explicit((a1 + 56), &v53, v52 & 0xFFFFFF78FFFFFFFFLL | v51, memory_order_relaxed, memory_order_relaxed);
            v39 = v53 == v52;
            v52 = v53;
            if (v39)
            {
              _dispatch_workloop_invoke_cold_3(v19 + 232);
LABEL_127:
              *(a1 + 100) = v48;
              v54 = (v116 + 8 * v21);
              v55 = *v54;
              if (!*v54)
              {
                v55 = _dispatch_wait_for_enqueuer(v54, v49);
              }

              while (2)
              {
                if ((*v55 & 0xFFFFFFFFFFFFF001) == 1)
                {
                  *(a2 + 4) = v50;
                  a2[1] = v55;
                  *(a1 + 100) = 0;
                  *(v19 + 160) = v118;
                  *(v19 + 192) = 0;
                  v21 = *(a1 + 24);
                  LOBYTE(v3) = v109;
                  v6 = v110;
                  goto LABEL_210;
                }

                v56 = *(v55 + 16);
                v57 = v50 - 1;
                *(v116 + 8 * v57) = v56;
                if (!v56)
                {
                  v74 = *(v111 + 8 * v57);
                  while (v55 == (v74 & 0xFFFFFFFFFFFFFFF8))
                  {
                    v75 = v74;
                    atomic_compare_exchange_strong_explicit((v111 + 8 * v57), &v75, 0, memory_order_release, memory_order_relaxed);
                    v39 = v75 == v74;
                    v74 = v75;
                    if (v39)
                    {
                      goto LABEL_131;
                    }
                  }

                  v56 = *(v55 + 16);
                  if (!v56)
                  {
                    v56 = _dispatch_wait_for_enqueuer((v55 + 16), v111 + 8 * v57);
                  }

                  *(v116 + 8 * v57) = v56;
                }

LABEL_131:
                if (*(v19 + 40))
                {
                  _dispatch_return_to_kernel();
                }

                v58 = *(v19 + 192);
                if (v58)
                {
                  (*v58)(a1);
                }

                v59 = *v55;
                if (*v55 >= 0x1000uLL)
                {
                  if (*(v59 + 16) == 1)
                  {
                    (*(v59 + 24))(v55, 0, v112);
                  }

                  else
                  {
                    (*(v59 + 48))(v55, a2, v115 & 0xFFFD0000);
                  }

                  if (v58)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_143;
                }

                if ((v115 & 0x1000000) != 0)
                {
                  v114 = _dispatch_autorelease_pool_push();
                  v59 = *v55;
                }

                else
                {
                  v114 = 0;
                }

                v60 = *(v55 + 24);
                if ((v59 & 4) != 0)
                {
                  *(v55 + 24) = -1;
                }

                if (v60 != -1 && MEMORY[0xFFFFFC100])
                {
                  kdebug_trace();
                }

                v61 = *(v55 + 8);
                if (v61 == -1)
                {
                  v64 = 0;
                }

                else
                {
                  v62 = *(v19 + 200);
                  if (((v62 >> 8) & 0xF) != 0)
                  {
                    v63 = 1 << ((BYTE1(v62) & 0xFu) + 7);
                  }

                  else
                  {
                    v63 = 0;
                  }

                  v64 = v63 | *(v19 + 200);
                  v65 = v61 & 0xFFFFFF;
                  if ((v61 & 0xFFFFFF) != 0)
                  {
                    v66 = v63 & 0xFFFFFF00;
                    if ((v62 & 0x44000000) == 0 && (*(v55 + 8) & 0x10000000) == 0)
                    {
                      v68 = v64;
                    }

                    else
                    {
                      v68 = v61 & 0xFFFFFF;
                    }

                    if (v65 >= v66)
                    {
                      v64 = v68;
                    }
                  }

                  else if (v62 >> 12)
                  {
                    v64 = (256 << ((v62 >> 12) - 1)) | 0xFF;
                  }
                }

                v69 = v64 & 0x7FFFFFFF02FFFFFFLL;
                v70 = *(v19 + 32);
                if ((v70 & 0x1000000) != 0)
                {
                  if (!v69)
                  {
                    v69 = v70 & 0xFFFFFFFFFEFFFFFFLL;
                    goto LABEL_196;
                  }

LABEL_202:
                  _dispatch_set_priority_and_voucher_slow(v69, v60, v59 & 4 | 2);
                }

                else
                {
                  if (v69 == (v70 & 0xFFFFFFFF76FFFFFFLL))
                  {
                    goto LABEL_169;
                  }

LABEL_196:
                  if (v69)
                  {
                    goto LABEL_202;
                  }

LABEL_169:
                  if (v60 != -1)
                  {
                    if (*(v19 + 224) != v60)
                    {
                      v69 = 0;
                      goto LABEL_202;
                    }

                    if ((v59 & 4) != 0 && v60 && atomic_fetch_add_explicit((v60 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
                    {
                      _dispatch_block_invoke_direct_cold_4();
                    }
                  }
                }

                if ((v59 & 4) != 0)
                {
                  v72 = *(v19 + 176);
                  if (v72)
                  {
                    v73 = *(v72 + 8) + 1;
                  }

                  else
                  {
                    v73 = 1;
                  }

                  v71 = v55;
                  if (v73 <= _dispatch_continuation_cache_limit)
                  {
                    v71 = 0;
                    *(v55 + 16) = v72;
                    *(v55 + 8) = v73;
                    *(v19 + 176) = v55;
                  }
                }

                else
                {
                  v71 = 0;
                }

                if ((v59 & 8) != 0)
                {
                  _dispatch_workloop_invoke_cold_6();
                }

                else
                {
                  _dispatch_client_callout(*(v55 + 40), *(v55 + 32));
                  if (MEMORY[0xFFFFFC100])
                  {
                    _dispatch_workloop_invoke_cold_8(v55);
                  }
                }

                if (v71)
                {
                  _dispatch_continuation_free_to_cache_limit(v71);
                }

                if (v114)
                {
                  _dispatch_autorelease_pool_pop(v114);
                }

                ++*(v19 + 208);
                if (v58)
                {
LABEL_142:
                  v58[1](a1);
                }

LABEL_143:
                if (!v56)
                {
                  goto LABEL_118;
                }

                v50 = *(a1 + 100);
                v55 = v56;
                if ((*(a1 + 60) & 7u) > v50)
                {
                  goto LABEL_118;
                }

                continue;
              }
            }
          }

          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          goto LABEL_118;
        }
      }

      v6 = v110 & 1 | 0x40020000000000;
      *(v19 + 160) = v118;
      *(v19 + 192) = 0;
      LOBYTE(v3) = v109;
LABEL_210:
      v17 = v108;
    }

    if (v21 + 1 > 1)
    {
      break;
    }

    v77 = *(a1 + 56);
    while (1)
    {
      v78 = v77;
      v79 = v77 - v6;
      v80 = v79 & 0xFFFFFFF700000001;
      if (!(v78 >> 55))
      {
        break;
      }

LABEL_217:
      v77 = v78;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v77, v80, memory_order_release, memory_order_relaxed);
      if (v77 == v78)
      {
        if ((~v78 & 0x1800000000) != 0 || (v81 = HIDWORD(v78) & 7, v82 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)), v83 = *(v82 + 200), (HIWORD(v83) & 0xF) >= v81))
        {
          v6 = 0;
          v21 = 0;
        }

        else
        {
          v6 = 0;
          v21 = 0;
          *(v82 + 200) = v83 & 0xFFF0FFFF | (v81 << 16);
        }

        goto LABEL_229;
      }
    }

    if ((v78 & 0x8000000000) == 0)
    {
      if (v21)
      {
        v80 = v79 & 0xFFFFFF7700000001 | 0x8000000000;
      }

      else
      {
        v80 = v79 & 0xFFFFFFF000000001;
      }

      goto LABEL_217;
    }

    atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
    v21 = *(v19 + 160);
    if ((v3 & 1) != 0 || ((*v21)[2] & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

LABEL_229:
  if ((v115 & 0x40000) == 0)
  {
    v84 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v84 + 200) = *(v84 + 200) & 0xF0000 | v107;
  }

LABEL_231:
  if ((v3 & 1) == 0 && MEMORY[0xFFFFFC100])
  {
    _dispatch_workloop_invoke_cold_8(a1);
  }

  if (v21)
  {
    _dispatch_queue_invoke_finish(a1, a2, v21, v6);
  }

  else
  {
    _os_object_release_internal_n(a1, 2);
  }
}

void _dispatch_workloop_barrier_complete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = a2 << 32;
  v7 = (a1 + 192);
LABEL_2:
  v8 = v7;
  v9 = 6;
  do
  {
    if (*v8)
    {
      v10 = *(v8 - 6);
      if (!v10)
      {
        v10 = _dispatch_wait_for_enqueuer(v8 - 6, v8);
      }

      if (*v10 <= 0xFFFuLL && (*v10 & 0x81) != 0)
      {

        _dispatch_workloop_drain_barrier_waiter(a1, v10, v9, a3, 0);
        return;
      }

      v5 = 1;
    }

    --v8;
    --v9;
  }

  while (v9);
  if (v5 && (a3 & 1) == 0)
  {
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    a3 = a3 | 1;
  }

LABEL_15:
  v12 = *(a1 + 56);
  while (1)
  {
    if ((~v12 & 0x2000000002) == 0 && (v12 & 0x800000001) != 0)
    {
      v19 = v5;
      _dispatch_event_loop_ensure_ownership(a1);
      v5 = v19;
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_15;
    }

    v14 = (v12 & 0x700000000) >= v6 ? v12 : v12 & 0xFFFFFFF000000001 | v6;
    v15 = (v14 & 0xFFFFFFF700000001) - 0x40020000000000;
    if (v5)
    {
      break;
    }

    if ((v12 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      goto LABEL_2;
    }

    if ((v12 & 0x2000000000) != 0)
    {
      v16 = v15 & 0xFFFFFFF000000000;
      v17 = v12;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v17, v16, memory_order_release, memory_order_relaxed);
      if (v17 == v12)
      {
        goto LABEL_50;
      }

LABEL_30:
      v12 = v17;
    }

    else
    {
      v16 = v15 & 0xFFFFFFF000000001;
      v18 = v12;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v18, v16, memory_order_release, memory_order_relaxed);
      if (v18 == v12)
      {
        goto LABEL_41;
      }

      v12 = v18;
    }
  }

  v16 = v15 | 1;
  v17 = v12;
  atomic_compare_exchange_strong_explicit((a1 + 56), &v17, v16, memory_order_release, memory_order_relaxed);
  if (v17 != v12)
  {
    goto LABEL_30;
  }

  if ((v12 & 0x2000000000) == 0)
  {
LABEL_41:
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if ((~v12 & 0x1800000000) == 0)
    {
      v21 = HIDWORD(v12) & 7;
      v22 = *(StatusReg + 200);
      if ((HIWORD(v22) & 0xF) < v21)
      {
        *(StatusReg + 200) = v22 & 0xFFF0FFFF | (v21 << 16);
      }
    }

    if (v5)
    {
      if ((v16 ^ v12))
      {
        if ((v16 & 0x2000000000) != 0)
        {

          _dispatch_event_loop_poke(a1, v16, (&dword_0 + 1));
        }

        else
        {
          _dispatch_workloop_barrier_complete_cold_2();
        }

        return;
      }

      if ((_dispatch_workloop_barrier_complete_cold_3(v16, a1, a3) & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_52;
  }

LABEL_50:
  if ((v12 & 3) == 2 && (v16 & 1) == 0)
  {
LABEL_52:
    if (a3)
    {

      _os_object_release_internal_n(a1, 2);
    }

    return;
  }

  _dispatch_event_loop_end_ownership(a1, v12, v16, a3);
}

void _dispatch_workloop_push(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (*a2 > 0xFFF || (*a2 & 0x81) == 0)
  {
    v4 = *(a1 + 84);
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
    *(StatusReg + 976) = a1 + 8 * (v6 - 1) + 152;
    v8 = atomic_exchange_explicit((a1 + 8 * (v6 - 1) + 152), a2, memory_order_release);
    if (v8)
    {
      *(v8 + 16) = a2;
      *(StatusReg + 976) = 0;
    }

    else
    {
      atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);
      *(a1 + 8 * (v6 - 1) + 104) = a2;
      *(StatusReg + 976) = 0;
      _dispatch_workloop_wakeup(a1, v6, 3);
    }
  }

  else
  {
    _dispatch_workloop_push_waiter(a1, a2, a3);
  }
}

void _dispatch_workloop_push_waiter(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v3 = __clz(__rbit32((*(a2 + 2) >> 8) & 0x3FFF));
  if (((*(a2 + 2) >> 8) & 0x3FFF) != 0)
  {
    LODWORD(v4) = v3 + 1;
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 <= a3)
  {
    LODWORD(v4) = a3;
  }

  if (v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 4;
  }

  a2[2] = 0;
  v5 = (a1 + 8 * (v4 - 1) + 152);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = v5;
  v7 = atomic_exchange_explicit(v5, a2, memory_order_release);
  if (v7)
  {
    *(v7 + 16) = a2;
    *(StatusReg + 976) = 0;
    return;
  }

  v8 = a1 + 8 * (v4 - 1);
  *(v8 + 104) = a2;
  *(StatusReg + 976) = 0;
  v9 = *a2;
  if ((*a2 & 0x80) != 0 && ((v10 = *(a1 + 24), v10 < &_dispatch_root_queues) || v10 >= &qword_74A80))
  {
    a2[7] = a1;
    *a2 = v9 & 0xFFFFFFFFFFFFFF7FLL;
    atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);

    _dispatch_workloop_wakeup(a1, v4, 3);
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = v4 << 32;
    v13 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
    do
    {
      v14 = v11;
      v15 = v11 & 0xFFFFFFF8FFFFFFFFLL | v12;
      if (v11 & 0x1000000000 | v12 & 0x1000000000)
      {
        v15 |= 0x800000000uLL;
      }

      if ((v11 & 0x700000000) < v12)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      v17 = v16 | 0x8000000000;
      v18 = v13 | v16 & 0x7700000001;
      if ((v11 & 0x40FFFFFFFDLL) != 0)
      {
        v18 = v17;
      }

      atomic_compare_exchange_strong_explicit((a1 + 56), &v11, v18, memory_order_release, memory_order_relaxed);
    }

    while (v11 != v14);
    if ((v18 & 0x2000000000) != 0 && a2[6] != -4)
    {
      *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 25) == *(StatusReg + 24)));
    }

    if (((v18 ^ v14) & 0x40000000000000) != 0)
    {
      if ((*(a2 + 106) & 4) == 0)
      {
        goto LABEL_40;
      }

      v19 = *(v8 + 104);
      if (!v19)
      {
        v27 = a2;
        v28 = a1;
        v29 = a1 + 8 * (v4 - 1) + 152;
        v26 = v4;
        v31 = a1 + 8 * (v4 - 1);
        v24 = _dispatch_wait_for_enqueuer((v8 + 104), v5);
        v5 = v29;
        v8 = v31;
        v4 = v26;
        a2 = v27;
        v19 = v24;
        a1 = v28;
      }

      if (v19 == a2)
      {
        v30 = v8;
        *(a2 + 106) |= 8u;
        if ((*a2 & 0x80) != 0)
        {
          a2[7] = a1;
        }

        v20 = a2[2];
        *(v30 + 104) = v20;
        if (!v20)
        {
          v21 = *v5;
          while ((v21 & 0xFFFFFFFFFFFFFFF8) == a2)
          {
            v22 = v21;
            atomic_compare_exchange_strong_explicit(v5, &v22, 0, memory_order_release, memory_order_relaxed);
            v23 = v22 == v21;
            v21 = v22;
            if (v23)
            {
              return;
            }
          }

          v25 = a2[2];
          if (!v25)
          {
            v25 = _dispatch_wait_for_enqueuer(a2 + 2, v5);
          }

          *(v30 + 104) = v25;
        }
      }

      else
      {
LABEL_40:

        _dispatch_workloop_barrier_complete(a1, v4, 0);
      }
    }

    else
    {
      if (((v18 ^ v14) & 0x700000000) == 0 || (v18 & 0xFF80004000000000) != 0)
      {
        return;
      }

      if ((v18 & 1) == 0)
      {
        if ((v18 & 0x2000000000) != 0 || (v18 & 0xFFFFFFFC) == 0)
        {
          return;
        }

        goto LABEL_33;
      }

      if ((v18 & 0x2000000000) == 0)
      {
LABEL_33:

        _dispatch_queue_wakeup_with_override_slow(a1, v18, 0);
        return;
      }

      _dispatch_event_loop_poke(a1, v18, 0x80000000);
    }
  }
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

uint64_t dispatch_thread_override_self(int a1, uint64_t a2, uint64_t a3)
{
  HIDWORD(v4) = a1 - 5;
  LODWORD(v4) = a1 - 5;
  v3 = v4 >> 2;
  if (v3 > 3)
  {
    if (v3 != 4)
    {
      if (v3 == 7)
      {
        v3 = 6;
      }

      else if (v3 != 5)
      {
LABEL_11:
        v3 = 0;
      }
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v3 = 1;
        break;
      case 1:
        v3 = 2;
        break;
      case 3:
        break;
      default:
        goto LABEL_11;
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  _pthread_workqueue_override_start_direct();
  v6 = *(StatusReg + 200);
  if ((HIWORD(v6) & 0xF) < v3)
  {
    *(StatusReg + 200) = v6 & 0xFFF0FFFF | (v3 << 16);
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
    v3 = dword_4A890[v1];
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 200);
  if ((HIWORD(v5) & 0xF) < v3)
  {
    *(StatusReg + 200) = v5 & 0xFFF0FFFF | (v3 << 16);
  }

  return 0;
}

void _dispatch_queue_wakeup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (***a4)())
{
  v4 = a4;
  if (a4 && (a3 & 1) == 0)
  {
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return;
    }

    a3 = a3 | 1;
  }

  if ((a3 & 4) != 0)
  {
    v30 = *(a1 + 84);
    v31 = v30 >> 12;
    if (a2)
    {
      v31 = a2;
    }

    v32 = (v30 >> 8) & 0xF;
    if (v31 <= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    _dispatch_lane_class_barrier_complete(a1, v33, a3, a4, 0x40020000000000);
    return;
  }

  if (!a4)
  {
    if (!a2)
    {
      goto LABEL_76;
    }

    v21 = *(a1 + 56);
    v22 = a2 << 32;
    do
    {
      if ((v21 & 0x40FFFFFFFDLL) == 0)
      {
        goto LABEL_76;
      }

      v23 = v21;
      v24 = v21 & 0x700000000;
      v25 = v23 & 0xFFFFFFF8FFFFFFFFLL | v22;
      if (v23 & 0x1000000000 | v22 & 0x1000000000)
      {
        v25 |= 0x800000000uLL;
      }

      v26 = v24 < v22 ? v25 : v23;
      v27 = (v23 & 0xFF80002000000000) == 0x2000000000 && ((v23 & 0x4000000000) == 0);
      v19 = v26 | v27;
      if ((v26 | v27) == v23)
      {
        goto LABEL_76;
      }

      v21 = v23;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v21, v19, memory_order_relaxed, memory_order_relaxed);
    }

    while (v21 != v23);
    v20 = v19 ^ v23;
    v5 = 1;
    if (a3 & 1) == 0 && (v20)
    {
      if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
      {
        qword_78298 = "API MISUSE: Resurrection of an object";
        __break(1u);
        goto LABEL_86;
      }

      LODWORD(a3) = a3 | 1;
      v5 = 1;
    }

    v4 = (&dword_0 + 1);
    goto LABEL_59;
  }

  v5 = 0x4000000000;
  if (a4 != &_dispatch_mgr_q)
  {
    v5 = 1;
  }

  v6 = *(a1 + 84);
  v7 = v6 >> 12;
  if (a2)
  {
    v7 = a2;
  }

  LODWORD(v8) = (v6 >> 8) & 0xF;
  if (v7 <= v8)
  {
    v8 = v8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + 56);
  v10 = v8 << 32;
  do
  {
    v11 = v9;
    v12 = v9 & 0x700000000;
    v13 = v11 & 0xFFFFFFF8FFFFFFFFLL | v10;
    if (v11 & 0x1000000000 | v10 & 0x1000000000)
    {
      v13 |= 0x800000000uLL;
    }

    if (v12 < v10)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if ((v11 & 0x180000000000000) == 0x80000000000000)
    {
      v15 = v14 & 0xFF7FFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if ((a3 & 0x20) != 0)
    {
      v14 = v15;
    }

    v16 = ((v11 & 0xFFFFFFFC) == 0) << 38;
    if (a4 != &_dispatch_mgr_q)
    {
      v16 = 1;
    }

    v17 = v14 | v16;
    if (v14 >> 55)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if ((v11 & 0x4000000001) != 0)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    if ((a3 & 2) != 0)
    {
      v19 |= 0x8000000000uLL;
    }

    else if (v19 == v11)
    {
      goto LABEL_76;
    }

    v9 = v11;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v19, memory_order_release, memory_order_relaxed);
  }

  while (v9 != v11);
  v20 = v11 ^ v19;
LABEL_59:
  if ((v20 & v5) != 0)
  {
    if (v4 == (&dword_0 + 1))
    {
      v4 = *(a1 + 24);
    }

    if ((v19 & 0x2000000000) != 0)
    {
      v28 = v19;
      v29 = (&dword_0 + 1);
LABEL_64:

      _dispatch_event_loop_poke(a1, v28, v29);
      return;
    }

    v34 = (*v4)[9];

    (v34)(v4, a1, HIDWORD(v19) & 7);
    return;
  }

  if ((v20 & 0x700000000) == 0)
  {
LABEL_76:
    if (a3)
    {

      _os_object_release_internal_n(a1, 2);
    }

    return;
  }

LABEL_86:
  if ((v19 & 0xFF80004000000000) != 0 || (v19 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_76;
  }

  if ((v19 & 0x2000000000) != 0)
  {
    v29 = (a3 | 0x80000000);
    v28 = v19;
    goto LABEL_64;
  }

  _dispatch_queue_wakeup_with_override_slow(a1, v19, a3);
}

void _dispatch_lane_class_barrier_complete(char *a1, char *a2, uint64_t a3, uint64_t (***a4)(), uint64_t a5)
{
  v6 = a3;
  v9 = &_dispatch_mgr_q;
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
        v10 = *(a1 + 3);
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
  v14 = *(a1 + 7);
  do
  {
    if ((~v14 & 0x2000000002) == 0 && (v14 & 0x800000001) != 0)
    {
      v34 = v6;
      v23 = v9;
      _dispatch_event_loop_ensure_ownership(a1);
      v9 = v23;
      v6 = v34;
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
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
        atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
        v30 = *(*a1 + 64);
        v31 = v6 | 4u;
        v32 = a1;
        v33 = a2;

        goto LABEL_52;
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
    atomic_compare_exchange_strong_explicit((a1 + 56), &v20, v18, memory_order_release, memory_order_relaxed);
    v21 = v20 == v14;
    v14 = v20;
  }

  while (!v21);
  if ((v15 & 0x2000000000) != 0)
  {
    if (v15 & 2) == 0 || ((v18 | v15))
    {

      _dispatch_event_loop_end_ownership(a1, v15, v18, v6);
      return;
    }

LABEL_42:
    if (v6)
    {

      _os_object_release_internal_n(a1, 2);
    }

    return;
  }

  if ((~v15 & 0x1800000000) == 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = HIDWORD(v15) & 7;
    v26 = *(StatusReg + 200);
    if ((HIWORD(v26) & 0xF) < v25)
    {
      *(StatusReg + 200) = v26 & 0xFFF0FFFF | (v25 << 16);
    }
  }

  if (!v10)
  {
    goto LABEL_42;
  }

  if (((v18 ^ v15) & v12) != 0)
  {
    if ((v18 & 0x2000000000) != 0)
    {
      v27 = a1;
      v28 = v18;
      v29 = (&dword_0 + 1);
      goto LABEL_37;
    }

    v30 = (*v10)[9];
    v31 = HIDWORD(v18) & 7;
    v32 = v10;
    v33 = a1;

LABEL_52:
    (v30)(v32, v33, v31);
    return;
  }

  if ((v18 & 0xFF80004000000000) != 0 || (v18 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_42;
  }

  if ((v18 & 0x2000000000) != 0)
  {
    v29 = (v6 | 0x80000000);
    v27 = a1;
    v28 = v18;
LABEL_37:

    _dispatch_event_loop_poke(v27, v28, v29);
  }

  else
  {

    _dispatch_queue_wakeup_with_override_slow(a1, v18, v6);
  }
}

void _dispatch_lane_wakeup(unint64_t a1, char *a2, uint64_t a3)
{
  if ((a3 & 4) != 0)
  {
    _dispatch_lane_barrier_complete(a1, a2, a3);
  }

  else
  {
    _dispatch_queue_wakeup(a1, a2, a3, (*(a1 + 48) != 0));
  }
}

void _dispatch_lane_barrier_complete(unint64_t a1, char *a2, uint64_t a3)
{
  if (!*(a1 + 48) || *(a1 + 56) >> 55)
  {
    v6 = 0;
LABEL_33:
    v10 = (*(a1 + 80) << 41) + 0x40000000000000;

    _dispatch_lane_class_barrier_complete(a1, a2, a3, v6, v10);
    return;
  }

  v7 = *(a1 + 104);
  if (!v7)
  {
    v7 = _dispatch_wait_for_enqueuer((a1 + 104), a1 + 48);
  }

  v8 = *v7;
  if (*(a1 + 80) == 1)
  {
    if (v8 <= 0xFFF && (*v7 & 0x81) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (v8 < 0x1000)
  {
    if ((v8 & 2) != 0)
    {
      if ((v8 & 0x81) != 0)
      {
LABEL_21:

        _dispatch_lane_drain_barrier_waiter(a1, v7, a3, 0);
        return;
      }

LABEL_28:
      if ((a3 & 1) == 0)
      {
        if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
        {
          qword_78298 = "API MISUSE: Resurrection of an object";
          __break(1u);
          return;
        }

        a3 = a3 | 1;
      }

      v6 = (&dword_0 + 1);
      goto LABEL_33;
    }
  }

  else if ((*(v8 + 16) & 0xF0) == 0x10)
  {
    if ((*(v7 + 80) & 0x80000) != 0 || !*(a1 + 80) || (*(v7 + 80) & 0x80000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (!*(a1 + 80))
  {
    goto LABEL_28;
  }

LABEL_25:

  _dispatch_lane_drain_non_barriers(a1, v7, a3);
}

void _dispatch_lane_push(unint64_t result, uint64_t *a2, unsigned int a3)
{
  if (*a2 <= 0xFFF && (*a2 & 0x81) != 0)
  {
    _dispatch_lane_push_waiter(result, a2, a3);
    return;
  }

  if (((*(result + 84) >> 8) & 0xFu) >= a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = result + 48;
  v6 = atomic_exchange_explicit((result + 48), a2, memory_order_release);
  if (v6)
  {
    if ((*(result + 60) & 7) != 0 && (*(result + 60) & 7u) >= v4)
    {
      *(v6 + 16) = a2;
      *(StatusReg + 976) = 0;
      return;
    }

    atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);
    v8 = (v6 + 16);
    v9 = 1;
  }

  else
  {
    atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);
    v8 = (result + 104);
    v9 = 3;
  }

  *v8 = a2;
  *(StatusReg + 976) = 0;
  (*(*result + 64))(result, v4, v9);
}

void _dispatch_lane_push_waiter(unint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a2[6] == -4)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  a2[2] = 0;
  v4 = (a1 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = a1 + 48;
  v6 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
  if (v6)
  {
    *(v6 + 16) = a2;
    *(StatusReg + 976) = 0;
    if (v3)
    {
      v10 = *(a1 + 56);
      v11 = v3 << 32;
      while (1)
      {
        v12 = v10 & 0xFFFFFFF8FFFFFFFFLL | v11;
        if (v10 & 0x1000000000 | v11 & 0x1000000000)
        {
          v12 |= 0x800000000uLL;
        }

        v13 = (v10 & 0x700000000) < v11 ? v12 : v10;
        if (v10 == v13)
        {
          break;
        }

        v14 = v10;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v14, v13, memory_order_relaxed, memory_order_relaxed);
        v15 = v14 == v10;
        v10 = v14;
        if (v15)
        {
          if ((v13 & 0xFF80004000000000) != 0)
          {
            return;
          }

          if (v13)
          {
            if ((v13 & 0x2000000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_59;
          }

          if ((v13 & 0x2000000000) != 0 || (v13 & 0xFFFFFFFC) == 0)
          {
            return;
          }

          goto LABEL_24;
        }
      }
    }

    return;
  }

  *(a1 + 104) = a2;
  *(StatusReg + 976) = 0;
  v7 = *(a1 + 80);
  if ((v7 & 0x40000) != 0)
  {
    v7 = *(a1 + 80);
    if ((v7 & 0x1000000) == 0)
    {
      v8 = *a2;
      goto LABEL_70;
    }
  }

  v8 = *a2;
  if ((*a2 & 0x80) != 0)
  {
    v9 = *(a1 + 56);
    v7 = *(a1 + 80);
    if ((v7 & 0x1000000) == 0)
    {
      if ((v9 & 0x3000000000) == 0)
      {
        goto LABEL_31;
      }

      v16 = *(a1 + 24);
      if (v16 >= &_dispatch_root_queues && v16 < &qword_74A80)
      {
        goto LABEL_31;
      }
    }

LABEL_70:
    *a2 = v8 & 0xFFFFFFFFFFFFFF7FLL;
    a2[7] = a1;
    v27 = *(*a1 + 64);

    v27();
    return;
  }

  v9 = *(a1 + 56);
LABEL_31:
  v17 = (v7 << 41) - 0x20000000000;
  v18 = v3 << 32;
  v19 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
  do
  {
    v20 = v9;
    v21 = v9 & 0x700000000;
    v22 = v9 & 0xFFFFFFF8FFFFFFFFLL | v18;
    if ((v22 & 0x1000000000) != 0)
    {
      v22 |= 0x800000000uLL;
    }

    if (v21 >= v18)
    {
      v22 = v20;
    }

    v23 = v22 | 0x8000000000;
    if ((v20 & 0xFFE00000FFFFFFFCLL) == 0 && ((v20 & 0x2000000000) == 0 || (v20 & 0x4000000001) == 0) && ((v20 & 0x10000000000) != 0 || !((v17 + v22) >> 53)))
    {
      v23 = v19 | v22 & 0x7700000001;
    }

    v9 = v20;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v23, memory_order_release, memory_order_relaxed);
  }

  while (v9 != v20);
  if ((v20 & 0x2000000000) != 0 && a2[6] != -4)
  {
    *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 25) == *(StatusReg + 24)));
  }

  if (((v23 ^ v20) & 0x40000000000000) != 0)
  {
    if ((*(a2 + 106) & 4) != 0 && *(a1 + 104) == a2)
    {
      *(a2 + 106) |= 8u;
      if ((*a2 & 0x80) != 0)
      {
        a2[7] = a1;
      }

      v24 = a2[2];
      *(a1 + 104) = v24;
      if (!v24)
      {
        v25 = *v4;
        while ((v25 & 0xFFFFFFFFFFFFFFF8) == a2)
        {
          v26 = v25;
          atomic_compare_exchange_strong_explicit(v4, &v26, 0, memory_order_release, memory_order_relaxed);
          v15 = v26 == v25;
          v25 = v26;
          if (v15)
          {
            return;
          }
        }

        v28 = a2[2];
        if (!v28)
        {
          v28 = _dispatch_wait_for_enqueuer(a2 + 2, v4);
        }

        *(a1 + 104) = v28;
      }
    }

    else
    {

      _dispatch_lane_barrier_complete(a1, v3, 0);
    }
  }

  else
  {
    if (((v23 ^ v20) & 0x700000000) == 0 || (v23 & 0xFF80004000000000) != 0)
    {
      return;
    }

    if (v23)
    {
      if ((v23 & 0x2000000000) != 0)
      {
        v13 = v23;
LABEL_59:

        _dispatch_event_loop_poke(a1, v13, 0x80000000);
        return;
      }
    }

    else if ((v23 & 0x2000000000) != 0 || (v23 & 0xFFFFFFFC) == 0)
    {
      return;
    }

    v13 = v23;
LABEL_24:

    _dispatch_queue_wakeup_with_override_slow(a1, v13, 0);
  }
}

void _dispatch_lane_concurrent_push(unint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  if ((*(result + 87) & 8) != 0 && *a2 >= 0x1000 && *(*a2 + 16) != 1 && (*(*a2 + 16) != 19 || (_dispatch_source_is_timer(a2) & 1) == 0))
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
    qword_782C8 = a2;
    __break(1u);
    return;
  }

  if (!*(result + 48))
  {
    v6 = *a2;
    if (*a2 <= 0xFFF)
    {
      if ((v6 & 0x83) != 0)
      {
        goto LABEL_7;
      }
    }

    else if ((*(v6 + 16) & 0xF0) == 0x10 && (a2[10] & 0x80000) != 0)
    {
      goto LABEL_7;
    }

    v7 = *(result + 56);
    while ((v7 & 0xFFE0018000000000) == 0)
    {
      v8 = v7;
      atomic_compare_exchange_strong_explicit((result + 56), &v8, v7 + 0x20000000000, memory_order_acquire, memory_order_acquire);
      v9 = v8 == v7;
      v7 = v8;
      if (v9)
      {

        _dispatch_continuation_redirect_push(result, a2);
        return;
      }
    }
  }

LABEL_7:

  _dispatch_lane_push(result, a2, v3);
}

unint64_t _dispatch_continuation_redirect_push(unint64_t result, void *a2)
{
  v3 = result;
  if (*a2 >= 0x1000uLL && *(*a2 + 16) == 256)
  {
    if (!a2[5])
    {
      a2[5] = (*(result + 80) << 8) & 0x3000000;
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
    *v5 = &unk_70C58;
    v5[4] = 0;
    v5[5] = (*(v3 + 80) << 8) & 0x3000000;
    v5[6] = v3;
    v5[7] = a2;
    v5[3] = -1;
    v5[1] = -1;
    if (*(v3 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v3 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return result;
    }
  }

  v6 = *(**(v3 + 24) + 72);

  return v6();
}

uint64_t dispatch_async_swift_job(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*a2 + 16);
  if (v4 != 1)
  {
    dispatch_async_swift_job_cold_1(v4);
  }

  v5 = *(*a1 + 72);
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

  v4 = *(*a1 + 64);

  return v4();
}

void _dispatch_channel_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  }

  v98 = a3;
  if ((a3 & 2) != 0)
  {
    v5 = 0x40020000000001;
    if ((a3 & 0x40000) != 0)
    {
LABEL_5:
      v95 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v6 = *(a1 + 80);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = *(StatusReg + 24);
    v8 = (StatusReg + 24);
    v10 = (v6 << 41) - 0x20000000000;
    v11 = v9 & 0xFFFFFFFC;
    if ((a3 & 0x40000) != 0)
    {
      v12 = 0x4000000000;
    }

    else
    {
      v12 = 1;
    }

    v13 = 0xFFE00000FFFFFFFCLL;
    if ((a3 & 0x40000) == 0)
    {
      v13 = 0xFFE00040FFFFFFFCLL;
    }

    if (a3)
    {
      v14 = 0xFFE00040FFFFFFFCLL;
    }

    else
    {
      v14 = v13;
    }

    v15 = v8[44];
    v16 = (v15 >> 8) & 0xF;
    v17 = v15 >> 12;
    v18 = HIWORD(v15) & 0xF;
    if (v16 <= v17)
    {
      v16 = v17;
    }

    if (v16 > v18)
    {
      v18 = v16;
    }

LABEL_18:
    for (i = *(a1 + 56); ; i = v24)
    {
      while ((i & v14) != 0)
      {
        if ((a3 & 1) != 0 || (v25 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v25, i ^ v12, memory_order_acquire, memory_order_acquire), v25 == i))
        {
          v5 = 0;
          v29 = 0;
          goto LABEL_259;
        }

        i = v25;
      }

      if ((i & 0x1000000000) != 0)
      {
        v20 = HIDWORD(i) & 7;
        if (v20 > v18)
        {
          _dispatch_workloop_invoke_cold_2(v8, BYTE4(i) & 7, (v8 + 44));
          v18 = v20;
          goto LABEL_18;
        }
      }

      v21 = (i >> 40) & 1;
      if (!((v10 + i) >> 53))
      {
        LODWORD(v21) = 1;
      }

      v22 = v21 ? 0x60000000000000 : 0x20000000000000;
      v23 = i & 0x7700000001 | v11 | v22;
      v24 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v24, v23, memory_order_acquire, memory_order_acquire);
      if (v24 == i)
      {
        break;
      }
    }

    v26 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v26 = v12 | 0x60000000000000;
    }

    v27 = v23 & v26;
    v28 = i & 0x3FFE0000000000;
    v5 = v27 - v28;
    if (v27 == v28)
    {
      v29 = 0;
      goto LABEL_259;
    }

    if ((a3 & 0x40000) != 0)
    {
      goto LABEL_5;
    }
  }

  v30 = *(a1 + 84);
  v31 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v32 = *(v31 + 200);
  if (v32)
  {
    v33 = v30 >> 12;
    v34 = v30 & 0xFFF;
    if ((v30 & 0xFFF) != 0)
    {
      if ((v32 & 0xFFFu) > v34)
      {
        v34 = v32 & 0xFFF;
      }

      if (v33 <= v34 >> 8)
      {
        v35 = 0x40000000;
      }

      else
      {
        v35 = 1140912128;
      }

      v36 = v35 & v30;
      v37 = v32 & 0x880F0000 | v34;
    }

    else
    {
      v38 = v32 | 0x40000000;
      if ((v32 & 0xFFF) == 0)
      {
        v38 = *(v31 + 200);
      }

      if (v33 <= ((v38 >> 8) & 0xF))
      {
        goto LABEL_52;
      }

      v37 = v38 & 0xFFFF0FFF;
      v36 = v30 & 0x400F000;
    }

    v38 = v37 | v36;
  }

  else
  {
    v38 = v30 & 0xFFF0FFFF;
  }

LABEL_52:
  *(v31 + 200) = v38;
  v95 = v32 & 0xFFF0FFFF;
LABEL_53:
  v97 = v5;
  v39 = a3 | 8;
  if ((a3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  v40 = *(a1 + 80);
  if (((v40 << 8) & 0x3000000) != 0)
  {
    v39 = (v40 << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  v93 = v39 | 0x10;
  v94 = (a1 + 48);
  v41 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v42 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_59:
  v43 = v39;
  v102 = v39;
  if ((v39 & 0x1000002) == 2)
  {
    _dispatch_last_resort_autorelease_pool_push(a2);
    v44 = *(a1 + 88);
    v107 = 0u;
    *v103 = a1;
    v104 = a2;
    v105 = v43 & 0xFEFDFFFF;
    v106 = 0;
    *&v107 = 0;
    BYTE8(v107) = 0;
    *&v103[8] = *(v41 + 160);
    *(v41 + 160) = a1;
    *(v41 + 168) = &v103[8];
    if (_dispatch_channel_invoke_cancel_check(a1, v103, v44))
    {
      v99 = (v43 >> 21) & 1;
      while (1)
      {
        v45 = v107;
        if (!v107)
        {
          if (!*v94)
          {
            goto LABEL_239;
          }

          v45 = *(a1 + 104);
          if (!v45)
          {
            v45 = _dispatch_wait_for_enqueuer((a1 + 104), v94);
          }
        }

        v46 = *v45;
        if (*v45 > 0xFFFuLL)
        {
          goto LABEL_66;
        }

        if (v46)
        {
          _dispatch_channel_invoke_cold_3();
        }

        if ((v46 & 0x400) == 0)
        {
LABEL_66:
          v47 = *(v45 + 16);
          *(a1 + 104) = v47;
          if (!v47)
          {
            v62 = *v94;
            while (v45 == (v62 & 0xFFFFFFFFFFFFFFF8))
            {
              v63 = v62;
              atomic_compare_exchange_strong_explicit(v94, &v63, 0, memory_order_release, memory_order_relaxed);
              v55 = v63 == v62;
              v62 = v63;
              if (v55)
              {
                goto LABEL_67;
              }
            }

            v47 = *(v45 + 16);
            if (!v47)
            {
              v47 = _dispatch_wait_for_enqueuer((v45 + 16), v94);
            }

            *(a1 + 104) = v47;
          }

LABEL_67:
          *&v107 = v47;
          v48 = *(v41 + 192);
          if (v48)
          {
            (*v48)(a1);
          }

          v49 = *v45;
          if (*v45 >= 0x1000uLL)
          {
            if (*(v49 + 16) == 1)
            {
              (*(v49 + 24))(v45, 0, v99);
            }

            else
            {
              (*(v49 + 48))(v45, a2, v43 & 0xFEFF0000);
            }

            if (v48)
            {
              goto LABEL_93;
            }

            goto LABEL_94;
          }

          v50 = *(v45 + 24);
          if ((v49 & 4) != 0)
          {
            *(v45 + 24) = -1;
          }

          if (v50 != -1 && MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          v51 = *(v45 + 8);
          if (v51 == -1)
          {
            v54 = 0;
          }

          else
          {
            v52 = *(v41 + 200);
            if (((v52 >> 8) & 0xF) != 0)
            {
              v53 = 1 << ((BYTE1(v52) & 0xFu) + 7);
            }

            else
            {
              v53 = 0;
            }

            v54 = v53 | *(v41 + 200);
            if ((v51 & 0xFFFFFF) != 0)
            {
              if ((v51 & 0xFFFFFFuLL) >= (v53 & 0xFFFFFF00))
              {
                v55 = (v52 & 0x44000000) == 0 && (*(v45 + 8) & 0x10000000) == 0;
                if (!v55)
                {
                  v54 = v51 & 0xFFFFFF;
                }
              }
            }

            else if (v52 >> 12)
            {
              v54 = (256 << ((v52 >> 12) - 1)) | 0xFF;
            }
          }

          v57 = v54 & 0x7FFFFFFF02FFFFFFLL;
          v58 = *(v41 + 32);
          if ((v58 & 0x1000000) != 0)
          {
            if (!v57)
            {
              v57 = v58 & 0xFFFFFFFFFEFFFFFFLL;
              goto LABEL_135;
            }

LABEL_142:
            _dispatch_set_priority_and_voucher_slow(v57, v50, v49 & 4 | 2);
          }

          else
          {
            if (v57 == (v58 & 0xFFFFFFFF76FFFFFFLL))
            {
              goto LABEL_100;
            }

LABEL_135:
            if (v57)
            {
              goto LABEL_142;
            }

LABEL_100:
            if (v50 != -1)
            {
              if (*(v41 + 224) != v50)
              {
                v57 = 0;
                goto LABEL_142;
              }

              if ((v49 & 4) != 0 && v50 && atomic_fetch_add_explicit((v50 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
              {
                _dispatch_block_invoke_direct_cold_4();
              }
            }
          }

          if ((v49 & 4) != 0)
          {
            v60 = *(v41 + 176);
            if (v60)
            {
              v61 = *(v60 + 8) + 1;
            }

            else
            {
              v61 = 1;
            }

            v59 = v45;
            if (v61 <= _dispatch_continuation_cache_limit)
            {
              v59 = 0;
              *(v45 + 16) = v60;
              *(v45 + 8) = v61;
              *(v41 + 176) = v45;
            }
          }

          else
          {
            v59 = 0;
          }

          if ((v49 & 8) != 0)
          {
            _dispatch_channel_invoke_cold_14();
          }

          else
          {
            _dispatch_client_callout(*(v45 + 40), *(v45 + 32));
            if (MEMORY[0xFFFFFC100])
            {
              _dispatch_workloop_invoke_cold_8(v45);
            }
          }

          if (v59)
          {
            _dispatch_continuation_free_to_cache_limit(v59);
          }

          ++*(v41 + 208);
          v43 = v102;
          if (v48)
          {
LABEL_93:
            v48[1](a1);
          }

LABEL_94:
          if (!_dispatch_channel_invoke_checks(a1, v103, v44))
          {
            goto LABEL_239;
          }

          goto LABEL_95;
        }

        *&v107 = v45;
        BYTE8(v107) = 0;
        v56 = (v105 & 0x1000000) != 0 ? _dispatch_autorelease_pool_push() : 0;
        if ((*(v44 + 16))(a1, v103, *(a1 + 32)))
        {
          break;
        }

        v106 = -1;
        if (v56)
        {
          goto LABEL_115;
        }

LABEL_95:
        if (v106)
        {
          goto LABEL_239;
        }
      }

      if ((BYTE8(v107) & 1) == 0)
      {
        _dispatch_channel_invoke_cold_4();
      }

      if (!v56)
      {
        goto LABEL_95;
      }

LABEL_115:
      _dispatch_autorelease_pool_pop(v56);
      goto LABEL_95;
    }

LABEL_239:
    *(v41 + 160) = *&v103[8];
    v29 = v106;
    *v103 = *(v41 + 160);
    *(v41 + 160) = a1;
    *(v41 + 168) = v103;
    _dispatch_last_resort_autorelease_pool_pop(a2);
    *(v41 + 160) = *v103;
    goto LABEL_241;
  }

  v64 = *(a1 + 88);
  v107 = 0u;
  *v103 = a1;
  v104 = a2;
  v105 = v39 & 0xFFFDFFFF;
  v106 = 0;
  *&v107 = 0;
  BYTE8(v107) = 0;
  *&v103[8] = *(v42 + 160);
  *(v42 + 160) = a1;
  *(v42 + 168) = &v103[8];
  if (_dispatch_channel_invoke_cancel_check(a1, v103, v64))
  {
    v96 = (v43 >> 21) & 1;
    v100 = v64;
    while (1)
    {
      v65 = v107;
      if (!v107)
      {
        if (!*v94)
        {
          goto LABEL_240;
        }

        v65 = *(a1 + 104);
        if (!v65)
        {
          v65 = _dispatch_wait_for_enqueuer((a1 + 104), v94);
        }
      }

      v66 = *v65;
      if (*v65 > 0xFFFuLL)
      {
        goto LABEL_152;
      }

      if (v66)
      {
        _dispatch_channel_invoke_cold_3();
      }

      if ((v66 & 0x400) == 0)
      {
LABEL_152:
        v67 = *(v65 + 16);
        *(a1 + 104) = v67;
        if (!v67)
        {
          v83 = *v94;
          while (v65 == (v83 & 0xFFFFFFFFFFFFFFF8))
          {
            v84 = v83;
            atomic_compare_exchange_strong_explicit(v94, &v84, 0, memory_order_release, memory_order_relaxed);
            v55 = v84 == v83;
            v83 = v84;
            if (v55)
            {
              goto LABEL_153;
            }
          }

          v67 = *(v65 + 16);
          if (!v67)
          {
            v67 = _dispatch_wait_for_enqueuer((v65 + 16), v94);
          }

          *(a1 + 104) = v67;
        }

LABEL_153:
        *&v107 = v67;
        v68 = *(v42 + 192);
        if (v68)
        {
          (*v68)(a1);
        }

        v69 = *v65;
        if (*v65 >= 0x1000uLL)
        {
          if (*(v69 + 16) == 1)
          {
            (*(v69 + 24))(v65, 0, v96);
          }

          else
          {
            (*(v69 + 48))(v65, a2, v43 & 0xFFFF0000);
          }

          if (v68)
          {
LABEL_164:
            v68[1](a1);
          }

LABEL_165:
          if (!_dispatch_channel_invoke_checks(a1, v103, v64))
          {
            goto LABEL_240;
          }

          goto LABEL_166;
        }

        if ((v43 & 0x1000000) != 0)
        {
          v70 = _dispatch_autorelease_pool_push();
          v69 = *v65;
        }

        else
        {
          v70 = 0;
        }

        v72 = *(v65 + 24);
        if ((v69 & 4) != 0)
        {
          *(v65 + 24) = -1;
        }

        if (v72 != -1 && MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v73 = *(v65 + 8);
        if (v73 == -1)
        {
          v76 = 0;
        }

        else
        {
          v74 = *(v42 + 200);
          if (((v74 >> 8) & 0xF) != 0)
          {
            v75 = 1 << ((BYTE1(v74) & 0xFu) + 7);
          }

          else
          {
            v75 = 0;
          }

          v76 = v75 | *(v42 + 200);
          if ((v73 & 0xFFFFFF) != 0)
          {
            if ((v73 & 0xFFFFFFuLL) >= (v75 & 0xFFFFFF00) && ((v74 & 0x44000000) != 0 || (*(v65 + 8) & 0x10000000) != 0))
            {
              v76 = v73 & 0xFFFFFF;
            }
          }

          else if (v74 >> 12)
          {
            v76 = (256 << ((v74 >> 12) - 1)) | 0xFF;
          }
        }

        v78 = v76 & 0x7FFFFFFF02FFFFFFLL;
        v79 = *(v42 + 32);
        if ((v79 & 0x1000000) != 0)
        {
          if (!v78)
          {
            v78 = v79 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_224;
          }

LABEL_235:
          _dispatch_set_priority_and_voucher_slow(v78, v72, v69 & 4 | 2);
        }

        else
        {
          if (v78 == (v79 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_189;
          }

LABEL_224:
          if (v78)
          {
            goto LABEL_235;
          }

LABEL_189:
          if (v72 != -1)
          {
            if (*(v42 + 224) != v72)
            {
              v78 = 0;
              goto LABEL_235;
            }

            if ((v69 & 4) != 0 && v72 && atomic_fetch_add_explicit((v72 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
            {
              _dispatch_block_invoke_direct_cold_4();
            }
          }
        }

        if ((v69 & 4) != 0)
        {
          v81 = *(v42 + 176);
          if (v81)
          {
            v82 = *(v81 + 8) + 1;
          }

          else
          {
            v82 = 1;
          }

          v80 = v65;
          if (v82 <= _dispatch_continuation_cache_limit)
          {
            v80 = 0;
            *(v65 + 16) = v81;
            *(v65 + 8) = v82;
            *(v42 + 176) = v65;
          }
        }

        else
        {
          v80 = 0;
        }

        if ((v69 & 8) != 0)
        {
          _dispatch_channel_invoke_cold_7();
          if (v80)
          {
            goto LABEL_227;
          }
        }

        else
        {
          _dispatch_client_callout(*(v65 + 40), *(v65 + 32));
          if (!MEMORY[0xFFFFFC100])
          {
            if (!v80)
            {
              goto LABEL_211;
            }

LABEL_227:
            _dispatch_continuation_free_to_cache_limit(v80);
            if (!v70)
            {
LABEL_213:
              ++*(v42 + 208);
              v43 = v102;
              v64 = v100;
              if (v68)
              {
                goto LABEL_164;
              }

              goto LABEL_165;
            }

LABEL_212:
            _dispatch_autorelease_pool_pop(v70);
            goto LABEL_213;
          }

          _dispatch_workloop_invoke_cold_8(v65);
          if (v80)
          {
            goto LABEL_227;
          }
        }

LABEL_211:
        if (!v70)
        {
          goto LABEL_213;
        }

        goto LABEL_212;
      }

      *&v107 = v65;
      BYTE8(v107) = 0;
      v71 = (v105 & 0x1000000) != 0 ? _dispatch_autorelease_pool_push() : 0;
      if ((*(v64 + 16))(a1, v103, *(a1 + 32)))
      {
        break;
      }

      v106 = -1;
      if (v71)
      {
        goto LABEL_204;
      }

LABEL_166:
      if (v106)
      {
        goto LABEL_240;
      }
    }

    if ((BYTE8(v107) & 1) == 0)
    {
      _dispatch_channel_invoke_cold_4();
    }

    if (!v71)
    {
      goto LABEL_166;
    }

LABEL_204:
    _dispatch_autorelease_pool_pop(v71);
    goto LABEL_166;
  }

LABEL_240:
  *(v42 + 160) = *&v103[8];
  v29 = v106;
LABEL_241:
  if (v29 + 1 <= 1)
  {
    v85 = *(a1 + 56);
    while (1)
    {
      v86 = v85;
      v87 = v85 - v97;
      v88 = v87 & 0xFFFFFFF700000001;
      if (!(v86 >> 55))
      {
        if ((v86 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v29 = *(v42 + 160);
          v39 = v93;
          if (v98)
          {
            goto LABEL_59;
          }

          v39 = v93;
          if (((*v29)[2] & 0x10000) != 0)
          {
            goto LABEL_59;
          }

          break;
        }

        if (v29)
        {
          v88 = v87 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v88 = v87 & 0xFFFFFFF000000001;
        }
      }

      v85 = v86;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v85, v88, memory_order_release, memory_order_relaxed);
      if (v85 == v86)
      {
        if ((~v86 & 0x1800000000) != 0 || (v89 = HIDWORD(v86) & 7, v90 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)), v91 = *(v90 + 200), (HIWORD(v91) & 0xF) >= v89))
        {
          v5 = 0;
          v29 = 0;
        }

        else
        {
          v5 = 0;
          v29 = 0;
          *(v90 + 200) = v91 & 0xFFF0FFFF | (v89 << 16);
        }

        goto LABEL_257;
      }
    }
  }

  v5 = v97;
LABEL_257:
  if ((v102 & 0x40000) == 0)
  {
    v92 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v92 + 200) = *(v92 + 200) & 0xF0000 | v95;
  }

LABEL_259:
  if ((v98 & 1) == 0 && MEMORY[0xFFFFFC100])
  {
    _dispatch_workloop_invoke_cold_8(a1);
  }

  if (v29)
  {
    _dispatch_queue_invoke_finish(a1, a2, v29, v5);
  }

  else
  {
    _os_object_release_internal_n(a1, 2);
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

void dispatch_channel_drain_f(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t *))
{
  v3 = *result;
  v4 = *(*result + 88);
  v38 = 0;
  if (*(result + 56) == 1)
  {
    dispatch_channel_drain_f_cold_3();
  }

  *(result + 56) = 1;
  v37 = (v3 + 48);
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

      v9 = *(v3 + 104);
      if (!v9)
      {
        v9 = _dispatch_wait_for_enqueuer((v3 + 104), v37);
      }
    }

    if ((*v9 & 0xFFFFFFFFFFFFF400) != 0x400)
    {
      break;
    }

    v10 = v9[2];
    *(v3 + 104) = v10;
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

      *(v3 + 104) = v10;
    }

LABEL_6:
    *(result + 48) = v10;
    v11 = v9[3];
    v9[3] = -1;
    v12 = v11 == -1 || v11 == -1;
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
        goto LABEL_61;
      }

      v18 = v19 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v18 == (v19 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_27;
    }

    if (v18)
    {
      goto LABEL_61;
    }

LABEL_27:
    if (v11 == -1)
    {
      goto LABEL_31;
    }

    if (StatusReg[28] != v11)
    {
      v18 = 0;
LABEL_61:
      _dispatch_set_priority_and_voucher_slow(v18, v11, 6);
      goto LABEL_31;
    }

    if (v11 && atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      _dispatch_block_invoke_direct_cold_4();
    }

LABEL_31:
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
      v24 = _dispatch_autorelease_pool_push();
      v23 = a3(a2, v9[5], &v38);
      _dispatch_autorelease_pool_pop(v24);
    }

    else
    {
      v23 = a3(a2, v9[5], &v38);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v22)
      {
LABEL_41:
        if (!v23)
        {
          break;
        }

        continue;
      }
    }

    else if (!v22)
    {
      goto LABEL_41;
    }

    _dispatch_continuation_free_to_cache_limit(v22);
    if (!v23)
    {
      break;
    }
  }

  while ((_dispatch_channel_invoke_checks(v3, result, v4) & 1) != 0);
  v27 = v38;
  if (!v38)
  {
    return;
  }

  v28 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = v28[22];
  if (v29)
  {
    v28[22] = v29[2];
  }

  else
  {
    v29 = _dispatch_continuation_alloc_from_heap();
    v27 = v38;
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
  if (v32 && atomic_fetch_add_explicit((v32 + 12), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_group_notify_cold_1();
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
    v33 = (*(v3 + 84) >> 30) & 1;
    if ((*(v3 + 84) & 0xFFF) == 0)
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
      v36 = *(v3 + 104);
      if (!v36)
      {
        v36 = _dispatch_wait_for_enqueuer((v3 + 104), v37);
      }

      v29[2] = v36;
    }
  }

  *(v3 + 104) = v29;
  *(result + 48) = v29;
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

unint64_t dispatch_channel_foreach_work_item_peek(unint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  return dispatch_channel_foreach_work_item_peek_f(a1, a2, v2);
}

void dispatch_channel_drain(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  dispatch_channel_drain_f(a1, a2, v2);
}

void _dispatch_channel_wakeup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 88) + 8))(a1, *(a1 + 32)))
  {
    if (*(a1 + 48))
    {
      v6 = 1;
    }

    else
    {
      v6 = (*(a1 + 80) & 0x10000000) != 0 && (*(a1 + 116) & 8) == 0;
    }
  }

  else
  {
    v6 = -1;
  }

  _dispatch_queue_wakeup(a1, a2, a3, v6);
}

uint64_t dispatch_channel_create(const char *a1, uint64_t (***a2)(), uint64_t a3, void *a4)
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
    v6 = &off_74680;
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
  if (*(v6 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((v6 + 1), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

LABEL_9:
  result = _dispatch_object_alloc(_OS_dispatch_channel_vtable, 120);
  *(result + 8) += 2;
  if (*(*result + 16) == 19)
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

uint64_t dispatch_channel_enqueue(_DWORD *a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = StatusReg[22];
  if (v4)
  {
    StatusReg[22] = v4[2];
    *v4 = 1284;
    v4[4] = 0;
    v4[5] = a2;
    v5 = StatusReg[4] & 0xFFFFFFLL;
    if (v5 >= 0x10FF)
    {
      v6 = 4351;
    }

    else
    {
      v6 = StatusReg[4] & 0xFFFFFFLL;
    }

    v7 = StatusReg[28];
    if (v7)
    {
      result = 0;
      if (atomic_fetch_add_explicit((v7 + 12), 1u, memory_order_relaxed) <= 0)
      {
        qword_78298 = "API MISUSE: Voucher resurrection";
        __break(1u);
        return result;
      }
    }

    v4[3] = v7;
    if (v7 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else if (!v5)
    {
      goto LABEL_12;
    }

    v9 = a1[21];
    if ((v9 & 0x40000000) != 0 || (v9 & 0xFFF) == 0)
    {
      v10 = __clz(__rbit32(v6 >> 8)) + 1;
      goto LABEL_14;
    }

LABEL_12:
    v10 = 0;
    v6 = 0;
LABEL_14:
    v4[1] = v6;
    v11 = *(*a1 + 72);

    return v11(a1, v4, v10);
  }

  return _dispatch_channel_enqueue_slow(a1, a2);
}

uint64_t _dispatch_channel_enqueue_slow(_DWORD *a1, uint64_t a2)
{
  v4 = _dispatch_continuation_alloc_from_heap();
  *v4 = 1284;
  v4[4] = 0;
  v4[5] = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
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
    result = 0;
    if (atomic_fetch_add_explicit((v8 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Voucher resurrection";
      __break(1u);
      return result;
    }
  }

  v4[3] = v8;
  if (v8 != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else if (!v6)
  {
    goto LABEL_11;
  }

  v10 = a1[21];
  if ((v10 & 0x40000000) != 0 || (v10 & 0xFFF) == 0)
  {
    v11 = __clz(__rbit32(v7 >> 8)) + 1;
    goto LABEL_13;
  }

LABEL_11:
  v11 = 0;
  v7 = 0;
LABEL_13:
  v4[1] = v7;
  v12 = *(*a1 + 72);

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
    v4 = dword_4A890[v2];
  }

  return (*(*a1 + 64))(a1, v4, 2);
}

void _dispatch_mgr_queue_push(uint64_t result, void *a2)
{
  if (*a2 <= 0xFFFuLL && (*a2 & 0x81) != 0)
  {
    _dispatch_mgr_queue_push_cold_2();
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = (StatusReg + 976);
  *(StatusReg + 976) = result + 48;
  v5 = atomic_exchange_explicit((result + 48), a2, memory_order_release);
  if (v5)
  {
    *(v5 + 16) = a2;
    *v4 = 0;
  }

  else
  {
    _dispatch_mgr_queue_push_cold_1(result, a2, v4, StatusReg);
  }
}

void _dispatch_mgr_thread()
{
  if (_dispatch_kevent_workqueue_enabled == 1)
  {
    qword_78298 = "BUG IN LIBDISPATCH: Manager queue invoked with kevent workqueue enabled";
    __break(1u);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 160) = &_dispatch_mgr_q;
  _dispatch_mgr_priority_init();
  v1 = qword_74138;
  v2 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x40020000000000;
  while ((v1 & 0xFFE00000FFFFFFFCLL) == 0)
  {
    v3 = v1;
    atomic_compare_exchange_strong_explicit(&qword_74138, &v3, v2 | v1 & 0x7700000001, memory_order_acquire, memory_order_acquire);
    v4 = v3 == v1;
    v1 = v3;
    if (v4)
    {
      v5 = pthread_self();
      stackaddr_np = pthread_get_stackaddr_np(v5);
      bzero(v14, stackaddr_np - v14);
      _dispatch_mgr_invoke(v7, v8, v9, v10, v11, v12, v13);
    }
  }

  qword_78298 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_mgr_priority_init()
{
  v0 = off_740A0;
  v5 = 0;
  v1 = pthread_attr_getschedparam(off_740A0, &v5);
  if (v1)
  {
    _dispatch_bug(6319, v1);
  }

  __qos_class = QOS_CLASS_UNSPECIFIED;
  pthread_attr_get_qos_class_np(v0, &__qos_class, 0);
  if (dword_7873C <= __qos_class)
  {
    sched_priority = v5.sched_priority;
  }

  else
  {
    pthread_set_qos_class_self_np(dword_7873C, 0);
    v2 = _dispatch_mgr_sched_qos2prio(dword_7873C);
    sched_priority = v5.sched_priority;
    if (v2 > v5.sched_priority)
    {
      v5.sched_priority = v2;
      sched_priority = v2;
    }
  }

  if (_dispatch_mgr_sched > sched_priority)
  {
    _dispatch_mgr_priority_apply();
  }
}

void _dispatch_mgr_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  v12 = 0;
  v9 = 0u;
  v11 = -4;
  v13 = &v15;
  v14 = 0x100000;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 232) & 0xFFFFFFFFFFFFFFFELL;
  if (!v8)
  {
    *(StatusReg + 232) = &v9;
    while (1)
    {
      _dispatch_mgr_queue_drain();
      if (byte_7843E)
      {
        _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
      }

      _dispatch_event_loop_drain(qword_74130 != 0);
    }
  }

  qword_78298 = "BUG IN LIBDISPATCH: Unexpected contents in DDI TSD";
  qword_782C8 = v8;
  __break(1u);
}

void _dispatch_kevent_workqueue_init(uint64_t result)
{
  if (_dispatch_root_queues_pred != -1)
  {
    _dispatch_kevent_workqueue_init_cold_1();
  }

  if (_dispatch_kevent_workqueue_enabled == 1)
  {
    if (_dispatch_mgr_sched_pred != -1)
    {
      _dispatch_kevent_workqueue_init_cold_2();
    }

    v1 = _dispatch_mgr_sched;
    if (dword_7873C)
    {
      v2 = _pthread_qos_class_encode();
    }

    else
    {
      v2 = 0;
    }

    if (v1 > dword_78740)
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
}

uint64_t _dispatch_mgr_sched_init()
{
  v0 = off_740A0;
  v1 = pthread_attr_init(off_740A0);
  if (v1)
  {
    _dispatch_bug(6222, v1);
  }

  v2 = pthread_attr_getschedpolicy(v0, &dword_78744);
  if (v2)
  {
    _dispatch_bug(6224, v2);
  }

  v6 = 0;
  v3 = pthread_attr_getschedparam(v0, &v6);
  if (v3)
  {
    _dispatch_bug(6225, v3);
  }

  v4 = qos_class_main();
  if (v4 == QOS_CLASS_DEFAULT)
  {
    v4 = QOS_CLASS_USER_INITIATED;
  }

  if (v4)
  {
    dword_7873C = v4;
    result = _dispatch_mgr_sched_qos2prio(v4);
  }

  else
  {
    result = v6.sched_priority;
  }

  dword_78740 = result;
  _dispatch_mgr_sched = result;
  return result;
}

void _dispatch_root_queue_poke(uint64_t (***result)(), uint64_t a2, int a3)
{
  if (result[6])
  {
    v3 = (*result)[2];
    v4 = v3 == "le_s}ii}]^{dispatch_object_vtable_s}ii^{dispatch_object_s}^{dispatch_queue_s}^v(?=^?^v)}][0{_os_object_s=^{_os_object_vtable_s}ii}]^{dispatch_data_vtable_s}ii^{dispatch_data_s}^{dispatch_queue_s}^v(?=^?^v)^v@?QQ[0{range_record_s=^{dispatch_data_s}QQ}]}12i20" || v3 == "lue";
    if (!v4 || (v5 = 0, atomic_compare_exchange_strong_explicit((result + 14), &v5, a2, memory_order_release, memory_order_relaxed), !v5))
    {
      _dispatch_root_queue_poke_slow(result, a2, a3);
    }
  }
}

void _dispatch_root_queue_poke_slow(uint64_t (***a1)(), uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v4 = a2;
  if (_dispatch_root_queues_pred != -1)
  {
LABEL_37:
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }

  v6 = (*a1)[2];
  if (v6 == "le_s}ii}]^{dispatch_object_vtable_s}ii^{dispatch_object_s}^{dispatch_queue_s}^v(?=^?^v)}][0{_os_object_s=^{_os_object_vtable_s}ii}]^{dispatch_data_vtable_s}ii^{dispatch_data_s}^{dispatch_queue_s}^v(?=^?^v)^v@?QQ[0{range_record_s=^{dispatch_data_s}QQ}]}12i20")
  {
    v12 = _pthread_workqueue_add_cooperativethreads();
    if (!v12)
    {
      return;
    }

    v10 = v12;
    v11 = 6920;
    goto LABEL_39;
  }

  if (v6 == "lue")
  {
    v9 = _pthread_workqueue_addthreads();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = 6912;
LABEL_39:

    _dispatch_bug(v11, v10);
    return;
  }

  v7 = a1[4];
  if (v7[9])
  {
    while (dispatch_semaphore_signal((v7 + 9)))
    {
      if (!--v4)
      {
        return;
      }
    }
  }

  if ((*(a1 + 21) & 0x80000000) != 0)
  {
    atomic_fetch_add_explicit((a1 + 14), v4, memory_order_relaxed);
  }

  else
  {
    v8 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 14), &v8, v4, memory_order_relaxed, memory_order_relaxed);
    if (v8)
    {
      return;
    }
  }

  v13 = *(a1 + 25);
  while (1)
  {
    v14 = v13 - v3;
    if (v13 < v3)
    {
      v14 = 0;
    }

    if (v4 > v14)
    {
      atomic_fetch_add_explicit((a1 + 14), v14 - v4, memory_order_relaxed);
      v4 = v14;
    }

    if (!v4)
    {
      break;
    }

    v15 = v13;
    atomic_compare_exchange_strong_explicit((a1 + 100), &v15, v13 - v4, memory_order_acquire, memory_order_acquire);
    v16 = v15 == v13;
    v13 = v15;
    if (v16)
    {
      v18 = 0;
      if (a1 == &_dispatch_mgr_root_queue)
      {
        _dispatch_mgr_root_queue_init();
        v3 = &qword_78748;
      }

      else
      {
        v3 = &v18;
      }

LABEL_28:
      if (*(a1 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 1), 1u, memory_order_relaxed) < 1)
      {
        qword_78298 = "API MISUSE: Resurrection of an object";
        __break(1u);
        goto LABEL_37;
      }

      while (1)
      {
        v17 = pthread_create(v3, v7, _dispatch_worker_thread, a1);
        if (v17 != 35)
        {
          if (!v17)
          {
            if (!--v4)
            {
              return;
            }

            goto LABEL_28;
          }

          _dispatch_bug(6979, v17);
        }

        _dispatch_temporary_resource_shortage();
      }
    }
  }
}

void _dispatch_root_queue_poke_and_wakeup(uint64_t (***a1)(), uint64_t a2, int a3)
{
  v3 = (*a1)[2];
  if (v3 != "le_s}ii}]^{dispatch_object_vtable_s}ii^{dispatch_object_s}^{dispatch_queue_s}^v(?=^?^v)}][0{_os_object_s=^{_os_object_vtable_s}ii}]^{dispatch_data_vtable_s}ii^{dispatch_data_s}^{dispatch_queue_s}^v(?=^?^v)^v@?QQ[0{range_record_s=^{dispatch_data_s}QQ}]}12i20" && v3 != "lue")
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 28);
  do
  {
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = a2;
    }

    atomic_compare_exchange_strong_explicit((a1 + 14), &v5, v7, memory_order_release, memory_order_relaxed);
  }

  while (v5 != v6);
  if (v6 <= 0)
  {
LABEL_12:
    _dispatch_root_queue_poke_slow(a1, a2, a3);
  }
}

void _dispatch_root_queue_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    if (a3)
    {
      _os_object_release_internal_n(a1, 2);
    }
  }

  else
  {
    v3 = *(a1 + 84);
    qword_78298 = "BUG IN LIBDISPATCH: Don't try to wake up or override a root queue";
    qword_782C8 = v3;
    __break(1u);
  }
}

void _dispatch_root_queue_push(uint64_t a1, uint64_t (***a2)(), uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 232);
  if (v6 && *(v6 + 52) == 1 && ((v7 = *(v6 + 8), v12 = *(a1 + 84), !v7) || v12 < 0))
  {
    v13 = *v6;
    v14 = *(v6 + 16);
    *v6 = a1;
    *(v6 + 8) = a2;
    *(v6 + 16) = a3;
    if (v12 < 0)
    {
      *(v6 + 52) = 0;
    }

    if (!v7)
    {
      return;
    }

    v3 = v14;
    v4 = v13;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v4 + 84);
  if ((v8 & 0x8000000) != 0 && *v7 >= 0x1000 && (*v7)[2] != (&dword_0 + 1))
  {
    if ((*v7)[2] != 19 || !_dispatch_source_is_timer(v7))
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
      qword_782C8 = v7;
      __break(1u);
      return;
    }

    v8 = *(v4 + 84);
  }

  if (v8 >> 12)
  {
    if (v3 && v8 >> 12 != v3)
    {
LABEL_13:

      _dispatch_root_queue_push_override(v4, v7, v3);
      return;
    }
  }

  else
  {
    v9 = (v8 >> 8) & 0xF;
    if (v9)
    {
      v10 = v9 >= v3;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v7[2] = 0;
  *(StatusReg + 976) = v4 + 48;
  v11 = atomic_exchange_explicit((v4 + 48), v7, memory_order_release);
  if (v11)
  {
    *(v11 + 16) = v7;
    *(StatusReg + 976) = 0;
  }

  else
  {
    *(v4 + 104) = v7;
    *(StatusReg + 976) = 0;

    _dispatch_root_queue_poke_and_wakeup(v4, 1, 0);
  }
}

void _dispatch_root_queue_push_override(uint64_t (***a1)(), uint64_t (***a2)(), unsigned int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 21);
  if (v6 < 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = (v6 >> 25) & 4;
  }

  if (*a2 >= 0x1000 && (*a2)[2] == &stru_B8.reserved2)
  {
    a2[4] = a1;
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    a1 = *(StatusReg + 176);
    if (a1)
    {
      *(StatusReg + 176) = a1[2];
    }

    else
    {
      a1 = _dispatch_continuation_alloc_from_heap();
    }

    a1[6] = v4;
    a1[7] = v5;
    a1[5] = a1;
    *a1 = &unk_70DE0;
    a1[1] = -1;
    a1[3] = -1;
    v4 = a1;
  }

  if (a3 - 7 <= 0xFFFFFFF9)
  {
    v10 = a3;
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_782C8 = a3;
    __break(1u);
  }

  else
  {
    v9 = 2 * (v7 > 3);
    if ((v7 & 2) != 0)
    {
      v9 = 1;
    }

    a1 = &(&_dispatch_root_queues)[16 * (3 * a3 + v9 - 3)];
    v4[2] = 0;
    v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v10 + 976) = a1 + 6;
    v11 = atomic_exchange_explicit((a1 + 6), v4, memory_order_release);
    if (v11)
    {
      *(v11 + 16) = v4;
      *(v10 + 976) = 0;
      return;
    }
  }

  a1[13] = v4;
  *(v10 + 976) = 0;

  _dispatch_root_queue_poke_and_wakeup(a1, 1, 0);
}

uint64_t _dispatch_pthread_root_queue_create(const char *a1, int a2, __int128 *a3, void *a4, _OWORD *a5)
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

  v12 = _dispatch_object_alloc(_OS_dispatch_queue_pthread_root_vtable, 320);
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
  *(v12 + 192) = _OS_dispatch_semaphore_vtable;
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

  return v13;
}

uint64_t _dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID(const char *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5)
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
  if (*(*v1 + 16) != 328721)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v1);
  return v1;
}

void _dispatch_pthread_root_queue_dispose(void *a1, _BYTE *a2)
{
  v4 = a1[4];
  v5 = a1[8];
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_lane_dispose_cold_1(v5);
  }

  pthread_attr_destroy(v4);
  _dispatch_semaphore_dispose(v4[1].__opaque);
  sig = v4[1].__sig;
  if (sig)
  {
    _Block_release(sig);
  }

  a1[3] = &off_74600;

  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_wakeup(char *context, char *a2, uint64_t a3)
{
  if ((*(context + 20) & 0x800000) != 0 || (a3 & 2) != 0 && (atomic_fetch_or_explicit((context + 56), 0x8000000000uLL, memory_order_release) & 0xFFFFFFFC) == 0)
  {

    _dispatch_lane_wakeup(context, a2, a3);
  }

  else if (*(context + 6))
  {

    _dispatch_runloop_queue_poke(context, a2, a3);
  }

  else
  {
    v3 = (atomic_fetch_and_explicit((context + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) >> 32) & 7;
    if (v3)
    {
      if (*(context + 6))
      {
        _dispatch_runloop_queue_poke(context, v3, a3);
      }

      _pthread_qos_override_end_direct();
    }

    else if (a3)
    {

      _os_object_release_internal_n(context, 2);
    }
  }
}

void _dispatch_runloop_queue_poke(char *context, unsigned int a2, char a3)
{
  if (*(*context + 16) == 394769 && _dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, context, _dispatch_runloop_queue_handle_init);
  }

  v6 = *(context + 21);
  v7 = v6 >> 12;
  if (a2)
  {
    v7 = a2;
  }

  v8 = (v6 >> 8) & 0xF;
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(context + 7);
  v11 = v9 << 32;
  while (1)
  {
    v12 = v10;
    v13 = v10 & 0x700000000;
    v14 = v10 & 0xFFFFFFF8FFFFFFFFLL | v11;
    if ((v14 & 0x1000000000) != 0)
    {
      v14 |= 0x800000000uLL;
    }

    v15 = v13 < v11 ? v14 : v12;
    if (v12 == v15)
    {
      break;
    }

    v10 = v12;
    atomic_compare_exchange_strong_explicit((context + 56), &v10, v15, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v12)
    {
      if (v7 > v8)
      {
        _pthread_qos_override_start_direct();
        if ((BYTE4(v12) & 7u) > v8)
        {
          _pthread_qos_override_end_direct();
        }
      }

      break;
    }
  }

  v16 = *(context + 8);
  if (v16 - 1 > 0xFFFFFFFD || ((v17 = _dispatch_send_wakeup_runloop_thread(v16, 0), (v17 - 268435459) >= 2) ? (v18 = v17 == 16) : (v18 = 1), !v18 ? (v19 = v17 == 0) : (v19 = 1), v19))
  {
    if ((a3 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    _dispatch_bug(7983, v17);
    if ((a3 & 1) == 0)
    {
      return;
    }
  }

  _os_object_release_internal_n(context, 2);
}

void _dispatch_runloop_queue_handle_init(void *context)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  options.reserved[1] = 0;
  *&options.flags = xmmword_4A7D8;
  name = 0;
  if (*(*context + 16) == 394769)
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

uint64_t _dispatch_runloop_queue_xref_dispose(uint64_t a1)
{
  v1 = (atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) >> 32) & 7;
  atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFFF00000003, memory_order_relaxed);
  result = (*(*a1 + 64))(a1, v1, 2);
  if (v1)
  {

    return _pthread_qos_override_end_direct();
  }

  return result;
}

void _dispatch_runloop_queue_dispose(mach_port_context_t guard, _BYTE *a2)
{
  v4 = *(guard + 64);
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_lane_dispose_cold_1(v4);
  }

  _dispatch_runloop_queue_handle_dispose(guard);

  _dispatch_lane_class_dispose(guard, a2);
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

BOOL _dispatch_runloop_root_queue_perform_4CF(char *object)
{
  v2 = *(*object + 16);
  if (v2 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v2);
  }

  dispatch_retain(object);
  v3 = (object + 48);
  if (!*(object + 6))
  {
    v15 = 0;
    goto LABEL_71;
  }

  v4 = mach_absolute_time();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
  if (v6 != -4)
  {
    if (v6)
    {
      add_explicit = atomic_fetch_add_explicit((v6 + 96), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 0)
      {
        if (add_explicit < 0)
        {
          _dispatch_runloop_root_queue_perform_4CF_cold_2();
        }

        *(v6 + 56) = 0xDEAD000000000000;
        _dispatch_object_dealloc(v6);
      }
    }

    *(StatusReg + 216) = -4;
  }

  v44 = *(StatusReg + 160);
  *(StatusReg + 160) = object;
  *(StatusReg + 168) = &v44;
  v8 = *(StatusReg + 32);
  v9 = (__clz(__rbit32((v8 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v8 >> 8) & 0x3FFF) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(StatusReg + 224);
  if (v11 && atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_group_notify_cold_1();
  }

  LODWORD(v12) = v10 | v8 & 0x8E0000FF;
  v13 = *(StatusReg + 200);
  v42 = v8;
  if (v13)
  {
    v14 = v10 & 0xFFF | v8;
    if (v14)
    {
      if ((v13 & 0xFFFu) > v14)
      {
        v14 = v13 & 0xFFF;
      }

      LODWORD(v12) = v14 | v13 & 0x880F0000;
    }

    else
    {
      LODWORD(v12) = v13 | 0x40000000;
      if ((v13 & 0xFFF) == 0)
      {
        LODWORD(v12) = *(StatusReg + 200);
      }
    }
  }

  if ((~v12 & 0xF0000) != 0)
  {
    v12 = v12 | 0xF0000;
  }

  else
  {
    v12 = v12;
  }

  *(StatusReg + 200) = v12;
  memset(v43, 0, sizeof(v43));
  v16 = *(object + 13);
  if (!v16)
  {
    v16 = _dispatch_wait_for_enqueuer(object + 13, (object + 48));
  }

  v17 = *(v16 + 16);
  *(object + 13) = v17;
  if (!v17)
  {
    v39 = *v3;
    while (v16 == (v39 & 0xFFFFFFFFFFFFFFF8))
    {
      v40 = v39;
      atomic_compare_exchange_strong_explicit(v3, &v40, 0, memory_order_release, memory_order_relaxed);
      v27 = v40 == v39;
      v39 = v40;
      if (v27)
      {
        goto LABEL_28;
      }
    }

    v17 = *(v16 + 16);
    if (!v17)
    {
      v17 = _dispatch_wait_for_enqueuer((v16 + 16), (object + 48));
    }

    *(object + 13) = v17;
  }

LABEL_28:
  v18 = *(StatusReg + 192);
  if (v18)
  {
    (*v18)(object);
  }

  v19 = *v16;
  if (*v16 < 0x1000uLL)
  {
    v41 = v4;
    v20 = *(v16 + 24);
    if ((v19 & 4) != 0)
    {
      *(v16 + 24) = -1;
    }

    if (v20 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v21 = *(v16 + 8);
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
      v25 = v21 & 0xFFFFFF;
      if ((v21 & 0xFFFFFF) != 0)
      {
        v26 = v23 & 0xFFFFFF00;
        v27 = (v22 & 0x44000000) == 0 && (*(v16 + 8) & 0x10000000) == 0;
        if (v27)
        {
          v28 = v24;
        }

        else
        {
          v28 = v21 & 0xFFFFFF;
        }

        if (v25 >= v26)
        {
          v24 = v28;
        }
      }

      else if (v22 >> 12)
      {
        v24 = (256 << ((v22 >> 12) - 1)) | 0xFF;
      }
    }

    v34 = v24 & 0x7FFFFFFF02FFFFFFLL;
    v35 = *(StatusReg + 32);
    if ((v35 & 0x1000000) != 0)
    {
      if (v34)
      {
        goto LABEL_116;
      }

      v34 = v35 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v34 == (v35 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_75:
      if (v20 == -1)
      {
        goto LABEL_80;
      }

      if (*(StatusReg + 224) == v20)
      {
        if ((v19 & 4) != 0 && v20 && atomic_fetch_add_explicit((v20 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
        {
          _dispatch_block_invoke_direct_cold_4();
        }

LABEL_80:
        if ((v19 & 4) != 0)
        {
          v37 = *(StatusReg + 176);
          if (v37)
          {
            v38 = *(v37 + 8) + 1;
          }

          else
          {
            v38 = 1;
          }

          v36 = v16;
          if (v38 <= _dispatch_continuation_cache_limit)
          {
            v36 = 0;
            *(v16 + 16) = v37;
            *(v16 + 8) = v38;
            *(StatusReg + 176) = v16;
          }
        }

        else
        {
          v36 = 0;
        }

        if ((v19 & 8) != 0)
        {
          _dispatch_runloop_root_queue_perform_4CF_cold_6();
        }

        else
        {
          _dispatch_client_callout(*(v16 + 40), *(v16 + 32));
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_8(v16);
          }
        }

        if (v36)
        {
          _dispatch_continuation_free_to_cache_limit(v36);
        }

        ++*(StatusReg + 208);
        v4 = v41;
        if (v18)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      v34 = 0;
LABEL_116:
      _dispatch_set_priority_and_voucher_slow(v34, v20, v19 & 4 | 2);
      goto LABEL_80;
    }

    if (v34)
    {
      goto LABEL_116;
    }

    goto LABEL_75;
  }

  if (*(v19 + 16) == 1)
  {
    (*(v19 + 24))(v16, 0, 0);
  }

  else
  {
    (*(v19 + 48))(v16, v43, 0x80000);
  }

  if (v18)
  {
LABEL_54:
    v18[1](object);
  }

LABEL_55:
  v15 = v17 != 0;
  if (!v17)
  {
    (*(*object + 64))(object, 0, 0);
  }

  *(StatusReg + 200) = v13 & 0xFFF0FFFF;
  v29 = v42 & 0xFFFFFFFF02FFFFFFLL;
  if (v42 == -1)
  {
    v30 = 0;
  }

  else
  {
    v30 = v42 & 0xFFFFFFFF02FFFFFFLL;
  }

  v31 = *(StatusReg + 32);
  if ((v31 & 0x1000000) != 0)
  {
    if (v30)
    {
LABEL_105:
      _dispatch_set_priority_and_voucher_slow(v29, v11, 6);
      goto LABEL_66;
    }

    v30 = v31 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v30 == (v31 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_62;
  }

  v29 = v30;
  if (v30)
  {
    goto LABEL_105;
  }

LABEL_62:
  if (v11 != -1)
  {
    if (*(StatusReg + 224) == v11)
    {
      if (v11 && atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
      {
        _dispatch_block_invoke_direct_cold_4();
      }

      goto LABEL_66;
    }

    v29 = 0;
    goto LABEL_105;
  }

LABEL_66:
  *(StatusReg + 160) = v44;
  if (v6 != -4)
  {
    *(StatusReg + 216) = 0;
    *(StatusReg + 40) = 0;
  }

  v32 = *(StatusReg + 176);
  if (v32)
  {
    *(StatusReg + 176) = 0;
    _dispatch_cache_cleanup(v32);
  }

  _dispatch_queue_merge_stats(v4, 0, 0);
LABEL_71:
  dispatch_release(object);
  return v15;
}

void _dispatch_runloop_root_queue_wakeup_4CF(char *a1)
{
  v2 = *(*a1 + 16);
  if (v2 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v2);
  }

  _dispatch_runloop_queue_wakeup(a1, 0, 0);
}

uint64_t _dispatch_runloop_root_queue_get_port_4CF(unsigned int *a1)
{
  v1 = *(*a1 + 16);
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

  return dword_74020;
}

uint64_t _dispatch_get_main_queue_port_4CF(uint64_t a1, uint64_t a2)
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    _dispatch_get_main_queue_handle_4CF_cold_1();
  }

  return dword_74020;
}

void _dispatch_main_queue_callback_4CF()
{
  if (!dword_74070)
  {
    dword_74070 = 1;
    _dispatch_main_queue_drain();
    dword_74070 = 0;
  }
}

void _dispatch_main_queue_drain()
{
  v41 = 0uLL;
  if (!qword_74030)
  {
    return;
  }

  v0 = mach_absolute_time();
  if ((dword_74050 & 0x40000) == 0)
  {
    _dispatch_main_queue_drain_cold_12();
  }

  v1 = v0;
  v2 = qword_74038;
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
        _dispatch_runloop_root_queue_perform_4CF_cold_2();
      }

      *(v4 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v4);
    }
  }

  *(StatusReg + 216) = -4;
  v41 = *(StatusReg + 160);
  *(StatusReg + 160) = &_dispatch_main_q;
  *(StatusReg + 168) = 0;
  v39 = *(StatusReg + 32);
  v6 = (__clz(__rbit32((v39 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v39 >> 8) & 0x3FFF) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(StatusReg + 224);
  if (v8 && atomic_fetch_add_explicit((v8 + 12), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_group_notify_cold_1();
  }

  if (((dword_74054 ^ v7) & 0xF00) != 0)
  {
    _dispatch_main_queue_update_priority_from_thread();
  }

  LODWORD(v9) = v7 | v39 & 0x8E0000FF;
  v10 = *(StatusReg + 200);
  v38 = v1;
  v36 = v10;
  if (v10)
  {
    v11 = v7 & 0xFFF | v39;
    if (v11)
    {
      v12 = v10 & 0x880F0000;
      v13 = v10 & 0xFFF;
      if (v13 > v11)
      {
        v11 = v13;
      }

      LODWORD(v9) = v12 | v11;
    }

    else
    {
      LODWORD(v9) = v10 | 0x40000000;
      if ((v10 & 0xFFF) == 0)
      {
        LODWORD(v9) = *(StatusReg + 200);
      }
    }
  }

  v37 = v8;
  if ((~v9 & 0xF0000) != 0)
  {
    v9 = v9 | 0xF0000;
  }

  else
  {
    v9 = v9;
  }

  *(StatusReg + 200) = v9;
  memset(v40, 0, sizeof(v40));
  v14 = off_74068[0];
  if (!off_74068[0])
  {
    v14 = _dispatch_wait_for_enqueuer(off_74068, &qword_74030);
  }

  off_74068[0] = 0;
  v15 = atomic_exchange_explicit(&qword_74030, 0, memory_order_release) & 0xFFFFFFFFFFFFFFF8;
  do
  {
    if (v14 == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v14 + 2);
      if (!v16)
      {
        v16 = _dispatch_wait_for_enqueuer(v14 + 2, 0);
      }
    }

    v17 = *(StatusReg + 192);
    if (v17)
    {
      (*v17)(&_dispatch_main_q);
    }

    v18 = *v14;
    if (*v14 >= 0x1000uLL)
    {
      if (*(v18 + 16) == 1)
      {
        (*(v18 + 24))(v14, 0, 0);
      }

      else
      {
        (*(v18 + 48))(v14, v40, 0x80000);
      }

      if (v17)
      {
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v19 = *(v14 + 3);
    if ((v18 & 4) != 0)
    {
      *(v14 + 3) = -1;
    }

    if (v19 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v20 = *(v14 + 1);
    if (v20 == -1)
    {
      v23 = 0;
    }

    else
    {
      v21 = *(StatusReg + 200);
      if (((v21 >> 8) & 0xF) != 0)
      {
        v22 = 1 << ((BYTE1(v21) & 0xFu) + 7);
      }

      else
      {
        v22 = 0;
      }

      v23 = v22 | *(StatusReg + 200);
      if ((v20 & 0xFFFFFF) != 0)
      {
        if ((v20 & 0xFFFFFFuLL) >= (v22 & 0xFFFFFF00) && ((v21 & 0x44000000) != 0 || (*(v14 + 1) & 0x10000000) != 0))
        {
          v23 = v20 & 0xFFFFFF;
        }
      }

      else if (v21 >> 12)
      {
        v23 = (256 << ((v21 >> 12) - 1)) | 0xFF;
      }
    }

    v25 = v23 & 0x7FFFFFFF02FFFFFFLL;
    v26 = *(StatusReg + 32);
    if ((v26 & 0x1000000) != 0)
    {
      if (v25)
      {
        goto LABEL_93;
      }

      v25 = v26 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v25 == (v26 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_65;
    }

    if (v25)
    {
      goto LABEL_93;
    }

LABEL_65:
    if (v19 == -1)
    {
      goto LABEL_70;
    }

    if (*(StatusReg + 224) != v19)
    {
      v25 = 0;
LABEL_93:
      _dispatch_set_priority_and_voucher_slow(v25, v19, v18 & 4 | 2);
      goto LABEL_70;
    }

    if ((v18 & 4) != 0 && v19 && atomic_fetch_add_explicit((v19 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      _dispatch_block_invoke_direct_cold_4();
    }

LABEL_70:
    if ((v18 & 4) != 0)
    {
      v28 = *(StatusReg + 176);
      if (v28)
      {
        v29 = *(v28 + 8) + 1;
      }

      else
      {
        v29 = 1;
      }

      v27 = v14;
      if (v29 <= _dispatch_continuation_cache_limit)
      {
        v27 = 0;
        *(v14 + 2) = v28;
        v14[2] = v29;
        *(StatusReg + 176) = v14;
      }
    }

    else
    {
      v27 = 0;
    }

    if ((v18 & 8) != 0)
    {
      _dispatch_main_queue_drain_cold_8();
    }

    else
    {
      _dispatch_client_callout(*(v14 + 5), *(v14 + 4));
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_workloop_invoke_cold_8(v14);
      }
    }

    if (v27)
    {
      _dispatch_continuation_free_to_cache_limit(v27);
    }

    ++*(StatusReg + 208);
    if (v17)
    {
LABEL_59:
      v17[1](&_dispatch_main_q);
    }

LABEL_60:
    v14 = v16;
  }

  while (v16);
  (*(*&_dispatch_main_q + 64))(&_dispatch_main_q, 0, 0);
  *(StatusReg + 200) = v36 & 0xFFF0FFFF;
  v30 = v39 & 0xFFFFFFFF02FFFFFFLL;
  if (v39 == -1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v39 & 0xFFFFFFFF02FFFFFFLL;
  }

  v32 = *(StatusReg + 32);
  if ((v32 & 0x1000000) != 0)
  {
    v34 = v37;
    v33 = v38;
    if (!v31)
    {
      v31 = v32 & 0xFFFFFFFFFEFFFFFFLL;
      goto LABEL_112;
    }

LABEL_116:
    _dispatch_set_priority_and_voucher_slow(v30, v34, 6);
  }

  else
  {
    v34 = v37;
    v33 = v38;
    if (v31 == (v32 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_99;
    }

LABEL_112:
    v30 = v31;
    if (v31)
    {
      goto LABEL_116;
    }

LABEL_99:
    if (v34 != -1)
    {
      if (*(StatusReg + 224) != v34)
      {
        v30 = 0;
        goto LABEL_116;
      }

      if (v34 && atomic_fetch_add_explicit((v34 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
      {
        _dispatch_block_invoke_direct_cold_4();
      }
    }
  }

  *(StatusReg + 160) = v41;
  *(StatusReg + 216) = 0;
  *(StatusReg + 40) = 0;
  v35 = *(StatusReg + 176);
  if (v35)
  {
    *(StatusReg + 176) = 0;
    _dispatch_cache_cleanup(v35);
  }

  _dispatch_queue_merge_stats(v33, 0, 0);
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
    return (*(*result + 64))(result, a3, 2);
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
    return (*(*result + 64))(result, v11, 0);
  }

  return result;
}

void _dispatch_main_queue_wakeup(unint64_t a1, char *a2, uint64_t a3)
{
  if ((*(a1 + 80) & 0x40000) != 0)
  {
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
    goto LABEL_9;
  }

  while (1)
  {
    if (!pthread_main_np())
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main() must be called on the main thread";
      __break(1u);
    }

    if (!dword_74070)
    {
      dword_74070 = 1;
      _dispatch_main_queue_drain();
      dword_74070 = 0;
      _dispatch_program_is_probably_callback_driven = 1;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      pthread_exit(0);
    }

    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main called from a block on the main queue";
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

  v3 = qword_4A8B0[v5];
LABEL_15:
  v4 = 2 * (flags > 3);
  if ((flags & 2) != 0)
  {
    v4 = 1;
  }

  return &(&_dispatch_root_queues)[16 * (v3 + v4)];
}

void _dispatch_queue_cleanup(dispatch_queue_s *a1, uint64_t a2)
{
  if (a1 != &_dispatch_main_q)
  {
    _dispatch_queue_cleanup_cold_1(a1);
  }

  _dispatch_queue_cleanup2();
}

void _dispatch_frame_cleanup(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch frame is active";
  qword_782C8 = a1;
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
  qword_78298 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch context is set";
  qword_782C8 = a1;
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
      _dispatch_runloop_root_queue_perform_4CF_cold_2();
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
  if ((dword_74050 & 0x40000) != 0)
  {
    _dispatch_queue_atfork_child_cold_1();
  }

  if (_dispatch_unsafe_fork)
  {
    off_74068[0] = (&stru_B8 + 72);
    qword_74030 = 256;
    qword_74168 = 256;
    qword_74130 = 256;
    v0 = &qword_741E8;
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
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Transition to multithreaded is prohibited";
    __break(1u);
  }
}

uint64_t _dispatch_prohibit_transition_to_multithreaded(uint64_t result)
{
  if (result)
  {
    if (atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 2u, memory_order_relaxed))
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: The executable is already multithreaded";
      __break(1u);
    }
  }

  else
  {
    atomic_fetch_and_explicit(&_dispatch_unsafe_fork, 0xFDu, memory_order_relaxed);
  }

  return result;
}

void _dispatch_block_async_invoke2(char *aBlock, char a2)
{
  v3 = aBlock;
  if (*(aBlock + 2))
  {
    v4 = *(aBlock + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 == _dispatch_block_special_invoke;
  if (v4 == _dispatch_block_special_invoke)
  {
    v6 = aBlock + 32;
    v7 = *(aBlock + 4);
    v5 = v7 == 3512316172;
    if (v7 != 3512316172)
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_782C8 = v7;
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v6 + 4);
  if ((v8 & 4) != 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_782C8 = v8;
    __break(1u);
    goto LABEL_19;
  }

  if ((v8 & 1) == 0)
  {
    aBlock = (*(*(v6 + 5) + 16))();
  }

  if ((v8 & 8) == 0 && !atomic_fetch_add_explicit((v6 + 20), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(v6 + 6));
  }

  __swp(aBlock, v6 + 14);
  if (aBlock)
  {
    if (*(aBlock + 2) != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit((aBlock + 8), 0xFFFFFFFE, memory_order_release);
      v5 = add_explicit == 2;
      if (add_explicit <= 2)
      {
LABEL_19:
        if (v5)
        {
          _os_object_dispose(aBlock);
          if ((a2 & 1) == 0)
          {
            return;
          }

          goto LABEL_22;
        }

LABEL_26:
        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
        return;
      }
    }
  }

  if ((a2 & 1) == 0)
  {
    return;
  }

LABEL_22:

  _Block_release(v3);
}

void _dispatch_lane_non_barrier_complete(unint64_t a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v4 = *(a1 + 56);
  do
  {
    v5 = v4;
    v6 = v4 - 0x20000000000;
    if ((v4 & 0xFFFFFFFC) != 0)
    {
      v6 |= 0x8000000000uLL;
    }

    else if (!(v6 >> 53))
    {
      if ((v4 & 0x10000000000) != 0)
      {
        v7 = v4 + 0x3FFF0000000000;
      }

      else
      {
        v7 = v4 + (*(a1 + 80) << 41) + 0x3FFE0000000000;
      }

      v8 = (v7 & 0x3FFE0000000000) == 0x20000000000000;
      v9 = v7 & 0xFFE0017FFFFFFFFFLL | v3;
      if (v8)
      {
        v6 = v9;
      }

      else
      {
        v6 |= (v5 >> 39) & 1;
      }
    }

    v4 = v5;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v6, memory_order_relaxed, memory_order_relaxed);
  }

  while (v4 != v5);
  if ((~v5 & 0x1800000000) == 0)
  {
    v10 = HIDWORD(v5) & 7;
    v11 = *(StatusReg + 200);
    if ((HIWORD(v11) & 0xF) < v10)
    {
      *(StatusReg + 200) = v11 & 0xFFF0FFFF | (v10 << 16);
    }
  }

  if (((v6 ^ v5) & 0x40000000000000) != 0)
  {

    _dispatch_lane_barrier_complete(a1, 0, a2);
  }

  else if ((v6 ^ v5))
  {
    if ((a2 & 1) == 0 && *(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
    }

    v12 = *(**(a1 + 24) + 72);

    v12();
  }

  else if (a2)
  {

    _os_object_release_internal_n(a1, 2);
  }
}

double _dispatch_sync_f_slow(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a5[3])
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = StatusReg[4];
    v19 = 0;
    v20 = 0;
    v13[0] = a6 | 1;
    v13[1] = v11 | 0x10000000;
    v13[2] = 0;
    v13[3] = StatusReg[28];
    v13[4] = _dispatch_async_and_wait_invoke;
    v13[5] = v13;
    v13[6] = 0;
    v14 = a1;
    v15 = a3;
    v16 = a2;
    v17 = 0;
    v18 = 0;
    HIDWORD(v19) = StatusReg[3];
    __DISPATCH_WAIT_FOR_QUEUE__(v13, a5);
    if (v15)
    {
      _dispatch_sync_invoke_and_complete_recurse(a1, a2, a3, a4, v13);
    }

    else
    {
      _dispatch_sync_complete_recurse(a1, v14, a4);
    }
  }

  else
  {

    return _dispatch_sync_function_invoke(a5, a2, a3);
  }

  return result;
}

double _dispatch_sync_recurse(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(a1 + 24);
  v6 = *(StatusReg + 24) & 0xFFFFFFFCLL;
LABEL_2:
  if (*(v5 + 80) == 1)
  {
    v7 = *(v5 + 56);
    while (v7 == (v7 & 0x3000000000 | 0x1FFE0000000000))
    {
      v8 = v7;
      atomic_compare_exchange_strong_explicit((v5 + 56), &v8, v6 | v7 & 0x3000000000 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v9 = v8 == v7;
      v7 = v8;
      if (v9)
      {
        goto LABEL_7;
      }
    }

    v13 = 2;
  }

  else
  {
    if (!*(v5 + 48))
    {
      v10 = *(v5 + 56);
      while ((v10 & 0xFFC0018000000000) == 0)
      {
        v11 = v10;
        atomic_compare_exchange_strong_explicit((v5 + 56), &v11, v10 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v9 = v11 == v10;
        v10 = v11;
        if (v9)
        {
LABEL_7:
          v5 = *(v5 + 24);
          if (*(v5 + 24))
          {
            goto LABEL_2;
          }

          _dispatch_sync_invoke_and_complete_recurse(a1, a2, a3, a4, 0);
          return result;
        }
      }
    }

    v13 = 0;
  }

  return _dispatch_sync_f_slow(a1, a2, a3, a4, v5, v13);
}

void _dispatch_lane_barrier_sync_invoke_and_complete(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v8;
  _dispatch_client_callout(a2, a3);
  ++*(StatusReg + 208);
  *(StatusReg + 160) = v8;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  if (!*(a1 + 48) && *(a1 + 80) < 2u)
  {
    v5 = *(a1 + 56);
    while ((v5 & 0xFF80008800000001) == 0)
    {
      v6 = v5;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v6, (v5 & 0x7FFF7000000000) - 0x40020000000000, memory_order_release, memory_order_relaxed);
      v7 = v6 == v5;
      v5 = v6;
      if (v7)
      {
        return;
      }
    }
  }

  _dispatch_lane_barrier_complete(a1, 0, 0);
}

uint64_t _dispatch_async_and_wait_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 106))
  {
    v3 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v3 = 0;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 160);
  *(StatusReg + 160) = v2;
  *(StatusReg + 168) = a1 + 80;
  _dispatch_client_callout(*(a1 + 72), *(a1 + 64));
  *(StatusReg + 160) = v6;
  if (v3)
  {
    _dispatch_autorelease_pool_pop(v3);
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

void __DISPATCH_WAIT_FOR_QUEUE__(uint64_t result, uint64_t *a2)
{
  v4 = a2[7];
  while ((v4 & 0xFF80002000000002) == 0x2000000002)
  {
    v5 = v4 | 0x800000000;
    v6 = v4;
    atomic_compare_exchange_strong_explicit((a2 + 7), &v6, v4 | 0x800000000, memory_order_relaxed, memory_order_relaxed);
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
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_sync called on queue already owned by current thread";
    qword_782C8 = v5;
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

  (*(*a2 + 72))(a2, result, v16);
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

void _dispatch_sync_complete_recurse(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a3 >> 1) & 1;
  do
  {
    if (a1 == a2)
    {
      break;
    }

    if (v5)
    {
      (*(*a1 + 64))(a1, 0, 4);
    }

    else
    {
      _dispatch_lane_non_barrier_complete(a1, 0);
    }

    a1 = *(a1 + 24);
    LOBYTE(v5) = *(a1 + 80) == 1;
  }

  while (*(a1 + 24));
}

void _dispatch_sync_invoke_and_complete_recurse(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), unint64_t a4, uint64_t a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v8;
  _dispatch_client_callout(a2, a3);
  ++*(StatusReg + 208);
  *(StatusReg + 160) = v8;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_sync_complete_recurse(a1, 0, a4);
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
    if (*(*v7 + 16) == 18)
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

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = *(StatusReg + 24) & 0xFFFFFFFC;
    v14 = atomic_exchange_explicit((a1 + 100), 0, memory_order_release);
    if (v14 != v13)
    {
      _dispatch_lane_legacy_set_target_queue_cold_2(a1 + 100, v14, StatusReg);
    }
  }
}

void _dispatch_sync_invoke_and_complete(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v5;
  _dispatch_client_callout(a2, a3);
  ++*(StatusReg + 208);
  *(StatusReg + 160) = v5;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_lane_non_barrier_complete(a1, 0);
}

void _dispatch_async_and_wait_recurse(unint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v10 = a1;
  if ((v9 & 0x1000000) != 0)
  {
    goto LABEL_37;
  }

  v11 = (a1 + 56);
  v12 = (a1 + 80);
  v13 = a1;
  v14 = a4;
LABEL_3:
  if ((v8 & 0x3000000000) != 0)
  {
    v15 = *(v13 + 24);
    if (v15 < &_dispatch_root_queues || v15 >= &qword_74A80)
    {
      v10 = v13;
LABEL_37:
      *a2 &= ~0x80uLL;
      *(a2 + 56) = v10;
      v13 = v10;
      goto LABEL_33;
    }
  }

  if ((v14 & 2) != 0)
  {
    v17 = v9 << 41;
    while (v8 == (v8 & 0x3000000000) - v17 + 0x20000000000000)
    {
      v18 = v8;
      atomic_compare_exchange_strong_explicit(v11, &v18, v8 & 0x3000000000 | a3 & 0xFFFFFFFC | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v19 = v18 == v8;
      v8 = v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }
  }

  else if (!*(v13 + 48))
  {
    while ((v8 & 0xFFC0018000000000) == 0)
    {
      v24 = v8;
      atomic_compare_exchange_strong_explicit(v11, &v24, v8 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
      v19 = v24 == v8;
      v8 = v24;
      if (v19)
      {
LABEL_13:
        v20 = *(v13 + 84) & 0xFFF;
        if (v20)
        {
          v21 = v20 >= 0x100 ? 1 << (BYTE1(v20) + 7) : 0;
          v22 = v21 | *(v13 + 84);
          if (v22 > (*(a2 + 8) & 0xFFFFFFuLL))
          {
            *(a2 + 8) = v22 | 0x10000000;
          }
        }

        if ((*(a2 + 106) & 3) == 0)
        {
          *(a2 + 106) |= HIWORD(*v12) & 3;
        }

        v10 = *(v13 + 24);
        if (!*(v10 + 24))
        {

          _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a2, v13, a4);
          return;
        }

        v12 = (v10 + 80);
        v23 = v14 & 0xFFFFFFFFFFFFFFFDLL;
        v14 |= 2uLL;
        if (*(v10 + 80) != 1)
        {
          v14 = v23;
        }

        *a2 = v14;
        v11 = (v10 + 56);
        v8 = *(v10 + 56);
        v9 = *(v10 + 80);
        v13 = v10;
        if ((v9 & 0x1000000) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      }
    }
  }

LABEL_33:

  _dispatch_async_and_wait_f_slow(a1, a4, a2, v13);
}

void _dispatch_async_and_wait_f_slow(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  __DISPATCH_WAIT_FOR_QUEUE__(a3, a4);
  v7 = *(a3 + 56);
  if (*(a3 + 64))
  {

    _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a3, v7, a2);
  }

  else
  {
    v8 = *(a3 + 56);

    _dispatch_sync_complete_recurse(a1, v8, a2);
  }
}

void _dispatch_async_and_wait_invoke_and_complete_recurse(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(*a3 + 16) != 18 && (*(a3 + 56) & 0x2000000000) == 0)
  {
    a3 = -4;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = *(StatusReg + 216);
  *(StatusReg + 216) = a3;
  if (*(a2 + 106))
  {
    v7 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v20 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v20;
  v10 = *(StatusReg + 32);
  v11 = v10 & 0xFFFFFF;
  v12 = (v10 & 0xFFFFFFuLL) >= (v8 & 0xFFFFFFuLL) || (v10 & 0xFFFFFF) == 0;
  v17 = v12;
  if (v12)
  {
    add_explicit = 0;
  }

  else
  {
    add_explicit = v10 & 0xFFFFFF;
  }

  v14 = v8 & 0xFFFFFFFF02FFFFFFLL;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8 & 0xFFFFFFFF02FFFFFFLL;
  }

  if ((v10 & 0x1000000) != 0)
  {
    if (v15)
    {
LABEL_44:
      v9 = _dispatch_set_priority_and_voucher_slow(v14, v9, 0);
      goto LABEL_20;
    }

    v15 = v10 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v15 == (v10 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_16;
  }

  v14 = v15;
  if (v15)
  {
    goto LABEL_44;
  }

LABEL_16:
  if (v9 == -1)
  {
    goto LABEL_20;
  }

  if (*(StatusReg + 224) != v9)
  {
    v14 = 0;
    goto LABEL_44;
  }

  if (v9 && atomic_fetch_add_explicit((v9 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_78298 = "API MISUSE: Voucher resurrection";
    __break(1u);
    goto LABEL_26;
  }

  while (1)
  {
LABEL_20:
    _dispatch_client_callout(*(a2 + 72), *(a2 + 64));
    ++*(StatusReg + 208);
    v16 = *(StatusReg + 32);
    if ((v16 & 0x1000000) != 0)
    {
      if (!v17)
      {
        goto LABEL_46;
      }

      v11 = v16 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else
    {
      if (add_explicit == (v16 & 0xFFFFFFFF76FFFFFFLL))
      {
        goto LABEL_22;
      }

      v11 = add_explicit;
    }

    if (v11)
    {
      goto LABEL_46;
    }

LABEL_22:
    if (v9 == -1)
    {
      goto LABEL_27;
    }

    if (*(StatusReg + 224) != v9)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_27;
    }

    add_explicit = atomic_fetch_add_explicit((v9 + 12), 0xFFFFFFFF, memory_order_relaxed);
LABEL_26:
    if (add_explicit > 1)
    {
      goto LABEL_27;
    }

    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
  }

  v11 = 0;
LABEL_46:
  _dispatch_set_priority_and_voucher_slow(v11, v9, 6);
LABEL_27:
  *(StatusReg + 160) = v20;
  if (v7)
  {
    _dispatch_autorelease_pool_pop(v7);
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  *(StatusReg + 216) = v18;
  _dispatch_sync_complete_recurse(a1, 0, a4);
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
    _dispatch_barrier_async_detached_f(&off_74600, a1, _dispatch_queue_specific_head_dispose_slow);
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
  if (v2)
  {
    do
    {
      v3 = *(v2 + 24);
      _dispatch_client_callout(*(v2 + 8), *(v2 + 16));
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t _dispatch_non_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t *a2, uint64_t a3)
{
LABEL_1:
  v3 = *(a1 + 56);
  if ((BYTE4(v3) & 7u) > *(a2 + 105))
  {
    *(a2 + 105) = BYTE4(v3) & 7;
  }

  v4 = *a2;
  if ((*a2 & 0x80) != 0)
  {
    v5 = *(a1 + 84) & 0xFFF;
    if (v5)
    {
      v6 = v5 >= 0x100 ? 1 << (BYTE1(v5) + 7) : 0;
      v7 = v6 | *(a1 + 84);
      if (v7 > (a2[1] & 0xFFFFFFuLL))
      {
        a2[1] = v7 | 0x10000000;
      }
    }

    if ((*(a2 + 106) & 3) == 0)
    {
      *(a2 + 106) |= HIWORD(*(a1 + 80)) & 3;
    }

    if ((v3 & 0x3000000000) == 0)
    {
      goto LABEL_15;
    }

    a2[7] = a1;
    return _dispatch_waiter_wake_wlh_anon(a2, a2, a3);
  }

  if ((v3 & 0x3000000000) != 0)
  {
    return _dispatch_waiter_wake_wlh_anon(a2, a2, a3);
  }

LABEL_15:
  a1 = *(a1 + 24);
  if (*(a1 + 80) == 1)
  {
    *a2 = v4 | 2;
  }

  else
  {
    *a2 = v4 & 0xFFFFFFFFFFFFFFFDLL;
    if (!*(a1 + 48))
    {
      v8 = *(a1 + 56);
      while ((v8 & 0xFFC0018000000000) == 0)
      {
        v9 = v8;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v8 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v10 = v9 == v8;
        v8 = v9;
        if (v10)
        {
          goto LABEL_1;
        }
      }
    }
  }

  return (*(*a1 + 72))();
}

uint64_t _dispatch_waiter_wake_wlh_anon(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t _dispatch_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*(a2 + 48) == -4 && (BYTE4(a4) & 7u) > *(a2 + 105))
  {
    *(a2 + 105) = BYTE4(a4) & 7;
  }

  if ((a4 & 0x2000000000) != 0)
  {
    v8 = a1;
    if ((a3 & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_22;
      }

      v8 = a1;
      if (a5)
      {
        goto LABEL_22;
      }

      v8 = a1;
      if (*(a1 + 8) == 0x7FFFFFFF)
      {
        goto LABEL_22;
      }

      v8 = a1;
      if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) > 1)
      {
        goto LABEL_22;
      }

      qword_78298 = "API MISUSE: Over-release of an object";
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
      v5 = HIDWORD(a4) & 7;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = *(StatusReg + 200);
      if ((HIWORD(v7) & 0xF) < v5)
      {
        *(StatusReg + 200) = v7 & 0xFFF0FFFF | (v5 << 16);
      }
    }

    v8 = -4;
    if ((a3 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) > 2)
  {
    goto LABEL_22;
  }

  qword_78298 = "API MISUSE: Over-release of an object";
  __break(1u);
LABEL_20:
  v8 = a1;
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
    v8 = a1;
    if (add_explicit <= 1)
    {
      qword_78298 = "API MISUSE: Over-release of an object";
      __break(1u);
      goto LABEL_39;
    }
  }

LABEL_22:
  if ((a4 & 0x3000000000) == 0)
  {
    v8 = *(a1 + 24);
    add_explicit = *a2;
    if ((*a2 & 0x80) != 0)
    {
      v11 = *(a1 + 84) & 0xFFF;
      if (v11)
      {
        v12 = v11 >= 0x100 ? 1 << (BYTE1(v11) + 7) : 0;
        v13 = v12 | *(a1 + 84);
        if (v13 > (*(a2 + 8) & 0xFFFFFFuLL))
        {
          *(a2 + 8) = v13 | 0x10000000;
        }
      }

      if ((*(a2 + 106) & 3) == 0)
      {
        *(a2 + 106) |= HIWORD(*(a1 + 80)) & 3;
      }
    }

    if (*(v8 + 80) == 1)
    {
      *a2 = add_explicit | 2;
LABEL_37:
      *(a2 + 106) &= ~0x80u;
      return (*(*v8 + 72))(v8);
    }

LABEL_39:
    *a2 = add_explicit & 0xFFFFFFFFFFFFFFFDLL;
    if (!*(v8 + 48))
    {
      v14 = *(v8 + 56);
      while ((v14 & 0xFFC0018000000000) == 0)
      {
        v15 = v14;
        atomic_compare_exchange_strong_explicit((v8 + 56), &v15, v14 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v16 = v15 == v14;
        v14 = v15;
        if (v16)
        {
          return _dispatch_non_barrier_waiter_redirect_or_wake(v8, a2, a3);
        }
      }
    }

    goto LABEL_37;
  }

  if ((*a2 & 0x80) != 0)
  {
    *(a2 + 56) = a1;
  }

  return _dispatch_waiter_wake(a2, v8, a4, a5);
}

uint64_t _dispatch_waiter_wake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  if (((a3 & 0x2000000000) == 0 || *(a1 + 106) < 0) && (a4 & 0x2000000000) == 0 && v5 == -4 || (result = _dispatch_event_loop_wake_owner(a1, a2, a3, a4), v5 == -4))
  {

    return _dispatch_waiter_wake_wlh_anon(a1, a2, a3);
  }

  return result;
}

uint64_t _dispatch_lane_concurrent_drain(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 24);
  v5 = *a4;
  v42 = (a1 + 48);
  if (!*(a1 + 48))
  {
    return 0;
  }

  v6 = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v49 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v49;
  if ((v5 & 0x40000000000000) != 0)
  {
    v9 = 0x40000000000000;
  }

  else
  {
    v9 = v5 & 0x3FFE0000000000;
  }

  if ((a3 & 0x10) != 0 && *(StatusReg + 40))
  {
    _dispatch_return_to_kernel();
  }

  v10 = *(a1 + 104);
  if (!v10)
  {
    v10 = _dispatch_wait_for_enqueuer((a1 + 104), v42);
  }

  v11 = *(a1 + 56);
  if (!(v11 >> 55))
  {
    v44 = (v6 >> 21) & 1;
    v47 = v6;
    v46 = v4;
    while (v4 == *(a1 + 24))
    {
      v12 = *v10;
      if (*v10 >= 0x1000uLL)
      {
        if ((*(v12 + 16) & 0xF0) == 0x10 && (*(v10 + 80) & 0x80000) != 0)
        {
LABEL_18:
          if (v9 != 0x40000000000000)
          {
            v13 = (*(a1 + 80) << 41) - 0x10000000000;
            v14 = v11;
            do
            {
              if ((v11 & 0x10000000000) != 0)
              {
                v15 = 0;
              }

              else
              {
                v15 = v13;
              }

              v16 = v15 + v11 - v9;
              if (!(v16 >> 53))
              {
                v16 += 0x40010000000000;
              }

              atomic_compare_exchange_strong_explicit((a1 + 56), &v14, v16 & 0xFFFFFF7FFFFFFFFFLL, memory_order_acquire, memory_order_acquire);
              v18 = v14 == v11;
              v11 = v14;
            }

            while (!v18);
            if ((v16 & 0x40000000000000) == 0)
            {
              goto LABEL_147;
            }

            v12 = *v10;
          }

          if (v12 <= 0xFFF && (v6 & 0x80000) == 0 && (v12 & 1) != 0)
          {
            *(a2 + 8) = v10;
            if ((v6 & 8) == 0)
            {
              goto LABEL_160;
            }

            qword_78298 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
            __break(1u);
LABEL_150:
            qword_78298 = "API MISUSE: Voucher over-release";
            __break(1u);
            return 0;
          }

          v17 = *(v10 + 16);
          *(a1 + 104) = v17;
          if (!v17)
          {
            v35 = *v42;
            while (v10 == (v35 & 0xFFFFFFFFFFFFFFF8))
            {
              v36 = v35;
              atomic_compare_exchange_strong_explicit(v42, &v36, 0, memory_order_release, memory_order_relaxed);
              v9 = 0x40000000000000;
              v18 = v36 == v35;
              v35 = v36;
              if (v18)
              {
                goto LABEL_42;
              }
            }

            v17 = *(v10 + 16);
            if (!v17)
            {
              v17 = _dispatch_wait_for_enqueuer((v10 + 16), v42);
            }

            *(a1 + 104) = v17;
          }

          v9 = 0x40000000000000;
          goto LABEL_42;
        }
      }

      else if ((v12 & 2) != 0)
      {
        goto LABEL_18;
      }

      if (v9 == 0x40000000000000)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x40000000000000uLL, memory_order_release);
        v9 = *(a1 + 80) << 41;
      }

      else if (!v9)
      {
        if (v12 > 0xFFF || (v12 & 0x81) == 0)
        {
          while ((v11 & 0xFFE0018000000000) == 0)
          {
            v38 = v11;
            atomic_compare_exchange_strong_explicit((a1 + 56), &v38, v11 + 0x20000000000, memory_order_acquire, memory_order_acquire);
            v18 = v38 == v11;
            v11 = v38;
            if (v18)
            {
              v9 = 0x20000000000;
              goto LABEL_35;
            }
          }

LABEL_147:
          *a4 &= 0x4000000001uLL;
          *(StatusReg + 160) = v49;
          return -1;
        }

        v9 = 0x20000000000;
        atomic_fetch_add_explicit((a1 + 56), 0x20000000000uLL, memory_order_relaxed);
      }

LABEL_35:
      v17 = *(v10 + 16);
      *(a1 + 104) = v17;
      if (!v17)
      {
        v33 = *v42;
        while (v10 == (v33 & 0xFFFFFFFFFFFFFFF8))
        {
          v34 = v33;
          atomic_compare_exchange_strong_explicit(v42, &v34, 0, memory_order_release, memory_order_relaxed);
          v18 = v34 == v33;
          v33 = v34;
          if (v18)
          {
            goto LABEL_36;
          }
        }

        v17 = *(v10 + 16);
        if (!v17)
        {
          v17 = _dispatch_wait_for_enqueuer((v10 + 16), v42);
        }

        *(a1 + 104) = v17;
      }

LABEL_36:
      v18 = *v10 > 0xFFFuLL || (*v10 & 0x81) == 0;
      if (!v18)
      {
        v9 -= 0x20000000000;
        _dispatch_non_barrier_waiter_redirect_or_wake(a1, v10, a3);
        goto LABEL_53;
      }

      if ((v6 & 0x20000) != 0)
      {
        v9 -= 0x20000000000;
        _dispatch_continuation_redirect_push(a1, v10);
        goto LABEL_53;
      }

LABEL_42:
      v19 = *(StatusReg + 192);
      if (v19)
      {
        (*v19)(a1);
      }

      v20 = *v10;
      if (*v10 < 0x1000uLL)
      {
        if ((v6 & 0x1000000) != 0)
        {
          v48 = _dispatch_autorelease_pool_push();
          v20 = *v10;
        }

        else
        {
          v48 = 0;
        }

        v21 = *(v10 + 24);
        if ((v20 & 4) != 0)
        {
          *(v10 + 24) = -1;
        }

        if (v21 != -1 && MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v22 = *(v10 + 8);
        if (v22 == -1)
        {
          v25 = 0;
        }

        else
        {
          v23 = *(StatusReg + 200);
          if (((v23 >> 8) & 0xF) != 0)
          {
            v24 = 1 << ((BYTE1(v23) & 0xFu) + 7);
          }

          else
          {
            v24 = 0;
          }

          v25 = v24 | *(StatusReg + 200);
          if ((v22 & 0xFFFFFF) != 0)
          {
            if ((v22 & 0xFFFFFFuLL) >= (v24 & 0xFFFFFF00) && ((v23 & 0x44000000) != 0 || (*(v10 + 8) & 0x10000000) != 0))
            {
              v25 = v22 & 0xFFFFFF;
            }
          }

          else if (v23 >> 12)
          {
            v25 = (256 << ((v23 >> 12) - 1)) | 0xFF;
          }
        }

        result = v25 & 0x7FFFFFFF02FFFFFFLL;
        v28 = *(StatusReg + 32);
        if ((v28 & 0x1000000) != 0)
        {
          if (!result)
          {
            result = v28 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_121;
          }

LABEL_130:
          result = _dispatch_set_priority_and_voucher_slow(result, v21, v20 & 4 | 2);
          if ((v20 & 0x200) == 0)
          {
LABEL_90:
            result = 0;
          }
        }

        else
        {
          if (result == (v28 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_84;
          }

LABEL_121:
          if (result)
          {
            goto LABEL_130;
          }

LABEL_84:
          if (v21 != -1)
          {
            if (*(StatusReg + 224) != v21)
            {
              result = 0;
              goto LABEL_130;
            }

            if ((v20 & 4) != 0)
            {
              if (v21)
              {
                result = 0;
                if (atomic_fetch_add_explicit((v21 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
                {
                  goto LABEL_150;
                }
              }
            }
          }

          if ((v20 & 0x200) == 0)
          {
            goto LABEL_90;
          }
        }

        if ((v20 & 4) != 0)
        {
          v30 = *(StatusReg + 176);
          if (v30)
          {
            v31 = *(v30 + 8) + 1;
          }

          else
          {
            v31 = 1;
          }

          v29 = v10;
          if (v31 <= _dispatch_continuation_cache_limit)
          {
            v29 = 0;
            *(v10 + 16) = v30;
            *(v10 + 8) = v31;
            *(StatusReg + 176) = v10;
          }
        }

        else
        {
          v29 = 0;
        }

        if ((v20 & 8) != 0)
        {
          v37 = *(**(v10 + 48) + 16);
          if (v37 != 514)
          {
            qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
            qword_782C8 = v37;
            __break(1u);
            return result;
          }

          group = *(v10 + 48);
          _dispatch_client_callout(*(v10 + 40), *(v10 + 32));
          v6 = v47;
          v32 = v48;
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          dispatch_group_leave(group);
          if (v29)
          {
            goto LABEL_139;
          }
        }

        else
        {
          _dispatch_client_callout(*(v10 + 40), *(v10 + 32));
          v6 = v47;
          v32 = v48;
          if (!MEMORY[0xFFFFFC100])
          {
            if (!v29)
            {
              goto LABEL_101;
            }

LABEL_139:
            _dispatch_continuation_free_to_cache_limit(v29);
            if (!v32)
            {
LABEL_103:
              ++*(StatusReg + 208);
              v4 = v46;
              if (v19)
              {
                goto LABEL_52;
              }

              goto LABEL_53;
            }

LABEL_102:
            _dispatch_autorelease_pool_pop(v32);
            goto LABEL_103;
          }

          kdebug_trace();
          if (v29)
          {
            goto LABEL_139;
          }
        }

LABEL_101:
        if (!v32)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (*(v20 + 16) == 1)
      {
        (*(v20 + 24))(v10, 0, v44);
      }

      else
      {
        (*(v20 + 48))(v10, a2, v6 & 0xFFFF0000);
      }

      if (v19)
      {
LABEL_52:
        v19[1](a1);
      }

LABEL_53:
      v10 = v17;
      if (!v17)
      {
        if (!*v42)
        {
          v10 = 0;
          break;
        }

        v10 = *(a1 + 104);
        if (!v10)
        {
          v10 = _dispatch_wait_for_enqueuer((a1 + 104), v42);
        }
      }

      if (*(StatusReg + 40))
      {
        _dispatch_return_to_kernel();
      }

      if (*(a1 + 80) != 1 && ((v6 & 0x4000000) != 0 || (*(StatusReg + 960) & 1) == 0) && ((v6 & 0x100000) == 0 || (*(*(StatusReg + 216) + 60) & 7u) <= *(*(StatusReg + 216) + 100)))
      {
        v11 = *(a1 + 56);
        if (!(v11 >> 55))
        {
          continue;
        }
      }

      break;
    }
  }

  if (v9 == 0x40000000000000)
  {
    v9 = (*(a1 + 80) << 41) + 0x40000000000000;
  }

  if (!v10)
  {
    result = 0;
    *a4 = *a4 & 0x4000000001 | v9;
    *(StatusReg + 160) = v49;
    return result;
  }

  v39 = *(a1 + 80);
  if (v39 >= 2)
  {
    v40 = *v10;
    if (*v10 < 0x1000uLL)
    {
      if ((v40 & 2) == 0)
      {
        goto LABEL_159;
      }
    }

    else if ((*(v40 + 16) & 0xF0) != 0x10 || (*(v10 + 80) & 0x80000) == 0)
    {
      goto LABEL_159;
    }

    v9 = v9 - (v39 << 41) + 0x10000000000;
  }

LABEL_159:
  *a4 = *a4 & 0x4000000001 | v9;
LABEL_160:
  *(StatusReg + 160) = v49;
  return *(a1 + 24);
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
  if (*(v3 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed) <= 0)
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

void _dispatch_queue_wakeup_with_override_slow(uint64_t a1, unint64_t a2, char a3)
{
  v5 = HIDWORD(a2) & 7;
  v6 = *(a1 + 24);
  if ((a2 & 0x1000000000) != 0)
  {
    if (v6 < &_dispatch_root_queues || v6 >= &qword_74A80)
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

  if ((*(a1 + 80) & 0x400000) == 0)
  {
LABEL_16:
    v11 = 1;
    goto LABEL_17;
  }

  v7 = *(a1 + 100);
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  do
  {
    v9 = v7;
    v10 = v7 | 2;
    if (v7 < 4)
    {
      v10 = v8;
    }

    atomic_compare_exchange_strong_explicit((a1 + 100), &v7, v10, memory_order_acquire, memory_order_acquire);
  }

  while (v7 != v9);
  if (v9 > 3)
  {
    _pthread_workqueue_override_start_direct_check_owner();
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    goto LABEL_41;
  }

  v6 = *(a1 + 24);
  if (MEMORY[0xFFFFFC100])
  {
    v20 = HIDWORD(a2) & 7;
    kdebug_trace();
    v5 = v20;
  }

  v11 = 0;
LABEL_17:
  v13 = (a1 + 100);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v15 = v5;
    if (((*v6)[2] & 0x10000) != 0)
    {
      if (v5 > ((*(v6 + 21) >> 8) & 0xFu))
      {
        _dispatch_root_queue_push_override_stealer(v6, a1, v5);
      }
    }

    else if ((*v6)[2] == 18)
    {
      _dispatch_workloop_push_stealer(v6, a1, v5);
    }

    else if ((*(v6 + 15) & 7) == 0 || (*(v6 + 15) & 7u) < v5)
    {
      ((*v6)[8])(v6, v5, 0);
    }

    if (v11)
    {
      break;
    }

    do
    {
      for (i = *v13; ; i = v19)
      {
        while ((i & 2) == 0)
        {
          v18 = i;
          atomic_compare_exchange_strong_explicit(v13, &v18, 0, memory_order_release, memory_order_relaxed);
          if (v18 == i)
          {
            if (i)
            {
              _dispatch_unfair_lock_unlock_slow(a1 + 100, i);
            }

            goto LABEL_41;
          }

          i = v18;
        }

        v19 = i;
        atomic_compare_exchange_strong_explicit(v13, &v19, i & 0xFFFFFFFD, memory_order_release, memory_order_relaxed);
        if (v19 == i)
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

      v5 = *(a1 + 60) & 7;
    }

    while ((*(a1 + 60) & 7u) <= v15);
  }

LABEL_41:
  if (a3)
  {

    _os_object_release_internal_n(a1, 2);
  }
}

void _dispatch_root_queue_push_override_stealer(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 - 7 <= 0xFFFFFFF9)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_782C8 = a3;
    __break(1u);
LABEL_15:
    v10 = _dispatch_continuation_alloc_from_heap();
    goto LABEL_10;
  }

  v3 = a2;
  v4 = a1;
  v8 = *(a1 + 84);
  if (v8 < 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = (v8 >> 25) & 4;
  }

  if ((v9 & 2) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (v9 > 3);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 176);
  if (!v10)
  {
    goto LABEL_15;
  }

  *(StatusReg + 176) = v10[2];
LABEL_10:
  *v10 = &unk_70DA8;
  if (*(v3 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v3 + 8), 2u, memory_order_relaxed) > 0)
  {
    v11 = &(&_dispatch_root_queues)[16 * (3 * a3 + v6 - 3)];
    v10[6] = v3;
    v10[7] = v4;
    v10[4] = 0;
    v10[5] = v10;
    v10[1] = -1;
    v10[3] = -1;
    v10[2] = 0;
    *(StatusReg + 976) = v11 + 6;
    v12 = atomic_exchange_explicit((v11 + 6), v10, memory_order_release);
    if (v12)
    {
      *(v12 + 16) = v10;
      *(StatusReg + 976) = 0;
    }

    else
    {
      v11[13] = v10;
      *(StatusReg + 976) = 0;

      _dispatch_root_queue_poke_and_wakeup(&(&_dispatch_root_queues)[16 * (3 * a3 + v6 - 3)], 1, 0);
    }
  }

  else
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void _dispatch_workloop_push_stealer(uint64_t a1, uint64_t a2, unsigned int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 176);
  if (v7)
  {
    *(StatusReg + 176) = v7[2];
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  *v7 = &unk_70D70;
  if (*(a2 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a2 + 8), 2u, memory_order_relaxed) > 0)
  {
    v7[6] = a2;
    v7[7] = 0;
    v7[4] = 0;
    v7[5] = v7;
    v7[1] = -1;
    v7[3] = -1;

    _dispatch_workloop_push(a1, v7, a3);
  }

  else
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void _dispatch_lane_drain_non_barriers(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  atomic_fetch_and_explicit((a1 + 56), 0xFFBFFFFFFFFFFFFFLL, memory_order_release);
  v6 = (a1 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    if (v5)
    {
      --v5;
      goto LABEL_4;
    }

    if (*a2 > 0xFFF || (*a2 & 0x81) == 0)
    {
      break;
    }

    v5 = 0;
    atomic_fetch_add_explicit((a1 + 56), 0x20000000000uLL, memory_order_relaxed);
LABEL_4:
    v8 = a2[2];
    *(a1 + 104) = v8;
    if (!v8)
    {
      v26 = *v6;
      while (a2 == (v26 & 0xFFFFFFFFFFFFFFF8))
      {
        v27 = v26;
        atomic_compare_exchange_strong_explicit(v6, &v27, 0, memory_order_release, memory_order_relaxed);
        v9 = v27 == v26;
        v26 = v27;
        if (v9)
        {
          goto LABEL_5;
        }
      }

      v32 = a2;
      v8 = a2[2];
      if (!v8)
      {
        v8 = _dispatch_wait_for_enqueuer(a2 + 2, v6);
      }

      *(a1 + 104) = v8;
      a2 = v32;
    }

LABEL_5:
    v9 = *a2 > 0xFFF || (*a2 & 0x81) == 0;
    if (v9)
    {
      _dispatch_continuation_redirect_push(a1, a2);
    }

    else
    {
      _dispatch_non_barrier_waiter_redirect_or_wake(a1, a2, a3);
    }

    a2 = v8;
    if (!v8)
    {
      goto LABEL_17;
    }

LABEL_12:
    v10 = *a2;
    if (*a2 <= 0xFFF)
    {
      if ((v10 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v10 + 16) & 0xF0) == 0x10 && (a2[10] & 0x80000) != 0)
    {
      goto LABEL_17;
    }
  }

  v24 = *(a1 + 56);
  while ((v24 & 0xFFE0018000000000) == 0)
  {
    v25 = v24;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v25, v24 + 0x20000000000, memory_order_acquire, memory_order_acquire);
    v9 = v25 == v24;
    v24 = v25;
    if (v9)
    {
      v5 = 0;
      goto LABEL_4;
    }
  }

  v5 = 0;
LABEL_17:
  v11 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v12 = v5 << 41;
  if (a2)
  {
    v13 = *(a1 + 80);
    if (v13 >= 2)
    {
      v28 = *a2;
      if (*a2 < 0x1000)
      {
        if ((v28 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if ((*(v28 + 16) & 0xF0) != 0x10 || (a2[10] & 0x80000) == 0)
      {
        goto LABEL_19;
      }

      v12 = (v12 | 0x10000000000) - (v13 << 41);
    }
  }

LABEL_19:
  v14 = *(a1 + 56);
  do
  {
    v15 = v14 - v12;
    v16 = (v14 - v12) & 0xFFFFFF7700000001;
    if (a2)
    {
      if ((v15 & 0x10000000000) != 0)
      {
        v18 = v16 + 0x40018000000000;
      }

      else
      {
        v18 = v16 + (*(a1 + 80) << 41) + 0x40008000000000;
      }

      v19 = v18 & 0x3FFE0000000000;
      v20 = 0x8000000000;
      if ((v14 & 0x8000000000) != 0)
      {
        v20 = 0x8000000001;
      }

      v21 = v16 | v20;
      v22 = v18 & 0xFFE0017FFFFFFFFFLL | v11;
      if (v19 == 0x20000000000000)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21;
      }
    }

    else if ((v14 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      a2 = *(a1 + 104);
      if (a2)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v17 = v14;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v17, v16, memory_order_relaxed, memory_order_relaxed);
    v9 = v17 == v14;
    v14 = v17;
  }

  while (!v9);
  if ((~v15 & 0x1800000000) == 0)
  {
    v29 = HIDWORD(v15) & 7;
    v30 = *(StatusReg + 200);
    if ((HIWORD(v30) & 0xF) < v29)
    {
      *(StatusReg + 200) = v30 & 0xFFF0FFFF | (v29 << 16);
    }
  }

  if (((v16 ^ v15) & 0x40000000000000) != 0)
  {

    _dispatch_lane_barrier_complete(a1, 0, a3);
  }

  else if ((v16 ^ v15))
  {
    if ((a3 & 1) == 0 && *(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
    }

    v31 = *(**(a1 + 24) + 72);

    v31();
  }

  else if (a3)
  {

    _os_object_release_internal_n(a1, 2);
  }
}

uint64_t _dispatch_channel_invoke_cancel_check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 116) & 8) != 0 || (*(a1 + 80) & 0x10000000) == 0)
  {
    return 1;
  }

  if (*(a2 + 35))
  {
    v6 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(a3 + 24))(a1, *(a1 + 32));
  if (v6)
  {
    _dispatch_autorelease_pool_pop(v6);
  }

  if (v7)
  {
    *(a1 + 116) |= 8u;
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
    {
      _dispatch_runloop_root_queue_perform_4CF_cold_2();
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
    return dword_4A910[v2];
  }
}

void _dispatch_mgr_priority_apply()
{
  v1 = 0;
  do
  {
    v1.sched_priority = _dispatch_mgr_sched;
    if (_dispatch_mgr_sched > dword_78740)
    {
      v0 = pthread_setschedparam(qword_78748, dword_78744, &v1);
      if (v0)
      {
        _dispatch_bug(6296, v0);
      }
    }
  }

  while (_dispatch_mgr_sched > v1.sched_priority);
}

void _dispatch_mgr_queue_drain()
{
  memset(v7, 0, sizeof(v7));
  v6 = 0x40020000000000;
  if (qword_74130)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_mgr_queue_drain_cold_1();
    }

    v0 = mach_absolute_time();
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if ((~*(StatusReg + 200) & 0xF0000) != 0)
    {
      *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0xF0000;
    }

    if (_dispatch_lane_serial_drain(&_dispatch_mgr_q, v7, 0x40000u, &v6))
    {
      _dispatch_mgr_queue_drain_cold_2();
    }

    v2 = *(StatusReg + 224);
    if (v2)
    {
      *(StatusReg + 224) = 0;
      if (*(v2 + 32))
      {
        _dispatch_set_priority_and_mach_voucher_slow(0, 0);
      }

      add_explicit = atomic_fetch_add_explicit((v2 + 12), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 1)
      {
        _dispatch_mgr_queue_drain_cold_3(add_explicit, v2);
      }
    }

    if ((*(StatusReg + 200) & 0xF0000) != 0)
    {
      *(StatusReg + 200) &= 0xFFF0FFFFuLL;
    }

    _dispatch_queue_merge_stats(v0, 1, 5);
  }

  if ((_dispatch_kevent_workqueue_enabled & 1) == 0)
  {
    v4 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = *(v4 + 176);
    if (v5)
    {
      *(v4 + 176) = 0;
      _dispatch_cache_cleanup(v5);
    }
  }
}

void _dispatch_mgr_root_queue_init()
{
  if (_dispatch_mgr_sched_pred != -1)
  {
    dispatch_once_f(&_dispatch_mgr_sched_pred, 0, _dispatch_mgr_sched_init);
  }

  v0 = off_740A0;
  v5 = 0;
  v1 = pthread_attr_setdetachstate(off_740A0, 2);
  if (v1)
  {
    _dispatch_bug(6257, v1);
  }

  v2 = pthread_attr_setstacksize(v0, 0x10000uLL);
  if (v2)
  {
    _dispatch_bug(6259, v2);
  }

  if (dword_7873C)
  {
    v3 = pthread_attr_set_qos_class_np(v0, dword_7873C, 0);
    if (v3)
    {
      _dispatch_bug(6266, v3);
    }
  }

  v5.sched_priority = _dispatch_mgr_sched;
  if (_dispatch_mgr_sched > dword_78740)
  {
    v4 = pthread_attr_setschedparam(v0, &v5);
    if (v4)
    {
      _dispatch_bug(6272, v4);
    }
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

  if (*(v2 + 144))
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 192) = v2 + 144;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    pthread_setname_np(v4);
  }

  v5 = *(v2 + 64);
  if (v5)
  {
    (*(v5 + 16))();
  }

  _dispatch_sigmask();
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
    v15 = dispatch_time(0, 5000000000);
  }

  while (!dispatch_semaphore_wait((v2 + 72), v15));
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

uint64_t _dispatch_root_queue_drain(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 160) = a1;
  *(StatusReg + 200) = a2;
  v8 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
  if (v8)
  {
    if (v8 == -4)
    {
      _dispatch_main_queue_drain_cold_3();
    }

    add_explicit = atomic_fetch_add_explicit((v8 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      if (add_explicit < 0)
      {
        _dispatch_runloop_root_queue_perform_4CF_cold_2();
      }

      *(v8 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v8);
    }
  }

  v34 = v5;
  *(StatusReg + 216) = -4;
  memset(v35, 0, sizeof(v35));
  _dispatch_last_resort_autorelease_pool_push(v35);
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_root_queue_drain_cold_3();
  }

  v33 = mach_absolute_time();
  v10 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = __swp(v3, (a1 + 104));
        if (v3)
        {
          break;
        }

        atomic_compare_exchange_strong_explicit((a1 + 104), &v11, 0, memory_order_relaxed, memory_order_relaxed);
        if (v11 == -1)
        {
          if (!*(a1 + 48))
          {
            goto LABEL_94;
          }

          v29 = _dispatch_root_queue_head_tail_quiesced;
          goto LABEL_77;
        }
      }

      if (v3 != -1)
      {
        break;
      }

      v29 = _dispatch_root_queue_mediator_is_gone;
LABEL_77:
      if (!__DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(a1, v29))
      {
        goto LABEL_94;
      }
    }

    v12 = (v3 + 16);
    v13 = *(v3 + 16);
    if (v13)
    {
      goto LABEL_12;
    }

    *(a1 + 104) = 0;
    v30 = v3;
    atomic_compare_exchange_strong_explicit((a1 + 48), &v30, 0, memory_order_release, memory_order_relaxed);
    if (v30 != v3)
    {
      v13 = *v12;
      if (!*v12)
      {
        v13 = _dispatch_wait_for_enqueuer(v12, a1 + 48);
      }

LABEL_12:
      *(a1 + 104) = v13;
      _dispatch_root_queue_poke(a1, 1, 0);
    }

    if (v10)
    {
      _pthread_workqueue_override_reset();
    }

    v14 = *(StatusReg + 192);
    if (v14)
    {
      (*v14)(a1);
    }

    v15 = *v3;
    if (*v3 < 0x1000uLL)
    {
      if ((a3 & 0x1000000) != 0)
      {
        v16 = _dispatch_autorelease_pool_push();
        v15 = *v3;
      }

      else
      {
        v16 = 0;
      }

      v18 = *(v3 + 24);
      if ((v15 & 4) != 0)
      {
        *(v3 + 24) = -1;
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
        if (((v20 >> 8) & 0xF) != 0)
        {
          v21 = 1 << ((BYTE1(v20) & 0xFu) + 7);
        }

        else
        {
          v21 = 0;
        }

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
          goto LABEL_91;
        }

        v24 = v25 & 0xFFFFFFFFFEFFFFFFLL;
      }

      else if (v24 == (v25 & 0xFFFFFFFF76FFFFFFLL))
      {
LABEL_51:
        if (v18 == -1)
        {
          goto LABEL_56;
        }

        if (*(StatusReg + 224) == v18)
        {
          if ((v15 & 4) != 0 && v18 && atomic_fetch_add_explicit((v18 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
          {
            _dispatch_block_invoke_direct_cold_4();
          }

LABEL_56:
          if ((v15 & 4) != 0)
          {
            v27 = *(StatusReg + 176);
            if (v27)
            {
              v28 = *(v27 + 8) + 1;
            }

            else
            {
              v28 = 1;
            }

            if (v28 > _dispatch_continuation_cache_limit)
            {
              v26 = v3;
              if ((v15 & 8) == 0)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v26 = 0;
              *(v3 + 16) = v27;
              *(v3 + 8) = v28;
              *(StatusReg + 176) = v3;
              if ((v15 & 8) == 0)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            v26 = 0;
            if ((v15 & 8) == 0)
            {
LABEL_61:
              _dispatch_client_callout(*(v3 + 40), *(v3 + 32));
              if (!MEMORY[0xFFFFFC100])
              {
                if (!v26)
                {
                  goto LABEL_63;
                }

LABEL_71:
                _dispatch_continuation_free_to_cache_limit(v26);
                if (!v16)
                {
LABEL_65:
                  ++*(StatusReg + 208);
                  if (v14)
                  {
                    goto LABEL_24;
                  }

                  goto LABEL_25;
                }

LABEL_64:
                _dispatch_autorelease_pool_pop(v16);
                goto LABEL_65;
              }

              _dispatch_workloop_invoke_cold_8(v3);
              if (v26)
              {
                goto LABEL_71;
              }

LABEL_63:
              if (!v16)
              {
                goto LABEL_65;
              }

              goto LABEL_64;
            }
          }

          _dispatch_root_queue_drain_cold_5();
          if (v26)
          {
            goto LABEL_71;
          }

          goto LABEL_63;
        }

        v24 = 0;
LABEL_91:
        _dispatch_set_priority_and_voucher_slow(v24, v18, v15 & 4 | 2);
        goto LABEL_56;
      }

      if (v24)
      {
        goto LABEL_91;
      }

      goto LABEL_51;
    }

    if (*(v15 + 16) == 1)
    {
      (*(v15 + 24))(v3, 0, (a3 >> 21) & 1);
    }

    else
    {
      (*(v15 + 48))(v3, v35, a3 & 0xFFFF0000);
    }

    if (v14)
    {
LABEL_24:
      v14[1](a1);
    }

LABEL_25:
    v17 = WORD1(*(StatusReg + 200)) & 0xF;
    if (v17)
    {
      *(StatusReg + 200) &= 0xFFF0FFFFuLL;
      v10 = v17 != 15;
    }

    else
    {
      v10 = 0;
    }

    if (*(StatusReg + 960))
    {
      break;
    }

    *(StatusReg + 960) = 0;
  }

LABEL_94:
  if (v34 >= 0)
  {
    v31 = 3;
  }

  else
  {
    v31 = 4;
  }

  _dispatch_queue_merge_stats(v33, 1, v31);
  result = _dispatch_last_resort_autorelease_pool_pop(v35);
  *(StatusReg + 216) = 0;
  *(StatusReg + 40) = 0;
  *(StatusReg + 200) = 0;
  *(StatusReg + 160) = 0;
  return result;
}

BOOL __DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = 0;
  v5 = 500;
LABEL_2:
  v6 = -80;
  do
  {
    if (__CFADD__(v6++, 1))
    {
      if ((v4 & 1) == 0)
      {
        atomic_fetch_add_explicit((a1 + 112), 1u, memory_order_release);
      }

      thread_switch(0, 3, v5);
      v8 = a2(a1);
      if (!v8)
      {
        v9 = (v5 >> 4) & 0x7FFFFFF;
        v5 *= 2;
        v4 = 1;
        if (v9 < 0xC35)
        {
          goto LABEL_2;
        }

        v8 = 0;
      }

      goto LABEL_12;
    }

    __yield();
    v8 = a2(a1);
  }

  while (!v8);
  if ((v4 & 1) == 0)
  {
    return v8 == 1;
  }

LABEL_12:
  atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire);
  if (*(a1 + 48))
  {
    v8 = 1;
  }

  else if (!v8)
  {
    _dispatch_root_queue_poke(a1, 1, 0);
    v8 = 0;
  }

  return v8 == 1;
}

uint64_t _dispatch_root_queue_head_tail_quiesced(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if ((*(a1 + 104) != 0) != (*(a1 + 48) == 0))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void _dispatch_mgr_priority_raise(pthread_attr_t *a1)
{
  if (_dispatch_mgr_sched_pred != -1)
  {
    dispatch_once_f(&_dispatch_mgr_sched_pred, 0, _dispatch_mgr_sched_init);
  }

  v13 = 0;
  v2 = pthread_attr_getschedparam(a1, &v13);
  if (v2)
  {
    _dispatch_bug(6350, v2);
  }

  __qos_class = QOS_CLASS_UNSPECIFIED;
  pthread_attr_get_qos_class_np(a1, &__qos_class, 0);
  v3 = __qos_class;
  if (__qos_class)
  {
    sched_priority = _dispatch_mgr_sched_qos2prio(__qos_class);
    v13.sched_priority = sched_priority;
    v5 = dword_7873C;
    do
    {
      if (v5 >= v3)
      {
        break;
      }

      v6 = v5;
      atomic_compare_exchange_strong_explicit(&dword_7873C, &v6, v3, memory_order_relaxed, memory_order_relaxed);
      v7 = v6 == v5;
      v5 = v6;
    }

    while (!v7);
  }

  else
  {
    sched_priority = v13.sched_priority;
  }

  v8 = _dispatch_mgr_sched;
  while (v8 < sched_priority)
  {
    v9 = v8;
    atomic_compare_exchange_strong_explicit(&_dispatch_mgr_sched, &v9, sched_priority, memory_order_relaxed, memory_order_relaxed);
    v7 = v9 == v8;
    v8 = v9;
    if (v7)
    {
      if (_dispatch_root_queues_pred != -1)
      {
        dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
      }

      if (_dispatch_kevent_workqueue_enabled == 1)
      {
        if (sched_priority > dword_78740 || __qos_class && _pthread_qos_class_encode())
        {
          v11 = _pthread_workqueue_set_event_manager_priority();
          if (v11)
          {
            _dispatch_bug(6382, v11);
          }
        }
      }

      else if (qword_78748)
      {
        v14 = 0;
        do
        {
          v14.sched_priority = _dispatch_mgr_sched;
          if (_dispatch_mgr_sched > dword_78740)
          {
            v10 = pthread_setschedparam(qword_78748, dword_78744, &v14);
            if (v10)
            {
              _dispatch_bug(6296, v10);
            }
          }
        }

        while (_dispatch_mgr_sched > v14.sched_priority);
      }

      return;
    }
  }
}

uint64_t _dispatch_main_queue_update_priority_from_thread()
{
  v0 = qword_74038;
  if (qword_74038 >= 4)
  {
    result = qword_74038 | 3;
  }

  else
  {
    result = 0;
  }

  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  v3 = v2;
  v4 = (v2 >> 8) & 0x3FFF;
  v5 = __clz(__rbit32(v4));
  if (v4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v3 | (v6 << 8);
  v8 = HIDWORD(v0) & 7;
  v9 = (dword_74054 >> 8) & 0xF;
  dword_74054 = v7;
  if (v9 < v8 && v4 == 0)
  {
    return _pthread_qos_override_end_direct();
  }

  if (v9 < v8 && v8 <= v6)
  {
    return _pthread_qos_override_end_direct();
  }

  if (v9 >= v8 && v8 > v6)
  {
    return _pthread_qos_override_start_direct();
  }

  return result;
}

uint64_t _dispatch_root_queues_init_once()
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  v0 = _pthread_workqueue_supported();
  v1 = v0;
  if ((v0 & 0x10) == 0)
  {
    _dispatch_root_queues_init_once_cold_5(v0);
  }

  v4 = 0x200000000;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 64;
  v9 = 72;
  if (_dispatch_kevent_workqueue_enabled)
  {
    if ((v0 & 0x80) != 0)
    {
      v7 = _dispatch_worker_thread2;
      v5 = _dispatch_kevent_worker_thread;
      v6 = _dispatch_workloop_worker_thread;
    }

    else
    {
      if ((v0 & 0x40) == 0)
      {
        _dispatch_root_queues_init_once_cold_4(v0);
      }

      v7 = _dispatch_worker_thread2;
      v5 = _dispatch_kevent_worker_thread;
    }
  }

  else
  {
    v7 = _dispatch_worker_thread2;
  }

  result = pthread_workqueue_setup();
  if (result)
  {
    _dispatch_root_queues_init_once_cold_2(result, v1);
  }

  if ((_dispatch_mode & 4) != 0)
  {
    v3 = -1;
    result = sysctlbyname("kern.wq_limit_cooperative_threads", 0, 0, &v3, 4uLL);
    if (result)
    {
      _dispatch_root_queues_init_once_cold_3();
    }
  }

  return result;
}