uint64_t _dispatch_worker_thread2(uint64_t a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[120] = 0;
  StatusReg[4] = a1 & 0xFFFFFFFF88FFFFFFLL;
  if ((a1 & 0x8000000) != 0)
  {
    v3 = 2293760;
  }

  else
  {
    v3 = 196608;
  }

  v4 = __clz(__rbit32((a1 >> 8) & 0x3FFF));
  if (((a1 >> 8) & 0x3FFF) != 0)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 - 7 <= 0xFFFFFFF9)
  {
    _dispatch_queue_priority_inherit_from_target_cold_1(v5);
  }

  v6 = 3 * v5;
  if ((a1 & 0x88000000) == 0x80000000)
  {
    v7 = -2;
  }

  else
  {
    v7 = (a1 >> 26) | 0xFFFFFFFD;
  }

  v8 = &(&_dispatch_root_queues)[16 * (v7 + v6)];
  atomic_fetch_add_explicit((v8 + 14), 0xFFFFFFFF, memory_order_acquire);
  v9 = (StatusReg[29] & 0xFFFFFFFFFFFFFFFELL);
  if (v9)
  {
    _dispatch_free_deferred_unotes(v9);
    StatusReg[29] = 0;
  }

  result = _dispatch_root_queue_drain(v8, *(v8 + 21), v3);
  v11 = StatusReg[4];
  if ((v11 & 0x1000000) != 0)
  {
    result = v11 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v11 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      goto LABEL_20;
    }
  }

  if (StatusReg[28])
  {
    result = 0;
LABEL_20:
    result = _dispatch_set_priority_and_voucher_slow(result, 0, 14);
  }

  StatusReg[120] = 0;
  return result;
}

void _dispatch_kevent_worker_thread(void **a1, unsigned int *a2)
{
  if (a1 && a2)
  {
    if (!*a2)
    {
      return;
    }

    v3 = a1;
    if (!*a1)
    {
      return;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = StatusReg[27] & 0xFFFFFFFFFFFFFFFELL;
    if (v5)
    {
      if (v5 != -4)
      {
        add_explicit = atomic_fetch_add_explicit((v5 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit > 0)
        {
          goto LABEL_10;
        }

        if ((add_explicit & 0x80000000) == 0)
        {
          *(v5 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v5);
          goto LABEL_10;
        }

        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
      }

      qword_78298 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
      __break(1u);
      return;
    }

LABEL_10:
    StatusReg[27] = -4;
    v7 = *v3;
    StatusReg[120] = 0;
    v20 = 0;
    v22 = 0;
    v19 = 0u;
    v21 = -4;
    v23 = v7;
    v24 = 0;
    v8 = StatusReg[4];
    if ((v8 & 0x2000000) != 0)
    {
      v9 = StatusReg[4] & 0xFE000000;
      if ((v8 & 0x20000000) == 0)
      {
        v9 = StatusReg[4];
      }

      StatusReg[4] = v9 & 0xFFFFFFFFFEFFFFFFLL;
      StatusReg[25] = 34537472;
      StatusReg[20] = &_dispatch_mgr_q;
      v10 = qword_74138;
      v11 = StatusReg[3] & 0xFFFFFFFCLL | 0x40020000000000;
      while ((v10 & 0xFFE00000FFFFFFFCLL) == 0)
      {
        v12 = v10;
        atomic_compare_exchange_strong_explicit(&qword_74138, &v12, v11 | v10 & 0x7700000001, memory_order_acquire, memory_order_acquire);
        v13 = v12 == v10;
        v10 = v12;
        if (v13)
        {
          v3 = 0;
          v21 = -4;
          goto LABEL_21;
        }
      }

      qword_78298 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
      qword_782C8 = v10;
      __break(1u);
    }

    else
    {
      StatusReg[4] = v8 & 0xFFFFFFFF88FFFFFFLL | 0x1000000;
      BYTE4(v24) = 1;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      v3 = mach_absolute_time();
LABEL_21:
      v5 = StatusReg[29] & 0xFFFFFFFFFFFFFFFELL;
      if (!v5)
      {
        goto LABEL_22;
      }
    }

    _dispatch_free_deferred_unotes(v5);
LABEL_22:
    StatusReg[29] = &v19;
    _dispatch_event_loop_merge(v7, *a2);
    if ((v8 & 0x2000000) != 0)
    {
      _dispatch_mgr_queue_drain();
      if (byte_7843E)
      {
        _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
      }

      v16 = qword_74138;
      do
      {
        v17 = v16;
        atomic_compare_exchange_strong_explicit(&qword_74138, &v16, (v16 & 0xFFFFFFF000000001) - 0x40020000000000, memory_order_release, memory_order_relaxed);
      }

      while (v16 != v17);
      StatusReg[25] = 0;
      StatusReg[20] = 0;
      if ((v17 & 0x8000000000) != 0)
      {
        _dispatch_event_loop_poke(-8, 0, 0);
      }
    }

    else if (*(&v19 + 1))
    {
      if (v21 == -4)
      {
        StatusReg[29] = 0;
        _dispatch_root_queue_drain_deferred_item(&v19, v3);
      }

      else
      {
        _dispatch_root_queue_drain_deferred_wlh(&v19, v3, v14, v15);
      }
    }

    if (v22)
    {
      v18 = v22 | 1;
    }

    else
    {
      v18 = 0;
    }

    StatusReg[29] = v18;
    if ((v8 & 0x2000000) == 0 && !*(&v19 + 1))
    {
      _dispatch_queue_merge_stats(v3, 1, 1);
    }

    StatusReg[120] = 0;
    *a2 = v24;
    StatusReg[27] = 0;
    StatusReg[5] = 0;
    return;
  }

  _dispatch_bug(6827, 0);
}

void _dispatch_workloop_worker_thread(uint64_t *a1, void **a2, unsigned int *a3)
{
  if (a1 && a2 && a3)
  {
    v6 = *a1;
    if (*a1)
    {
      if (!*a3 || !*a2)
      {
        return;
      }

      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = StatusReg[27] & 0xFFFFFFFFFFFFFFFELL;
      if (v8 == -4)
      {
        goto LABEL_86;
      }

      if (v8 == v6)
      {
LABEL_15:
        StatusReg[27] = v6;
        v10 = *a2;
        StatusReg[120] = 0;
        v31 = 0;
        v33 = 0;
        v30 = 0u;
        v32 = v6;
        v34 = v10;
        v35 = 0;
        if (v6 == -4)
        {
          v11 = 0;
          v12 = 0;
          memset(&v29, 0, sizeof(v29));
          goto LABEL_35;
        }

        if (*(*v6 + 16) == 131090 && (v13 = *(v6 + 200)) != 0)
        {
          v14 = *v13;
          memset(&v29, 0, sizeof(v29));
          if ((v14 & 0x40) != 0)
          {
            v8 = *(v6 + 72);
            if (!v8 || StatusReg[124] || (v8 = pthread_setname_np(v8), v11 = 1, StatusReg[124] = 1, (v13 = *(v6 + 200)) != 0))
            {
              if (*(v13 + 4) && !StatusReg[115])
              {
                v11 = 1;
                v3 = _dispatch_calloc_typed(1, 40, 0x10200401C7990E2);
                _os_workgroup_join_update_wg(*(*(v6 + 200) + 32), v3);
                v12 = 0;
                StatusReg[115] = v3;
              }

              else
              {
                v12 = 0;
                v11 = 1;
              }

LABEL_35:
              v16 = StatusReg[4];
              if ((v16 & 0x2000000) != 0)
              {
                v17 = StatusReg[4] & 0xFE000000;
                if ((v16 & 0x20000000) == 0)
                {
                  v17 = StatusReg[4];
                }

                StatusReg[4] = v17 & 0xFFFFFFFFFEFFFFFFLL;
                StatusReg[25] = 34537472;
                StatusReg[20] = &_dispatch_mgr_q;
                v18 = qword_74138;
                v19 = StatusReg[3] & 0xFFFFFFFCLL | 0x40020000000000;
                while ((v18 & 0xFFE00000FFFFFFFCLL) == 0)
                {
                  v20 = v18;
                  atomic_compare_exchange_strong_explicit(&qword_74138, &v20, v19 | v18 & 0x7700000001, memory_order_acquire, memory_order_acquire);
                  v21 = v20 == v18;
                  v18 = v20;
                  if (v21)
                  {
                    v3 = 0;
                    v32 = -4;
                    goto LABEL_50;
                  }
                }

                qword_78298 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
                qword_782C8 = v18;
                __break(1u);
              }

              else
              {
                v22 = v16 & 0xFFFFFFFF88FFFFFFLL;
                if (v6 == -4)
                {
                  v22 = v16 & 0xFFFFFFFF88FFFFFFLL | 0x1000000;
                }

                StatusReg[4] = v22;
                if (v6 == -4)
                {
                  BYTE4(v35) = 1;
                }

                if (MEMORY[0xFFFFFC100])
                {
                  kdebug_trace();
                }

                v3 = mach_absolute_time();
LABEL_50:
                v8 = StatusReg[29] & 0xFFFFFFFFFFFFFFFELL;
                if (!v8)
                {
                  goto LABEL_51;
                }
              }

              _dispatch_free_deferred_unotes(v8);
LABEL_51:
              StatusReg[29] = &v30;
              _dispatch_event_loop_merge(v10, *a3);
              if ((v16 & 0x2000000) != 0)
              {
                _dispatch_mgr_queue_drain();
                if (byte_7843E)
                {
                  _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
                }

                v25 = qword_74138;
                do
                {
                  v26 = v25;
                  atomic_compare_exchange_strong_explicit(&qword_74138, &v25, (v25 & 0xFFFFFFF000000001) - 0x40020000000000, memory_order_release, memory_order_relaxed);
                }

                while (v25 != v26);
                StatusReg[25] = 0;
                StatusReg[20] = 0;
                if ((v26 & 0x8000000000) != 0)
                {
                  _dispatch_event_loop_poke(-8, 0, 0);
                }
              }

              else if (*(&v30 + 1))
              {
                if (v32 == -4)
                {
                  StatusReg[29] = 0;
                  _dispatch_root_queue_drain_deferred_item(&v30, v3);
                }

                else
                {
                  _dispatch_root_queue_drain_deferred_wlh(&v30, v3, v23, v24);
                }
              }

              if (v12)
              {
                v27 = v11;
              }

              else
              {
                v27 = 1;
              }

              if ((v27 & 1) == 0)
              {
                os_workgroup_leave(v12, &v29);
              }

              if (v33)
              {
                v28 = v33 | 1;
              }

              else
              {
                v28 = 0;
              }

              StatusReg[29] = v28;
              if ((v16 & 0x2000000) == 0 && !*(&v30 + 1))
              {
                _dispatch_queue_merge_stats(v3, 1, 1);
              }

              StatusReg[5] = 0;
              StatusReg[120] = 0;
              *a3 = v35;
              StatusReg[27] = v6 | 1;
              return;
            }

LABEL_33:
            v12 = 0;
            goto LABEL_35;
          }
        }

        else
        {
          memset(&v29, 0, sizeof(v29));
        }

        if (*(*v6 + 16) != 131090)
        {
          goto LABEL_32;
        }

        v15 = *(v6 + 200);
        if (!v15)
        {
          goto LABEL_32;
        }

        v12 = *(v15 + 32);
        if (!v12 || (v8 = os_workgroup_join(*(v15 + 32), &v29), !v8))
        {
          v11 = 0;
          goto LABEL_35;
        }

        if (v8 == 22)
        {
LABEL_32:
          v11 = 0;
          goto LABEL_33;
        }

LABEL_87:
        qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_workloop os_workgroup_join failed";
        qword_782C8 = v8;
        __break(1u);
        return;
      }

      if (v8)
      {
        add_explicit = atomic_fetch_add_explicit((v8 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 0)
        {
          if (add_explicit < 0)
          {
            qword_78298 = "API MISUSE: Over-release of an object";
            __break(1u);
LABEL_85:
            qword_78298 = "API MISUSE: Resurrection of an object";
            __break(1u);
LABEL_86:
            qword_78298 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
            __break(1u);
            goto LABEL_87;
          }

          *(v8 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v8);
        }
      }

      if (v6 == -4 || (atomic_fetch_add_explicit((v6 + 96), 1u, memory_order_relaxed) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_85;
    }

    _dispatch_bug(6849, 0);

    _dispatch_kevent_worker_thread(a2, a3);
  }

  else
  {

    _dispatch_bug(6846, 0);
  }
}

unint64_t _dispatch_root_queue_drain_deferred_item(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = v4;
  memset(v26, 0, sizeof(v26));
  _dispatch_last_resort_autorelease_pool_push(v26);
  StatusReg[25] = *(v4 + 84);
  v6 = a1[1];
  v7 = StatusReg[24];
  if (v7)
  {
    (*v7)(v4);
  }

  v8 = *v6;
  if (*v6 < 0x1000uLL)
  {
    v9 = *(v6 + 24);
    if ((v8 & 4) != 0)
    {
      *(v6 + 24) = -1;
    }

    v10 = v9 == -1 || v9 == -1;
    if (!v10 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v11 = *(v6 + 8);
    if (v11 == -1)
    {
      v18 = 0;
    }

    else
    {
      v12 = StatusReg[25];
      if (((v12 >> 8) & 0xF) != 0)
      {
        v13 = 1 << ((BYTE1(v12) & 0xFu) + 7);
      }

      else
      {
        v13 = 0;
      }

      v14 = v13 | StatusReg[25];
      v15 = v11 & 0xFFFFFF;
      if ((v11 & 0xFFFFFF) != 0)
      {
        v16 = v13 & 0xFFFFFF00;
        if ((v12 & 0x44000000) == 0 && (*(v6 + 8) & 0x10000000) == 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = v11 & 0xFFFFFF;
        }

        if (v15 < v16)
        {
          v18 = v14;
        }
      }

      else if (v12 >> 12)
      {
        v18 = (256 << ((v12 >> 12) - 1)) | 0xFF;
      }

      else
      {
        v18 = v13 | StatusReg[25];
      }
    }

    v21 = v18 & 0x7FFFFFFF02FFFFFFLL;
    v22 = StatusReg[4];
    if ((v22 & 0x1000000) != 0)
    {
      if (v21)
      {
        goto LABEL_69;
      }

      v21 = v22 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v21 == (v22 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_37:
      if (v9 == -1)
      {
        goto LABEL_42;
      }

      if (StatusReg[28] == v9)
      {
        if ((v8 & 4) != 0 && v9 && atomic_fetch_add_explicit((v9 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
        {
          _dispatch_block_invoke_direct_cold_4();
        }

LABEL_42:
        if ((v8 & 4) != 0)
        {
          v24 = StatusReg[22];
          if (v24)
          {
            v25 = *(v24 + 8) + 1;
          }

          else
          {
            v25 = 1;
          }

          v23 = v6;
          if (v25 <= _dispatch_continuation_cache_limit)
          {
            v23 = 0;
            *(v6 + 16) = v24;
            *(v6 + 8) = v25;
            StatusReg[22] = v6;
          }
        }

        else
        {
          v23 = 0;
        }

        if ((v8 & 8) != 0)
        {
          _dispatch_root_queue_drain_deferred_item_cold_3();
        }

        else
        {
          _dispatch_client_callout(*(v6 + 40), *(v6 + 32));
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_8(v6);
          }
        }

        if (v23)
        {
          _dispatch_continuation_free_to_cache_limit(v23);
        }

        ++StatusReg[26];
        if (v7)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      v21 = 0;
LABEL_69:
      _dispatch_set_priority_and_voucher_slow(v21, v9, v8 & 4 | 2);
      goto LABEL_42;
    }

    if (v21)
    {
      goto LABEL_69;
    }

    goto LABEL_37;
  }

  if (*(v8 + 16) == 1)
  {
    (*(v8 + 24))(v6, 0, 0);
  }

  else
  {
    (*(v8 + 48))(v6, v26, 196608);
  }

  if (v7)
  {
LABEL_30:
    v7[1](v4);
  }

LABEL_31:
  _dispatch_queue_merge_stats(a2, 1, 2);
  result = _dispatch_last_resort_autorelease_pool_pop(v26);
  StatusReg[25] = 0;
  StatusReg[20] = 0;
  v20 = StatusReg[4];
  if ((v20 & 0x1000000) != 0)
  {
    result = v20 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v20 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
    }
  }

  if (StatusReg[28])
  {
    result = 0;
    return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
  }

  return result;
}

uint64_t _dispatch_root_queue_drain_deferred_wlh(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = v7;
  StatusReg[25] = *(v7 + 84) | 0xF0000;
  v9 = *(a1 + 53) | 4;
  memset(v18, 0, sizeof(v18));
  *(a1 + 53) = v9;
  v10 = 196610;
  while (2)
  {
    v11 = StatusReg[3] & 0xFFFFFFFCLL;
    v12 = *(v6 + 56);
    while (1)
    {
      v13 = v12;
      if (v12 >> 55)
      {
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_6;
      }

      if ((v12 & 0xFFFFFFFC) != 0)
      {
        break;
      }

      v14 = v11 | v12 & 0x7700000001 | 0x60000000000000;
LABEL_6:
      atomic_compare_exchange_strong_explicit((v6 + 56), &v12, v14, memory_order_acquire, memory_order_acquire);
      if (v12 == v13)
      {
        goto LABEL_12;
      }
    }

    if ((v12 & 2) != 0)
    {
      v14 = v12 | 0x800000000;
      goto LABEL_6;
    }

    v14 = v12;
LABEL_12:
    if ((v13 & 0x6000000001) != 0x2000000001)
    {
      _dispatch_root_queue_drain_deferred_wlh_cold_1(v13);
    }

    if ((v13 & 0xFF800000FFFFFFFCLL) != 0)
    {
      v15 = *(v6 + 8);
      if (v14 >> 55)
      {
        if (v15 != 0x7FFFFFFF && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFE, memory_order_release) <= 2)
        {
          _dispatch_runloop_root_queue_perform_4CF_cold_2();
        }
      }

      else if (v15 != 0x7FFFFFFF && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
      {
        _dispatch_runloop_root_queue_perform_4CF_cold_2();
      }

      goto LABEL_26;
    }

    (*(*v6 + 48))(v6, v18, v10, a4);
    if (*(a1 + 53))
    {
      v14 = *(v6 + 56);
      if ((v14 & 0x2000000000) != 0)
      {
        if (v14)
        {
          if (*(v6 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed) <= 0)
          {
            dispatch_set_target_queue_cold_2();
          }

          v10 = 196626;
          continue;
        }

LABEL_26:
        _dispatch_event_loop_leave_deferred(a1, v14);
      }
    }

    break;
  }

  result = _dispatch_queue_merge_stats(a2, 1, 2);
  StatusReg[25] = 0;
  StatusReg[20] = 0;
  v17 = StatusReg[4];
  if ((v17 & 0x1000000) != 0)
  {
    result = v17 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v17 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
    }
  }

  if (StatusReg[28])
  {
    result = 0;
    return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
  }

  return result;
}

void _dispatch_queue_cleanup2()
{
  v0 = qword_74038;
  v1 = qword_74038;
  do
  {
    atomic_compare_exchange_strong_explicit(&qword_74038, &v1, (v0 & 0xFFFFFF7FFFFFFFFFLL) + 0x40020000000000, memory_order_acquire, memory_order_acquire);
    v2 = v1 == v0;
    v0 = v1;
  }

  while (!v2);
  atomic_fetch_and_explicit(&dword_74050, 0xFFFBFFFF, memory_order_relaxed);
  _dispatch_lane_barrier_complete(&_dispatch_main_q, 0, 0);
  if (_dispatch_program_is_probably_callback_driven == 1)
  {
    memset(&v5, 0, sizeof(v5));
    pthread_attr_init(&v5);
    pthread_attr_setdetachstate(&v5, 2);
    v4 = 0;
    v3 = pthread_create(&v4, &v5, _dispatch_sig_thread, 0);
    if (v3)
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unable to create signal thread";
      qword_782C8 = v3;
      __break(1u);
    }

    pthread_attr_destroy(&v5);
    sleep_NOCANCEL();
  }

  if (_dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, &_dispatch_main_q, _dispatch_runloop_queue_handle_init);
  }

  _dispatch_runloop_queue_handle_dispose(&_dispatch_main_q);
}

void _dispatch_sig_thread()
{
  v0 = pthread_self();
  stackaddr_np = pthread_get_stackaddr_np(v0);
  bzero(&vars0, stackaddr_np - &vars0);
  _dispatch_sigsuspend();
}

void _dispatch_sigsuspend()
{
  pthread_sigmask(3, &_dispatch_sigsuspend_mask, 0);
  while (1)
  {
    sigsuspend_NOCANCEL();
  }
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_28(unsigned int *a1, char a2, uint64_t a3)
{

  return _pthread_workqueue_override_start_direct();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return _dispatch_client_callout(v0, v1);
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, const char *a3)
{

  return snprintf((v3 + v5), v4, a3);
}

void OUTLINED_FUNCTION_43(uint64_t a2@<X8>)
{

  _dispatch_apply_invoke(a2);
}

void _dispatch_apply_invoke(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  context[1] = 0;
  context[2] = 0;
  context[0] = a1;
  _dispatch_apply_set_attr_behavior(*(a1 + 56), add_explicit);
  v3 = (*(a1 + 32) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 56), add_explicit);
  if (atomic_fetch_add_explicit((a1 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      free(*(a1 + 56));
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 176);
    if (v7)
    {
      v8 = *(v7 + 8) + 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v7;
      *(a1 + 8) = v8;
      *(StatusReg + 176) = a1;
    }
  }
}

void _dispatch_apply_redirect_invoke(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  context = a1;
  v10 = xmmword_4A930;
  _dispatch_apply_set_attr_behavior(*(a1 + 56), add_explicit);
  v3 = (*(a1 + 32) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, &context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 56), add_explicit);
  if (atomic_fetch_add_explicit((a1 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      free(*(a1 + 56));
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 176);
    if (v7)
    {
      v8 = *(v7 + 8) + 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v7;
      *(a1 + 8) = v8;
      *(StatusReg + 176) = a1;
    }
  }
}

void _dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, uint64_t (***a3)(), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return;
  }

  v8 = a3;
  if (a2 && (*a2 != -1592086528 || (*(a2 + 16) ^ a2) != 0xFFFFFFFFFFFFFFFFLL))
  {
    _dispatch_apply_with_attr_f_cold_1(a2);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = StatusReg + 184;
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    if (*(v12 + 8) == "apply")
    {
      v13 = *(v12 + 16);
      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_10:
  v14 = (StatusReg + 160);
  if (!a3)
  {
    if (!*(StatusReg + 160))
    {
      goto LABEL_24;
    }

    v15 = *(StatusReg + 160);
    do
    {
      v8 = v15;
      v15 = v15[3];
      if (!v15)
      {
        break;
      }
    }

    while (v15 != &_dispatch_custom_workloop_root_queue && v15 != &_dispatch_custom_workloop_overcommit_root_queue);
    if (v8 >= &_dispatch_root_queues && v8 < &qword_74A80)
    {
LABEL_24:
      v18 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
      if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
      {
        v19 = v18 + 1;
      }

      else
      {
        v19 = 4;
      }

      if (v19 - 7 <= 0xFFFFFFF9)
      {
        _dispatch_queue_priority_inherit_from_target_cold_1(v19);
      }

      v8 = &(&_dispatch_root_queues)[16 * (3 * v19 - 3)];
    }
  }

  v48 = *(StatusReg + 160);
  v20 = *(v8 + 21);
  v21 = v20 >> 12;
  v22 = (v20 >> 8) & 0xF;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (v8[3])
  {
    v29 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v23 = v29 + 1;
    }

    else
    {
      v23 = 0;
    }

    if (a2)
    {
      goto LABEL_34;
    }

LABEL_56:
    if (!v23 || (v30 = pthread_qos_max_parallelism(), v30 <= 0))
    {
      v30 = MEMORY[0xFFFFFC036];
    }

    if (v30 >= MEMORY[0xFFFFFC034])
    {
      v26 = MEMORY[0xFFFFFC034];
    }

    else
    {
      v26 = v30;
    }

    if (v13)
    {
      if (v13 >= v26)
      {
        v26 = 1;
      }

      else
      {
        if (v13 > v26)
        {
          goto LABEL_122;
        }

        v26 = v26 / v13;
      }

      if (v13 >= 0xFFFF || a1 >= 0xFFFF)
      {
        v28 = 0xFFFFLL;
      }

      else
      {
        v28 = v13 * a1;
      }
    }

    else
    {
      v28 = a1;
      if (!v26)
      {
        goto LABEL_122;
      }
    }

    goto LABEL_63;
  }

  if (!a2)
  {
    goto LABEL_56;
  }

LABEL_34:
  if (*a2 != -1592086528 || (*(a2 + 16) ^ a2) != 0xFFFFFFFFFFFFFFFFLL)
  {
    _dispatch_apply_with_attr_f_cold_1(a2);
  }

  if (!v13)
  {
    if (!v23 || (v24 = pthread_qos_max_parallelism(), v24 <= 0))
    {
      v24 = MEMORY[0xFFFFFC036];
    }

    if (v24 >= MEMORY[0xFFFFFC034])
    {
      v25 = MEMORY[0xFFFFFC034];
    }

    else
    {
      v25 = v24;
    }

    if (*(a2 + 8))
    {
      v27 = pthread_qos_max_parallelism();
      if (v27 < 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = (v27 * *(a2 + 8));
      }
    }

    else
    {
      v26 = -1;
    }

    if (v26 >= v25)
    {
      v26 = v25;
    }

    if (v26)
    {
      v28 = 0xFFFFLL;
      goto LABEL_63;
    }

LABEL_122:
    _dispatch_apply_with_attr_f_cold_6(a2);
  }

  v28 = 0xFFFFLL;
  v26 = 1;
LABEL_63:
  if (v26 >= a1)
  {
    v31 = a1;
  }

  else
  {
    v31 = v26;
  }

  memset(v51, 0, 32);
  if (a5)
  {
    v32 = a5;
  }

  else
  {
    v32 = 0;
  }

  v51[4] = v32;
  v51[5] = a4;
  v51[6] = a6;
  v51[7] = v8;
  v33 = *(StatusReg + 176);
  if (v33)
  {
    *(StatusReg + 176) = *(v33 + 16);
  }

  else
  {
    v33 = _dispatch_continuation_alloc_from_heap();
  }

  *(v33 + 8) = 0;
  *(v33 + 16) = a1;
  *(v33 + 24) = v28;
  *(v33 + 44) = v31;
  *(v33 + 52) = 0;
  if (a2)
  {
    v34 = _dispatch_calloc_typed(1, 64, 0x1000040FA0F61DDLL);
    *v34 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
    *(v34 + 8) = *(a2 + 8);
    *(v34 + 16) = ~v34;
    v35 = *(a2 + 4);
    *v34 = -1592086528;
    *(v34 + 4) = v35;
  }

  else
  {
    v34 = 0;
  }

  *(v33 + 56) = v34;
  *(v33 + 32) = 0;
  *v33 = v51;
  *(v33 + 40) = 0;
  v36 = v8[3];
  if (v36 == &_dispatch_custom_workloop_root_queue || v36 == &_dispatch_custom_workloop_overcommit_root_queue)
  {
    _dispatch_apply_with_attr_f_cold_8(v8, StatusReg, v33);
  }

  else if (v31 < 2 || *(v8 + 40) == 1)
  {
    dispatch_sync_f(v8, v33, _dispatch_apply_serial);
  }

  else if (v36)
  {
    _dispatch_apply_with_attr_f_cold_3(v8, v48, v33);
  }

  else
  {
    v50 = *v14;
    *(StatusReg + 160) = v8;
    *(StatusReg + 168) = &v50;
    v37 = *(v33 + 44);
    v38 = (v37 - 1);
    if (v37 < 2)
    {
      v40 = 0;
      v39 = 0;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = *(StatusReg + 32) | 0x10000000;
      v47 = v37 - 1;
      v42 = v37 - 1;
      do
      {
        v43 = v39;
        v39 = *(StatusReg + 176);
        if (v39)
        {
          *(StatusReg + 176) = v39[2];
        }

        else
        {
          v39 = _dispatch_continuation_alloc_from_heap();
        }

        *v39 = (&stru_B8 + 76);
        v39[4] = _dispatch_apply_invoke;
        v39[5] = v33;
        v44 = *(StatusReg + 224);
        if (v44 && atomic_fetch_add_explicit((v44 + 12), 1u, memory_order_relaxed) <= 0)
        {
          dispatch_group_notify_cold_1();
        }

        v39[3] = v44;
        if (v44 != -1 && MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v39[1] = v41;
        v39[2] = v43;
        if (!v40)
        {
          v40 = v39;
        }

        --v42;
      }

      while (v42);
      v37 = *(v33 + 44);
      v14 = (StatusReg + 160);
      v38 = v47;
    }

    *(v33 + 48) = v37;
    *(v33 + 32) = _dispatch_calloc_typed(v37, 8, 0x100004000313F17);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_apply_with_attr_f_cold_5(v8, v39, v40);
    }

    *(v40 + 16) = 0;
    *(StatusReg + 976) = v8 + 6;
    v45 = atomic_exchange_explicit((v8 + 6), v40, memory_order_release);
    if (v45)
    {
      *(v45 + 16) = v39;
      *(StatusReg + 976) = 0;
    }

    else
    {
      v8[13] = v39;
      *(StatusReg + 976) = 0;
      _dispatch_root_queue_poke_and_wakeup(v8, v38, 0);
    }

    _dispatch_apply_invoke_and_wait(v33);
    *v14 = v50;
  }
}

void dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  _dispatch_apply_with_attr_f(a1, a2, 0, a3, v4, 2);
}

void dispatch_apply(size_t iterations, dispatch_queue_t queue, void *block)
{
  v5 = _dispatch_Block_copy(block);
  v6 = v5;
  if (v5[2])
  {
    v7 = v5[2];
  }

  else
  {
    v7 = 0;
  }

  dispatch_apply_f(iterations, queue, v5, v7);

  _Block_release(v6);
}

void dispatch_apply_with_attr(unint64_t a1, uint64_t a2, void *aBlock)
{
  v5 = _dispatch_Block_copy(aBlock);
  if (v5[2])
  {
    v6 = v5[2];
  }

  else
  {
    v6 = 0;
  }

  _dispatch_apply_with_attr_f(a1, a2, 0, v5, v6, 2);

  _Block_release(v5);
}

double dispatch_apply_attr_init(unint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = -1592086528;
  *(a1 + 16) = ~a1;
  return result;
}

double dispatch_apply_attr_destroy(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t dispatch_apply_attr_set_parallelism(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == -1 || a2 == 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        dispatch_apply_attr_set_parallelism_cold_2();
      }

      dispatch_apply_attr_set_parallelism_cold_3(a3);
    }

    if (result && (*result != -1592086528 || (*(result + 16) ^ result) != 0xFFFFFFFFFFFFFFFFLL))
    {
      _dispatch_apply_with_attr_f_cold_1(result);
    }

    *(result + 8) = 1;
  }

  else
  {
    if (a2 != 1)
    {
      dispatch_apply_attr_set_parallelism_cold_5(a2);
    }

    if (a3 != 1)
    {
      dispatch_apply_attr_set_parallelism_cold_4(a3);
    }
  }

  return result;
}

unint64_t dispatch_apply_attr_query(unint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg + 184;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (*(v5 + 8) == "apply")
    {
      v6 = *(v5 + 16);
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = *(StatusReg + 160);
  if (!v7)
  {
    goto LABEL_18;
  }

  do
  {
    v8 = v7;
    v7 = v7[3];
    if (!v7)
    {
      break;
    }

    v9 = v7 == &_dispatch_custom_workloop_root_queue || v7 == &_dispatch_custom_workloop_overcommit_root_queue;
  }

  while (!v9);
  if (v8 >= &_dispatch_root_queues && v8 < &qword_74A80)
  {
LABEL_18:
    v11 = (*(StatusReg + 32) >> 8) & 0x3FFF;
    v9 = v11 == 0;
    v12 = __clz(__rbit32(v11));
    if (v9)
    {
      result = 4;
    }

    else
    {
      result = v12 + 1;
    }

    if ((result - 7) <= 0xFFFFFFF9)
    {
      _dispatch_queue_priority_inherit_from_target_cold_1(result);
    }

    v8 = &(&_dispatch_root_queues)[16 * (3 * result - 3)];
  }

  v13 = *(v8 + 21);
  v14 = v13 >> 12;
  v15 = (v13 >> 8) & 0xF;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  switch(a2)
  {
    case 0:
      return dispatch_apply_attr_query(v3, 1, a3) != 0;
    case 1:
      if ((a3 & 1) == 0)
      {
        if (v3)
        {
          if (*v3 != -1592086528 || (*(v3 + 16) ^ v3) != 0xFFFFFFFFFFFFFFFFLL)
          {
            _dispatch_apply_with_attr_f_cold_1(v3);
          }

          dispatch_apply_attr_query_cold_3(v3, &v21);
          return v21;
        }

        else
        {
          LODWORD(result) = pthread_qos_max_parallelism();
          if (result <= 0)
          {
            LODWORD(result) = MEMORY[0xFFFFFC036];
          }

          return result;
        }
      }

      if (v3)
      {
        if (*v3 != -1592086528 || (*(v3 + 16) ^ v3) != 0xFFFFFFFFFFFFFFFFLL)
        {
          _dispatch_apply_with_attr_f_cold_1(v3);
        }

LABEL_42:
        if (!v6)
        {
          if (v16 <= 2 && !v16 || (v17 = pthread_qos_max_parallelism(), v17 <= 0))
          {
            v17 = MEMORY[0xFFFFFC036];
          }

          if (v17 >= MEMORY[0xFFFFFC034])
          {
            v18 = MEMORY[0xFFFFFC034];
          }

          else
          {
            v18 = v17;
          }

          if (*(v3 + 8))
          {
            v20 = pthread_qos_max_parallelism();
            if (v20 < 1)
            {
              v19 = 0;
            }

            else
            {
              v19 = (v20 * *(v3 + 8));
            }
          }

          else
          {
            v19 = -1;
          }

          if (v19 >= v18)
          {
            return v18;
          }

          else
          {
            return v19;
          }
        }

        return 1;
      }

      break;
    case 2:
      if (v3)
      {
        if (*v3 != -1592086528 || (*(v3 + 16) ^ v3) != 0xFFFFFFFFFFFFFFFFLL)
        {
          _dispatch_apply_with_attr_f_cold_1(v3);
        }

        goto LABEL_42;
      }

      break;
    default:
      return result;
  }

  if (v16 <= 2 && !v16 || (LODWORD(result) = pthread_qos_max_parallelism(), result <= 0))
  {
    LODWORD(result) = MEMORY[0xFFFFFC036];
  }

  if (result >= MEMORY[0xFFFFFC034])
  {
    result = MEMORY[0xFFFFFC034];
  }

  else
  {
    result = result;
  }

  if (v6)
  {
    if (v6 < result)
    {
      return result / v6;
    }

    return 1;
  }

  return result;
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
        }
      }
    }
  }

  return result;
}

_BYTE *_dispatch_apply_invoke3(_BYTE *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  add_explicit = atomic_fetch_add_explicit((*result + 8), 1uLL, memory_order_relaxed);
  v24 = v2;
  if (add_explicit >= v2)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v6 = *v1;
  v7 = *(*v1 + 32);
  v25 = *(*v1 + 40);
  *&v26 = 0;
  v8 = *(v6 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  --*(StatusReg + 208);
  v10 = v1[3];
  v27[1] = "apply";
  v27[2] = v10;
  v11 = *(StatusReg + 184);
  v27[0] = v11;
  *(StatusReg + 184) = v27;
  *(&v26 + 1) = 0;
  if (result[8])
  {
    v12 = *(*v1 + 56);
    v26 = *(StatusReg + 160);
    *(StatusReg + 160) = v12;
    *(StatusReg + 168) = &v26;
    LODWORD(v11) = *(v12 + 84);
    v13 = *(StatusReg + 200);
    if (v13)
    {
      v14 = v11 & 0xFFF;
      if ((v11 & 0xFFF) != 0)
      {
        if ((v13 & 0xFFFu) > v14)
        {
          v14 = v13 & 0xFFF;
        }

        if (v11 >> 12 <= v14 >> 8)
        {
          v15 = 0x40000000;
        }

        else
        {
          v15 = 1140912128;
        }

        LODWORD(v11) = v13 & 0x880F0000 | v14 | v15 & v11;
      }

      else
      {
        v16 = v13 | 0x40000000;
        if ((v13 & 0xFFF) == 0)
        {
          v16 = *(StatusReg + 200);
        }

        v17 = v11 >> 12;
        LODWORD(v11) = v16 & 0xFFFF0FFF | v11 & 0x400F000;
        if (v17 <= ((v16 >> 8) & 0xF))
        {
          LODWORD(v11) = v16;
        }
      }
    }

    else
    {
LABEL_37:
      LODWORD(v11) = v11 & 0xFFF0FFFF;
    }

    *(StatusReg + 200) = v11;
    v5 = v13 & 0xFFF0FFFF;
  }

  v22 = v5;
  v18 = *(v1 + 10);
  v23 = v4;
  do
  {
    if ((v18 & 0x1000000) != 0)
    {
      v19 = _dispatch_autorelease_pool_push();
      if (v8)
      {
LABEL_19:
        if (v7)
        {
          v20 = v7;
        }

        else
        {
          v20 = 0;
        }

        result = _dispatch_client_callout2(v25, add_explicit, v20);
        goto LABEL_29;
      }
    }

    else
    {
      v19 = 0;
      if (v8)
      {
        goto LABEL_19;
      }
    }

    if ((v8 & 2) == 0)
    {
      LODWORD(v13) = v8;
      qword_78298 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
      qword_782C8 = v8;
      __break(1u);
      goto LABEL_37;
    }

    if (v7)
    {
      v21 = v7;
    }

    else
    {
      v21 = 0;
    }

    result = _dispatch_client_callout3_a(v25, add_explicit, *(v4 + 4), v21);
    v4 = v23;
LABEL_29:
    ++*(StatusReg + 208);
    LODWORD(v11) = 1;
    add_explicit = atomic_fetch_add_explicit((v1 + 1), 1uLL, memory_order_relaxed);
    if (v19)
    {
      result = _dispatch_autorelease_pool_pop(v19);
    }
  }

  while (add_explicit < v24);
  if (v4[8])
  {
    *(StatusReg + 200) = *(StatusReg + 200) & 0xF0000 | v22;
    *(StatusReg + 160) = v26;
  }

  *(StatusReg + 184) = v27[0];
  return result;
}

uint64_t _dispatch_apply_clear_attr_behavior(uint64_t result, uint64_t a2)
{
  if (result && *(result + 8))
  {
    result = __bsdthread_ctl();
    if (result)
    {
      __break(1u);
    }
  }

  return result;
}

void _dispatch_apply_serial(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  --*(StatusReg + 208);
  v5 = v2[7];
  if (v5)
  {
    do
    {
      v6 = *(v5 + 80);
      v5 = *(v5 + 24);
      if (v5)
      {
        v7 = (v6 & 0x30000) == 0;
      }

      else
      {
        v7 = 0;
      }
    }

    while (v7);
    v8 = (v6 & 0x10000) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = 0;
  if (v3 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v3;
  }

  do
  {
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = _dispatch_autorelease_pool_push();
    }

    v12 = v2[6];
    if (v12)
    {
      if (v2[4])
      {
        v14 = v2[4];
      }

      else
      {
        v14 = 0;
      }

      _dispatch_client_callout2(v2[5], v9, v14);
    }

    else
    {
      if ((v12 & 2) == 0)
      {
        qword_78298 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
        qword_782C8 = v12;
        __break(1u);
        return;
      }

      if (v2[4])
      {
        v13 = v2[4];
      }

      else
      {
        v13 = 0;
      }

      _dispatch_client_callout3_a(v2[5], v9, 0, v13);
    }

    ++*(StatusReg + 208);
    if (v11)
    {
      _dispatch_autorelease_pool_pop(v11);
    }

    ++v9;
  }

  while (v10 != v9);
  v15 = *(a1 + 32);
  if (v15)
  {
    free(v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v16[2] = 0u;
    v16[3] = 0u;
    *v16 = 0u;
    v16[1] = 0u;
    free(*(a1 + 56));
  }

  v17 = *(StatusReg + 176);
  if (v17)
  {
    v18 = *(v17 + 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18 > _dispatch_continuation_cache_limit)
  {

    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v17;
    *(a1 + 8) = v18;
    *(StatusReg + 176) = a1;
  }
}

void _dispatch_apply_redirect(uint64_t a1)
{
  v1 = (*(a1 + 44) - 1);
  v2 = *(*a1 + 56);
  add_explicit = v2;
  while (1)
  {
    if (*(add_explicit + 80) != 1)
    {
      v4 = *(add_explicit + 56);
      while ((v4 & 0x20000000000000) == 0)
      {
        LODWORD(v5) = 4096 - ((v4 >> 41) & 0xFFF);
        if (v5 >= v1)
        {
          v5 = v1;
        }

        else
        {
          v5 = v5;
        }

        v6 = v4;
        atomic_compare_exchange_strong_explicit((add_explicit + 56), &v6, v4 + (v5 << 41), memory_order_relaxed, memory_order_relaxed);
        v7 = v6 == v4;
        v4 = v6;
        if (v7)
        {
          goto LABEL_10;
        }
      }
    }

    v5 = 0;
LABEL_10:
    v8 = (v1 - v5);
    if (v1 <= v5)
    {
      goto LABEL_11;
    }

    if (v2 != add_explicit)
    {
      v9 = v2;
      do
      {
        atomic_fetch_add_explicit((v9 + 56), 0xFFFFFE0000000000 * v8, memory_order_relaxed);
        v9 = *(v9 + 24);
      }

      while (v9 != add_explicit);
    }

    if (!v5)
    {
      break;
    }

    *(a1 + 44) -= v8;
    v1 = v5;
LABEL_11:
    if (!*(a1 + 40))
    {
      *(a1 + 40) = (*(add_explicit + 80) << 8) & 0x3000000;
    }

    add_explicit = *(add_explicit + 24);
    if (!*(add_explicit + 24))
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = *(a1 + 44);
      v12 = v11 - 1;
      v22 = a1;
      v21 = v11 - 1;
      if (v11 < 2)
      {
        v14 = 0;
        v13 = 0;
LABEL_36:
        *(a1 + 48) = v11;
        *(a1 + 32) = _dispatch_calloc_typed(v11, 8, 0x100004000313F17);
        if (!MEMORY[0xFFFFFC100])
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = v1;
        v20 = add_explicit;
        v13 = 0;
        v14 = 0;
        v1 = StatusReg[4] | 0x10000000;
        while (1)
        {
          v15 = v13;
          v13 = StatusReg[22];
          if (v13)
          {
            StatusReg[22] = v13[2];
          }

          else
          {
            v13 = _dispatch_continuation_alloc_from_heap();
            a1 = v22;
          }

          *v13 = 260;
          v13[4] = _dispatch_apply_redirect_invoke;
          v13[5] = a1;
          v16 = StatusReg[28];
          if (v16)
          {
            add_explicit = atomic_fetch_add_explicit((v16 + 12), 1u, memory_order_relaxed);
            a1 = v22;
            if (add_explicit <= 0)
            {
              break;
            }
          }

          v13[3] = v16;
          if (v16 != -1 && MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
            a1 = v22;
          }

          v13[1] = v1;
          v13[2] = v15;
          if (!v14)
          {
            v14 = v13;
          }

          if (!--v12)
          {
            v11 = *(a1 + 44);
            v1 = v19;
            add_explicit = v20;
            goto LABEL_36;
          }
        }

        qword_78298 = "API MISUSE: Voucher resurrection";
        __break(1u);
      }

      v18 = v13;
      do
      {
        if (v18 == v14)
        {
          break;
        }

        v18 = v18[2];
      }

      while (v18);
LABEL_37:
      *(v14 + 16) = 0;
      StatusReg[122] = add_explicit + 48;
      v17 = atomic_exchange_explicit((add_explicit + 48), v14, memory_order_release);
      if (v17)
      {
        *(v17 + 16) = v13;
        StatusReg[122] = 0;
      }

      else
      {
        *(add_explicit + 104) = v13;
        StatusReg[122] = 0;
        _dispatch_root_queue_poke_and_wakeup(add_explicit, v21, 0);
      }

      _dispatch_apply_invoke_and_wait(v22);
      for (; v2 != add_explicit; v2 = *(v2 + 24))
      {
        atomic_fetch_add_explicit((v2 + 56), 0xFFFFFE0000000000 * v1, memory_order_relaxed);
      }

      return;
    }
  }

  _dispatch_apply_serial(a1);
}

void _dispatch_apply_invoke_and_wait(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  context = a1;
  v16 = xmmword_4A940;
  _dispatch_apply_set_attr_behavior(*(a1 + 56), add_explicit);
  v3 = (*(a1 + 32) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, &context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 56), add_explicit);
  v4 = *(a1 + 48);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 8 * add_explicit;
    do
    {
      if (v7 != v5)
      {
        v8 = *(a1 + 32);
        if (*(v8 + v5) != -1)
        {
          dispatch_once_f((v8 + v5), 0, _dispatch_no_op);
        }

        v4 = *(a1 + 48);
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < v4);
  }

  if (atomic_fetch_add_explicit((a1 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v10[2] = 0u;
      v10[3] = 0u;
      *v10 = 0u;
      v10[1] = 0u;
      free(*(a1 + 56));
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = *(StatusReg + 176);
    if (v12)
    {
      v13 = *(v12 + 8) + 1;
    }

    else
    {
      v13 = 1;
    }

    if (v13 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v12;
      *(a1 + 8) = v13;
      *(StatusReg + 176) = a1;
    }
  }

  v14 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  ++*(v14 + 208);
}

dispatch_source_t dispatch_source_create(dispatch_source_type_t type, uintptr_t handle, uintptr_t mask, dispatch_queue_t queue)
{
  v6 = (*(type + 4))(type, handle, mask);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = _dispatch_object_alloc(_OS_dispatch_source_vtable, 120);
  v9 = v8;
  v10 = *(*v7 + 10);
  *(v8 + 8) += 2;
  if (*(*v8 + 16) == 19)
  {
    ++*(v8 + 8);
  }

  *(v8 + 16) = -1985229329;
  if ((v10 & 2) != 0)
  {
    v11 = 67108865;
  }

  else
  {
    v11 = 4194305;
  }

  *(v8 + 80) = v11;
  *(v8 + 56) = 0x19FFE0000000000;
  *(v8 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v8 + 72) = "source";
  *(v8 + 88) = v7;
  *(v7 + 8) = ~v8;
  if (queue)
  {
    if ((*(queue + 87) & 8) != 0 && (*(v7 + 29) & 2) == 0)
    {
      dispatch_source_create_cold_1(v8);
    }

    if (*(queue + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((queue + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }
  }

  else
  {
    queue = &off_74680;
  }

  *(v8 + 24) = queue;
  if ((*(v7 + 29) & 2) != 0 && (*(v7 + 30) & 0x10) != 0)
  {
    dispatch_source_set_timer(v8, 0, handle, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v9;
}

void dispatch_source_set_timer(dispatch_source_t source, dispatch_time_t start, uint64_t interval, uint64_t leeway)
{
  v9 = *(source + 11);
  if ((*(v9 + 29) & 2) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Attempt to set timer on a non-timer source";
    qword_782C8 = source;
    __break(1u);
    goto LABEL_51;
  }

  v5 = leeway;
  v6 = start;
  v11 = *(v9 + 30);
  if ((v11 & 0x10) != 0)
  {
    v13 = _dispatch_calloc_typed(1, 32, 0x1000040F6D918ACLL);
    v4 = v13;
    *(v13 + 24) = 0;
    if (v6)
    {
      if (v6 != -1)
      {
        goto LABEL_97;
      }

      v15 = 0x7FFFFFFFFFFFFFFFLL;
      *v13 = 0x7FFFFFFFFFFFFFFFLL;
      v16 = 8;
      v17 = 16;
      interval = 0x7FFFFFFFFFFFFFFFLL;
LABEL_49:
      *(v4 + v17) = v15;
      *(v4 + v16) = interval;
      v11 = *(v4 + 24);
      goto LABEL_75;
    }

    if (interval)
    {
      v18 = 16666666;
      v19 = 1892160075;
      if ((v11 & 0x20) == 0)
      {
        v19 = 31536000000;
        v18 = 1000000;
      }

      v20 = v18 * interval;
      if (v19 >= interval)
      {
        v13 = v20;
      }

      else
      {
        v13 = 31536000000000000;
      }

      v7 = &_dispatch_host_time_nano2mach;
      v14 = _dispatch_host_time_nano2mach;
      if (!_dispatch_host_time_nano2mach)
      {
        if (v13 > 0x7FFFFFFFFFFFFFFELL)
        {
          interval = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v13 > 0x5555555555555554)
        {
          interval = 3 * (v13 / 0x7D);
        }

        else
        {
          v21 = (3 * v13 * 0x624DD2F1A9FBE77uLL) >> 64;
          interval = (v21 + ((3 * v13 - v21) >> 1)) >> 6;
        }

        goto LABEL_26;
      }
    }

    else
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Setting interval to 0";
      __break(1u);
    }

    interval = v14(v13);
LABEL_26:
    v6 = mach_absolute_time();
    if (v5 > 0x3E8)
    {
      if (v5 != -1)
      {
        goto LABEL_98;
      }

      if ((v11 & 0x20) != 0)
      {
        if (*v7)
        {
          v22 = (*v7)(16666666);
        }

        else
        {
          v22 = 399999;
        }
      }

      else
      {
        v22 = interval >> 1;
      }
    }

    else
    {
      v22 = interval * v5 / 0x3E8;
    }

    v25 = (v6 + interval) / interval * interval;
    *(v4 + 24) = 0;
    *v4 = v25;
    v15 = v22 + v25;
    v16 = 16;
    v17 = 8;
    goto LABEL_49;
  }

  v4 = _dispatch_calloc_typed(1, 32, 0x1000040F6D918ACLL);
  if (interval)
  {
    if (interval >= 0x7FFFFFFFFFFFFFFFLL)
    {
      interval = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v6 != -1)
    {
      goto LABEL_9;
    }

LABEL_55:
    v11 = (*(v9 + 30) >> 2) & 3;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_56;
  }

LABEL_51:
  if (v6 == -1)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    interval = 1;
    goto LABEL_55;
  }

  _dispatch_bug_deprecated("Setting timer interval to 0 requests a 1ns timer, did you mean FOREVER (a one-shot timer)?");
  if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  interval = 1;
LABEL_9:
  if (v6 == 0x8000000000000000)
  {
    v11 = 1;
    v12 = mach_continuous_time();
    goto LABEL_57;
  }

  if (v6 == -2)
  {
    v12 = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v11 = 2;
    goto LABEL_68;
  }

  if (v6)
  {
    v23 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x4000000000000000) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    if ((v6 & 0x4000000000000000) != 0)
    {
      v23 = -v6;
    }

    if (v6 < 0)
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }

    if (v6 >= 0)
    {
      v23 = v6;
    }

    if (v23 >> 62)
    {
      v12 = -1;
    }

    else
    {
      v12 = v23;
    }

LABEL_56:
    if (v11 == 2)
    {
      goto LABEL_68;
    }

    goto LABEL_57;
  }

  v12 = mach_absolute_time();
  v11 = 0;
LABEL_57:
  v6 = 0x5555555555555554;
  if (_dispatch_host_time_nano2mach)
  {
    v7 = v12;
    v32 = _dispatch_host_time_nano2mach(interval);
    if (v32 <= 1)
    {
      interval = 1;
    }

    else
    {
      interval = v32;
    }

    if (_dispatch_host_time_nano2mach)
    {
      v5 = _dispatch_host_time_nano2mach(v5);
      v12 = v7;
      goto LABEL_68;
    }

    goto LABEL_99;
  }

  if (interval > 0x7FFFFFFFFFFFFFFELL)
  {
    interval = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = (3 * interval * 0x624DD2F1A9FBE77uLL) >> 64;
    v27 = (v26 + ((3 * interval - v26) >> 1)) >> 6;
    if (interval > 0x5555555555555554)
    {
      v27 = 3 * (interval / 0x7D);
    }

    if (v27 <= 1)
    {
      interval = 1;
    }

    else
    {
      interval = v27;
    }
  }

  while (1)
  {
    if (v5)
    {
      if (v5 > 0x7FFFFFFFFFFFFFFELL)
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (v5 > v6)
      {
        v5 = 3 * (v5 / 0x7D);
      }

      else
      {
        v28 = (3 * v5 * 0x624DD2F1A9FBE77uLL) >> 64;
        v5 = (v28 + ((3 * v5 - v28) >> 1)) >> 6;
      }
    }

LABEL_68:
    v29 = interval >> 1;
    if (v5 < interval >> 1)
    {
      v29 = v5;
    }

    if (interval >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v5;
    }

    *(v4 + 24) = v11;
    v30 = v29 + v12;
    if (v30 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *v4 = v12;
    *(v4 + 8) = v30;
    *(v4 + 16) = interval;
LABEL_75:
    if (v11 == ((*(v9 + 30) >> 2) & 3) || *(v9 + 28) != 236)
    {
      break;
    }

    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Attempting to modify timer clock";
    __break(1u);
LABEL_97:
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Start value is not DISPATCH_TIME_NOW or DISPATCH_TIME_FOREVER";
    __break(1u);
LABEL_98:
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Passing an invalid leeway";
    __break(1u);
LABEL_99:
    v12 = v7;
  }

  v31 = atomic_exchange_explicit((v9 + 104), v4, memory_order_release);
  if (v31)
  {
    free(v31);
  }

  (*(*source + 64))(source, 0, 2);
}

void _dispatch_source_dispose(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  if (MEMORY[0xFFFFFC100])
  {
    a1 = _dispatch_source_dispose_cold_1(a1);
  }

  __swp(a1, (*(v3 + 88) + 56));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1, a2);
  }

  __swp(a1, (*(v3 + 88) + 40));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1, a2);
  }

  __swp(a1, (*(v3 + 88) + 48));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1, a2);
  }

  _dispatch_unote_dispose(*(v3 + 88), 0);
  *(v3 + 88) = 0;

  _dispatch_lane_class_dispose(v3, a2);
}

uint64_t _dispatch_source_xref_dispose(uint64_t a1)
{
  v2 = *(a1 + 80);
  if ((v2 & 0x14000000) == 0x4000000 && *(*(a1 + 88) + 48))
  {
    _dispatch_source_xref_dispose_cold_1(v2);
  }

  v3 = *(*a1 + 64);

  return v3();
}

uintptr_t dispatch_source_get_mask(dispatch_source_t source)
{
  v1 = *(source + 11);
  if ((*(source + 20) & 0x10000000) != 0)
  {
    return 0;
  }

  if ((*(v1 + 29) & 0x10) != 0)
  {
    return 0x80000000;
  }

  if ((*(v1 + 29) & 2) != 0)
  {
    return *(v1 + 30);
  }

  return *(v1 + 32);
}

uintptr_t dispatch_source_get_handle(dispatch_source_t source)
{
  v1 = *(source + 11);
  if (*(v1 + 28) != 236)
  {
    return *(v1 + 24);
  }

  v2 = (*(v1 + 30) >> 2) & 3;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return 3;
    }

    return *(v1 + 24);
  }

  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uintptr_t dispatch_source_get_data(dispatch_source_t source)
{
  v1 = *(source + 11);
  v2 = *(v1 + 29);
  if ((v2 & 0x10) != 0)
  {
    return 0x80000000;
  }

  v3 = *(v1 + 64);
  if ((v2 & 4) != 0)
  {
    return v3;
  }

  else
  {
    return v3;
  }
}

uint64_t dispatch_source_get_extended_data(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 88);
    if ((*(v4 + 29) & 4) != 0)
    {
      v7 = *(v4 + 64);
      v6 = v7;
      v5 = HIDWORD(v7);
    }

    else
    {
      v5 = 0;
      v6 = (*(v4 + 29) & 0x10) != 0 ? 0x80000000 : *(v4 + 64);
    }

    if (a3 >= 8)
    {
      *a2 = v6;
      if (a3 >= 0x10)
      {
        a2[1] = v5;
        if (a3 != 16)
        {
          bzero(a2 + 2, a3 - 16);
        }
      }
    }
  }

  if (a3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return a3;
  }
}

void dispatch_source_merge_data(dispatch_source_t source, uintptr_t value)
{
  if ((*(source + 20) & 0x10800000) == 0)
  {
    v2 = *(source + 11);
    v3 = *(v2 + 28);
    switch(v3)
    {
      case 233:
        *(v2 + 72) = value;
        break;
      case 234:
        atomic_fetch_or_explicit((v2 + 72), value, memory_order_relaxed);
        break;
      case 235:
        atomic_fetch_add_explicit((v2 + 72), value, memory_order_relaxed);
        break;
      default:
        dispatch_source_merge_data_cold_2(*(v2 + 28));
    }

    dispatch_source_merge_data_cold_1(source);
  }
}

void _dispatch_source_set_handler(unint64_t a1, uint64_t (**aBlock)(), uint64_t a3, int a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 176);
  if (!v9)
  {
    v9 = _dispatch_continuation_alloc_from_heap();
    if (aBlock)
    {
      goto LABEL_3;
    }

LABEL_16:
    *v9 = 256;
    v9[4] = 0;
    goto LABEL_17;
  }

  *(StatusReg + 176) = v9[2];
  if (!aBlock)
  {
    goto LABEL_16;
  }

LABEL_3:
  v10 = 4 * (a3 != 0);
  if (!a4)
  {
    v15 = *(a1 + 32);
    *v9 = v10 | 0x140;
    v9[4] = aBlock;
    v9[5] = v15;
LABEL_13:
    v9[3] = 0;
    if (MEMORY[0xFFFFFC100])
    {
LABEL_44:
      kdebug_trace();
    }

    v9[1] = 0;
    goto LABEL_17;
  }

  v11 = _dispatch_Block_copy(aBlock);
  v12 = v10 | 0x110;
  v13 = aBlock[2];
  if (v13)
  {
    if (v13 != _dispatch_block_special_invoke)
    {
      v14 = aBlock[2];
LABEL_10:
      if (a3)
      {
        v14 = _dispatch_call_block_and_release;
      }

      *v9 = v12;
      v9[4] = v14;
      v9[5] = v11;
      goto LABEL_13;
    }
  }

  else if (_dispatch_block_special_invoke)
  {
    v14 = 0;
    goto LABEL_10;
  }

  *v9 = v12;
  v9[5] = v11;
  _dispatch_continuation_init_slow(v9, a1, 1073741888);
LABEL_17:
  v16 = *(a1 + 56);
  do
  {
    if ((~v16 & 0x180000000000000) != 0)
    {
      v21 = *(a1 + 80);
      if ((v21 & 0x4000000) != 0)
      {
        qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change a handler of this source after it has been activated";
        qword_782C8 = a3;
        __break(1u);
      }

      else
      {
        if ((v21 & 0x10000000) != 0)
        {
LABEL_40:
          v9[6] = a3;

          _dispatch_barrier_trysync_or_async_f(a1, v9, _dispatch_source_set_handler_slow, 0);
          return;
        }

        if (!MEMORY[0xFFFFFC100])
        {
LABEL_38:
          if (a3 == 2 || !aBlock)
          {
            if (a3 == 2)
            {
              v22 = "Setting registration handler after the source has been activated";
            }

            else
            {
              v22 = "Clearing handler after the source has been activated";
            }

            _dispatch_bug_deprecated(v22);
          }

          goto LABEL_40;
        }
      }

      kdebug_trace();
      goto LABEL_38;
    }

    v17 = v16;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v16, v16 + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
  }

  while (v16 != v17);
  if ((v17 & 0x200000000000000) != 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Too many calls to dispatch_suspend() prior to calling dispatch_set_target_queue() or dispatch_set_*_handler()";
    __break(1u);
    goto LABEL_44;
  }

  if (v9[4])
  {
    if ((*v9 & 0x40) != 0)
    {
      v9[5] = *(a1 + 32);
    }
  }

  else
  {
    v18 = *(StatusReg + 176);
    if (v18)
    {
      v19 = *(v18 + 8) + 1;
    }

    else
    {
      v19 = 1;
    }

    if (v19 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(v9);
    }

    else
    {
      v9[2] = v18;
      *(v9 + 2) = v19;
      *(StatusReg + 176) = v9;
    }

    v9 = 0;
  }

  v20 = atomic_exchange_explicit((*(a1 + 88) + 8 * a3 + 40), v9, memory_order_release);
  if (v20)
  {
    _dispatch_source_handler_dispose(v20, aBlock);
  }

  _dispatch_lane_resume(a1, 0);
}

void dispatch_source_set_mandatory_cancel_handler(unint64_t a1, uint64_t (**a2)())
{
  v2 = *(a1 + 80);
  do
  {
    v3 = v2 & 0xFBBFFFFF | 0x4000000;
    if (v3 == v2)
    {
      break;
    }

    v4 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v4, v3, memory_order_relaxed, memory_order_relaxed);
    v5 = v4 == v2;
    v2 = v4;
  }

  while (!v5);
  _dispatch_source_set_handler(a1, a2, 1, 1);
}

void dispatch_source_set_mandatory_cancel_handler_f(unint64_t a1, uint64_t (**a2)())
{
  v2 = *(a1 + 80);
  do
  {
    v3 = v2 & 0xFBBFFFFF | 0x4000000;
    if (v3 == v2)
    {
      break;
    }

    v4 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v4, v3, memory_order_relaxed, memory_order_relaxed);
    v5 = v4 == v2;
    v2 = v4;
  }

  while (!v5);
  _dispatch_source_set_handler(a1, a2, 1, 0);
}

BOOL _dispatch_source_will_reenable_kevent_4NW(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (((v2 ^ *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24)) & 0xFFFFFFFC) != 0)
  {
    _dispatch_source_will_reenable_kevent_4NW_cold_1();
  }

  v3 = *(*(a1 + 88) + 16);
  return (v3 & 3) == 0 && v3 != 0;
}

void _dispatch_source_activate(uint64_t a1)
{
  v2 = *(a1 + 88);
  v11 = 0;
  if ((*(a1 + 80) & 0x10000000) != 0)
  {
    _dispatch_source_activate_cold_1(a1);
    return;
  }

  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = *v3;
    if (*v3 < 0x1000)
    {
      if ((v4 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((*(v4 + 16) & 0xF0) != 0x10 || (v3[10] & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    atomic_fetch_or_explicit((a1 + 80), 0x80000u, memory_order_relaxed);
LABEL_9:
    v5 = v3[1];
    if ((v5 & 0x10000000) != 0 || (v6 = *(a1 + 84), (v6 & 0x20000000) != 0) || (v6 & 0x44000FFF) == 0)
    {
      v7 = (__clz(__rbit32((v5 >> 8) & 0x3FFF)) << 8) + 256;
      if (((v5 >> 8) & 0x3FFF) == 0)
      {
        v7 = 0;
      }

      *(a1 + 84) = v7 & 0xFFFFFF00 | v3[1];
    }

    if ((*v3 & 0x40) != 0)
    {
      v3[5] = *(a1 + 32);
    }

    goto LABEL_17;
  }

  _dispatch_bug_deprecated("dispatch source activated with no event handler set");
LABEL_17:
  _dispatch_lane_activate(a1);
  if ((*(v2 + 29) & 3) != 0 && (*(a1 + 116) & 1) == 0)
  {
    v8 = _dispatch_queue_compute_priority_and_wlh(a1, &v11);
    if (v8)
    {
      v9 = v8;
      v10 = v11;
      if (v11 != -4 && v11 && *(*v11 + 16) == 18 && *(v2 + 28) == 236 && *(v2 + 24) <= 5u)
      {
        if (!v11[6])
        {
          *(v10 + 48) = _dispatch_calloc_typed(6, 32, 0x10A0040FB565BC9);
          v10 = v11;
        }

        *(v2 + 29) |= 1u;
        if (v10 != -4 && v10 && (atomic_fetch_add_explicit((v10 + 96), 1u, memory_order_relaxed) & 0x80000000) != 0)
        {
          dispatch_set_target_queue_cold_2();
        }

        *(v2 + 16) = v10;
      }

      _dispatch_source_install(a1, v10, v9);
    }
  }
}

void _dispatch_source_refs_finalize_unregistration(uint64_t a1)
{
  v4 = *(a1 + 80);
  v2 = (a1 + 80);
  v3 = v4;
  do
  {
    v5 = v3;
    v6 = v3 & 0x1FFFFFFF | 0x80000000;
    if (v6 == v3)
    {
      goto LABEL_10;
    }

    atomic_compare_exchange_strong_explicit(v2, &v3, v6, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v5);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_10:
    qword_78298 = "BUG IN LIBDISPATCH: Source finalized twice";
    qword_782C8 = v5;
    __break(1u);
    return;
  }

  if ((v5 & 0x20000000) != 0)
  {
    _dispatch_wake_by_address(v2);
  }

  _os_object_release_internal(a1);
}

void _dispatch_source_install(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  *(a1 + 116) |= 1u;
  _dispatch_unote_register(v4, a2, a3);
  if ((v5 & 1) == 0)
  {

    _dispatch_source_refs_finalize_unregistration(a1);
  }
}

void _dispatch_source_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v171 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  }

  if ((a3 & 2) != 0)
  {
    v171 = 0x40020000000001;
    v7 = a3 & 0x40000;
    goto LABEL_5;
  }

  v132 = (*(a1 + 80) << 41) - 0x20000000000;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v134 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v7 = a3 & 0x40000;
  if ((a3 & 0x40000) != 0)
  {
    v135 = 0x4000000000;
  }

  else
  {
    v135 = 1;
  }

  v136 = 0xFFE00000FFFFFFFCLL;
  if ((a3 & 0x40000) == 0)
  {
    v136 = 0xFFE00040FFFFFFFCLL;
  }

  if (a3)
  {
    v137 = 0xFFE00040FFFFFFFCLL;
  }

  else
  {
    v137 = v136;
  }

  v138 = *(StatusReg + 200);
  v139 = (v138 >> 8) & 0xF;
  v140 = v138 >> 12;
  v141 = HIWORD(v138) & 0xF;
  if (v139 <= v140)
  {
    v139 = v140;
  }

  if (v139 > v141)
  {
    v141 = v139;
  }

  v3 = 0x20000000000000;
  while (2)
  {
    v142 = *(a1 + 56);
    while ((v142 & v137) != 0)
    {
      if ((v4 & 1) != 0 || (v148 = v142, atomic_compare_exchange_strong_explicit((a1 + 56), &v148, v142 ^ v135, memory_order_acquire, memory_order_acquire), v148 == v142))
      {
        v35 = 0;
        v171 = 0;
        goto LABEL_340;
      }

      v142 = v148;
LABEL_376:
      v3 = 0x20000000000000;
    }

    if ((v142 & 0x1000000000) != 0)
    {
      v143 = HIDWORD(v142) & 7;
      if (v143 > v141)
      {
        v169 = v132;
        _pthread_workqueue_override_start_direct();
        v3 = 0x20000000000000;
        v132 = v169;
        v149 = *(StatusReg + 200);
        v141 = v143;
        if ((HIWORD(v149) & 0xF) < v143)
        {
          *(StatusReg + 200) = v149 & 0xFFF0FFFF | (v143 << 16);
          v141 = v143;
        }

        continue;
      }
    }

    break;
  }

  v144 = (v142 >> 40) & 1;
  if (!((v132 + v142) >> 53))
  {
    LODWORD(v144) = 1;
  }

  if (v144)
  {
    v145 = 0x60000000000000;
  }

  else
  {
    v145 = 0x20000000000000;
  }

  v146 = v142 & 0x7700000001 | v134 | v145;
  v147 = v142;
  atomic_compare_exchange_strong_explicit((a1 + 56), &v147, v146, memory_order_acquire, memory_order_acquire);
  if (v147 != v142)
  {
    v142 = v147;
    goto LABEL_376;
  }

  v150 = 0x60000000000000;
  if ((v4 & 1) == 0)
  {
    v150 = v135 | 0x60000000000000;
  }

  v171 = (v146 & v150) - (v142 & 0x3FFE0000000000);
  if (!v171)
  {
    v35 = 0;
    goto LABEL_340;
  }

LABEL_5:
  if (v7)
  {
    v167 = 0;
  }

  else
  {
    v8 = *(a1 + 84);
    v9 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = *(v9 + 200);
    if (v10)
    {
      v11 = v8 >> 12;
      v12 = v8 & 0xFFF;
      if ((v8 & 0xFFF) != 0)
      {
        if ((v10 & 0xFFFu) > v12)
        {
          v12 = v10 & 0xFFF;
        }

        v3 = 1140912128;
        if (v11 <= v12 >> 8)
        {
          v13 = 0x40000000;
        }

        else
        {
          v13 = 1140912128;
        }

        v14 = v10 & 0x880F0000 | v12 | v13 & v8;
      }

      else
      {
        v15 = v10 | 0x40000000;
        if ((v10 & 0xFFF) == 0)
        {
          v15 = *(v9 + 200);
        }

        v14 = v15 & 0xFFFF0FFF | v8 & 0x400F000;
        if (v11 <= ((v15 >> 8) & 0xF))
        {
          v14 = v15;
        }
      }
    }

    else
    {
      v14 = v8 & 0xFFF0FFFF;
    }

    *(v9 + 200) = v14;
    v167 = v10 & 0xFFF0FFFF;
  }

  v16 = v4 | 8;
  if ((v4 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  v17 = *(a1 + 80);
  if (((v17 << 8) & 0x3000000) != 0)
  {
    v16 = (v17 << 8) & 0x3000000 | v4 & 0xFCFFFFF7 | 8;
  }

  v164 = v16 | 0x10;
  v18 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v168 = v19;
  v163 = v18;
  while (2)
  {
    while (2)
    {
      v20 = v16;
      if ((v16 & 0x1000002) != 2)
      {
        v28 = *(v19 + 160);
        v29 = *(a1 + 88);
        v165 = v28;
        if ((v16 & 0x40000) == 0)
        {
          v30 = *(v19 + 232);
          v31 = v30 ? *(v30 + 24) : -4;
          v40 = *(v29 + 16) & 0xFFFFFFFFFFFFFFFCLL;
          v41 = v40 == -4 || v40 == 0;
          if (!v41 && v31 != v40)
          {
            _dispatch_source_handle_wlh_change(a1);
            v28 = v165;
          }
        }

        if (*(a1 + 48))
        {
          v43 = _dispatch_lane_serial_drain(a1, v5, v20 | 0x4000000, &v171);
          v28 = v165;
          v35 = v43;
          v44 = v20 & 0xFBFFFFFF;
        }

        else
        {
          v35 = 0;
          v44 = v20;
        }

        v45 = &_dispatch_mgr_q;
        if (*(v29 + 29))
        {
          v45 = *(a1 + 24);
        }

        v46 = v5;
        if ((*(a1 + 116) & 1) == 0)
        {
          if (v28 != v45)
          {
LABEL_66:
            v35 = v45;
            goto LABEL_175;
          }

          v50 = v44;
          if ((v44 & 0x10000) != 0)
          {
            v51 = *(v19 + 200);
          }

          else
          {
            v51 = 0x2000000;
          }

          v52 = *(v19 + 232);
          if (v52)
          {
            v53 = *(v52 + 24);
          }

          else
          {
            v53 = -4;
          }

          _dispatch_source_install(a1, v53, v51);
          v28 = v165;
          v44 = v50;
        }

        if (*(a1 + 56) >> 55)
        {
LABEL_211:
          v35 = *(a1 + 24);
          goto LABEL_175;
        }

        if ((*(v29 + 29) & 2) != 0 && *(v29 + 104) && (*(a1 + 80) & 0x10800000) == 0)
        {
          if (v28 != v45)
          {
            goto LABEL_66;
          }

          v58 = v44;
          _dispatch_timer_unote_configure(*(a1 + 88));
          v44 = v58;
          v28 = v165;
        }

        if (*(v29 + 56))
        {
          v56 = v35;
          v35 = *(a1 + 24);
          if (v28 != v35)
          {
            goto LABEL_175;
          }

          __swp(v35, (*(a1 + 88) + 56));
          if ((*(a1 + 80) & 0x10800000) != 0)
          {
            v57 = v44;
            if ((v44 & 0x1000000) != 0)
            {
              v74 = _dispatch_autorelease_pool_push();
              _dispatch_source_handler_dispose(v35, v75);
              _dispatch_autorelease_pool_pop(v74);
            }

            else
            {
              _dispatch_source_handler_dispose(v35, a2);
            }

            v35 = v56;
            v28 = v165;
            v44 = v57;
          }

          else
          {
            if ((*v35 & 0x40) != 0)
            {
              *(v35 + 40) = *(a1 + 32);
            }

            v72 = v35;
            v73 = v44;
            _dispatch_continuation_pop(v72, 0, v44, v165);
            v44 = v73;
            v28 = v165;
            v35 = v56;
          }
        }

        if ((*(v29 + 16) & 2) != 0)
        {
          v76 = v44;
          _dispatch_source_refs_unregister(a1, 5);
          v44 = v76;
          v28 = v165;
        }

        v77 = *(a1 + 80);
        v78 = v77 & 0x10800000;
        if ((v77 & 0x10800000) != 0)
        {
          v79 = 0;
          goto LABEL_143;
        }

        if (!*(v29 + 72))
        {
          v79 = 0;
          goto LABEL_198;
        }

        v162 = v35;
        v35 = *(a1 + 24);
        if (v28 != v35)
        {
          goto LABEL_175;
        }

        v82 = v44;
        v83 = *(a1 + 88);
        v84 = *(v83 + 40);
        __swp(v3, (v83 + 72));
        if ((*(v83 + 29) & 2) != 0 && (*(v83 + 30) & 0x40) != 0)
        {
          v28 = v165;
        }

        v85 = *(*v83 + 9);
        if (v85 == 3)
        {
          v86 = ~v3;
        }

        else if (v85 == 5)
        {
          v86 = v3 >> 1;
          if (v3)
          {
            v87 = *(a1 + 88);
            v89 = *(v87 + 80);
            v88 = (v87 + 80);
            if (v89 <= 0x7FFFFFFFFFFFFFFELL)
            {
              v90 = *(*(a1 + 88) + 24) / 3u;
              v157 = v88;
              v160 = v3;
              v155 = *(a1 + 88);
              if (v90 == 2)
              {
                v91 = clock_gettime_nsec_np(_CLOCK_REALTIME);
              }

              else
              {
                v91 = v90 == 1 ? mach_continuous_time() : mach_absolute_time();
              }

              v3 = v160;
              v28 = v165;
              if (v91 >= *v157)
              {
                v121 = v155[12];
                v122 = (v91 - *v157) / v121;
                if ((v122 + 1 + v86) >= 0)
                {
                  v123 = v122 + 1;
                }

                else
                {
                  v123 = v86 ^ 0x7FFFFFFFFFFFFFFFLL;
                }

                if (v121 > 0x7FFFFFFFFFFFFFFELL)
                {
                  *v157 = -1;
                  v157[1] = -1;
                }

                else
                {
                  v124 = v123 * v121;
                  v125 = v124 + *v157;
                  v126 = v155[11] + v124;
                  v155[10] = v125;
                  v155[11] = v126;
                }

                v86 += v123;
              }
            }
          }
        }

        else
        {
          v86 = v3;
          if (!v3)
          {
            if (*(v83 + 28) == 233)
            {
              goto LABEL_326;
            }

            *(v83 + 64) = 0;
            if (v84)
            {
              goto LABEL_274;
            }

            goto LABEL_308;
          }
        }

        *(v83 + 64) = v86;
        if (v84)
        {
          if (v3)
          {
            v112 = v3;
            if (*(v83 + 28) == 242)
            {
              _dispatch_continuation_get_function_symbol(v84, a2);
              v28 = v165;
              if (MEMORY[0xFFFFFC100])
              {
                kdebug_trace();
                v28 = v165;
              }
            }

            _dispatch_continuation_pop(v84, 0, v82, v28);
            if (*(v83 + 28) == 242 && MEMORY[0xFFFFFC100])
            {
              v113 = kdebug_trace();
            }

            v28 = v165;
            v44 = v82;
            if ((*(v83 + 29) & 2) != 0)
            {
              if ((v112 & 1) != 0 && *(v83 + 104))
              {
                _dispatch_timer_unote_configure(*(a1 + 88));
                v44 = v82;
                v28 = v165;
              }

              if ((*(v83 + 30) & 0x40) != 0)
              {
                if (MEMORY[0xFFFFFC100])
                {
                  v113 = kdebug_trace();
                  if ((v82 & 0x1000000) == 0)
                  {
                    goto LABEL_261;
                  }
                }

                else if ((v44 & 0x1000000) == 0)
                {
LABEL_261:
                  v114 = 0;
LABEL_320:
                  __swp(v113, (v83 + 40));
                  if (v113)
                  {
                    _dispatch_source_handler_dispose(v113, a2);
                  }

                  if (v114)
                  {
                    _dispatch_autorelease_pool_pop(v114);
                  }

                  dispatch_release(a1);
                  goto LABEL_325;
                }

                v113 = _dispatch_autorelease_pool_push();
                v114 = v113;
                goto LABEL_320;
              }
            }

LABEL_326:
            v77 = *(a1 + 80);
            if ((v77 & 0x90000000) != 0)
            {
              v79 = 0;
              v35 = v162;
            }

            else
            {
              v35 = v162;
              if (*(v28 + 24))
              {
                v79 = 1;
              }

              else
              {
                v79 = *(v28 + 84) >= 0;
              }
            }

            *(a1 + 116) |= 2u;
            v78 = v77 & 0x10800000;
            if ((v77 & 0x10800000) == 0)
            {
LABEL_152:
              if (v78 && (v77 & 0x80000000) != 0)
              {
                if (v28 != *(a1 + 24) && (*(v29 + 40) || *(v29 + 48) || *(v29 + 56)))
                {
                  v79 = 0;
                  v35 = *(a1 + 24);
                }

                else
                {
                  _dispatch_source_cancel_callout(a1, v28, v44);
                  v28 = v165;
                  v79 = 0;
                  v77 = *(a1 + 80);
                }
              }

LABEL_198:
              if ((v77 & 0x10800000) != 0)
              {
                goto LABEL_175;
              }

              if ((*(v29 + 29) & 2) != 0)
              {
                if (!*(v29 + 104))
                {
                  v105 = *(v29 + 16);
                  if (!v105 || (v105 & 3) != 0 || *(v29 + 80) > 0x7FFFFFFFFFFFFFFEuLL)
                  {
                    goto LABEL_175;
                  }
                }
              }

              else
              {
                v101 = *(v29 + 16);
                if (!v101 || (v101 & 3) != 0)
                {
                  goto LABEL_175;
                }
              }

              v102 = v35;
              v35 = v45;
              if (v28 != v45)
              {
                goto LABEL_175;
              }

              if (!(*(a1 + 56) >> 55))
              {
                v35 = v102;
                if ((*(v29 + 29) & 1) == 0 || *(v29 + 16) < 0xFFFFFFFFFFFFFFFCLL)
                {
                  _dispatch_unote_resume(v29);
                  if (!v79)
                  {
                    if (v168[5])
                    {
                      v108 = v168[29];
                      if (v108)
                      {
                        v109 = *(v108 + 24);
                        if (v109 != -4 && v109 == (*(v29 + 16) & 0xFFFFFFFFFFFFFFFCLL))
                        {
                          _dispatch_event_loop_drain(1);
                        }
                      }
                    }
                  }

                  goto LABEL_175;
                }

                v103 = *(a1 + 116);
                if ((v103 & 2) != 0)
                {
                  *(a1 + 116) = v103 & 0xFFFD;
                  _dispatch_unote_resume(v29);
                }

                if (!v79)
                {
                  goto LABEL_175;
                }
              }

              goto LABEL_211;
            }

LABEL_143:
            if ((v77 & 0x80000000) == 0)
            {
              if ((*(v29 + 29) & 2) == 0 || (*(v29 + 16)) && v28 != v45)
              {
                goto LABEL_66;
              }

              v80 = v44;
              if (v77 >> 30)
              {
                v81 = 1;
              }

              else
              {
                v81 = 3;
              }

              _dispatch_source_refs_unregister(a1, v81);
              v77 = *(a1 + 80);
              if ((v77 & 0x80000000) == 0)
              {
                if (!v35)
                {
                  v35 = -1;
                }

                goto LABEL_175;
              }

              v78 = v77 & 0x10800000;
              v28 = v165;
              v44 = v80;
            }

            goto LABEL_152;
          }

LABEL_274:
          _dispatch_bug(591, 0);
LABEL_325:
          v28 = v165;
          v44 = v82;
          goto LABEL_326;
        }

LABEL_308:
        v44 = v82;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
          v44 = v82;
          v28 = v165;
        }

        goto LABEL_326;
      }

      resort_autorelease_pool_push = _dispatch_last_resort_autorelease_pool_push(v5);
      v24 = *(v18 + 160);
      v25 = *(a1 + 88);
      if ((v20 & 0x40000) == 0)
      {
        v26 = *(v18 + 232);
        v27 = v26 ? *(v26 + 24) : -4;
        v32 = *(v25 + 16) & 0xFFFFFFFFFFFFFFFCLL;
        v33 = v32 == -4 || v32 == 0;
        if (!v33 && v27 != v32)
        {
          _dispatch_source_handle_wlh_change(a1);
        }
      }

      v161 = (v18 + 160);
      if (*(a1 + 48))
      {
        resort_autorelease_pool_push = _dispatch_lane_serial_drain(a1, v5, v20 | 0x4000000, &v171);
        v35 = resort_autorelease_pool_push;
        v36 = v20 & 0xFAFFFFFF;
      }

      else
      {
        v35 = 0;
        v36 = v20;
      }

      v166 = v25;
      v37 = *(v25 + 29);
      v38 = &_dispatch_mgr_q;
      if (v37)
      {
        v38 = *(a1 + 24);
      }

      v39 = v166;
      if ((*(a1 + 116) & 1) == 0)
      {
        if (v24 != v38)
        {
          goto LABEL_49;
        }

        if ((v36 & 0x10000) != 0)
        {
          v47 = *(v18 + 200);
        }

        else
        {
          v47 = 0x2000000;
        }

        v48 = *(v18 + 232);
        if (v48)
        {
          v49 = *(v48 + 24);
        }

        else
        {
          v49 = -4;
        }

        _dispatch_source_install(a1, v49, v47);
      }

      if (*(a1 + 56) >> 55)
      {
        goto LABEL_196;
      }

      if ((*(v166 + 29) & 2) != 0 && *(v166 + 104) && (*(a1 + 80) & 0x10800000) == 0)
      {
        if (v24 == v38)
        {
          _dispatch_timer_unote_configure(*(a1 + 88));
          goto LABEL_81;
        }

        goto LABEL_49;
      }

LABEL_81:
      if (!*(v166 + 56))
      {
        goto LABEL_104;
      }

      v54 = v24;
      v55 = v35;
      v35 = *(a1 + 24);
      if (v54 == v35)
      {
        __swp(resort_autorelease_pool_push, (*(a1 + 88) + 56));
        if ((*(a1 + 80) & 0x10800000) != 0)
        {
          _dispatch_source_handler_dispose(resort_autorelease_pool_push, v22);
          v35 = v55;
        }

        else
        {
          v35 = v55;
          if ((*resort_autorelease_pool_push & 0x40) != 0)
          {
            resort_autorelease_pool_push[5] = *(a1 + 32);
          }

          _dispatch_continuation_pop(resort_autorelease_pool_push, 0, v36, v54);
        }

        v24 = v54;
        v39 = v166;
LABEL_104:
        if ((*(v39 + 16) & 2) != 0)
        {
          _dispatch_source_refs_unregister(a1, 5);
        }

        v59 = *(a1 + 80);
        v60 = v59 & 0x10800000;
        if ((v59 & 0x10800000) != 0)
        {
          v61 = 0;
          goto LABEL_108;
        }

        if (!*(v39 + 72))
        {
          v61 = 0;
          goto LABEL_173;
        }

        v156 = v35;
        v35 = *(a1 + 24);
        if (v24 == v35)
        {
          v63 = *(a1 + 88);
          v64 = *(v63 + 40);
          __swp(v23, (v63 + 72));
          v154 = v64;
          v65 = *(*v63 + 9);
          v153 = v23;
          if (v65 == 3)
          {
            v66 = ~v23;
            v39 = v166;
            goto LABEL_235;
          }

          v39 = v166;
          if (v65 == 5)
          {
            v66 = v23 >> 1;
            if (v23)
            {
              v67 = *(a1 + 88);
              v69 = *(v67 + 80);
              v68 = (v67 + 80);
              if (v69 <= 0x7FFFFFFFFFFFFFFELL)
              {
                v70 = *(*(a1 + 88) + 24) / 3u;
                v159 = v23 >> 1;
                v151 = *(a1 + 88);
                v152 = v68;
                if (v70 == 2)
                {
                  v71 = clock_gettime_nsec_np(_CLOCK_REALTIME);
                }

                else
                {
                  v71 = v70 == 1 ? mach_continuous_time() : mach_absolute_time();
                }

                v23 = v153;
                v64 = v154;
                v66 = v159;
                if (v71 >= *v152)
                {
                  v115 = v151[12];
                  v116 = (v71 - *v152) / v115;
                  if ((v116 + 1 + v159) >= 0)
                  {
                    v117 = v116 + 1;
                  }

                  else
                  {
                    v117 = v159 ^ 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if (v115 > 0x7FFFFFFFFFFFFFFELL)
                  {
                    *v152 = -1;
                    v152[1] = -1;
                  }

                  else
                  {
                    v118 = v117 * v115;
                    v119 = v118 + *v152;
                    v120 = v151[11] + v118;
                    v151[10] = v119;
                    v151[11] = v120;
                  }

                  v66 = v117 + v159;
                }
              }
            }

LABEL_235:
            *(v63 + 64) = v66;
            if (v64)
            {
              if (v23)
              {
                if (*(v63 + 28) == 242)
                {
                  _dispatch_continuation_get_function_symbol(v64, v22);
                  v64 = v154;
                  if (MEMORY[0xFFFFFC100])
                  {
                    kdebug_trace();
                    v64 = v154;
                  }
                }

                _dispatch_continuation_pop(v64, 0, v36, v24);
                if (*(v63 + 28) == 242 && MEMORY[0xFFFFFC100])
                {
                  v110 = kdebug_trace();
                }

                v111 = v154;
                if ((*(v63 + 29) & 2) != 0)
                {
                  if ((v153 & 1) != 0 && *(v63 + 104))
                  {
                    _dispatch_timer_unote_configure(*(a1 + 88));
                    v111 = v154;
                  }

                  if ((*(v63 + 30) & 0x40) != 0)
                  {
                    if (MEMORY[0xFFFFFC100])
                    {
                      v110 = kdebug_trace();
                    }

                    __swp(v110, (v63 + 40));
                    if (v110)
                    {
                      _dispatch_source_handler_dispose(v110, v111);
                    }

                    dispatch_release(a1);
                  }
                }

                goto LABEL_265;
              }

LABEL_264:
              _dispatch_bug(591, 0);
              goto LABEL_265;
            }

LABEL_306:
            if (MEMORY[0xFFFFFC100])
            {
              kdebug_trace();
            }
          }

          else
          {
            v66 = v23;
            if (v23)
            {
              goto LABEL_235;
            }

            if (*(v63 + 28) != 233)
            {
              *(v63 + 64) = 0;
              if (v64)
              {
                goto LABEL_264;
              }

              goto LABEL_306;
            }
          }

LABEL_265:
          v59 = *(a1 + 80);
          if ((v59 & 0x90000000) != 0)
          {
            v61 = 0;
            v35 = v156;
          }

          else
          {
            v35 = v156;
            if (*(v24 + 24))
            {
              v61 = 1;
            }

            else
            {
              v61 = *(v24 + 84) >= 0;
            }
          }

          *(a1 + 116) |= 2u;
          v60 = v59 & 0x10800000;
          if ((v59 & 0x10800000) == 0)
          {
LABEL_117:
            if (v60 && (v59 & 0x80000000) != 0)
            {
              if (v24 != *(a1 + 24) && (*(v39 + 40) || *(v39 + 48) || *(v39 + 56)))
              {
                v61 = 0;
                v35 = *(a1 + 24);
              }

              else
              {
                _dispatch_source_cancel_callout(a1, v24, v36);
                v61 = 0;
                v59 = *(a1 + 80);
              }
            }

LABEL_173:
            if ((v59 & 0x10800000) != 0)
            {
              goto LABEL_174;
            }

            if ((*(v39 + 29) & 2) != 0)
            {
              if (!*(v39 + 104))
              {
                v104 = *(v39 + 16);
                if (!v104 || (v104 & 3) != 0 || *(v39 + 80) > 0x7FFFFFFFFFFFFFFEuLL)
                {
                  goto LABEL_174;
                }
              }
            }

            else
            {
              v97 = *(v39 + 16);
              if (!v97 || (v97 & 3) != 0)
              {
                goto LABEL_174;
              }
            }

            v98 = v35;
            v35 = v38;
            if (v24 != v38)
            {
              goto LABEL_174;
            }

            if (!(*(a1 + 56) >> 55))
            {
              v99 = v61;
              v35 = v98;
              if ((*(v39 + 29) & 1) == 0 || *(v166 + 16) < 0xFFFFFFFFFFFFFFFCLL)
              {
                _dispatch_unote_resume(v166);
                if (!v99)
                {
                  if (*(v18 + 40))
                  {
                    v106 = *(v18 + 232);
                    if (v106)
                    {
                      v107 = *(v106 + 24);
                      if (v107 != -4 && v107 == (*(v166 + 16) & 0xFFFFFFFFFFFFFFFCLL))
                      {
                        _dispatch_event_loop_drain(1);
                      }
                    }
                  }
                }

                goto LABEL_174;
              }

              v100 = *(a1 + 116);
              if ((v100 & 2) != 0)
              {
                *(a1 + 116) = v100 & 0xFFFD;
                _dispatch_unote_resume(v166);
              }

              if (!v99)
              {
                goto LABEL_174;
              }
            }

LABEL_196:
            v35 = *(a1 + 24);
            goto LABEL_174;
          }

LABEL_108:
          if ((v59 & 0x80000000) != 0)
          {
            goto LABEL_117;
          }

          if ((*(v39 + 29) & 2) != 0 && (*(v39 + 16) & 1) == 0 || v24 == v38)
          {
            v158 = v61;
            if (v59 >> 30)
            {
              v62 = 1;
            }

            else
            {
              v62 = 3;
            }

            _dispatch_source_refs_unregister(a1, v62);
            v59 = *(a1 + 80);
            if ((v59 & 0x80000000) != 0)
            {
              v60 = v59 & 0x10800000;
              v61 = v158;
              goto LABEL_117;
            }

            if (!v35)
            {
              v35 = -1;
            }

            goto LABEL_174;
          }

LABEL_49:
          v35 = v38;
        }
      }

LABEL_174:
      v170 = *v161;
      *(v18 + 160) = a1;
      *(v18 + 168) = &v170;
      v46 = v5;
      _dispatch_last_resort_autorelease_pool_pop(v5);
      *v161 = v170;
LABEL_175:
      if ((v35 + 1) > 1)
      {
LABEL_337:
        if ((v20 & 0x40000) == 0)
        {
LABEL_338:
          v130 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          *(v130 + 200) = *(v130 + 200) & 0xF0000 | v167;
        }

        goto LABEL_339;
      }

      v92 = v171;
      v93 = *(a1 + 56);
      v19 = v168;
      while (2)
      {
        v94 = v93;
        v95 = v93 - v92;
        v96 = v95 & 0xFFFFFFF700000001;
        if (v94 >> 55)
        {
LABEL_181:
          v93 = v94;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v93, v96, memory_order_release, memory_order_relaxed);
          if (v93 == v94)
          {
            if ((~v94 & 0x1800000000) == 0)
            {
              v127 = HIDWORD(v94) & 7;
              v128 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v129 = *(v128 + 200);
              if ((HIWORD(v129) & 0xF) < v127)
              {
                *(v128 + 200) = v129 & 0xFFF0FFFF | (v127 << 16);
              }
            }

            v35 = 0;
            v171 = 0;
            goto LABEL_337;
          }

          continue;
        }

        break;
      }

      if ((v94 & 0x8000000000) == 0)
      {
        if (v35)
        {
          v96 = v95 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v96 = v95 & 0xFFFFFFF000000001;
        }

        goto LABEL_181;
      }

      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v35 = v168[20];
      v16 = v164;
      v5 = v46;
      v18 = v163;
      if (v4)
      {
        continue;
      }

      break;
    }

    v16 = v164;
    if ((*(*v35 + 16) & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

  if ((v20 & 0x40000) == 0)
  {
    goto LABEL_338;
  }

LABEL_339:
  v5 = v46;
LABEL_340:
  if ((v4 & 1) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v35)
    {
      goto LABEL_346;
    }

LABEL_343:
    _dispatch_queue_invoke_finish(a1, v5, v35, v171);
    if ((v4 & 0x100000) != 0)
    {
LABEL_347:
      v131 = *(*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216) + 48);
      if (v131)
      {
        if (*(v131 + 6))
        {
          _dispatch_event_loop_drain_timers(v131, 6u);
        }
      }
    }
  }

  else
  {
    if (v35)
    {
      goto LABEL_343;
    }

LABEL_346:
    _os_object_release_internal_n(a1, 2);
    if ((v4 & 0x100000) != 0)
    {
      goto LABEL_347;
    }
  }
}

void _dispatch_source_wakeup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 80);
  v5 = *(v3 + 29);
  v6 = &_dispatch_mgr_q;
  if (*(a1 + 116))
  {
    v7 = (v4 & 0x10800000) != 0 || (v5 & 2) == 0;
    if (v7 || !*(v3 + 104))
    {
      if (*(v3 + 56) | *(v3 + 16) & 2)
      {
        goto LABEL_14;
      }

      if ((v4 & 0x10800000) != 0)
      {
        if ((v4 & 0x80000000) != 0)
        {
          if (!*(v3 + 40) && !*(v3 + 48) && !*(v3 + 56))
          {
            goto LABEL_23;
          }
        }

        else if (*(v3 + 29) & 2) == 0 || (*(v3 + 16))
        {
          if ((a3 & 0x10) != 0 || !(v4 >> 30))
          {
            goto LABEL_7;
          }

          goto LABEL_23;
        }
      }

      else if (!*(v3 + 72))
      {
        if ((*(v3 + 29) & 2) != 0)
        {
          if (*(v3 + 104))
          {
            goto LABEL_7;
          }

          v12 = *(v3 + 16);
          if (v12)
          {
            if ((v12 & 3) == 0 && *(v3 + 80) < 0x7FFFFFFFFFFFFFFFuLL)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
          v10 = *(v3 + 16);
          if (v10)
          {
            v11 = (v10 & 3) == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11)
          {
            goto LABEL_7;
          }
        }

LABEL_23:
        if (!*(a1 + 48))
        {
          v6 = 0;
          goto LABEL_12;
        }
      }

LABEL_14:
      if (*(a1 + 24) != &_dispatch_mgr_q)
      {
        v6 = (&dword_0 + 1);
      }

      goto LABEL_12;
    }
  }

LABEL_7:
  v8 = v5 & 1;
  if (&_dispatch_mgr_q == (&dword_0 + 1) || v8 != 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  _dispatch_queue_wakeup(a1, a2, a3, v6);
}

void dispatch_source_cancel(dispatch_source_t source)
{
  if (*(source + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((source + 8), 2u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_source_cancel_cold_2(source);
}

void dispatch_source_cancel_and_wait(uint64_t object)
{
  v2 = *(object + 88);
  if (*(v2 + 48))
  {
    dispatch_source_cancel_and_wait_cold_1(object);
  }

  v4 = (object + 80);
  v3 = *(object + 80);
  do
  {
    v5 = v3;
    v6 = v3 | 0x10000000;
    if ((v3 & 0x20000000) != 0)
    {
      break;
    }

    if ((v3 & 0x80000000) == 0 && (v3 >> 30 || (*(v2 + 29) & 3) != 1))
    {
      v6 = v3 | 0x30000000;
    }

    atomic_compare_exchange_strong_explicit(v4, &v3, v6, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v5);
  if ((v5 & 0x800000) != 0)
  {
    dispatch_source_cancel_and_wait_cold_2(object);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return;
  }

  if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_12;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = *(StatusReg + 24);
  v13 = (StatusReg + 24);
  v15 = v14 & 0xFFFFFFFC;
  v16 = *(object + 56);
  while (1)
  {
    v17 = v16;
    if ((v16 & 0xFFE00000FFFFFFFCLL) != 0)
    {
      break;
    }

    v18 = v15 | v16 & 0x7700000001 | 0x60000000000000;
LABEL_22:
    atomic_compare_exchange_strong((object + 56), &v16, v18);
    if (v16 == v17)
    {
      goto LABEL_26;
    }
  }

  if ((v5 & 0x10000000) == 0)
  {
    v18 = v16 | 0x8000000000;
    goto LABEL_22;
  }

LABEL_26:
  if (v17 >> 55)
  {
    dispatch_source_cancel_and_wait_cold_6(v17, object);
  }

  else
  {
    if ((v17 & 0x600000FFFFFFFCLL) == 0)
    {
      dispatch_source_cancel_and_wait_cold_4((object + 80), object);
      goto LABEL_16;
    }

    dispatch_source_cancel_and_wait_cold_3(v13, v17, object);
LABEL_12:
    v8 = (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) >> 8) & 0x3FFF;
    v7 = v8 == 0;
    v9 = __clz(__rbit32(v8));
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9 + 1;
    }

    (*(*object + 64))(object, v10, 2);
    dispatch_activate(object);
LABEL_16:
    v11 = *v4;
    if ((v11 & 0x80000000) == 0)
    {
      dispatch_source_cancel_and_wait_cold_5(v11, (object + 80));
    }
  }
}

void _dispatch_source_refs_unregister(uint64_t a1, uint64_t a2)
{
  _dispatch_unote_unregister(*(a1 + 88), a2);
  if (v3)
  {

    _dispatch_source_refs_finalize_unregistration(a1);
  }

  else
  {
    v4 = *(a1 + 80);
    do
    {
      if (v4 >> 30)
      {
        break;
      }

      v5 = v4;
      atomic_compare_exchange_strong_explicit((a1 + 80), &v5, v4 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

void _dispatch_source_cancel_callout(uint64_t (*a1)(void), uint64_t a2, int a3)
{
  v6 = a1;
  v7 = *(a1 + 11);
  if ((a3 & 0x1000000) != 0)
  {
    a1 = _dispatch_autorelease_pool_push();
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  __swp(v3, (v7 + 48));
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  __swp(a1, (v7 + 40));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1, a2);
  }

  __swp(a1, (v7 + 56));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1, a2);
  }

  if (!v3)
  {
LABEL_11:
    if (!v8)
    {
      return;
    }

    goto LABEL_12;
  }

  if ((*(v6 + 20) & 0x10000000) == 0)
  {
    _dispatch_source_handler_dispose(v3, a2);
    goto LABEL_11;
  }

  if ((*v3 & 0x40) != 0)
  {
    v3[5] = *(v6 + 4);
  }

  __dmb(9u);
  _dispatch_continuation_pop(v3, 0, a3 & 0xFEFFFFFF, a2);
  if (v8)
  {
LABEL_12:

    _dispatch_autorelease_pool_pop(v8);
  }
}

uint64_t _dispatch_source_merge_evt(uint64_t a1, __int16 a2, uint64_t a3, unsigned int a4)
{
  v7 = ~*(a1 + 8);
  if ((a2 & 0x100) == 0 && !*(a1 + 16) && (*(a1 + 29) & 2) == 0)
  {
    _dispatch_source_refs_finalize_unregistration(~*(a1 + 8));
  }

  if ((a2 & 0x200) != 0)
  {
    _dispatch_source_merge_evt_cold_1(v7[20], a1);
  }

  v8 = *(*v7 + 64);
  v9 = __clz(__rbit32((a4 >> 8) & 0x3FFF));
  if (((a4 >> 8) & 0x3FFF) != 0)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  return v8(v7, v10, 51);
}

void dispatch_after_f(dispatch_time_t when, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (when == -1)
  {
    return;
  }

  v7 = when;
  v9 = _dispatch_timeout(when);
  if (v9)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 > 5)
    {
      v13 = 20;
    }

    else
    {
      v13 = qword_4A968[v12];
    }

    v15 = v9 / v13;
    if (v15 <= 0xF4240)
    {
      v15 = 1000000;
    }

    if (v15 >= 0xDF8475800)
    {
      v16 = 60000000000;
    }

    else
    {
      v16 = v15;
    }

    v17 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queue);
    v18 = *(v17 + 11);
    v19 = *(StatusReg + 176);
    if (v19)
    {
      *(StatusReg + 176) = v19[2];
      if (work)
      {
LABEL_19:
        v20 = work;
        goto LABEL_26;
      }
    }

    else
    {
      v19 = _dispatch_continuation_alloc_from_heap();
      if (work)
      {
        goto LABEL_19;
      }
    }

    v20 = 0;
LABEL_26:
    *v19 = 256;
    v19[4] = v20;
    v19[5] = context;
    v21 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v21 >= 0x10FF)
    {
      v22 = 4351;
    }

    else
    {
      v22 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v23 = *(StatusReg + 224);
    if (v23 && atomic_fetch_add_explicit((v23 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Voucher resurrection";
      __break(1u);
LABEL_40:
      *(v18 + 40) = v19;
      if ((v7 & 0x8000000000000000) != 0)
      {
        if ((v7 & 0x4000000000000000) != 0)
        {
          if (-v7 >> 62)
          {
            v7 = -1;
          }

          else
          {
            v7 = -v7;
          }

          v26 = 2;
LABEL_48:
          *(v18 + 30) |= 4 * v26;
          *(v18 + 80) = v7;
          *(v18 + 88) = v16 + v7;
          *(v18 + 96) = -1;

          dispatch_activate(v17);
          return;
        }

        v7 &= 0x3FFFFFFFFFFFFFFFuLL;
        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

      if (v7 >> 62)
      {
        v7 = -1;
      }

      if (_dispatch_host_time_nano2mach)
      {
        v16 = _dispatch_host_time_nano2mach(v16);
      }

      else
      {
        v27 = (3 * v16 * 0x624DD2F1A9FBE77uLL) >> 64;
        v16 = (v27 + ((3 * v16 - v27) >> 1)) >> 6;
      }

      goto LABEL_48;
    }

    v19[3] = v23;
    if (v23 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v21)
      {
        goto LABEL_34;
      }
    }

    else if (v21)
    {
LABEL_34:
      v24 = (*(queue + 21) >> 30) & 1;
      if ((*(queue + 21) & 0xFFF) == 0)
      {
        v24 = 1;
      }

      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_39;
    }

    v25 = 0;
LABEL_39:
    v19[1] = v25;
    v19[6] = v17;
    goto LABEL_40;
  }

  if (work)
  {
    v14 = work;
  }

  else
  {
    v14 = 0;
  }

  dispatch_channel_async_f(queue, context, v14);
}

void dispatch_after(dispatch_time_t when, dispatch_queue_t queue, dispatch_block_t block)
{
  if (when == -1)
  {
    return;
  }

  v5 = when;
  v6 = _dispatch_timeout(when);
  if (v6)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 0;
    }

    if (v9 > 5)
    {
      v10 = 20;
    }

    else
    {
      v10 = qword_4A968[v9];
    }

    v11 = v6 / v10;
    if (v11 <= 0xF4240)
    {
      v11 = 1000000;
    }

    if (v11 >= 0xDF8475800)
    {
      v12 = 60000000000;
    }

    else
    {
      v12 = v11;
    }

    v13 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queue);
    v14 = *(v13 + 11);
    v15 = *(StatusReg + 176);
    if (v15)
    {
      *(StatusReg + 176) = v15[2];
    }

    else
    {
      v15 = _dispatch_continuation_alloc_from_heap();
    }

    v16 = _dispatch_Block_copy(block);
    v17 = *(block + 2);
    if (v17)
    {
      if (v17 != _dispatch_block_special_invoke)
      {
        v18 = *(block + 2);
        goto LABEL_25;
      }
    }

    else if (_dispatch_block_special_invoke)
    {
      v18 = 0;
LABEL_25:
      *v15 = 272;
      v15[4] = v18;
      v15[5] = v16;
      v19 = *(StatusReg + 32) & 0xFFFFFFLL;
      if (v19 >= 0x10FF)
      {
        v20 = 4351;
      }

      else
      {
        v20 = *(StatusReg + 32) & 0xFFFFFFLL;
      }

      v21 = *(StatusReg + 224);
      if (v21 && atomic_fetch_add_explicit((v21 + 12), 1u, memory_order_relaxed) <= 0)
      {
        dispatch_group_notify_cold_1();
      }

      v15[3] = v21;
      if (v21 != -1 && MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
        if (v19)
        {
          goto LABEL_33;
        }
      }

      else if (v19)
      {
LABEL_33:
        v22 = (*(queue + 21) >> 30) & 1;
        if ((*(queue + 21) & 0xFFF) == 0)
        {
          v22 = 1;
        }

        if (v22)
        {
          v23 = v20;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_38;
      }

      v23 = 0;
LABEL_38:
      v15[1] = v23;
      goto LABEL_39;
    }

    *v15 = 272;
    v15[5] = v16;
    _dispatch_continuation_init_slow(v15, queue, 0);
LABEL_39:
    v15[6] = v13;
    *(v14 + 40) = v15;
    if ((v5 & 0x8000000000000000) != 0)
    {
      if ((v5 & 0x4000000000000000) != 0)
      {
        if (-v5 >> 62)
        {
          v5 = -1;
        }

        else
        {
          v5 = -v5;
        }

        v24 = 2;
LABEL_47:
        *(v14 + 30) |= 4 * v24;
        *(v14 + 80) = v5;
        *(v14 + 88) = v12 + v5;
        *(v14 + 96) = -1;

        dispatch_activate(v13);
        return;
      }

      v5 &= 0x3FFFFFFFFFFFFFFFuLL;
      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    if (v5 >> 62)
    {
      v5 = -1;
    }

    if (_dispatch_host_time_nano2mach)
    {
      v12 = _dispatch_host_time_nano2mach(v12);
    }

    else
    {
      v25 = (3 * v12 * 0x624DD2F1A9FBE77uLL) >> 64;
      v12 = (v25 + ((3 * v12 - v25) >> 1)) >> 6;
    }

    goto LABEL_47;
  }

  dispatch_channel_async(queue, block);
}

void _dispatch_source_handler_dispose(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x10) != 0)
  {
    _Block_release(*(a1 + 40));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    add_explicit = atomic_fetch_add_explicit((v3 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      if (add_explicit != 1)
      {
        qword_78298 = "API MISUSE: Voucher over-release";
        __break(1u);
        return;
      }

      _voucher_xref_dispose(v3);
    }

    *(a1 + 24) = -1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 176);
  if (v6)
  {
    v7 = *(v6 + 8) + 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7 > _dispatch_continuation_cache_limit)
  {

    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v6;
    *(a1 + 8) = v7;
    *(StatusReg + 176) = a1;
  }
}

void _dispatch_source_set_handler_slow(unint64_t a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 160);
  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (*(a1 + 32))
  {
    if ((*a1 & 0x40) != 0)
    {
      *(a1 + 40) = *(v3 + 32);
    }
  }

  else
  {
    v5 = *(StatusReg + 176);
    if (v5)
    {
      v6 = *(v5 + 8) + 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v5;
      *(a1 + 8) = v6;
      *(StatusReg + 176) = a1;
    }

    a1 = 0;
  }

  v7 = atomic_exchange_explicit((*(v3 + 88) + 8 * v4 + 40), a1, memory_order_release);
  if (v7)
  {

    _dispatch_source_handler_dispose(v7, a2);
  }
}

void _dispatch_source_handle_wlh_change(uint64_t result)
{
  v1 = atomic_fetch_or_explicit((result + 80), 0x8000000u, memory_order_relaxed);
  if ((v1 & 0x400000) != 0)
  {
    if ((v1 & 0x8000000) == 0)
    {
      _dispatch_bug_deprecated("Changing target queue hierarchy after source was activated");
    }
  }

  else
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after source was activated";
    __break(1u);
  }
}

unint64_t _dispatch_wait_for_enqueuer(unint64_t *a1, uint64_t a2)
{
  v2 = -10;
  while (1)
  {
    v3 = __ldxr(a1);
    if (v3)
    {
      break;
    }

    __wfe();
    if (__CFADD__(v2++, 1))
    {
      return __DISPATCH_WAIT_FOR_ENQUEUER__(a1, a2);
    }
  }

  __clrex();
  return v3;
}

uint64_t __DISPATCH_WAIT_FOR_ENQUEUER__(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = 1;
    do
    {
      _pthread_yield_to_enqueuer_4dispatch();
      result = *a1;
      ++v4;
    }

    while (!*a1);
  }

  return result;
}

void dispatch_mach_hooks_install_4libxpc(void *a1)
{
  if (*a1 <= 2uLL)
  {
    dispatch_mach_hooks_install_4libxpc_cold_2(a1);
  }

  v1 = &_dispatch_mach_xpc_hooks_default;
  atomic_compare_exchange_strong_explicit(&_dispatch_mach_xpc_hooks, &v1, a1, memory_order_relaxed, memory_order_relaxed);
  if (v1 != &_dispatch_mach_xpc_hooks_default)
  {
    dispatch_mach_hooks_install_4libxpc_cold_1();
  }
}

uint64_t dispatch_mach_create(const char *a1, uint64_t (***a2)(), void *aBlock)
{
  v5 = _dispatch_Block_copy(aBlock);
  if (v5[2])
  {
    v6 = v5[2];
  }

  else
  {
    v6 = 0;
  }

  return _dispatch_mach_create(a1, a2, v5, v6, 1u);
}

uint64_t _dispatch_mach_create(const char *a1, uint64_t (***a2)(), uint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = 4194305;
  if (a1)
  {
    v11 = _dispatch_strdup_if_mutable(a1);
    if (v11 == a1)
    {
      v9 = 4194305;
    }

    else
    {
      v9 = 6291457;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = _dispatch_object_alloc(_OS_dispatch_mach_vtable, 136);
  v13 = v12;
  *(v12 + 8) += 2;
  if (*(*v12 + 16) == 19)
  {
    ++*(v12 + 8);
  }

  *(v12 + 16) = -1985229329;
  *(v12 + 80) = v9;
  *(v12 + 56) = 0x19FFE0000000000;
  *(v12 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v12 + 72) = v11;
  *(v12 + 116) = (8 * a5) & 0x10 | (((a5 >> 2) & 1) << 7) | *(v12 + 116) & 0xFF6F;
  v14 = off_713F0(&_dispatch_mach_type_recv, 0, 0);
  v15 = *(v14 + 29);
  *(v14 + 8) = ~v13;
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  *(v14 + 40) = v16;
  *(v14 + 48) = a3;
  *(v14 + 29) = v15 & 0xBF | ((a5 & 1) << 6);
  if ((*(v13 + 116) & 0x80) != 0)
  {
    *(v14 + 32) |= 0x200u;
  }

  *(v13 + 88) = v14;
  v17 = off_71330(&_dispatch_mach_type_send, 0, 9);
  *(v17 + 8) = ~v13;
  *(v13 + 120) = v17;
  if (a2)
  {
    if ((*(a2 + 87) & 8) != 0)
    {
      _dispatch_mach_create_cold_1(a2);
    }

    if (*(a2 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 1), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }
  }

  else
  {
    a2 = &off_74680;
  }

  *(v13 + 24) = a2;
  return v13;
}

void _dispatch_mach_dispose(void *a1, _BYTE *a2)
{
  _dispatch_unote_dispose(a1[11], 0);
  a1[11] = 0;
  _dispatch_unote_dispose(a1[15], 0);
  a1[15] = 0;
  v4 = a1[16];
  if (v4)
  {
    _dispatch_unote_dispose(v4, 0);
    a1[16] = 0;
  }

  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t dispatch_mach_request_no_senders(uint64_t a1, uint64_t a2)
{
  *(a1 + 116) |= 0x20u;
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

uint64_t dispatch_mach_notify_no_senders(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 96;
  }

  else
  {
    v2 = 32;
  }

  *(a1 + 116) = v2 | *(a1 + 116) & 0xFF9F;
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

uint64_t dispatch_mach_set_flags(uint64_t a1, uint64_t a2)
{
  *(a1 + 116) = *(a1 + 116) & 0xFF7F | ((a2 & 1) << 7);
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

void dispatch_mach_connect(void *object, int a2, int a3, dispatch_object_s *a4)
{
  v6 = object[15];
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    *(object[11] + 24) = a2;
  }

  *(v6 + 92) = a3;
  if ((a3 - 1) <= 0xFFFFFFFD)
  {
    if (a4)
    {
      dispatch_retain(a4);
      *(a4 + 12) = 0x40000;
      v7 = a4 + 88;
      if (*(a4 + 18))
      {
        v7 = *v7;
      }

      *(v6 + 96) = *(v7 + 2);
    }

    *(v6 + 48) = a4;
  }

  if ((*(object + 58) & 0x20) != 0 && !*(v6 + 48))
  {
    _dispatch_mach_arm_no_senders(object, 0);
  }

  v8 = atomic_fetch_and_explicit((v6 + 88), 0x7FFFFFFFu, memory_order_relaxed);
  if ((v8 & 0x80000000) == 0)
  {
    dispatch_mach_connect_cold_1(v8);
  }

  dispatch_activate(object);
}

void _dispatch_mach_arm_no_senders(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = *(*(result + 88) + 24);
  previous = 0;
  if (v3 - 1 <= 0xFFFFFFFD)
  {
    v4 = mach_port_request_notification(mach_task_self_, v3, 70, (*(result + 116) & 0x40) == 0, v3, 0x15u, &previous);
    if (v4 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v4)
    {
      _dispatch_bug(261, v4);
    }

    if (previous)
    {
      _dispatch_mach_arm_no_senders_cold_2(v2, previous);
    }
  }
}

void _dispatch_mach_merge_msg(uint64_t a1, uint64_t a2, mach_msg_header_t *a3, unsigned int a4, unsigned int *a5, int a6, uint64_t a7)
{
  if ((a2 & 0x200) != 0)
  {
    _dispatch_mach_merge_msg_cold_1(a1);
  }

  v9 = a2;
  v10 = ~*(a1 + 8);
  if ((*(79 - *(a1 + 8)) & 0x10000000) == 0)
  {
    v11 = a7;
    if (a3->msgh_id != 70 || (*(115 - *(a1 + 8)) & 0x20) == 0)
    {
      v14 = _voucher_create_with_mach_msgv(&a3->msgh_bits, a5);
      if ((*&a6 & 0xFFFFFFuLL) >= 0x10FF)
      {
        v15 = 4351;
      }

      else
      {
        v15 = *&a6 & 0xFFFFFFLL;
      }

      v16 = dispatch_mach_msg_create(a3, a4, HIWORD(v9) & 1, 0);
      if ((v9 & 0x10000) == 0 && MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      *(v16 + 56) = v15;
      *(v16 + 64) = v14;
      *(v16 + 32) = 0;
      *(v16 + 48) = -117964798;
      if (v14 != -1 && MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      _dispatch_mach_handle_or_push_received_msg(v10, v16, v11);
      goto LABEL_15;
    }

    if (_dispatch_mach_msg_sender_is_kernel(a3, a2))
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = *(StatusReg + 176);
      if (v18)
      {
        *(StatusReg + 176) = v18[2];
      }

      else
      {
        v18 = _dispatch_continuation_alloc_from_heap();
      }

      *v18 = 260;
      v18[4] = _dispatch_mach_no_senders_invoke;
      v18[5] = v10;
      v18[3] = 0;
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_mach_merge_msg_cold_3(v18);
      }

      v18[1] = 0;
      (*(*v10 + 72))(v10, v18, 0);
    }

    else
    {
      _dispatch_mach_merge_msg_cold_2();
    }
  }

  mach_msg_destroy(a3);
  if ((v9 & 0x10000) != 0)
  {
    free(a3);
  }

LABEL_15:
  if ((*(a1 + 16) & 2) != 0 || (*(v10 + 60) & 0x1800000) == 0x800000)
  {
    _dispatch_mach_merge_msg_cold_4(v10);
  }

  else
  {

    _os_object_release_internal_n(v10, 2);
  }
}

uint64_t _dispatch_mach_no_senders_invoke(uint64_t result)
{
  if ((*(result + 80) & 0x10000000) == 0)
  {
    v1 = *(result + 88);
    if (*(v1 + 40))
    {
      v2 = *(v1 + 40);
    }

    else
    {
      v2 = 0;
    }

    result = _dispatch_client_callout4(*(v1 + 48), 13, 0, 0, v2);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  ++*(StatusReg + 208);
  return result;
}

void _dispatch_mach_handle_or_push_received_msg(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 48);
  v7 = 3;
  if (v6)
  {
    v7 = 4;
  }

  if ((v6 & 0xFFFFC000) == 0xF8F80000)
  {
    v8 = v6 & 0x3FFF;
  }

  else
  {
    v8 = v7;
  }

  if (v8 != 2 && (*(a1 + 116) & 0x10) != 0 && ((*(&dword_8 + _dispatch_mach_xpc_hooks))(*(*(a1 + 88) + 48)) & 1) != 0)
  {
    *(a2 + 16) = -1985229329;

    dispatch_release(a2);
  }

  else
  {
    v9 = (a3 >> 8) & 0x3FFF;
    if (v9)
    {
      v10 = __clz(__rbit32(v9)) + 1;
    }

    else
    {
      v10 = (*(a1 + 84) >> 8) & 0xF;
    }

    _dispatch_lane_push(a1, a2, v10);
  }
}

void _dispatch_mach_reply_merge_msg(uint64_t a1, unsigned int a2, mach_msg_header_t *a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v10 = ~*(a1 + 8);
  if ((*(79 - *(a1 + 8)) & 0x10000000) != 0)
  {
    mach_msg_destroy(a3);
    if ((a2 & 0x10000) != 0)
    {
      free(a3);
    }

    v26 = 117;
  }

  else
  {
    msgh_bits = a3->msgh_bits;
    v14 = HIWORD(a3->msgh_bits) & 0x1F;
    msgh_voucher_port = a3->msgh_voucher_port;
    if ((v14 == 17 || v14 == 19) && msgh_voucher_port != 0)
    {
      if (v14 == 17)
      {
        _voucher_dealloc_mach_voucher(msgh_voucher_port);
        msgh_bits = a3->msgh_bits;
      }

      a3->msgh_voucher_port = 0;
      a3->msgh_bits = msgh_bits & 0xFFE0FFFF;
    }

    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    *(a1 + 56) = 0;
    v20 = dispatch_mach_msg_create(a3, a4, HIWORD(a2) & 1, 0);
    if ((a2 & 0x10000) == 0 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    *(v20 + 56) = v18;
    *(v20 + 64) = v19;
    *(v20 + 32) = *(a1 + 48);
    *(v20 + 48) = -117964798;
    if (v19 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    if ((*(v10 + 116) & 0x10) != 0 && *(v20 + 32))
    {
      v21 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v10;
      }

      v23 = _dispatch_mach_msg_async_reply_wrap(v20, v10);
      v24 = __clz(__rbit32((*(v20 + 56) >> 8) & 0x3FFF));
      if (((*(v20 + 56) >> 8) & 0x3FFF) != 0)
      {
        v25 = v24 + 1;
      }

      else
      {
        v25 = 0;
      }

      (*(*v22 + 72))(v22, v23, v25);
    }

    else
    {
      _dispatch_mach_handle_or_push_received_msg(v10, v20, a7);
    }

    v26 = 101;
  }

  _dispatch_mach_reply_unregister(v10, a1, v26);
}

void _dispatch_mach_reply_unregister(char *a1, void *a2, char a3)
{
  if (*a2)
  {
    v6 = *a2 == -2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 15);
  if ((a3 & 0x20) != 0)
  {
    v9 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((v7 + 40), &v9, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      _dispatch_unfair_lock_lock_slow((v7 + 40), 0x10000);
    }

    v11 = a2[8];
    v12 = a2[9];
    if (v11)
    {
      *(v11 + 72) = v12;
    }

    *v12 = v11;
    a2[9] = 0;
    if (*(v7 + 56))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 88) != 0;
    }

    v13 = *(StatusReg + 24) & 0xFFFFFFFC;
    v14 = atomic_exchange_explicit((v7 + 40), 0, memory_order_release);
    if (v14 != v13)
    {
      _dispatch_unfair_lock_unlock_slow(v7 + 40, v14);
    }
  }

  else
  {
    v8 = 0;
  }

  if (!a2[2] || (_dispatch_unote_unregister(a2, a3 & 0xF), (v15 & 1) != 0))
  {
    if ((a3 & 0x10) != 0)
    {
      if ((*(a1 + 58) & 0x10) != 0 && a2[6])
      {
        v19 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
        if (v19)
        {
          v16 = v19;
        }

        else
        {
          v16 = a1;
        }
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v23 = 12;
      }

      else
      {
        v23 = 7;
      }

      reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(0, a2, v23);
      if (v6)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v16 = a2[7];
      if (v16)
      {
        add_explicit = atomic_fetch_add_explicit((v16 + 12), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 1)
        {
          if (add_explicit != 1)
          {
            qword_78298 = "API MISUSE: Voucher over-release";
            __break(1u);
            return;
          }

          _voucher_xref_dispose(v16);
        }

        v16 = 0;
        reply_disconnected = 0;
        a2[7] = 0;
        if (v6)
        {
LABEL_37:
          if (reply_disconnected)
          {
            if (!v16)
            {
              _dispatch_mach_handle_or_push_received_msg(a1, reply_disconnected, 0);
              if ((a3 & 0x40) == 0)
              {
                return;
              }

              goto LABEL_46;
            }

            v24 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, a1);
            v25 = __clz(__rbit32((*(reply_disconnected + 56) >> 8) & 0x3FFF));
            if (((*(reply_disconnected + 56) >> 8) & 0x3FFF) != 0)
            {
              v26 = v25 + 1;
            }

            else
            {
              v26 = 0;
            }

            (*(*v16 + 72))(v16, v24, v26);
          }

          if ((a3 & 0x40) == 0)
          {
            return;
          }

LABEL_46:
          if (v8)
          {
            v27 = *(*a1 + 64);

            v27(a1, 0, 3);
          }

          else
          {

            _os_object_release_internal_n(a1, 2);
          }

          return;
        }
      }

      else
      {
        reply_disconnected = 0;
        if (v6)
        {
          goto LABEL_37;
        }
      }
    }

    _dispatch_unote_dispose(a2, 1);
    goto LABEL_37;
  }

  if (a3 < 0)
  {
    v22 = *(v7 + 56);
    v21 = (v7 + 56);
    v20 = v22;
    a2[8] = v22;
    if (v22)
    {
      *(v20 + 72) = a2 + 8;
    }

    *v21 = a2;
    a2[9] = v21;
  }
}

void _dispatch_mach_send_barrier_drain_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = StatusReg[20];
  v7 = StatusReg[21];
  *(StatusReg + 10) = *v7;
  v8 = a1[3];
  a1[3] = -1;
  v9 = v8 == -1 || v8 == -1;
  if (!v9 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v10 = a1[1];
  if (v10 == -1)
  {
    v13 = 0;
  }

  else
  {
    v11 = StatusReg[25];
    if (((v11 >> 8) & 0xF) != 0)
    {
      v12 = 256 << ((BYTE1(v11) & 0xFu) - 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    if ((v10 & 0xFFFFFF) != 0)
    {
      if ((v10 & 0xFFFFFFuLL) >= (v12 & 0xFFFFFF00) && ((v11 & 0x44000000) != 0 || (a1[1] & 0x10000000) != 0))
      {
        v13 = v10 & 0xFFFFFF;
      }
    }

    else if (v11 >> 12)
    {
      v13 = (256 << ((v11 >> 12) - 1)) | 0xFF;
    }
  }

  v15 = v13 & 0xFFFFFFFF02FFFFFFLL;
  v16 = StatusReg[4];
  if ((v16 & 0x1000000) != 0)
  {
    if (v15)
    {
LABEL_40:
      _dispatch_set_priority_and_voucher_slow(v15, v8, 6);
      goto LABEL_26;
    }

    v15 = v16 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v15 == (v16 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_22;
  }

  if (v15)
  {
    goto LABEL_40;
  }

LABEL_22:
  if (v8 == -1)
  {
    goto LABEL_26;
  }

  if (StatusReg[28] != v8)
  {
    v15 = 0;
    goto LABEL_40;
  }

  if (v8 && atomic_fetch_add_explicit((v8 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
    return;
  }

LABEL_26:
  v17 = StatusReg[22];
  if (v17)
  {
    v18 = *(v17 + 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18 > _dispatch_continuation_cache_limit)
  {
    _dispatch_mach_send_invoke(v6, a3, 6);
    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    a1[2] = v17;
    *(a1 + 2) = v18;
    StatusReg[22] = a1;
    _dispatch_mach_send_invoke(v6, a3, 6);
  }

  StatusReg[20] = v6;
  StatusReg[21] = v7;
}

void _dispatch_mach_send_invoke(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(result + 120);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v9 = 0xFFFFFFFFLL;
  if ((a3 & 4) == 0)
  {
    v9 = 0x10FFFFFFFFLL;
  }

  v10 = (a3 & 2) << 35;
  if ((a3 & 2) != 0)
  {
    v11 = 0x10FFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(StatusReg + 200);
  v13 = (v12 >> 8) & 0xF;
  v14 = v12 >> 12;
  v15 = HIWORD(v12) & 0xF;
  if (v13 <= v14)
  {
    v13 = v14;
  }

  if (v13 > v15)
  {
    v15 = v13;
  }

LABEL_10:
  for (i = *(v6 + 64); ; i = v18)
  {
    if ((i & v11) != v10)
    {
      if ((v3 & 1) == 0)
      {
        return;
      }

      v18 = i;
      atomic_compare_exchange_strong_explicit((v6 + 64), &v18, i | 0x2000000000, memory_order_acquire, memory_order_acquire);
      if (v18 == i)
      {
        return;
      }

      continue;
    }

    v17 = HIDWORD(i) & 7;
    if (v15 < v17)
    {
      _pthread_workqueue_override_start_direct();
      v19 = *(StatusReg + 200);
      v15 = v17;
      if ((HIWORD(v19) & 0xF) < v17)
      {
        *(StatusReg + 200) = v19 & 0xFFF0FFFF | (v17 << 16);
        v15 = v17;
      }

      goto LABEL_10;
    }

    v18 = i;
    atomic_compare_exchange_strong_explicit((v6 + 64), &v18, i & 0xFFFFFFC7FFFFFFFFLL | v8, memory_order_acquire, memory_order_acquire);
    if (v18 == i)
    {
      break;
    }
  }

  _dispatch_mach_send_drain(result, v4, v3);
}

void _dispatch_mach_notification_merge_evt(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  if ((*(a1 + 32) & a3) != 0)
  {
    _dispatch_mach_send_invoke(~v3, 0x40000, 1);
  }

  _os_object_release_internal_n(~v3, 2);
}

uint64_t _dispatch_mach_send_msg(uint64_t a1, uint64_t object, unint64_t a3, uint64_t a4)
{
  v11 = *(a1 + 120);
  if (*(object + 16) == -1985229329)
  {
    v6 = a4;
    v5 = a3;
    v4 = a1;
    if ((a4 & 0x40000) != 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL;
      v13 = 4351;
      if (v12 < 0x10FF)
      {
        v13 = v12;
      }

      if ((a4 & 4) == 0)
      {
        v12 = v13;
      }
    }

    *(object + 56) = v12;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 224);
    if (!v7)
    {
      goto LABEL_12;
    }

    add_explicit = atomic_fetch_add_explicit((v7 + 12), 1u, memory_order_relaxed);
  }

  else
  {
    v24 = *(object + 16);
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Message already enqueued";
    qword_782C8 = v24;
    __break(1u);
  }

  if (add_explicit <= 0)
  {
    qword_78298 = "API MISUSE: Voucher resurrection";
    __break(1u);
LABEL_40:
    kdebug_trace();
LABEL_33:
    if (v5)
    {
      v22 = v5;
    }

    else
    {
      v22 = object;
    }

    _dispatch_mach_send_push_and_trydrain(v4, v22, v7, v6);
    if (v23)
    {
      goto LABEL_28;
    }

    return 0;
  }

LABEL_12:
  *(object + 64) = v7;
  *(object + 48) = v6 | (((*(StatusReg + 32) & 0x300) != 0) << 18);
  dispatch_retain(object);
  v14 = __clz(__rbit32((*(object + 56) >> 8) & 0x3FFF));
  if (((*(object + 56) >> 8) & 0x3FFF) != 0)
  {
    v7 = v14 + 1;
  }

  else
  {
    v7 = 0;
  }

  v15 = object + 88;
  if (*(object + 72))
  {
    v15 = *v15;
  }

  v16 = *v15;
  if ((*v15 & 0x1F00) != 0x1500 || (*(v15 + 12) - 1) >= 0xFFFFFFFE)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v15 + 12);
  }

  *(object + 52) = v18;
  v6 = 8 * (v6 & 1);
  if ((v16 & 0x1F) != 0x12 || v18 || *(v11 + 88) || (*(v4 + 80) & 0x10000000) != 0)
  {
    if (*(object + 64) == -1 || !MEMORY[0xFFFFFC100])
    {
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if ((_dispatch_mach_msg_send(v4, object, 0, 0, v6) & 2) == 0)
  {
    return 0;
  }

LABEL_28:
  v19 = *(object + 64);
  if (!v19)
  {
    goto LABEL_30;
  }

  v20 = atomic_fetch_add_explicit((v19 + 12), 0xFFFFFFFF, memory_order_relaxed);
  result = 0;
  if (v20 > 1)
  {
    goto LABEL_30;
  }

  if (v20 == 1)
  {
    _voucher_xref_dispose(v19);
LABEL_30:
    *(object + 64) = 0;
    *(object + 16) = -1985229329;
    dispatch_release(object);
    return 1;
  }

  qword_78298 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

uint64_t dispatch_mach_send_with_result(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    vars0 = v6;
    vars8 = v7;
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_782C8 = a4;
    __break(1u);
  }

  else
  {
    result = _dispatch_mach_send_msg(result, a2, 0, a3 & 0xFFFF0000 | 1);
    if (result)
    {
      v11 = *(a2 + 48);
      v12 = v11 & 0x3FFF;
      v13 = 3;
      if (v11)
      {
        v13 = 4;
      }

      if ((v11 & 0xFFFFC000) == 0xF8F80000)
      {
        v11 = 0;
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v11 = 0;
      v14 = 10;
    }

    *a5 = v14;
    *a6 = v11;
  }

  return result;
}

uint64_t _dispatch_mach_send_and_wait_for_reply(uint64_t a1, void *object, int a3, _BYTE *a4)
{
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = -2;
  *(&v57 + 1) = object[4];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  DWORD2(v59) = *(StatusReg + 24);
  v9 = *(object + 18);
  v10 = object + 11;
  v11 = object + 11;
  if (v9)
  {
    v11 = *v10;
  }

  v12 = v11[3];
  if (v12 - 1 > 0xFFFFFFFD || (*v11 & 0x1F00) != 0x1500)
  {
    v12 = *(StatusReg + 64);
    if (!v12)
    {
      special_reply_port = thread_get_special_reply_port();
      *(StatusReg + 64) = special_reply_port;
      if (special_reply_port + 1 < 2)
      {
        _dispatch_mach_send_and_wait_for_reply_cold_1();
      }

      v12 = special_reply_port;
      v9 = *(object + 18);
    }

    if (v9)
    {
      v10 = *v10;
    }

    *(v10 + 3) = v12;
    BYTE6(v56) = 1;
  }

  v47 = xmmword_4A9A0;
  v48 = 0;
  v49 = -1;
  v50 = 0;
  v51 = 0;
  v52 = object;
  v53 = &v54;
  *a4 = _dispatch_mach_send_msg(a1, object, &v47, a3 | 4u);
  if (BYTE6(v56) == 1)
  {
    if (v12 == *(StatusReg + 64))
    {
      *(StatusReg + 64) = 0;
    }

    v14 = *(*(a1 + 120) + 92);
  }

  else
  {
    v14 = 0;
  }

  if (v12 + 1 <= 1)
  {
    _dispatch_mach_send_and_wait_for_reply_cold_6(v12);
  }

  v46 = &v43;
  v44 = *(&v57 + 1);
  v15 = ~vm_page_mask;
  v16 = (vm_page_mask + 0x4000) & ~vm_page_mask;
  v17 = (&v43 - ((v16 + 15) & 0x1FFFFFFF0));
  bzero(v17, v16);
  for (i = (v15 & (v17 + vm_page_size)); i < v17 + v16; i += vm_page_size)
  {
    *i = 0;
  }

  LODWORD(v19) = 0;
  v20 = 0;
  if (v14 - 1 >= 0xFFFFFFFE)
  {
    v21 = 117440526;
  }

  else
  {
    v21 = 117456910;
  }

  if (v14 - 1 >= 0xFFFFFFFE)
  {
    v22 = 0;
  }

  else
  {
    v22 = v14;
  }

  v45 = a1;
  v23 = v21 & 0xFFFFFDFF | (((*(a1 + 116) >> 7) & 1) << 9);
  while (1)
  {
    v24 = mach_msg(v17, v23, 0, v16, v12, 0, v22);
    v25 = v24;
    if (v24 != 268451844)
    {
      break;
    }

    msgh_size = v17->msgh_size;
    if (msgh_size >= 0xFFFFFFBC)
    {
      _dispatch_mach_send_and_wait_for_reply_cold_4(msgh_size);
    }

    if ((v23 & 4) == 0)
    {
      _dispatch_log("BUG in libdispatch client: dispatch_mach_send_and_wait_for_reply: dropped message too large to fit in memory: id = 0x%x, size = %u", v17->msgh_id, msgh_size);
      goto LABEL_45;
    }

    v19 = msgh_size + 68;
    v27 = malloc_type_malloc();
    v20 = v27;
    v28 = v19;
    if (!v27)
    {
      _dispatch_mach_send_and_wait_for_reply_cold_2();
      v27 = v17;
      v28 = v16;
    }

    v23 = v23 & 0xFFFFFEFB | 0x100;
    v16 = v28;
    v17 = v27;
  }

  if ((v24 - 268451842) <= 7 && ((1 << (v24 - 2)) & 0x91) != 0)
  {
    if (BYTE6(v56) == 1)
    {
      _dispatch_destruct_reply_port();
    }

    goto LABEL_37;
  }

  if (v24)
  {
    _dispatch_mach_send_and_wait_for_reply_cold_5(v24);
  }

  LODWORD(v16) = v17->msgh_size + 68;
  if (v20 && v16 < v19)
  {
    v30 = malloc_type_realloc();
    if (v30)
    {
      v20 = v30;
      v31 = v30;
    }

    else
    {
      v31 = v17;
    }
  }

  else
  {
LABEL_45:
    v31 = v17;
  }

  v32 = 0;
  msgh_local_port = v31->msgh_local_port;
  v34 = (*(v45 + 120) + 40);
  atomic_compare_exchange_strong_explicit(v34, &v32, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v32)
  {
    _dispatch_unfair_lock_lock_slow(v34, 0x10000);
  }

  v35 = v59;
  if (v59)
  {
    v36 = *(&v58 + 1);
    if (*(&v58 + 1))
    {
      *(*(&v58 + 1) + 72) = v59;
    }

    *v35 = v36;
    *&v59 = 0;
  }

  v37 = *(StatusReg + 24) & 0xFFFFFFFC;
  v38 = atomic_exchange_explicit(v34, 0, memory_order_release);
  if (v38 != v37)
  {
    _dispatch_unfair_lock_unlock_slow(v34, v38);
  }

  if (BYTE6(v56) == 1)
  {
    if (v56 != msgh_local_port)
    {
      if ((msgh_local_port - 1) < 0xFFFFFFFE || v35)
      {
        _dispatch_mach_send_and_wait_for_reply_cold_3(msgh_local_port);
      }

      goto LABEL_64;
    }

    if (!v35 || *(StatusReg + 64))
    {
LABEL_64:
      _dispatch_destruct_reply_port();
      goto LABEL_65;
    }

    *(StatusReg + 64) = msgh_local_port;
  }

  else if ((msgh_local_port - 1) <= 0xFFFFFFFD && v35)
  {
    v39 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 112);
    *(v39 + 16) = -1985229329;
    *(v39 + 24) = &off_74600;
    *(v39 + 72) = 0;
    *(v39 + 80) = 24;
    *(v39 + 100) = msgh_local_port;
    v41 = *(&v57 + 1);
    v40 = v58;
    *&v58 = 0;
    *(v39 + 56) = v57;
    *(v39 + 64) = v40;
    *(v39 + 32) = v41;
    *(v39 + 48) = -117964791;
    _dispatch_mach_handle_or_push_received_msg(v45, v39, 0);
  }

LABEL_65:
  v31->msgh_local_port = 0;
  if (*(v45 + 80) & 0x10000000 | v25)
  {
    if (!v25)
    {
      mach_msg_destroy(v31);
    }

LABEL_37:
    free(v20);
    return 0;
  }

  v29 = dispatch_mach_msg_create(v31, v16, v20 != 0, 0);
  if ((!v20 || v31 != v17) && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  *(v29 + 32) = v44;
  return v29;
}

uint64_t dispatch_mach_send_with_result_and_wait_for_reply(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    vars0 = v6;
    vars8 = v7;
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_782C8 = a4;
    __break(1u);
  }

  else
  {
    v15 = 0;
    result = _dispatch_mach_send_and_wait_for_reply(result, a2, a3 & 0xFFFF0000 | 1, &v15);
    if (v15 == 1)
    {
      v11 = *(a2 + 48);
      v12 = v11 & 0x3FFF;
      v13 = 3;
      if (v11)
      {
        v13 = 4;
      }

      if ((v11 & 0xFFFFC000) == 0xF8F80000)
      {
        v11 = 0;
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v11 = 0;
      v14 = 10;
    }

    *a5 = v14;
    *a6 = v11;
  }

  return result;
}

uint64_t dispatch_mach_send_with_result_and_async_reply_4libxpc(uint64_t result, _DWORD *object, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_782C8 = a4;
    __break(1u);
    goto LABEL_16;
  }

  if ((*(result + 116) & 0x10) == 0)
  {
LABEL_16:
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_send_with_result_and_wait_for_reply is XPC only";
    __break(1u);
LABEL_17:
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Reply port needed for async send with reply";
    __break(1u);
    return result;
  }

  v9 = object + 22;
  if (object[18])
  {
    v9 = *v9;
  }

  if ((v9[3] - 1) > 0xFFFFFFFD || (*v9 & 0x1F00) != 0x1500)
  {
    goto LABEL_17;
  }

  result = _dispatch_mach_send_msg(result, object, 0, a3 & 0xFFFF0000 | 1);
  if (result)
  {
    v10 = object[12];
    v11 = v10 & 0x3FFF;
    v12 = 3;
    if (v10)
    {
      v12 = 4;
    }

    if ((v10 & 0xFFFFC000) == 0xF8F80000)
    {
      v10 = 0;
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v10 = 0;
    v13 = 10;
  }

  *a5 = v13;
  *a6 = v10;
  return result;
}

void dispatch_mach_reconnect(uint64_t a1, unsigned int a2, dispatch_object_t object)
{
  v3 = object;
  v6 = *(a1 + 120);
  atomic_fetch_add_explicit((v6 + 88), 1u, memory_order_relaxed);
  if (a2 - 1 > 0xFFFFFFFD || object == 0)
  {
    v8 = 0;
    if (object == -1)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    dispatch_retain(object);
    *(v3 + 48) = 0x40000;
    v9 = v3 + 88;
    if (*(v3 + 72))
    {
      v9 = *v9;
    }

    v8 = *(v9 + 8);
  }

  *(v6 + 96) = v8;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 176);
  if (v11)
  {
    *(StatusReg + 176) = *(v11 + 16);
  }

  else
  {
    v11 = _dispatch_continuation_alloc_from_heap();
  }

  *(v11 + 40) = v11;
  *(v11 + 48) = v3;
  *(v11 + 56) = a2;
  *(v11 + 24) = -1;
  *(v11 + 32) = _dispatch_mach_reconnect_invoke;
  *v11 = xmmword_4A9B0;

  _dispatch_mach_send_push(a1, v11, 0);
}

BOOL _dispatch_mach_reconnect_invoke(unint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  if (*(v4 + 16))
  {
    _dispatch_unote_unregister(*(a1 + 120), 5);
    *(*(a1 + 120) + 24) = 0;
  }

  v5 = *(v4 + 92);
  if ((v5 + 1) >= 2)
  {
    v6 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 112);
    *(v6 + 16) = -1985229329;
    *(v6 + 24) = &off_74600;
    *(v6 + 72) = 0;
    *(v6 + 80) = 24;
    *(v6 + 96) = v5;
    *(v6 + 48) = -117964793;
    _dispatch_mach_handle_or_push_received_msg(a1, v6, 0);
    *(v4 + 92) = 0;
  }

  v7 = *(v4 + 48);
  if (v7)
  {
    _dispatch_mach_msg_not_sent(a1, v7, 0);
    *(v4 + 48) = 0;
  }

  v8 = 0;
  *(a1 + 118) &= ~1u;
  v24 = 0;
  if ((*(a1 + 80) & 0x40000000) != 0)
  {
    v9 = -112;
  }

  else
  {
    v9 = -110;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v4 + 40), &v8, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    _dispatch_unfair_lock_lock_slow((v4 + 40), 0x10000);
  }

  v11 = v24;
  v24 = *(v4 + 56);
  v12 = v24;
  *(v4 + 56) = v11;
  if (v12)
  {
    v12[9] = &v24;
    do
    {
      v13 = v12[8];
      v12[9] = 0;
      _dispatch_mach_reply_unregister(a1, v12, v9);
      v12 = v13;
    }

    while (v13);
    v11 = *(v4 + 56);
  }

  v14 = *(StatusReg + 24) & 0xFFFFFFFC;
  v15 = atomic_exchange_explicit((v4 + 40), 0, memory_order_release);
  if (v15 != v14)
  {
    _dispatch_unfair_lock_unlock_slow(v4 + 40, v15);
    if (v11)
    {
      return v11 == 0;
    }

LABEL_18:
    v16 = *(StatusReg + 176);
    if (v16)
    {
      v17 = *(v16 + 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = *(a2 + 56);
    v19 = *(a2 + 48);
    if (v17 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a2);
    }

    else
    {
      *(a2 + 16) = v16;
      *(a2 + 8) = v17;
      *(StatusReg + 176) = a2;
    }

    v20 = *(a1 + 118);
    if (v19 == -1)
    {
      v19 = 0;
      v21 = v20 | 2;
      *(a1 + 118) = v21;
      if ((v21 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v20 & 2) == 0)
    {
LABEL_25:
      *(v4 + 92) = v18;
      *(v4 + 48) = v19;
LABEL_31:
      atomic_fetch_add_explicit((v4 + 88), 0xFFFFFFFF, memory_order_relaxed);
      return v11 == 0;
    }

    if ((v18 - 1) <= 0xFFFFFFFD)
    {
      v22 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 112);
      *(v22 + 16) = -1985229329;
      *(v22 + 24) = &off_74600;
      *(v22 + 72) = 0;
      *(v22 + 80) = 24;
      *(v22 + 96) = v18;
      *(v22 + 48) = -117964793;
      _dispatch_mach_handle_or_push_received_msg(a1, v22, 0);
    }

    if (v19)
    {
      _dispatch_mach_msg_not_sent(a1, v19, 0);
    }

    goto LABEL_31;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  return v11 == 0;
}

void _dispatch_mach_send_push(char *a1, void **a2, uint64_t a3)
{
  v4 = *(a1 + 15);
  v5 = 0xA000000000;
  if (*a2 >= 0x1000 && *a2 == &unk_70CC8)
  {
    v5 = 0xB000000000;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = v4 + 72;
  v7 = atomic_exchange_explicit((v4 + 72), a2, memory_order_release);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  atomic_fetch_add_explicit((a1 + 8), v8, memory_order_relaxed);
  v9 = a3 << 32;
  if (v7)
  {
    *(v7 + 16) = a2;
    *(StatusReg + 976) = 0;
    v10 = *(v4 + 64);
    while (1)
    {
      v11 = v10;
      v12 = v9 | v10 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      if ((v10 & 0x700000000) >= v9)
      {
        v12 = v10;
      }

      if (v10 == v12)
      {
        break;
      }

      v5 = 0;
      atomic_compare_exchange_strong_explicit((v4 + 64), &v10, v12, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v11)
      {
        goto LABEL_13;
      }
    }

    v5 = 0;
    v12 = v10;
  }

  else
  {
    *(v4 + 80) = a2;
    *(StatusReg + 976) = 0;
    v14 = *(v4 + 64);
    do
    {
      v11 = v14;
      if ((v14 & 0x700000000) >= v9)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9 | v14 & 0xFFFFFF50FFFFFFFFLL | 0x800000000;
      }

      v12 = v15 | v5;
      atomic_compare_exchange_strong_explicit((v4 + 64), &v14, v12, memory_order_release, memory_order_relaxed);
    }

    while (v14 != v11);
    if ((v11 & 0x8000000000) != 0 && *(a1 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) <= 2)
    {
      qword_78298 = "API MISUSE: Over-release of an object";
      __break(1u);
      return;
    }
  }

LABEL_13:
  if (v11 >= 4)
  {
    if ((v11 & 0x700000000) < (v12 & 0x700000000))
    {
      _pthread_workqueue_override_start_direct_check_owner();
    }
  }

  else if ((v5 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(a1, BYTE4(v12) & 7);
  }

  else
  {
    if (!v7 || *(v4 + 88) || (*(a1 + 20) & 0x10000000) != 0)
    {
      v13 = *(*a1 + 64);
      goto LABEL_27;
    }

    if ((v11 & 0x1000000000) != 0)
    {
      v13 = *(*a1 + 64);
LABEL_27:

      v13();
      return;
    }
  }

  _os_object_release_internal_n(a1, 2);
}

uint64_t dispatch_mach_get_checkin_port(uint64_t a1)
{
  if ((*(a1 + 80) & 0x10000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(a1 + 120) + 96);
  }
}

BOOL dispatch_mach_can_handoff_4libxpc()
{
  v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  while (1)
  {
    v0 = *v0;
    if (!v0)
    {
      break;
    }

    if (*(v0 + 8) == "mach_msg")
    {
      v1 = *(v0 + 16);
      if (v1)
      {
        return *(v1 + 56) == 0;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t dispatch_mach_handoff_reply_f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _dispatch_mach_handoff_context(a2);
  v8 = *(v7 + 16);
  result = _dispatch_mach_handoff_set_wlh(v8, a1);
  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  *(v7 + 24) = a1;
  *v8 = 260;
  v8[4] = a4;
  v8[5] = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v11 >= 0x10FF)
  {
    v12 = 4351;
  }

  else
  {
    v12 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v13 = *(StatusReg + 224);
  if (v13)
  {
    result = 0;
    if (atomic_fetch_add_explicit((v13 + 12), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_group_notify_cold_1();
    }
  }

  v8[3] = v13;
  if (v13 != -1 && MEMORY[0xFFFFFC100])
  {
    result = kdebug_trace();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else if (!v11)
  {
    goto LABEL_13;
  }

  v14 = *(a1 + 84);
  if ((v14 & 0x40000000) != 0 || (v14 & 0xFFF) == 0)
  {
    v15 = __clz(__rbit32(v12 >> 8)) + 1;
    goto LABEL_15;
  }

LABEL_13:
  v15 = 0;
  v12 = 0;
LABEL_15:
  v8[1] = v12;
  *(v7 + 32) = v15;
  *v8 = &unk_70E18;
  return result;
}

unint64_t _dispatch_mach_handoff_context(unsigned int a1)
{
  v2 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  while (*(v2 + 8) != "mach_msg");
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_10:
    _dispatch_mach_handoff_context_cold_2();
  }

  if (*(*v3 + 16) == 515)
  {
    v3 = _dispatch_calloc_typed(1, 80, 0x10E204016CB3A18);
    *(v2 + 16) = v3;
    *(v3 + 72) = 1;
  }

  else
  {
    atomic_fetch_add_explicit((v3 + 72), 1u, memory_order_relaxed);
  }

  if (*(v3 + 56))
  {
    _dispatch_mach_handoff_context_cold_1();
  }

  *(v3 + 56) = a1;
  return v2;
}

void _dispatch_mach_ipc_handoff_async(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  (*(**(a1 + 24) + 72))(*(a1 + 24), v2, *(a1 + 32));
  if (v4)
  {
    _dispatch_sync_ipc_handoff_begin(v4, v3, v2 + 64);
    atomic_compare_exchange_strong_explicit((v2 + 64), &v5, ~v4, memory_order_relaxed, memory_order_relaxed);
  }

  if (!atomic_fetch_add_explicit((v2 + 72), 0xFFFFFFFF, memory_order_relaxed))
  {
    free(v2);
  }

  v6 = *(a1 + 24);

  _os_object_release_internal(v6);
}

void _dispatch_mach_msg_invoke(uint64_t a1, uint64_t a2, int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = StatusReg[20];
  v7 = StatusReg[21];
  *(StatusReg + 10) = *v7;
  v8 = *(a1 + 48);
  v9 = v8 & 0xFFFFC000;
  v10 = 3;
  if (v8)
  {
    v10 = 4;
  }

  if (v9 == -117964800)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v9 == -117964800)
  {
    v12 = v8 & 0x3FFF;
  }

  else
  {
    v12 = v10;
  }

  v26 = 0;
  v27 = 0;
  v25[1] = "mach_msg";
  v25[2] = a1;
  v25[0] = StatusReg[23];
  StatusReg[23] = v25;
  while (1)
  {
    v13 = *(v6 + 88);
    *(a1 + 16) = -1985229329;
    v14 = *(a1 + 64);
    if (v14 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      v14 = *(a1 + 64);
    }

    v15 = *(a1 + 56);
    if (v15 == -1)
    {
      v18 = 0;
    }

    else
    {
      v16 = StatusReg[25];
      v17 = ((v16 >> 8) & 0xF) != 0 ? 256 << ((BYTE1(v16) & 0xFu) - 1) : 0;
      v18 = v15 & 0xFFFFFF;
      if (v18)
      {
        if (v18 < (v17 & 0xFFFFFF00))
        {
          v18 = v17 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
        }
      }

      else
      {
        v18 = v16 >> 12 ? (256 << ((v16 >> 12) - 1)) | 0xFF : v17 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
      }
    }

    v19 = v18 & 0xFFFFFFFF02FFFFFFLL;
    v20 = StatusReg[4];
    if ((v20 & 0x1000000) != 0)
    {
      if (v19)
      {
        goto LABEL_58;
      }

      v19 = v20 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v19 == (v20 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_24;
    }

    if (v19)
    {
      goto LABEL_58;
    }

LABEL_24:
    if (v14 == -1)
    {
      goto LABEL_28;
    }

    if (StatusReg[28] != v14)
    {
      break;
    }

    if (!v14 || atomic_fetch_add_explicit((v14 + 12), 0xFFFFFFFF, memory_order_relaxed) > 1)
    {
      goto LABEL_28;
    }

    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
  }

  v19 = 0;
LABEL_58:
  _dispatch_set_priority_and_voucher_slow(v19, v14, 7);
LABEL_28:
  v21 = 0;
  *(a1 + 64) = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v21 = _dispatch_autorelease_pool_push();
  }

  if ((a3 & 4) != 0)
  {
    _dispatch_client_callout3(*(v13 + 48), v12, a1, *(&dword_18 + _dispatch_mach_xpc_hooks));
  }

  else
  {
    if ((*(v6 + 116) & 4) == 0)
    {
      _dispatch_mach_connect_invoke(v6);
    }

    if (v12 == 2 && (*(v6 + 80) & 0x10000000) != 0)
    {
      v23 = (a1 + 88);
      if (*(a1 + 72))
      {
        v23 = *&v23->msgh_bits;
      }

      mach_msg_destroy(v23);
    }

    else
    {
      if (*(v13 + 40))
      {
        v22 = *(v13 + 40);
      }

      else
      {
        v22 = 0;
      }

      _dispatch_client_callout4(*(v13 + 48), v12, a1, v11, v22);
    }
  }

  ++StatusReg[26];
  if (v21)
  {
    _dispatch_autorelease_pool_pop(v21);
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  dispatch_release(a1);
  v24 = v26;
  StatusReg[23] = v25[0];
  if (v24)
  {
    _dispatch_mach_ipc_handoff_async(v25);
  }

  StatusReg[20] = v6;
  StatusReg[21] = v7;
}

void _dispatch_mach_barrier_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(*a1 + 16);
  if (v7 == 1024)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = *(StatusReg + 168);
    v31 = *(StatusReg + 160);
    *(StatusReg + 160) = *v30;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v9 = *(v5 + 88);
  if ((*(v5 + 116) & 4) == 0)
  {
    if ((a3 & 0x1000000) != 0)
    {
      v29 = _dispatch_autorelease_pool_push();
      _dispatch_mach_connect_invoke(v5);
      _dispatch_autorelease_pool_pop(v29);
    }

    else
    {
      _dispatch_mach_connect_invoke(v5);
    }
  }

  v10 = *(a1 + 24);
  *(a1 + 24) = -1;
  v11 = v10 == -1 || v10 == -1;
  if (!v11 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v12 = *(a1 + 8);
  if (v12 == -1)
  {
    v20 = 0;
  }

  else
  {
    v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
    if (((v13 >> 8) & 0xF) != 0)
    {
      v14 = 256 << ((BYTE1(v13) & 0xFu) - 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 & 0xFFFFFFFFFFFFFF00 | v13;
    v16 = v12 & 0xFFFFFF;
    if ((v12 & 0xFFFFFF) != 0)
    {
      v17 = v14 & 0xFFFFFF00;
      v18 = v12 & 0x10000000;
      if ((v13 & 0x44000000) == 0 && v18 == 0)
      {
        v20 = v15;
      }

      else
      {
        v20 = v16;
      }

      if (v16 < v17)
      {
        v20 = v15;
      }
    }

    else if (v13 >> 12)
    {
      v20 = (256 << ((v13 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v20 = v14 & 0xFFFFFFFFFFFFFF00 | v13;
    }
  }

  v21 = v20 & 0xFFFFFFFF02FFFFFFLL;
  v22 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = v22[4];
  if ((v23 & 0x1000000) != 0)
  {
    if (v21)
    {
LABEL_62:
      _dispatch_set_priority_and_voucher_slow(v21, v10, 6);
      goto LABEL_33;
    }

    v21 = v23 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v21 == (v23 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_28;
  }

  if (v21)
  {
    goto LABEL_62;
  }

LABEL_28:
  if (v10 == -1)
  {
    goto LABEL_33;
  }

  if (v22[28] != v10)
  {
    v21 = 0;
    goto LABEL_62;
  }

  if (v10 && atomic_fetch_add_explicit((v10 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
  }

LABEL_33:
  v24 = v22[22];
  if (v24)
  {
    v25 = *(v24 + 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  v26 = a1;
  if (v25 <= _dispatch_continuation_cache_limit)
  {
    v26 = 0;
    *(a1 + 16) = v24;
    *(a1 + 8) = v25;
    v22[22] = a1;
  }

  if ((a3 & 0x1000000) != 0)
  {
    v27 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v27 = 0;
  }

  _dispatch_client_callout(*(a1 + 40), *(a1 + 32));
  if (*(v9 + 40))
  {
    v28 = *(v9 + 40);
  }

  else
  {
    v28 = 0;
  }

  _dispatch_client_callout4(*(v9 + 48), 6, 0, 0, v28);
  if (v27)
  {
    _dispatch_autorelease_pool_pop(v27);
  }

  if ((v6 & 0x200) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v26)
    {
      goto LABEL_49;
    }
  }

  else if (!v26)
  {
    goto LABEL_49;
  }

  _dispatch_continuation_free_to_cache_limit(v26);
LABEL_49:
  if (v7 == 1024)
  {
    v22[20] = v31;
    v22[21] = v30;
  }
}

uint64_t _dispatch_mach_connect_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (*(v2 + 40))
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  result = _dispatch_client_callout4(*(v2 + 48), 1, 0, 0, v3);
  *(a1 + 116) |= 4u;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  ++*(StatusReg + 208);
  return result;
}

void dispatch_mach_send_barrier_f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[22];
  if (v7)
  {
    StatusReg[22] = *(v7 + 16);
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  *v7 = 260;
  *(v7 + 32) = a3;
  *(v7 + 40) = a2;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  if (v8 >= 0x10FF)
  {
    v9 = 4351;
  }

  else
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (!v10 || atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) > 0)
  {
    *(v7 + 24) = v10;
    if (v10 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else if (v8)
    {
LABEL_11:
      v11 = (*(a1 + 84) >> 30) & 1;
      if ((*(a1 + 84) & 0xFFF) == 0)
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_16;
    }

    v12 = 0;
LABEL_16:
    *(v7 + 8) = v12;
    *(v7 + 48) = *v7;
    *(v7 + 56) = a1;
    *v7 = &unk_70CC8;
    goto LABEL_17;
  }

  qword_78298 = "API MISUSE: Voucher resurrection";
  __break(1u);
LABEL_17:
  v13 = __clz(__rbit32((*(v7 + 8) >> 8) & 0x3FFF));
  if (((*(v7 + 8) >> 8) & 0x3FFF) != 0)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 0;
  }

  _dispatch_mach_send_push(a1, v7, v14);
}

void dispatch_mach_send_barrier(unint64_t a1, uint64_t (**aBlock)())
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  v6 = _dispatch_Block_copy(aBlock);
  v7 = aBlock[2];
  if (v7)
  {
    if (v7 != _dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_27:
    *v5 = 276;
    v5[5] = v6;
    _dispatch_continuation_init_slow(v5, a1, 0);
    goto LABEL_19;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_27;
  }

LABEL_5:
  *v5 = 276;
  v5[4] = _dispatch_call_block_and_release;
  v5[5] = v6;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  if (v8 >= 0x10FF)
  {
    v9 = 4351;
  }

  else
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (!v10 || atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) > 0)
  {
    v5[3] = v10;
    if (v10 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v8)
      {
        goto LABEL_13;
      }
    }

    else if (v8)
    {
LABEL_13:
      v11 = (*(a1 + 84) >> 30) & 1;
      if ((*(a1 + 84) & 0xFFF) == 0)
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_18;
    }

    v12 = 0;
LABEL_18:
    v5[1] = v12;
LABEL_19:
    v5[6] = *v5;
    v5[7] = a1;
    *v5 = &unk_70CC8;
    goto LABEL_20;
  }

  qword_78298 = "API MISUSE: Voucher resurrection";
  __break(1u);
LABEL_20:
  v13 = __clz(__rbit32((*(v5 + 2) >> 8) & 0x3FFF));
  if (((*(v5 + 2) >> 8) & 0x3FFF) != 0)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 0;
  }

  _dispatch_mach_send_push(a1, v5, v14);
}

uint64_t dispatch_mach_receive_barrier_f(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[22];
  if (v7)
  {
    StatusReg[22] = v7[2];
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  *v7 = 260;
  v7[4] = a3;
  v7[5] = a2;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  if (v8 >= 0x10FF)
  {
    v9 = 4351;
  }

  else
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10)
  {
    result = 0;
    if (atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Voucher resurrection";
      __break(1u);
      return result;
    }
  }

  v7[3] = v10;
  if (v10 != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else if (!v8)
  {
    goto LABEL_13;
  }

  v12 = a1[21];
  if ((v12 & 0x40000000) != 0 || (v12 & 0xFFF) == 0)
  {
    v13 = __clz(__rbit32(v9 >> 8)) + 1;
    goto LABEL_15;
  }

LABEL_13:
  v13 = 0;
  v9 = 0;
LABEL_15:
  v7[6] = *v7;
  v7[7] = a1;
  *v7 = &unk_70D00;
  v7[1] = v9;
  v14 = *(*a1 + 72);

  return v14(a1, v7, v13);
}

uint64_t dispatch_mach_receive_barrier(_DWORD *a1, uint64_t (**aBlock)())
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  v6 = _dispatch_Block_copy(aBlock);
  v7 = aBlock[2];
  if (v7)
  {
    if (v7 != _dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_22:
    *v5 = 276;
    v5[5] = v6;
    inited = _dispatch_continuation_init_slow(v5, a1, 0);
    goto LABEL_18;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_22;
  }

LABEL_5:
  *v5 = 276;
  v5[4] = _dispatch_call_block_and_release;
  v5[5] = v6;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  if (v8 >= 0x10FF)
  {
    v9 = 4351;
  }

  else
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10)
  {
    result = 0;
    if (atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Voucher resurrection";
      __break(1u);
      return result;
    }
  }

  v5[3] = v10;
  if (v10 != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else if (!v8)
  {
    goto LABEL_15;
  }

  v12 = a1[21];
  if ((v12 & 0x40000000) != 0 || (v12 & 0xFFF) == 0)
  {
    inited = (__clz(__rbit32(v9 >> 8)) + 1);
    goto LABEL_17;
  }

LABEL_15:
  inited = 0;
  v9 = 0;
LABEL_17:
  v5[1] = v9;
LABEL_18:
  v5[6] = *v5;
  v5[7] = a1;
  *v5 = &unk_70D00;
  v14 = *(*a1 + 72);

  return v14(a1, v5, inited);
}

void dispatch_mach_cancel(uint64_t a1)
{
  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) > 0)
  {
    if ((atomic_fetch_or_explicit((a1 + 80), 0x10000000u, memory_order_relaxed) & 0x10000000) == 0)
    {
      dispatch_mach_reconnect(a1, 0, 0xFFFFFFFFFFFFFFFFLL);
    }

    _os_object_release_internal(a1);
  }

  else
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void _dispatch_mach_activate(uint64_t a1)
{
  _dispatch_lane_activate(a1);
  if ((*(a1 + 116) & 1) == 0)
  {
    v3 = 0;
    v2 = _dispatch_queue_compute_priority_and_wlh(a1, &v3);
    if (v2)
    {
      _dispatch_mach_install(a1, v3, v2);
    }
  }
}

void _dispatch_mach_install(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 116);
  *(a1 + 116) = v6 | 1;
  v7 = *(*(a1 + 120) + 88);
  if ((v7 & 0x80000000) != 0)
  {
    _dispatch_mach_install_cold_1(v7);
  }

  if (*(a1 + 84))
  {
    if ((v4 & 0x10000000) != 0)
    {
      return;
    }
  }

  else
  {
    *(a1 + 84) = a3;
    if ((v4 & 0x10000000) != 0)
    {
      return;
    }
  }

  if ((v6 & 0x10) != 0 && (*(&stru_20.cmd + _dispatch_mach_xpc_hooks))(*(v5 + 48)))
  {
    v10 = off_71470(&_dispatch_xpc_type_sigterm, 15, 0);
    *(v10 + 8) = ~a1;
    *(a1 + 128) = v10;
    _dispatch_unote_register(v10, a2, a3);
  }

  if (*(v5 + 24))
  {

    _dispatch_unote_register(v5, a2, a3);
  }
}

void _dispatch_mach_invoke(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v88 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  }

  if ((a3 & 2) != 0)
  {
    v88 = 0x40020000000001;
    v5 = a3 & 0x40000;
  }

  else
  {
    v64 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v66 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v5 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v67 = 0x4000000000;
    }

    else
    {
      v67 = 1;
    }

    v68 = 0xFFE00000FFFFFFFCLL;
    if ((a3 & 0x40000) == 0)
    {
      v68 = 0xFFE00040FFFFFFFCLL;
    }

    if (a3)
    {
      v69 = 0xFFE00040FFFFFFFCLL;
    }

    else
    {
      v69 = v68;
    }

    v70 = *(StatusReg + 200);
    v71 = (v70 >> 8) & 0xF;
    v72 = v70 >> 12;
    v73 = HIWORD(v70) & 0xF;
    if (v71 <= v72)
    {
      v71 = v72;
    }

    if (v71 > v73)
    {
      v73 = v71;
    }

LABEL_224:
    for (i = *(a1 + 56); ; i = v79)
    {
      while ((i & v69) != 0)
      {
        if ((v3 & 1) != 0 || (v80 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v80, i ^ v67, memory_order_acquire, memory_order_acquire), v80 == i))
        {
          v36 = 0;
          v88 = 0;
          goto LABEL_205;
        }

        i = v80;
      }

      if ((i & 0x1000000000) != 0)
      {
        v75 = HIDWORD(i) & 7;
        if (v75 > v73)
        {
          _pthread_workqueue_override_start_direct();
          v81 = *(StatusReg + 200);
          v73 = v75;
          if ((HIWORD(v81) & 0xF) < v75)
          {
            *(StatusReg + 200) = v81 & 0xFFF0FFFF | (v75 << 16);
            v73 = v75;
          }

          goto LABEL_224;
        }
      }

      v76 = (i >> 40) & 1;
      if (!((v64 + i) >> 53))
      {
        LODWORD(v76) = 1;
      }

      v77 = v76 ? 0x60000000000000 : 0x20000000000000;
      v78 = i & 0x7700000001 | v66 | v77;
      v79 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v79, v78, memory_order_acquire, memory_order_acquire);
      if (v79 == i)
      {
        break;
      }
    }

    v82 = 0x60000000000000;
    if ((v3 & 1) == 0)
    {
      v82 = v67 | 0x60000000000000;
    }

    v88 = (v78 & v82) - (i & 0x3FFE0000000000);
    if (!v88)
    {
      v36 = 0;
      goto LABEL_205;
    }
  }

  if (v5)
  {
    v85 = 0;
  }

  else
  {
    v6 = *(a1 + 84);
    v7 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = *(v7 + 200);
    if (v8)
    {
      v9 = v6 & 0xFFF;
      if ((v6 & 0xFFF) != 0)
      {
        if ((v8 & 0xFFFu) > v9)
        {
          v9 = v8 & 0xFFF;
        }

        if (v6 >> 12 <= v9 >> 8)
        {
          v10 = 0x40000000;
        }

        else
        {
          v10 = 1140912128;
        }

        v11 = v8 & 0x880F0000 | v9 | v10 & v6;
      }

      else
      {
        v12 = v8 | 0x40000000;
        if ((v8 & 0xFFF) == 0)
        {
          v12 = *(v7 + 200);
        }

        v13 = v6 >> 12;
        v11 = v12 & 0xFFFF0FFF | v6 & 0x400F000;
        if (v13 <= ((v12 >> 8) & 0xF))
        {
          v11 = v12;
        }
      }
    }

    else
    {
      v11 = v6 & 0xFFF0FFFF;
    }

    *(v7 + 200) = v11;
    v85 = v8 & 0xFFF0FFFF;
  }

  LODWORD(v14) = v3 | 8;
  if ((v3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  if (((*(a1 + 80) << 8) & 0x3000000) != 0)
  {
    v14 = (*(a1 + 80) << 8) & 0x3000000 | v3 & 0xFCFFFFF7 | 8;
  }

  else
  {
    v14 = v14;
  }

  v84 = v14 | 0x10;
  v15 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v83 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (2)
  {
    while (2)
    {
      v16 = v14;
      if ((v14 & 0x1000002) != 2)
      {
        v23 = *(v15 + 160);
        v24 = *(a1 + 120);
        v25 = *(a1 + 88);
        if ((v14 & 0x40000) == 0 && v25)
        {
          v26 = *(v15 + 232);
          v27 = v26 ? *(v26 + 24) : -4;
          v37 = v25[2] & 0xFFFFFFFFFFFFFFFCLL;
          v38 = v37 == -4 || v37 == 0;
          if (!v38 && v27 != v37)
          {
            _dispatch_mach_handle_wlh_change(a1);
          }
        }

        if ((*(a1 + 116) & 1) == 0)
        {
          if ((v16 & 0x40000) != 0)
          {
            v36 = *(a1 + 24);
            goto LABEL_139;
          }

          if ((v16 & 0x10000) != 0)
          {
            v57 = *(v15 + 200);
          }

          else
          {
            v57 = 0x2000000;
          }

          v58 = *(v15 + 232);
          if (v58)
          {
            v59 = *(v58 + 24);
          }

          else
          {
            v59 = -4;
          }

          _dispatch_mach_install(a1, v59, v57);
          ++*(v15 + 208);
        }

        if (!*(a1 + 48))
        {
          v40 = 0;
          goto LABEL_96;
        }

        v40 = *(a1 + 24);
        if (v23 != v40)
        {
          goto LABEL_96;
        }

        while (1)
        {
          while (1)
          {
            v40 = _dispatch_lane_serial_drain(a1, a2, v16, &v88);
LABEL_96:
            v41 = *(a1 + 80);
            if (!v40 && (v41 & 0x10000000) == 0 && v25[2] && (v25[2] & 3) == 0)
            {
              break;
            }

LABEL_108:
            if (!*(v24 + 72))
            {
              goto LABEL_120;
            }

            if ((*(v24 + 30) & 1) == 0 || *(v24 + 88))
            {
              if (*(v24 + 88))
              {
                v43 = *(v24 + 16) != 0;
              }

              else
              {
                v43 = *(a1 + 118) & 1;
              }

              if (v43 && v23 != &_dispatch_mgr_q)
              {
                if (v40)
                {
                  v36 = v40;
                }

                else
                {
                  v36 = &_dispatch_mgr_q;
                }

                goto LABEL_139;
              }

              _dispatch_mach_send_invoke(a1, v16, 4 * (v23 != &_dispatch_mgr_q));
              if (v40)
              {
                goto LABEL_120;
              }

              if (!*(a1 + 48))
              {
                goto LABEL_134;
              }

              v40 = *(a1 + 24);
            }

            if (!v40)
            {
LABEL_134:
              if (*(v24 + 72))
              {
                v40 = -1;
              }

              else
              {
                v40 = 0;
              }

              if ((v41 & 0x10000000) == 0)
              {
                goto LABEL_138;
              }

              goto LABEL_121;
            }

LABEL_120:
            if ((v41 & 0x10000000) == 0)
            {
              goto LABEL_138;
            }

LABEL_121:
            if ((v41 & 0x80000000) == 0)
            {
              _dispatch_mach_cancel(a1);
              if ((v44 & 1) == 0)
              {
                if (v40)
                {
                  v36 = v40;
                }

                else
                {
                  v36 = -1;
                }

                goto LABEL_139;
              }
            }

            if ((*(a1 + 116) & 8) != 0)
            {
              goto LABEL_138;
            }

            v36 = *(a1 + 24);
            if (v23 != v36)
            {
              if (v40)
              {
                v36 = v40;
              }

              goto LABEL_139;
            }

            if (*(a1 + 56) >> 55)
            {
              goto LABEL_139;
            }

            if (!*(a1 + 48))
            {
              _dispatch_mach_cancel_invoke(a1, v16);
LABEL_138:
              v36 = v40;
              goto LABEL_139;
            }
          }

          _dispatch_unote_resume(v25);
          if (v23 == *(a1 + 24) && !v23[3] && !*(v24 + 72) && (*(v23 + 21) & 0x80000000) != 0)
          {
            if (*(v15 + 40))
            {
              v52 = *(v15 + 232);
              if (v52)
              {
                v53 = *(v52 + 24);
                if (v53 != -4 && v53 == (v25[2] & 0xFFFFFFFFFFFFFFFCLL))
                {
                  _dispatch_event_loop_drain(1);
                  if (*(a1 + 48))
                  {
                    continue;
                  }
                }
              }
            }
          }

          v41 = *(a1 + 80);
          goto LABEL_108;
        }
      }

      _dispatch_last_resort_autorelease_pool_push(a2);
      v18 = (v15 + 160);
      v17 = *(v15 + 160);
      v19 = *(a1 + 120);
      v20 = *(a1 + 88);
      if ((v16 & 0x40000) == 0 && v20)
      {
        v21 = *(v15 + 232);
        v22 = v21 ? *(v21 + 24) : -4;
        v28 = v20[2] & 0xFFFFFFFFFFFFFFFCLL;
        v29 = v28 == -4 || v28 == 0;
        if (!v29 && v22 != v28)
        {
          _dispatch_mach_handle_wlh_change(a1);
        }
      }

      if ((*(a1 + 116) & 1) == 0)
      {
        if ((v16 & 0x40000) != 0)
        {
          v36 = *(a1 + 24);
          goto LABEL_133;
        }

        if ((v16 & 0x10000) != 0)
        {
          v54 = *(v15 + 200);
        }

        else
        {
          v54 = 0x2000000;
        }

        v55 = *(v15 + 232);
        if (v55)
        {
          v56 = *(v55 + 24);
        }

        else
        {
          v56 = -4;
        }

        _dispatch_mach_install(a1, v56, v54);
        ++*(v15 + 208);
      }

      if (!*(a1 + 48))
      {
        v31 = 0;
        goto LABEL_50;
      }

      v31 = *(a1 + 24);
      if (v17 != v31)
      {
        goto LABEL_50;
      }

      while (1)
      {
        while (1)
        {
          v31 = _dispatch_lane_serial_drain(a1, a2, v16, &v88);
LABEL_50:
          v32 = *(a1 + 80);
          if (v31 || (v32 & 0x10000000) != 0)
          {
            break;
          }

          if (!v20[2] || (v20[2] & 3) != 0)
          {
            break;
          }

          _dispatch_unote_resume(v20);
          if (v17 == *(a1 + 24) && !v17[3] && !*(v19 + 72) && (*(v17 + 21) & 0x80000000) != 0)
          {
            if (*(v15 + 40))
            {
              v50 = *(v15 + 232);
              if (v50)
              {
                v51 = *(v50 + 24);
                if (v51 != -4 && v51 == (v20[2] & 0xFFFFFFFFFFFFFFFCLL))
                {
                  _dispatch_event_loop_drain(1);
                  if (*(a1 + 48))
                  {
                    continue;
                  }
                }
              }
            }
          }

          v32 = *(a1 + 80);
          break;
        }

        if (!*(v19 + 72))
        {
          goto LABEL_74;
        }

        if ((*(v19 + 30) & 1) != 0 && !*(v19 + 88))
        {
          goto LABEL_73;
        }

        if (*(v19 + 88))
        {
          v34 = *(v19 + 16) != 0;
        }

        else
        {
          v34 = *(a1 + 118) & 1;
        }

        if (v34 && v17 != &_dispatch_mgr_q)
        {
          if (v31)
          {
            v36 = v31;
          }

          else
          {
            v36 = &_dispatch_mgr_q;
          }

          goto LABEL_133;
        }

        _dispatch_mach_send_invoke(a1, v16, 4 * (v17 != &_dispatch_mgr_q));
        if (v31)
        {
LABEL_74:
          if ((v32 & 0x10000000) == 0)
          {
            goto LABEL_132;
          }

          goto LABEL_75;
        }

        if (*(a1 + 48))
        {
          v31 = *(a1 + 24);
LABEL_73:
          if (v31)
          {
            goto LABEL_74;
          }
        }

        if (*(v19 + 72))
        {
          v31 = -1;
        }

        else
        {
          v31 = 0;
        }

        if ((v32 & 0x10000000) == 0)
        {
          goto LABEL_132;
        }

LABEL_75:
        if ((v32 & 0x80000000) == 0)
        {
          _dispatch_mach_cancel(a1);
          if ((v35 & 1) == 0)
          {
            if (v31)
            {
              v36 = v31;
            }

            else
            {
              v36 = -1;
            }

            goto LABEL_133;
          }
        }

        if ((*(a1 + 116) & 8) != 0)
        {
          goto LABEL_132;
        }

        v36 = *(a1 + 24);
        if (v17 != v36)
        {
          break;
        }

        if (*(a1 + 56) >> 55)
        {
          goto LABEL_133;
        }

        if (!*(a1 + 48))
        {
          _dispatch_mach_cancel_invoke(a1, v16);
LABEL_132:
          v36 = v31;
          goto LABEL_133;
        }
      }

      if (v31)
      {
        v36 = v31;
      }

LABEL_133:
      v87 = *v18;
      *(v15 + 160) = a1;
      *(v15 + 168) = &v87;
      _dispatch_last_resort_autorelease_pool_pop(a2);
      *v18 = v87;
LABEL_139:
      if ((v36 + 1) > 1)
      {
        goto LABEL_203;
      }

      v45 = v88;
      v46 = *(a1 + 56);
      while (2)
      {
        v47 = v46;
        v48 = v46 - v45;
        v49 = v48 & 0xFFFFFFF700000001;
        if (v47 >> 55)
        {
LABEL_145:
          v46 = v47;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v46, v49, memory_order_release, memory_order_relaxed);
          if (v46 == v47)
          {
            if ((~v47 & 0x1800000000) == 0)
            {
              v60 = HIDWORD(v47) & 7;
              v61 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v62 = *(v61 + 200);
              if ((HIWORD(v62) & 0xF) < v60)
              {
                *(v61 + 200) = v62 & 0xFFF0FFFF | (v60 << 16);
              }
            }

            v36 = 0;
            v88 = 0;
            goto LABEL_203;
          }

          continue;
        }

        break;
      }

      if ((v47 & 0x8000000000) == 0)
      {
        if (v36)
        {
          v49 = v48 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v49 = v48 & 0xFFFFFFF000000001;
        }

        goto LABEL_145;
      }

      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v36 = *(v83 + 160);
      v14 = v84;
      if (v3)
      {
        continue;
      }

      break;
    }

    v14 = v84;
    if ((*(*v36 + 16) & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

LABEL_203:
  if ((v16 & 0x40000) == 0)
  {
    v63 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v63 + 200) = *(v63 + 200) & 0xF0000 | v85;
  }

LABEL_205:
  if ((v3 & 1) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v36)
    {
      goto LABEL_210;
    }

LABEL_208:
    _dispatch_queue_invoke_finish(a1, a2, v36, v88);
  }

  else
  {
    if (v36)
    {
      goto LABEL_208;
    }

LABEL_210:
    _os_object_release_internal_n(a1, 2);
  }
}

void _dispatch_mach_wakeup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 80);
  if ((*(a1 + 116) & 1) == 0 || *(a1 + 48))
  {
    goto LABEL_3;
  }

  if (!*(v3 + 72))
  {
    v5 = 0;
    if ((v4 & 0x10000000) == 0 || !(a3 & 0x10 | ~v4 & 0x50000000))
    {
      goto LABEL_6;
    }

    if ((*(a1 + 116) & 8) == 0)
    {
LABEL_3:
      if (*(a1 + 24) == &_dispatch_mgr_q)
      {
        v5 = &_dispatch_mgr_q;
      }

      else
      {
        v5 = (&dword_0 + 1);
      }

      goto LABEL_6;
    }

LABEL_16:
    v5 = 0;
    goto LABEL_6;
  }

  if (*(v3 + 64) > 3u || (*(v3 + 30) & 1) != 0 && !*(v3 + 88))
  {
    goto LABEL_16;
  }

  if (*(v3 + 88))
  {
    v6 = *(v3 + 16) != 0;
  }

  else
  {
    v6 = *(a1 + 118) & 1;
  }

  v5 = &_dispatch_mgr_q;
  if (v6)
  {
    v7 = &_dispatch_mgr_q == (&dword_0 + 1);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_3;
  }

LABEL_6:
  _dispatch_queue_wakeup(a1, a2, a3, v5);
}

uint64_t _dispatch_xpc_sigterm_merge_evt(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = ~*(a1 + 8);
  _dispatch_barrier_async_detached_f(v5, v5, _dispatch_mach_sigterm_invoke);
  v6 = *(*v5 + 64);
  v7 = __clz(__rbit32((a4 >> 8) & 0x3FFF));
  if (((a4 >> 8) & 0x3FFF) != 0)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  return v6(v5, v8, 19);
}

void _dispatch_mach_sigterm_invoke(uint64_t a1)
{
  _dispatch_unote_unregister(*(a1 + 128), 5);
  if ((*(a1 + 80) & 0x10000000) == 0)
  {
    v2 = *(a1 + 88);
    v3 = *(v2 + 48);
    if (*(v2 + 40))
    {
      v4 = *(v2 + 40);
    }

    else
    {
      v4 = 0;
    }

    _dispatch_client_callout4(v3, 11, 0, 0, v4);
  }
}

uint64_t dispatch_mach_msg_create(const void *a1, size_t a2, int a3, void *a4)
{
  if (a2 < 0x18 || (v7 = a1) == 0 && a3)
  {
    dispatch_mach_msg_create_cold_2(a2);
  }

  if (a3)
  {
    v8 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 96);
    *(v8 + 88) = v7;
    *(v8 + 16) = -1985229329;
    *(v8 + 24) = &off_74600;
    *(v8 + 72) = a3;
    *(v8 + 80) = a2;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_12;
  }

  v9 = a2 + 88;
  if (a2 - 8 >= 0xFFFFFFFFFFFFFFA0)
  {
    dispatch_mach_msg_create_cold_1(a2);
  }

  v10 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, v9);
  v8 = v10;
  if (v7)
  {
    memcpy((v10 + 88), v7, a2);
  }

  *(v8 + 16) = -1985229329;
  *(v8 + 24) = &off_74600;
  *(v8 + 72) = 0;
  *(v8 + 80) = a2;
  if (a4)
  {
    v7 = (v8 + 88);
LABEL_12:
    *a4 = v7;
  }

  return v8;
}

void _dispatch_mach_msg_dispose(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    add_explicit = atomic_fetch_add_explicit((v2 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      _dispatch_mach_msg_dispose_cold_1(add_explicit, v2);
    }

    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 72);
  if (v4 == 2)
  {
    v6 = mach_vm_deallocate(mach_task_self_, *(a1 + 88), *(a1 + 80));
    if (v6)
    {

      _dispatch_bug(3009, v6);
    }
  }

  else if (v4 == 1)
  {
    v5 = *(a1 + 88);

    free(v5);
  }
}

uint64_t dispatch_mach_msg_get_msg(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 80);
  }

  v2 = *(a1 + 72);
  result = a1 + 88;
  if (v2)
  {
    return *result;
  }

  return result;
}

void _dispatch_mach_msg_async_reply_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(v5 + 48);
  v8 = 3;
  if (v7)
  {
    v8 = 4;
  }

  if (v7 >> 14 == 254944)
  {
    v9 = v7 & 0x3FFF;
  }

  else
  {
    v9 = v8;
  }

  v25 = 0;
  v26 = 0;
  v24[1] = "mach_msg";
  v24[2] = v5;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24[0] = StatusReg[23];
  StatusReg[23] = v24;
  while (1)
  {
    v11 = *(v6 + 88);
    *(v5 + 16) = -1985229329;
    v6 = *(v5 + 64);
    if (v6 != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      v6 = *(v5 + 64);
    }

    v12 = *(v5 + 56);
    if (v12 == -1)
    {
      v15 = 0;
    }

    else
    {
      v13 = StatusReg[25];
      v14 = ((v13 >> 8) & 0xF) != 0 ? 256 << ((BYTE1(v13) & 0xFu) - 1) : 0;
      v15 = v12 & 0xFFFFFF;
      if (v15)
      {
        if (v15 < (v14 & 0xFFFFFF00))
        {
          v15 = v14 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
        }
      }

      else
      {
        v15 = v13 >> 12 ? (256 << ((v13 >> 12) - 1)) | 0xFF : v14 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
      }
    }

    v16 = v15 & 0xFFFFFFFF02FFFFFFLL;
    v17 = StatusReg[4];
    if ((v17 & 0x1000000) != 0)
    {
      if (v16)
      {
        goto LABEL_52;
      }

      v16 = v17 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v16 == (v17 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_21;
    }

    if (v16)
    {
      goto LABEL_52;
    }

LABEL_21:
    if (v6 == -1)
    {
      goto LABEL_25;
    }

    if (StatusReg[28] != v6)
    {
      break;
    }

    if (!v6 || atomic_fetch_add_explicit((v6 + 12), 0xFFFFFFFF, memory_order_relaxed) > 1)
    {
      goto LABEL_25;
    }

    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
  }

  v16 = 0;
LABEL_52:
  _dispatch_set_priority_and_voucher_slow(v16, v6, 7);
LABEL_25:
  v18 = 0;
  *(v5 + 64) = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v18 = _dispatch_autorelease_pool_push();
  }

  _dispatch_client_callout3(*(v11 + 48), v9, v5, *(&dword_18 + _dispatch_mach_xpc_hooks));
  ++StatusReg[26];
  if (v18)
  {
    _dispatch_autorelease_pool_pop(v18);
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  dispatch_release(v5);
  v19 = v25;
  StatusReg[23] = v24[0];
  if (v19)
  {
    _dispatch_mach_ipc_handoff_async(v24);
  }

  v20 = *(a1 + 56);
  if (*(v20 + 8) == 0x7FFFFFFF || (add_explicit = atomic_fetch_add_explicit((v20 + 8), 0xFFFFFFFF, memory_order_release), add_explicit > 1))
  {
LABEL_35:
    v22 = StatusReg[22];
    if (v22)
    {
      v23 = *(v22 + 8) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v23 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v22;
      *(a1 + 8) = v23;
      StatusReg[22] = a1;
    }
  }

  else
  {
    if (add_explicit == 1)
    {
      _os_object_dispose(v20);
      goto LABEL_35;
    }

    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

uint64_t dispatch_mach_msg_get_filter_policy_id(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    dispatch_mach_msg_get_filter_policy_id_cold_4();
  }

  v2 = (a1 + 88);
  if (*(a1 + 72))
  {
    v2 = *v2;
    if (!v2)
    {
      dispatch_mach_msg_get_filter_policy_id_cold_1(a1);
    }
  }

  v3 = (v2 + ((*(v2 + 1) + 3) & 0x1FFFFFFFCLL));
  if (*v3)
  {
    dispatch_mach_msg_get_filter_policy_id_cold_2(*v3);
  }

  result = v3[1];
  if (result < 0x44)
  {
    dispatch_mach_msg_get_filter_policy_id_cold_3(result);
  }

  *a2 = v3[15];
  return result;
}

uint64_t dispatch_mig_server(uint64_t a1, uint64_t a2, unsigned int (*a3)(mach_msg_header_t *, mach_msg_header_t *))
{
  v29 = a3;
  v4 = a2 + 68;
  v5 = *(a1 + 88);
  v6 = (&v29 - ((a2 + 83) & 0xFFFFFFFFFFFFFFF0));
  bzero(v6, a2 + 68);
  v6[1].msgh_remote_port = 0;
  v7 = vm_page_size;
  v8 = ~vm_page_mask;
  v9 = (v8 & (v6 + vm_page_size));
  if (v9 < v6 + v4)
  {
    do
    {
      *v9 = 0;
      v7 = vm_page_size;
      v9 += vm_page_size;
    }

    while (v9 < v6 + v4);
    v8 = ~vm_page_mask;
  }

  v10 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v4);
  v10->msgh_size = 0;
  for (i = (v8 & (v10 + v7)); i < v10 + v4; i += vm_page_size)
  {
    *i = 0;
  }

  v12 = 0;
  v13 = 117442818;
  v14 = 1000;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v16 = 117442818;
  while (1)
  {
    v17 = v6;
    v6 = v10;
    if (*(a1 + 56) >> 55)
    {
      v18 = 0;
    }

    else
    {
      v18 = (*(a1 + 80) & 0x10000000) == 0;
    }

    if (!v18 || (--v14, !v14))
    {
      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v16 &= ~2u;
      v13 &= ~2u;
    }

    v19 = mach_msg(v10, v13, v10->msgh_size, v4, *(v5 + 24), 0, 0);
    if (v19)
    {
      break;
    }

    if ((v16 & 2) == 0)
    {
      return 0;
    }

    v20 = voucher_create_with_mach_msg(&v10->msgh_bits);
    v21 = *(StatusReg + 224);
    if (v21 == v20)
    {
      goto LABEL_27;
    }

    *(StatusReg + 224) = v20;
    if (v20)
    {
      v22 = *(v20 + 32);
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = 0;
      if (!v21)
      {
LABEL_23:
        v23 = 0;
        goto LABEL_24;
      }
    }

    v23 = *(v21 + 32);
LABEL_24:
    if (v22 != -1 && v22 != v23)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v22);
    }

LABEL_27:
    if (v21)
    {
      add_explicit = atomic_fetch_add_explicit((v21 + 12), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 1)
      {
        _dispatch_mgr_queue_drain_cold_3(add_explicit, v21);
      }
    }

    *&v17->msgh_bits = 0;
    *&v17->msgh_remote_port = 0;
    *&v17->msgh_voucher_port = 0;
    if (!v29(v6, v17))
    {
      goto LABEL_35;
    }

    if ((v17->msgh_bits & 0x80000000) != 0)
    {
      goto LABEL_36;
    }

    msgh_remote_port = v17[1].msgh_remote_port;
    if (!msgh_remote_port)
    {
      goto LABEL_36;
    }

    if (msgh_remote_port == -305)
    {
      v17->msgh_remote_port = 0;
    }

    else
    {
LABEL_35:
      v6->msgh_remote_port = 0;
      mach_msg_destroy(v6);
    }

LABEL_36:
    v12 = 1;
    v10 = v17;
    v13 = v16;
    if (v17->msgh_remote_port)
    {
      if ((v17->msgh_bits & 0x1F) == 0x12)
      {
        v26 = 1;
      }

      else
      {
        v26 = 17;
      }

      v13 = v26 | v16;
      v10 = v17;
    }
  }

  v27 = v19;
  if ((v19 - 268435459) < 2)
  {
    _dispatch_mig_consume_unsent_message(v6);
  }

  else if (v19 != 268451842)
  {
    if (v19 == 268451843)
    {
      if (v12 & 1 | (v6->msgh_remote_port != 0))
      {
        return 0;
      }

      else
      {
        return 268451843;
      }
    }

    else
    {
      _dispatch_bug_mach_client("dispatch_mig_server: mach_msg() failed", v19);
    }
  }

  return v27;
}